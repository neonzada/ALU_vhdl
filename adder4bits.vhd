LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY adder4bits IS
	PORT(
		a, b: in std_logic_vector(3 downto 0);
		s, c_out: out std_logic_vector (3 downto 0);
		c4: out std_logic
		);
END adder4bits;

ARCHITECTURE arq_adder4bits OF adder4bits IS

SIGNAL c: std_logic_vector (2 downto 0);

COMPONENT halfadder
	PORT(
		a, b: in std_logic;
		s, c_out: out std_logic
		);
END COMPONENT;

COMPONENT fulladder
	PORT(
		a, b, c_in: in std_logic;
		s, c_out: out std_logic
		);
END COMPONENT;


BEGIN
	SOMA1: halfadder
		PORT MAP(a => a(0), b => b(0), s => s(0), c_out => c(0));
		
	SOMA2: fulladder
		PORT MAP(a => a(1), b => b(1), c_in => c(0), s => s(1), c_out => c(1));
		
	SOMA3: fulladder
		PORT MAP(a => a(2), b => b(2), c_in => c(1), s => s(2), c_out => c(2));
		
	SOMA4: fulladder
		PORT MAP(a => a(3), b => b(3), c_in => c(2), s => s(3), c_out => c4);

END arq_adder4bits;