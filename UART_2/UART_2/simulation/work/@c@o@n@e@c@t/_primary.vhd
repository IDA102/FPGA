library verilog;
use verilog.vl_types.all;
entity CONECT is
    port(
        clc             : in     vl_logic;
        res             : in     vl_logic;
        CONECT_PRIZNAC  : in     vl_logic;
        priznak_end_transmitter: in     vl_logic;
        word_receiver   : in     vl_logic_vector(7 downto 0);
        ENABLE          : out    vl_logic;
        word_transmitter: out    vl_logic_vector(7 downto 0);
        TRANSMITTER_PRIZNAK: out    vl_logic
    );
end CONECT;
