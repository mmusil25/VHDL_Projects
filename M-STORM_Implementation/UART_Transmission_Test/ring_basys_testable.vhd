--
-- Entity name: ring_basys
-- Project: 16nm M-STORM mise en oeuvre
-- Author: Emmanuel Bender -- ebr248@gmail.com
-- Editor: (Comments and style) Mark Musil mmusil@pdx.edu at IRT Saint-Exupery in July 2018.
-- Date: May 2016
--
-- Description: Test Entity which handles external communication between simulated ring oscillators and the UART_USB transceiver.
-- It outputs a continuous stream of UART data that contains the frequency, one after the next, of fake ring oscillator frequencies stored in rings_testable.vhd. This data
-- has been formatted with comma separated values and line feed symbols for ease insertion into a .csv file.
-- 
-- ######################
-- ### Functionality ####
-- ######################
--
-- A 125Mhz clock is input at CLK. RESET_BTN is initialized to low. The entity contains two sub-entities, rings.vhd and UART_TX_CTRL.vhd.
-- The entity uses a state machine to retrieve dataflow from rings.vhd and transmit this data out of the FPGA using UART_TX_CTRL.vhd
-- The state descriptions are below in the section "State Descriptions". Some states serve no purpose such as LD_INIT_STR and RDY_LOW. They are 
-- simply passed through in the state logic section. This is because this code was adapted from a GPIO demo file and those states had functionality
-- which, although not necessary in this iteration of the code, may be useful in the future. For example you may want to add an initialization string
-- and could use LD_INIT_STR for this. 
--
-- Upon start up the RST_REG state is reached, here a timer of duration INIT_CNTR_MAX/125MHz seconds causes a small delay before the state LD_INIT_STR is reached.
-- Because there is no initialization string the state machine falls through the transmission stages until it reaches the state WAIT_RING_OSC. The system then 
-- waits CYCLE_CNTR_MAX/125MHz seconds (defaults to 60 seconds) in order to allow the ring oscillators in rings.vhd to have a measured value. After this time is 
-- reached the next state is LD_RING_OSC_FREQ. This begins a looped process where RING_OSC_MAX + 1 ring oscillators' frequencies are transmitted over UART. Note that
-- RING_OSC_MAX must have the same value as the constant 'tlen' in rings.vhd. Once all the ring oscillators have been counted the state machine stays in the WAIT_RING_OSC
-- state until CYCLE_CNTR_MAX/125MHz seconds have passed since the timer last reset. This allows new frequencies to be measured for each ring oscillator in the rings.vhd entity.
-- During start-up, the cycle counter is allowed to run before LD_RING_OSC_FREQ is activated to allow starting frequencies to be measured.
--
-- The packets that come out of the UART_TXD port are UART, 9600 Baud Rate, 8 data bits, LSB first, 1 stop bit, no parity.
-- The 2 digit hexadecimal word "2C" (ASCII comma character " , ") is appended to every transmitted frequency value
-- that is not the final frequency. "0A" (ASCII line feed character [https://en.wikipedia.org/wiki/Newline] ) 
-- is appended to the final frequency. These two symbols allow the data to be easily fed into a .csv file. 
--
-- RESET_BTN allows the ring oscillators to be halted when ever it is set to high. TX_status is connected to the LED output and allows
-- visual feedback that a character is being sent out the UART_TXD line.
-- 
-- A block diagram of the entity as well a flowchart for the state machine can be seen in the project documentation. 
--
-- ###########################
-- ### State Descriptions ####
-- ###########################
--
-- RST_REG       -- Wait INIT_CNTR_MAX/125MHz seconds. This state is entered after configuration or a user reset.
--                	The state is then set to LD_INIT_STR.
-- LD_INIT_STR   -- strIndex variable is set to zero. The state is set to SEND_CHAR.
--                  This state was kept to allow a welcome string to be inserted if necessary.
-- SEND_CHAR     -- uartSend is set high for a single clock cycle, signaling the character
--                  data at sendStr(strIndex) to be registered by the UART_TX_CTRL at the next
--                  cycle. Also, strIndex is incremented (behaves as if strIndex were post 
--                  incremented after the UART_TX_CTRL reads the sendStr(strIndex) data). 
--				    The state is set to RDY_LOW.
-- RDY_LOW       -- Do nothing. State is set to WAIT_RDY.
--				 
				 --	Old usage: Wait for the READY signal from the UART_TX_CTRL to go low, 
--                  indicating a send operation has begun. State is set to WAIT_RDY.
-- WAIT_RDY      -- Do nothing. Wait for the READY signal from the UART_TX_CTRL to go high, 
--                  indicating a send operation has finished. If READY is high and strEnd = StrIndex 
--                  then state is set to WAIT_RING_OSC, else if READY is high and strEnd != StrIndex
--                  then state is set to SEND_CHAR.
-- WAIT_RING_OSC 
				  -- Do nothing. Proceed if cycle_cntr = CYCLE_CNTR_MAX or if all ring oscillators
--				     have not yet been couted Set the state to LD_RING_OSC_FREQ.
--                   
-- LD_RING_OSC_FREQ 
				  -- The frequency at the FREQ output of rings.vhd is loaded into the sendStr variable  
--				     The specific frequency at the FREQ output is that addressed by FreqSel.
--				     The frequency string length is stored in the StrEnd variable. and the strIndex
--                   variable is set to zero. The state is set to SEND_CHAR.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--The IEEE.std_logic_unsigned contains definitions that allow 
--std_logic_vector types to be used with the + operator to instantiate a 
--counter.
use IEEE.std_logic_unsigned.all;
USE ieee.numeric_std.ALL; 
library UNISIM;
use UNISIM.vcomponents.all;

entity ring_basys_testable is
    Port(  RESET_BTN 	: in   STD_LOGIC;   -- Halt ring oscillator oscillation
           CLK_125_N    : in  STD_LOGIC; -- 125MHz differential neg 
           CLK_125_P    : in  STD_LOGIC; -- 125MHz differential neg
           LED 			: out  STD_LOGIC;   -- Signal stating that transmission is happening
           UART_TXD 	: out  STD_LOGIC	-- Output
		);
end ring_basys_testable;

architecture Behavioral of ring_basys_testable is

component UART_TX_CTRL
	Port( SEND          : in std_logic;
		  DATA          : in std_logic_vector(7 downto 0);
	      CLK     	    : in std_logic;          
		  READY         : out std_logic;
	      UART_TX 		: out std_logic
		);
end component;

component rings_testable
    Port( clk    		: in  STD_LOGIC;  
	       reset 		: in  STD_LOGIC;
           F_sel 		: in STD_LOGIC_VECTOR(31 downto 0);
           FREQ		    : out STD_LOGIC_VECTOR(31 downto 0)
		);
end component;

type UART_STATE_TYPE is (RST_REG, LD_INIT_STR, SEND_CHAR, RDY_LOW, WAIT_RDY, WAIT_RING_OSC, LD_RING_OSC_FREQ); --The type definition for the UART state machine type.

--The CHAR_ARRAY type is a variable length array of 8 bit std_logic_vectors. 
--Each std_logic_vector contains an ASCII value and represents a character in
--a string. The character at index 0 is meant to represent the first
--character of the string, the character at index 1 is meant to represent the
--second character of the string, and so on.

type CHAR_ARRAY is array (integer range<>) of std_logic_vector(7 downto 0);

--constant INIT_CNTR_MAX   : std_logic_vector(35 downto 0) := X"0_0773_5940";  -- 125,000,000 * 1 = 125,000,000  = clk cycles for 1 second
--constant CYCLE_CNTR_MAX  : std_logic_vector(35 downto 0) := X"1_BF08_EB00";  -- 125,000,000Hz * 60Seconds = 7,500,000,000 = clk cycles for 60 seconds
constant INIT_CNTR_MAX   : std_logic_vector(35 downto 0) := X"0_0001_e848";  -- 125,000,000 * 1E-3 = 125,000  = clk cycles for 1 ms
constant CYCLE_CNTR_MAX  : std_logic_vector(35 downto 0) := X"0_4a81_7c80";  -- 125,000,000 * 1E-3 = 125,000  = clk cycles for 1 ms
constant RING_OSC_MAX    : natural := 3; -- Sets the highest address ring oscillator in rings.vhd that will have its value transmitted over UART.
signal numtest           : std_logic_vector(31 downto 0);

--Counter variables
signal cycle_cntr : std_logic_vector (35 downto 0) := (others=>'0');
signal init_cntr  : std_logic_vector (35 downto 0) := (others=>'0');

--Contains the current string being sent over uart.
signal sendStr : CHAR_ARRAY(0 to 11);

--Contains the length of the current string being sent over uart.
signal strEnd : natural := 0;

--Contains the index of the next character to be sent over uart
--within the sendStr variable.
signal strIndex : natural := 0;

--UART_TX_CTRL control signals
signal uartRdy   : std_logic;
signal uartSend  : std_logic := '0';
signal uartData  : std_logic_vector (7 downto 0):= "00000000";
signal uartTX    : std_logic;
signal StartOver : std_logic := '0';
signal TX_status : std_logic := '0';
--Current uart state signal
signal uartState : UART_STATE_TYPE := RST_REG; -- Start in the reset state.

-- Signals used to address ring oscillators

signal FreqSel : Natural range 0 to RING_OSC_MAX := 0 ; -- used to select a ring oscillator from the rings.vhd entity
signal swtosel : std_logic_vector(31 downto 0); -- A binary version of the natural number "FreqSel" this is the 
-- value that is actually fed into rings.vhd.

signal   CLK            : std_logic := '0';
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

----------------------------------------------------------
------              UART Control                   -------
----------------------------------------------------------
-- These processes are the counters used for process control

initializer_counter : process(CLK)
begin
  if (rising_edge(CLK)) then
    if (init_cntr = INIT_CNTR_MAX) then
      init_cntr <= (others=>'0');
    else
      init_cntr <= init_cntr + 1;
    end if;
  end if;
end process;

cycle_counter : process(CLK)
begin
  if (rising_edge(CLK)) then
    if (cycle_cntr = CYCLE_CNTR_MAX) then
      cycle_cntr <= (others=>'0');
    else
      cycle_cntr <= cycle_cntr + 1;
    end if;
  end if;
end process;

--Next Uart state logic (states described above)
next_uartState_process : process (CLK)
begin
	if (rising_edge(CLK)) then	
			case uartState is 
			when RST_REG =>
                if (init_cntr = INIT_CNTR_MAX) then
                  uartState <= LD_INIT_STR;
                end if;
			when LD_INIT_STR =>
				uartState <= WAIT_RING_OSC;
			when SEND_CHAR =>
				uartState <= RDY_LOW;
			when RDY_LOW =>
				uartState <= WAIT_RDY;
			when WAIT_RDY =>
				if (uartRdy = '1') then
					if (strEnd = strIndex) then
						uartState <= WAIT_RING_OSC;
					else
						uartState <= SEND_CHAR;
					end if;
				end if;
			when WAIT_RING_OSC =>
				if (cycle_cntr = CYCLE_CNTR_MAX or StartOver = '1') then		
					uartState <= LD_RING_OSC_FREQ;
				end if;
			when LD_RING_OSC_FREQ =>
				uartState <= SEND_CHAR;
			when others=> --should never be reached
				uartState <= RST_REG;
			end case;
    end if ;
end process;

--Loads the sendStr and strEnd signals when LD_RING_OSC_FREQ state is
--is reached.
string_load_process : process (CLK)

variable num         : Natural := 0 ;        -- True frequency/10
variable tempnum     : Natural := 0 ;        -- True frequency
variable res         : Natural := 0 ;	     -- Variable for holding a modulus
variable tempsendStr : CHAR_ARRAY(0 to 11);  -- String for pre-processing before sendStr is made. Note that even though the loop 
--                                              is from 0 to 10, this array must have the extra position 11 in case the value sent is 0. 
--                                              This way the packat can still contain  either a comma or a line feed.
 
begin
	if (rising_edge(CLK)) then	
		if (uartState = LD_RING_OSC_FREQ) then
                num := to_integer(unsigned(numtest)); -- numtest is the output of rings.vhd. It is the 32bit 
													  -- binary frequency of the ring oscillator 
													  -- selected by FreqSel.
													  
              --  tempnum := num*10; 	                  -- Multipy by 10 to get the true frequency. This is necessary
				                                          -- because the ring oscillators are only measured for 0.1 seconds.
			--	sendStr(0) <= X"55";
			--	strEnd <= 1;
				tempnum := num + 1;					                  
                for i in 0 to 10 loop 
                    if (tempnum > 0 )then
                        res := tempnum mod 10;                    
                        tempnum := tempnum/10;
                        tempsendStr(10-i) := res+X"30";  -- Build the sendStr vector from MSB to LSB
                        if (tempnum = 0) then 
                            if (FreqSel = RING_OSC_MAX) then
                              sendStr(i+1) <= X"0A";	-- Add line feed character at end of sendStr
                              FreqSel <= 0;
                              StartOver <= '0';		-- block the state machine from reaching LD_RING_OSC_FREQ again
                            else
                               sendStr(i+1) <= X"2C";   -- Add a comma " , " at end of sendStr
                               FreqSel <= FreqSel + 1;
                               StartOver <= '1';
                            end if;
                           sendStr(0 to i) <= tempsendStr(10-i to 10); -- Load the useful data in
                           strEnd <= i + 2;  -- Take into account the buffer character "0A" or "2C". Add 2 because of zero based indexing.
                          -- assert strEnd > 11 report "Unexpected value. strEnd = " & natural'image(strEnd);
                        end if;            
                    end if;                            
                end loop;
		end if;
 end if;
end process;

-- Conrols the strIndex signal so that it contains the index
-- of the next character that needs to be sent over uart
char_count_process : process (CLK)
begin
	if (rising_edge(CLK)) then
		if (uartState = LD_INIT_STR or uartState = LD_RING_OSC_FREQ) then
			strIndex <= 0;
		elsif (uartState = SEND_CHAR) then
			strIndex <= strIndex + 1;
		end if;
	end if;
end process;

--Controls the UART_TX_CTRL signals
char_load_process : process (CLK)
begin
	if (rising_edge(CLK)) then
		if (uartState = SEND_CHAR) then
			uartSend  <= '1';			    -- Ready to send
			uartData  <= sendStr(strIndex); -- Deliver data one 8bit word at a time
			TX_status <= '1'; 				-- Inidicates character is being sent
		else
			uartSend  <= '0';
			TX_status <= '0';
		end if;
	end if;
end process;

--Component used to send a byte of data over a UART line.
Inst_UART_TX_CTRL: UART_TX_CTRL port map(
		SEND => uartSend,
		DATA => uartData,
		CLK => CLK,
		READY => uartRdy,
		UART_TX => uartTX 
	);

UART_TXD <= uartTX; 	-- connect UART_TX_CTRL.vhd to the external port of ring_basys.vhd
LED      <= TX_status; 	-- connect TX_status to the external port of ring_basys.vhd

swtosel <= std_logic_vector(to_unsigned(FreqSel,swtosel'length));   -- Convert natural number to binary for addressing
																	-- the ring oscillators


rings : rings_testable port map(
        clk => CLK,
        reset => RESET_BTN,
        F_sel => swtosel,
        FREQ => numtest
);

end Behavioral;
