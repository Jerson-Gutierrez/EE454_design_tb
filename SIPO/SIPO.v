module SIPO(d, clk, reset,q);

	parameter SIZE = 4;

	output [SIZE-1:0] q;
	wire [SIZE-1:0] q;

	input d;
	wire d;
	input clk;
	wire clk;
	input reset;
	wire reset;
	integer i;
	reg [SIZE-1:0]s;

	always @ (posedge (clk)) begin 
		if (reset) begin
			s <= 0;
		end
		else begin
	 		for(i = SIZE-1; i >= 0; i= i -1)begin
	 			if(i == 0)begin
	 				s[i] <= d;
	 			end
	 			else begin
	 				s[i] <= s[i-1];
	 			end
			end
		end
	end
	assign q = s;
endmodule