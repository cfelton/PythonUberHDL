// File: DEMUX1_4_BV.v
// Generated by MyHDL 0.10
// Date: Sun Sep 23 18:48:43 2018


`timescale 1ns/10ps

module DEMUX1_4_BV (
    x,
    S,
    Y
);
// 1:4 DEMUX written via behaviorial with
// bit vectors
// 
// Inputs:
//     x(bool): input feed
//     S(2bit vector): channel select bitvector;  
//         min=0, max=3
// 
// Outputs:
//     Y(4bit vector): ouput channel bitvector;
//         values min=0, max=15; allowed is: 0,1,2,4,8  
//         in this application
//     

input x;
input [1:0] S;
output [3:0] Y;
reg [3:0] Y;




always @(x, S) begin: DEMUX1_4_BV_LOGIC
    case (S)
        'h0: begin
            Y = {3'h0, x};
            // 0001
        end
        'h1: begin
            Y = {2'h0, x, 1'h0};
            // 0010
        end
        'h2: begin
            Y = {1'h0, x, 2'h0};
            // 0100
        end
        default: begin
            Y = {x, 3'h0};
            // 1000
        end
    endcase
end

endmodule
