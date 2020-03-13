// UART ver. 1.0 FPGA CYCLONE IV EP4CE115F29C7 
//Приёмник//Receiver

module UART_receiver
(
input clc,
input res,
input RX,
output reg [7:0] word
);

reg [5:0] i;
int PRIZNAC;

always @(posedge clc or negedge res)
	begin
		if (!res) 
			begin
				i		   = 0;
				word 	   = 0;
			end
		else 
			begin
				if (RX == 0)
					PRIZNAC = 1;	
				if (PRIZNAC == 1)
					begin
						word[i] = RX;
						i = i + 1;
							if (i == 10)
								begin
									PRIZNAC = 0;
									i <= 0;	
								end									
					end
			end		
	end
endmodule