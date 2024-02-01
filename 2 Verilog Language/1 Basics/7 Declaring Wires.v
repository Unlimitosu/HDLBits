`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
	wire ab_and;
    assign ab_and = a & b;
    
    wire cd_and;
    assign cd_and = c & d;
    
    wire or_mid;
    assign or_mid = ab_and | cd_and;
    
    assign out = or_mid;
    assign out_n = ~out;
endmodule
