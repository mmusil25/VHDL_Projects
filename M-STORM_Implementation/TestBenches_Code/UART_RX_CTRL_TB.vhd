----------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity UART_RX_TB is
end UART_RX_TB;

architecture Behave of UART_RX_TB is

  -- Test Bench uses a 125 MHz Clock
  constant c_CLK_PERIOD : time := 8 ns;
  
  -- Want to interface to 9600 baud UART
  -- (125e6)/(9600) = 13021 Clocks Per Bit.
  constant c_CLKS_PER_BIT : integer := 13021;

  -- 1/115200:
  constant c_BIT_PERIOD : time := 104167 ns;
  
  signal r_Clock           : std_logic := '0';
  signal w_RX_Byte         : std_logic_vector(7 downto 0);
  signal r_RX_Serial       : std_logic := '1';
  signal read_done_extern  : std_logic;
  -- Low-level byte-write
 
 
  procedure UART_WRITE_BYTE (
    i_Data_In       : in  std_logic_vector(7 downto 0);
    signal o_Serial : out std_logic) is
  begin

    -- Send Start Bit
    o_Serial <= '0';
    wait for c_BIT_PERIOD;

    -- Send Data Byte
    
    for ii in 0 to 7 loop
        o_Serial <= i_Data_In(ii);
        wait for c_BIT_PERIOD;
    end loop;  -- ii

    -- Send Stop Bit
    o_Serial <= '1';
    wait for c_BIT_PERIOD;
  end UART_WRITE_BYTE;
  
component UART_RX_CTRL is
      port (
           CLK         : in  std_logic;
           INPUT       : in  std_logic;
           READ_DONE   : out std_logic;
           OUTPUT      : out std_logic_vector(7 downto 0)
           );
end component UART_RX_CTRL;
   
begin
  -- Instantiate UART Receiver
 
UUT : UART_RX_CTRL
    port map (
      CLK         => r_Clock,
      INPUT       => r_RX_Serial,
      READ_DONE   => read_done_extern,
      OUTPUT      => w_RX_Byte
      );

  -- r_Clock <= not r_Clock after c_CLK_PERIOD/2;
  clock_generator : process is
  begin 
    wait for c_CLK_PERIOD/2;
    r_Clock <= not r_Clock;
 end process clock_generator;
  
  
  process
  begin
    -- Send a command to the UART
    wait until rising_edge(r_Clock);
    UART_WRITE_BYTE(X"55", r_RX_Serial); -- ASCII "7"
    wait until rising_edge(r_Clock);

    -- Check that the correct command was received
    if w_RX_Byte = X"55" then
      report "Test Passed - Correct Byte Received" severity note;
    else 
      report "Test Failed - Incorrect Byte Received" severity note;
    end if;

    assert false report "Tests Complete" severity failure;
  end process;
  
end Behave;
