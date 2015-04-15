module function_example;

reg [3:0] i;

initial begin
  i = 4'b0000;
end

function [3:0] and_gate;
  input  [3:0] var_in;
  input  [3:0] and_with;
begin
  and_gate = var_in & and_with;
end
endfunction

always #1 begin
  $display("input: %b output: %b", i, and_gate(i, 4'b0011));
  i = i + 1;
end

endmodule
