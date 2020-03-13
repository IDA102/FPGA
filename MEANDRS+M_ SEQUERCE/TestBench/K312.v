// Copyright (C) 2016  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Intel and sold by Intel or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"
// CREATED		"Mon Mar 13 20:23:19 2017"

module K312(
	M50,
	Vozb1,
	Vozb2,
	U2Psi,
	U1Psi,
	U2Theta,
	U1Theta,
	mux1,
	mux2,
	mux3,
	mux4,
	Sinc
);


input wire	M50;
output reg	Vozb1;
output reg	Vozb2;
output reg	U2Psi;
output reg	U1Psi;
output reg	U2Theta;
output reg	U1Theta;
output wire	mux1;
output wire	mux2;
output wire	mux3;
output wire	mux4;
output wire	[5:0] Sinc;

wire	[8:0] q;
wire	[5:0] S;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_49;
wire	[3:0] SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	[3:0] SYNTHESIZED_WIRE_17;
wire	[3:0] SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_48;

assign	mux1 = SYNTHESIZED_WIRE_5;
assign	mux2 = SYNTHESIZED_WIRE_8;
assign	mux3 = SYNTHESIZED_WIRE_6;
assign	mux4 = SYNTHESIZED_WIRE_12;
assign	SYNTHESIZED_WIRE_53 = 1;
assign	SYNTHESIZED_WIRE_21 = 0;
assign	SYNTHESIZED_WIRE_22 = 1;




lpm_counter_0	b2v_inst(
	.clock(q[7]),
	.q(S));

assign	SYNTHESIZED_WIRE_51 = S[4] ^ S[5];


always@(posedge q[7])
begin
	begin
	Vozb2 <= SYNTHESIZED_WIRE_0;
	end
end


lpm_counter_1	b2v_inst11(
	.clock(SYNTHESIZED_WIRE_1),
	.q(q));



lpm_add_sub_2	b2v_inst14(
	
	
	
	
	
	.dataa(S[3:0]),
	.datab(SYNTHESIZED_WIRE_49),
	.cout(SYNTHESIZED_WIRE_5)
	
	);


lpm_add_sub_3	b2v_inst15(
	
	
	
	
	
	.dataa(S[3:0]),
	.datab(SYNTHESIZED_WIRE_50),
	.cout(SYNTHESIZED_WIRE_8)
	
	);


altclk	b2v_inst16(
	.inclk0(M50),
	.c0(SYNTHESIZED_WIRE_1));

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_13 = S[4] & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_7 & SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_46 = SYNTHESIZED_WIRE_51 & SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_53;

assign	SYNTHESIZED_WIRE_15 = S[4] & SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_56 = SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_57 = SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_4 =  ~S[4];


lpm_add_sub_4	b2v_inst24(
	
	
	
	
	
	.dataa(SYNTHESIZED_WIRE_17),
	.datab(SYNTHESIZED_WIRE_49),
	.cout(SYNTHESIZED_WIRE_6)
	
	);


lpm_add_sub_5	b2v_inst25(
	
	
	
	
	
	.dataa(SYNTHESIZED_WIRE_19),
	.datab(SYNTHESIZED_WIRE_50),
	.cout(SYNTHESIZED_WIRE_12)
	
	);

assign	SYNTHESIZED_WIRE_7 =  ~S[4];

assign	SYNTHESIZED_WIRE_54 = S[5] ^ SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_55 = S[5] ^ SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_26 =  ~SYNTHESIZED_WIRE_54;


assign	SYNTHESIZED_WIRE_32 =  ~SYNTHESIZED_WIRE_55;

assign	SYNTHESIZED_WIRE_41 =  ~S[4];

assign	SYNTHESIZED_WIRE_37 = ~(SYNTHESIZED_WIRE_56 & SYNTHESIZED_WIRE_26 & SYNTHESIZED_WIRE_53);

assign	SYNTHESIZED_WIRE_38 = ~(SYNTHESIZED_WIRE_56 & SYNTHESIZED_WIRE_54 & SYNTHESIZED_WIRE_53);

assign	SYNTHESIZED_WIRE_39 = ~(SYNTHESIZED_WIRE_57 & SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_53);

assign	SYNTHESIZED_WIRE_40 = ~(SYNTHESIZED_WIRE_57 & SYNTHESIZED_WIRE_55 & SYNTHESIZED_WIRE_53);


always@(posedge q[1])
begin
	begin
	U2Psi <= SYNTHESIZED_WIRE_37;
	end
end


always@(posedge q[1])
begin
	begin
	U1Psi <= SYNTHESIZED_WIRE_38;
	end
end


always@(posedge q[1])
begin
	begin
	U2Theta <= SYNTHESIZED_WIRE_39;
	end
end


always@(posedge q[1])
begin
	begin
	U1Theta <= SYNTHESIZED_WIRE_40;
	end
end

assign	SYNTHESIZED_WIRE_52 = ~(SYNTHESIZED_WIRE_41 & S[2] & S[3]);



lpm_constant_6	b2v_inst42(
	.result(SYNTHESIZED_WIRE_49));


lpm_constant_7	b2v_inst43(
	.result(SYNTHESIZED_WIRE_50));

assign	SYNTHESIZED_WIRE_17 =  ~S[3:0];

assign	SYNTHESIZED_WIRE_19 =  ~S[3:0];

assign	SYNTHESIZED_WIRE_43 =  ~SYNTHESIZED_WIRE_51;

assign	SYNTHESIZED_WIRE_47 = SYNTHESIZED_WIRE_43 & SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_53;

assign	SYNTHESIZED_WIRE_48 =  ~SYNTHESIZED_WIRE_46;

assign	SYNTHESIZED_WIRE_0 =  ~SYNTHESIZED_WIRE_47;


always@(posedge q[1])
begin
	begin
	Vozb1 <= SYNTHESIZED_WIRE_48;
	end
end

assign	Sinc = S;

endmodule


