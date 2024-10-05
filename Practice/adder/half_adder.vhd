library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is 

	Port (
			a : in STD_LOGIC;
			b : in STD_LOGIC;
			sum_half : out STD_LOGIC;
			carry_half : inout STD_LOGIC
			
	);
end half_adder;

architecture Behavorial of half_adder is
	begin
		sum_half <= a XOR b;
		carry_half <= a AND b;
end Behavorial;