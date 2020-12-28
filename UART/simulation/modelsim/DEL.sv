// IMPULS ver. 1.0 FPGA CYCLONE IV EP4CE115F29C7 
// UART ver. 1.0 FPGA CYCLONE IV EP4CE115F29C7 
//Приёмник//Receiver
 
module DEL
(
	input clk,
	input res,
	input RX,
	input ENABLE,
	input priznak_end_transmitter,
	output reg CONECT_PRIZNAC,
	output reg[7:0] word_receiver	
);

int		   PRIZNAC_FORM;
int 	   PRIZNAC;
int		   SUMM;
reg [44:0] BUFF;
reg [5:0]  i;
reg	[5:0]  k;
reg	[5:0]  j;


always @(posedge clk or negedge res)
	begin
		if (!res) 
			begin
				i			 	   = 0;
				j			 	   = 5;
				k			 	   = 0;
				SUMM		 	   = 0;
				BUFF 		 	   = 0;
				PRIZNAC 	       = 0;
				word_receiver      = 0;
				PRIZNAC_FORM 	   = 0;
				CONECT_PRIZNAC 	   = 0;
			end
		else 
			begin				
				if (ENABLE == 1)
					begin
						if (RX == 0)
							PRIZNAC = 1;	
						if (PRIZNAC == 1)
							begin
								BUFF[i] = RX;
								i = i + 1;
									if (i == 45)
										begin
											CONECT_PRIZNAC = 1;
											PRIZNAC = 0;
											i = 0;
											PRIZNAC_FORM = 1;
										end
							end
					end
				 if (priznak_end_transmitter == 1)
					begin
						CONECT_PRIZNAC = 0;
					end
				if (PRIZNAC_FORM == 1)
							begin
							
								SUMM = BUFF[j] + BUFF[j + 1] + BUFF[j + 2] + BUFF[j + 3] + BUFF[j + 4];
									if (SUMM >= 3)
										begin
											word_receiver[k] = 1;
										end
									else 
										begin
											word_receiver[k] = 0;
										end
								k = k + 1;
								j = j + 5;
									if (k == 8)
										begin
											PRIZNAC_FORM = 0;
											j = 5;
											k = 0;
										end
							end
			end		
	end
endmodule


