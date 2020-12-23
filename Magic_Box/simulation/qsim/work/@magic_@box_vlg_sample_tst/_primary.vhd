library verilog;
use verilog.vl_types.all;
entity Magic_Box_vlg_sample_tst is
    port(
        AM              : in     vl_logic;
        CLS             : in     vl_logic;
        PC              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Magic_Box_vlg_sample_tst;
