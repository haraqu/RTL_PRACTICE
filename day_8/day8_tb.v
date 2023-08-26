module day8_tb();


  reg [3:0] bin;
  wire [15:0] one_hot;

  day8  DAY8 (
    .bin(bin),
    .one_hot(one_hot)
  );

  initial begin
  
      bin= 4'b0000;
      #5;
      #10;
      bin = 4'b1001;
      #10;
      bin=4'b1010;
      #10;
    
    $finish;
  end

  initial begin
    $dumpfile("day8.vcd");
    $dumpvars(2, day8_tb);
  end

endmodule