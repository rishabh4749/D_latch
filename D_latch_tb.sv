`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 11:20:38
// Design Name: 
// Module Name: D_latch_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module D_latch_tb(

    );
    reg d;
    reg ena;
    wire q;
    D_latch dut(.d(d),.ena(ena),.q(q));
    initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t d=%0b ena=%0b q=%0b",$time,d,ena,q);
    #10 $finish;
    end
    initial
    begin
    d<=1'b1;
    ena<=1'b1;
    #2;
    d<=1'b0;
    ena<=1'b0;
    end
endmodule
