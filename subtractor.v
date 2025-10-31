module subtractor(input rst, input [1:0]cmd, input [3:0]x,y, output reg [3:0]xout,yout);
always @(*) begin
if(rst || cmd == 2'b00) begin
xout = 4'b0000;
yout = 4'b0000;
end
else if(cmd == 2'b10) begin
xout = (x-y);
yout = y;
end
else if(cmd == 2'b01) begin
xout = x;
yout = (y-x);
end
else begin
xout = x;
yout = y;
end
end
endmodule
