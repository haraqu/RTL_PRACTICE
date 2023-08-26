// LFSR
module day7 (clk,rst,q);
  input     wire      clk;
  input     wire      rst;

  output    reg [3:0] q;

  always @(posedge clk or posedge rst)
    if (rst)
      q <= 4'hE;
    else
      q <= {q[2:0], q[1] ^ q[3]};

endmodule