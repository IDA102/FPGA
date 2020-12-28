library verilog;
use verilog.vl_types.all;
entity DEL is
    port(
        clk             : in     vl_logic;
        res             : in     vl_logic;
        RX              : in     vl_logic;
        ENABLE          : in     vl_logic;
        priznak_end_transmitter: in     vl_logic;
        CONECT_PRIZNAC  : out    vl_logic;
        word_receiver   : out    vl_logic_vector(7 downto 0)
    );
end DEL;
