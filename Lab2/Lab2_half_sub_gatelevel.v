module Lab2_half_sub_gatelevel (input a, b, output diff, bout);
    wire na;
    xor #(4) G1(diff,a,b);
    not G2(na,a);
    and #(2) G3(bout,na,b);
endmodule

