module always_example;

reg clk;
reg [3:0] i;

initial begin
  clk = 1'b0;
  i = 4'b0000;
  $dumpfile("3-always.vcd");
  $dumpvars(0,always_example);
end

// toggle the clk signal every 10 ticks
always begin
  #10 clk = ~clk;
end

// every time clk goes high, display then increment i
always @ (posedge clk) begin
  $display("i: %d", i);
  i = i + 1;
end

endmodule
