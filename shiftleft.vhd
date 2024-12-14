LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY shiftleft IS
	PORT(
		a: in std_logic_vector(3 downto 0);
		shift, input: in std_logic;
		s: out std_logic_vector(3 downto 0)
		);
END shiftleft;

ARCHITECTURE shiftleft_arch OF shiftleft IS
	
COMPONENT muxsimples
	PORT(
		a, b, sel: in std_logic;
		s: out std_logic
		);
END COMPONENT;
	
	BEGIN
	muxs1: mux
		PORT MAP(a => input, sel => shift, s => s(0), b => a(0));
		
	muxs2: mux
		PORT MAP(a => a(0), sel => shift, s => s(1), b => a(1));
		
	muxs3: mux
		PORT MAP(a => a(1), sel => shift, s => s(2), b => a(2));
		
	muxs4: mux
		PORT MAP(a => a(2), sel => shift, s => s(3), b => a(3));

	
END shiftleft_arch;