// A simple TB for mux

module day1_tb ();

  reg [2:0]a;
  reg [2:0]b;
  reg sel;
  reg clk;
  wire [2:0]y;

  day1 DAY1 (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
   
  );
 

  initial begin
    a=4'b100;
    b=4'b111;
    #5;
    sel=1;
    #10;
    sel=0;
    #10;
    $finish;
  end

  initial begin
    $dumpfile("day1.vcd");
    $dumpvars(0, day1_tb);
  end

endmodule