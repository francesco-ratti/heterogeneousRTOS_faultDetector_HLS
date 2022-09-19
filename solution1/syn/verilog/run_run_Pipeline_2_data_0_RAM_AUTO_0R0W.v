// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module run_run_Pipeline_2_data_0_RAM_AUTO_0R0W
#(parameter
    DataWidth    = 32,
    AddressWidth = 7,
    AddressRange = 128
)(
    input  wire                    clk,
    input  wire                    reset,
    input  wire [AddressWidth-1:0] address0,
    input  wire                    ce0,
    input  wire                    we0,
    input  wire [DataWidth-1:0]    d0
);
//------------------------Local signal-------------------
reg  [AddressRange-1:0] written = {AddressRange{1'b0}};
//------------------------Instantiation------------------
run_run_Pipeline_2_data_0_RAM_AUTO_0R0W_ram #(
    .DataWidth(DataWidth),
    .AddressWidth(AddressWidth),
    .AddressRange(AddressRange))
run_run_Pipeline_2_data_0_RAM_AUTO_0R0W_ram_u(
    .clk      ( clk ),
    .reset    ( reset ),
    .ce0      ( ce0 ),
    .address0 ( address0 ),
    .we0      ( we0 ),
    .d0       ( d0 )
);
//------------------------Body---------------------------

always @(posedge clk) begin
    if (reset)
        written <= 1'b0;
    else begin
        if (ce0 & we0) begin
            written[address0] <= 1'b1;
        end
    end
end

always @(posedge clk) begin
end

endmodule
