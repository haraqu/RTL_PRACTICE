// DFF TB

module day2_tb ();

  reg      clk;
  reg      rst;

  reg      d;

  wire      q0;
  wire      q1;
  wire      q2;

  day2 DAY2 (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q0(q0),
    .q1(q1),
    .q2(q2)
  );

  // Generate clk
  always begin
    #5 clk = ~ clk; 
  end

  // Stimulus
  initial begin
    d= 1'b1;
    clk=0;
    rst=0;
    #5;
    rst=1;
    #10;
    rst=0;
    #10;
    rst = 1;
    #10;
    $finish;
  end

  // Dump VCD
  initial begin
    $dumpfile("day2.vcd");
    $dumpvars(0, day2_tb);
  end
  

endmodule