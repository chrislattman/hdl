// 4-bit Left Shift Register with Reset
module srg_4_r_v(CLK, RESET, SI, Q, SO);
    input CLK, RESET, SI;
    output [3:0] Q;
    output SO;
    reg [3:0] Q;
    assign SO = Q[3];

always @(posedge CLK or posedge RESET)
begin
    if (RESET)
        Q <= 4'b0000;
    else
        Q <= {Q[2:0], SI};
end
endmodule
