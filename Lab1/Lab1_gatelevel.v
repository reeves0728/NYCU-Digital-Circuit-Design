module Lab1_gatelevel (F,A,B,C,D);
    output  F;
    input   A,B,C,D;
    wire    w1,w2,w3,w4,w5,nB,nD;

    not G1(nB,B);
    not G2(nD,D);

    or G3(w1,A,nB);
    or G4(w4,w3,nD);

    and G5(w3,B,C);
    and G6(w2,w1,C);
    and G7(w5,w4,A);

    or G8(F,w2,w5);

endmodule