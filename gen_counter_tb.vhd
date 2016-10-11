LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity gen_counter_tb is
end entity;


architecture behav of gen_counter_tb is

constant  WIDE:positive := 4;
constant  MAX:positive  := 9;

constant CLK_PER:time := 20 ns;


component gen_counter is
generic (
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
		);
	end component;
	
	signal  clk 	:std_logic;
	signal  data 	:std_logic_vector(WIDE-1 downto 0);
	signal  load 	:std_logic;
	signal  enable 	:std_logic;
	signal  reset 	:std_logic;
	signal count 	:std_logic_vector(WIDE-1 downto 0);
	signal term 	:std_logic;
	
	begin
	
	clock:process begin
		clk <= '0';
		wait for CLK_PER;
		clk <= '1';
		wait for CLK_PER;
		end process;
	
	vectors:process begin
	
	    -- test reset then wait 
		data <= 	"0011";
		load <=		'0';
		enable <= 	'0';
		reset <= 	'1';
		wait for 3*CLK_PER;
		
		-- test load 3
		data <= 	"0011";
		load <=		'1';
		enable <= 	'0';
		reset <= 	'0';
		wait for 3*CLK_PER;

		-- test enable clock to count up to 9 from 3
		data <= 	"0011";
		load <=		'0';
		enable <= 	'1';
		reset <= 	'0';
		wait for 15*CLK_PER;

		-- load 5 while clock is enabled
		data <= 	"0101";
		load <=		'1';
		enable <= 	'1';
		reset <= 	'0';
		wait for 3*CLK_PER;

		-- let clock count up from 5
		data <= 	"0101";
		load <=		'0';
		enable <= 	'1';
		reset <= 	'0';
		wait for 10*CLK_PER;

		-- disable clock
		data <= 	"0101";
		load <=		'0';
		enable <= 	'0';
		reset <= 	'0';
		wait for 10*CLK_PER;

		assert (1=1)
			report "End of simulation"
			severity FAILURE;

		end process;
		
		dut :gen_counter
generic map (
		wide => WIDE,
		max => MAX
		)
port map (
		clk		=> clk,
		data	=> data,
		load	=> load,
		enable	=> enable,
		reset	=> reset,
		count	=> count,
		term	=> term
		);
		
end architecture;
		
		
		
	
	