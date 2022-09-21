; ModuleID = '/home/francesco/workspace/detector_solid/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.controlStr = type { %"struct.ap_int<2>", %"struct.ap_int<16>", %"struct.ap_int<8>" }
%"struct.ap_int<2>" = type { %"struct.ap_int_base<2, true>" }
%"struct.ap_int_base<2, true>" = type { %"struct.ssdm_int<2, true>" }
%"struct.ssdm_int<2, true>" = type { i2 }
%"struct.ap_int<16>" = type { %"struct.ap_int_base<16, true>" }
%"struct.ap_int_base<16, true>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"struct.ap_int<8>" = type { %"struct.ap_int_base<8, true>" }
%"struct.ap_int_base<8, true>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }
%struct.REGION_T = type { [8 x float], [8 x float], [8 x float] }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"class.hls::stream<ap_int<8>, 0>" = type { %"struct.ap_int<8>" }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_run_ir(%struct.controlStr* nocapture readonly %contr, [16 x %struct.REGION_T]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="128" %trainedRegions, %"struct.ap_int<8>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="128" %realcheckId, %"struct.ap_int<8>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="128" %n_regions_in, %"struct.ap_int<32>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="4104" %sharedMem, %"class.hls::stream<ap_int<8>, 0>"* noalias nocapture nonnull dereferenceable(1) %toScheduler) local_unnamed_addr #1 {
entry:
  %malloccall = tail call i8* @malloc(i64 196608)
  %trainedRegions_copy = bitcast i8* %malloccall to [128 x [16 x %struct.REGION_T]]*
  %realcheckId_copy = alloca [128 x %"struct.ap_int<8>"], align 512
  %n_regions_in_copy = alloca [128 x %"struct.ap_int<8>"], align 512
  %malloccall1 = tail call i8* @malloc(i64 16416)
  %sharedMem_copy = bitcast i8* %malloccall1 to [4104 x %"struct.ap_int<32>"]*
  %toScheduler_copy = alloca %"class.hls::stream<ap_int<8>, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<ap_int<8>, 0>"* %toScheduler_copy, i32 0) ]
  %0 = bitcast [16 x %struct.REGION_T]* %trainedRegions to [128 x [16 x %struct.REGION_T]]*
  %1 = bitcast %"struct.ap_int<8>"* %realcheckId to [128 x %"struct.ap_int<8>"]*
  %2 = bitcast %"struct.ap_int<8>"* %n_regions_in to [128 x %"struct.ap_int<8>"]*
  %3 = bitcast %"struct.ap_int<32>"* %sharedMem to [4104 x %"struct.ap_int<32>"]*
  call fastcc void @copy_in([128 x [16 x %struct.REGION_T]]* nonnull %0, [128 x [16 x %struct.REGION_T]]* %trainedRegions_copy, [128 x %"struct.ap_int<8>"]* nonnull %1, [128 x %"struct.ap_int<8>"]* nonnull align 512 %realcheckId_copy, [128 x %"struct.ap_int<8>"]* nonnull %2, [128 x %"struct.ap_int<8>"]* nonnull align 512 %n_regions_in_copy, [4104 x %"struct.ap_int<32>"]* nonnull %3, [4104 x %"struct.ap_int<32>"]* %sharedMem_copy, %"class.hls::stream<ap_int<8>, 0>"* nonnull %toScheduler, %"class.hls::stream<ap_int<8>, 0>"* nonnull align 512 %toScheduler_copy)
  %4 = getelementptr inbounds [128 x [16 x %struct.REGION_T]], [128 x [16 x %struct.REGION_T]]* %trainedRegions_copy, i32 0, i32 0
  %5 = getelementptr inbounds [128 x %"struct.ap_int<8>"], [128 x %"struct.ap_int<8>"]* %realcheckId_copy, i32 0, i32 0
  %6 = getelementptr inbounds [128 x %"struct.ap_int<8>"], [128 x %"struct.ap_int<8>"]* %n_regions_in_copy, i32 0, i32 0
  %7 = getelementptr inbounds [4104 x %"struct.ap_int<32>"], [4104 x %"struct.ap_int<32>"]* %sharedMem_copy, i32 0, i32 0
  call void @apatb_run_hw(%struct.controlStr* %contr, [16 x %struct.REGION_T]* %4, %"struct.ap_int<8>"* %5, %"struct.ap_int<8>"* %6, %"struct.ap_int<32>"* %7, %"class.hls::stream<ap_int<8>, 0>"* %toScheduler_copy)
  call void @copy_back([128 x [16 x %struct.REGION_T]]* %0, [128 x [16 x %struct.REGION_T]]* %trainedRegions_copy, [128 x %"struct.ap_int<8>"]* %1, [128 x %"struct.ap_int<8>"]* %realcheckId_copy, [128 x %"struct.ap_int<8>"]* %2, [128 x %"struct.ap_int<8>"]* %n_regions_in_copy, [4104 x %"struct.ap_int<32>"]* %3, [4104 x %"struct.ap_int<32>"]* %sharedMem_copy, %"class.hls::stream<ap_int<8>, 0>"* %toScheduler, %"class.hls::stream<ap_int<8>, 0>"* %toScheduler_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in([128 x [16 x %struct.REGION_T]]* noalias readonly, [128 x [16 x %struct.REGION_T]]* noalias, [128 x %"struct.ap_int<8>"]* noalias readonly, [128 x %"struct.ap_int<8>"]* noalias align 512, [128 x %"struct.ap_int<8>"]* noalias readonly, [128 x %"struct.ap_int<8>"]* noalias align 512, [4104 x %"struct.ap_int<32>"]* noalias readonly, [4104 x %"struct.ap_int<32>"]* noalias, %"class.hls::stream<ap_int<8>, 0>"* noalias, %"class.hls::stream<ap_int<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128a16struct.REGION_T([128 x [16 x %struct.REGION_T]]* %1, [128 x [16 x %struct.REGION_T]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<8>"([128 x %"struct.ap_int<8>"]* align 512 %3, [128 x %"struct.ap_int<8>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<8>"([128 x %"struct.ap_int<8>"]* align 512 %5, [128 x %"struct.ap_int<8>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a4104struct.ap_int<32>"([4104 x %"struct.ap_int<32>"]* %7, [4104 x %"struct.ap_int<32>"]* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<8>, 0>"(%"class.hls::stream<ap_int<8>, 0>"* align 512 %9, %"class.hls::stream<ap_int<8>, 0>"* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a128a16struct.REGION_T([128 x [16 x %struct.REGION_T]]* noalias, [128 x [16 x %struct.REGION_T]]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [128 x [16 x %struct.REGION_T]]* %0, null
  %3 = icmp eq [128 x [16 x %struct.REGION_T]]* %1, null
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
  %dst.addr1137 = getelementptr [128 x [16 x %struct.REGION_T]], [128 x [16 x %struct.REGION_T]]* %0, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 0, i64 %for.loop.idx939
  %src.addr1238 = getelementptr [128 x [16 x %struct.REGION_T]], [128 x [16 x %struct.REGION_T]]* %1, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 0, i64 %for.loop.idx939
  %5 = load float, float* %src.addr1238, align 4
  store float %5, float* %dst.addr1137, align 4
  %for.loop.idx9.next = add nuw nsw i64 %for.loop.idx939, 1
  %exitcond = icmp ne i64 %for.loop.idx9.next, 8
  br i1 %exitcond, label %for.loop8, label %for.loop2.split

for.loop2.split:                                  ; preds = %for.loop8
  br label %for.loop14

for.loop14:                                       ; preds = %for.loop14, %for.loop2.split
  %for.loop.idx1540 = phi i64 [ 0, %for.loop2.split ], [ %for.loop.idx15.next, %for.loop14 ]
  %dst.addr1735 = getelementptr [128 x [16 x %struct.REGION_T]], [128 x [16 x %struct.REGION_T]]* %0, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 1, i64 %for.loop.idx1540
  %src.addr1836 = getelementptr [128 x [16 x %struct.REGION_T]], [128 x [16 x %struct.REGION_T]]* %1, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 1, i64 %for.loop.idx1540
  %6 = load float, float* %src.addr1836, align 4
  store float %6, float* %dst.addr1735, align 4
  %for.loop.idx15.next = add nuw nsw i64 %for.loop.idx1540, 1
  %exitcond44 = icmp ne i64 %for.loop.idx15.next, 8
  br i1 %exitcond44, label %for.loop14, label %for.loop2.split.split

for.loop2.split.split:                            ; preds = %for.loop14
  br label %for.loop20

for.loop20:                                       ; preds = %for.loop20, %for.loop2.split.split
  %for.loop.idx2141 = phi i64 [ 0, %for.loop2.split.split ], [ %for.loop.idx21.next, %for.loop20 ]
  %dst.addr2333 = getelementptr [128 x [16 x %struct.REGION_T]], [128 x [16 x %struct.REGION_T]]* %0, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 2, i64 %for.loop.idx2141
  %src.addr2434 = getelementptr [128 x [16 x %struct.REGION_T]], [128 x [16 x %struct.REGION_T]]* %1, i64 0, i64 %for.loop.idx43, i64 %for.loop.idx342, i32 2, i64 %for.loop.idx2141
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
  %exitcond47 = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond47, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<8>"([128 x %"struct.ap_int<8>"]* noalias align 512, [128 x %"struct.ap_int<8>"]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [128 x %"struct.ap_int<8>"]* %0, null
  %3 = icmp eq [128 x %"struct.ap_int<8>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [128 x %"struct.ap_int<8>"], [128 x %"struct.ap_int<8>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [128 x %"struct.ap_int<8>"], [128 x %"struct.ap_int<8>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %5, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4104struct.ap_int<32>"([4104 x %"struct.ap_int<32>"]* noalias, [4104 x %"struct.ap_int<32>"]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [4104 x %"struct.ap_int<32>"]* %0, null
  %3 = icmp eq [4104 x %"struct.ap_int<32>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4104 x %"struct.ap_int<32>"], [4104 x %"struct.ap_int<32>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [4104 x %"struct.ap_int<32>"], [4104 x %"struct.ap_int<32>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %5, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4104
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<8>, 0>"(%"class.hls::stream<ap_int<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_int<8>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_int<8>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_int<8>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_int<8>, 0>"(%"class.hls::stream<ap_int<8>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_int<8>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_int<8>, 0>"(%"class.hls::stream<ap_int<8>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_int<8>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<ap_int<8>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_int<8>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_int<8>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_int<8>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_int<8>, 0>", %"class.hls::stream<ap_int<8>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_int<8>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_int<8>, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out([128 x [16 x %struct.REGION_T]]* noalias, [128 x [16 x %struct.REGION_T]]* noalias readonly, [128 x %"struct.ap_int<8>"]* noalias, [128 x %"struct.ap_int<8>"]* noalias readonly align 512, [128 x %"struct.ap_int<8>"]* noalias, [128 x %"struct.ap_int<8>"]* noalias readonly align 512, [4104 x %"struct.ap_int<32>"]* noalias, [4104 x %"struct.ap_int<32>"]* noalias readonly, %"class.hls::stream<ap_int<8>, 0>"* noalias, %"class.hls::stream<ap_int<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128a16struct.REGION_T([128 x [16 x %struct.REGION_T]]* %0, [128 x [16 x %struct.REGION_T]]* %1)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<8>"([128 x %"struct.ap_int<8>"]* %2, [128 x %"struct.ap_int<8>"]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a128struct.ap_int<8>"([128 x %"struct.ap_int<8>"]* %4, [128 x %"struct.ap_int<8>"]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a4104struct.ap_int<32>"([4104 x %"struct.ap_int<32>"]* %6, [4104 x %"struct.ap_int<32>"]* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<8>, 0>"(%"class.hls::stream<ap_int<8>, 0>"* %8, %"class.hls::stream<ap_int<8>, 0>"* align 512 %9)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_run_hw(%struct.controlStr*, [16 x %struct.REGION_T]*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<32>"*, %"class.hls::stream<ap_int<8>, 0>"*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back([128 x [16 x %struct.REGION_T]]* noalias, [128 x [16 x %struct.REGION_T]]* noalias readonly, [128 x %"struct.ap_int<8>"]* noalias, [128 x %"struct.ap_int<8>"]* noalias readonly align 512, [128 x %"struct.ap_int<8>"]* noalias, [128 x %"struct.ap_int<8>"]* noalias readonly align 512, [4104 x %"struct.ap_int<32>"]* noalias, [4104 x %"struct.ap_int<32>"]* noalias readonly, %"class.hls::stream<ap_int<8>, 0>"* noalias, %"class.hls::stream<ap_int<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a4104struct.ap_int<32>"([4104 x %"struct.ap_int<32>"]* %6, [4104 x %"struct.ap_int<32>"]* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_int<8>, 0>"(%"class.hls::stream<ap_int<8>, 0>"* %8, %"class.hls::stream<ap_int<8>, 0>"* align 512 %9)
  ret void
}

define void @run_hw_stub_wrapper(%struct.controlStr*, [16 x %struct.REGION_T]*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<32>"*, %"class.hls::stream<ap_int<8>, 0>"*) #7 {
entry:
  %6 = bitcast [16 x %struct.REGION_T]* %1 to [128 x [16 x %struct.REGION_T]]*
  %7 = bitcast %"struct.ap_int<8>"* %2 to [128 x %"struct.ap_int<8>"]*
  %8 = bitcast %"struct.ap_int<8>"* %3 to [128 x %"struct.ap_int<8>"]*
  %9 = bitcast %"struct.ap_int<32>"* %4 to [4104 x %"struct.ap_int<32>"]*
  call void @copy_out([128 x [16 x %struct.REGION_T]]* null, [128 x [16 x %struct.REGION_T]]* %6, [128 x %"struct.ap_int<8>"]* null, [128 x %"struct.ap_int<8>"]* %7, [128 x %"struct.ap_int<8>"]* null, [128 x %"struct.ap_int<8>"]* %8, [4104 x %"struct.ap_int<32>"]* null, [4104 x %"struct.ap_int<32>"]* %9, %"class.hls::stream<ap_int<8>, 0>"* null, %"class.hls::stream<ap_int<8>, 0>"* %5)
  %10 = bitcast [128 x [16 x %struct.REGION_T]]* %6 to [16 x %struct.REGION_T]*
  %11 = bitcast [128 x %"struct.ap_int<8>"]* %7 to %"struct.ap_int<8>"*
  %12 = bitcast [128 x %"struct.ap_int<8>"]* %8 to %"struct.ap_int<8>"*
  %13 = bitcast [4104 x %"struct.ap_int<32>"]* %9 to %"struct.ap_int<32>"*
  call void @run_hw_stub(%struct.controlStr* %0, [16 x %struct.REGION_T]* %10, %"struct.ap_int<8>"* %11, %"struct.ap_int<8>"* %12, %"struct.ap_int<32>"* %13, %"class.hls::stream<ap_int<8>, 0>"* %5)
  call void @copy_in([128 x [16 x %struct.REGION_T]]* null, [128 x [16 x %struct.REGION_T]]* %6, [128 x %"struct.ap_int<8>"]* null, [128 x %"struct.ap_int<8>"]* %7, [128 x %"struct.ap_int<8>"]* null, [128 x %"struct.ap_int<8>"]* %8, [4104 x %"struct.ap_int<32>"]* null, [4104 x %"struct.ap_int<32>"]* %9, %"class.hls::stream<ap_int<8>, 0>"* null, %"class.hls::stream<ap_int<8>, 0>"* %5)
  ret void
}

declare void @run_hw_stub(%struct.controlStr*, [16 x %struct.REGION_T]*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<32>"*, %"class.hls::stream<ap_int<8>, 0>"*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8" }

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
