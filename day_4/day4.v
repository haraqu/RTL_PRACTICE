

module day4 (a,b,op,alu);
  input     wire [7:0]   a;
  input     wire [7:0]   b;
  input     wire [2:0]   op;

  output    reg [7:0]   alu;


  // Enum for ALU op
  localparam  OP_ADD = 3'b000;
  localparam  OP_SUB = 3'b001;
  localparam  OP_SLL = 3'b010;
  localparam  OP_LSR = 3'b011;
  localparam  OP_AND = 3'b100;
  localparam  OP_OR  = 3'b101;
  localparam  OP_XOR = 3'b110;
  localparam  OP_EQL = 3'b111;

  reg carry;

  always @(*) begin
    case (op)
      OP_ADD: alu= a + b;
      OP_SUB: alu = a - b;
      OP_SLL: alu = a[7:0] << b[2:0];
      OP_LSR: alu = a[7:0] >> b[1:0];
      OP_AND: alu = a[7:0] & b[7:0];
      OP_OR : alu = a | b;
      OP_XOR: alu = a ^ b;
      OP_EQL: alu = (a==b)?8'd1:8'd0 ;
    endcase
  end

endmodule