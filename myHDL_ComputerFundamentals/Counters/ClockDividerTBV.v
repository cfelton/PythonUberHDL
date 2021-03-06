// File: ClockDividerTBV.v
// Generated by MyHDL 0.10
// Date: Tue Aug 14 06:51:30 2018


`timescale 1ns/10ps

module ClockDividerTBV (

);
// myHDL -> Verilog Testbench for `ClockDivider` module


reg clk = 0;
reg rst = 0;
wire [31:0] count;
reg [31:0] Divisor = 0;
wire clkOut;
reg [31:0] ClockDivider0_0_count_i = 0;
reg ClockDivider0_0_clkOut_i = 0;



always @(clkOut, rst, Divisor, clk, count) begin: CLOCKDIVIDERTBV_PRINT_DATA
    $write("%h", clk);
    $write(" ");
    $write("%h", Divisor);
    $write(" ");
    $write("%h", count);
    $write(" ");
    $write("%h", clkOut);
    $write(" ");
    $write("%h", rst);
    $write("\n");
end


always @(posedge clk, posedge rst) begin: CLOCKDIVIDERTBV_CLOCKDIVIDER0_0_COUNTER
    if (rst) begin
        ClockDivider0_0_count_i <= 0;
    end
    else if (($signed({1'b0, ClockDivider0_0_count_i}) == ($signed({1'b0, Divisor}) - 1))) begin
        ClockDivider0_0_count_i <= 0;
    end
    else begin
        ClockDivider0_0_count_i <= (ClockDivider0_0_count_i + 1);
    end
end


always @(posedge clk, posedge rst) begin: CLOCKDIVIDERTBV_CLOCKDIVIDER0_0_CLOCKTICK
    if (rst) begin
        ClockDivider0_0_clkOut_i <= 0;
    end
    else if (($signed({1'b0, ClockDivider0_0_count_i}) == ($signed({1'b0, Divisor}) - 1))) begin
        ClockDivider0_0_clkOut_i <= (!ClockDivider0_0_clkOut_i);
    end
    else begin
        ClockDivider0_0_clkOut_i <= ClockDivider0_0_clkOut_i;
    end
end



assign count = ClockDivider0_0_count_i;
assign clkOut = ClockDivider0_0_clkOut_i;


initial begin: CLOCKDIVIDERTBV_CLK_SIGNAL
    while (1'b1) begin
        clk <= (!clk);
        # 1;
    end
end


initial begin: CLOCKDIVIDERTBV_STIMULES
    integer i;
    integer _;
    integer j;
    for (i=2; i<(6 + 1); i=i+1) begin
        Divisor <= i;
        rst <= 0;
        for (_=0; _<(4 * (2 ** (i - 1))); _=_+1) begin
            @(posedge clk);
        end
        for (j=0; j<1; j=j+1) begin
            if ((j == 0)) begin
                rst <= 1;
            end
            else begin
                // pass
            end
            @(posedge clk);
        end
    end
    $finish;
end

endmodule
