module day3 (clk, rst, a, ris_edge, fal_edge);
  input wire clk;
  input wire rst;

  input wire a;

  output reg ris_edge;
  output reg fal_edge;

  reg q;

  always @(posedge clk)begin
      q <= a;
  end
always @(*)begin

  ris_edge = ~q & a;
  
  fal_edge = ~a & q;
end
endmodule
