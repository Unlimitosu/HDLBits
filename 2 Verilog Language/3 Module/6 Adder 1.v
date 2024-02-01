module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire cout_lo, cin_lo, cout;
    wire [15:0] s_lo;
    wire [15:0] s_hi;

    add16 upper_inst(
        .a({a[15:0]}), 
        .b({b[15:0]}),
        .cin(cin_lo),
        .sum(s_lo),
        .cout(cout_lo)
    );

    add16 lower_inst(
        .a({a[31:16]}),
        .b({b[31:16]}),
        .cin(cout_lo),
        .sum(s_hi),
        .cout(cout)
    );

    assign sum = {s_hi, s_lo};
    
endmodule
