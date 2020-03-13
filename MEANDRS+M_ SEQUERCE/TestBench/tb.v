`timescale 1ns/1ns

module tb
();

  reg     clk;
  
  initial
  begin
    #0
    clk   = 0;
  end

  always 
  begin
      forever #(10) clk = ~clk;
  end

	K312 K1
	(
	.M50(clk),
	.Vozb1(),
	.Vozb2(),
	.U2Psi(),
	.U1Psi(),
	.U2Theta(),
	.U1Theta(),
	.mux1(),
	.mux2(),
	.mux3(),
	.mux4(),
	.Sinc()
	);

endmodule
