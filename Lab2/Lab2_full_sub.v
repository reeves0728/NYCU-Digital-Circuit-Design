module Lab2_full_sub(input a, b, bin, output diff, bout);
    wire d1, b1, b2;
    
    Lab2_half_sub_gatelevel HA1(a,b,d1,b1);
    Lab2_half_sub_gatelevel HA2(d1,bin,diff,b2);
    or #(2) G1(bout,b1,b2);

endmodule


