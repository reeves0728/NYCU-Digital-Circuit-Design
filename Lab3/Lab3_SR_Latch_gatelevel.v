module Lab3_SR_Latch_gatelevel(input S,R, output Q,Qb);
    nor #(10) no1(Q,Qb,R);
    nor #(10) no2(Qb,Q,S);
endmodule