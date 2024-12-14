module MDF(
    input clk,
    input reset,
    input [31:0]D1,
    input [31:0]D2,
    input [3:0] alu_class,
    output reg start,
    output reg [31:0] LO,
    output reg [31:0] HI,
    output busy
    );
    reg [3:0] ALU_class;
    reg [63:0] mult_result;
    reg [63:0] multu_result;
    reg [31:0] div_quotient;
    reg [31:0] div_remainder;
    reg [31:0] divu_quotient;
    reg [31:0] divu_remainder;
    

    reg [3:0] timec;
    assign busy=(timec!=0)?1:0;
    always@(posedge clk) begin
        if(reset) begin
            LO=0;
            HI=0;
        end
        else if (alu_class==7)begin
            HI=D1;
        end
        else if(alu_class==8)begin
            LO=D1;
        end
        else if(start==0&&(alu_class==1||alu_class==2||alu_class==3||alu_class==4))begin
            start=1;
            ALU_class=alu_class;
            mult_result=$signed(D1)*$signed(D2);
            multu_result=$unsigned(D1)*$unsigned(D2);
            div_quotient=$signed(D1)/$signed(D2);
            div_remainder=$signed(D1)%$signed(D2);
            divu_quotient=$unsigned(D1)/$unsigned(D2);
            divu_remainder=$unsigned(D1)%$unsigned(D2);
        end
        else if(start|~busy)begin
            timec=(alu_class==1||alu_class==2)?5:10;
            start=0;
        end
        else if(busy)begin
            timec=timec-1; 
        end
    end
    always@(busy)begin
        if(busy==0)begin
            if(ALU_class==1)begin
                LO=mult_result[31:0];
                HI=mult_result[63:32];
            end
            else if (ALU_class==2)begin
               LO=multu_result[31:0];
               HI=multu_result[63:32]; 
            end
            else if(ALU_class==3)begin
                LO=div_quotient;
                HI=div_remainder;
            end
            else if (ALU_class==4)begin
                LO=divu_quotient;
                HI=divu_remainder;
            end
        end
    end
    initial begin
        start<=0;
        ALU_class<=0;
        mult_result<=0;
        multu_result<=0;
        div_quotient<=0;
        div_remainder<=0;
        divu_quotient<=0;
        divu_remainder<=0;
        timec<=0;
        LO<=0;
        HI<=0; 
    end
endmodule
