module gcd_top(input rst, clk, go_i, input [3:0]x_i,y_i, output reg [3:0]d_o);
wire xld,yld,xsel,ysel,enable;
wire [1:0]comparison;
wire [3:0]result;
wire [3:0]xsub,ysub,xmux,ymux,xreg,yreg;
fsm fsm1(rst,clk,go_i,comparison,enable,xsel,ysel,xld,yld);
multiplexer x(rst,xsel,x_i,xsub,xmux);
multiplexer y(rst,ysel,y_i,ysub,ymux);
register reg1(rst,clk,xld,xmux,xreg);
register reg2(rst,clk,yld,ymux,yreg);
comparator comp(rst,xreg,yreg,comparison);
subtractor sub(rst,comparison,xreg,yreg,xsub,ysub);
//fsm fsm1(rst,clk,go_i,comparison,enable,xsel,ysel,xld,yld);
register outp(rst,clk,enable,xsub,result);
always @(posedge clk) d_o <= result;
endmodule
