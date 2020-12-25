library verilog;
use verilog.vl_types.all;
entity MAGIC_BOX is
    port(
        CLS             : in     vl_logic;
        AM              : in     vl_logic;
        SET             : in     vl_logic_vector(4 downto 0);
        OUT_AND         : out    vl_logic;
        AM_OUTPUT       : out    vl_logic;
        \OUT\           : out    vl_logic_vector(4 downto 0);
        TR              : out    vl_logic_vector(4 downto 0)
    );
end MAGIC_BOX;
