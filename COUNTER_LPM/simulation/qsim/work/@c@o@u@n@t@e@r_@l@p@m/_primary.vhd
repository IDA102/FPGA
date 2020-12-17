library verilog;
use verilog.vl_types.all;
entity COUNTER_LPM is
    port(
        OUT_AND         : out    vl_logic;
        \OUT\           : out    vl_logic_vector(4 downto 0);
        CLS             : in     vl_logic;
        CLC             : in     vl_logic;
        TR              : out    vl_logic_vector(4 downto 0);
        SET             : in     vl_logic_vector(4 downto 0)
    );
end COUNTER_LPM;
