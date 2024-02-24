module Lab2_4_bit_BLS_behavioral(input [3:0] A,B, input bin, output [3:0] D, output bout);
    reg [3:0] D;
    reg bout;
    reg [3:0] P,G;
    reg [3:1] Br;

    always @(*) begin
        P[0] = A[0]^B[0];
        P[1] = A[1]^B[1];
        P[2] = A[2]^B[2];
        P[3] = A[3]^B[3];

        G[0] = (~A[0])&B[0];
        G[1] = (~A[1])&B[1];
        G[2] = (~A[2])&B[2];
        G[3] = (~A[3])&B[3];

        Br[1] = ((~P[0])&bin)|G[0];
        Br[2] = ((~P[1])&Br[1])|G[1];
        Br[3] = ((~P[2])&Br[2])|G[2];
        bout = ((~P[3])&Br[3])|G[3];

        D[0] = A[0]^B[0]^bin;
        D[1] = A[1]^B[1]^Br[1];
        D[2] = A[2]^B[2]^Br[2];
        D[3] = A[3]^B[3]^Br[3];
    
    end

endmodule