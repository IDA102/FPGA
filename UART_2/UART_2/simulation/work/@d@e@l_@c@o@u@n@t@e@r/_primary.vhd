library verilog;
use verilog.vl_types.all;
entity DEL_COUNTER is
    port(
        clk             : in     vl_logic;
        res             : in     vl_logic;
        clc             : out    vl_logic
    );
end DEL_COUNTER;
