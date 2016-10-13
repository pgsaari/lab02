-- oUTPUT TO MAP OUT THE SEVEN SEGMENTS DISPLAY CORRECTLY --

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity seven_seg is
port(
	--first two digits represent NS
	--next is two digits for EW
	--next is one digit for NS Arrow
	--next is one digit for EW arrow
	data	:in		std_logic_vector( 5 downto 0);
	segs	:out	std_logic_vector(27 downto 0)
	);
end entity;
	
architecture rtl of seven_seg is

signal NS_light : std_logic_vector(1 downto 0) := data(1 downto 0);
signal EW_light : std_logic_vector(1 downto 0) := data(3 downto 2);
signal NS_Arrow : std_logic := data(4);
signal EW_Arrow : std_logic := data(5);

	begin
	seven_seg: process(data)
		begin
		
		case NS_light is
			when "00" => -- RED
				segs(0) <= '0';
				segs(1) <= '0';
				segs(2) <= '0';
				segs(3) <= '1';
				segs(4) <= '0';
				segs(5) <= '0';
				segs(6) <= '0';
				
			when "01" =>	-- YELLOW			
				segs(0) <= '1';
				segs(1) <= '0';
				segs(2) <= '0';
				segs(3) <= '0';
				segs(4) <= '1';
				segs(5) <= '0';
				segs(6) <= '0';				
				
			when "10" =>	-- GREEN			
				segs(0) <= '0';
				segs(1) <= '1';
				segs(2) <= '0';
				segs(3) <= '0';
				segs(4) <= '0';
				segs(5) <= '0';
				segs(6) <= '0';
		
			when others => --DONT CARE
				segs(0) <= '1';
				segs(1) <= '1';
				segs(2) <= '1';
				segs(3) <= '1';
				segs(4) <= '1';
				segs(5) <= '1';
				segs(6) <= '1';
			end case;
			
		case EW_light is
			when "00" => -- RED
				segs(7) <= '0';
				segs(8) <= '0';
				segs(9) <= '0';
				segs(10) <= '1';
				segs(11) <= '0';
				segs(12) <= '0';
				segs(13) <= '0';
				
			when "01" =>	-- YELLOW			
				segs(7) <= '1';
				segs(8) <= '0';
				segs(9) <= '0';
				segs(10) <= '0';
				segs(11) <= '1';
				segs(12) <= '0';
				segs(13) <= '0';				
				
			when "10" =>	-- GREEN		
				segs(7) <= '0';
				segs(8) <= '1';
				segs(9) <= '0';
				segs(10) <= '0';
				segs(11) <= '0';
				segs(12) <= '0';
				segs(13) <= '0';
		
			when others => --DONT CARE
				segs(7) <= '1';
				segs(8) <= '1';
				segs(9) <= '1';
				segs(10) <= '1';
				segs(11) <= '1';
				segs(12) <= '1';
				segs(13) <= '1';
			end case;
			
			case NS_arrow is
			when '1' => -- ON
				segs(14) <= '1';
				segs(15) <= '1';
				segs(16) <= '1';
				segs(17) <= '1';
				segs(18) <= '0';
				segs(19) <= '0';
				segs(20) <= '0';
		
			when others => --OFF
				segs(14) <= '1';
				segs(15) <= '1';
				segs(16) <= '1';
				segs(17) <= '1';
				segs(18) <= '1';
				segs(19) <= '1';
				segs(20) <= '1';
			end case;
			
			case EW_arrow is
			when '1' => -- ON
				segs(21) <= '1';
				segs(22) <= '0';
				segs(23) <= '0';
				segs(24) <= '1';
				segs(25) <= '1';
				segs(26) <= '1';
				segs(27) <= '0';
		
			when others => --OFF
				segs(21) <= '1';
				segs(22) <= '1';
				segs(23) <= '1';
				segs(24) <= '1';
				segs(25) <= '1';
				segs(26) <= '1';
				segs(27) <= '1';
			end case;
			
	end process seven_seg;
end rtl;