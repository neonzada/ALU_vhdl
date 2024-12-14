library verilog;
use verilog.vl_types.all;
entity ULAcompleta is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        c               : out    vl_logic;
        v               : out    vl_logic;
        z               : out    vl_logic;
        n               : out    vl_logic;
        disp            : out    vl_logic_vector(13 downto 0);
        outwave         : out    vl_logic_vector(3 downto 0)
    );
end ULAcompleta;
