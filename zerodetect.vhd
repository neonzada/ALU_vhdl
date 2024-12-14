LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY zerodetect IS
PORT(
	a: in std_logic_vector (3 downto 0);
	output: out std_logic
);
END zerodetect;

ARCHITECTURE zerodetect_arch OF zerodetect IS
BEGIN
	output <= not (a(0) or a(1) or a(2) or a(3));
END zerodetect_arch;