library verilog;
use verilog.vl_types.all;
entity ULAcompleta_vlg_check_tst is
    port(
        c               : in     vl_logic;
        disp            : in     vl_logic_vector(13 downto 0);
        n               : in     vl_logic;
        outwave         : in     vl_logic_vector(3 downto 0);
        v               : in     vl_logic;
        z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ULAcompleta_vlg_check_tst;
