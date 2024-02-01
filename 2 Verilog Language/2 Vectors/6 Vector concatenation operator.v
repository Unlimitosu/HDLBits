module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    assign w = {a[5-1:0], b[5-1:2]};
    assign x = {b[2-1:0], c, d[5-1]};
    assign y = {d[4-1:0], e[5-1:1]};
    assign z = {e[0], f[5-1:0], 2'b11};

endmodule
