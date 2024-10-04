library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clockPractice_tb is
end clockPractice_tb;

architecture Behavioral of clockPractice_tb is
--signals to connect test
	signal clk : std_logic :='0';
	signal reset : std_logic := '0';
	signal counter_out : std_logic_vector(7 downto 0);

-- Clock generation process (50 MHz clock)
    constant clk_period : time := 20 ns; -- 50 MHz clock
begin
    -- Instantiate the DUT (Design Under Test)
    uut: entity work.clockPractice
        port map(
            clk => clk,
            reset => reset,
            counter_out => counter_out
        );
    
    -- Clock process to generate the clock signal
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process to drive the reset signal
    stimulus: process
    begin
        -- Apply reset for 100 ns
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        
        -- Run the simulation for 1000 ns after reset
        wait for 1000 ns;
        
        -- End simulation
        wait;
    end process;
end Behavioral;