module main;

   reg clk, reset;
   reg [31:0] value;
   wire [15:0] result;
   wire rdy;

   sqrt32 root(.clk(clk), .rdy(rdy), .reset(reset), .x(value), .y(result));

   always #5 clk = ~clk;

   always @(posedge rdy) begin
      $display("sqrt(%d) --> %d", value, result);
      $finish;
   end


   initial begin
      clk = 0;
      reset = 1;
      $monitor($time,,"%m.acc = %b", root.acc);
      #100 value = 63;
      reset = 0;
   end
endmodule /* main */