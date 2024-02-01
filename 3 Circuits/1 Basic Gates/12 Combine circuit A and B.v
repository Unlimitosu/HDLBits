module A (input x, input y, output z);
    assign z = (x^y) & x;
endmodule

module B ( input x, input y, output z );
    wire [2-1:0] tmp = {x, y};
    assign z =  (tmp == 2'b00) ? 1 :
                (tmp == 2'b10) ? 0 :
                (tmp == 2'b01) ? 0 :
                                 1 ;
endmodule

module top_module (input x, input y, output z);
    wire z1, z2, z3, z4;
    A IA1(.x(x), .y(y), .z(z1));
    B IB1(.x(x), .y(y), .z(z2));
    A IA2(.x(x), .y(y), .z(z3));
    B IB2(.x(x), .y(y), .z(z4));

    assign z = (z1 | z2) ^ (z3 & z4);
endmodule
