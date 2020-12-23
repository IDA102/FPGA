library verilog;
use verilog.vl_types.all;
entity Magic_Box is
    port(
        OUTPUT          : out    vl_logic;
        AM              : in     vl_logic;
        CLS             : in     vl_logic;
        PC              : in     vl_logic;
        D_trigger       : out    vl_logic;
        CLS_SIGNAL      : out    vl_logic
    );
end Magic_Box;
