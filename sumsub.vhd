LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY sumsub IS
PORT(
	a, b: in std_logic_vector (3 downto 0);
	sel: in std_logic;
	output: out std_logic_vector (3 downto 0)
	);
END sumsub;

ARCHITECTURE sumsub_arch OF sumsub IS

COMPONENT fulladder IS
PORT(
	a, b, c_in: in std_logic;
	s, c_out: out std_logic
	);
END COMPONENT;

SIGNAL c: std_logic_vector (3 downto 0);

BEGIN

F0 : fulladder PORT MAP(
	a => a(0),
	b => sel xor b(0),
	c_in => sel,
	s => output(0),
	c_out => c(0)
);

F1 : fulladder PORT MAP(
	a => a(1),
	b => sel xor b(1),
	c_in => c(0),
	s => output(1),
	c_out => c(1)	
);

F2 : fulladder PORT MAP(
	a => a(2),
	b => sel xor b(2),
	c_in => c(1),
	s => output(2),
	c_out => c(2)	
);

F3 : fulladder PORT MAP(
	a => a(3),
	b => sel xor b(3),
	c_in => c(2),
	s => output(3),
	c_out => c(3)
);

END sumsub_arch;