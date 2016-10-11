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
	
	);
end entity traffic_top;

architecture struct of traffic_top is
	--paste our  component declarations here
	-- signals too
	begin
	-- hook em up here
end architecture traffic_top;