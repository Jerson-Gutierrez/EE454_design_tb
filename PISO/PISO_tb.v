module piso_tb;

reg clk; 
reg reset; 
reg [7:0]signal; 
wire [7:0] piso_out; 

always #5 clk = ~clk;

SIPO #(8) uut(.clk(clk), .reset(reset), .d(signal), .q(piso_out);

initial begin
clk = 0; 

reset = 0; 

signal = 0; 

#5 reset = 1'b1;

#5 reset = 1'b0;

#10 signal = 8'b10000001;

#10 signal = 8'b01111010;

#10 signal = 8'bxxxxxxxx;

#20;

end

initial #150 $stop;

endmodule