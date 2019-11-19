

module sipo_tb;

reg clk; 
reg reset; 
reg signal; 
wire [3:0] sipo_out; 

always #5 clk = ~clk;

SIPO #(4) uut(.clk(clk), .reset(reset), .d(signal), .q(sipo_out));

initial begin
clk = 0; 

reset = 0; 

signal = 0; 

#5 reset = 1'b1;

#5 reset = 1'b0;

#10 signal = 1'b1;

#10 signal = 1'b0;

#10 signal = 1'b0;

#10 signal = 1'b1;

#10 signal = 1'b0;

#10 signal = 1'bx;

end

initial #150 $stop;

endmodule