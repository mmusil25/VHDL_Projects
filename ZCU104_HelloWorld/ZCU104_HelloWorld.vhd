-- Entity name: ZCU104_HelloWorld
-- Project: 16nm M-STORM mise en oeuvre
-- Authors: Mark Musil mmusil@pdx.edu
-- Date of creation: July 2018
--
-- Description: Entity meant to test the switches and LEDs on the ZCU104 board. Provides
-- a simple verification platform before moving on the more complex entities.
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.vcomponents.all;


entity ZCU104_HelloWorld is
	port(   CLK_125_N   : in  STD_LOGIC; -- 125MHz differential neg 
			CLK_125_P   : in  STD_LOGIC; -- 125MHz differential neg
			ENABLE		: in  STD_LOGIC; -- Allows flashing to happen GPIO_DIP_SW0
			SWITCH0		: in  STD_LOGIC; -- LSB of the LED frequency selection GPIO_DIP_SW1
			SWITCH1 	: in  STD_LOGIC; -- MSB GPIO_DIP_SW2
			LED			: out STD_LOGIC  -- connection to the external LED GPIO_LED_0_LS
		);
	end ZCU104_HelloWorld;
	

architecture Behavioral of ZCU104_HelloWorld is


-- Define constants such as counter max values
constant CNT_MAX_16HZ   : std_logic_vector(35 downto 0)  := X"0_003b_9aca";  -- 3,906,250 = 125MHz/(16*2) 
constant CNT_MAX_10HZ   : std_logic_vector(35 downto 0)  := X"0_005F_5E10";  -- 6.25E6 = 125MHz/(10*2)
constant CNT_MAX_4HZ    : std_logic_vector(35 downto 0)  := X"0_00ee_6b28";   -- 7,812,500 = 125MHz/(4*2)
constant CNT_MAX_1HZ    : std_logic_vector(35 downto 0)  := X"0_03B9_ACA0"; -- 6.25E6 = 125MHz/(1*2) 

-- define counters and the outputs that they control
signal   cntr_16Hz     : std_logic_vector(35 downto 0)  := (others=>'0'); -- Holds the present count
signal   cntr_4Hz      : std_logic_vector(35 downto 0)  := (others=>'0'); 
signal   cntr_10Hz      : std_logic_vector(35 downto 0)  := (others=>'0'); 
signal   cntr_1Hz       : std_logic_vector(35 downto 0)  := (others=>'0'); 

signal   out_16Hz      : std_logic := '0'; -- The resulting reduced frequency
signal   out_10Hz       : std_logic := '0'; 
signal   out_4Hz       : std_logic := '0'; 
signal   out_1Hz        : std_logic := '0'; 
signal   CLK            : std_logic := '0';
-- Wire from mux to LED
signal 	 current_output : std_logic := '0';

begin

-- IBUFGDS: Differential Global Clock Input Buffer
-- 7 Series
-- Xilinx HDL Libraries Guide, version 14.7
	IBUFGDS_inst : IBUFGDS
		generic map (
			DIFF_TERM => FALSE, -- Differential Termination
			IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
			IOSTANDARD => "DEFAULT")
		port map (
		O => CLK, -- Clock buffer output
		I => CLK_125_P, -- Diff_p clock buffer input (connect directly to top-level port)
		IB => CLK_125_N -- Diff_n clock buffer input (connect directly to top-level port)
				);
-- End of IBUFGDS_inst instantiation
-- Counter processes


counter_16Hz : process(CLK)
begin
	if (rising_edge(CLK)) then
		if (cntr_16Hz = CNT_MAX_16HZ - 1) then
			cntr_16Hz <= (others=>'0');
			out_16Hz  <= NOT(out_16Hz);
		else
			cntr_16Hz <= cntr_16Hz + 1;
		end if;
	end if;
end process counter_16Hz;

counter_10Hz : process(CLK)
begin
	if (rising_edge(CLK)) then
		if (cntr_10Hz = CNT_MAX_10HZ - 1) then
			cntr_10Hz <= (others=>'0');
			out_10Hz  <= NOT(out_10Hz);
		else
			cntr_10Hz <= cntr_10Hz + 1;
		end if;
	end if;
end process counter_10Hz;

counter_4Hz : process(CLK)
begin
	if (rising_edge(CLK)) then
		if (cntr_4Hz = CNT_MAX_4HZ - 1) then
			cntr_4Hz <= (others=>'0');
			out_4Hz  <= NOT(out_4Hz);
		else
			cntr_4Hz <= cntr_4Hz + 1;
		end if;
	end if;
end process counter_4Hz;

counter_1Hz : process(CLK)
begin
	if (rising_edge(CLK)) then
		if (cntr_1Hz = CNT_MAX_1HZ - 1) then
			cntr_1Hz <= (others=>'0');
		    out_1Hz  <= NOT(out_1Hz);
		else
			cntr_1Hz <= cntr_1Hz + 1;
		end if;
	end if;
end process counter_1Hz;

frequency_mux : process(ENABLE, SWITCH0, SWITCH1, out_16Hz, out_4Hz, out_10Hz, out_1Hz, CLK)
begin
	if (ENABLE = '1') then
		if    (SWITCH1 = '1' and SWITCH0 = '1') then
			   current_output <= out_16Hz;
			   
		elsif (SWITCH1 = '1' and SWITCH0 = '0') then
			   current_output <= out_10Hz;
			   
		elsif (SWITCH1 = '0' and SWITCH0 = '1') then
			   current_output <= out_4Hz;		
			
		elsif (SWITCH1 = '0' and SWITCH0 = '0') then
			   current_output <= out_1Hz;
		end if;
	else
		current_output <= '0';
	end if;
end process;

LED <= current_output;

end Behavioral;

	