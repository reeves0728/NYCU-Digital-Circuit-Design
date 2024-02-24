module Lab3_NE_Dff_gatelevel(input D,clock,output Q, Qb);
    wire [3:0] w;
    nor #(10) no1(w[0],w[2],clock,w[1]);
    nor #(10) no2(w[1],D,w[0]);
    // nor no1(w[0],w[2],clock,w[1]);
    // nor no2(w[1],D,w[0]);
    Lab3_SR_Latch_gatelevel G1(clock,w[1], w[3],w[2]);
    Lab3_SR_Latch_gatelevel G2(w[0],w[2],Q,Qb);
endmodule