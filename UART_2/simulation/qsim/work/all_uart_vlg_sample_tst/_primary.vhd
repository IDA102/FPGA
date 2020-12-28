library verilog;
use verilog.vl_types.all;
entity all_uart_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        CLS_WORD_IN     : in     vl_logic;
        res             : in     vl_logic;
        RX              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end all_uart_vlg_sample_tst;
