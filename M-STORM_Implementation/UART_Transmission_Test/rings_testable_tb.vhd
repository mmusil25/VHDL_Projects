-- Entity name: rings_testable_TB
-- Project: 16nm M-STORM mise en oeuvre
-- Author: Emmanuel Bender -- ebr248@gmail.com
-- Editor: (Comments and style) Mark Musil mmusil@pdx.edu at IRT Saint-Exupery in July 2018.
-- Date: May 2016
-- 
-- Description: Test bench for rings_testable. Check a variety of conditions.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity rings_testable_TB is 
end rings_testable_TB;

architecture Behavioral of rings_testable_TB is 
 
constant CLK_PERIOD : time := 8 ns;

signal CLK_extern     : std_logic := '0';
signal reset_extern   : std_logic := '0';
signal F_sel_extern   : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal FREQ_extern    : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');

component rings_testable is 
     port (
		   clk   : in  STD_LOGIC;  					   -- Connect 125MHz
	       reset : in  STD_LOGIC;					   -- Initialize low
           F_sel : in  STD_LOGIC_VECTOR(31 downto 0);  -- Addresses ring oscillators. Takes 32bit binary input. Initialize to 32bits of 0.
           FREQ  : out STD_LOGIC_VECTOR(31 downto 0)   -- Outputs frequency count of RO addressed by F_sel as a 32bit number. 
		   );
end component rings_testable;

begin 

UUT : rings_testable
	port map(
			clk => CLK_extern,
			reset => reset_extern,
			F_sel => F_sel_extern,
			FREQ => FREQ_extern
			);
			
clock_generator : process is
begin
	wait for CLK_PERIOD/2;
	CLK_extern <= not CLK_extern;
end process clock_generator;

-- Address all possibilities

process
begin

wait for CLK_PERIOD*4;

for i in 0 to 3 loop
    F_sel_extern <= F_sel_extern + 1;
    wait for CLK_PERIOD*4;
end loop; 

end process;
end Behavioral;