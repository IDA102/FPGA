// UART ver. 1.0 FPGA CYCLONE IV EP4CE115F29C7 
//Приёмник
//Передатчик//Receiver
module UART
(
input clc,
input res,
input RX,
output reg TX
);

reg [5:0] i;
reg [5:0] k;
reg [10:0] TX_MESSAGE;//Receiver_message
reg [9:0] word;
int PRIZNAC;
reg CTRL;
int TESTED_PRIZNAK;///////////////////////////

always @(posedge clc or negedge res)
	begin
		if (!res) 
			begin
				k		   = 0;
				i		   = 0;
				TX		   = 1;
				TX		   = 1;
				word 	   = 0;
				CTRL 	   = 0;
				TX_MESSAGE = 1;
				TESTED_PRIZNAK = 0;/////////////////////
			end
		else 
			begin
				if (RX == 0)
					begin
						PRIZNAC = 1;
					end	
				 if (PRIZNAC == 1)
					 begin
						word[i] = RX;
						CTRL = word[i];
						i = i + 1;
							if (i == 10)
								begin
									PRIZNAC = 0;
									i <= 0;	
									TESTED_PRIZNAK = 1;//////////////////////////
								end									
					 end
				if (TESTED_PRIZNAK == 1)
					begin
						TX_MESSAGE[10] = 0;
						TX_MESSAGE[9:0] = word[9:0];
						if (TX_MESSAGE != 1)
							begin
								TX = TX_MESSAGE[k];
								k = k + 1;
									if (k == 10)
										begin
											k <= 0;	
											TX_MESSAGE = 1;
											TESTED_PRIZNAK = 0;
											TX = 1;
										end		
							end
					end
			end
	end
endmodule

