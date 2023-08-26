// Binary to one-hot

module day8(bin,one_hot);
  localparam BIN = 4;
  localparam ONE_HOT_W   = 16;
  input  wire [3:0]   bin;
  output reg [15:0] one_hot;

always @(*) begin
 one_hot= 1'b1<<bin;
end
endmodule