-- Entity name: UART_TX_CTRL_TB
-- Project: 16nm M-STORM mise en oeuvre
-- Author: Sam Bobrowicz - Digilent
-- Editing and repurposeing: Mark Musil mmusil@pdx.edu
-- Date of creation: July 2018
--
-- Description: Test bench for UART_TX_CTRL. Tests perfomance across a variety of use conditions.
--
-- ######################
-- ### Functionality ####
-- ######################
--
-- A 125Mhz clock is input at CLK. A hexidecimal word is input at DATA and the UART_TX output is observed.
-- Pay close attention to values such as CLK_PERIOD, CLKS_PER_BIT, and BIT_PERIOD if you intend to reuse this work. Also give credit. 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity UART_TX_CTRL_TB is
end UART_TX_CTRL_TB;

architecture Behavioral of UART_TX_CTRL_TB is

-- Test Bench uses a 125 MHz Clock

constant CLK_PERIOD : time := 8 ns;

-- Want to interface to 9600 baud UART
-- (125e6)/(9600) = 13021 Clocks Per Bit.
constant CLKS_PER_BIT : integer := 13021;

-- 1/9600:
constant BIT_PERIOD : time := 104167 ns;

signal CLK_extern     : std_logic := '0';
signal DATA_extern    : std_logic_vector (7 downto 0) := (others => '0');  -- LSB at index 0.
signal SEND_extern 	  : std_logic	:= '0';
signal READY_extern   : std_logic;
signal UART_TX_extern : std_logic;

component UART_TX_CTRL is  -- Describe the UUT
    Port ( SEND : in  STD_LOGIC;
           DATA : in  STD_LOGIC_VECTOR (7 downto 0);
           CLK : in  STD_LOGIC;
           READY : out  STD_LOGIC;
           UART_TX : out  STD_LOGIC
		   );
end component UART_TX_CTRL;

begin

UUT : UART_TX_CTRL -- Instaniate the UUT
	port map(
				SEND    => SEND_extern,
				DATA    => DATA_extern,
				CLK     => CLK_extern,
				READY   => READY_extern,
				UART_TX => UART_TX_extern
				);
				
clock_generator : process is
begin
	wait for CLK_PERIOD/2;
	CLK_extern <= not CLK_extern;
end process clock_generator;

-- Main testing. Try to send one byte of data.

process
begin
wait until rising_edge(CLK_extern);

-- present parallel word at input
if (READY_extern = '1') then
	DATA_extern    <= X"55"; -- The parallel word.
	SEND_extern <= '1';
	wait for CLK_PERIOD*5;
	SEND_extern <= '0';
	wait for BIT_PERIOD * 11; -- Only need 10 bit periods but add one for readability
else 
	wait for CLK_PERIOD * 5; -- Let UART_TX_CTRL get ready
end if;

wait until rising_edge(CLK_extern);

end process;

end Behavioral;
