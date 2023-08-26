// Simple shift register
module day6(clk,rst,x,sr);
  input     wire        clk;
  input     wire        rst;
  input     wire        x;    

  output    reg [3:0]   sr;

  always @(posedge clk or posedge rst)
    if (rst)
      sr <= 4'h0;
    else
      sr <= {sr[2:0], x};

endmodule
