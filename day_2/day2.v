// Different DFF

module day2 (clk,rst,d,q0,q1,q2);
  input     wire     clk;
  input     wire      rst;

  input     wire      d;

  output    reg      q0;
  output    reg      q1;
  output    reg      q2;



  always @(posedge clk)begin
    q0 <= d;
  end
  // Sync rst
  always @(posedge clk)begin
    if (rst)
      q1 <= 1'b0;
    else
      q1 <= d;
  end
  //async rst
  always @(posedge clk or posedge rst)begin
    if (rst)
      q2 <= 1'b0;
    else
      q2 <= d;
  end
endmodule