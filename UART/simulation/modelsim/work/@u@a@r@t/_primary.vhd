library verilog;
use verilog.vl_types.all;
entity UART is
    port(
        clc             : in     vl_logic;
        res             : in     vl_logic;
        RX              : in     vl_logic;
        TX              : out    vl_logic
    );
end UART;
