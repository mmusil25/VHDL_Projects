----------------------------------------------------------------------------
--	UART_RX_CTRL.vhd -- UART Data Transfer Component
----------------------------------------------------------------------------
-- Source: nandland.com
----------------------------------------------------------------------------
--	This component may be used to receive data transferred using the UART protocol. 
--  It will Parallelize a byte of data that was received as serial. The incoming data 
--  data must have the following characteristics:
--         *9600 Baud Rate
--         *8 data bits, LSB first
--         *1 stop bit, 1 start bit
--         *no parity
-- When receive is complete READ_DONE will be
-- driven high for one clock cycle.
--
-- outputs an 8 bit vector with the LSB of the received signal at index 0.
--
-- Set Generic CLKS_PER_BIT as follows:
-- CLKS_PER_BIT = (Frequency of CLK)/(Baud rate of UART)
-- Example: 125 MHz Clock, 9600 baud UART
-- (125e6)/(9600) = 13021
--
-- Port Descriptions:
--
-- READ_DONE  - Used to signal a complete read operation.
-- INPUT      - The serial data being received.
-- CLK        - A 125 MHz clock is expected
-- OUTPUT     - The parallel output byte LSB first (index 0)
----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity UART_RX_CTRL is
port (
    CLK         : in  std_logic;
    INPUT       : in  std_logic;
    READ_DONE   : out std_logic;
    OUTPUT      : out std_logic_vector(7 downto 0)
    );
end UART_RX_CTRL;


architecture RTL of UART_RX_CTRL is



type t_SM_Main is (s_Idle, s_RX_Start_Bit, s_RX_Data_Bits,
                     s_RX_Stop_Bit, s_Cleanup);

constant CLKS_PER_BIT : integer := 13021;     -- Needs to be set correctly

signal r_SM_Main : t_SM_Main := s_Idle;
signal w_SM_Main : std_logic_vector(2 downto 0); -- for simulation only

signal r_CLK_Count   : integer range 0 to CLKS_PER_BIT - 1 := 0;
signal r_Bit_Index   : integer range 0 to 7 := 0;  -- 8 Bits Total
signal output_int        : std_logic_vector(7 downto 0) := (others => '0');
signal read_done_int     : std_logic := '0';


begin

  -- Purpose: Control RX state machine
  p_UART_RX : process (CLK)
  begin
    if rising_edge(CLK) then
        
      case r_SM_Main is

        when s_Idle =>
          read_done_int     <= '0';
          r_Clk_Count <= 0;
          r_Bit_Index <= 0;

          if INPUT = '0' then       -- Start bit detected
            r_SM_Main <= s_RX_Start_Bit;
          else
            r_SM_Main <= s_Idle;
          end if;

          
        -- Check middle of start bit to make sure it's still low
        when s_RX_Start_Bit =>
          if r_Clk_Count = (CLKS_PER_BIT-1)/2 then
            if INPUT = '0' then
              r_Clk_Count <= 0;  -- reset counter since we found the middle
              r_SM_Main   <= s_RX_Data_Bits;
            else
              r_SM_Main   <= s_Idle;
            end if;
          else
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_RX_Start_Bit;
          end if;

          
        -- Wait CLKS_PER_BIT-1 clock cycles to sample serial data
        when s_RX_Data_Bits =>
          if r_Clk_Count < CLKS_PER_BIT-1 then
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_RX_Data_Bits;
          else
            r_Clk_Count            <= 0;
            output_int(r_Bit_Index) <= INPUT;
            
            -- Check if we have sent out all bits
            if r_Bit_Index < 7 then
              r_Bit_Index <= r_Bit_Index + 1;
              r_SM_Main   <= s_RX_Data_Bits;
            else
              r_Bit_Index <= 0;
              r_SM_Main   <= s_RX_Stop_Bit;
            end if;
          end if;


        -- Receive Stop bit.  Stop bit = 1
        when s_RX_Stop_Bit =>
          -- Wait CLKS_PER_BIT-1 clock cycles for Stop bit to finish
          if r_Clk_Count < CLKS_PER_BIT-1 then
            r_Clk_Count <= r_Clk_Count + 1;
            r_SM_Main   <= s_RX_Stop_Bit;
          else
            read_done_int     <= '1';
            r_Clk_Count <= 0;
            r_SM_Main   <= s_Cleanup;
          end if;

                  
        -- Stay here 1 clock
        when s_Cleanup =>
          r_SM_Main <= s_Idle;
          read_done_int   <= '0';

            
        when others =>
          r_SM_Main <= s_Idle;

      end case;
    end if;
  end process p_UART_RX;

  READ_DONE   <= read_done_int;
  OUTPUT <= output_int;
  
  -- Create a signal for simulation purposes (allows waveform display)
  w_SM_Main <= "000" when r_SM_Main = s_Idle else
  	           "001" when r_SM_Main = s_RX_Start_Bit else
               "010" when r_SM_Main = s_RX_Data_Bits else
               "011" when r_SM_Main = s_RX_Stop_Bit else
               "100" when r_SM_Main = s_Cleanup else
               "101"; -- should never get here
  
end RTL;