module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    wire [7:0] q1;
    wire [7:0] q2;

    my_dff8 diff_inst1(.clk(clk), .d[7:0](d [7:0]), .q[7:0](q1[7:0]));
    my_dff8 diff_inst2(.clk(clk), .d[7:0](q1[7:0]), .q[7:0](q2[7:0]));
    my_dff8 diff_inst3(.clk(clk), .d[7:0](q2[7:0]), .q[7:0](q [7:0]));

    // MUX 배운 뒤에 다시 해야 될 듯ㄴ

endmodule
