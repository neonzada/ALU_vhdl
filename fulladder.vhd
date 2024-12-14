LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY fulladder IS
	PORT(
		a, b, c_in: in std_logic;
		s, c_out: out std_logic
		);
END fulladder;

ARCHITECTURE arq_fulladder OF fulladder IS
BEGIN
	s <= c_in xor a xor b;
	c_out <= (a and b) or (a and c_in) or (b and c_in);
END arq_fulladder;