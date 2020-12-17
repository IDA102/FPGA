library verilog;
use verilog.vl_types.all;
entity COUNTER_LPM_vlg_sample_tst is
    port(
        CLC             : in     vl_logic;
        CLS             : in     vl_logic;
        SET             : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end COUNTER_LPM_vlg_sample_tst;
