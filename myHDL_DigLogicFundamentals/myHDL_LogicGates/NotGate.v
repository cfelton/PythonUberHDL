// File: NotGate.v
// Generated by MyHDL 0.10
// Date: Sun Sep  2 00:44:40 2018


`timescale 1ns/10ps

module NotGate (
    X,
    Y
);
// NOT gate exsample module
// 
// Input:
//     X(bool): input
// 
// Output:
//     Y(bool): ouput

input X;
output Y;
wire Y;





assign Y = (!X);

endmodule
