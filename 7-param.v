module param_example(in, out);
    parameter WIDTH=8;
    
    input  [WIDTH-1:0] in;
    output [WIDTH-1:0] out;
    
    assign out = ~in;
endmodule

module param_example_top;
    reg [3:0] i;
    wire [3:0] result;
    
    initial begin
        i = 4'b0000;
    end
    
    param_example #(.WIDTH(4)) expmod1(i, result);    
    
    always #1 begin
        $display("in: %b out: %b", i, result);
        i = i + 1;
    end
endmodule
