library verilog;
use verilog.vl_types.all;
entity sumsub_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sumsub_vlg_sample_tst;
