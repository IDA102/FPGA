library verilog;
use verilog.vl_types.all;
entity all_uart is
    port(
        res             : in     vl_logic;
        RX              : in     vl_logic;
        clk             : in     vl_logic;
        CLS_WORD_IN     : in     vl_logic;
        TX              : out    vl_logic;
        CLK_50          : out    vl_logic;
        CLC_10          : out    vl_logic;
        PIN_LED         : out    vl_logic
    );
end all_uart;
