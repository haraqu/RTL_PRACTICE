module day3_tb();

  // Signals
  reg clk;
  reg rst;
  reg a;
  wire ris_edge;
  wire fal_edge;

  // Instantiate the module
  day3 u_day3 (
    .clk(clk),
    .rst(rst),
    .a(a),
    .ris_edge(ris_edge),
    .fal_edge(fal_edge)
  );

  // Clock generation
  always begin
    #5 clk = ~clk;
  end

  // Test stimulus
  initial begin
    clk = 0;
    rst = 1;
    a=0;
    #5 
    rst = 0; 
    #14;
    a=1;
    #10;
    a=0;
    #10;

    $finish;
  end

   initial begin
    $dumpfile("day3.vcd");
    $dumpvars(0, day3_tb);
  end


endmodule