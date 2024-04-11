// Two-bit greater-than circuit: Dataflow model                     // 1
// See Figure 2-27 for logic diagram                                // 2
module comparator_greater_than_dataflow(A, B, A_greater_than_B);    // 3
    input [1:0] A, B;                                               // 4
    output A_greater_than_B;                                        // 5
    wire B1_n, B0_n, and0_out, and1_out, and2_out;                  // 6
    assign B1_n = ~B[1];                                            // 7
    assign B0_n = ~B[0];                                            // 8
    assign and0_out = A[1] & B1_n;                                  // 9
    assign and1_out = A[1] & A[0] & B0_n;                           // 10
    assign and2_out = A[1] & B1_n & B0_n;                           // 11
    assign A_greater_than_B = and0_out | and1_out | and2_out;       // 12
endmodule                                                           // 13

// assignments are not evaluated in order of appearance
// they are evaluated in order of changes of signals
