; ModuleID = '/home/francesco/workspace/detector_solid/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.controlStr = type { %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", i8, [2 x i8], [8 x float] }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%struct.OutcomeStr = type { %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", [8 x float] }
%struct.REGION_T = type { [8 x float], [8 x float], [8 x float] }
%struct.taskFailure = type { %"struct.ap_uint<8>", %"struct.ap_uint<8>" }

; Function Attrs: noinline
define void @apatb_run_ir(i8* noalias nonnull %accel_mode, i8* noalias nonnull %data_in_vld, %struct.controlStr* noalias nocapture nonnull readonly %inputData, i8* noalias nonnull "fpga.decayed.dim.hint"="16" %errorInTask, %struct.OutcomeStr* noalias nocapture nonnull "fpga.decayed.dim.hint"="16" %outcomeInRam, %struct.REGION_T* nocapture readonly %trainedRegion_i, %struct.REGION_T* noalias nocapture nonnull %trainedRegion_o, %"struct.ap_uint<8>"* nocapture readonly %IOCheckIdx, %"struct.ap_uint<8>"* nocapture readonly %IORegionIdx, %"struct.ap_uint<8>"* noalias nocapture nonnull %n_regions_in, %struct.taskFailure* noalias nocapture nonnull %failedTask) local_unnamed_addr #0 {
entry:
  %accel_mode_copy = alloca i8, align 512
  %data_in_vld_copy = alloca i8, align 512
  %inputData_copy = alloca %struct.controlStr, align 512
  %errorInTask_copy = alloca [16 x i8], align 512
  %outcomeInRam_copy = alloca [16 x %struct.OutcomeStr], align 512
  %trainedRegion_o_copy = alloca %struct.REGION_T, align 512
  %n_regions_in_copy = alloca %"struct.ap_uint<8>", align 512
  %failedTask_copy = alloca i16, align 512
  %0 = bitcast i8* %errorInTask to [16 x i8]*
  %1 = bitcast %struct.OutcomeStr* %outcomeInRam to [16 x %struct.OutcomeStr]*
  call fastcc void @copy_in(i8* nonnull %accel_mode, i8* nonnull align 512 %accel_mode_copy, i8* nonnull %data_in_vld, i8* nonnull align 512 %data_in_vld_copy, %struct.controlStr* nonnull %inputData, %struct.controlStr* nonnull align 512 %inputData_copy, [16 x i8]* nonnull %0, [16 x i8]* nonnull align 512 %errorInTask_copy, [16 x %struct.OutcomeStr]* nonnull %1, [16 x %struct.OutcomeStr]* nonnull align 512 %outcomeInRam_copy, %struct.REGION_T* nonnull %trainedRegion_o, %struct.REGION_T* nonnull align 512 %trainedRegion_o_copy, %"struct.ap_uint<8>"* nonnull %n_regions_in, %"struct.ap_uint<8>"* nonnull align 512 %n_regions_in_copy, %struct.taskFailure* nonnull %failedTask, i16* nonnull align 512 %failedTask_copy)
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %errorInTask_copy, i32 0, i32 0
  %3 = getelementptr inbounds [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %outcomeInRam_copy, i32 0, i32 0
  call void @apatb_run_hw(i8* %accel_mode_copy, i8* %data_in_vld_copy, %struct.controlStr* %inputData_copy, i8* %2, %struct.OutcomeStr* %3, %struct.REGION_T* %trainedRegion_i, %struct.REGION_T* %trainedRegion_o_copy, %"struct.ap_uint<8>"* %IOCheckIdx, %"struct.ap_uint<8>"* %IORegionIdx, %"struct.ap_uint<8>"* %n_regions_in_copy, i16* %failedTask_copy)
  call void @copy_back(i8* %accel_mode, i8* %accel_mode_copy, i8* %data_in_vld, i8* %data_in_vld_copy, %struct.controlStr* %inputData, %struct.controlStr* %inputData_copy, [16 x i8]* %0, [16 x i8]* %errorInTask_copy, [16 x %struct.OutcomeStr]* %1, [16 x %struct.OutcomeStr]* %outcomeInRam_copy, %struct.REGION_T* %trainedRegion_o, %struct.REGION_T* %trainedRegion_o_copy, %"struct.ap_uint<8>"* %n_regions_in, %"struct.ap_uint<8>"* %n_regions_in_copy, %struct.taskFailure* %failedTask, i16* %failedTask_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(i8* noalias readonly, i8* noalias align 512, i8* noalias readonly, i8* noalias align 512, %struct.controlStr* noalias readonly, %struct.controlStr* noalias align 512, [16 x i8]* noalias readonly, [16 x i8]* noalias align 512, [16 x %struct.OutcomeStr]* noalias readonly, [16 x %struct.OutcomeStr]* noalias align 512, %struct.REGION_T* noalias readonly, %struct.REGION_T* noalias align 512, %"struct.ap_uint<8>"* noalias readonly, %"struct.ap_uint<8>"* noalias align 512, %struct.taskFailure* noalias readonly, i16* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %1, i8* %0)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %3, i8* %2)
  call fastcc void @onebyonecpy_hls.p0struct.controlStr(%struct.controlStr* align 512 %5, %struct.controlStr* %4)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* align 512 %7, [16 x i8]* %6)
  call fastcc void @onebyonecpy_hls.p0a16struct.OutcomeStr([16 x %struct.OutcomeStr]* align 512 %9, [16 x %struct.OutcomeStr]* %8)
  call fastcc void @onebyonecpy_hls.p0struct.REGION_T(%struct.REGION_T* align 512 %11, %struct.REGION_T* %10)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* align 512 %13, %"struct.ap_uint<8>"* %12)
  call fastcc void @onebyonecpy_hls.p0struct.taskFailure(i16* align 512 %15, %struct.taskFailure* %14)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i8(i8* noalias align 512, i8* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i8* %0, null
  %3 = icmp eq i8* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i8, i8* %1, align 1
  store i8 %5, i8* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.controlStr(%struct.controlStr* noalias align 512, %struct.controlStr* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.controlStr* %0, null
  %3 = icmp eq %struct.controlStr* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.0.018 = getelementptr %struct.controlStr, %struct.controlStr* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.019 = getelementptr %struct.controlStr, %struct.controlStr* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load i8, i8* %.0.0.0.018, align 1
  store i8 %5, i8* %.01.0.0.019, align 512
  %.1.0.0.024 = getelementptr %struct.controlStr, %struct.controlStr* %1, i32 0, i32 1, i32 0, i32 0, i32 0
  %.12.0.0.025 = getelementptr %struct.controlStr, %struct.controlStr* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %6 = load i8, i8* %.1.0.0.024, align 1
  store i8 %6, i8* %.12.0.0.025, align 1
  %.2.0.0.030 = getelementptr %struct.controlStr, %struct.controlStr* %1, i32 0, i32 2, i32 0, i32 0, i32 0
  %.23.0.0.031 = getelementptr %struct.controlStr, %struct.controlStr* %0, i32 0, i32 2, i32 0, i32 0, i32 0
  %7 = load i8, i8* %.2.0.0.030, align 1
  store i8 %7, i8* %.23.0.0.031, align 2
  %.3.0.0.036 = getelementptr %struct.controlStr, %struct.controlStr* %1, i32 0, i32 3, i32 0, i32 0, i32 0
  %.34.0.0.037 = getelementptr %struct.controlStr, %struct.controlStr* %0, i32 0, i32 3, i32 0, i32 0, i32 0
  %8 = load i16, i16* %.3.0.0.036, align 2
  store i16 %8, i16* %.34.0.0.037, align 4
  %.4 = getelementptr %struct.controlStr, %struct.controlStr* %1, i32 0, i32 4
  %.45 = getelementptr %struct.controlStr, %struct.controlStr* %0, i32 0, i32 4
  %9 = load i8, i8* %.4, align 1
  store i8 %9, i8* %.45, align 2
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx43 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr40 = getelementptr %struct.controlStr, %struct.controlStr* %0, i32 0, i32 5, i64 %for.loop.idx43
  %src.addr41 = getelementptr %struct.controlStr, %struct.controlStr* %1, i32 0, i32 5, i64 %for.loop.idx43
  %10 = load i8, i8* %src.addr41, align 1
  store i8 %10, i8* %dst.addr40, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx43, 1
  %exitcond44 = icmp ne i64 %for.loop.idx.next, 2
  br i1 %exitcond44, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop
  br label %for.loop9

for.loop9:                                        ; preds = %for.loop9, %copy.split
  %for.loop.idx1042 = phi i64 [ 0, %copy.split ], [ %for.loop.idx10.next, %for.loop9 ]
  %dst.addr1238 = getelementptr %struct.controlStr, %struct.controlStr* %0, i32 0, i32 6, i64 %for.loop.idx1042
  %src.addr1339 = getelementptr %struct.controlStr, %struct.controlStr* %1, i32 0, i32 6, i64 %for.loop.idx1042
  %11 = load float, float* %src.addr1339, align 4
  store float %11, float* %dst.addr1238, align 4
  %for.loop.idx10.next = add nuw nsw i64 %for.loop.idx1042, 1
  %exitcond = icmp ne i64 %for.loop.idx10.next, 8
  br i1 %exitcond, label %for.loop9, label %ret

ret:                                              ; preds = %for.loop9, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* noalias align 512, [16 x i8]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [16 x i8]* %0, null
  %3 = icmp eq [16 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x i8], [16 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [16 x i8], [16 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a16struct.OutcomeStr([16 x %struct.OutcomeStr]* noalias align 512, [16 x %struct.OutcomeStr]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [16 x %struct.OutcomeStr]* %0, null
  %3 = icmp eq [16 x %struct.OutcomeStr]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx36 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %src.addr.0.0.0.013 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %1, i64 0, i64 %for.loop.idx36, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.014 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %0, i64 0, i64 %for.loop.idx36, i32 0, i32 0, i32 0, i32 0
  %5 = load i8, i8* %src.addr.0.0.0.013, align 1
  store i8 %5, i8* %dst.addr.0.0.0.014, align 4
  %src.addr.1.0.0.021 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %1, i64 0, i64 %for.loop.idx36, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.022 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %0, i64 0, i64 %for.loop.idx36, i32 1, i32 0, i32 0, i32 0
  %6 = load i8, i8* %src.addr.1.0.0.021, align 1
  store i8 %6, i8* %dst.addr.1.0.0.022, align 1
  %src.addr.2.0.0.029 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %1, i64 0, i64 %for.loop.idx36, i32 2, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.030 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %0, i64 0, i64 %for.loop.idx36, i32 2, i32 0, i32 0, i32 0
  %7 = load i16, i16* %src.addr.2.0.0.029, align 2
  store i16 %7, i16* %dst.addr.2.0.0.030, align 2
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx335 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr533 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %0, i64 0, i64 %for.loop.idx36, i32 3, i64 %for.loop.idx335
  %src.addr634 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %1, i64 0, i64 %for.loop.idx36, i32 3, i64 %for.loop.idx335
  %8 = load float, float* %src.addr634, align 4
  store float %8, float* %dst.addr533, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx335, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx36, 1
  %exitcond37 = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond37, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.REGION_T(%struct.REGION_T* noalias align 512, %struct.REGION_T* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.REGION_T* %0, null
  %3 = icmp eq %struct.REGION_T* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx24 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr20 = getelementptr %struct.REGION_T, %struct.REGION_T* %0, i32 0, i32 0, i64 %for.loop.idx24
  %src.addr21 = getelementptr %struct.REGION_T, %struct.REGION_T* %1, i32 0, i32 0, i64 %for.loop.idx24
  %5 = load float, float* %src.addr21, align 4
  store float %5, float* %dst.addr20, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx24, 1
  %exitcond26 = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond26, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop
  br label %for.loop4

for.loop4:                                        ; preds = %for.loop4, %copy.split
  %for.loop.idx523 = phi i64 [ 0, %copy.split ], [ %for.loop.idx5.next, %for.loop4 ]
  %dst.addr718 = getelementptr %struct.REGION_T, %struct.REGION_T* %0, i32 0, i32 1, i64 %for.loop.idx523
  %src.addr819 = getelementptr %struct.REGION_T, %struct.REGION_T* %1, i32 0, i32 1, i64 %for.loop.idx523
  %6 = load float, float* %src.addr819, align 4
  store float %6, float* %dst.addr718, align 4
  %for.loop.idx5.next = add nuw nsw i64 %for.loop.idx523, 1
  %exitcond25 = icmp ne i64 %for.loop.idx5.next, 8
  br i1 %exitcond25, label %for.loop4, label %copy.split.split

copy.split.split:                                 ; preds = %for.loop4
  br label %for.loop11

for.loop11:                                       ; preds = %for.loop11, %copy.split.split
  %for.loop.idx1222 = phi i64 [ 0, %copy.split.split ], [ %for.loop.idx12.next, %for.loop11 ]
  %dst.addr1416 = getelementptr %struct.REGION_T, %struct.REGION_T* %0, i32 0, i32 2, i64 %for.loop.idx1222
  %src.addr1517 = getelementptr %struct.REGION_T, %struct.REGION_T* %1, i32 0, i32 2, i64 %for.loop.idx1222
  %7 = load float, float* %src.addr1517, align 4
  store float %7, float* %dst.addr1416, align 4
  %for.loop.idx12.next = add nuw nsw i64 %for.loop.idx1222, 1
  %exitcond = icmp ne i64 %for.loop.idx12.next, 8
  br i1 %exitcond, label %for.loop11, label %ret

ret:                                              ; preds = %for.loop11, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* noalias align 512, %"struct.ap_uint<8>"* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq %"struct.ap_uint<8>"* %0, null
  %3 = icmp eq %"struct.ap_uint<8>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<8>", %"struct.ap_uint<8>"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"struct.ap_uint<8>", %"struct.ap_uint<8>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i8, i8* %.0.0.04, align 1
  store i8 %5, i8* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.taskFailure(i16* noalias align 512, %struct.taskFailure* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i16* %0, null
  %3 = icmp eq %struct.taskFailure* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.0.07 = getelementptr %struct.taskFailure, %struct.taskFailure* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load i8, i8* %.0.0.0.07, align 1
  %6 = zext i8 %5 to i16
  %.1.0.0.013 = getelementptr %struct.taskFailure, %struct.taskFailure* %1, i32 0, i32 1, i32 0, i32 0, i32 0
  %7 = load i8, i8* %.1.0.0.013, align 1
  %8 = zext i8 %7 to i16
  %9 = shl i16 %8, 8
  %.partset = or i16 %9, %6
  store i16 %.partset, i16* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out(i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, %struct.controlStr* noalias, %struct.controlStr* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512, [16 x %struct.OutcomeStr]* noalias, [16 x %struct.OutcomeStr]* noalias readonly align 512, %struct.REGION_T* noalias, %struct.REGION_T* noalias readonly align 512, %"struct.ap_uint<8>"* noalias, %"struct.ap_uint<8>"* noalias readonly align 512, %struct.taskFailure* noalias, i16* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i8(i8* %0, i8* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %2, i8* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0struct.controlStr(%struct.controlStr* %4, %struct.controlStr* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* %6, [16 x i8]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a16struct.OutcomeStr([16 x %struct.OutcomeStr]* %8, [16 x %struct.OutcomeStr]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0struct.REGION_T(%struct.REGION_T* %10, %struct.REGION_T* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %12, %"struct.ap_uint<8>"* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0struct.taskFailure.206(%struct.taskFailure* %14, i16* align 512 %15)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.taskFailure.206(%struct.taskFailure* noalias, i16* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq %struct.taskFailure* %0, null
  %3 = icmp eq i16* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.0.08 = getelementptr %struct.taskFailure, %struct.taskFailure* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %1, align 512
  %.partselect1 = trunc i16 %5 to i8
  store i8 %.partselect1, i8* %.01.0.0.08, align 512
  %.12.0.0.014 = getelementptr %struct.taskFailure, %struct.taskFailure* %0, i32 0, i32 1, i32 0, i32 0, i32 0
  %6 = lshr i16 %5, 8
  %.partselect = trunc i16 %6 to i8
  store i8 %.partselect, i8* %.12.0.0.014, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_run_hw(i8*, i8*, %struct.controlStr*, i8*, %struct.OutcomeStr*, %struct.REGION_T*, %struct.REGION_T*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, i16*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(i8* noalias, i8* noalias readonly align 512, i8* noalias, i8* noalias readonly align 512, %struct.controlStr* noalias, %struct.controlStr* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512, [16 x %struct.OutcomeStr]* noalias, [16 x %struct.OutcomeStr]* noalias readonly align 512, %struct.REGION_T* noalias, %struct.REGION_T* noalias readonly align 512, %"struct.ap_uint<8>"* noalias, %"struct.ap_uint<8>"* noalias readonly align 512, %struct.taskFailure* noalias, i16* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i8(i8* %0, i8* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %2, i8* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* %6, [16 x i8]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a16struct.OutcomeStr([16 x %struct.OutcomeStr]* %8, [16 x %struct.OutcomeStr]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0struct.REGION_T(%struct.REGION_T* %10, %struct.REGION_T* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<8>"(%"struct.ap_uint<8>"* %12, %"struct.ap_uint<8>"* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0struct.taskFailure.206(%struct.taskFailure* %14, i16* align 512 %15)
  ret void
}

define void @run_hw_stub_wrapper(i8*, i8*, %struct.controlStr*, i8*, %struct.OutcomeStr*, %struct.REGION_T*, %struct.REGION_T*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, i16*) #4 {
entry:
  %11 = alloca %struct.taskFailure
  %12 = bitcast i8* %3 to [16 x i8]*
  %13 = bitcast %struct.OutcomeStr* %4 to [16 x %struct.OutcomeStr]*
  call void @copy_out(i8* null, i8* %0, i8* null, i8* %1, %struct.controlStr* null, %struct.controlStr* %2, [16 x i8]* null, [16 x i8]* %12, [16 x %struct.OutcomeStr]* null, [16 x %struct.OutcomeStr]* %13, %struct.REGION_T* null, %struct.REGION_T* %6, %"struct.ap_uint<8>"* null, %"struct.ap_uint<8>"* %9, %struct.taskFailure* %11, i16* %10)
  %14 = bitcast [16 x i8]* %12 to i8*
  %15 = bitcast [16 x %struct.OutcomeStr]* %13 to %struct.OutcomeStr*
  call void @run_hw_stub(i8* %0, i8* %1, %struct.controlStr* %2, i8* %14, %struct.OutcomeStr* %15, %struct.REGION_T* %5, %struct.REGION_T* %6, %"struct.ap_uint<8>"* %7, %"struct.ap_uint<8>"* %8, %"struct.ap_uint<8>"* %9, %struct.taskFailure* %11)
  call void @copy_in(i8* null, i8* %0, i8* null, i8* %1, %struct.controlStr* null, %struct.controlStr* %2, [16 x i8]* null, [16 x i8]* %12, [16 x %struct.OutcomeStr]* null, [16 x %struct.OutcomeStr]* %13, %struct.REGION_T* null, %struct.REGION_T* %6, %"struct.ap_uint<8>"* null, %"struct.ap_uint<8>"* %9, %struct.taskFailure* %11, i16* %10)
  ret void
}

declare void @run_hw_stub(i8*, i8*, %struct.controlStr*, i8*, %struct.OutcomeStr*, %struct.REGION_T*, %struct.REGION_T*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %struct.taskFailure*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
