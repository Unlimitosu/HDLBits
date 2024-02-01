module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [16-1:0] sum_up, sum_down;
    wire [16-1:0] b_lo, b_hi;
    wire cout_up, cout_down;

    always @(a or b) begin
        if(sub == 0) begin
            b_lo = {b[16-1:0]};
            b_hi = {b[32-1:16]};
        end
        else begin
            b_lo = {16{sub}} ^ {b[16-1:0]};
            b_hi = {16{sub}} ^ {b[32-1:16]};   
        end
    end

    add16 up(
        .a({a[16-1:0]}),
        .b({b_lo}),
        .cin(sub),
        .sum(sum_up),
        .cout(cout_up)
    );

    add16 down(
        .a({a[32-1:16]}),
        .b(b_hi),
        .cin(cout_up),
        .sum(sum_down),
        .cout(cout_down)
    );

    assign sum = {sum_down, sum_up};
    
endmodule
