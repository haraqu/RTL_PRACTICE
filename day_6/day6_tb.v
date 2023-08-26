module day6_tb ();

  reg  clk;
  reg  rst;
  reg  x;
  wire [3:0] sr;

  day6 DAY6 (
    .clk(clk),
    .rst(rst),
    .x(x),
    .sr(sr)
  );

  // generate clock
  always begin
    #5 clk = ~clk ;
  end

  initial begin
    rst <= 1'b1;
    x <= 1'b0;
    clk=0;
    #5;
    rst = 1'b0;
    #10;
    x = 1 ;
    #10;
    x=0;
    #10;
    x = 1 ;
    #10;
    x=1;
    #10;
    
    
    $finish;
  end
  initial begin
    $dumpfile("day6.vcd");
    $dumpvars(2, day6_tb);
  end

endmodule