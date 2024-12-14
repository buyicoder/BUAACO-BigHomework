module regfile(
    input logic clk,
    input logic we3,
    input logic[4:0] ral,ra2,wa3,
    input logic [31:0] wd3,
    output logic [31:0] rd1,rd2
);
logic [31:0] rf[31:0];
always_ff @(posedge clk) begin
    if(we3) rf[wa3] <= wd3;
end
assign rd1 = (ral==0)?0:rf[ral];
assign rd2 = (ra2==0)?0:rf[ra2];
endmodule