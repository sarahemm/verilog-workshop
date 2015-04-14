module assign_example;

reg [3:0] a;
wire [3:0] b;
wire [3:0] not_a;

assign b = a;
assign not_a = ~a;

initial begin
  a = 4'b0000;
end

always #1 begin
  $display("a\t%02d (%b)", a, a);
  $display("b\t%02d (%b)", b, b);
  $display("not_a\t%02d (%b)\n", not_a, not_a);
  a = a + 1;
end

endmodule
