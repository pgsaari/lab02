LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity gen_counter is
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
end;
	
architecture rtl of gen_counter is
-- use a signal of type unsigned for counting
signal  i_count	:unsigned ( wide-1 downto 0);
signal  i_term :std_logic;

begin
cnt: process( clk ) begin
	if ( rising_edge(clk) ) then
		-- if-then-else statements to control the counter go here
		if((reset = '1') or (i_term = '1')) then -- reset
			i_count <= (others => '0');
		elsif(load = '1') then -- set
			i_count <= unsigned(data);
		elsif(enable = '1') then
			i_count <= i_count + 1; -- increment the clock
		end if;
	end if;
end process;

-- I always like to use a seperate process to generate the terminal count
chk: process (i_count, enable) begin
		-- if-then-else statements to generate terminal count go here
		if (i_count = max AND enable = '1') then --max value reached
			i_term <= '1'; -- set term to indicate counter at max
		else
			i_term <= '0'; -- set term to indicate counter not at max	
		end if;		
end process;

-- this is how we drive the count to the output.
count <= std_logic_vector( i_count );
term  <= i_term;

end;