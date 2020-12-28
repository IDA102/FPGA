// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 32-bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1.02,1.10 SJ Full Version"
// CREATED		"Tue Nov 13 14:02:50 2018"

module all_uart(
	res,
	RX,
	clk,
	clc,
	TX,
	CLK_50,
	CLC_10
);


input wire	res;
input wire	RX;
input wire	clk;
input wire	clc;
output wire	TX;
output wire	CLK_50;
output wire	CLC_10;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	[7:0] SYNTHESIZED_WIRE_6;

assign	CLK_50 = clk;
assign	CLC_10 = clc;




DEL	b2v_inst1(
	.clk(clk),
	.res(res),
	.RX(RX),
	.ENABLE(SYNTHESIZED_WIRE_0),
	.priznak_end_transmitter(SYNTHESIZED_WIRE_7),
	.CONECT_PRIZNAC(SYNTHESIZED_WIRE_2),
	.word_receiver(SYNTHESIZED_WIRE_4));


CONECT	b2v_inst2(
	.clc(clc),
	.res(res),
	.CONECT_PRIZNAC(SYNTHESIZED_WIRE_2),
	.priznak_end_transmitter(SYNTHESIZED_WIRE_7),
	.word_receiver(SYNTHESIZED_WIRE_4),
	.ENABLE(SYNTHESIZED_WIRE_0),
	
	.TRANSMITTER_PRIZNAK(SYNTHESIZED_WIRE_5),
	.word_transmitter(SYNTHESIZED_WIRE_6));


UART_transmitter	b2v_inst3(
	.clc(clc),
	.res(res),
	.TRANSMITTER_PRIZNAK(SYNTHESIZED_WIRE_5),
	.word_transmitter(SYNTHESIZED_WIRE_6),
	.TX(TX),
	.priznak_end_transmitter(SYNTHESIZED_WIRE_7));


endmodule
