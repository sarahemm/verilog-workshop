module assignment_example;

reg [3:0] a_block;
reg [3:0] b_block;
reg [3:0] a_nonblock;
reg [3:0] b_nonblock;

initial begin
  // initialize all our variables to start
  a_block = 4'd1;
  b_block = 4'd2;
  a_nonblock = 4'd1;
  b_nonblock = 4'd2;
  
  // blocking assignments, b = a, a = b
  b_block = a_block;
  a_block = b_block;
  
  // nonblocking assignments, b <= a, a <= b
  b_nonblock <= a_nonblock;
  a_nonblock <= b_nonblock;

  // show the blocking result
  $display("A Blocking: %d", a_block);
  $display("B Blocking: %d\n", b_block);

  // on the first clock cycle, show the nonblocking result
  #0 $display("A Nonblocking (cycle 0): %d", a_nonblock);
  #0 $display("B Nonblocking (cycle 0): %d\n", b_nonblock);
  
  // on the second clock cycle, show the nonblocking result again
  #1 $display("A Nonblocking (cycle 1): %d", a_nonblock);
  #1 $display("B Nonblocking (cycle 1): %d", b_nonblock);
end

endmodule
