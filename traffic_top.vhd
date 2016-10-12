-- TODO: complete this top level file
--		we need an instance of a state machine, some counters
--		1 or 2 different versions of the seven segment displays

--		idea: use just one counter that counts seconds with max value of 3
--			and reset the counter everytime we switch states.
--			The state machine knows what counts to switch at either 1,2, or 3 sec

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


entity traffic_top is 
	Port(
	
	 --//////////////////////// CLOCK ///////////////////////////////////
    CLOCK_50	:in		std_logic;						-- 50 MHz
	
	--////////////////////////	7-SEG Dispaly	///////////////////////////
	HEX0		:out	std_logic_vector( 6 downto 0);	--Seven Segment Index 0 (N/S R/G/Y)
	HEX1		:out	std_logic_vector( 6 downto 0);	--Seven Segment Index 1 (N/S arrow)
	HEX4		:out	std_logic_vector( 6 downto 0);	--Seven Segment Index 4 (N/S arrow)
	HEX5		:out	std_logic_vector( 6 downto 0);	--Seven Segment Index 5 (E/W R/G/Y)
	
	--////////////////////////	DPDT Switch		////////////////////////
	SW			:in		std_logic_vector( 2 downto 0 ) -- 0: Night, 1: NS Left Turn, 2: EW Left Trun
	
	);
end entity traffic_top;

architecture struct of traffic_top is
	
---------TIE R/G/Y/AARROW state to hex display variable----------
SIGNAL Hex_Link : std_logic_vector(5 DOWNTO 0) := "000000";

	------ seven_seg_display--------- 
COMPONENT seven_seg is Port(
	data	:in		std_logic_vector( 5 downto 0);
	segs	:out	std_logic_vector( 27 downto 0)
); END COMPONENT;

-------- Counters-----------------------
component gen_counter is generic (
		wide :positive; -- how many bits is the counter
		max :positive   -- what is the max value of the counter ( modulus )
);
port (
		clk		:in	std_logic; -- system clock
		data	:in std_logic_vector( wide-1 downto 0 ); -- data in for parallel load, use unsigned(data) to cast to unsigned
		load	:in std_logic; -- signal to load data into i_count i_count <= unsigned(data);
		enable	:in std_logic; -- clock enable
		reset	:in std_logic; -- reset to zeros use i_count <= (others => '0' ) since size depends on generic
		count	:out std_logic_vector( wide-1 downto 0 ); -- count out
		term	:out std_logic -- maximum count is reached
); end component;


---------State Machine----------------------

component light_state is port(
		EW_left_bit, NS_left_bit, night, clk: in std_logic;
		
		-- state machine has three counters that count to 1, 2, and 3 seconds
		count1_term, count2_term, count3_term: in std_logic;
		
		-- ability to enable each of the three counters
		count1_en, count2_en, count3_en: out std_logic;
		NS_light, EW_light: out std_logic_vector(1 downto 0); -- green yellow red
		NS_arrow, EW_arrow: out std_logic; -- arrow on or off
		state_out: out std_logic_vector(3 downto 0)
);end component;
	
	
---------- Counter Enables & Counter Terms---------
signal 		ct1_en	 :std_logic := '0';
signal 		ct2_en	 :std_logic := '0';
signal 		ct3_en	 :std_logic := '0';	
signal 		ct1_term	 :std_logic := '0';
signal 		ct2_term	 :std_logic := '0';
signal 		ct3_term	 :std_logic := '0';	
	
----------Declarations and Signals ABOVE---------	
	
	begin
	-- hook em up here

	--//////////// LCD /////////////////////--
hexF : seven_seg port map (
		data => Hex_Link,
		segs(6 downto 0) => HEX0,
		segs(13 downto 7) => HEX5,
		segs(20 downto 14) => HEX1,
		segs(27 downto 21) => HEX4
);
	
	--//////// 1 SEC COUNTER ///////////////--
count1 : gen_counter generic map(
		wide => 28,
		max => 50000000
) 
port map(
		clK => CLOCK_50,
		data	=> (others => '0'),
		load	=> '0',
		enable => ct1_en,
		reset	=> '0',
		count	=> open,
		term	=> ct1_term
);

--//////// 2 SEC COUNTER ///////////////--
count2 : gen_counter generic map (
		wide => 28,
		max => 100000000
)
port map (
		clK => CLOCK_50,
		data	=> (others => '0'),
		load	=> '0',
		enable => ct2_en,
		reset	=> '0',
		count	=> open,
		term	=> ct2_term
); 

--//////// 3 SEC COUNTER ///////////////--
count3 : gen_counter generic map (
		wide => 28,
		max => 150000000
)
port map (
		clK => CLOCK_50,
		data	=> (others => '0'),
		load	=> '0',
		enable => ct3_en,
		reset	=> '0',
		count	=> open,
		term	=> ct3_term
); 
	

state_mach : light_state port map(
		clk => CLOCK_50,

		night => SW (0),
		NS_left_bit => SW(1),
		EW_left_bit => SW(2), 
		
		-- state machine has three counters that count to 1, 2, and 3 seconds
		count1_term => ct1_term,
		count2_term => ct2_term,
		count3_term => ct3_term,
		
		-- ability to enable each of the three counters
		count1_en => ct1_en,
		count2_en => ct2_en,
		count3_en => ct3_en,
		
		--first two digits represent NS
		--next is two digits for EW
		--next is one digit for NS Arrow
		--next is one digit for EW arrow
		NS_light => Hex_Link(1 downto 0), 
		EW_light => Hex_Link(3 downto 2),
		NS_arrow => Hex_Link(4),
		EW_arrow => Hex_Link(5),
		
		state_out => open
);
	
end;