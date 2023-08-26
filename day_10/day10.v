// Counter with a load
module day10 (clk,rst,load,val);
  input     wire          clk;
  input     wire          rst;
  input     wire          load;
  input     wire[3:0]     val;

  reg  [3:0] q;

  // Store the load value whenever load_i is seen
  always@(posedge clk or posedge rst)
    if (rst)
      q <= 4'h0;
    else if (load)
      q <= val;
    else
    q <=  q + 1'b1;


endmodule
