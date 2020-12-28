// UART ver. 1.0 FPGA CYCLONE IV EP4CE115F29C7 
//TestBench UART
//

`timescale 10ns/1ns

module TB();
	reg CLS_WORD_IN;
	reg res; 
	reg RX;
	reg clk; 
	reg CLK_50;
	reg CLC_10;
	reg TX;
	reg PIN_LED;
	
  initial
  begin
    #0
		RX	 = 1;
		clk  = 1'b0;
		res  = 1'b0;
		CLS_WORD_IN = 1'b0;
    #1000
		res = 1'b1;
	#104167//HOLD
		RX = 1'b1;
	#104167//START
		RX = 1'b0;
	#104167//1
		RX = 1'b1;
	#104167//2
		RX = 1'b0;
	#104167//3
		RX = 1'b1;
	#104167//4
		RX = 1'b0;
    #104167//5
		RX = 1'b1;
	#104167//6
		RX = 1'b0;
	#104167//7
		RX = 1'b1;
	#104167//8
		RX = 1'b0;
	#104167//STOP
		RX = 1'b1;
		
	#200000//STOP
		CLS_WORD_IN = 1'b1;
	#250000//STOP
		CLS_WORD_IN = 1'b0;
		
	
	
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

all_uart all_uart_ex
( 
	.res(res),
	.RX(RX),
	.clk(clk),
	.CLS_WORD_IN(CLS_WORD_IN),
	.TX(TX),
	.CLK_50(CLK_50),
	.CLC_10(CLC_10),
	.PIN_LED(PIN_LED)
);

endmodule