// UART ver. 1.0 FPGA CYCLONE IV EP4CE115F29C7 
//Блок_сопряжения//CONECT
module CONECT
(
input clc,
input res,
input CONECT_PRIZNAC,
input reg priznak_end_transmitter,
input reg [7:0] word_receiver,
output reg ENABLE,
output reg [7:0] word_transmitter,
output reg TRANSMITTER_PRIZNAK
);

always @(posedge clc or negedge res)
	begin
		if (!res) 
			begin
				ENABLE			    = 1;
				word_transmitter    = 0;
				TRANSMITTER_PRIZNAK = 0;  
			end
		else 
			begin
				if (CONECT_PRIZNAC == 1)
					begin
						
						ENABLE = 0;
						TRANSMITTER_PRIZNAK = 1;
						word_transmitter = word_receiver;
					end
				if (priznak_end_transmitter == 1)
					begin
						TRANSMITTER_PRIZNAK = 0;
						ENABLE = 1;
					end
			end
	end
endmodule

