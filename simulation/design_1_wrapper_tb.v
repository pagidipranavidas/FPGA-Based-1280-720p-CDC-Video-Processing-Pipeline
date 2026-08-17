`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 18:23:50
// Design Name: 
// Module Name: design_1_wrapper_tb
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


module design_1_wrapper_tb;

reg clk_100MHz;
reg reset_rtl_0;

wire vid_active_video;
wire [23:0] vid_data;
wire vid_hblank;
wire vid_hsync;
wire vid_vblank;
wire vid_vsync;

design_1_wrapper DUT
(
    .clk_100MHz(clk_100MHz),
    .reset_rtl_0(reset_rtl_0),
    .vid_active_video(vid_active_video),
    .vid_data(vid_data),
    .vid_hblank(vid_hblank),
    .vid_hsync(vid_hsync),
    .vid_vblank(vid_vblank),
    .vid_vsync(vid_vsync)
);

initial begin
    clk_100MHz = 0;
    forever #5 clk_100MHz = ~clk_100MHz;
end

initial begin
    reset_rtl_0 = 1;
    #100;
    reset_rtl_0 = 0;
end

initial begin
    #200_000_000;
    $display("Simulation Completed");
    $finish;
end

endmodule
