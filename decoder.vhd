LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY decoder IS
PORT(
	a: in std_logic_vector (3 downto 0);
	output1: out std_logic_vector (6 downto 0);
	output2: out std_logic_vector (6 downto 0)
);
END decoder;

ARCHITECTURE decoder_arch OF decoder IS

BEGIN
WITH a SELECT output1 <=
	"1111111" WHEN "0000", -- Positive integers (0,7)
	"1111111" WHEN "0001",
	"1111111" WHEN "0010",
	"1111111" WHEN "0011",
	"1111111" WHEN "0100",
	"1111111" WHEN "0101",
	"1111111" WHEN "0110",
	"1111111" WHEN "0111",
	"0111111" WHEN "1000", -- Negative integers (-8,0)
	"0111111" WHEN "1001",
	"0111111" WHEN "1010",
	"0111111" WHEN "1011",
	"0111111" WHEN "1100",
	"0111111" WHEN "1101",
	"0111111" WHEN "1110",
	"0111111" WHEN OTHERS;
	
WITH a SELECT output2 <=
	"1000000" WHEN "0000", -- Positive integers (0,7)
	"1111001" WHEN "0001",
	"0100100" WHEN "0010",
	"0110000" WHEN "0011",
	"0011001" WHEN "0100",
	"0010010" WHEN "0101",
	"0000010" WHEN "0110",
	"1111000" WHEN "0111",
	"0000000" WHEN "1000", -- Negative integers (-8,0)
	"1111000" WHEN "1001",
	"0000010" WHEN "1010",
	"0010010" WHEN "1011",
	"0011001" WHEN "1100",
	"0110000" WHEN "1101",
	"0100100" WHEN "1110",
	"1111001" WHEN OTHERS;
END decoder_arch;