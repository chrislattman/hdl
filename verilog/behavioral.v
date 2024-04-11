// Two-bit greater-than circuit: Conditional model                      // 1
// See Figure 2-27 for logic diagram                                    // 2
module comparator_greater_than_conditional2(A, B, A_greater_than_B);    // 3
    input [1:0] A, B;                                                   // 4
    output A_greater_than_B;                                            // 5
    assign A_greater_than_B = (A > B) ? 1'b1 : 1'b0;                    // 7
endmodule                                                               // 8
