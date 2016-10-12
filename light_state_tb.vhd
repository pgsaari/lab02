LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity light_state_tb is
end entity light_state_tb;

architecture stimulus of light_state_tb is

constant  WIDE:positive := 4;

-- Declare components --
    component light_state is 
        port(
		    EW_left_bit, NS_left_bit, night: in std_logic;
		    count1_term, count2_term, count3_term: in std_logic;
		    count1_en, count2_en, count3_en: out std_logic;
		    NS_light, EW_light: out std_logic_vector(1 downto 0); -- green yellow red
		    NS_arrow, EW_arrow: out std_logic; -- arrow on or off
		    state_out: out std_logic_vector(3 downto 0)
        ); 
    end component light_state;

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
    end component gen_counter;

    -- clk for test
    signal clk: std_logic;

    -- signals for the state machine
    signal EW_left_bit, NS_left_bit, night: std_logic;
    signal count1_term, count2_term, count3_term: std_logic;
    signal count1_en, count2_en, count3_en: std_logic;
    signal NS_light, EW_light: std_logic_vector(1 downto 0);
    signal NS_arrow, EW_arrow: std_logic;
    signal state_out: std_logic_vector(3 downto 0);

    -- signals for counters
    signal count_out1: std_logic_vector(WIDE-1 downto 0);
    signal count_out2: std_logic_vector(WIDE-1 downto 0);
    signal count_out3: std_logic_vector(WIDE-1 downto 0);
    signal reset1, reset2, reset3: std_logic;

begin

    -- DUT the state machine
    light_state1: light_state
        port map(
            EW_left_bit => EW_left_bit, NS_left_bit => NS_left_bit,
            night => night, 
            count1_term => count1_term, count2_term => count2_term, count3_term => count3_term,
            count1_en => count1_en, count2_en => count2_en, count3_en => count3_en,
            NS_light => NS_light, EW_light => EW_light,
            NS_arrow => NS_arrow, EW_arrow => EW_arrow,
            state_out => state_out
        );

    count1: gen_counter
        generic map(
            wide => WIDE,
            max => 1
        ) 
        port map(
            clk => clk,
            data => "0000",
            load => '0',
            enable => count1_en,
            reset => reset1,
            count => count_out1,
            term => count1_term
        );

        count2: gen_counter
        generic map(
            wide => WIDE,
            max => 2
        ) 
        port map(
            clk => clk,
            data => "0000",
            load => '0',
            enable => count2_en,
            reset => reset2,
            count => count_out2,
            term => count2_term
        );

        count3: gen_counter
        generic map(
            wide => WIDE,
            max => 3
        ) 
        port map(
            clk => clk,
            data => "0000",
            load => '0',
            enable => count3_en,
            reset => reset3,
            count => count_out3,
            term => count3_term
        );

        -- Process to create clock signal
	    clk_proc: process
    	begin
		    clk <= '0';
		    wait for 10 NS;
		    clk <= '1';
		    wait for 10 NS;
	    end process clk_proc;

        vectors: process begin

        reset1 <='1';
        reset2 <='1';
        reset3 <= '1';
        wait for 100 NS;

        reset1 <='0';
        reset2 <='0';
        reset3 <= '0';
        wait for 100 NS;

		report "End of simulation"
		severity FAILURE;

        end process;


    
    

end architecture stimulus;