module example_module(in_sig, out_sig);
  input  [3:0] in_sig;
  output [3:0] out_sig;
  
  assign out_sig = in_sig & 4'b0111;
endmodule

module module_example_top;
  reg [3:0] a;
  wire [3:0] b;
  
  example_module expmod1(a, b);
  
  initial begin
    a = 4'b0000;
  end
  
  always #1 begin
    a = a + 1;
    $display("input to module\t\t%b", a);
    $display("output from module\t%b\n", b);
  end
endmodule
