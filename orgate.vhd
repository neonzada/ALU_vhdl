LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY orgate IS
PORT(
	a, b: in std_logic_vector (3 downto 0);
	output: out std_logic_vector (3 downto 0)
);
END orgate;

ARCHITECTURE orgate_arch OF orgate IS
BEGIN
	output(0) <= a(0) or b(0);
	output(1) <= a(1) or b(1);
	output(2) <= a(2) or b(2);
	output(3) <= a(3) or b(3);
END orgate_arch;