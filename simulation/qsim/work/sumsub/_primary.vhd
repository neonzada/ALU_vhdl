library verilog;
use verilog.vl_types.all;
entity sumsub is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic;
        output          : out    vl_logic_vector(3 downto 0)
    );
end sumsub;
