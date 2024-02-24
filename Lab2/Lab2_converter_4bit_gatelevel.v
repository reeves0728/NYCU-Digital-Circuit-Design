module Lab2_converter_4bit_gatelevel (input [3:0] E, output [3:0] B, output v);
    wire [3:0] nE;
    wire [8:1] w;

    not N0(nE[0],E[0]);
    not N1(nE[1],E[1]);
    not N2(nE[2],E[2]);
    not N3(nE[3],E[3]);

    and A1(w1,nE[3],E[1],E[0]);
    and A2(w2,E[2],nE[1],nE[0]);
    xor x1(w3,E[3],E[2]);
    and A3(w4,E[3],E[2]);
    and A4(w5,E[3],E[1],E[0]);
    and A5(w6,nE[2],nE[0]);
    and A6(w7,nE[2],E[3],nE[1]);
    and A7(w8,E[2],E[1],E[0]);

    or o1(v,w1,w2,w3);
    or o2(B[3],w4,w5);
    or o3(B[2],w6,w7,w8);
    xor x2(B[1],E[1],E[0]);
    not N4(B[0],E[0]);



    

endmodule



    
     
