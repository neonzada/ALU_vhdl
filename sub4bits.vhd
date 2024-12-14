LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY sub4bits IS
	PORT(
		a, b: in std_logic_vector(3 downto 0);
		c_in: in std_logic;
		s, c_out: out std_logic_vector(3 downto 0);
		c4: out std_logic
		);
END sub4bits;

ARCHITECTURE sub4bits_arch OF sub4bits IS

SIGNAL c: std_logic_vector(3 downto 0);

COMPONENT fulladder
	PORT(
		a, b, c_in: in std_logic;
		s, c_out: out std_logic
		);
END COMPONENT;

BEGIN
	SUB1: fulladder
		PORT MAP(a => a(0), b => not b(0), c_in => '1', s => s(0), c_out => c(1));
		
	SUB2: fulladder
		PORT MAP(a => a(1), b => not b(1), c_in => c(1), s => s(1), c_out => c(2));
		
	SUB3: fulladder
		PORT MAP(a => a(2), b => not b(2), c_in => c(2), s => s(2), c_out => c(3));
		
	SUB4: fulladder
		PORT MAP(a => a(3), b => not b(3), c_in => c(3), s => s(3), c_out => c4);

END sub4bits_arch;