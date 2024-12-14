LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY andgate IS
PORT(
	a, b: in std_logic_vector (3 downto 0);
	output: out std_logic_vector (3 downto 0)
);
END andgate;

ARCHITECTURE andgate_arch OF andgate IS
BEGIN
	output(0) <= a(0) and b(0);
	output(1) <= a(1) and b(1);
	output(2) <= a(2) and b(2);
	output(3) <= a(3) and b(3);
END andgate_arch;