module register(input rst, input clk, input load, input [3:0]in, output reg [3:0]out);
always @(load or in or posedge clk or posedge rst) begin
if(rst) out <= 4'b0000;
else if(load) out <= in;
end

endmodule
