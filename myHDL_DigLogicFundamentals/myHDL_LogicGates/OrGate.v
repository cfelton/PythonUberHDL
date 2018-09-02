// File: OrGate.v
// Generated by MyHDL 0.10
// Date: Sun Sep  2 00:45:57 2018


`timescale 1ns/10ps

module OrGate (
    X0,
    X1,
    Y
);
// Or Gate demo module
// 
// Input:
//     X0(bool): Or gate input 0
//     X1(bool): Or gate input 1
// 
// Output:
//     Y(bool): Or gate ouput 

input X0;
input X1;
output Y;
wire Y;





assign Y = (X0 || X1);

endmodule
