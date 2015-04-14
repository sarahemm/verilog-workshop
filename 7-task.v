module task_example;

reg clk;
reg [3:0] i;

initial begin
  i = 4'b0000;
end

task display_and_increment;
  input  [4:0] var_in;
  output [4:0] var_out;
begin
  $display("var_in: %d", var_in);
  var_out = var_in + 1;
end
endtask

always #1 begin
  display_and_increment(i, i);
end

endmodule
