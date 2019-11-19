module PISO( d, clk, reset, q);
	
	parameter SIZE = 4;
	output reg q ;
	input [SIZE-1:0] d ;
	input clk ;
	input reset ;
	reg [SIZE-1:0]temp;

	always @ (posedge clk)
	begin
	   if (reset)
	      temp <= 0;
	   else
	     temp <= d;
	end

	assign q = temp[0];

endmodule 