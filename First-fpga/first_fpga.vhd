library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity first_fpga is --Entity defines input, output signals of design

	Port (
			clk : in STD_LOGIC; --clock input
			reset : in STD_LOGIC;
			counter_out : out STD_LOGIC_VECTOR (7 downto 0) --8 bit output
			);
end first_fpga;

--architecture is like function; Internal behavioural of design
architecture Behavioral of  first_fpga is
		signal counter : STD_LOGIC_VECTOR (7 downto 0) := (others => '0'); --8 bit counter
begin --block for clock and resetting
	process(clk, reset)
	begin
		if reset = '1' then 
			counter <= (others => '0'); --reset to zero when reset is high (active)
		elsif rising_edge(clk) then
			counter <= counter + 1; --increment based on rising clock edge
		end if; --ends the if branch opened earlier 
		
	end process; --self explanatory, is like return 0
	
	counter_out <= counter; --outputs the current counter to the counter_out signal
end Behavioral;
	