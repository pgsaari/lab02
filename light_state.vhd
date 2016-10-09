LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL

entity light_state is
	port(
		EW_left_bit, NS_left_bit, night: in std_logic;
		count: in unsigned(2 downto 0); -- time spent in each state
		
		NS_light, EW_light: out std_logic_vector(1 downto 0); -- green yellow red
		NS_arrow, EW_arrow: out std_logic; -- arrow on or off
		state_out: out std_logic_vector(2 downto 0);
	);
end entity light_state;

architecture logic of light_state is
	

	-- NS_green = NS_green & EW_red 3 seconds
	-- NS_green_short = 2 seconds
	-- NS_yellow = NS_yellow & EW_red 2 seconds
	-- NS_left = NS_red, EW_red, & NS_arrow 1 sec
	-- EW_green = NS_red & EW_green 3 sec
	-- EW_green_short = 2 seconds 2 sec
	-- EW_yellow =  EW_yellow & NS_green 2 sec
	-- EW_left = NS_red, EW_red, EW_arrow 1 sec
	type state_type is (NS_green, NS_green_short, NS_yellow, NS_left, EW_green, EW_green_short, EW_yellow, EW_left, night_m)
	
	signal current_state: state_type;
	signal next_state: state_type;

	begin
	process(current_state, EW_left_bit, NS_left_bit, night, count)
	begin
		case current_state is
			when NS_green =>
				if(night = '1') then
					next_state <= night_m;
				elsif(count = "011") then -- 3 seconds
					next_state <= NS_yellow;
				else
					next_state <= NS_green;
				end if;
			when NS_green_short =>
				if(night = '1') then
					next_state <= night_m;
				elsif(count = "010") then -- 2 seconds
					next_state <= NS_yellow;
				else
					next_state <= NS_green;
				end if;
			when NS_yellow =>
				if(night = '1') then
					next_state <= night_m;
				elsif(count = "010") & (EW_left_bit = '1') then -- 2 seconds
					next_state <= EW_left;
				elsif(count = "010") & (EW_left_bit = '0') then
					next_state <= EW_green;
				else
					next_state <= NS_yellow;
				end if;
			when EW_left =>
				if(night = '1') then
					next_state <= night_m;
				elsif(count = "001") then -- 1 seconds
					next_state <= EW_green_short;
				else
					next_state <= EW_left;
				end if;
			when EW_green => 
				if(night = '1') then
					next_state <= night_m;
				elsif(count = "011") then -- 3 seconds
					next_state <= EW_yellow;
				else
					next_state <= EW_green;
				end if;
			when EW_green_short => 
				if(night = '1') then
					next_state <= night_m;
				elsif(count = "010") then -- 2 seconds
					next_state <= EW_yellow;
				else
					next_state <= EW_green_short;
				end if;
			when EW_yellow =>
				if(night = '1') then
					next_state <= night_m;
				elsif(count = "010") & (NS_left_bit = '1') then -- 2 seconds
					next_state <= NS_left;
				elsif(count = "010") & (EW_left_bit = '0') then
					next_state <= NS_green
				else
					next_state <= EW_yellow;
				end if;
			when NS_left =>
				if(night = '1') then
					next_state <= night_m;
				elsif(count = "001") then -- 1 seconds
					next_state <= NS_green_short;
				else
					next_state <= NS_left;
				end if;
			when night_m =>
				if(night = '0') then
					next_state <= NS_green;
				else
					next_state <= night_m;
				end if;
end architecture logic;











