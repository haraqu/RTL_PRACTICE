// Odd counter

module day5 (clk,rst,cnt);
  input     wire        clk;
  input     wire        rst;

  output    reg     [7:0]  cnt;

  always @(posedge clk or posedge rst)
    if (rst)
      cnt <= 8'h1;
    else
      cnt <= cnt +2;

endmodule