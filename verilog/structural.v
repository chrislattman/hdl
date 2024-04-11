// Two-bit greater-than circuit: Verilog structural model           // 1
// See Figure 2-27 for logic diagram                                // 2
module comparator_greater_than_structural(A, B, A_greater_than_B);  // 3
    input [1:0] A, B;                                               // 4
    output A_greater_than_B;                                        // 5
    wire B0_n, B1_n, and0_out, and1_out, and2_out;                  // 6
    not                                                             // 7
        inv0(B0_n, B[0]), inv1(B1_n, B[1]);                         // 8
    and                                                             // 9
        and0(and0_out, A[1], B1_n),                                 // 10
        and1(and1_out, A[1], A[0], B0_n),                           // 11
        and2(and2_out, A[1], B1_n, B0_n);                           // 12
    or                                                              // 13
        or0(A_greater_than_B, and0_out, and1_out, and2_out);        // 14
endmodule                                                           // 15

/* Alternative comment format */

// Verilog names are case-sensitive
