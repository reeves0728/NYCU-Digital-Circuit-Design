module Lab2_4_bit_BLS_gatelevel(input [3:0] A,B, input bin, output [3:0] D, output bout);
    wire b1,b2,b3,p0,p1,p2,p3,g0,g1,g2,g3,na0,na1,na2,na3,np0,np1,np2,np3;
    wire [10:1] temp;
    
    xor #(4) P0(p0,A[0],B[0]);
    xor #(4) P1(p1,A[1],B[1]);
    xor #(4) P2(p2,A[2],B[2]);
    xor #(4) P3(p3,A[3],B[3]);

    not N0(na0,A[0]);
    not N1(na1,A[1]);
    not N2(na2,A[2]);
    not N3(na3,A[3]);

    and #(2) G0(g0,na0,B[0]);
    and #(2) G1(g1,na1,B[1]);
    and #(2) G2(g2,na2,B[2]);
    and #(2) G3(g3,na3,B[3]);

    not NP0(np0,p0);
    not NP1(np1,p1);
    not NP2(np2,p2);
    not NP3(np3,p3);

    and #(2) T1(temp1,np0,bin);
    and #(2) T2(temp2,np1,np0,bin);
    and #(2) T3(temp3,np1,g0);
    and #(2) T4(temp4,np2,np1,np0,bin);
    and #(2) T5(temp5,np2,np1,g0);
    and #(2) T6(temp6,np2,g1);
    and #(2) T7(temp7,np3,np2,np1,np0,bin);
    and #(2) T8(temp8,np3,np2,np1,g0);
    and #(2) T9(temp9,np3,np2,g1);
    and #(2) T10(temp10,np3,g2);


    or #(2) B1(b1,temp1,g0);
    or #(2) B2(b2,temp2,temp3,g1);
    or #(2) B3(b3,temp4,temp5,temp6,g2);
    or #(2) Bout(bout,temp7,temp8,temp9,temp10,g3);

    xor #(4) D0(D[0],p0,bin);
    xor #(4) D1(D[1],p1,b1);
    xor #(4) D2(D[2],p2,b2);
    xor #(4) D3(D[3],p3,b3);


endmodule