// Binary to gray code

module day9(gray,bin);

  localparam  VEC= 4;
  input     wire[VEC-1:0] bin;
  output    reg [VEC-1:0] gray;


always @(*) begin
  gray[VEC-1] = bin[VEC-1];
  gray[VEC-2:0] = bin[VEC-2:0] ^ bin[VEC-1:1];
end
endmodule