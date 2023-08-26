module day7_tb ();

  reg clk;
  reg rst;

  wire [3:0] q;

  day7 DAY7 (
    .clk(clk),
    .rst(rst),
    .q(q)
  );

  always begin
    #5 clk = ~clk;
  end

  initial begin
    clk=0;
    rst <= 1'b1;
    #100;
    rst <= 1'b0;
    #90;
    rst <= 1'b1;
    #110;
    $finish;
  end

  initial begin
    $dumpfile("day7.vcd");
    $dumpvars(2, day7_tb);
  end

endmodule