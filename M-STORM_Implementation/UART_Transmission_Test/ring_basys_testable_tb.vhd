-- Entity name: ring_basys_testable_tb
-- Project: 16nm M-STORM mise en oeuvre
-- Author: Sam Bobrowicz - Digilent
-- Editing and repurposeing: Mark Musil mmusil@pdx.edu
-- Date of creation: July 2018
--
-- Description: Test bench for ring_basys_testable. 
-- Tests perfomance across a variety of use conditions.
-- See UUT file for functional description. 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
USE ieee.numeric_std.ALL; 

entity ring_basys_testable_tb is 
end ring_basys_testable_tb;

architecture Behavioral of ring_basys_testable_tb is

-- Test Bench uses a 125 MHz Clock
constant CLK_PERIOD  : time := 8  ns;
constant WAIT_PERIOD : time := 60 sec;
-- Inputs and Outputs

signal RESET_BTN_extern 			: std_logic := '0';
signal CLK_extern 					: std_logic := '0';
signal LED_extern		   			: std_logic;
signal UART_TXD_extern				: std_logic;

component ring_basys_testable is 
	Port( RESET_BTN 	: in   STD_LOGIC;   -- Halt ring oscillator oscillation
           CLK 			: in   STD_LOGIC;   -- 125MHz please
           LED 			: out  STD_LOGIC;   -- Signal stating that transmission is happening
           UART_TXD 	: out  STD_LOGIC	-- Output
		);
end component ring_basys_testable;

begin

UUT : ring_basys_testable
	port map(
			RESET_BTN => RESET_BTN_extern,
			CLK 	  => CLK_extern,
			LED 	  => LED_extern,
			UART_TXD  => UART_TXD_extern
			);
			
clock_generator : process is
begin
	wait for CLK_PERIOD/2;
	CLK_extern <= not CLK_extern;
end process clock_generator;

-- Main Testing. 

process
begin
RESET_BTN_extern <= '0';
wait for WAIT_PERIOD;
RESET_BTN_extern <= '1';
wait for 100 us;

end process;
end Behavioral;
