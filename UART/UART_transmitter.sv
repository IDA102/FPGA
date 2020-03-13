// UART ver. 1.0 FPGA CYCLONE IV EP4CE115F29C7 
//Передатчик//Transmitter
module UART_transmitter
(
input clc,
input res,
input reg [7:0] MESSAGE,
input reg TRANSMITTER_PRIZNAK,
output reg TX,
output priznak_end_transmitter
);

int PRIZNAK;
reg [5:0] k;
reg [9:0] TX_MESSAGE;

always @(posedge clc or negedge res)
	begin
		if (!res) 
			begin
				k		   = 0;
				TX		   = 1;
				TX_MESSAGE = 1;
			end
		else 
			begin
				if (TRANSMITTER_PRIZNAK == 1)
					PRIZNAK = 1;
				if (PRIZNAK == 1)
					begin
						TX_MESSAGE[9] = 0;
						TX_MESSAGE[8:1] = MESSAGE[7:0];
						if (TX_MESSAGE != 1)
							begin
								TX = TX_MESSAGE[k];
								k = k + 1;
									if (k == 10)
										begin
											k <= 0;	
											TX_MESSAGE = 1;
											PRIZNAK = 0;
											TX = 1;
											priznak_end_transmitter = 1'
										end		
							end
					end
			end
	end
endmodule

