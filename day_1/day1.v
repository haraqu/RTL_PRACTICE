
module day1 (a,b,sel,y);
  input   wire [2:0] a;
  input   wire [2:0]b;
  input   wire sel;
  output  reg [2:0]y;

always @(*) begin

if(sel)
    y = a;
else
    y = b;
end

endmodule