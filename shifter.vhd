LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY shifter IS
PORT(
	a: in std_logic_vector (3 downto 0);
	shift: in std_logic;
	output: out std_logic_vector (3 downto 0)
);
END shifter;

ARCHITECTURE shifter_arch OF shifter IS
SIGNAL c: std_logic_vector (3 downto 0);
COMPONENT mux IS
PORT(
	a, b, sel: in std_logic;
	output: out std_logic
);
END COMPONENT;

BEGIN
-- Shift left
	Ml0: mux
		PORT MAP(a => a(0), sel => not shift, output => c(0), b => '0');
		
	Ml1: mux
		PORT MAP(a => a(1), sel => not shift, output => c(1), b => a(0));
		
	Ml2: mux
		PORT MAP(a => a(2), sel => not shift, output => c(2), b => a(1));
		
	Ml3: mux
		PORT MAP(a => a(3), sel => not shift, output => c(3), b => a(2));

-- Shift right
	Mr0: mux
		PORT MAP(a => c(1), sel => not shift, output => output(0), b => c(0));
		
	Mr1: mux
		PORT MAP(a => c(2), sel => not shift, output => output(1), b => c(1));
		
	Mr2: mux
		PORT MAP(a => c(3), sel => not shift, output => output(2), b => c(2));
		
	Mr3: mux
		PORT MAP(a => '0', sel => not shift, output => output(3), b => c(3));		

END shifter_arch;