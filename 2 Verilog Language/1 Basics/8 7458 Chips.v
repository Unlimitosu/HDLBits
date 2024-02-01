module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

	wire andr1 = p1a & p1c & p1b;
    wire andr2 = p1f & p1e & p1d;
    wire orr = andr1 | andr2;
    assign p1y = orr;
    
   	wire andl1 = p2a & p2b;
    wire andl2 = p2c & p2d;
    wire orl = andl1 | andl2;
    assign p2y = orl;
    
endmodule
