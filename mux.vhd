LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY mux IS
PORT(
	a, b, sel: in std_logic;
	output: out std_logic
);
END mux;

ARCHITECTURE mux_arch OF mux IS
BEGIN
WITH sel SELECT output <=
	a WHEN '0',
	b WHEN OTHERS;
END mux_arch;