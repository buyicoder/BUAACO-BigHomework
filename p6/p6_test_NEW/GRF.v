module GRF(
	 input wire [31:0] WPC,
    input wire clk,
	 input wire reset,
    input wire WE3,
    input wire [4:0] A1,
	 input wire [4:0] A2,
	 input wire [4:0] A3,
    input [31:0] WD3,
    output [31:0] RD1,RD2
);
reg [31:0] rf[31:0];
integer i;

always @(negedge clk) begin
	if(WE3) begin
	if(A3!=0)begin 
	rf[A3] <= WD3;
	 //$display("@%h: $%d <= %h", WPC, A3, WD3);
	end
	end
end

always @(posedge clk) begin
	if(reset)begin
					for(i=0;i<32;i=i+1)begin
							rf[i]=32'b0;
					end
	end 
end
initial for(i=0;i<32;i=i+1)begin
							rf[i]=32'b0;
					end

assign RD1 = (A1==0)?0:rf[A1];
assign RD2 = (A2==0)?0:rf[A2];
endmodule