library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity adder is 

	Port (
			a : in STD_LOGIC;
			b : in STD_LOGIC;
			cin : in STD_LOGIC;
			sum : out STD_LOGIC;
			cout : out STD_LOGIC
			
	);
end adder;
