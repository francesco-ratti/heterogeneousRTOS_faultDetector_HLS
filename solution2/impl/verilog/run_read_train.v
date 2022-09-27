// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module run_read_train (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        testStream_TDATA,
        testStream_TVALID,
        testStream_TREADY,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [319:0] testStream_TDATA;
input   testStream_TVALID;
output   testStream_TREADY;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [15:0] ap_return_2;
output  [31:0] ap_return_3;
output  [31:0] ap_return_4;
output  [31:0] ap_return_5;
output  [31:0] ap_return_6;
output  [31:0] ap_return_7;
output  [31:0] ap_return_8;
output  [31:0] ap_return_9;
output  [31:0] ap_return_10;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg testStream_TREADY;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    testStream_TDATA_blk_n;
wire   [7:0] tmp_checkId_V_fu_234_p1;
reg   [7:0] tmp_checkId_V_reg_587;
reg   [7:0] tmp_taskId_V_reg_592;
reg   [15:0] tmp_uniId_V_reg_597;
reg   [31:0] tmp_51_reg_602;
reg   [31:0] tmp_52_reg_607;
reg   [31:0] tmp_53_reg_612;
reg   [31:0] tmp_54_reg_617;
reg   [31:0] tmp_55_reg_622;
reg   [31:0] tmp_56_reg_627;
wire   [3:0] empty_61_fu_391_p2;
reg   [3:0] empty_61_reg_635;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond2_fu_385_p2;
wire   [2:0] empty_62_fu_397_p1;
reg   [2:0] empty_62_reg_645;
reg   [2:0] contr_AOV_address0;
reg    contr_AOV_ce0;
reg    contr_AOV_we0;
reg   [31:0] contr_AOV_d0;
wire   [31:0] contr_AOV_q0;
reg   [2:0] contr_AOV_address1;
reg    contr_AOV_ce1;
reg    contr_AOV_we1;
reg   [31:0] contr_AOV_d1;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire   [63:0] loop_index_cast1_fu_380_p1;
reg   [3:0] loop_index_fu_106;
wire    ap_CS_fsm_state6;
reg    ap_block_state1;
reg   [31:0] data_c21_0_fu_110;
reg   [31:0] data_1_c22_0_fu_114;
reg   [31:0] data_2_c23_0_fu_118;
reg   [31:0] data_3_c24_0_fu_122;
reg   [31:0] data_4_c25_0_fu_126;
reg   [31:0] data_5_c26_0_fu_130;
reg   [31:0] data_6_c27_0_fu_134;
reg   [31:0] data_7_c28_0_fu_138;
wire   [31:0] bitcast_ln145_fu_268_p1;
wire   [31:0] bitcast_ln145_8_fu_283_p1;
wire   [31:0] bitcast_ln145_9_fu_353_p1;
wire   [31:0] bitcast_ln145_10_fu_357_p1;
wire   [31:0] bitcast_ln145_11_fu_361_p1;
wire   [31:0] bitcast_ln145_12_fu_365_p1;
wire   [31:0] bitcast_ln145_13_fu_369_p1;
wire   [31:0] bitcast_ln145_14_fu_373_p1;
wire   [31:0] tmp_fu_258_p4;
wire   [31:0] tmp_s_fu_273_p4;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
end

run_read_train_contr_AOV_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
contr_AOV_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(contr_AOV_address0),
    .ce0(contr_AOV_ce0),
    .we0(contr_AOV_we0),
    .d0(contr_AOV_d0),
    .q0(contr_AOV_q0),
    .address1(contr_AOV_address1),
    .ce1(contr_AOV_ce1),
    .we1(contr_AOV_we1),
    .d1(contr_AOV_d1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((exitcond2_fu_385_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((testStream_TVALID == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        loop_index_fu_106 <= 4'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        loop_index_fu_106 <= empty_61_reg_635;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_62_reg_645 == 3'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        data_1_c22_0_fu_114 <= contr_AOV_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_62_reg_645 == 3'd2) & (1'b1 == ap_CS_fsm_state6))) begin
        data_2_c23_0_fu_118 <= contr_AOV_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_62_reg_645 == 3'd3) & (1'b1 == ap_CS_fsm_state6))) begin
        data_3_c24_0_fu_122 <= contr_AOV_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_62_reg_645 == 3'd4) & (1'b1 == ap_CS_fsm_state6))) begin
        data_4_c25_0_fu_126 <= contr_AOV_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_62_reg_645 == 3'd5) & (1'b1 == ap_CS_fsm_state6))) begin
        data_5_c26_0_fu_130 <= contr_AOV_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_62_reg_645 == 3'd6) & (1'b1 == ap_CS_fsm_state6))) begin
        data_6_c27_0_fu_134 <= contr_AOV_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_62_reg_645 == 3'd7) & (1'b1 == ap_CS_fsm_state6))) begin
        data_7_c28_0_fu_138 <= contr_AOV_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_62_reg_645 == 3'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        data_c21_0_fu_110 <= contr_AOV_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_61_reg_635 <= empty_61_fu_391_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_385_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        empty_62_reg_645 <= empty_62_fu_397_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_51_reg_602 <= {{testStream_TDATA[159:128]}};
        tmp_52_reg_607 <= {{testStream_TDATA[191:160]}};
        tmp_53_reg_612 <= {{testStream_TDATA[223:192]}};
        tmp_54_reg_617 <= {{testStream_TDATA[255:224]}};
        tmp_55_reg_622 <= {{testStream_TDATA[287:256]}};
        tmp_56_reg_627 <= {{testStream_TDATA[319:288]}};
        tmp_checkId_V_reg_587 <= tmp_checkId_V_fu_234_p1;
        tmp_taskId_V_reg_592 <= {{testStream_TDATA[15:8]}};
        tmp_uniId_V_reg_597 <= {{testStream_TDATA[31:16]}};
    end
