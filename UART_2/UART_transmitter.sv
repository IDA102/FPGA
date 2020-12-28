// UART ver. 1.0 FPGA CYCLONE IV EP4CE115F29C7 
//Передатчик//Transmitter
module UART_transmitter
(
input clc,
input res,
input reg [7:0] word_transmitter,
input reg TRANSMITTER_PRIZNAK,
output reg TX,
output reg priznak_end_transmitter
);

reg PRIZNAK;
reg [5:0] k;
reg [9:0] TX_MESSAGE;
reg out;

always @(posedge clc or negedge res)
	begin
		if (!res) 
			begin
				out						= 0;
				k		   		 		= 0;
				TX		   		 		= 1;
				TX_MESSAGE 		 		= 255;
				PRIZNAK					= 0;
				priznak_end_transmitter = 0;
			end
		else 
			begin
				if (TRANSMITTER_PRIZNAK == 1)
					begin
						PRIZNAK = 1;
							if (PRIZNAK == 1)
								begin
									TX_MESSAGE[0] = 0;
									TX_MESSAGE[9] = 1;
									TX_MESSAGE[8:1] = word_transmitter[7:0];
									out = 1; 
										 if (out == 1)
											begin
												TX = TX_MESSAGE[k];
												k = k + 1;
													if (k == 10)
														begin
															out = 0;
															priznak_end_transmitter = 1;
															
															TX_MESSAGE = 255;
															PRIZNAK = 0;
															TX = 1;
															
														end		
													if (k == 11)
														begin
															out = 0;
															TX_MESSAGE = 255;
															k = 0;	
															PRIZNAK = 0;
															TX = 1;
															priznak_end_transmitter = 1;
														end				
											end
								end
					end
				else 
					begin
						PRIZNAK = 0;
						priznak_end_transmitter = 0;
					end
			end
	end
endmodule

