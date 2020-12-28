// DEL_COUNTER ver. 1.0 FPGA CYCLONE IV EP4CE115F29C7 
 
module DEL_COUNTER
(
	input clk,
	input res,
	output reg clc
);

reg [3:0]  i;

always @(posedge clk or negedge res)
	begin
		if (!res) 
			begin
				i 	= 0;
				clc = 0;
			end
		else 
			begin				
				i = i + 1;
				clc = i[3];				
			end		
	end
endmodule


