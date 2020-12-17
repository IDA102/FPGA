library verilog;
use verilog.vl_types.all;
entity COUNTER_LPM_vlg_check_tst is
    port(
        \OUT\           : in     vl_logic_vector(4 downto 0);
        OUT_AND         : in     vl_logic;
        TR              : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end COUNTER_LPM_vlg_check_tst;
