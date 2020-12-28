// UART ver. 1.0 FPGA CYCLONE IV EP4CE115F29C7 
//TestBench UART
//

`timescale 1ns/100ps

module tb();
  
	reg clk; 
	reg clc; 
	reg res; 
	reg RX;
	reg CLS_WORD;
	reg [7:0] word_receiver;
	reg [7:0] word_transmitter;
	reg CONECT_PRIZNAC;
	
  initial
  begin
    #0
		RX	 = 1;
		clk  = 1'b0;
		res  = 1'b0;
		CLS_WORD = 1'b0;
    #100
		res = 1'b1;
	#100//HOLD
		RX = 1'b1;
	#100//START
		RX = 1'b0;
	#100//1
		RX = 1'b1;
	#100//2
		RX = 1'b0;
	#100//3
		RX = 1'b1;
	#100//4
		RX = 1'b0;
    #100//5
		RX = 1'b1;
	#100//6
		RX = 1'b0;
	#100//7
		RX = 1'b1;
	#100//8
		RX = 1'b0;
	#100//STOP
		RX = 1'b1;
		
	#500//STOP
		CLS_WORD = 1'b1;
	#100//STOP
		CLS_WORD = 1'b0;
		
	
	
	#10000//START
		RX = 1'b0;
	#100//1
		RX = 1'b1;
	#100//2
		RX = 1'b1;
	#100//3
		RX = 1'b1;
	#100//4
		RX = 1'b1;
    #100//5
		RX = 1'b1;
	#100//6
		RX = 1'b1;
	#100//7
		RX = 1'b1;
	#100//8
		RX = 1'b1;
	#100//STOP
		RX = 1'b1;
		

	#10000//START
		RX = 1'b0;
	#100//1
		RX = 1'b0;
	#100//2
		RX = 1'b0;
	#100//3
		RX = 1'b0;
	#100//4
		RX = 1'b0;
    #100//5
		RX = 1'b0;
	#100//6
		RX = 1'b0;
	#100//7
		RX = 1'b0;
	#100//8
		RX = 1'b0;
	#100//STOP
		RX = 1'b1;	
  end
  
      always #10 clk = ~clk;

CONECT conect
( 
	.clc(clc),
	.res(res),
	.CONECT_PRIZNAC(CONECT_PRIZNAC),
	.priznak_end_transmitter(priznak_end_transmitter),
	.word_receiver(word_receiver),
	.ENABLE(ENABLE),
	.word_transmitter(word_transmitter),
	.TRANSMITTER_PRIZNAK(TRANSMITTER_PRIZNAK)
);

 UART_transmitter  uart_transmitter 
( 
	.clc(clc),
	.res(res), 
	.word_transmitter(word_transmitter),
	.TRANSMITTER_PRIZNAK(TRANSMITTER_PRIZNAK),
	.TX(TX),
	.priznak_end_transmitter(priznak_end_transmitter)
);

 DEL  del 
( 
	.clk(clk),
	.res(res), 
	.RX(RX),
	.CLS_WORD(CLS_WORD),
	.ENABLE(ENABLE),
	.priznak_end_transmitter(priznak_end_transmitter),
	.CONECT_PRIZNAC(CONECT_PRIZNAC),
	.word_receiver(word_receiver)
);

 DEL_COUNTER del_counter 
( 
	.clk(clk),
	.res(res), 
	.clc(clc)
);

endmodule