end

always @ (*) begin
    if (((testStream_TVALID == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if (((exitcond2_fu_385_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond2_fu_385_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        contr_AOV_address0 = loop_index_cast1_fu_380_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        contr_AOV_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        contr_AOV_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        contr_AOV_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        contr_AOV_address0 = 64'd1;
    end else begin
        contr_AOV_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        contr_AOV_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        contr_AOV_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        contr_AOV_address1 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        contr_AOV_address1 = 64'd0;
    end else begin
        contr_AOV_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (~((testStream_TVALID == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        contr_AOV_ce0 = 1'b1;
    end else begin
        contr_AOV_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (~((testStream_TVALID == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        contr_AOV_ce1 = 1'b1;
    end else begin
        contr_AOV_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        contr_AOV_d0 = bitcast_ln145_14_fu_373_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        contr_AOV_d0 = bitcast_ln145_12_fu_365_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        contr_AOV_d0 = bitcast_ln145_10_fu_357_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        contr_AOV_d0 = bitcast_ln145_8_fu_283_p1;
    end else begin
        contr_AOV_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        contr_AOV_d1 = bitcast_ln145_13_fu_369_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        contr_AOV_d1 = bitcast_ln145_11_fu_361_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        contr_AOV_d1 = bitcast_ln145_9_fu_353_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        contr_AOV_d1 = bitcast_ln145_fu_268_p1;
    end else begin
        contr_AOV_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (~((testStream_TVALID == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        contr_AOV_we0 = 1'b1;
    end else begin
        contr_AOV_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (~((testStream_TVALID == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1)))) begin
        contr_AOV_we1 = 1'b1;
    end else begin
        contr_AOV_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        testStream_TDATA_blk_n = testStream_TVALID;
    end else begin
        testStream_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((testStream_TVALID == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        testStream_TREADY = 1'b1;
    end else begin
        testStream_TREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((testStream_TVALID == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((exitcond2_fu_385_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state1 = ((testStream_TVALID == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign ap_return_0 = tmp_taskId_V_reg_592;

assign ap_return_1 = tmp_checkId_V_reg_587;

assign ap_return_10 = data_7_c28_0_fu_138;

assign ap_return_2 = tmp_uniId_V_reg_597;

assign ap_return_3 = data_c21_0_fu_110;

assign ap_return_4 = data_1_c22_0_fu_114;

assign ap_return_5 = data_2_c23_0_fu_118;

assign ap_return_6 = data_3_c24_0_fu_122;

assign ap_return_7 = data_4_c25_0_fu_126;

assign ap_return_8 = data_5_c26_0_fu_130;

assign ap_return_9 = data_6_c27_0_fu_134;

assign bitcast_ln145_10_fu_357_p1 = tmp_52_reg_607;

assign bitcast_ln145_11_fu_361_p1 = tmp_53_reg_612;

assign bitcast_ln145_12_fu_365_p1 = tmp_54_reg_617;

assign bitcast_ln145_13_fu_369_p1 = tmp_55_reg_622;

assign bitcast_ln145_14_fu_373_p1 = tmp_56_reg_627;

assign bitcast_ln145_8_fu_283_p1 = tmp_s_fu_273_p4;

assign bitcast_ln145_9_fu_353_p1 = tmp_51_reg_602;

assign bitcast_ln145_fu_268_p1 = tmp_fu_258_p4;

assign empty_61_fu_391_p2 = (loop_index_fu_106 + 4'd1);

assign empty_62_fu_397_p1 = loop_index_fu_106[2:0];

assign exitcond2_fu_385_p2 = ((loop_index_fu_106 == 4'd8) ? 1'b1 : 1'b0);

assign loop_index_cast1_fu_380_p1 = loop_index_fu_106;

assign tmp_checkId_V_fu_234_p1 = testStream_TDATA[7:0];

assign tmp_fu_258_p4 = {{testStream_TDATA[95:64]}};

assign tmp_s_fu_273_p4 = {{testStream_TDATA[127:96]}};

endmodule //run_read_train
