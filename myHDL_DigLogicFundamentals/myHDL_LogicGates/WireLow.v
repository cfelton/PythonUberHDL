// File: WireLow.v
// Generated by MyHDL 0.10
// Date: Sun Sep  2 00:42:47 2018


`timescale 1ns/10ps

module WireLow (
    Y
);
// Wire to Constatnt Low
// Input:
//     None
// Output:
//     Y(bool): output

output Y;
wire Y;

wire LSource;

assign LSource = 1'd0;



assign Y = LSource;

endmodule
