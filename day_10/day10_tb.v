module day10_tb ();

  reg         clk;
  reg         rst;
  reg         load;
  reg  [3:0]  val ;

  wire[3:0]     count;

  day10 DAY10 (
    .clk(clk),
    .rst(rst),
    .load(load),
    .val(val)
  );

  // Clock
  always begin
    #5 clk = ~clk; 
  end

  initial begin
    rst <= 1;
    load <= 0;
    val <= 4'b0000;
    clk=0;
    #5;
    load=1;
    rst <= 0;
    #10;
    load=0;
    #100;
    
    $finish;
  end

  initial begin
    $dumpfile("day10.vcd");
    $dumpvars(2, day10_tb);
  end

endmodule