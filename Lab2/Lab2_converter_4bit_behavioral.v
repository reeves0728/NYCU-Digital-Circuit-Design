module Lab2_converter_4bit_behavioral (input [3:0] E, output [3:0] B, output v);
    reg [3:0] B;
    reg v;
    always @(*) begin
        B[3] = (E[3]&E[2])|(E[3]&E[1]&E[0]);
        B[2] = (~E[2]&~E[0])|(E[3]&~E[2]&~E[1])|(E[2]&E[1]&E[0]);
        B[1] = E[1]^E[0];
        B[0] = ~E[0];
        v = (E[3]^E[2])|(E[2]&~E[1]&~E[0])|(~E[3]&E[1]&E[0]);

    end
endmodule