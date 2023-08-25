// Simple ALU TB

module day4_tb ();

  reg [7:0] a;
  reg [7:0] b;
  reg [2:0] op;
  wire [7:0] alu;

  day4 DAY4 (
    .a(a),
    .b(b),
    .op(op),
    .alu(alu)
  );

  initial begin
    a= 20;
    b= 15;
    #5;
    op=3'b000;
    #10;
    op=3'b001;
     $display("add = %d",alu);
    #10;
    op=3'b010;
     $display("sub = %d",alu);
    #10;
    op=3'b011;
     $display("sll = %d",alu);
    #10;
    op=3'b100;
     $display("lsr = %d",alu);
    #10;
    op=3'b101;
     $display("and= %d",alu);
    #10;
    op=3'b110;
     $display("or = %d",alu);
    #10;
    op=3'b111; 
    $display("xor = %d",alu);
    #10;
      $display("equ = %d",alu);
  end

  initial begin
    $dumpfile("day4.vcd");
    $dumpvars(0, day4_tb);
  end
endmodule