LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ULAcompleta IS
PORT(
	a, b: in std_logic_vector (3 downto 0);
	sel: in std_logic_vector (2 downto 0);
	c, v, z, n: out std_logic;
	disp1, disp2: out std_logic_vector (6 downto 0);
	outwave: out std_logic_vector (3 downto 0)
);
END ULAcompleta;

ARCHITECTURE ULAcompleta_arch OF ULAcompleta IS

-- Components

COMPONENT sumsub IS
PORT(
	a, b: in std_logic_vector (3 downto 0);
	sel: in std_logic;
	output: out std_logic_vector (3 downto 0)
);
END COMPONENT;

COMPONENT shifter IS
PORT(
	a: in std_logic_vector (3 downto 0);
	shift: in std_logic;
	output: out std_logic_vector (3 downto 0)
);
END COMPONENT;

COMPONENT andgate IS
PORT(
	a, b: in std_logic_vector (3 downto 0);
	output: out std_logic_vector (3 downto 0)
);
END COMPONENT;

COMPONENT orgate IS
PORT(
	a, b: in std_logic_vector (3 downto 0);
	output: out std_logic_vector (3 downto 0)
);
END COMPONENT;

COMPONENT notgate IS
PORT(
	a: in std_logic_vector (3 downto 0);
	output: out std_logic_vector (3 downto 0)
);
END COMPONENT;

COMPONENT mux81 IS
PORT(
	a, b, c, d, e, f, g, h: in std_logic_vector (3 downto 0);
	sel: in std_logic_vector (2 downto 0);
	output: out std_logic_vector (3 downto 0)
);
END COMPONENT;

COMPONENT zerodetect IS
PORT(
	a: in std_logic_vector (3 downto 0);
	output: out std_logic
);
END COMPONENT;

COMPONENT decoder IS
PORT(
	a: in std_logic_vector (3 downto 0);
	output1: out std_logic_vector (6 downto 0);
	output2: out std_logic_vector (6 downto 0)
);
END COMPONENT;

SIGNAL outsum, outshift, outand, outor, outnot, outmux: std_logic_vector (3 downto 0);

BEGIN

-- Port mapping the components
M0 : sumsub PORT MAP(
	a => a,
	b => b,
	sel => sel(0),
	output => outsum
);

M1 : shifter PORT MAP(
	a => a,
	shift => sel(0),
	output => outshift
);

M2: andgate PORT MAP(
	a => a,
	b => b,
	output => outand
);

M3: orgate PORT MAP(
	a => a,
	b => b,
	output => outor
);

M4: notgate PORT MAP(
	a => a,
	output => outnot
);

M5: mux81 PORT MAP(
	a => outsum,
	b => outsum,
	c => outshift,
	d => outshift,
	e => outand,
	f => outor,
	g => outnot,
	h => "0000",
	sel => sel,
	output => outmux
);

-- Zero detect
M6: zerodetect PORT MAP(
	a => outmux,
	output => z
);

-- Negative flag
n <= outmux(3);

-- Decoder
M7: decoder PORT MAP(
	a => outmux,
	output1 => disp1,
	output2 => disp2
);

-- Waveform output
outwave <= outmux;

END ULAcompleta_arch;