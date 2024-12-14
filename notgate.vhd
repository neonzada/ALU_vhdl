LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY notgate IS
PORT(
	a: in std_logic_vector (3 downto 0);
	output: out std_logic_vector (3 downto 0)
);
END notgate;

ARCHITECTURE notgate_arch OF notgate IS
BEGIN
	output(0) <= not a(0);
	output(1) <= not a(1);
	output(2) <= not a(2);
	output(3) <= not a(3);
END notgate_arch;