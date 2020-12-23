library verilog;
use verilog.vl_types.all;
entity Magic_Box_vlg_check_tst is
    port(
        CLS_SIGNAL      : in     vl_logic;
        D_trigger       : in     vl_logic;
        OUTPUT          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Magic_Box_vlg_check_tst;
