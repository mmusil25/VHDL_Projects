-- Entity name: ZCU104_HelloWorld_TB
-- Project: 16nm M-STORM mise en oeuvre
-- Authors: Mark Musil mmusil@pdx.edu
-- Date of creation: July 2018
--
-- Description: Test bench for ZCU104. Tests perfomance across a variety of use conditions.
--
-- ######################
-- ### Functionality ####
-- ######################
--
-- A 125Mhz clock is input at CLK. RO_HALT is switched to low to initialize. 
--
-- The CNT_MAX values were determined as CNT_MAX = CLK/(Target frequency * 2). The 2 in the 
-- divisor is because this counter regulates only one half of the duty cycle. That is to say
-- we count for 50% of the period, switch polarity, then count up again.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ZCU104_HelloWorld_TB is
end ZCU104_HelloWorld_TB;

architecture Behavioral of ZCU104_HelloWorld_TB is 

-- Waveform items to be displayed

constant CLK_PERIOD : time := 8ns; -- 8ns = 1/125Mhz;
constant WAIT_TIME  : time := 50ms;
-- Connections to the UUT
signal CLK_extern	     :   std_logic  := '0'; 
signal ENABLE_extern     :   std_logic  := '0';
signal SWITCH0_extern	 :   std_logic  := '0'; 
signal SWITCH1_extern    :   std_logic  := '0';
signal LED_extern        :   std_logic; 

component ZCU104_HelloWorld is
	port (   CLK     : in  std_logic; 
			 ENABLE  : in  std_logic;
			 SWITCH0 : in  std_logic;
			 SWITCH1 : in  std_logic;
			 LED     : out std_logic
		);
end component ZCU104_HelloWorld;

begin

UUT : ZCU104_HelloWorld
	port map (
			CLK     => CLK_extern,
			ENABLE  => ENABLE_extern,
			SWITCH0 => SWITCH0_extern,
			SWITCH1 => SWITCH1_extern,
			LED 	=> LED_extern
			 );

clock_generator : process is
begin
	wait for CLK_PERIOD/2;
	CLK_extern <= not CLK_extern;
end process clock_generator;

process is
begin
	ENABLE_extern   <= '1';
	
	SWITCH0_extern  <= '0';
	SWITCH1_extern  <= '0';
	wait for WAIT_TIME;
	
     SWITCH0_extern  <= '1';
	 SWITCH1_extern  <= '0';
     wait for WAIT_TIME*2;
	
	--ENABLE_extern <= '0';
	--wait for WAIT_TIME;
	
	--ENABLE_extern <= '1';
	--wait for WAIT_TIME; 
	
	 SWITCH0_extern  <= '0';
	 SWITCH1_extern  <= '1';
	 wait for WAIT_TIME*3;
	
	 SWITCH0_extern  <= '1';
	 SWITCH1_extern  <= '1';
	 wait for 1.2 sec;
    
    SWITCH0_extern  <= '0';
    SWITCH1_extern  <= '0';
    wait for WAIT_TIME;
	
	ENABLE_extern   <= '0';
	wait for WAIT_TIME;
	
	end process;

end Behavioral;
	