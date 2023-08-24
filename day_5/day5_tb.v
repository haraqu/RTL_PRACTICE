// Simple TB

module day5_tb ();

  reg clk;
  reg rst;

  wire [7:0] cnt;

  day5 DAY5 (
    .clk(clk),
    .rst(rst),
    .cnt(cnt)
  );

  always begin
    #5 clk = ~clk;
  end

  initial begin
    clk=0;
    rst <= 1'b1;
    #5;
    #10;
    rst <= 1'b0;
    #10;
    #10;
    #10;
    #10;
    #10;
    $finish;
  end

  initial begin
    $dumpfile("day5.vcd");
    $dumpvars(0, day5_tb);
  end
  
endmodule