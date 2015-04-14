module variables_example;

reg [3:0] testbin;
reg [7:4] testbin2;
reg [3:0] testhex;
reg [3:0] testoct;
reg [3:0] testdec;
reg [3:0] testunset;

initial begin
  testbin = 4'b1110;
  testbin2 = 4'b1110;
  testoct = 4'o16;
  testhex = 4'hE;
  testdec = 14;
  
  $display("Binary variable: %d", testbin);
  $display("Binary variable 2: %d", testbin2);
  $display("Octal variable: %d", testoct);
  $display("Hex variable: %d", testhex);
  $display("Decimal variable: %d", testdec);
  $display("Unset variable: %d\n", testunset);
end

endmodule
