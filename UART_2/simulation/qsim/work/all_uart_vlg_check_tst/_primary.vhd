library verilog;
use verilog.vl_types.all;
entity all_uart_vlg_check_tst is
    port(
        CLC_10          : in     vl_logic;
        CLK_50          : in     vl_logic;
        PIN_LED         : in     vl_logic;
        TX              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end all_uart_vlg_check_tst;
