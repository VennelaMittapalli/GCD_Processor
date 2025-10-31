module gcd_tb();
reg clk = 1'b1;
reg rst,go_i;
reg [3:0]x_i;
reg [3:0]y_i;
wire [3:0]d_o;

always #5 clk = ~clk;

gcd_top gcd1(rst,clk,go_i,x_i,y_i,d_o);

initial begin
go_i = 1'b1;
x_i=4; y_i=8;#100;
x_i=5;y_i=10;#100;
#10 $finish;
end



endmodule
