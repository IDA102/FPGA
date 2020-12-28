library verilog;
use verilog.vl_types.all;
entity UART_transmitter is
    port(
        clc             : in     vl_logic;
        res             : in     vl_logic;
        word_transmitter: in     vl_logic_vector(7 downto 0);
        TRANSMITTER_PRIZNAK: in     vl_logic;
        TX              : out    vl_logic;
        priznak_end_transmitter: out    vl_logic
    );
end UART_transmitter;
