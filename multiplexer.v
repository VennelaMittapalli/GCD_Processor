module multiplexer(rst,sLine,load,result,out);
input rst,sLine;
input [3:0]load,result;
output reg [3:0]out;

always @(*) begin
if(rst) out = 4'd0;
else if(!sLine) out = load;
else out = result;
end

endmodule
