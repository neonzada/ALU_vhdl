LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY mux81 IS
PORT(
	a, b, c, d, e, f, g, h: in std_logic_vector (3 downto 0);
	sel: in std_logic_vector (2 downto 0);
	output: out std_logic_vector (3 downto 0)
	);
END mux81;

ARCHITECTURE mux81_arch OF mux81 IS
BEGIN
WITH sel SELECT output <=
	a WHEN "000",
	b WHEN "001",
	c WHEN "010",
	d WHEN "011",
	e WHEN "100",
	f WHEN "101",
	g WHEN "110",
	h WHEN OTHERS;
END mux81_arch;
