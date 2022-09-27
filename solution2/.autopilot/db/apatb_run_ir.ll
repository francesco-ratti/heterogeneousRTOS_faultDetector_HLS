; ModuleID = '/home/francesco/workspace/detector_solid/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.OutcomeStr = type { %"struct.ap_uint<8>", %"struct.ap_uint<16>", [8 x float] }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"class.hls::stream<controlStr, 0>" = type { %struct.controlStr }
%struct.controlStr = type { %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.ap_uint<16>", %"struct.ap_uint<2>", [8 x float] }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%struct.REGION_T = type { [8 x float], [8 x float], [8 x float] }
%"class.hls::stream<ap_uint<8>, 0>" = type { %"struct.ap_uint<8>" }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_run_ir(i1* noalias nocapture nonnull "fpga.decayed.dim.hint"="16" %errorInTask, %struct.OutcomeStr* noalias nocapture nonnull "fpga.decayed.dim.hint"="16" %outcomeInRam, %"class.hls::stream<controlStr, 0>"* noalias nocapture nonnull dereferenceable(40) %testStream, %"class.hls::stream<controlStr, 0>"* noalias nocapture nonnull dereferenceable(40) %trainStream, [16 x %struct.REGION_T]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %trainedRegions, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %n_regions_in, %"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture nonnull dereferenceable(1) %toScheduler) local_unnamed_addr #1 {
entry:
  %errorInTask_copy = alloca [16 x i1], align 512
  %outcomeInRam_copy = alloca [16 x %struct.OutcomeStr], align 512
  %testStream_copy = alloca %"class.hls::stream<controlStr, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<controlStr, 0>"* %testStream_copy, i32 0) ]
  %trainStream_copy = alloca %"class.hls::stream<controlStr, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<controlStr, 0>"* %trainStream_copy, i32 0) ]
  %malloccall = tail call i8* @malloc(i64 98304)
  %trainedRegions_copy = bitcast i8* %malloccall to [64 x [16 x %struct.REGION_T]]*
  %n_regions_in_copy = alloca [64 x %"struct.ap_uint<8>"], align 512
  %toScheduler_copy = alloca %"class.hls::stream<ap_uint<8>, 0>", align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(%"class.hls::stream<ap_uint<8>, 0>"* %toScheduler_copy, i32 0) ]
  %0 = bitcast i1* %errorInTask to [16 x i1]*
  %1 = bitcast %struct.OutcomeStr* %outcomeInRam to [16 x %struct.OutcomeStr]*
  %2 = bitcast [16 x %struct.REGION_T]* %trainedRegions to [64 x [16 x %struct.REGION_T]]*
  %3 = bitcast %"struct.ap_uint<8>"* %n_regions_in to [64 x %"struct.ap_uint<8>"]*
  call fastcc void @copy_in([16 x i1]* nonnull %0, [16 x i1]* nonnull align 512 %errorInTask_copy, [16 x %struct.OutcomeStr]* nonnull %1, [16 x %struct.OutcomeStr]* nonnull align 512 %outcomeInRam_copy, %"class.hls::stream<controlStr, 0>"* nonnull %testStream, %"class.hls::stream<controlStr, 0>"* nonnull align 512 %testStream_copy, %"class.hls::stream<controlStr, 0>"* nonnull %trainStream, %"class.hls::stream<controlStr, 0>"* nonnull align 512 %trainStream_copy, [64 x [16 x %struct.REGION_T]]* nonnull %2, [64 x [16 x %struct.REGION_T]]* %trainedRegions_copy, [64 x %"struct.ap_uint<8>"]* nonnull %3, [64 x %"struct.ap_uint<8>"]* nonnull align 512 %n_regions_in_copy, %"class.hls::stream<ap_uint<8>, 0>"* nonnull %toScheduler, %"class.hls::stream<ap_uint<8>, 0>"* nonnull align 512 %toScheduler_copy)
  %4 = getelementptr inbounds [16 x i1], [16 x i1]* %errorInTask_copy, i32 0, i32 0
  %5 = getelementptr inbounds [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %outcomeInRam_copy, i32 0, i32 0
  %6 = getelementptr inbounds [64 x [16 x %struct.REGION_T]], [64 x [16 x %struct.REGION_T]]* %trainedRegions_copy, i32 0, i32 0
  %7 = getelementptr inbounds [64 x %"struct.ap_uint<8>"], [64 x %"struct.ap_uint<8>"]* %n_regions_in_copy, i32 0, i32 0
  call void @apatb_run_hw(i1* %4, %struct.OutcomeStr* %5, %"class.hls::stream<controlStr, 0>"* %testStream_copy, %"class.hls::stream<controlStr, 0>"* %trainStream_copy, [16 x %struct.REGION_T]* %6, %"struct.ap_uint<8>"* %7, %"class.hls::stream<ap_uint<8>, 0>"* %toScheduler_copy)
  call void @copy_back([16 x i1]* %0, [16 x i1]* %errorInTask_copy, [16 x %struct.OutcomeStr]* %1, [16 x %struct.OutcomeStr]* %outcomeInRam_copy, %"class.hls::stream<controlStr, 0>"* %testStream, %"class.hls::stream<controlStr, 0>"* %testStream_copy, %"class.hls::stream<controlStr, 0>"* %trainStream, %"class.hls::stream<controlStr, 0>"* %trainStream_copy, [64 x [16 x %struct.REGION_T]]* %2, [64 x [16 x %struct.REGION_T]]* %trainedRegions_copy, [64 x %"struct.ap_uint<8>"]* %3, [64 x %"struct.ap_uint<8>"]* %n_regions_in_copy, %"class.hls::stream<ap_uint<8>, 0>"* %toScheduler, %"class.hls::stream<ap_uint<8>, 0>"* %toScheduler_copy)
  tail call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([16 x i1]* noalias readonly, [16 x i1]* noalias align 512, [16 x %struct.OutcomeStr]* noalias readonly, [16 x %struct.OutcomeStr]* noalias align 512, %"class.hls::stream<controlStr, 0>"* noalias, %"class.hls::stream<controlStr, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<controlStr, 0>"* noalias, %"class.hls::stream<controlStr, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", [64 x [16 x %struct.REGION_T]]* noalias readonly, [64 x [16 x %struct.REGION_T]]* noalias, [64 x %"struct.ap_uint<8>"]* noalias readonly, [64 x %"struct.ap_uint<8>"]* noalias align 512, %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a16i1([16 x i1]* align 512 %1, [16 x i1]* %0)
  call fastcc void @onebyonecpy_hls.p0a16struct.OutcomeStr([16 x %struct.OutcomeStr]* align 512 %3, [16 x %struct.OutcomeStr]* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<controlStr, 0>"(%"class.hls::stream<controlStr, 0>"* align 512 %5, %"class.hls::stream<controlStr, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<controlStr, 0>"(%"class.hls::stream<controlStr, 0>"* align 512 %7, %"class.hls::stream<controlStr, 0>"* %6)
  call fastcc void @onebyonecpy_hls.p0a64a16struct.REGION_T([64 x [16 x %struct.REGION_T]]* %9, [64 x [16 x %struct.REGION_T]]* %8)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_uint<8>"([64 x %"struct.ap_uint<8>"]* align 512 %11, [64 x %"struct.ap_uint<8>"]* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* align 512 %13, %"class.hls::stream<ap_uint<8>, 0>"* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a16i1([16 x i1]* noalias align 512, [16 x i1]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [16 x i1]* %0, null
  %3 = icmp eq [16 x i1]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x i1], [16 x i1]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [16 x i1], [16 x i1]* %1, i64 0, i64 %for.loop.idx1
  %5 = bitcast i1* %src.addr to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a16struct.OutcomeStr([16 x %struct.OutcomeStr]* noalias align 512, [16 x %struct.OutcomeStr]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [16 x %struct.OutcomeStr]* %0, null
  %3 = icmp eq [16 x %struct.OutcomeStr]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx28 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %src.addr.0.0.0.013 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %1, i64 0, i64 %for.loop.idx28, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.014 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %0, i64 0, i64 %for.loop.idx28, i32 0, i32 0, i32 0, i32 0
  %5 = load i8, i8* %src.addr.0.0.0.013, align 1
  store i8 %5, i8* %dst.addr.0.0.0.014, align 4
  %src.addr.1.0.0.021 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %1, i64 0, i64 %for.loop.idx28, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.022 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %0, i64 0, i64 %for.loop.idx28, i32 1, i32 0, i32 0, i32 0
  %6 = load i16, i16* %src.addr.1.0.0.021, align 2
  store i16 %6, i16* %dst.addr.1.0.0.022, align 2
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx327 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr525 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %0, i64 0, i64 %for.loop.idx28, i32 2, i64 %for.loop.idx327
  %src.addr626 = getelementptr [16 x %struct.OutcomeStr], [16 x %struct.OutcomeStr]* %1, i64 0, i64 %for.loop.idx28, i32 2, i64 %for.loop.idx327
  %7 = load float, float* %src.addr626, align 4
  store float %7, float* %dst.addr525, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx327, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx28, 1
  %exitcond29 = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond29, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<controlStr, 0>"(%"class.hls::stream<controlStr, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<controlStr, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq %"class.hls::stream<controlStr, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<controlStr, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<controlStr, 0>"(%"class.hls::stream<controlStr, 0>"* nonnull align 512 %0, %"class.hls::stream<controlStr, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<controlStr, 0>"(%"class.hls::stream<controlStr, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<controlStr, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<controlStr, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<controlStr, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_40(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<controlStr, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<controlStr, 0>"* %1 to i8*
  call void @fpga_fifo_pop_40(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<controlStr, 0>", %"class.hls::stream<controlStr, 0>"* %2
  %8 = bitcast %"class.hls::stream<controlStr, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<controlStr, 0>"* %0 to i8*
  call void @fpga_fifo_push_40(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a64a16struct.REGION_T([64 x [16 x %struct.REGION_T]]* noalias, [64 x [16 x %struct.REGION_T]]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [64 x [16 x %struct.REGION_T]]* %0, null
  %3 = icmp eq [64 x [16 x %struct.REGION_T]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx43 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2.split.split.split, %for.loop
  %for.loop.idx342 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2.split.split.split ]
  br label %for.loop8

for.loop8:                                        ; preds = %for.loop8, %for.loop2
  %for.loop.idx939 = phi i64 [ 0, %for.loop2 ], [ %for.loop.idx9.next, %for.loop8 ]
  %dst.addr1137 = getelementptr [64 x [16 x %struct.REGION_T]], [64 x [16 x %struct.REGION_T]]* %0, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 0, i64 %for.loop.idx939
  %src.addr1238 = getelementptr [64 x [16 x %struct.REGION_T]], [64 x [16 x %struct.REGION_T]]* %1, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 0, i64 %for.loop.idx939
  %5 = load float, float* %src.addr1238, align 4
  store float %5, float* %dst.addr1137, align 4
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx939, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 8
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop2.split
  %for.loop.idx1540 = phi i64 [ 0, %for.loop2.split ], [ %for.loop.idx15.next, %for.loop14 ]
  %dst.addr1735 = getelementptr [64 x [16 x %struct.REGION_T]], [64 x [16 x %struct.REGION_T]]* %0, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 1, i64 %for.loop.idx1540
  %src.addr1836 = getelementptr [64 x [16 x %struct.REGION_T]], [64 x [16 x %struct.REGION_T]]* %1, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 1, i64 %for.loop.idx1540
  %6 = load float, float* %src.addr1836, align 4
  store float %6, float* %dst.addr1735, align 4
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1540, 1
  %exitcond44 = icmp ne i64 %for.loop.idx15.next, 8
  br i1 %exitcond44, label %for.loop14, label %for.loop2.split.split

for.loop2.split.split:                            ; preds = %for.loop14
  br label %for.loop20

for.loop20:                                       ; preds = %for.loop20, %for.loop2.split.split
  %for.loop.idx2141 = phi i64 [ 0, %for.loop2.split.split ], [ %for.loop.idx21.next, %for.loop20 ]
  %dst.addr2333 = getelementptr [64 x [16 x %struct.REGION_T]], [64 x [16 x %struct.REGION_T]]* %0, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 2, i64 %for.loop.idx2141
  %src.addr2434 = getelementptr [64 x [16 x %struct.REGION_T]], [64 x [16 x %struct.REGION_T]]* %1, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 2, i64 %for.loop.idx2141
  %7 = load float, float* %src.addr2434, align 4
  store float %7, float* %dst.addr2333, align 4
  %for.loop.idx21.next = add nuw nsw i64 %for.loop.idx2141, 1
  %exitcond45 = icmp ne i64 %for.loop.idx21.next, 8
  br i1 %exitcond45, label %for.loop20, label %for.loop2.split.split.split

for.loop2.split.split.split:                      ; preds = %for.loop20
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx342, 1
  %exitcond46 = icmp ne i64 %for.loop.idx3.next, 16
  br i1 %exitcond46, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2.split.split.split
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx43, 1
  %exitcond47 = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond47, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a64struct.ap_uint<8>"([64 x %"struct.ap_uint<8>"]* noalias align 512, [64 x %"struct.ap_uint<8>"]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [64 x %"struct.ap_uint<8>"]* %0, null
  %3 = icmp eq [64 x %"struct.ap_uint<8>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [64 x %"struct.ap_uint<8>"], [64 x %"struct.ap_uint<8>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [64 x %"struct.ap_uint<8>"], [64 x %"struct.ap_uint<8>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %5, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<8>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<8>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<8>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<8>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<8>, 0>", %"class.hls::stream<ap_uint<8>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([16 x i1]* noalias, [16 x i1]* noalias readonly align 512, [16 x %struct.OutcomeStr]* noalias, [16 x %struct.OutcomeStr]* noalias readonly align 512, %"class.hls::stream<controlStr, 0>"* noalias, %"class.hls::stream<controlStr, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<controlStr, 0>"* noalias, %"class.hls::stream<controlStr, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", [64 x [16 x %struct.REGION_T]]* noalias, [64 x [16 x %struct.REGION_T]]* noalias readonly, [64 x %"struct.ap_uint<8>"]* noalias, [64 x %"struct.ap_uint<8>"]* noalias readonly align 512, %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a16i1([16 x i1]* %0, [16 x i1]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a16struct.OutcomeStr([16 x %struct.OutcomeStr]* %2, [16 x %struct.OutcomeStr]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<controlStr, 0>"(%"class.hls::stream<controlStr, 0>"* %4, %"class.hls::stream<controlStr, 0>"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<controlStr, 0>"(%"class.hls::stream<controlStr, 0>"* %6, %"class.hls::stream<controlStr, 0>"* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a64a16struct.REGION_T([64 x [16 x %struct.REGION_T]]* %8, [64 x [16 x %struct.REGION_T]]* %9)
  call fastcc void @"onebyonecpy_hls.p0a64struct.ap_uint<8>"([64 x %"struct.ap_uint<8>"]* %10, [64 x %"struct.ap_uint<8>"]* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %12, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %13)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_run_hw(i1*, %struct.OutcomeStr*, %"class.hls::stream<controlStr, 0>"*, %"class.hls::stream<controlStr, 0>"*, [16 x %struct.REGION_T]*, %"struct.ap_uint<8>"*, %"class.hls::stream<ap_uint<8>, 0>"*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back([16 x i1]* noalias, [16 x i1]* noalias readonly align 512, [16 x %struct.OutcomeStr]* noalias, [16 x %struct.OutcomeStr]* noalias readonly align 512, %"class.hls::stream<controlStr, 0>"* noalias, %"class.hls::stream<controlStr, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<controlStr, 0>"* noalias, %"class.hls::stream<controlStr, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", [64 x [16 x %struct.REGION_T]]* noalias, [64 x [16 x %struct.REGION_T]]* noalias readonly, [64 x %"struct.ap_uint<8>"]* noalias, [64 x %"struct.ap_uint<8>"]* noalias readonly align 512, %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a16i1([16 x i1]* %0, [16 x i1]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a16struct.OutcomeStr([16 x %struct.OutcomeStr]* %2, [16 x %struct.OutcomeStr]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<controlStr, 0>"(%"class.hls::stream<controlStr, 0>"* %4, %"class.hls::stream<controlStr, 0>"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<controlStr, 0>"(%"class.hls::stream<controlStr, 0>"* %6, %"class.hls::stream<controlStr, 0>"* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %12, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %13)
  ret void
}

define void @run_hw_stub_wrapper(i1*, %struct.OutcomeStr*, %"class.hls::stream<controlStr, 0>"*, %"class.hls::stream<controlStr, 0>"*, [16 x %struct.REGION_T]*, %"struct.ap_uint<8>"*, %"class.hls::stream<ap_uint<8>, 0>"*) #7 {
entry:
  %7 = bitcast i1* %0 to [16 x i1]*
  %8 = bitcast %struct.OutcomeStr* %1 to [16 x %struct.OutcomeStr]*
  %9 = bitcast [16 x %struct.REGION_T]* %4 to [64 x [16 x %struct.REGION_T]]*
  %10 = bitcast %"struct.ap_uint<8>"* %5 to [64 x %"struct.ap_uint<8>"]*
  call void @copy_out([16 x i1]* null, [16 x i1]* %7, [16 x %struct.OutcomeStr]* null, [16 x %struct.OutcomeStr]* %8, %"class.hls::stream<controlStr, 0>"* null, %"class.hls::stream<controlStr, 0>"* %2, %"class.hls::stream<controlStr, 0>"* null, %"class.hls::stream<controlStr, 0>"* %3, [64 x [16 x %struct.REGION_T]]* null, [64 x [16 x %struct.REGION_T]]* %9, [64 x %"struct.ap_uint<8>"]* null, [64 x %"struct.ap_uint<8>"]* %10, %"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %6)
  %11 = bitcast [16 x i1]* %7 to i1*
  %12 = bitcast [16 x %struct.OutcomeStr]* %8 to %struct.OutcomeStr*
  %13 = bitcast [64 x [16 x %struct.REGION_T]]* %9 to [16 x %struct.REGION_T]*
  %14 = bitcast [64 x %"struct.ap_uint<8>"]* %10 to %"struct.ap_uint<8>"*
  call void @run_hw_stub(i1* %11, %struct.OutcomeStr* %12, %"class.hls::stream<controlStr, 0>"* %2, %"class.hls::stream<controlStr, 0>"* %3, [16 x %struct.REGION_T]* %13, %"struct.ap_uint<8>"* %14, %"class.hls::stream<ap_uint<8>, 0>"* %6)
  call void @copy_in([16 x i1]* null, [16 x i1]* %7, [16 x %struct.OutcomeStr]* null, [16 x %struct.OutcomeStr]* %8, %"class.hls::stream<controlStr, 0>"* null, %"class.hls::stream<controlStr, 0>"* %2, %"class.hls::stream<controlStr, 0>"* null, %"class.hls::stream<controlStr, 0>"* %3, [64 x [16 x %struct.REGION_T]]* null, [64 x [16 x %struct.REGION_T]]* %9, [64 x %"struct.ap_uint<8>"]* null, [64 x %"struct.ap_uint<8>"]* %10, %"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %6)
  ret void
}

declare void @run_hw_stub(i1*, %struct.OutcomeStr*, %"class.hls::stream<controlStr, 0>"*, %"class.hls::stream<controlStr, 0>"*, [16 x %struct.REGION_T]*, %"struct.ap_uint<8>"*, %"class.hls::stream<ap_uint<8>, 0>"*)

declare i1 @fpga_fifo_not_empty_40(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_40(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_40(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="320" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
