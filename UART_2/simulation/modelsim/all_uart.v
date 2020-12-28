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
// CREATED		"Mon Dec 28 17:44:12 2020"

module all_uart(
	res,
	RX,
	clk,
	CLS_WORD_IN,
	TX,
	CLK_50,
	CLC_10,
	PIN_LED
);


input wire	res;
input wire	RX;
input wire	clk;
input wire	CLS_WORD_IN;
output wire	TX;
output wire	CLK_50;
output wire	CLC_10;
output wire	PIN_LED;

wire	[7:0] word_receiver;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_6;
wire	[7:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_10;

assign	CLK_50 = SYNTHESIZED_WIRE_1;
assign	CLC_10 = SYNTHESIZED_WIRE_13;




altpll0	b2v_inst(
	.inclk0(clk),
	.areset(SYNTHESIZED_WIRE_0),
	.c0(SYNTHESIZED_WIRE_1),
	.c1(SYNTHESIZED_WIRE_13));

assign	SYNTHESIZED_WIRE_0 =  ~res;


DEL	b2v_inst10(
	.clk(SYNTHESIZED_WIRE_1),
	.res(res),
	.RX(SYNTHESIZED_WIRE_2),
	.ENABLE(SYNTHESIZED_WIRE_3),
	.CLS_WORD(CLS_WORD_IN),
	.priznak_end_transmitter(SYNTHESIZED_WIRE_12),
	.CONECT_PRIZNAC(SYNTHESIZED_WIRE_10),
	.word_receiver(word_receiver));

assign	SYNTHESIZED_WIRE_2 =  ~RX;


UART_transmitter	b2v_inst3(
	.clc(SYNTHESIZED_WIRE_13),
	.res(res),
	.TRANSMITTER_PRIZNAK(SYNTHESIZED_WIRE_6),
	.word_transmitter(SYNTHESIZED_WIRE_7),
	.TX(SYNTHESIZED_WIRE_8),
	.priznak_end_transmitter(SYNTHESIZED_WIRE_12));

assign	TX =  ~SYNTHESIZED_WIRE_8;


CONECT	b2v_inst5(
	.clc(SYNTHESIZED_WIRE_13),
	.res(res),
	.CONECT_PRIZNAC(SYNTHESIZED_WIRE_10),
	.priznak_end_transmitter(SYNTHESIZED_WIRE_12),
	.word_receiver(word_receiver),
	.ENABLE(SYNTHESIZED_WIRE_3),
	.TRANSMITTER_PRIZNAK(SYNTHESIZED_WIRE_6),
	.word_transmitter(SYNTHESIZED_WIRE_7));

assign	PIN_LED = word_receiver[0] | word_receiver[2] | word_receiver[1] | word_receiver[3] | word_receiver[5] | word_receiver[4] | word_receiver[6] | word_receiver[7];


endmodule
