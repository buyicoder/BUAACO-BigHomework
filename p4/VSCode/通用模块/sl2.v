module sl2(
    input logic[31:0] a,
    output logic [31:0] y
    );
    always_comb
    y = a<<2;
endmodule