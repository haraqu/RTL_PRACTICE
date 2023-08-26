module day9_tb ();

  reg [3:0] bin;
  wire [3:0] gray;

  day9 DAY9 (
    .bin(bin),
    .gray(gray)
  );

  initial begin
    bin = 4'b1101;
    #5;
    #10;
    bin = 4'b0110;
    #10;
    #10;
    $finish;
  end

  initial begin
    $dumpfile("day9.vcd");
    $dumpvars(2, day9_tb);
  end

endmodule
