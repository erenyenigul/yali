; ModuleID = 'host/ir_O0/h264ref_ratectl.ll'
source_filename = "ratectl.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@THETA = constant double 1.363600e+00, align 8
@Switch = constant i32 0, align 4
@Iprev_bits = global i32 0, align 4
@Pprev_bits = global i32 0, align 4
@OMEGA = constant double 9.000000e-01, align 8
@img = external global %struct.ImageParameters*, align 8
@.str = private unnamed_addr constant [23 x i8] c"rc_alloc: img->MADofMB\00", align 1
@input = external global %struct.InputParameters*, align 8
@BUPFMAD = common global double* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"rc_alloc: img->BUPFMAD\00", align 1
@BUCFMAD = common global double* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"rc_alloc: img->BUCFMAD\00", align 1
@FCBUCFMAD = common global double* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"rc_alloc: img->FCBUCFMAD\00", align 1
@FCBUPFMAD = common global double* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"rc_alloc: img->FCBUPFMAD\00", align 1
@Xp = common global i32 0, align 4
@Xb = common global i32 0, align 4
@bit_rate = common global double 0.000000e+00, align 8
@frame_rate = common global double 0.000000e+00, align 8
@PreviousBit_Rate = common global double 0.000000e+00, align 8
@TotalNumberofBasicUnit = common global i32 0, align 4
@MINVALUE = common global double 0.000000e+00, align 8
@BufferSize = common global double 0.000000e+00, align 8
@CurrentBufferFullness = common global double 0.000000e+00, align 8
@GOPTargetBufferLevel = common global double 0.000000e+00, align 8
@InitialDelayOffset = common global double 0.000000e+00, align 8
@m_windowSize = common global i32 0, align 4
@MADm_windowSize = common global i32 0, align 4
@R = internal global i32 0, align 4
@GAMMAP = common global double 0.000000e+00, align 8
@BETAP = common global double 0.000000e+00, align 8
@PPreHeader = common global i32 0, align 4
@Pm_X1 = common global double 0.000000e+00, align 8
@Pm_X2 = common global double 0.000000e+00, align 8
@PMADPictureC1 = common global double 0.000000e+00, align 8
@PMADPictureC2 = common global double 0.000000e+00, align 8
@Pm_rgQp = common global [20 x double] zeroinitializer, align 16
@Pm_rgRp = common global [20 x double] zeroinitializer, align 16
@PPictureMAD = common global [21 x double] zeroinitializer, align 16
@PDuantQp = common global i32 0, align 4
@PAveHeaderBits1 = common global i32 0, align 4
@PAveHeaderBits3 = common global i32 0, align 4
@DDquant = common global i32 0, align 4
@MBPerRow = common global i32 0, align 4
@RC_MAX_QUANT = common global i32 0, align 4
@RC_MIN_QUANT = common global i32 0, align 4
@LowerBound = common global i64 0, align 8
@UpperBound1 = common global i64 0, align 8
@Np = internal global i32 0, align 4
@Nb = internal global i32 0, align 4
@GOPOverdue = common global i32 0, align 4
@TotalPFrame = common global i32 0, align 4
@MyInitialQp = common global i32 0, align 4
@PreviousQp2 = common global i32 0, align 4
@QPLastGOP = common global i32 0, align 4
@FrameQPBuffer = common global i32 0, align 4
@QPLastPFrame = common global i32 0, align 4
@FieldQPBuffer = common global i32 0, align 4
@PAverageQp = common global i32 0, align 4
@Pm_Qp = common global i32 0, align 4
@PAveFrameQP = common global i32 0, align 4
@PreviousQp1 = common global i32 0, align 4
@NumberofBFrames = common global i32 0, align 4
@TargetBufferLevel = common global double 0.000000e+00, align 8
@DeltaP = common global double 0.000000e+00, align 8
@Wp = common global double 0.000000e+00, align 8
@AWp = common global double 0.000000e+00, align 8
@AWb = common global double 0.000000e+00, align 8
@Wb = common global double 0.000000e+00, align 8
@T = common global i64 0, align 8
@T1 = common global i64 0, align 8
@UpperBound2 = common global i64 0, align 8
@T_field = internal global i32 0, align 4
@TotalFrameQP = common global i32 0, align 4
@NumberofBasicUnit = common global i32 0, align 4
@bits_topfield = internal global i32 0, align 4
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@m_Qc = common global i32 0, align 4
@Pm_Hp = common global i32 0, align 4
@active_sps = external global %struct.seq_parameter_set_rbsp_t*, align 8
@m_X1 = common global double 0.000000e+00, align 8
@m_X2 = common global double 0.000000e+00, align 8
@m_Hp = common global i32 0, align 4
@m_Qp = common global i32 0, align 4
@DuantQp = common global i32 0, align 4
@MADPictureC1 = common global double 0.000000e+00, align 8
@MADPictureC2 = common global double 0.000000e+00, align 8
@PreviousPictureMAD = common global double 0.000000e+00, align 8
@CurrentFrameMAD = common global double 0.000000e+00, align 8
@m_Qstep = common global double 0.000000e+00, align 8
@PAveHeaderBits2 = common global i32 0, align 4
@FrameAveHeaderBits = common global i32 0, align 4
@FieldAveHeaderBits = common global i32 0, align 4
@TotalBasicUnitBits = common global i32 0, align 4
@TotalBUMAD = common global double 0.000000e+00, align 8
@CurrentBUMAD = common global double 0.000000e+00, align 8
@CodedBasicUnit = common global i32 0, align 4
@m_rgQp = common global [21 x double] zeroinitializer, align 16
@m_rgRp = common global [21 x double] zeroinitializer, align 16
@PreviousFrameMAD = common global double 0.000000e+00, align 8
@m_rgRejected = common global [21 x i32] zeroinitializer, align 16
@PictureMAD = common global [21 x double] zeroinitializer, align 16
@ReferenceMAD = common global [21 x double] zeroinitializer, align 16
@PictureRejected = common global [21 x i32] zeroinitializer, align 16
@QP2Qstep.QP2QSTEP = internal constant [6 x double] [double 6.250000e-01, double 6.875000e-01, double 8.125000e-01, double 8.750000e-01, double 1.000000e+00, double 1.125000e+00], align 16
@PreAveMBHeader = common global i32 0, align 4
@CurAveMBHeader = common global i32 0, align 4
@AverageMADPreviousFrame = common global double 0.000000e+00, align 8
@diffyy = common global [16 x [16 x i32]] zeroinitializer, align 16
@diffy8 = common global [16 x [16 x i32]] zeroinitializer, align 16
@BitRate = common global %struct._IO_FILE* null, align 8

; Function Attrs: noinline nounwind uwtable
define void @rc_alloc() #0 {
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 111
  %3 = load i32, i32* %2, align 8
  %4 = zext i32 %3 to i64
  %5 = call noalias i8* @calloc(i64 %4, i64 8) #4
  %6 = bitcast i8* %5 to double*
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 131
  store double* %6, double** %8, align 8
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 131
  %11 = load double*, double** %10, align 8
  %12 = icmp eq double* null, %11
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %0
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %0
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 111
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %19 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %18, i32 0, i32 130
  %20 = load i32, i32* %19, align 8
  %21 = udiv i32 %17, %20
  %22 = zext i32 %21 to i64
  %23 = call noalias i8* @calloc(i64 %22, i64 8) #4
  %24 = bitcast i8* %23 to double*
  store double* %24, double** @BUPFMAD, align 8
  %25 = load double*, double** @BUPFMAD, align 8
  %26 = icmp eq double* null, %25
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %14
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %28

; <label>:28:                                     ; preds = %27, %14
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %30 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 111
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %33 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %32, i32 0, i32 130
  %34 = load i32, i32* %33, align 8
  %35 = udiv i32 %31, %34
  %36 = zext i32 %35 to i64
  %37 = call noalias i8* @calloc(i64 %36, i64 8) #4
  %38 = bitcast i8* %37 to double*
  store double* %38, double** @BUCFMAD, align 8
  %39 = load double*, double** @BUCFMAD, align 8
  %40 = icmp eq double* null, %39
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %28
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %42

; <label>:42:                                     ; preds = %41, %28
  %43 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %43, i32 0, i32 111
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 130
  %48 = load i32, i32* %47, align 8
  %49 = udiv i32 %45, %48
  %50 = zext i32 %49 to i64
  %51 = call noalias i8* @calloc(i64 %50, i64 8) #4
  %52 = bitcast i8* %51 to double*
  store double* %52, double** @FCBUCFMAD, align 8
  %53 = load double*, double** @FCBUCFMAD, align 8
  %54 = icmp eq double* null, %53
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %42
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %56

; <label>:56:                                     ; preds = %55, %42
  %57 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %58 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %57, i32 0, i32 111
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %61 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 130
  %62 = load i32, i32* %61, align 8
  %63 = udiv i32 %59, %62
  %64 = zext i32 %63 to i64
  %65 = call noalias i8* @calloc(i64 %64, i64 8) #4
  %66 = bitcast i8* %65 to double*
  store double* %66, double** @FCBUPFMAD, align 8
  %67 = load double*, double** @FCBUPFMAD, align 8
  %68 = icmp eq double* null, %67
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %56
  call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  br label %70

; <label>:70:                                     ; preds = %69, %56
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

; Function Attrs: noinline nounwind uwtable
define void @rc_free() #0 {
  %1 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %2 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1, i32 0, i32 131
  %3 = load double*, double** %2, align 8
  %4 = icmp ne double* null, %3
  br i1 %4, label %5, label %12

; <label>:5:                                      ; preds = %0
  %6 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %6, i32 0, i32 131
  %8 = load double*, double** %7, align 8
  %9 = bitcast double* %8 to i8*
  call void @free(i8* %9) #4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 131
  store double* null, double** %11, align 8
  br label %12

; <label>:12:                                     ; preds = %5, %0
  %13 = load double*, double** @BUPFMAD, align 8
  %14 = icmp ne double* null, %13
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %12
  %16 = load double*, double** @BUPFMAD, align 8
  %17 = bitcast double* %16 to i8*
  call void @free(i8* %17) #4
  store double* null, double** @BUPFMAD, align 8
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = load double*, double** @BUCFMAD, align 8
  %20 = icmp ne double* null, %19
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load double*, double** @BUCFMAD, align 8
  %23 = bitcast double* %22 to i8*
  call void @free(i8* %23) #4
  store double* null, double** @BUCFMAD, align 8
  br label %24

; <label>:24:                                     ; preds = %21, %18
  %25 = load double*, double** @FCBUCFMAD, align 8
  %26 = icmp ne double* null, %25
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %24
  %28 = load double*, double** @FCBUCFMAD, align 8
  %29 = bitcast double* %28 to i8*
  call void @free(i8* %29) #4
  store double* null, double** @FCBUCFMAD, align 8
  br label %30

; <label>:30:                                     ; preds = %27, %24
  %31 = load double*, double** @FCBUPFMAD, align 8
  %32 = icmp ne double* null, %31
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %30
  %34 = load double*, double** @FCBUPFMAD, align 8
  %35 = bitcast double* %34 to i8*
  call void @free(i8* %35) #4
  store double* null, double** @FCBUPFMAD, align 8
  br label %36

; <label>:36:                                     ; preds = %33, %30
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @rc_init_seq() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* @Xp, align 4
  store i32 0, i32* @Xb, align 4
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 128
  %9 = load i32, i32* %8, align 8
  %10 = sitofp i32 %9 to double
  store double %10, double* @bit_rate, align 8
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 12
  %13 = load float, float* %12, align 8
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %15 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 34
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = sitofp i32 %17 to float
  %19 = fmul float %13, %18
  %20 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %21 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = sitofp i32 %23 to float
  %25 = fdiv float %19, %24
  %26 = fpext float %25 to double
  store double %26, double* @frame_rate, align 8
  %27 = load double, double* @bit_rate, align 8
  store double %27, double* @PreviousBit_Rate, align 8
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = sdiv i32 %34, 256
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 136
  store i32 %35, i32* %37, align 8
  %38 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %39 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %38, i32 0, i32 130
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 136
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %51

; <label>:45:                                     ; preds = %0
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 136
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %50 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 130
  store i32 %48, i32* %50, align 8
  br label %51

; <label>:51:                                     ; preds = %45, %0
  %52 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %53 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %52, i32 0, i32 130
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 136
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %67

; <label>:59:                                     ; preds = %51
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 136
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %64 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %63, i32 0, i32 130
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %62, %65
  store i32 %66, i32* @TotalNumberofBasicUnit, align 4
  br label %67

; <label>:67:                                     ; preds = %59, %51
  store double 4.000000e+00, double* @MINVALUE, align 8
  %68 = load double, double* @bit_rate, align 8
  %69 = fmul double %68, 2.560000e+00
  store double %69, double* @BufferSize, align 8
  store double 0.000000e+00, double* @CurrentBufferFullness, align 8
  %70 = load double, double* @CurrentBufferFullness, align 8
  store double %70, double* @GOPTargetBufferLevel, align 8
  %71 = load double, double* @BufferSize, align 8
  %72 = fmul double %71, 8.000000e-01
  store double %72, double* @InitialDelayOffset, align 8
  store i32 0, i32* @m_windowSize, align 4
  store i32 0, i32* @MADm_windowSize, align 4
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %74 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 126
  store i32 0, i32* %74, align 8
  %75 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %76 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %75, i32 0, i32 127
  store i32 0, i32* %76, align 4
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %78 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 128
  store i32 0, i32* %78, align 8
  store i32 0, i32* @R, align 4
  %79 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %80 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %79, i32 0, i32 34
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %67
  store double 2.500000e-01, double* @GAMMAP, align 8
  store double 9.000000e-01, double* @BETAP, align 8
  br label %85

; <label>:84:                                     ; preds = %67
  store double 5.000000e-01, double* @GAMMAP, align 8
  store double 5.000000e-01, double* @BETAP, align 8
  br label %85

; <label>:85:                                     ; preds = %84, %83
  store i32 0, i32* @PPreHeader, align 4
  %86 = load double, double* @bit_rate, align 8
  %87 = fmul double %86, 1.000000e+00
  store double %87, double* @Pm_X1, align 8
  store double 0.000000e+00, double* @Pm_X2, align 8
  store double 1.000000e+00, double* @PMADPictureC1, align 8
  store double 0.000000e+00, double* @PMADPictureC2, align 8
  store i32 0, i32* %6, align 4
  br label %88

; <label>:88:                                     ; preds = %101, %85
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 20
  br i1 %90, label %91, label %104

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgQp, i64 0, i64 %93
  store double 0.000000e+00, double* %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgRp, i64 0, i64 %96
  store double 0.000000e+00, double* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [21 x double], [21 x double]* @PPictureMAD, i64 0, i64 %99
  store double 0.000000e+00, double* %100, align 8
  br label %101

; <label>:101:                                    ; preds = %91
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %88

; <label>:104:                                    ; preds = %88
  store double 0.000000e+00, double* getelementptr inbounds ([21 x double], [21 x double]* @PPictureMAD, i64 0, i64 20), align 16
  store i32 2, i32* @PDuantQp, align 4
  store i32 0, i32* @PAveHeaderBits1, align 4
  store i32 0, i32* @PAveHeaderBits3, align 4
  %105 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %106 = icmp sge i32 %105, 9
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %104
  store i32 1, i32* @DDquant, align 4
  br label %109

; <label>:108:                                    ; preds = %104
  store i32 2, i32* @DDquant, align 4
  br label %109

; <label>:109:                                    ; preds = %108, %107
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %111 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 13
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %112, 16
  store i32 %113, i32* @MBPerRow, align 4
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %115 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 134
  store i32 0, i32* %115, align 8
  store i32 51, i32* @RC_MAX_QUANT, align 4
  store i32 0, i32* @RC_MIN_QUANT, align 4
  %116 = load double, double* @bit_rate, align 8
  %117 = fmul double 1.000000e+00, %116
  %118 = load double, double* @frame_rate, align 8
  %119 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %120 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %119, i32 0, i32 13
  %121 = load i32, i32* %120, align 4
  %122 = sitofp i32 %121 to double
  %123 = fmul double %118, %122
  %124 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %125 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %124, i32 0, i32 15
  %126 = load i32, i32* %125, align 4
  %127 = sitofp i32 %126 to double
  %128 = fmul double %123, %127
  %129 = fdiv double %117, %128
  store double %129, double* %4, align 8
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %131 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 13
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 176
  br i1 %133, label %134, label %135

; <label>:134:                                    ; preds = %109
  store double 1.000000e-01, double* %1, align 8
  store double 3.000000e-01, double* %2, align 8
  store double 6.000000e-01, double* %3, align 8
  br label %143

; <label>:135:                                    ; preds = %109
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 352
  br i1 %139, label %140, label %141

; <label>:140:                                    ; preds = %135
  store double 2.000000e-01, double* %1, align 8
  store double 6.000000e-01, double* %2, align 8
  store double 1.200000e+00, double* %3, align 8
  br label %142

; <label>:141:                                    ; preds = %135
  store double 6.000000e-01, double* %1, align 8
  store double 1.400000e+00, double* %2, align 8
  store double 2.400000e+00, double* %3, align 8
  br label %142

; <label>:142:                                    ; preds = %141, %140
  br label %143

; <label>:143:                                    ; preds = %142, %134
  %144 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %145 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %144, i32 0, i32 129
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %170

; <label>:148:                                    ; preds = %143
  %149 = load double, double* %4, align 8
  %150 = load double, double* %1, align 8
  %151 = fcmp ole double %149, %150
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %148
  store i32 35, i32* %5, align 4
  br label %166

; <label>:153:                                    ; preds = %148
  %154 = load double, double* %4, align 8
  %155 = load double, double* %2, align 8
  %156 = fcmp ole double %154, %155
  br i1 %156, label %157, label %158

; <label>:157:                                    ; preds = %153
  store i32 25, i32* %5, align 4
  br label %165

; <label>:158:                                    ; preds = %153
  %159 = load double, double* %4, align 8
  %160 = load double, double* %3, align 8
  %161 = fcmp ole double %159, %160
  br i1 %161, label %162, label %163

; <label>:162:                                    ; preds = %158
  store i32 20, i32* %5, align 4
  br label %164

; <label>:163:                                    ; preds = %158
  store i32 10, i32* %5, align 4
  br label %164

; <label>:164:                                    ; preds = %163, %162
  br label %165

; <label>:165:                                    ; preds = %164, %157
  br label %166

; <label>:166:                                    ; preds = %165, %152
  %167 = load i32, i32* %5, align 4
  %168 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %169 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %168, i32 0, i32 129
  store i32 %167, i32* %169, align 4
  br label %170

; <label>:170:                                    ; preds = %166, %143
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @rc_init_GOP(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @R, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 1, i32* %5, align 4
  br label %13

; <label>:13:                                     ; preds = %12, %2
  %14 = load i32, i32* @R, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @R, align 4
  %17 = sitofp i32 %16 to double
  %18 = load double, double* @bit_rate, align 8
  %19 = load double, double* @frame_rate, align 8
  %20 = fdiv double %18, %19
  %21 = fadd double %17, %20
  %22 = fptosi double %21 to i64
  store i64 %22, i64* @LowerBound, align 8
  %23 = load i32, i32* @R, align 4
  %24 = sitofp i32 %23 to double
  %25 = load double, double* @InitialDelayOffset, align 8
  %26 = fadd double %24, %25
  %27 = fptosi double %26 to i64
  store i64 %27, i64* @UpperBound1, align 8
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 1, %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %29, %30
  %32 = sitofp i32 %31 to double
  %33 = load double, double* @bit_rate, align 8
  %34 = fmul double %32, %33
  %35 = load double, double* @frame_rate, align 8
  %36 = fdiv double %34, %35
  %37 = fadd double %36, 5.000000e-01
  %38 = call double @floor(double %37) #5
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @R, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* @R, align 4
  %43 = load i32, i32* %3, align 4
  store i32 %43, i32* @Np, align 4
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* @Nb, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 8, %45
  %47 = load i32, i32* %8, align 4
  %48 = sdiv i32 %46, %47
  %49 = sitofp i32 %48 to double
  %50 = fadd double %49, 5.000000e-01
  %51 = fptosi double %50 to i32
  store i32 %51, i32* %7, align 4
  store i32 0, i32* @GOPOverdue, align 4
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %53 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 137
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %3, align 4
  store i32 %54, i32* @TotalPFrame, align 4
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 128
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %60 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %59, i32 0, i32 128
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %70

; <label>:63:                                     ; preds = %13
  %64 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %65 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %64, i32 0, i32 129
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* @MyInitialQp, align 4
  %67 = load i32, i32* @MyInitialQp, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* @PreviousQp2, align 4
  %69 = load i32, i32* @MyInitialQp, align 4
  store i32 %69, i32* @QPLastGOP, align 4
  br label %184

; <label>:70:                                     ; preds = %13
  %71 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %72 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %71, i32 0, i32 91
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %80, label %75

; <label>:75:                                     ; preds = %70
  %76 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %77 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %76, i32 0, i32 92
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

; <label>:80:                                     ; preds = %75, %70
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 135
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %92

; <label>:85:                                     ; preds = %80
  %86 = load i32, i32* @FrameQPBuffer, align 4
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %88 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 129
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %91, i32* @QPLastPFrame, align 4
  br label %99

; <label>:92:                                     ; preds = %80
  %93 = load i32, i32* @FieldQPBuffer, align 4
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %95 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 129
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %98, i32* @QPLastPFrame, align 4
  br label %99

; <label>:99:                                     ; preds = %92, %85
  br label %100

; <label>:100:                                    ; preds = %99, %75
  %101 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %101, i32 0, i32 129
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to double
  %105 = fmul double 1.000000e+00, %104
  %106 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %107 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %106, i32 0, i32 130
  %108 = load i32, i32* %107, align 8
  %109 = sitofp i32 %108 to double
  %110 = fdiv double %105, %109
  %111 = fadd double %110, 5.000000e-01
  %112 = fptosi double %111 to i32
  store i32 %112, i32* @PAverageQp, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %113, %114
  %116 = add nsw i32 %115, 1
  %117 = sitofp i32 %116 to double
  %118 = fmul double 1.000000e+00, %117
  %119 = fdiv double %118, 1.500000e+01
  %120 = fadd double 5.000000e-01, %119
  %121 = fptosi double %120 to i32
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp sgt i32 %122, 2
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %100
  store i32 2, i32* %9, align 4
  br label %125

; <label>:125:                                    ; preds = %124, %100
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @PAverageQp, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* @PAverageQp, align 4
  %129 = load i32, i32* @PAverageQp, align 4
  %130 = load i32, i32* @QPLastPFrame, align 4
  %131 = sub nsw i32 %130, 2
  %132 = icmp sgt i32 %129, %131
  br i1 %132, label %133, label %136

; <label>:133:                                    ; preds = %125
  %134 = load i32, i32* @PAverageQp, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* @PAverageQp, align 4
  br label %136

; <label>:136:                                    ; preds = %133, %125
  %137 = load i32, i32* @QPLastGOP, align 4
  %138 = sub nsw i32 %137, 2
  %139 = load i32, i32* @PAverageQp, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %143

; <label>:141:                                    ; preds = %136
  %142 = load i32, i32* @PAverageQp, align 4
  br label %146

; <label>:143:                                    ; preds = %136
  %144 = load i32, i32* @QPLastGOP, align 4
  %145 = sub nsw i32 %144, 2
  br label %146

; <label>:146:                                    ; preds = %143, %141
  %147 = phi i32 [ %142, %141 ], [ %145, %143 ]
  store i32 %147, i32* @PAverageQp, align 4
  %148 = load i32, i32* @QPLastGOP, align 4
  %149 = add nsw i32 %148, 2
  %150 = load i32, i32* @PAverageQp, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %155

; <label>:152:                                    ; preds = %146
  %153 = load i32, i32* @QPLastGOP, align 4
  %154 = add nsw i32 %153, 2
  br label %157

; <label>:155:                                    ; preds = %146
  %156 = load i32, i32* @PAverageQp, align 4
  br label %157

; <label>:157:                                    ; preds = %155, %152
  %158 = phi i32 [ %154, %152 ], [ %156, %155 ]
  store i32 %158, i32* @PAverageQp, align 4
  %159 = load i32, i32* @RC_MAX_QUANT, align 4
  %160 = load i32, i32* @PAverageQp, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %164

; <label>:162:                                    ; preds = %157
  %163 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %166

; <label>:164:                                    ; preds = %157
  %165 = load i32, i32* @PAverageQp, align 4
  br label %166

; <label>:166:                                    ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  store i32 %167, i32* @PAverageQp, align 4
  %168 = load i32, i32* @RC_MIN_QUANT, align 4
  %169 = load i32, i32* @PAverageQp, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %173

; <label>:171:                                    ; preds = %166
  %172 = load i32, i32* @PAverageQp, align 4
  br label %175

; <label>:173:                                    ; preds = %166
  %174 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %175

; <label>:175:                                    ; preds = %173, %171
  %176 = phi i32 [ %172, %171 ], [ %174, %173 ]
  store i32 %176, i32* @PAverageQp, align 4
  %177 = load i32, i32* @PAverageQp, align 4
  store i32 %177, i32* @MyInitialQp, align 4
  %178 = load i32, i32* @MyInitialQp, align 4
  store i32 %178, i32* @QPLastGOP, align 4
  %179 = load i32, i32* @PAverageQp, align 4
  store i32 %179, i32* @Pm_Qp, align 4
  %180 = load i32, i32* @PAverageQp, align 4
  store i32 %180, i32* @PAveFrameQP, align 4
  %181 = load i32, i32* @PreviousQp2, align 4
  store i32 %181, i32* @PreviousQp1, align 4
  %182 = load i32, i32* @MyInitialQp, align 4
  %183 = sub nsw i32 %182, 1
  store i32 %183, i32* @PreviousQp2, align 4
  br label %184

; <label>:184:                                    ; preds = %175, %63
  %185 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %186 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %185, i32 0, i32 129
  store i32 0, i32* %186, align 4
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %188 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 130
  store i32 0, i32* %188, align 8
  store i32 0, i32* @NumberofBFrames, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: noinline nounwind uwtable
define void @rc_init_pict(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 92
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

; <label>:12:                                     ; preds = %3
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 136
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 139
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %15, %18
  store i32 %19, i32* @TotalNumberofBasicUnit, align 4
  br label %20

; <label>:20:                                     ; preds = %12, %3
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 138
  store i32 0, i32* %22, align 8
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %24 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 131
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %44

; <label>:27:                                     ; preds = %20
  %28 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %29 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %28, i32 0, i32 127
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 58
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %27
  %33 = load double, double* @bit_rate, align 8
  %34 = fmul double %33, 1.500000e+00
  store double %34, double* @bit_rate, align 8
  br label %43

; <label>:35:                                     ; preds = %27
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 127
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 59
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %35
  %41 = load double, double* @bit_rate, align 8
  store double %41, double* @PreviousBit_Rate, align 8
  br label %42

; <label>:42:                                     ; preds = %40, %35
  br label %43

; <label>:43:                                     ; preds = %42, %32
  br label %44

; <label>:44:                                     ; preds = %43, %20
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %633

; <label>:50:                                     ; preds = %47, %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %633

; <label>:53:                                     ; preds = %50
  %54 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %55 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %395 [
    i32 0, label %57
    i32 1, label %322
  ]

; <label>:57:                                     ; preds = %53
  %58 = load double, double* @PreviousBit_Rate, align 8
  %59 = load double, double* @bit_rate, align 8
  %60 = fcmp une double %58, %59
  br i1 %60, label %61, label %77

; <label>:61:                                     ; preds = %57
  %62 = load double, double* @bit_rate, align 8
  %63 = load double, double* @PreviousBit_Rate, align 8
  %64 = fsub double %62, %63
  %65 = load i32, i32* @Np, align 4
  %66 = load i32, i32* @Nb, align 4
  %67 = add nsw i32 %65, %66
  %68 = sitofp i32 %67 to double
  %69 = fmul double %64, %68
  %70 = load double, double* @frame_rate, align 8
  %71 = fdiv double %69, %70
  %72 = fadd double %71, 5.000000e-01
  %73 = call double @floor(double %72) #5
  %74 = fptosi double %73 to i32
  %75 = load i32, i32* @R, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* @R, align 4
  br label %77

; <label>:77:                                     ; preds = %61, %57
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %79 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 139
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %82 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 136
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %113

; <label>:85:                                     ; preds = %77
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %87 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 130
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %102

; <label>:90:                                     ; preds = %85
  %91 = load double, double* @CurrentBufferFullness, align 8
  store double %91, double* @TargetBufferLevel, align 8
  %92 = load double, double* @CurrentBufferFullness, align 8
  %93 = load double, double* @GOPTargetBufferLevel, align 8
  %94 = fsub double %92, %93
  %95 = load i32, i32* @TotalPFrame, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sitofp i32 %96 to double
  %98 = fdiv double %94, %97
  store double %98, double* @DeltaP, align 8
  %99 = load double, double* @DeltaP, align 8
  %100 = load double, double* @TargetBufferLevel, align 8
  %101 = fsub double %100, %99
  store double %101, double* @TargetBufferLevel, align 8
  br label %112

; <label>:102:                                    ; preds = %85
  %103 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %104 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %103, i32 0, i32 130
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %111

; <label>:107:                                    ; preds = %102
  %108 = load double, double* @DeltaP, align 8
  %109 = load double, double* @TargetBufferLevel, align 8
  %110 = fsub double %109, %108
  store double %110, double* @TargetBufferLevel, align 8
  br label %111

; <label>:111:                                    ; preds = %107, %102
  br label %112

; <label>:112:                                    ; preds = %111, %90
  br label %239

; <label>:113:                                    ; preds = %77
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %115 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 127
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %172

; <label>:118:                                    ; preds = %113
  %119 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %120 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %119, i32 0, i32 91
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %128, label %123

; <label>:123:                                    ; preds = %118
  %124 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %125 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %124, i32 0, i32 92
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %152

; <label>:128:                                    ; preds = %123, %118
  %129 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %130 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %129, i32 0, i32 134
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %152

; <label>:133:                                    ; preds = %128
  store i32 0, i32* %7, align 4
  br label %134

; <label>:134:                                    ; preds = %148, %133
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %151

; <label>:138:                                    ; preds = %134
  %139 = load double*, double** @FCBUCFMAD, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds double, double* %139, i64 %141
  %143 = load double, double* %142, align 8
  %144 = load double*, double** @FCBUPFMAD, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %144, i64 %146
  store double %143, double* %147, align 8
  br label %148

; <label>:148:                                    ; preds = %138
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %134

; <label>:151:                                    ; preds = %134
  br label %171

; <label>:152:                                    ; preds = %128, %123
  store i32 0, i32* %7, align 4
  br label %153

; <label>:153:                                    ; preds = %167, %152
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %170

; <label>:157:                                    ; preds = %153
  %158 = load double*, double** @BUCFMAD, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %158, i64 %160
  %162 = load double, double* %161, align 8
  %163 = load double*, double** @BUPFMAD, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %163, i64 %165
  store double %162, double* %166, align 8
  br label %167

; <label>:167:                                    ; preds = %157
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %153

; <label>:170:                                    ; preds = %153
  br label %171

; <label>:171:                                    ; preds = %170, %151
  br label %172

; <label>:172:                                    ; preds = %171, %113
  %173 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %173, i32 0, i32 128
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %205

; <label>:177:                                    ; preds = %172
  %178 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %179 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %178, i32 0, i32 130
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %194

; <label>:182:                                    ; preds = %177
  %183 = load double, double* @CurrentBufferFullness, align 8
  store double %183, double* @TargetBufferLevel, align 8
  %184 = load double, double* @CurrentBufferFullness, align 8
  %185 = load double, double* @GOPTargetBufferLevel, align 8
  %186 = fsub double %184, %185
  %187 = load i32, i32* @TotalPFrame, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sitofp i32 %188 to double
  %190 = fdiv double %186, %189
  store double %190, double* @DeltaP, align 8
  %191 = load double, double* @DeltaP, align 8
  %192 = load double, double* @TargetBufferLevel, align 8
  %193 = fsub double %192, %191
  store double %193, double* @TargetBufferLevel, align 8
  br label %204

; <label>:194:                                    ; preds = %177
  %195 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %196 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %195, i32 0, i32 130
  %197 = load i32, i32* %196, align 8
  %198 = icmp sgt i32 %197, 1
  br i1 %198, label %199, label %203

; <label>:199:                                    ; preds = %194
  %200 = load double, double* @DeltaP, align 8
  %201 = load double, double* @TargetBufferLevel, align 8
  %202 = fsub double %201, %200
  store double %202, double* @TargetBufferLevel, align 8
  br label %203

; <label>:203:                                    ; preds = %199, %194
  br label %204

; <label>:204:                                    ; preds = %203, %182
  br label %238

; <label>:205:                                    ; preds = %172
  %206 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %207 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %206, i32 0, i32 128
  %208 = load i32, i32* %207, align 8
  %209 = icmp sgt i32 %208, 1
  br i1 %209, label %210, label %237

; <label>:210:                                    ; preds = %205
  %211 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %212 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %211, i32 0, i32 130
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %226

; <label>:215:                                    ; preds = %210
  %216 = load double, double* @CurrentBufferFullness, align 8
  store double %216, double* @TargetBufferLevel, align 8
  %217 = load double, double* @CurrentBufferFullness, align 8
  %218 = load double, double* @GOPTargetBufferLevel, align 8
  %219 = fsub double %217, %218
  %220 = load i32, i32* @TotalPFrame, align 4
  %221 = sitofp i32 %220 to double
  %222 = fdiv double %219, %221
  store double %222, double* @DeltaP, align 8
  %223 = load double, double* @DeltaP, align 8
  %224 = load double, double* @TargetBufferLevel, align 8
  %225 = fsub double %224, %223
  store double %225, double* @TargetBufferLevel, align 8
  br label %236

; <label>:226:                                    ; preds = %210
  %227 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %228 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %227, i32 0, i32 130
  %229 = load i32, i32* %228, align 8
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %235

; <label>:231:                                    ; preds = %226
  %232 = load double, double* @DeltaP, align 8
  %233 = load double, double* @TargetBufferLevel, align 8
  %234 = fsub double %233, %232
  store double %234, double* @TargetBufferLevel, align 8
  br label %235

; <label>:235:                                    ; preds = %231, %226
  br label %236

; <label>:236:                                    ; preds = %235, %215
  br label %237

; <label>:237:                                    ; preds = %236, %205
  br label %238

; <label>:238:                                    ; preds = %237, %204
  br label %239

; <label>:239:                                    ; preds = %238, %112
  %240 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %241 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %240, i32 0, i32 127
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %246

; <label>:244:                                    ; preds = %239
  %245 = load double, double* @Wp, align 8
  store double %245, double* @AWp, align 8
  br label %246

; <label>:246:                                    ; preds = %244, %239
  %247 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %248 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %247, i32 0, i32 127
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %249, 8
  br i1 %250, label %251, label %276

; <label>:251:                                    ; preds = %246
  %252 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %253 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %252, i32 0, i32 127
  %254 = load i32, i32* %253, align 4
  %255 = icmp sgt i32 %254, 1
  br i1 %255, label %256, label %276

; <label>:256:                                    ; preds = %251
  %257 = load double, double* @Wp, align 8
  %258 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %259 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %258, i32 0, i32 127
  %260 = load i32, i32* %259, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sitofp i32 %261 to double
  %263 = fmul double %257, %262
  %264 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %265 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %264, i32 0, i32 127
  %266 = load i32, i32* %265, align 4
  %267 = sitofp i32 %266 to double
  %268 = fdiv double %263, %267
  %269 = load double, double* @AWp, align 8
  %270 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %271 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %270, i32 0, i32 127
  %272 = load i32, i32* %271, align 4
  %273 = sitofp i32 %272 to double
  %274 = fdiv double %269, %273
  %275 = fadd double %268, %274
  store double %275, double* @AWp, align 8
  br label %289

; <label>:276:                                    ; preds = %251, %246
  %277 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %278 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %277, i32 0, i32 127
  %279 = load i32, i32* %278, align 4
  %280 = icmp sgt i32 %279, 1
  br i1 %280, label %281, label %288

; <label>:281:                                    ; preds = %276
  %282 = load double, double* @Wp, align 8
  %283 = fdiv double %282, 8.000000e+00
  %284 = load double, double* @AWp, align 8
  %285 = fmul double 7.000000e+00, %284
  %286 = fdiv double %285, 8.000000e+00
  %287 = fadd double %283, %286
  store double %287, double* @AWp, align 8
  br label %288

; <label>:288:                                    ; preds = %281, %276
  br label %289

; <label>:289:                                    ; preds = %288, %256
  %290 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %291 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %290, i32 0, i32 34
  %292 = load i32, i32* %291, align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %321

; <label>:294:                                    ; preds = %289
  %295 = load double, double* @AWp, align 8
  %296 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %297 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %296, i32 0, i32 34
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 1
  %300 = sitofp i32 %299 to double
  %301 = fmul double %295, %300
  %302 = load double, double* @bit_rate, align 8
  %303 = fmul double %301, %302
  %304 = load double, double* @frame_rate, align 8
  %305 = load double, double* @AWp, align 8
  %306 = load double, double* @AWb, align 8
  %307 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %308 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %307, i32 0, i32 34
  %309 = load i32, i32* %308, align 4
  %310 = sitofp i32 %309 to double
  %311 = fmul double %306, %310
  %312 = fadd double %305, %311
  %313 = fmul double %304, %312
  %314 = fdiv double %303, %313
  %315 = load double, double* @bit_rate, align 8
  %316 = load double, double* @frame_rate, align 8
  %317 = fdiv double %315, %316
  %318 = fsub double %314, %317
  %319 = load double, double* @TargetBufferLevel, align 8
  %320 = fadd double %319, %318
  store double %320, double* @TargetBufferLevel, align 8
  br label %321

; <label>:321:                                    ; preds = %294, %289
  br label %395

; <label>:322:                                    ; preds = %53
  %323 = load double, double* @PreviousBit_Rate, align 8
  %324 = load double, double* @bit_rate, align 8
  %325 = fcmp une double %323, %324
  br i1 %325, label %326, label %342

; <label>:326:                                    ; preds = %322
  %327 = load double, double* @bit_rate, align 8
  %328 = load double, double* @PreviousBit_Rate, align 8
  %329 = fsub double %327, %328
  %330 = load i32, i32* @Np, align 4
  %331 = load i32, i32* @Nb, align 4
  %332 = add nsw i32 %330, %331
  %333 = sitofp i32 %332 to double
  %334 = fmul double %329, %333
  %335 = load double, double* @frame_rate, align 8
  %336 = fdiv double %334, %335
  %337 = fadd double %336, 5.000000e-01
  %338 = call double @floor(double %337) #5
  %339 = fptosi double %338 to i32
  %340 = load i32, i32* @R, align 4
  %341 = add nsw i32 %340, %339
  store i32 %341, i32* @R, align 4
  br label %342

; <label>:342:                                    ; preds = %326, %322
  %343 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %344 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %343, i32 0, i32 127
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %347, label %355

; <label>:347:                                    ; preds = %342
  %348 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %349 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %348, i32 0, i32 126
  %350 = load i32, i32* %349, align 8
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %352, label %355

; <label>:352:                                    ; preds = %347
  %353 = load double, double* @Wp, align 8
  store double %353, double* @AWp, align 8
  %354 = load double, double* @Wb, align 8
  store double %354, double* @AWb, align 8
  br label %394

; <label>:355:                                    ; preds = %347, %342
  %356 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %357 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %356, i32 0, i32 126
  %358 = load i32, i32* %357, align 8
  %359 = icmp sgt i32 %358, 1
  br i1 %359, label %360, label %393

; <label>:360:                                    ; preds = %355
  %361 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %362 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %361, i32 0, i32 126
  %363 = load i32, i32* %362, align 8
  %364 = icmp slt i32 %363, 8
  br i1 %364, label %365, label %385

; <label>:365:                                    ; preds = %360
  %366 = load double, double* @Wb, align 8
  %367 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %368 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %367, i32 0, i32 126
  %369 = load i32, i32* %368, align 8
  %370 = sub nsw i32 %369, 1
  %371 = sitofp i32 %370 to double
  %372 = fmul double %366, %371
  %373 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %374 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %373, i32 0, i32 126
  %375 = load i32, i32* %374, align 8
  %376 = sitofp i32 %375 to double
  %377 = fdiv double %372, %376
  %378 = load double, double* @AWb, align 8
  %379 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %380 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %379, i32 0, i32 126
  %381 = load i32, i32* %380, align 8
  %382 = sitofp i32 %381 to double
  %383 = fdiv double %378, %382
  %384 = fadd double %377, %383
  store double %384, double* @AWb, align 8
  br label %392

; <label>:385:                                    ; preds = %360
  %386 = load double, double* @Wb, align 8
  %387 = fdiv double %386, 8.000000e+00
  %388 = load double, double* @AWb, align 8
  %389 = fmul double 7.000000e+00, %388
  %390 = fdiv double %389, 8.000000e+00
  %391 = fadd double %387, %390
  store double %391, double* @AWb, align 8
  br label %392

; <label>:392:                                    ; preds = %385, %365
  br label %393

; <label>:393:                                    ; preds = %392, %355
  br label %394

; <label>:394:                                    ; preds = %393, %352
  br label %395

; <label>:395:                                    ; preds = %394, %321, %53
  %396 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %397 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %396, i32 0, i32 6
  %398 = load i32, i32* %397, align 8
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %632

; <label>:400:                                    ; preds = %395
  %401 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %402 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %401, i32 0, i32 139
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %405 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %404, i32 0, i32 136
  %406 = load i32, i32* %405, align 8
  %407 = icmp eq i32 %403, %406
  br i1 %407, label %408, label %464

; <label>:408:                                    ; preds = %400
  %409 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %410 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %409, i32 0, i32 127
  %411 = load i32, i32* %410, align 4
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %463

; <label>:413:                                    ; preds = %408
  %414 = load double, double* @Wp, align 8
  %415 = load i32, i32* @R, align 4
  %416 = sitofp i32 %415 to double
  %417 = fmul double %414, %416
  %418 = load i32, i32* @Np, align 4
  %419 = sitofp i32 %418 to double
  %420 = load double, double* @Wp, align 8
  %421 = fmul double %419, %420
  %422 = load i32, i32* @Nb, align 4
  %423 = sitofp i32 %422 to double
  %424 = load double, double* @Wb, align 8
  %425 = fmul double %423, %424
  %426 = fadd double %421, %425
  %427 = fdiv double %417, %426
  %428 = fadd double %427, 5.000000e-01
  %429 = call double @floor(double %428) #5
  %430 = fptosi double %429 to i64
  store i64 %430, i64* @T, align 8
  %431 = load double, double* @bit_rate, align 8
  %432 = load double, double* @frame_rate, align 8
  %433 = fdiv double %431, %432
  %434 = load double, double* @GAMMAP, align 8
  %435 = load double, double* @CurrentBufferFullness, align 8
  %436 = load double, double* @TargetBufferLevel, align 8
  %437 = fsub double %435, %436
  %438 = fmul double %434, %437
  %439 = fsub double %433, %438
  %440 = fadd double %439, 5.000000e-01
  %441 = call double @floor(double %440) #5
  %442 = fptosi double %441 to i64
  store i64 %442, i64* @T1, align 8
  %443 = load i64, i64* @T1, align 8
  %444 = icmp slt i64 0, %443
  br i1 %444, label %445, label %447

; <label>:445:                                    ; preds = %413
  %446 = load i64, i64* @T1, align 8
  br label %448

; <label>:447:                                    ; preds = %413
  br label %448

; <label>:448:                                    ; preds = %447, %445
  %449 = phi i64 [ %446, %445 ], [ 0, %447 ]
  store i64 %449, i64* @T1, align 8
  %450 = load double, double* @BETAP, align 8
  %451 = load i64, i64* @T, align 8
  %452 = sitofp i64 %451 to double
  %453 = fmul double %450, %452
  %454 = load double, double* @BETAP, align 8
  %455 = fsub double 1.000000e+00, %454
  %456 = load i64, i64* @T1, align 8
  %457 = sitofp i64 %456 to double
  %458 = fmul double %455, %457
  %459 = fadd double %453, %458
  %460 = fadd double %459, 5.000000e-01
  %461 = call double @floor(double %460) #5
  %462 = fptosi double %461 to i64
  store i64 %462, i64* @T, align 8
  br label %463

; <label>:463:                                    ; preds = %448, %408
  br label %584

; <label>:464:                                    ; preds = %400
  %465 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %466 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %465, i32 0, i32 128
  %467 = load i32, i32* %466, align 8
  %468 = icmp eq i32 %467, 1
  br i1 %468, label %469, label %527

; <label>:469:                                    ; preds = %464
  %470 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %471 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %470, i32 0, i32 127
  %472 = load i32, i32* %471, align 4
  %473 = icmp sgt i32 %472, 0
  br i1 %473, label %474, label %527

; <label>:474:                                    ; preds = %469
  %475 = load double, double* @Wp, align 8
  %476 = load i32, i32* @R, align 4
  %477 = sitofp i32 %476 to double
  %478 = fmul double %475, %477
  %479 = load i32, i32* @Np, align 4
  %480 = sitofp i32 %479 to double
  %481 = load double, double* @Wp, align 8
  %482 = fmul double %480, %481
  %483 = load i32, i32* @Nb, align 4
  %484 = sitofp i32 %483 to double
  %485 = load double, double* @Wb, align 8
  %486 = fmul double %484, %485
  %487 = fadd double %482, %486
  %488 = fdiv double %478, %487
  %489 = fadd double %488, 5.000000e-01
  %490 = call double @floor(double %489) #5
  %491 = fptosi double %490 to i32
  %492 = sext i32 %491 to i64
  store i64 %492, i64* @T, align 8
  %493 = load double, double* @bit_rate, align 8
  %494 = load double, double* @frame_rate, align 8
  %495 = fdiv double %493, %494
  %496 = load double, double* @GAMMAP, align 8
  %497 = load double, double* @CurrentBufferFullness, align 8
  %498 = load double, double* @TargetBufferLevel, align 8
  %499 = fsub double %497, %498
  %500 = fmul double %496, %499
  %501 = fsub double %495, %500
  %502 = fadd double %501, 5.000000e-01
  %503 = call double @floor(double %502) #5
  %504 = fptosi double %503 to i32
  %505 = sext i32 %504 to i64
  store i64 %505, i64* @T1, align 8
  %506 = load i64, i64* @T1, align 8
  %507 = icmp slt i64 0, %506
  br i1 %507, label %508, label %510

; <label>:508:                                    ; preds = %474
  %509 = load i64, i64* @T1, align 8
  br label %511

; <label>:510:                                    ; preds = %474
  br label %511

; <label>:511:                                    ; preds = %510, %508
  %512 = phi i64 [ %509, %508 ], [ 0, %510 ]
  store i64 %512, i64* @T1, align 8
  %513 = load double, double* @BETAP, align 8
  %514 = load i64, i64* @T, align 8
  %515 = sitofp i64 %514 to double
  %516 = fmul double %513, %515
  %517 = load double, double* @BETAP, align 8
  %518 = fsub double 1.000000e+00, %517
  %519 = load i64, i64* @T1, align 8
  %520 = sitofp i64 %519 to double
  %521 = fmul double %518, %520
  %522 = fadd double %516, %521
  %523 = fadd double %522, 5.000000e-01
  %524 = call double @floor(double %523) #5
  %525 = fptosi double %524 to i32
  %526 = sext i32 %525 to i64
  store i64 %526, i64* @T, align 8
  br label %583

; <label>:527:                                    ; preds = %469, %464
  %528 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %529 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %528, i32 0, i32 128
  %530 = load i32, i32* %529, align 8
  %531 = icmp sgt i32 %530, 1
  br i1 %531, label %532, label %582

; <label>:532:                                    ; preds = %527
  %533 = load double, double* @Wp, align 8
  %534 = load i32, i32* @R, align 4
  %535 = sitofp i32 %534 to double
  %536 = fmul double %533, %535
  %537 = load i32, i32* @Np, align 4
  %538 = sitofp i32 %537 to double
  %539 = load double, double* @Wp, align 8
  %540 = fmul double %538, %539
  %541 = load i32, i32* @Nb, align 4
  %542 = sitofp i32 %541 to double
  %543 = load double, double* @Wb, align 8
  %544 = fmul double %542, %543
  %545 = fadd double %540, %544
  %546 = fdiv double %536, %545
  %547 = fadd double %546, 5.000000e-01
  %548 = call double @floor(double %547) #5
  %549 = fptosi double %548 to i64
  store i64 %549, i64* @T, align 8
  %550 = load double, double* @bit_rate, align 8
  %551 = load double, double* @frame_rate, align 8
  %552 = fdiv double %550, %551
  %553 = load double, double* @GAMMAP, align 8
  %554 = load double, double* @CurrentBufferFullness, align 8
  %555 = load double, double* @TargetBufferLevel, align 8
  %556 = fsub double %554, %555
  %557 = fmul double %553, %556
  %558 = fsub double %552, %557
  %559 = fadd double %558, 5.000000e-01
  %560 = call double @floor(double %559) #5
  %561 = fptosi double %560 to i64
  store i64 %561, i64* @T1, align 8
  %562 = load i64, i64* @T1, align 8
  %563 = icmp slt i64 0, %562
  br i1 %563, label %564, label %566

; <label>:564:                                    ; preds = %532
  %565 = load i64, i64* @T1, align 8
  br label %567

; <label>:566:                                    ; preds = %532
  br label %567

; <label>:567:                                    ; preds = %566, %564
  %568 = phi i64 [ %565, %564 ], [ 0, %566 ]
  store i64 %568, i64* @T1, align 8
  %569 = load double, double* @BETAP, align 8
  %570 = load i64, i64* @T, align 8
  %571 = sitofp i64 %570 to double
  %572 = fmul double %569, %571
  %573 = load double, double* @BETAP, align 8
  %574 = fsub double 1.000000e+00, %573
  %575 = load i64, i64* @T1, align 8
  %576 = sitofp i64 %575 to double
  %577 = fmul double %574, %576
  %578 = fadd double %572, %577
  %579 = fadd double %578, 5.000000e-01
  %580 = call double @floor(double %579) #5
  %581 = fptosi double %580 to i64
  store i64 %581, i64* @T, align 8
  br label %582

; <label>:582:                                    ; preds = %567, %527
  br label %583

; <label>:583:                                    ; preds = %582, %511
  br label %584

; <label>:584:                                    ; preds = %583, %463
  %585 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %586 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %585, i32 0, i32 34
  %587 = load i32, i32* %586, align 4
  %588 = sitofp i32 %587 to double
  %589 = fmul double 0.000000e+00, %588
  %590 = fsub double 1.000000e+00, %589
  %591 = load i64, i64* @T, align 8
  %592 = sitofp i64 %591 to double
  %593 = fmul double %590, %592
  %594 = fptosi double %593 to i64
  store i64 %594, i64* @T, align 8
  %595 = load i64, i64* @T, align 8
  %596 = load i64, i64* @LowerBound, align 8
  %597 = icmp slt i64 %595, %596
  br i1 %597, label %598, label %600

; <label>:598:                                    ; preds = %584
  %599 = load i64, i64* @LowerBound, align 8
  br label %602

; <label>:600:                                    ; preds = %584
  %601 = load i64, i64* @T, align 8
  br label %602

; <label>:602:                                    ; preds = %600, %598
  %603 = phi i64 [ %599, %598 ], [ %601, %600 ]
  store i64 %603, i64* @T, align 8
  %604 = load i64, i64* @T, align 8
  %605 = load i64, i64* @UpperBound2, align 8
  %606 = icmp slt i64 %604, %605
  br i1 %606, label %607, label %609

; <label>:607:                                    ; preds = %602
  %608 = load i64, i64* @T, align 8
  br label %611

; <label>:609:                                    ; preds = %602
  %610 = load i64, i64* @UpperBound2, align 8
  br label %611

; <label>:611:                                    ; preds = %609, %607
  %612 = phi i64 [ %608, %607 ], [ %610, %609 ]
  store i64 %612, i64* @T, align 8
  %613 = load i32, i32* %5, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %628, label %615

; <label>:615:                                    ; preds = %611
  %616 = load i32, i32* %4, align 4
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %631

; <label>:618:                                    ; preds = %615
  %619 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %620 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %619, i32 0, i32 91
  %621 = load i32, i32* %620, align 8
  %622 = icmp eq i32 %621, 2
  br i1 %622, label %628, label %623

; <label>:623:                                    ; preds = %618
  %624 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %625 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %624, i32 0, i32 92
  %626 = load i32, i32* %625, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %631

; <label>:628:                                    ; preds = %623, %618, %611
  %629 = load i64, i64* @T, align 8
  %630 = trunc i64 %629 to i32
  store i32 %630, i32* @T_field, align 4
  br label %631

; <label>:631:                                    ; preds = %628, %623, %615
  br label %632

; <label>:632:                                    ; preds = %631, %395
  br label %633

; <label>:633:                                    ; preds = %632, %50, %47
  %634 = load i32, i32* %4, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %639, label %636

; <label>:636:                                    ; preds = %633
  %637 = load i32, i32* %5, align 4
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %669

; <label>:639:                                    ; preds = %636, %633
  %640 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %641 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %640, i32 0, i32 119
  store i32 0, i32* %641, align 4
  %642 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %643 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %642, i32 0, i32 120
  store i32 0, i32* %643, align 8
  %644 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %645 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %644, i32 0, i32 139
  %646 = load i32, i32* %645, align 4
  %647 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %648 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %647, i32 0, i32 136
  %649 = load i32, i32* %648, align 8
  %650 = icmp slt i32 %646, %649
  br i1 %650, label %651, label %668

; <label>:651:                                    ; preds = %639
  store i32 0, i32* @TotalFrameQP, align 4
  %652 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %653 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %652, i32 0, i32 121
  store i32 0, i32* %653, align 4
  %654 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %655 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %654, i32 0, i32 122
  store i32 0, i32* %655, align 8
  %656 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %657 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %656, i32 0, i32 123
  store double 0.000000e+00, double* %657, align 8
  %658 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %659 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %658, i32 0, i32 134
  %660 = load i32, i32* %659, align 8
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %664

; <label>:662:                                    ; preds = %651
  %663 = load i32, i32* @TotalNumberofBasicUnit, align 4
  store i32 %663, i32* @NumberofBasicUnit, align 4
  br label %667

; <label>:664:                                    ; preds = %651
  %665 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %666 = sdiv i32 %665, 2
  store i32 %666, i32* @NumberofBasicUnit, align 4
  br label %667

; <label>:667:                                    ; preds = %664, %662
  br label %668

; <label>:668:                                    ; preds = %667, %639
  br label %669

; <label>:669:                                    ; preds = %668, %636
  %670 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %671 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %670, i32 0, i32 6
  %672 = load i32, i32* %671, align 8
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %709

; <label>:674:                                    ; preds = %669
  %675 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %676 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %675, i32 0, i32 139
  %677 = load i32, i32* %676, align 4
  %678 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %679 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %678, i32 0, i32 136
  %680 = load i32, i32* %679, align 8
  %681 = icmp slt i32 %677, %680
  br i1 %681, label %682, label %709

; <label>:682:                                    ; preds = %674
  %683 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %684 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %683, i32 0, i32 134
  %685 = load i32, i32* %684, align 8
  %686 = icmp eq i32 %685, 1
  br i1 %686, label %687, label %709

; <label>:687:                                    ; preds = %682
  %688 = load i32, i32* %5, align 4
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %695

; <label>:690:                                    ; preds = %687
  store i32 0, i32* @bits_topfield, align 4
  %691 = load i32, i32* @T_field, align 4
  %692 = sitofp i32 %691 to double
  %693 = fmul double %692, 6.000000e-01
  %694 = fptosi double %693 to i64
  store i64 %694, i64* @T, align 8
  br label %708

; <label>:695:                                    ; preds = %687
  %696 = load i32, i32* @T_field, align 4
  %697 = load i32, i32* @bits_topfield, align 4
  %698 = sub nsw i32 %696, %697
  %699 = sext i32 %698 to i64
  store i64 %699, i64* @T, align 8
  %700 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %701 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %700, i32 0, i32 121
  store i32 0, i32* %701, align 4
  %702 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %703 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %702, i32 0, i32 122
  store i32 0, i32* %703, align 8
  %704 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %705 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %704, i32 0, i32 123
  store double 0.000000e+00, double* %705, align 8
  %706 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %707 = sdiv i32 %706, 2
  store i32 %707, i32* @NumberofBasicUnit, align 4
  br label %708

; <label>:708:                                    ; preds = %695, %690
  br label %709

; <label>:709:                                    ; preds = %708, %682, %674, %669
  ret void
}

; Function Attrs: noinline nounwind uwtable
define double @calc_MAD() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %5

; <label>:5:                                      ; preds = %27, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %30

; <label>:8:                                      ; preds = %5
  store i32 0, i32* %2, align 4
  br label %9

; <label>:9:                                      ; preds = %23, %8
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %26

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @diffy, i64 0, i64 %14
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @abs(i32 %19) #5
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

; <label>:23:                                     ; preds = %12
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %9

; <label>:26:                                     ; preds = %9
  br label %27

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %5

; <label>:30:                                     ; preds = %5
  %31 = load i32, i32* %3, align 4
  %32 = sitofp i32 %31 to double
  %33 = fmul double %32, 1.000000e+00
  %34 = fdiv double %33, 2.560000e+02
  store double %34, double* %4, align 8
  %35 = load double, double* %4, align 8
  ret double %35
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: noinline nounwind uwtable
define void @rc_update_pict(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @R, align 4
  %5 = sub nsw i32 %4, %3
  store i32 %5, i32* @R, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sitofp i32 %6 to double
  %8 = load double, double* @bit_rate, align 8
  %9 = load double, double* @frame_rate, align 8
  %10 = fdiv double %8, %9
  %11 = fsub double %7, %10
  %12 = load double, double* @CurrentBufferFullness, align 8
  %13 = fadd double %12, %11
  store double %13, double* @CurrentBufferFullness, align 8
  %14 = load double, double* @bit_rate, align 8
  %15 = load double, double* @frame_rate, align 8
  %16 = fdiv double %14, %15
  %17 = load i32, i32* %2, align 4
  %18 = sitofp i32 %17 to double
  %19 = fsub double %16, %18
  %20 = fptosi double %19 to i64
  %21 = load i64, i64* @LowerBound, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* @LowerBound, align 8
  %23 = load double, double* @bit_rate, align 8
  %24 = load double, double* @frame_rate, align 8
  %25 = fdiv double %23, %24
  %26 = load i32, i32* %2, align 4
  %27 = sitofp i32 %26 to double
  %28 = fsub double %25, %27
  %29 = fptosi double %28 to i64
  %30 = load i64, i64* @UpperBound1, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* @UpperBound1, align 8
  %32 = load i64, i64* @UpperBound1, align 8
  %33 = sitofp i64 %32 to double
  %34 = fmul double 9.000000e-01, %33
  %35 = fptosi double %34 to i64
  store i64 %35, i64* @UpperBound2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @rc_update_pict_frame(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 139
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 136
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %20

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @m_Qc, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sitofp i32 %15 to double
  %17 = fadd double %16, 5.000000e-01
  %18 = call double @floor(double %17) #5
  %19 = fptosi double %18 to i32
  store i32 %19, i32* %4, align 4
  br label %67

; <label>:20:                                     ; preds = %1
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %52

; <label>:25:                                     ; preds = %20
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %27 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 137
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

; <label>:30:                                     ; preds = %25
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 134
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %40, label %35

; <label>:35:                                     ; preds = %30, %25
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 134
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

; <label>:40:                                     ; preds = %35, %30
  %41 = load i32, i32* @TotalFrameQP, align 4
  %42 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %3, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sitofp i32 %46 to double
  %48 = fadd double %47, 5.000000e-01
  %49 = call double @floor(double %48) #5
  %50 = fptosi double %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

; <label>:51:                                     ; preds = %40, %35
  br label %66

; <label>:52:                                     ; preds = %20
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %65

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @m_Qc, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sitofp i32 %60 to double
  %62 = fadd double %61, 5.000000e-01
  %63 = call double @floor(double %62) #5
  %64 = fptosi double %63 to i32
  store i32 %64, i32* %4, align 4
  br label %65

; <label>:65:                                     ; preds = %57, %52
  br label %66

; <label>:66:                                     ; preds = %65, %51
  br label %67

; <label>:67:                                     ; preds = %66, %12
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %69 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %131 [
    i32 0, label %71
    i32 1, label %118
  ]

; <label>:71:                                     ; preds = %67
  %72 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %73 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %72, i32 0, i32 137
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

; <label>:76:                                     ; preds = %71
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %78 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 134
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %86, label %81

; <label>:81:                                     ; preds = %76, %71
  %82 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %83 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %82, i32 0, i32 134
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %103

; <label>:86:                                     ; preds = %81, %76
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* @Xp, align 4
  %88 = load i32, i32* @Np, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* @Np, align 4
  %90 = load i32, i32* @Xp, align 4
  %91 = sitofp i32 %90 to double
  store double %91, double* @Wp, align 8
  %92 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %93 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %92, i32 0, i32 119
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* @Pm_Hp, align 4
  %95 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %96 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %95, i32 0, i32 127
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 130
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %117

; <label>:103:                                    ; preds = %81
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 137
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

; <label>:108:                                    ; preds = %103
  %109 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %109, i32 0, i32 134
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %116

; <label>:113:                                    ; preds = %108
  %114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %115 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %114, i32 0, i32 137
  store i32 0, i32* %115, align 4
  br label %116

; <label>:116:                                    ; preds = %113, %108, %103
  br label %117

; <label>:117:                                    ; preds = %116, %86
  br label %131

; <label>:118:                                    ; preds = %67
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* @Xb, align 4
  %120 = load i32, i32* @Nb, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* @Nb, align 4
  %122 = load i32, i32* @Xb, align 4
  %123 = sitofp i32 %122 to double
  %124 = fdiv double %123, 1.363600e+00
  store double %124, double* @Wb, align 8
  %125 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %125, i32 0, i32 126
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* @NumberofBFrames, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @NumberofBFrames, align 4
  br label %131

; <label>:131:                                    ; preds = %118, %117, %67
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @setbitscount(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @bits_topfield, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @updateQuantizationParameter(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 139
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 136
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %587

; <label>:18:                                     ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

; <label>:21:                                     ; preds = %18
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 134
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %557

; <label>:26:                                     ; preds = %21, %18
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %28 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* @MyInitialQp, align 4
  store i32 %32, i32* @m_Qc, align 4
  %33 = load i32, i32* @m_Qc, align 4
  store i32 %33, i32* %2, align 4
  br label %1695

; <label>:34:                                     ; preds = %26
  %35 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %311

; <label>:39:                                     ; preds = %34
  %40 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %41 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %40, i32 0, i32 34
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %104

; <label>:44:                                     ; preds = %39
  %45 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %46 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %45, i32 0, i32 91
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %54, label %49

; <label>:49:                                     ; preds = %44
  %50 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %51 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %50, i32 0, i32 92
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

; <label>:54:                                     ; preds = %49, %44
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 134
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %71

; <label>:59:                                     ; preds = %54
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %61 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 135
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %59
  %65 = load i32, i32* @PreviousQp2, align 4
  store i32 %65, i32* @PreviousQp1, align 4
  %66 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %66, i32* @PreviousQp2, align 4
  br label %70

; <label>:67:                                     ; preds = %59
  %68 = load i32, i32* @PreviousQp2, align 4
  store i32 %68, i32* @PreviousQp1, align 4
  %69 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %69, i32* @PreviousQp2, align 4
  br label %70

; <label>:70:                                     ; preds = %67, %64
  br label %71

; <label>:71:                                     ; preds = %70, %54
  br label %72

; <label>:72:                                     ; preds = %71, %49
  %73 = load i32, i32* @PreviousQp1, align 4
  %74 = load i32, i32* @PreviousQp2, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* @PreviousQp1, align 4
  %78 = add nsw i32 %77, 2
  store i32 %78, i32* @m_Qc, align 4
  br label %85

; <label>:79:                                     ; preds = %72
  %80 = load i32, i32* @PreviousQp1, align 4
  %81 = load i32, i32* @PreviousQp2, align 4
  %82 = add nsw i32 %80, %81
  %83 = sdiv i32 %82, 2
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @m_Qc, align 4
  br label %85

; <label>:85:                                     ; preds = %79, %76
  %86 = load i32, i32* @m_Qc, align 4
  %87 = load i32, i32* @RC_MAX_QUANT, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %85
  %90 = load i32, i32* @m_Qc, align 4
  br label %93

; <label>:91:                                     ; preds = %85
  %92 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %93

; <label>:93:                                     ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* @m_Qc, align 4
  %95 = load i32, i32* @RC_MIN_QUANT, align 4
  %96 = load i32, i32* @m_Qc, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %100

; <label>:98:                                     ; preds = %93
  %99 = load i32, i32* @m_Qc, align 4
  br label %102

; <label>:100:                                    ; preds = %93
  %101 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %102

; <label>:102:                                    ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  store i32 %103, i32* @m_Qc, align 4
  br label %309

; <label>:104:                                    ; preds = %39
  %105 = load i32, i32* @NumberofBFrames, align 4
  %106 = add nsw i32 %105, 1
  %107 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %108 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %107, i32 0, i32 34
  %109 = load i32, i32* %108, align 4
  %110 = srem i32 %106, %109
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

; <label>:113:                                    ; preds = %104
  %114 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %115 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %114, i32 0, i32 34
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %6, align 4
  br label %117

; <label>:117:                                    ; preds = %113, %104
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %149

; <label>:120:                                    ; preds = %117
  %121 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %122 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %121, i32 0, i32 91
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %130, label %125

; <label>:125:                                    ; preds = %120
  %126 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %127 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %126, i32 0, i32 92
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %148

; <label>:130:                                    ; preds = %125, %120
  %131 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %132 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %131, i32 0, i32 134
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %147

; <label>:135:                                    ; preds = %130
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %137 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 135
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %143

; <label>:140:                                    ; preds = %135
  %141 = load i32, i32* @PreviousQp2, align 4
  store i32 %141, i32* @PreviousQp1, align 4
  %142 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %142, i32* @PreviousQp2, align 4
  br label %146

; <label>:143:                                    ; preds = %135
  %144 = load i32, i32* @PreviousQp2, align 4
  store i32 %144, i32* @PreviousQp1, align 4
  %145 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %145, i32* @PreviousQp2, align 4
  br label %146

; <label>:146:                                    ; preds = %143, %140
  br label %147

; <label>:147:                                    ; preds = %146, %130
  br label %148

; <label>:148:                                    ; preds = %147, %125
  br label %149

; <label>:149:                                    ; preds = %148, %117
  %150 = load i32, i32* @PreviousQp2, align 4
  %151 = load i32, i32* @PreviousQp1, align 4
  %152 = sub nsw i32 %150, %151
  %153 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %154 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %153, i32 0, i32 34
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 -2, %155
  %157 = sub nsw i32 %156, 3
  %158 = icmp sle i32 %152, %157
  br i1 %158, label %159, label %160

; <label>:159:                                    ; preds = %149
  store i32 -3, i32* %7, align 4
  br label %208

; <label>:160:                                    ; preds = %149
  %161 = load i32, i32* @PreviousQp2, align 4
  %162 = load i32, i32* @PreviousQp1, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %165 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %164, i32 0, i32 34
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 -2, %166
  %168 = sub nsw i32 %167, 2
  %169 = icmp eq i32 %163, %168
  br i1 %169, label %170, label %171

; <label>:170:                                    ; preds = %160
  store i32 -2, i32* %7, align 4
  br label %207

; <label>:171:                                    ; preds = %160
  %172 = load i32, i32* @PreviousQp2, align 4
  %173 = load i32, i32* @PreviousQp1, align 4
  %174 = sub nsw i32 %172, %173
  %175 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %176 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %175, i32 0, i32 34
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 -2, %177
  %179 = sub nsw i32 %178, 1
  %180 = icmp eq i32 %174, %179
  br i1 %180, label %181, label %182

; <label>:181:                                    ; preds = %171
  store i32 -1, i32* %7, align 4
  br label %206

; <label>:182:                                    ; preds = %171
  %183 = load i32, i32* @PreviousQp2, align 4
  %184 = load i32, i32* @PreviousQp1, align 4
  %185 = sub nsw i32 %183, %184
  %186 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %187 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %186, i32 0, i32 34
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 -2, %188
  %190 = icmp eq i32 %185, %189
  br i1 %190, label %191, label %192

; <label>:191:                                    ; preds = %182
  store i32 0, i32* %7, align 4
  br label %205

; <label>:192:                                    ; preds = %182
  %193 = load i32, i32* @PreviousQp2, align 4
  %194 = load i32, i32* @PreviousQp1, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %197 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %196, i32 0, i32 34
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 -2, %198
  %200 = add nsw i32 %199, 1
  %201 = icmp eq i32 %195, %200
  br i1 %201, label %202, label %203

; <label>:202:                                    ; preds = %192
  store i32 1, i32* %7, align 4
  br label %204

; <label>:203:                                    ; preds = %192
  store i32 2, i32* %7, align 4
  br label %204

; <label>:204:                                    ; preds = %203, %202
  br label %205

; <label>:205:                                    ; preds = %204, %191
  br label %206

; <label>:206:                                    ; preds = %205, %181
  br label %207

; <label>:207:                                    ; preds = %206, %170
  br label %208

; <label>:208:                                    ; preds = %207, %159
  %209 = load i32, i32* @PreviousQp1, align 4
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %209, %210
  store i32 %211, i32* @m_Qc, align 4
  %212 = load i32, i32* %6, align 4
  %213 = sub nsw i32 %212, 1
  %214 = mul nsw i32 2, %213
  %215 = load i32, i32* %6, align 4
  %216 = sub nsw i32 %215, 1
  %217 = mul nsw i32 -2, %216
  %218 = load i32, i32* %6, align 4
  %219 = sub nsw i32 %218, 1
  %220 = load i32, i32* @PreviousQp2, align 4
  %221 = load i32, i32* @PreviousQp1, align 4
  %222 = sub nsw i32 %220, %221
  %223 = mul nsw i32 %219, %222
  %224 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %225 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %224, i32 0, i32 34
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sdiv i32 %223, %227
  %229 = icmp slt i32 %217, %228
  br i1 %229, label %230, label %242

; <label>:230:                                    ; preds = %208
  %231 = load i32, i32* %6, align 4
  %232 = sub nsw i32 %231, 1
  %233 = load i32, i32* @PreviousQp2, align 4
  %234 = load i32, i32* @PreviousQp1, align 4
  %235 = sub nsw i32 %233, %234
  %236 = mul nsw i32 %232, %235
  %237 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %238 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %237, i32 0, i32 34
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sdiv i32 %236, %240
  br label %246

; <label>:242:                                    ; preds = %208
  %243 = load i32, i32* %6, align 4
  %244 = sub nsw i32 %243, 1
  %245 = mul nsw i32 -2, %244
  br label %246

; <label>:246:                                    ; preds = %242, %230
  %247 = phi i32 [ %241, %230 ], [ %245, %242 ]
  %248 = icmp slt i32 %214, %247
  br i1 %248, label %249, label %253

; <label>:249:                                    ; preds = %246
  %250 = load i32, i32* %6, align 4
  %251 = sub nsw i32 %250, 1
  %252 = mul nsw i32 2, %251
  br label %287

; <label>:253:                                    ; preds = %246
  %254 = load i32, i32* %6, align 4
  %255 = sub nsw i32 %254, 1
  %256 = mul nsw i32 -2, %255
  %257 = load i32, i32* %6, align 4
  %258 = sub nsw i32 %257, 1
  %259 = load i32, i32* @PreviousQp2, align 4
  %260 = load i32, i32* @PreviousQp1, align 4
  %261 = sub nsw i32 %259, %260
  %262 = mul nsw i32 %258, %261
  %263 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %264 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %263, i32 0, i32 34
  %265 = load i32, i32* %264, align 4
  %266 = sub nsw i32 %265, 1
  %267 = sdiv i32 %262, %266
  %268 = icmp slt i32 %256, %267
  br i1 %268, label %269, label %281

; <label>:269:                                    ; preds = %253
  %270 = load i32, i32* %6, align 4
  %271 = sub nsw i32 %270, 1
  %272 = load i32, i32* @PreviousQp2, align 4
  %273 = load i32, i32* @PreviousQp1, align 4
  %274 = sub nsw i32 %272, %273
  %275 = mul nsw i32 %271, %274
  %276 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %277 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %276, i32 0, i32 34
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 %278, 1
  %280 = sdiv i32 %275, %279
  br label %285

; <label>:281:                                    ; preds = %253
  %282 = load i32, i32* %6, align 4
  %283 = sub nsw i32 %282, 1
  %284 = mul nsw i32 -2, %283
  br label %285

; <label>:285:                                    ; preds = %281, %269
  %286 = phi i32 [ %280, %269 ], [ %284, %281 ]
  br label %287

; <label>:287:                                    ; preds = %285, %249
  %288 = phi i32 [ %252, %249 ], [ %286, %285 ]
  %289 = load i32, i32* @m_Qc, align 4
  %290 = add nsw i32 %289, %288
  store i32 %290, i32* @m_Qc, align 4
  %291 = load i32, i32* @m_Qc, align 4
  %292 = load i32, i32* @RC_MAX_QUANT, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %296

; <label>:294:                                    ; preds = %287
  %295 = load i32, i32* @m_Qc, align 4
  br label %298

; <label>:296:                                    ; preds = %287
  %297 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %298

; <label>:298:                                    ; preds = %296, %294
  %299 = phi i32 [ %295, %294 ], [ %297, %296 ]
  store i32 %299, i32* @m_Qc, align 4
  %300 = load i32, i32* @RC_MIN_QUANT, align 4
  %301 = load i32, i32* @m_Qc, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %305

; <label>:303:                                    ; preds = %298
  %304 = load i32, i32* @m_Qc, align 4
  br label %307

; <label>:305:                                    ; preds = %298
  %306 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %307

; <label>:307:                                    ; preds = %305, %303
  %308 = phi i32 [ %304, %303 ], [ %306, %305 ]
  store i32 %308, i32* @m_Qc, align 4
  br label %309

; <label>:309:                                    ; preds = %307, %102
  %310 = load i32, i32* @m_Qc, align 4
  store i32 %310, i32* %2, align 4
  br label %1695

; <label>:311:                                    ; preds = %34
  %312 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %313 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 8
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %346

; <label>:316:                                    ; preds = %311
  %317 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %318 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %317, i32 0, i32 130
  %319 = load i32, i32* %318, align 8
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %346

; <label>:321:                                    ; preds = %316
  %322 = load i32, i32* @MyInitialQp, align 4
  store i32 %322, i32* @m_Qc, align 4
  %323 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %324 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %323, i32 0, i32 134
  %325 = load i32, i32* %324, align 8
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %344

; <label>:327:                                    ; preds = %321
  %328 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %329 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %328, i32 0, i32 25
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %341

; <label>:332:                                    ; preds = %327
  %333 = load i32, i32* @m_Qc, align 4
  %334 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %335 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %334, i32 0, i32 129
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %336, %333
  store i32 %337, i32* %335, align 4
  %338 = load i32, i32* @PreviousQp2, align 4
  store i32 %338, i32* @PreviousQp1, align 4
  %339 = load i32, i32* @m_Qc, align 4
  store i32 %339, i32* @PreviousQp2, align 4
  %340 = load i32, i32* @m_Qc, align 4
  store i32 %340, i32* @Pm_Qp, align 4
  br label %343

; <label>:341:                                    ; preds = %327
  %342 = load i32, i32* @m_Qc, align 4
  store i32 %342, i32* @FrameQPBuffer, align 4
  br label %343

; <label>:343:                                    ; preds = %341, %332
  br label %344

; <label>:344:                                    ; preds = %343, %321
  %345 = load i32, i32* @m_Qc, align 4
  store i32 %345, i32* %2, align 4
  br label %1695

; <label>:346:                                    ; preds = %316, %311
  %347 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %348 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %347, i32 0, i32 91
  %349 = load i32, i32* %348, align 8
  %350 = icmp eq i32 %349, 2
  br i1 %350, label %356, label %351

; <label>:351:                                    ; preds = %346
  %352 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %353 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %352, i32 0, i32 92
  %354 = load i32, i32* %353, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %381

; <label>:356:                                    ; preds = %351, %346
  %357 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %358 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %357, i32 0, i32 134
  %359 = load i32, i32* %358, align 8
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %381

; <label>:361:                                    ; preds = %356
  %362 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %363 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %362, i32 0, i32 135
  %364 = load i32, i32* %363, align 4
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %366, label %373

; <label>:366:                                    ; preds = %361
  %367 = load i32, i32* @FrameQPBuffer, align 4
  %368 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %369 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %368, i32 0, i32 129
  %370 = load i32, i32* %369, align 4
  %371 = add nsw i32 %370, %367
  store i32 %371, i32* %369, align 4
  %372 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %372, i32* @Pm_Qp, align 4
  br label %380

; <label>:373:                                    ; preds = %361
  %374 = load i32, i32* @FieldQPBuffer, align 4
  %375 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %376 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %375, i32 0, i32 129
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %377, %374
  store i32 %378, i32* %376, align 4
  %379 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %379, i32* @Pm_Qp, align 4
  br label %380

; <label>:380:                                    ; preds = %373, %366
  br label %381

; <label>:381:                                    ; preds = %380, %356, %351
  %382 = load double, double* @Pm_X1, align 8
  store double %382, double* @m_X1, align 8
  %383 = load double, double* @Pm_X2, align 8
  store double %383, double* @m_X2, align 8
  %384 = load i32, i32* @PPreHeader, align 4
  store i32 %384, i32* @m_Hp, align 4
  %385 = load i32, i32* @Pm_Qp, align 4
  store i32 %385, i32* @m_Qp, align 4
  %386 = load i32, i32* @PDuantQp, align 4
  store i32 %386, i32* @DuantQp, align 4
  %387 = load double, double* @PMADPictureC1, align 8
  store double %387, double* @MADPictureC1, align 8
  %388 = load double, double* @PMADPictureC2, align 8
  store double %388, double* @MADPictureC2, align 8
  %389 = load double, double* getelementptr inbounds ([21 x double], [21 x double]* @PPictureMAD, i64 0, i64 0), align 16
  store double %389, double* @PreviousPictureMAD, align 8
  %390 = load double, double* @MADPictureC1, align 8
  %391 = load double, double* @PreviousPictureMAD, align 8
  %392 = fmul double %390, %391
  %393 = load double, double* @MADPictureC2, align 8
  %394 = fadd double %392, %393
  store double %394, double* @CurrentFrameMAD, align 8
  %395 = load i64, i64* @T, align 8
  %396 = icmp slt i64 %395, 0
  br i1 %396, label %397, label %410

; <label>:397:                                    ; preds = %381
  %398 = load i32, i32* @m_Qp, align 4
  %399 = load i32, i32* @DuantQp, align 4
  %400 = add nsw i32 %398, %399
  store i32 %400, i32* @m_Qc, align 4
  %401 = load i32, i32* @m_Qc, align 4
  %402 = load i32, i32* @RC_MAX_QUANT, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %406

; <label>:404:                                    ; preds = %397
  %405 = load i32, i32* @m_Qc, align 4
  br label %408

; <label>:406:                                    ; preds = %397
  %407 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %408

; <label>:408:                                    ; preds = %406, %404
  %409 = phi i32 [ %405, %404 ], [ %407, %406 ]
  store i32 %409, i32* @m_Qc, align 4
  br label %533

; <label>:410:                                    ; preds = %381
  %411 = load i64, i64* @T, align 8
  %412 = load i32, i32* @m_Hp, align 4
  %413 = sext i32 %412 to i64
  %414 = sub nsw i64 %411, %413
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %5, align 4
  %416 = load i32, i32* %5, align 4
  %417 = load double, double* @bit_rate, align 8
  %418 = load double, double* @MINVALUE, align 8
  %419 = load double, double* @frame_rate, align 8
  %420 = fmul double %418, %419
  %421 = fdiv double %417, %420
  %422 = fptosi double %421 to i32
  %423 = icmp slt i32 %416, %422
  br i1 %423, label %424, label %431

; <label>:424:                                    ; preds = %410
  %425 = load double, double* @bit_rate, align 8
  %426 = load double, double* @MINVALUE, align 8
  %427 = load double, double* @frame_rate, align 8
  %428 = fmul double %426, %427
  %429 = fdiv double %425, %428
  %430 = fptosi double %429 to i32
  br label %433

; <label>:431:                                    ; preds = %410
  %432 = load i32, i32* %5, align 4
  br label %433

; <label>:433:                                    ; preds = %431, %424
  %434 = phi i32 [ %430, %424 ], [ %432, %431 ]
  store i32 %434, i32* %5, align 4
  %435 = load double, double* @CurrentFrameMAD, align 8
  %436 = load double, double* @m_X1, align 8
  %437 = fmul double %435, %436
  %438 = load double, double* @CurrentFrameMAD, align 8
  %439 = fmul double %437, %438
  %440 = load double, double* @m_X1, align 8
  %441 = fmul double %439, %440
  %442 = load double, double* @m_X2, align 8
  %443 = fmul double 4.000000e+00, %442
  %444 = load double, double* @CurrentFrameMAD, align 8
  %445 = fmul double %443, %444
  %446 = load i32, i32* %5, align 4
  %447 = sitofp i32 %446 to double
  %448 = fmul double %445, %447
  %449 = fadd double %441, %448
  store double %449, double* %4, align 8
  %450 = load double, double* @m_X2, align 8
  %451 = fcmp oeq double %450, 0.000000e+00
  br i1 %451, label %463, label %452

; <label>:452:                                    ; preds = %433
  %453 = load double, double* %4, align 8
  %454 = fcmp olt double %453, 0.000000e+00
  br i1 %454, label %463, label %455

; <label>:455:                                    ; preds = %452
  %456 = load double, double* %4, align 8
  %457 = call double @sqrt(double %456) #4
  %458 = load double, double* @m_X1, align 8
  %459 = load double, double* @CurrentFrameMAD, align 8
  %460 = fmul double %458, %459
  %461 = fsub double %457, %460
  %462 = fcmp ole double %461, 0.000000e+00
  br i1 %462, label %463, label %472

; <label>:463:                                    ; preds = %455, %452, %433
  %464 = load double, double* @m_X1, align 8
  %465 = load double, double* @CurrentFrameMAD, align 8
  %466 = fmul double %464, %465
  %467 = load i32, i32* %5, align 4
  %468 = sitofp i32 %467 to double
  %469 = fdiv double %466, %468
  %470 = fptrunc double %469 to float
  %471 = fpext float %470 to double
  store double %471, double* @m_Qstep, align 8
  br label %486

; <label>:472:                                    ; preds = %455
  %473 = load double, double* @m_X2, align 8
  %474 = fmul double 2.000000e+00, %473
  %475 = load double, double* @CurrentFrameMAD, align 8
  %476 = fmul double %474, %475
  %477 = load double, double* %4, align 8
  %478 = call double @sqrt(double %477) #4
  %479 = load double, double* @m_X1, align 8
  %480 = load double, double* @CurrentFrameMAD, align 8
  %481 = fmul double %479, %480
  %482 = fsub double %478, %481
  %483 = fdiv double %476, %482
  %484 = fptrunc double %483 to float
  %485 = fpext float %484 to double
  store double %485, double* @m_Qstep, align 8
  br label %486

; <label>:486:                                    ; preds = %472, %463
  %487 = load double, double* @m_Qstep, align 8
  %488 = call i32 @Qstep2QP(double %487)
  store i32 %488, i32* @m_Qc, align 4
  %489 = load i32, i32* @m_Qp, align 4
  %490 = load i32, i32* @DuantQp, align 4
  %491 = add nsw i32 %489, %490
  %492 = load i32, i32* @m_Qc, align 4
  %493 = icmp slt i32 %491, %492
  br i1 %493, label %494, label %498

; <label>:494:                                    ; preds = %486
  %495 = load i32, i32* @m_Qp, align 4
  %496 = load i32, i32* @DuantQp, align 4
  %497 = add nsw i32 %495, %496
  br label %500

; <label>:498:                                    ; preds = %486
  %499 = load i32, i32* @m_Qc, align 4
  br label %500

; <label>:500:                                    ; preds = %498, %494
  %501 = phi i32 [ %497, %494 ], [ %499, %498 ]
  store i32 %501, i32* @m_Qc, align 4
  %502 = load i32, i32* @m_Qc, align 4
  %503 = load i32, i32* @RC_MAX_QUANT, align 4
  %504 = icmp slt i32 %502, %503
  br i1 %504, label %505, label %507

; <label>:505:                                    ; preds = %500
  %506 = load i32, i32* @m_Qc, align 4
  br label %509

; <label>:507:                                    ; preds = %500
  %508 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %509

; <label>:509:                                    ; preds = %507, %505
  %510 = phi i32 [ %506, %505 ], [ %508, %507 ]
  store i32 %510, i32* @m_Qc, align 4
  %511 = load i32, i32* @m_Qp, align 4
  %512 = load i32, i32* @DuantQp, align 4
  %513 = sub nsw i32 %511, %512
  %514 = load i32, i32* @m_Qc, align 4
  %515 = icmp slt i32 %513, %514
  br i1 %515, label %516, label %518

; <label>:516:                                    ; preds = %509
  %517 = load i32, i32* @m_Qc, align 4
  br label %522

; <label>:518:                                    ; preds = %509
  %519 = load i32, i32* @m_Qp, align 4
  %520 = load i32, i32* @DuantQp, align 4
  %521 = sub nsw i32 %519, %520
  br label %522

; <label>:522:                                    ; preds = %518, %516
  %523 = phi i32 [ %517, %516 ], [ %521, %518 ]
  store i32 %523, i32* @m_Qc, align 4
  %524 = load i32, i32* @RC_MIN_QUANT, align 4
  %525 = load i32, i32* @m_Qc, align 4
  %526 = icmp slt i32 %524, %525
  br i1 %526, label %527, label %529

; <label>:527:                                    ; preds = %522
  %528 = load i32, i32* @m_Qc, align 4
  br label %531

; <label>:529:                                    ; preds = %522
  %530 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %531

; <label>:531:                                    ; preds = %529, %527
  %532 = phi i32 [ %528, %527 ], [ %530, %529 ]
  store i32 %532, i32* @m_Qc, align 4
  br label %533

; <label>:533:                                    ; preds = %531, %408
  %534 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %535 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %534, i32 0, i32 134
  %536 = load i32, i32* %535, align 8
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %555

; <label>:538:                                    ; preds = %533
  %539 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %540 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %539, i32 0, i32 25
  %541 = load i32, i32* %540, align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %552

; <label>:543:                                    ; preds = %538
  %544 = load i32, i32* @m_Qc, align 4
  %545 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %546 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %545, i32 0, i32 129
  %547 = load i32, i32* %546, align 4
  %548 = add nsw i32 %547, %544
  store i32 %548, i32* %546, align 4
  %549 = load i32, i32* @PreviousQp2, align 4
  store i32 %549, i32* @PreviousQp1, align 4
  %550 = load i32, i32* @m_Qc, align 4
  store i32 %550, i32* @PreviousQp2, align 4
  %551 = load i32, i32* @m_Qc, align 4
  store i32 %551, i32* @Pm_Qp, align 4
  br label %554

; <label>:552:                                    ; preds = %538
  %553 = load i32, i32* @m_Qc, align 4
  store i32 %553, i32* @FrameQPBuffer, align 4
  br label %554

; <label>:554:                                    ; preds = %552, %543
  br label %555

; <label>:555:                                    ; preds = %554, %533
  %556 = load i32, i32* @m_Qc, align 4
  store i32 %556, i32* %2, align 4
  br label %1695

; <label>:557:                                    ; preds = %21
  %558 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %559 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %558, i32 0, i32 6
  %560 = load i32, i32* %559, align 8
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %585

; <label>:562:                                    ; preds = %557
  %563 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %564 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %563, i32 0, i32 137
  %565 = load i32, i32* %564, align 4
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %585

; <label>:567:                                    ; preds = %562
  %568 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %569 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %568, i32 0, i32 91
  %570 = load i32, i32* %569, align 8
  %571 = icmp eq i32 %570, 1
  br i1 %571, label %572, label %582

; <label>:572:                                    ; preds = %567
  %573 = load i32, i32* @m_Qc, align 4
  %574 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %575 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %574, i32 0, i32 129
  %576 = load i32, i32* %575, align 4
  %577 = add nsw i32 %576, %573
  store i32 %577, i32* %575, align 4
  %578 = load i32, i32* @PreviousQp2, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* @PreviousQp1, align 4
  %580 = load i32, i32* @m_Qc, align 4
  store i32 %580, i32* @PreviousQp2, align 4
  %581 = load i32, i32* @m_Qc, align 4
  store i32 %581, i32* @Pm_Qp, align 4
  br label %584

; <label>:582:                                    ; preds = %567
  %583 = load i32, i32* @m_Qc, align 4
  store i32 %583, i32* @FieldQPBuffer, align 4
  br label %584

; <label>:584:                                    ; preds = %582, %572
  br label %585

; <label>:585:                                    ; preds = %584, %562, %557
  %586 = load i32, i32* @m_Qc, align 4
  store i32 %586, i32* %2, align 4
  br label %1695

; <label>:587:                                    ; preds = %1
  %588 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %589 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %588, i32 0, i32 6
  %590 = load i32, i32* %589, align 8
  %591 = icmp eq i32 %590, 2
  br i1 %591, label %592, label %595

; <label>:592:                                    ; preds = %587
  %593 = load i32, i32* @MyInitialQp, align 4
  store i32 %593, i32* @m_Qc, align 4
  %594 = load i32, i32* @m_Qc, align 4
  store i32 %594, i32* %2, align 4
  br label %1695

; <label>:595:                                    ; preds = %587
  %596 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %597 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %596, i32 0, i32 6
  %598 = load i32, i32* %597, align 8
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %613

; <label>:600:                                    ; preds = %595
  %601 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %602 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %601, i32 0, i32 137
  %603 = load i32, i32* %602, align 4
  %604 = icmp eq i32 %603, 1
  br i1 %604, label %605, label %613

; <label>:605:                                    ; preds = %600
  %606 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %607 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %606, i32 0, i32 134
  %608 = load i32, i32* %607, align 8
  %609 = icmp eq i32 %608, 1
  br i1 %609, label %610, label %613

; <label>:610:                                    ; preds = %605
  %611 = load i32, i32* @MyInitialQp, align 4
  store i32 %611, i32* @m_Qc, align 4
  %612 = load i32, i32* @m_Qc, align 4
  store i32 %612, i32* %2, align 4
  br label %1695

; <label>:613:                                    ; preds = %605, %600, %595
  %614 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %615 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %614, i32 0, i32 6
  %616 = load i32, i32* %615, align 8
  %617 = icmp eq i32 %616, 1
  br i1 %617, label %618, label %900

; <label>:618:                                    ; preds = %613
  %619 = load i32, i32* %3, align 4
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %626, label %621

; <label>:621:                                    ; preds = %618
  %622 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %623 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %622, i32 0, i32 134
  %624 = load i32, i32* %623, align 8
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %898

; <label>:626:                                    ; preds = %621, %618
  %627 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %628 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %627, i32 0, i32 34
  %629 = load i32, i32* %628, align 4
  %630 = icmp eq i32 %629, 1
  br i1 %630, label %631, label %691

; <label>:631:                                    ; preds = %626
  %632 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %633 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %632, i32 0, i32 91
  %634 = load i32, i32* %633, align 8
  %635 = icmp eq i32 %634, 2
  br i1 %635, label %641, label %636

; <label>:636:                                    ; preds = %631
  %637 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %638 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %637, i32 0, i32 92
  %639 = load i32, i32* %638, align 4
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %659

; <label>:641:                                    ; preds = %636, %631
  %642 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %643 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %642, i32 0, i32 134
  %644 = load i32, i32* %643, align 8
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %658

; <label>:646:                                    ; preds = %641
  %647 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %648 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %647, i32 0, i32 135
  %649 = load i32, i32* %648, align 4
  %650 = icmp eq i32 %649, 1
  br i1 %650, label %651, label %654

; <label>:651:                                    ; preds = %646
  %652 = load i32, i32* @PreviousQp2, align 4
  store i32 %652, i32* @PreviousQp1, align 4
  %653 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %653, i32* @PreviousQp2, align 4
  br label %657

; <label>:654:                                    ; preds = %646
  %655 = load i32, i32* @PreviousQp2, align 4
  store i32 %655, i32* @PreviousQp1, align 4
  %656 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %656, i32* @PreviousQp2, align 4
  br label %657

; <label>:657:                                    ; preds = %654, %651
  br label %658

; <label>:658:                                    ; preds = %657, %641
  br label %659

; <label>:659:                                    ; preds = %658, %636
  %660 = load i32, i32* @PreviousQp1, align 4
  %661 = load i32, i32* @PreviousQp2, align 4
  %662 = icmp eq i32 %660, %661
  br i1 %662, label %663, label %666

; <label>:663:                                    ; preds = %659
  %664 = load i32, i32* @PreviousQp1, align 4
  %665 = add nsw i32 %664, 2
  store i32 %665, i32* @m_Qc, align 4
  br label %672

; <label>:666:                                    ; preds = %659
  %667 = load i32, i32* @PreviousQp1, align 4
  %668 = load i32, i32* @PreviousQp2, align 4
  %669 = add nsw i32 %667, %668
  %670 = sdiv i32 %669, 2
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* @m_Qc, align 4
  br label %672

; <label>:672:                                    ; preds = %666, %663
  %673 = load i32, i32* @m_Qc, align 4
  %674 = load i32, i32* @RC_MAX_QUANT, align 4
  %675 = icmp slt i32 %673, %674
  br i1 %675, label %676, label %678

; <label>:676:                                    ; preds = %672
  %677 = load i32, i32* @m_Qc, align 4
  br label %680

; <label>:678:                                    ; preds = %672
  %679 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %680

; <label>:680:                                    ; preds = %678, %676
  %681 = phi i32 [ %677, %676 ], [ %679, %678 ]
  store i32 %681, i32* @m_Qc, align 4
  %682 = load i32, i32* @RC_MIN_QUANT, align 4
  %683 = load i32, i32* @m_Qc, align 4
  %684 = icmp slt i32 %682, %683
  br i1 %684, label %685, label %687

; <label>:685:                                    ; preds = %680
  %686 = load i32, i32* @m_Qc, align 4
  br label %689

; <label>:687:                                    ; preds = %680
  %688 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %689

; <label>:689:                                    ; preds = %687, %685
  %690 = phi i32 [ %686, %685 ], [ %688, %687 ]
  store i32 %690, i32* @m_Qc, align 4
  br label %896

; <label>:691:                                    ; preds = %626
  %692 = load i32, i32* @NumberofBFrames, align 4
  %693 = add nsw i32 %692, 1
  %694 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %695 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %694, i32 0, i32 34
  %696 = load i32, i32* %695, align 4
  %697 = srem i32 %693, %696
  store i32 %697, i32* %6, align 4
  %698 = load i32, i32* %6, align 4
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %700, label %704

; <label>:700:                                    ; preds = %691
  %701 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %702 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %701, i32 0, i32 34
  %703 = load i32, i32* %702, align 4
  store i32 %703, i32* %6, align 4
  br label %704

; <label>:704:                                    ; preds = %700, %691
  %705 = load i32, i32* %6, align 4
  %706 = icmp eq i32 %705, 1
  br i1 %706, label %707, label %736

; <label>:707:                                    ; preds = %704
  %708 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %709 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %708, i32 0, i32 91
  %710 = load i32, i32* %709, align 8
  %711 = icmp eq i32 %710, 2
  br i1 %711, label %717, label %712

; <label>:712:                                    ; preds = %707
  %713 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %714 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %713, i32 0, i32 92
  %715 = load i32, i32* %714, align 4
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %735

; <label>:717:                                    ; preds = %712, %707
  %718 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %719 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %718, i32 0, i32 134
  %720 = load i32, i32* %719, align 8
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %734

; <label>:722:                                    ; preds = %717
  %723 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %724 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %723, i32 0, i32 135
  %725 = load i32, i32* %724, align 4
  %726 = icmp eq i32 %725, 1
  br i1 %726, label %727, label %730

; <label>:727:                                    ; preds = %722
  %728 = load i32, i32* @PreviousQp2, align 4
  store i32 %728, i32* @PreviousQp1, align 4
  %729 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %729, i32* @PreviousQp2, align 4
  br label %733

; <label>:730:                                    ; preds = %722
  %731 = load i32, i32* @PreviousQp2, align 4
  store i32 %731, i32* @PreviousQp1, align 4
  %732 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %732, i32* @PreviousQp2, align 4
  br label %733

; <label>:733:                                    ; preds = %730, %727
  br label %734

; <label>:734:                                    ; preds = %733, %717
  br label %735

; <label>:735:                                    ; preds = %734, %712
  br label %736

; <label>:736:                                    ; preds = %735, %704
  %737 = load i32, i32* @PreviousQp2, align 4
  %738 = load i32, i32* @PreviousQp1, align 4
  %739 = sub nsw i32 %737, %738
  %740 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %741 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %740, i32 0, i32 34
  %742 = load i32, i32* %741, align 4
  %743 = mul nsw i32 -2, %742
  %744 = sub nsw i32 %743, 3
  %745 = icmp sle i32 %739, %744
  br i1 %745, label %746, label %747

; <label>:746:                                    ; preds = %736
  store i32 -3, i32* %7, align 4
  br label %795

; <label>:747:                                    ; preds = %736
  %748 = load i32, i32* @PreviousQp2, align 4
  %749 = load i32, i32* @PreviousQp1, align 4
  %750 = sub nsw i32 %748, %749
  %751 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %752 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %751, i32 0, i32 34
  %753 = load i32, i32* %752, align 4
  %754 = mul nsw i32 -2, %753
  %755 = sub nsw i32 %754, 2
  %756 = icmp eq i32 %750, %755
  br i1 %756, label %757, label %758

; <label>:757:                                    ; preds = %747
  store i32 -2, i32* %7, align 4
  br label %794

; <label>:758:                                    ; preds = %747
  %759 = load i32, i32* @PreviousQp2, align 4
  %760 = load i32, i32* @PreviousQp1, align 4
  %761 = sub nsw i32 %759, %760
  %762 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %763 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %762, i32 0, i32 34
  %764 = load i32, i32* %763, align 4
  %765 = mul nsw i32 -2, %764
  %766 = sub nsw i32 %765, 1
  %767 = icmp eq i32 %761, %766
  br i1 %767, label %768, label %769

; <label>:768:                                    ; preds = %758
  store i32 -1, i32* %7, align 4
  br label %793

; <label>:769:                                    ; preds = %758
  %770 = load i32, i32* @PreviousQp2, align 4
  %771 = load i32, i32* @PreviousQp1, align 4
  %772 = sub nsw i32 %770, %771
  %773 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %774 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %773, i32 0, i32 34
  %775 = load i32, i32* %774, align 4
  %776 = mul nsw i32 -2, %775
  %777 = icmp eq i32 %772, %776
  br i1 %777, label %778, label %779

; <label>:778:                                    ; preds = %769
  store i32 0, i32* %7, align 4
  br label %792

; <label>:779:                                    ; preds = %769
  %780 = load i32, i32* @PreviousQp2, align 4
  %781 = load i32, i32* @PreviousQp1, align 4
  %782 = sub nsw i32 %780, %781
  %783 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %784 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %783, i32 0, i32 34
  %785 = load i32, i32* %784, align 4
  %786 = mul nsw i32 -2, %785
  %787 = add nsw i32 %786, 1
  %788 = icmp eq i32 %782, %787
  br i1 %788, label %789, label %790

; <label>:789:                                    ; preds = %779
  store i32 1, i32* %7, align 4
  br label %791

; <label>:790:                                    ; preds = %779
  store i32 2, i32* %7, align 4
  br label %791

; <label>:791:                                    ; preds = %790, %789
  br label %792

; <label>:792:                                    ; preds = %791, %778
  br label %793

; <label>:793:                                    ; preds = %792, %768
  br label %794

; <label>:794:                                    ; preds = %793, %757
  br label %795

; <label>:795:                                    ; preds = %794, %746
  %796 = load i32, i32* @PreviousQp1, align 4
  %797 = load i32, i32* %7, align 4
  %798 = add nsw i32 %796, %797
  store i32 %798, i32* @m_Qc, align 4
  %799 = load i32, i32* %6, align 4
  %800 = sub nsw i32 %799, 1
  %801 = mul nsw i32 2, %800
  %802 = load i32, i32* %6, align 4
  %803 = sub nsw i32 %802, 1
  %804 = mul nsw i32 -2, %803
  %805 = load i32, i32* %6, align 4
  %806 = sub nsw i32 %805, 1
  %807 = load i32, i32* @PreviousQp2, align 4
  %808 = load i32, i32* @PreviousQp1, align 4
  %809 = sub nsw i32 %807, %808
  %810 = mul nsw i32 %806, %809
  %811 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %812 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %811, i32 0, i32 34
  %813 = load i32, i32* %812, align 4
  %814 = sub nsw i32 %813, 1
  %815 = sdiv i32 %810, %814
  %816 = icmp slt i32 %804, %815
  br i1 %816, label %817, label %829

; <label>:817:                                    ; preds = %795
  %818 = load i32, i32* %6, align 4
  %819 = sub nsw i32 %818, 1
  %820 = load i32, i32* @PreviousQp2, align 4
  %821 = load i32, i32* @PreviousQp1, align 4
  %822 = sub nsw i32 %820, %821
  %823 = mul nsw i32 %819, %822
  %824 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %825 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %824, i32 0, i32 34
  %826 = load i32, i32* %825, align 4
  %827 = sub nsw i32 %826, 1
  %828 = sdiv i32 %823, %827
  br label %833

; <label>:829:                                    ; preds = %795
  %830 = load i32, i32* %6, align 4
  %831 = sub nsw i32 %830, 1
  %832 = mul nsw i32 -2, %831
  br label %833

; <label>:833:                                    ; preds = %829, %817
  %834 = phi i32 [ %828, %817 ], [ %832, %829 ]
  %835 = icmp slt i32 %801, %834
  br i1 %835, label %836, label %840

; <label>:836:                                    ; preds = %833
  %837 = load i32, i32* %6, align 4
  %838 = sub nsw i32 %837, 1
  %839 = mul nsw i32 2, %838
  br label %874

; <label>:840:                                    ; preds = %833
  %841 = load i32, i32* %6, align 4
  %842 = sub nsw i32 %841, 1
  %843 = mul nsw i32 -2, %842
  %844 = load i32, i32* %6, align 4
  %845 = sub nsw i32 %844, 1
  %846 = load i32, i32* @PreviousQp2, align 4
  %847 = load i32, i32* @PreviousQp1, align 4
  %848 = sub nsw i32 %846, %847
  %849 = mul nsw i32 %845, %848
  %850 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %851 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %850, i32 0, i32 34
  %852 = load i32, i32* %851, align 4
  %853 = sub nsw i32 %852, 1
  %854 = sdiv i32 %849, %853
  %855 = icmp slt i32 %843, %854
  br i1 %855, label %856, label %868

; <label>:856:                                    ; preds = %840
  %857 = load i32, i32* %6, align 4
  %858 = sub nsw i32 %857, 1
  %859 = load i32, i32* @PreviousQp2, align 4
  %860 = load i32, i32* @PreviousQp1, align 4
  %861 = sub nsw i32 %859, %860
  %862 = mul nsw i32 %858, %861
  %863 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %864 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %863, i32 0, i32 34
  %865 = load i32, i32* %864, align 4
  %866 = sub nsw i32 %865, 1
  %867 = sdiv i32 %862, %866
  br label %872

; <label>:868:                                    ; preds = %840
  %869 = load i32, i32* %6, align 4
  %870 = sub nsw i32 %869, 1
  %871 = mul nsw i32 -2, %870
  br label %872

; <label>:872:                                    ; preds = %868, %856
  %873 = phi i32 [ %867, %856 ], [ %871, %868 ]
  br label %874

; <label>:874:                                    ; preds = %872, %836
  %875 = phi i32 [ %839, %836 ], [ %873, %872 ]
  %876 = load i32, i32* @m_Qc, align 4
  %877 = add nsw i32 %876, %875
  store i32 %877, i32* @m_Qc, align 4
  %878 = load i32, i32* @m_Qc, align 4
  %879 = load i32, i32* @RC_MAX_QUANT, align 4
  %880 = icmp slt i32 %878, %879
  br i1 %880, label %881, label %883

; <label>:881:                                    ; preds = %874
  %882 = load i32, i32* @m_Qc, align 4
  br label %885

; <label>:883:                                    ; preds = %874
  %884 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %885

; <label>:885:                                    ; preds = %883, %881
  %886 = phi i32 [ %882, %881 ], [ %884, %883 ]
  store i32 %886, i32* @m_Qc, align 4
  %887 = load i32, i32* @RC_MIN_QUANT, align 4
  %888 = load i32, i32* @m_Qc, align 4
  %889 = icmp slt i32 %887, %888
  br i1 %889, label %890, label %892

; <label>:890:                                    ; preds = %885
  %891 = load i32, i32* @m_Qc, align 4
  br label %894

; <label>:892:                                    ; preds = %885
  %893 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %894

; <label>:894:                                    ; preds = %892, %890
  %895 = phi i32 [ %891, %890 ], [ %893, %892 ]
  store i32 %895, i32* @m_Qc, align 4
  br label %896

; <label>:896:                                    ; preds = %894, %689
  %897 = load i32, i32* @m_Qc, align 4
  store i32 %897, i32* %2, align 4
  br label %1695

; <label>:898:                                    ; preds = %621
  %899 = load i32, i32* @m_Qc, align 4
  store i32 %899, i32* %2, align 4
  br label %1695

; <label>:900:                                    ; preds = %613
  %901 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %902 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %901, i32 0, i32 6
  %903 = load i32, i32* %902, align 8
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %905, label %1689

; <label>:905:                                    ; preds = %900
  %906 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %907 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %906, i32 0, i32 128
  %908 = load i32, i32* %907, align 8
  %909 = icmp eq i32 %908, 1
  br i1 %909, label %910, label %994

; <label>:910:                                    ; preds = %905
  %911 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %912 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %911, i32 0, i32 130
  %913 = load i32, i32* %912, align 8
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %915, label %994

; <label>:915:                                    ; preds = %910
  %916 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %917 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %916, i32 0, i32 134
  %918 = load i32, i32* %917, align 8
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %930, label %920

; <label>:920:                                    ; preds = %915
  %921 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %922 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %921, i32 0, i32 134
  %923 = load i32, i32* %922, align 8
  %924 = icmp eq i32 %923, 1
  br i1 %924, label %925, label %993

; <label>:925:                                    ; preds = %920
  %926 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %927 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %926, i32 0, i32 137
  %928 = load i32, i32* %927, align 4
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %930, label %993

; <label>:930:                                    ; preds = %925, %915
  %931 = load i32, i32* @MyInitialQp, align 4
  store i32 %931, i32* @m_Qc, align 4
  %932 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %933 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %932, i32 0, i32 121
  store i32 0, i32* %933, align 4
  %934 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %935 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %934, i32 0, i32 122
  store i32 0, i32* %935, align 8
  %936 = load i32, i32* @NumberofBasicUnit, align 4
  %937 = add nsw i32 %936, -1
  store i32 %937, i32* @NumberofBasicUnit, align 4
  %938 = load i32, i32* %3, align 4
  %939 = icmp ne i32 %938, 0
  br i1 %939, label %987, label %940

; <label>:940:                                    ; preds = %930
  %941 = load i32, i32* @NumberofBasicUnit, align 4
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %943, label %987

; <label>:943:                                    ; preds = %940
  %944 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %945 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %944, i32 0, i32 25
  %946 = load i32, i32* %945, align 4
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %953, label %948

; <label>:948:                                    ; preds = %943
  %949 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %950 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %949, i32 0, i32 91
  %951 = load i32, i32* %950, align 8
  %952 = icmp eq i32 %951, 1
  br i1 %952, label %953, label %963

; <label>:953:                                    ; preds = %948, %943
  %954 = load i32, i32* @m_Qc, align 4
  %955 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %956 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %955, i32 0, i32 129
  %957 = load i32, i32* %956, align 4
  %958 = add nsw i32 %957, %954
  store i32 %958, i32* %956, align 4
  %959 = load i32, i32* @PreviousQp2, align 4
  store i32 %959, i32* @PreviousQp1, align 4
  %960 = load i32, i32* @m_Qc, align 4
  store i32 %960, i32* @PreviousQp2, align 4
  %961 = load i32, i32* @m_Qc, align 4
  store i32 %961, i32* @PAveFrameQP, align 4
  %962 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %962, i32* @PAveHeaderBits3, align 4
  br label %986

; <label>:963:                                    ; preds = %948
  %964 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %965 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %964, i32 0, i32 91
  %966 = load i32, i32* %965, align 8
  %967 = icmp eq i32 %966, 2
  br i1 %967, label %973, label %968

; <label>:968:                                    ; preds = %963
  %969 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %970 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %969, i32 0, i32 92
  %971 = load i32, i32* %970, align 4
  %972 = icmp ne i32 %971, 0
  br i1 %972, label %973, label %985

; <label>:973:                                    ; preds = %968, %963
  %974 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %975 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %974, i32 0, i32 134
  %976 = load i32, i32* %975, align 8
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %978, label %981

; <label>:978:                                    ; preds = %973
  %979 = load i32, i32* @m_Qc, align 4
  store i32 %979, i32* @FrameQPBuffer, align 4
  %980 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %980, i32* @FrameAveHeaderBits, align 4
  br label %984

; <label>:981:                                    ; preds = %973
  %982 = load i32, i32* @m_Qc, align 4
  store i32 %982, i32* @FieldQPBuffer, align 4
  %983 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %983, i32* @FieldAveHeaderBits, align 4
  br label %984

; <label>:984:                                    ; preds = %981, %978
  br label %985

; <label>:985:                                    ; preds = %984, %968
  br label %986

; <label>:986:                                    ; preds = %985, %953
  br label %987

; <label>:987:                                    ; preds = %986, %940, %930
  %988 = load i32, i32* @m_Qc, align 4
  store i32 %988, i32* @Pm_Qp, align 4
  %989 = load i32, i32* @m_Qc, align 4
  %990 = load i32, i32* @TotalFrameQP, align 4
  %991 = add nsw i32 %990, %989
  store i32 %991, i32* @TotalFrameQP, align 4
  %992 = load i32, i32* @m_Qc, align 4
  store i32 %992, i32* %2, align 4
  br label %1695

; <label>:993:                                    ; preds = %925, %920
  br label %1688

; <label>:994:                                    ; preds = %910, %905
  %995 = load double, double* @Pm_X1, align 8
  store double %995, double* @m_X1, align 8
  %996 = load double, double* @Pm_X2, align 8
  store double %996, double* @m_X2, align 8
  %997 = load i32, i32* @PPreHeader, align 4
  store i32 %997, i32* @m_Hp, align 4
  %998 = load i32, i32* @Pm_Qp, align 4
  store i32 %998, i32* @m_Qp, align 4
  %999 = load i32, i32* @PDuantQp, align 4
  store i32 %999, i32* @DuantQp, align 4
  %1000 = load double, double* @PMADPictureC1, align 8
  store double %1000, double* @MADPictureC1, align 8
  %1001 = load double, double* @PMADPictureC2, align 8
  store double %1001, double* @MADPictureC2, align 8
  %1002 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1003 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1002, i32 0, i32 134
  %1004 = load i32, i32* %1003, align 8
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %1008

; <label>:1006:                                   ; preds = %994
  %1007 = load i32, i32* @TotalNumberofBasicUnit, align 4
  store i32 %1007, i32* %9, align 4
  br label %1011

; <label>:1008:                                   ; preds = %994
  %1009 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1010 = sdiv i32 %1009, 2
  store i32 %1010, i32* %9, align 4
  br label %1011

; <label>:1011:                                   ; preds = %1008, %1006
  %1012 = load i32, i32* @NumberofBasicUnit, align 4
  %1013 = load i32, i32* %9, align 4
  %1014 = icmp eq i32 %1012, %1013
  br i1 %1014, label %1015, label %1095

; <label>:1015:                                   ; preds = %1011
  %1016 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1017 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1016, i32 0, i32 91
  %1018 = load i32, i32* %1017, align 8
  %1019 = icmp eq i32 %1018, 2
  br i1 %1019, label %1025, label %1020

; <label>:1020:                                   ; preds = %1015
  %1021 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1022 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1021, i32 0, i32 92
  %1023 = load i32, i32* %1022, align 4
  %1024 = icmp ne i32 %1023, 0
  br i1 %1024, label %1025, label %1064

; <label>:1025:                                   ; preds = %1020, %1015
  %1026 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1027 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1026, i32 0, i32 134
  %1028 = load i32, i32* %1027, align 8
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1030, label %1064

; <label>:1030:                                   ; preds = %1025
  %1031 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1032 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1031, i32 0, i32 135
  %1033 = load i32, i32* %1032, align 4
  %1034 = icmp eq i32 %1033, 1
  br i1 %1034, label %1035, label %1049

; <label>:1035:                                   ; preds = %1030
  %1036 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1037 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1036, i32 0, i32 130
  %1038 = load i32, i32* %1037, align 8
  %1039 = icmp sgt i32 %1038, 0
  br i1 %1039, label %1040, label %1046

; <label>:1040:                                   ; preds = %1035
  %1041 = load i32, i32* @FrameQPBuffer, align 4
  %1042 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1043 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1042, i32 0, i32 129
  %1044 = load i32, i32* %1043, align 4
  %1045 = add nsw i32 %1044, %1041
  store i32 %1045, i32* %1043, align 4
  br label %1046

; <label>:1046:                                   ; preds = %1040, %1035
  %1047 = load i32, i32* @FrameQPBuffer, align 4
  store i32 %1047, i32* @PAveFrameQP, align 4
  %1048 = load i32, i32* @FrameAveHeaderBits, align 4
  store i32 %1048, i32* @PAveHeaderBits3, align 4
  br label %1063

; <label>:1049:                                   ; preds = %1030
  %1050 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1051 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1050, i32 0, i32 130
  %1052 = load i32, i32* %1051, align 8
  %1053 = icmp sgt i32 %1052, 0
  br i1 %1053, label %1054, label %1060

; <label>:1054:                                   ; preds = %1049
  %1055 = load i32, i32* @FieldQPBuffer, align 4
  %1056 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1057 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1056, i32 0, i32 129
  %1058 = load i32, i32* %1057, align 4
  %1059 = add nsw i32 %1058, %1055
  store i32 %1059, i32* %1057, align 4
  br label %1060

; <label>:1060:                                   ; preds = %1054, %1049
  %1061 = load i32, i32* @FieldQPBuffer, align 4
  store i32 %1061, i32* @PAveFrameQP, align 4
  %1062 = load i32, i32* @FieldAveHeaderBits, align 4
  store i32 %1062, i32* @PAveHeaderBits3, align 4
  br label %1063

; <label>:1063:                                   ; preds = %1060, %1046
  br label %1064

; <label>:1064:                                   ; preds = %1063, %1025, %1020
  %1065 = load i64, i64* @T, align 8
  %1066 = icmp sle i64 %1065, 0
  br i1 %1066, label %1067, label %1085

; <label>:1067:                                   ; preds = %1064
  %1068 = load i32, i32* @PAveFrameQP, align 4
  %1069 = add nsw i32 %1068, 2
  store i32 %1069, i32* @m_Qc, align 4
  %1070 = load i32, i32* @m_Qc, align 4
  %1071 = load i32, i32* @RC_MAX_QUANT, align 4
  %1072 = icmp sgt i32 %1070, %1071
  br i1 %1072, label %1073, label %1075

; <label>:1073:                                   ; preds = %1067
  %1074 = load i32, i32* @RC_MAX_QUANT, align 4
  store i32 %1074, i32* @m_Qc, align 4
  br label %1075

; <label>:1075:                                   ; preds = %1073, %1067
  %1076 = load i32, i32* %3, align 4
  %1077 = icmp ne i32 %1076, 0
  br i1 %1077, label %1083, label %1078

; <label>:1078:                                   ; preds = %1075
  %1079 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1080 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1079, i32 0, i32 134
  %1081 = load i32, i32* %1080, align 8
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1083, label %1084

; <label>:1083:                                   ; preds = %1078, %1075
  store i32 1, i32* @GOPOverdue, align 4
  br label %1084

; <label>:1084:                                   ; preds = %1083, %1078
  br label %1087

; <label>:1085:                                   ; preds = %1064
  %1086 = load i32, i32* @PAveFrameQP, align 4
  store i32 %1086, i32* @m_Qc, align 4
  br label %1087

; <label>:1087:                                   ; preds = %1085, %1084
  %1088 = load i32, i32* @m_Qc, align 4
  %1089 = load i32, i32* @TotalFrameQP, align 4
  %1090 = add nsw i32 %1089, %1088
  store i32 %1090, i32* @TotalFrameQP, align 4
  %1091 = load i32, i32* @NumberofBasicUnit, align 4
  %1092 = add nsw i32 %1091, -1
  store i32 %1092, i32* @NumberofBasicUnit, align 4
  %1093 = load i32, i32* @PAveFrameQP, align 4
  store i32 %1093, i32* @Pm_Qp, align 4
  %1094 = load i32, i32* @m_Qc, align 4
  store i32 %1094, i32* %2, align 4
  br label %1695

; <label>:1095:                                   ; preds = %1011
  %1096 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1097 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1096, i32 0, i32 121
  %1098 = load i32, i32* %1097, align 4
  %1099 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1100 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1099, i32 0, i32 122
  %1101 = load i32, i32* %1100, align 8
  %1102 = add nsw i32 %1098, %1101
  store i32 %1102, i32* @TotalBasicUnitBits, align 4
  %1103 = load i32, i32* @TotalBasicUnitBits, align 4
  %1104 = sext i32 %1103 to i64
  %1105 = load i64, i64* @T, align 8
  %1106 = sub nsw i64 %1105, %1104
  store i64 %1106, i64* @T, align 8
  %1107 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1108 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1107, i32 0, i32 121
  store i32 0, i32* %1108, align 4
  %1109 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1109, i32 0, i32 122
  store i32 0, i32* %1110, align 8
  %1111 = load i64, i64* @T, align 8
  %1112 = icmp slt i64 %1111, 0
  br i1 %1112, label %1113, label %1296

; <label>:1113:                                   ; preds = %1095
  %1114 = load i32, i32* @GOPOverdue, align 4
  %1115 = icmp eq i32 %1114, 1
  br i1 %1115, label %1116, label %1119

; <label>:1116:                                   ; preds = %1113
  %1117 = load i32, i32* @m_Qp, align 4
  %1118 = add nsw i32 %1117, 2
  store i32 %1118, i32* @m_Qc, align 4
  br label %1123

; <label>:1119:                                   ; preds = %1113
  %1120 = load i32, i32* @m_Qp, align 4
  %1121 = load i32, i32* @DDquant, align 4
  %1122 = add nsw i32 %1120, %1121
  store i32 %1122, i32* @m_Qc, align 4
  br label %1123

; <label>:1123:                                   ; preds = %1119, %1116
  %1124 = load i32, i32* @m_Qc, align 4
  %1125 = load i32, i32* @RC_MAX_QUANT, align 4
  %1126 = icmp slt i32 %1124, %1125
  br i1 %1126, label %1127, label %1129

; <label>:1127:                                   ; preds = %1123
  %1128 = load i32, i32* @m_Qc, align 4
  br label %1131

; <label>:1129:                                   ; preds = %1123
  %1130 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %1131

; <label>:1131:                                   ; preds = %1129, %1127
  %1132 = phi i32 [ %1128, %1127 ], [ %1130, %1129 ]
  store i32 %1132, i32* @m_Qc, align 4
  %1133 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1134 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1133, i32 0, i32 130
  %1135 = load i32, i32* %1134, align 8
  %1136 = load i32, i32* @MBPerRow, align 4
  %1137 = icmp sge i32 %1135, %1136
  br i1 %1137, label %1138, label %1150

; <label>:1138:                                   ; preds = %1131
  %1139 = load i32, i32* @m_Qc, align 4
  %1140 = load i32, i32* @PAveFrameQP, align 4
  %1141 = add nsw i32 %1140, 6
  %1142 = icmp slt i32 %1139, %1141
  br i1 %1142, label %1143, label %1145

; <label>:1143:                                   ; preds = %1138
  %1144 = load i32, i32* @m_Qc, align 4
  br label %1148

; <label>:1145:                                   ; preds = %1138
  %1146 = load i32, i32* @PAveFrameQP, align 4
  %1147 = add nsw i32 %1146, 6
  br label %1148

; <label>:1148:                                   ; preds = %1145, %1143
  %1149 = phi i32 [ %1144, %1143 ], [ %1147, %1145 ]
  store i32 %1149, i32* @m_Qc, align 4
  br label %1162

; <label>:1150:                                   ; preds = %1131
  %1151 = load i32, i32* @m_Qc, align 4
  %1152 = load i32, i32* @PAveFrameQP, align 4
  %1153 = add nsw i32 %1152, 3
  %1154 = icmp slt i32 %1151, %1153
  br i1 %1154, label %1155, label %1157

; <label>:1155:                                   ; preds = %1150
  %1156 = load i32, i32* @m_Qc, align 4
  br label %1160

; <label>:1157:                                   ; preds = %1150
  %1158 = load i32, i32* @PAveFrameQP, align 4
  %1159 = add nsw i32 %1158, 3
  br label %1160

; <label>:1160:                                   ; preds = %1157, %1155
  %1161 = phi i32 [ %1156, %1155 ], [ %1159, %1157 ]
  store i32 %1161, i32* @m_Qc, align 4
  br label %1162

; <label>:1162:                                   ; preds = %1160, %1148
  %1163 = load i32, i32* @m_Qc, align 4
  %1164 = load i32, i32* @TotalFrameQP, align 4
  %1165 = add nsw i32 %1164, %1163
  store i32 %1165, i32* @TotalFrameQP, align 4
  %1166 = load i32, i32* @NumberofBasicUnit, align 4
  %1167 = add nsw i32 %1166, -1
  store i32 %1167, i32* @NumberofBasicUnit, align 4
  %1168 = load i32, i32* @NumberofBasicUnit, align 4
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1170, label %1287

; <label>:1170:                                   ; preds = %1162
  %1171 = load i32, i32* %3, align 4
  %1172 = icmp ne i32 %1171, 0
  br i1 %1172, label %1173, label %1178

; <label>:1173:                                   ; preds = %1170
  %1174 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1175 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1174, i32 0, i32 134
  %1176 = load i32, i32* %1175, align 8
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1178, label %1286

; <label>:1178:                                   ; preds = %1173, %1170
  %1179 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %1180 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %1179, i32 0, i32 25
  %1181 = load i32, i32* %1180, align 4
  %1182 = icmp ne i32 %1181, 0
  br i1 %1182, label %1188, label %1183

; <label>:1183:                                   ; preds = %1178
  %1184 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1185 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1184, i32 0, i32 91
  %1186 = load i32, i32* %1185, align 8
  %1187 = icmp eq i32 %1186, 1
  br i1 %1187, label %1188, label %1246

; <label>:1188:                                   ; preds = %1183, %1178
  %1189 = load i32, i32* @TotalFrameQP, align 4
  %1190 = sitofp i32 %1189 to double
  %1191 = fmul double 1.000000e+00, %1190
  %1192 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1193 = sitofp i32 %1192 to double
  %1194 = fdiv double %1191, %1193
  %1195 = fadd double %1194, 5.000000e-01
  %1196 = fptosi double %1195 to i32
  store i32 %1196, i32* %8, align 4
  %1197 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1198 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1197, i32 0, i32 130
  %1199 = load i32, i32* %1198, align 8
  %1200 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1201 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1200, i32 0, i32 31
  %1202 = load i32, i32* %1201, align 8
  %1203 = sub nsw i32 %1202, 2
  %1204 = icmp eq i32 %1199, %1203
  br i1 %1204, label %1205, label %1207

; <label>:1205:                                   ; preds = %1188
  %1206 = load i32, i32* %8, align 4
  store i32 %1206, i32* @QPLastPFrame, align 4
  br label %1207

; <label>:1207:                                   ; preds = %1205, %1188
  %1208 = load i32, i32* %8, align 4
  %1209 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1210 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1209, i32 0, i32 129
  %1211 = load i32, i32* %1210, align 4
  %1212 = add nsw i32 %1211, %1208
  store i32 %1212, i32* %1210, align 4
  %1213 = load i32, i32* @GOPOverdue, align 4
  %1214 = icmp eq i32 %1213, 1
  br i1 %1214, label %1215, label %1219

; <label>:1215:                                   ; preds = %1207
  %1216 = load i32, i32* @PreviousQp2, align 4
  %1217 = add nsw i32 %1216, 1
  store i32 %1217, i32* @PreviousQp1, align 4
  %1218 = load i32, i32* %8, align 4
  store i32 %1218, i32* @PreviousQp2, align 4
  br label %1243

; <label>:1219:                                   ; preds = %1207
  %1220 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1221 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1220, i32 0, i32 130
  %1222 = load i32, i32* %1221, align 8
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1224, label %1232

; <label>:1224:                                   ; preds = %1219
  %1225 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1226 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1225, i32 0, i32 128
  %1227 = load i32, i32* %1226, align 8
  %1228 = icmp sgt i32 %1227, 1
  br i1 %1228, label %1229, label %1232

; <label>:1229:                                   ; preds = %1224
  %1230 = load i32, i32* @PreviousQp2, align 4
  store i32 %1230, i32* @PreviousQp1, align 4
  %1231 = load i32, i32* %8, align 4
  store i32 %1231, i32* @PreviousQp2, align 4
  br label %1242

; <label>:1232:                                   ; preds = %1224, %1219
  %1233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1234 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1233, i32 0, i32 130
  %1235 = load i32, i32* %1234, align 8
  %1236 = icmp sgt i32 %1235, 0
  br i1 %1236, label %1237, label %1241

; <label>:1237:                                   ; preds = %1232
  %1238 = load i32, i32* @PreviousQp2, align 4
  %1239 = add nsw i32 %1238, 1
  store i32 %1239, i32* @PreviousQp1, align 4
  %1240 = load i32, i32* %8, align 4
  store i32 %1240, i32* @PreviousQp2, align 4
  br label %1241

; <label>:1241:                                   ; preds = %1237, %1232
  br label %1242

; <label>:1242:                                   ; preds = %1241, %1229
  br label %1243

; <label>:1243:                                   ; preds = %1242, %1215
  %1244 = load i32, i32* %8, align 4
  store i32 %1244, i32* @PAveFrameQP, align 4
  %1245 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %1245, i32* @PAveHeaderBits3, align 4
  br label %1285

; <label>:1246:                                   ; preds = %1183
  %1247 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1248 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1247, i32 0, i32 91
  %1249 = load i32, i32* %1248, align 8
  %1250 = icmp eq i32 %1249, 2
  br i1 %1250, label %1256, label %1251

; <label>:1251:                                   ; preds = %1246
  %1252 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1253 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1252, i32 0, i32 92
  %1254 = load i32, i32* %1253, align 4
  %1255 = icmp ne i32 %1254, 0
  br i1 %1255, label %1256, label %1284

; <label>:1256:                                   ; preds = %1251, %1246
  %1257 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1258 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1257, i32 0, i32 134
  %1259 = load i32, i32* %1258, align 8
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1261, label %1272

; <label>:1261:                                   ; preds = %1256
  %1262 = load i32, i32* @TotalFrameQP, align 4
  %1263 = sitofp i32 %1262 to double
  %1264 = fmul double 1.000000e+00, %1263
  %1265 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1266 = sitofp i32 %1265 to double
  %1267 = fdiv double %1264, %1266
  %1268 = fadd double %1267, 5.000000e-01
  %1269 = fptosi double %1268 to i32
  store i32 %1269, i32* %8, align 4
  %1270 = load i32, i32* %8, align 4
  store i32 %1270, i32* @FrameQPBuffer, align 4
  %1271 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %1271, i32* @FrameAveHeaderBits, align 4
  br label %1283

; <label>:1272:                                   ; preds = %1256
  %1273 = load i32, i32* @TotalFrameQP, align 4
  %1274 = sitofp i32 %1273 to double
  %1275 = fmul double 1.000000e+00, %1274
  %1276 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1277 = sitofp i32 %1276 to double
  %1278 = fdiv double %1275, %1277
  %1279 = fadd double %1278, 5.000000e-01
  %1280 = fptosi double %1279 to i32
  store i32 %1280, i32* %8, align 4
  %1281 = load i32, i32* %8, align 4
  store i32 %1281, i32* @FieldQPBuffer, align 4
  %1282 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %1282, i32* @FieldAveHeaderBits, align 4
  br label %1283

; <label>:1283:                                   ; preds = %1272, %1261
  br label %1284

; <label>:1284:                                   ; preds = %1283, %1251
  br label %1285

; <label>:1285:                                   ; preds = %1284, %1243
  br label %1286

; <label>:1286:                                   ; preds = %1285, %1173
  br label %1287

; <label>:1287:                                   ; preds = %1286, %1162
  %1288 = load i32, i32* @GOPOverdue, align 4
  %1289 = icmp eq i32 %1288, 1
  br i1 %1289, label %1290, label %1292

; <label>:1290:                                   ; preds = %1287
  %1291 = load i32, i32* @PAveFrameQP, align 4
  store i32 %1291, i32* @Pm_Qp, align 4
  br label %1294

; <label>:1292:                                   ; preds = %1287
  %1293 = load i32, i32* @m_Qc, align 4
  store i32 %1293, i32* @Pm_Qp, align 4
  br label %1294

; <label>:1294:                                   ; preds = %1292, %1290
  %1295 = load i32, i32* @m_Qc, align 4
  store i32 %1295, i32* %2, align 4
  br label %1695

; <label>:1296:                                   ; preds = %1095
  %1297 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1298 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1297, i32 0, i32 91
  %1299 = load i32, i32* %1298, align 8
  %1300 = icmp eq i32 %1299, 2
  br i1 %1300, label %1306, label %1301

; <label>:1301:                                   ; preds = %1296
  %1302 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1303 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1302, i32 0, i32 92
  %1304 = load i32, i32* %1303, align 4
  %1305 = icmp ne i32 %1304, 0
  br i1 %1305, label %1306, label %1350

; <label>:1306:                                   ; preds = %1301, %1296
  %1307 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1308 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1307, i32 0, i32 134
  %1309 = load i32, i32* %1308, align 8
  %1310 = icmp eq i32 %1309, 1
  br i1 %1310, label %1311, label %1350

; <label>:1311:                                   ; preds = %1306
  %1312 = load double, double* @MADPictureC1, align 8
  %1313 = load double*, double** @FCBUPFMAD, align 8
  %1314 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1315 = load i32, i32* @NumberofBasicUnit, align 4
  %1316 = sub nsw i32 %1314, %1315
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds double, double* %1313, i64 %1317
  %1319 = load double, double* %1318, align 8
  %1320 = fmul double %1312, %1319
  %1321 = load double, double* @MADPictureC2, align 8
  %1322 = fadd double %1320, %1321
  store double %1322, double* @CurrentFrameMAD, align 8
  store double 0.000000e+00, double* @TotalBUMAD, align 8
  %1323 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1324 = sub nsw i32 %1323, 1
  store i32 %1324, i32* %10, align 4
  br label %1325

; <label>:1325:                                   ; preds = %1346, %1311
  %1326 = load i32, i32* %10, align 4
  %1327 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1328 = load i32, i32* @NumberofBasicUnit, align 4
  %1329 = sub nsw i32 %1327, %1328
  %1330 = icmp sge i32 %1326, %1329
  br i1 %1330, label %1331, label %1349

; <label>:1331:                                   ; preds = %1325
  %1332 = load double, double* @MADPictureC1, align 8
  %1333 = load double*, double** @FCBUPFMAD, align 8
  %1334 = load i32, i32* %10, align 4
  %1335 = sext i32 %1334 to i64
  %1336 = getelementptr inbounds double, double* %1333, i64 %1335
  %1337 = load double, double* %1336, align 8
  %1338 = fmul double %1332, %1337
  %1339 = load double, double* @MADPictureC2, align 8
  %1340 = fadd double %1338, %1339
  store double %1340, double* @CurrentBUMAD, align 8
  %1341 = load double, double* @CurrentBUMAD, align 8
  %1342 = load double, double* @CurrentBUMAD, align 8
  %1343 = fmul double %1341, %1342
  %1344 = load double, double* @TotalBUMAD, align 8
  %1345 = fadd double %1344, %1343
  store double %1345, double* @TotalBUMAD, align 8
  br label %1346

; <label>:1346:                                   ; preds = %1331
  %1347 = load i32, i32* %10, align 4
  %1348 = add nsw i32 %1347, -1
  store i32 %1348, i32* %10, align 4
  br label %1325

; <label>:1349:                                   ; preds = %1325
  br label %1389

; <label>:1350:                                   ; preds = %1306, %1301
  %1351 = load double, double* @MADPictureC1, align 8
  %1352 = load double*, double** @BUPFMAD, align 8
  %1353 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1354 = load i32, i32* @NumberofBasicUnit, align 4
  %1355 = sub nsw i32 %1353, %1354
  %1356 = sext i32 %1355 to i64
  %1357 = getelementptr inbounds double, double* %1352, i64 %1356
  %1358 = load double, double* %1357, align 8
  %1359 = fmul double %1351, %1358
  %1360 = load double, double* @MADPictureC2, align 8
  %1361 = fadd double %1359, %1360
  store double %1361, double* @CurrentFrameMAD, align 8
  store double 0.000000e+00, double* @TotalBUMAD, align 8
  %1362 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1363 = sub nsw i32 %1362, 1
  store i32 %1363, i32* %10, align 4
  br label %1364

; <label>:1364:                                   ; preds = %1385, %1350
  %1365 = load i32, i32* %10, align 4
  %1366 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1367 = load i32, i32* @NumberofBasicUnit, align 4
  %1368 = sub nsw i32 %1366, %1367
  %1369 = icmp sge i32 %1365, %1368
  br i1 %1369, label %1370, label %1388

; <label>:1370:                                   ; preds = %1364
  %1371 = load double, double* @MADPictureC1, align 8
  %1372 = load double*, double** @BUPFMAD, align 8
  %1373 = load i32, i32* %10, align 4
  %1374 = sext i32 %1373 to i64
  %1375 = getelementptr inbounds double, double* %1372, i64 %1374
  %1376 = load double, double* %1375, align 8
  %1377 = fmul double %1371, %1376
  %1378 = load double, double* @MADPictureC2, align 8
  %1379 = fadd double %1377, %1378
  store double %1379, double* @CurrentBUMAD, align 8
  %1380 = load double, double* @CurrentBUMAD, align 8
  %1381 = load double, double* @CurrentBUMAD, align 8
  %1382 = fmul double %1380, %1381
  %1383 = load double, double* @TotalBUMAD, align 8
  %1384 = fadd double %1383, %1382
  store double %1384, double* @TotalBUMAD, align 8
  br label %1385

; <label>:1385:                                   ; preds = %1370
  %1386 = load i32, i32* %10, align 4
  %1387 = add nsw i32 %1386, -1
  store i32 %1387, i32* %10, align 4
  br label %1364

; <label>:1388:                                   ; preds = %1364
  br label %1389

; <label>:1389:                                   ; preds = %1388, %1349
  %1390 = load i64, i64* @T, align 8
  %1391 = sitofp i64 %1390 to double
  %1392 = load double, double* @CurrentFrameMAD, align 8
  %1393 = fmul double %1391, %1392
  %1394 = load double, double* @CurrentFrameMAD, align 8
  %1395 = fmul double %1393, %1394
  %1396 = load double, double* @TotalBUMAD, align 8
  %1397 = fdiv double %1395, %1396
  %1398 = fptosi double %1397 to i32
  store i32 %1398, i32* %5, align 4
  %1399 = load i32, i32* @PAveHeaderBits2, align 4
  %1400 = load i32, i32* %5, align 4
  %1401 = sub nsw i32 %1400, %1399
  store i32 %1401, i32* %5, align 4
  %1402 = load i32, i32* %5, align 4
  %1403 = load double, double* @bit_rate, align 8
  %1404 = load double, double* @MINVALUE, align 8
  %1405 = load double, double* @frame_rate, align 8
  %1406 = fmul double %1404, %1405
  %1407 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1408 = sitofp i32 %1407 to double
  %1409 = fmul double %1406, %1408
  %1410 = fdiv double %1403, %1409
  %1411 = fptosi double %1410 to i32
  %1412 = icmp slt i32 %1402, %1411
  br i1 %1412, label %1413, label %1423

; <label>:1413:                                   ; preds = %1389
  %1414 = load double, double* @bit_rate, align 8
  %1415 = load double, double* @MINVALUE, align 8
  %1416 = load double, double* @frame_rate, align 8
  %1417 = fmul double %1415, %1416
  %1418 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1419 = sitofp i32 %1418 to double
  %1420 = fmul double %1417, %1419
  %1421 = fdiv double %1414, %1420
  %1422 = fptosi double %1421 to i32
  br label %1425

; <label>:1423:                                   ; preds = %1389
  %1424 = load i32, i32* %5, align 4
  br label %1425

; <label>:1425:                                   ; preds = %1423, %1413
  %1426 = phi i32 [ %1422, %1413 ], [ %1424, %1423 ]
  store i32 %1426, i32* %5, align 4
  %1427 = load double, double* @CurrentFrameMAD, align 8
  %1428 = load double, double* @m_X1, align 8
  %1429 = fmul double %1427, %1428
  %1430 = load double, double* @CurrentFrameMAD, align 8
  %1431 = fmul double %1429, %1430
  %1432 = load double, double* @m_X1, align 8
  %1433 = fmul double %1431, %1432
  %1434 = load double, double* @m_X2, align 8
  %1435 = fmul double 4.000000e+00, %1434
  %1436 = load double, double* @CurrentFrameMAD, align 8
  %1437 = fmul double %1435, %1436
  %1438 = load i32, i32* %5, align 4
  %1439 = sitofp i32 %1438 to double
  %1440 = fmul double %1437, %1439
  %1441 = fadd double %1433, %1440
  store double %1441, double* %4, align 8
  %1442 = load double, double* @m_X2, align 8
  %1443 = fcmp oeq double %1442, 0.000000e+00
  br i1 %1443, label %1455, label %1444

; <label>:1444:                                   ; preds = %1425
  %1445 = load double, double* %4, align 8
  %1446 = fcmp olt double %1445, 0.000000e+00
  br i1 %1446, label %1455, label %1447

; <label>:1447:                                   ; preds = %1444
  %1448 = load double, double* %4, align 8
  %1449 = call double @sqrt(double %1448) #4
  %1450 = load double, double* @m_X1, align 8
  %1451 = load double, double* @CurrentFrameMAD, align 8
  %1452 = fmul double %1450, %1451
  %1453 = fsub double %1449, %1452
  %1454 = fcmp ole double %1453, 0.000000e+00
  br i1 %1454, label %1455, label %1464

; <label>:1455:                                   ; preds = %1447, %1444, %1425
  %1456 = load double, double* @m_X1, align 8
  %1457 = load double, double* @CurrentFrameMAD, align 8
  %1458 = fmul double %1456, %1457
  %1459 = load i32, i32* %5, align 4
  %1460 = sitofp i32 %1459 to double
  %1461 = fdiv double %1458, %1460
  %1462 = fptrunc double %1461 to float
  %1463 = fpext float %1462 to double
  store double %1463, double* @m_Qstep, align 8
  br label %1478

; <label>:1464:                                   ; preds = %1447
  %1465 = load double, double* @m_X2, align 8
  %1466 = fmul double 2.000000e+00, %1465
  %1467 = load double, double* @CurrentFrameMAD, align 8
  %1468 = fmul double %1466, %1467
  %1469 = load double, double* %4, align 8
  %1470 = call double @sqrt(double %1469) #4
  %1471 = load double, double* @m_X1, align 8
  %1472 = load double, double* @CurrentFrameMAD, align 8
  %1473 = fmul double %1471, %1472
  %1474 = fsub double %1470, %1473
  %1475 = fdiv double %1468, %1474
  %1476 = fptrunc double %1475 to float
  %1477 = fpext float %1476 to double
  store double %1477, double* @m_Qstep, align 8
  br label %1478

; <label>:1478:                                   ; preds = %1464, %1455
  %1479 = load double, double* @m_Qstep, align 8
  %1480 = call i32 @Qstep2QP(double %1479)
  store i32 %1480, i32* @m_Qc, align 4
  %1481 = load i32, i32* @m_Qp, align 4
  %1482 = load i32, i32* @DDquant, align 4
  %1483 = add nsw i32 %1481, %1482
  %1484 = load i32, i32* @m_Qc, align 4
  %1485 = icmp slt i32 %1483, %1484
  br i1 %1485, label %1486, label %1490

; <label>:1486:                                   ; preds = %1478
  %1487 = load i32, i32* @m_Qp, align 4
  %1488 = load i32, i32* @DDquant, align 4
  %1489 = add nsw i32 %1487, %1488
  br label %1492

; <label>:1490:                                   ; preds = %1478
  %1491 = load i32, i32* @m_Qc, align 4
  br label %1492

; <label>:1492:                                   ; preds = %1490, %1486
  %1493 = phi i32 [ %1489, %1486 ], [ %1491, %1490 ]
  store i32 %1493, i32* @m_Qc, align 4
  %1494 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1495 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1494, i32 0, i32 130
  %1496 = load i32, i32* %1495, align 8
  %1497 = load i32, i32* @MBPerRow, align 4
  %1498 = icmp sge i32 %1496, %1497
  br i1 %1498, label %1499, label %1511

; <label>:1499:                                   ; preds = %1492
  %1500 = load i32, i32* @PAveFrameQP, align 4
  %1501 = add nsw i32 %1500, 6
  %1502 = load i32, i32* @m_Qc, align 4
  %1503 = icmp slt i32 %1501, %1502
  br i1 %1503, label %1504, label %1507

; <label>:1504:                                   ; preds = %1499
  %1505 = load i32, i32* @PAveFrameQP, align 4
  %1506 = add nsw i32 %1505, 6
  br label %1509

; <label>:1507:                                   ; preds = %1499
  %1508 = load i32, i32* @m_Qc, align 4
  br label %1509

; <label>:1509:                                   ; preds = %1507, %1504
  %1510 = phi i32 [ %1506, %1504 ], [ %1508, %1507 ]
  store i32 %1510, i32* @m_Qc, align 4
  br label %1523

; <label>:1511:                                   ; preds = %1492
  %1512 = load i32, i32* @PAveFrameQP, align 4
  %1513 = add nsw i32 %1512, 3
  %1514 = load i32, i32* @m_Qc, align 4
  %1515 = icmp slt i32 %1513, %1514
  br i1 %1515, label %1516, label %1519

; <label>:1516:                                   ; preds = %1511
  %1517 = load i32, i32* @PAveFrameQP, align 4
  %1518 = add nsw i32 %1517, 3
  br label %1521

; <label>:1519:                                   ; preds = %1511
  %1520 = load i32, i32* @m_Qc, align 4
  br label %1521

; <label>:1521:                                   ; preds = %1519, %1516
  %1522 = phi i32 [ %1518, %1516 ], [ %1520, %1519 ]
  store i32 %1522, i32* @m_Qc, align 4
  br label %1523

; <label>:1523:                                   ; preds = %1521, %1509
  %1524 = load i32, i32* @m_Qc, align 4
  %1525 = load i32, i32* @RC_MAX_QUANT, align 4
  %1526 = icmp slt i32 %1524, %1525
  br i1 %1526, label %1527, label %1529

; <label>:1527:                                   ; preds = %1523
  %1528 = load i32, i32* @m_Qc, align 4
  br label %1531

; <label>:1529:                                   ; preds = %1523
  %1530 = load i32, i32* @RC_MAX_QUANT, align 4
  br label %1531

; <label>:1531:                                   ; preds = %1529, %1527
  %1532 = phi i32 [ %1528, %1527 ], [ %1530, %1529 ]
  store i32 %1532, i32* @m_Qc, align 4
  %1533 = load i32, i32* @m_Qp, align 4
  %1534 = load i32, i32* @DDquant, align 4
  %1535 = sub nsw i32 %1533, %1534
  %1536 = load i32, i32* @m_Qc, align 4
  %1537 = icmp slt i32 %1535, %1536
  br i1 %1537, label %1538, label %1540

; <label>:1538:                                   ; preds = %1531
  %1539 = load i32, i32* @m_Qc, align 4
  br label %1544

; <label>:1540:                                   ; preds = %1531
  %1541 = load i32, i32* @m_Qp, align 4
  %1542 = load i32, i32* @DDquant, align 4
  %1543 = sub nsw i32 %1541, %1542
  br label %1544

; <label>:1544:                                   ; preds = %1540, %1538
  %1545 = phi i32 [ %1539, %1538 ], [ %1543, %1540 ]
  store i32 %1545, i32* @m_Qc, align 4
  %1546 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1547 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1546, i32 0, i32 130
  %1548 = load i32, i32* %1547, align 8
  %1549 = load i32, i32* @MBPerRow, align 4
  %1550 = icmp sge i32 %1548, %1549
  br i1 %1550, label %1551, label %1563

; <label>:1551:                                   ; preds = %1544
  %1552 = load i32, i32* @PAveFrameQP, align 4
  %1553 = sub nsw i32 %1552, 6
  %1554 = load i32, i32* @m_Qc, align 4
  %1555 = icmp slt i32 %1553, %1554
  br i1 %1555, label %1556, label %1558

; <label>:1556:                                   ; preds = %1551
  %1557 = load i32, i32* @m_Qc, align 4
  br label %1561

; <label>:1558:                                   ; preds = %1551
  %1559 = load i32, i32* @PAveFrameQP, align 4
  %1560 = sub nsw i32 %1559, 6
  br label %1561

; <label>:1561:                                   ; preds = %1558, %1556
  %1562 = phi i32 [ %1557, %1556 ], [ %1560, %1558 ]
  store i32 %1562, i32* @m_Qc, align 4
  br label %1575

; <label>:1563:                                   ; preds = %1544
  %1564 = load i32, i32* @PAveFrameQP, align 4
  %1565 = sub nsw i32 %1564, 3
  %1566 = load i32, i32* @m_Qc, align 4
  %1567 = icmp slt i32 %1565, %1566
  br i1 %1567, label %1568, label %1570

; <label>:1568:                                   ; preds = %1563
  %1569 = load i32, i32* @m_Qc, align 4
  br label %1573

; <label>:1570:                                   ; preds = %1563
  %1571 = load i32, i32* @PAveFrameQP, align 4
  %1572 = sub nsw i32 %1571, 3
  br label %1573

; <label>:1573:                                   ; preds = %1570, %1568
  %1574 = phi i32 [ %1569, %1568 ], [ %1572, %1570 ]
  store i32 %1574, i32* @m_Qc, align 4
  br label %1575

; <label>:1575:                                   ; preds = %1573, %1561
  %1576 = load i32, i32* @RC_MIN_QUANT, align 4
  %1577 = load i32, i32* @m_Qc, align 4
  %1578 = icmp slt i32 %1576, %1577
  br i1 %1578, label %1579, label %1581

; <label>:1579:                                   ; preds = %1575
  %1580 = load i32, i32* @m_Qc, align 4
  br label %1583

; <label>:1581:                                   ; preds = %1575
  %1582 = load i32, i32* @RC_MIN_QUANT, align 4
  br label %1583

; <label>:1583:                                   ; preds = %1581, %1579
  %1584 = phi i32 [ %1580, %1579 ], [ %1582, %1581 ]
  store i32 %1584, i32* @m_Qc, align 4
  %1585 = load i32, i32* @m_Qc, align 4
  %1586 = load i32, i32* @TotalFrameQP, align 4
  %1587 = add nsw i32 %1586, %1585
  store i32 %1587, i32* @TotalFrameQP, align 4
  %1588 = load i32, i32* @m_Qc, align 4
  store i32 %1588, i32* @Pm_Qp, align 4
  %1589 = load i32, i32* @NumberofBasicUnit, align 4
  %1590 = add nsw i32 %1589, -1
  store i32 %1590, i32* @NumberofBasicUnit, align 4
  %1591 = load i32, i32* @NumberofBasicUnit, align 4
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1593, label %1686

; <label>:1593:                                   ; preds = %1583
  %1594 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1595 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1594, i32 0, i32 6
  %1596 = load i32, i32* %1595, align 8
  %1597 = icmp eq i32 %1596, 0
  br i1 %1597, label %1598, label %1686

; <label>:1598:                                   ; preds = %1593
  %1599 = load i32, i32* %3, align 4
  %1600 = icmp ne i32 %1599, 0
  br i1 %1600, label %1601, label %1606

; <label>:1601:                                   ; preds = %1598
  %1602 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1603 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1602, i32 0, i32 134
  %1604 = load i32, i32* %1603, align 8
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %1606, label %1685

; <label>:1606:                                   ; preds = %1601, %1598
  %1607 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %1608 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %1607, i32 0, i32 25
  %1609 = load i32, i32* %1608, align 4
  %1610 = icmp ne i32 %1609, 0
  br i1 %1610, label %1616, label %1611

; <label>:1611:                                   ; preds = %1606
  %1612 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1613 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1612, i32 0, i32 91
  %1614 = load i32, i32* %1613, align 8
  %1615 = icmp eq i32 %1614, 1
  br i1 %1615, label %1616, label %1645

; <label>:1616:                                   ; preds = %1611, %1606
  %1617 = load i32, i32* @TotalFrameQP, align 4
  %1618 = sitofp i32 %1617 to double
  %1619 = fmul double 1.000000e+00, %1618
  %1620 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1621 = sitofp i32 %1620 to double
  %1622 = fdiv double %1619, %1621
  %1623 = fadd double %1622, 5.000000e-01
  %1624 = fptosi double %1623 to i32
  store i32 %1624, i32* %8, align 4
  %1625 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1626 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1625, i32 0, i32 130
  %1627 = load i32, i32* %1626, align 8
  %1628 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1629 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1628, i32 0, i32 31
  %1630 = load i32, i32* %1629, align 8
  %1631 = sub nsw i32 %1630, 2
  %1632 = icmp eq i32 %1627, %1631
  br i1 %1632, label %1633, label %1635

; <label>:1633:                                   ; preds = %1616
  %1634 = load i32, i32* %8, align 4
  store i32 %1634, i32* @QPLastPFrame, align 4
  br label %1635

; <label>:1635:                                   ; preds = %1633, %1616
  %1636 = load i32, i32* %8, align 4
  %1637 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1638 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1637, i32 0, i32 129
  %1639 = load i32, i32* %1638, align 4
  %1640 = add nsw i32 %1639, %1636
  store i32 %1640, i32* %1638, align 4
  %1641 = load i32, i32* @PreviousQp2, align 4
  store i32 %1641, i32* @PreviousQp1, align 4
  %1642 = load i32, i32* %8, align 4
  store i32 %1642, i32* @PreviousQp2, align 4
  %1643 = load i32, i32* %8, align 4
  store i32 %1643, i32* @PAveFrameQP, align 4
  %1644 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %1644, i32* @PAveHeaderBits3, align 4
  br label %1684

; <label>:1645:                                   ; preds = %1611
  %1646 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1647 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1646, i32 0, i32 91
  %1648 = load i32, i32* %1647, align 8
  %1649 = icmp eq i32 %1648, 2
  br i1 %1649, label %1655, label %1650

; <label>:1650:                                   ; preds = %1645
  %1651 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %1652 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1651, i32 0, i32 92
  %1653 = load i32, i32* %1652, align 4
  %1654 = icmp ne i32 %1653, 0
  br i1 %1654, label %1655, label %1683

; <label>:1655:                                   ; preds = %1650, %1645
  %1656 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %1657 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1656, i32 0, i32 134
  %1658 = load i32, i32* %1657, align 8
  %1659 = icmp eq i32 %1658, 0
  br i1 %1659, label %1660, label %1671

; <label>:1660:                                   ; preds = %1655
  %1661 = load i32, i32* @TotalFrameQP, align 4
  %1662 = sitofp i32 %1661 to double
  %1663 = fmul double 1.000000e+00, %1662
  %1664 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1665 = sitofp i32 %1664 to double
  %1666 = fdiv double %1663, %1665
  %1667 = fadd double %1666, 5.000000e-01
  %1668 = fptosi double %1667 to i32
  store i32 %1668, i32* %8, align 4
  %1669 = load i32, i32* %8, align 4
  store i32 %1669, i32* @FrameQPBuffer, align 4
  %1670 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %1670, i32* @FrameAveHeaderBits, align 4
  br label %1682

; <label>:1671:                                   ; preds = %1655
  %1672 = load i32, i32* @TotalFrameQP, align 4
  %1673 = sitofp i32 %1672 to double
  %1674 = fmul double 1.000000e+00, %1673
  %1675 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %1676 = sitofp i32 %1675 to double
  %1677 = fdiv double %1674, %1676
  %1678 = fadd double %1677, 5.000000e-01
  %1679 = fptosi double %1678 to i32
  store i32 %1679, i32* %8, align 4
  %1680 = load i32, i32* %8, align 4
  store i32 %1680, i32* @FieldQPBuffer, align 4
  %1681 = load i32, i32* @PAveHeaderBits2, align 4
  store i32 %1681, i32* @FieldAveHeaderBits, align 4
  br label %1682

; <label>:1682:                                   ; preds = %1671, %1660
  br label %1683

; <label>:1683:                                   ; preds = %1682, %1650
  br label %1684

; <label>:1684:                                   ; preds = %1683, %1635
  br label %1685

; <label>:1685:                                   ; preds = %1684, %1601
  br label %1686

; <label>:1686:                                   ; preds = %1685, %1593, %1583
  %1687 = load i32, i32* @m_Qc, align 4
  store i32 %1687, i32* %2, align 4
  br label %1695

; <label>:1688:                                   ; preds = %993
  br label %1689

; <label>:1689:                                   ; preds = %1688, %900
  br label %1690

; <label>:1690:                                   ; preds = %1689
  br label %1691

; <label>:1691:                                   ; preds = %1690
  br label %1692

; <label>:1692:                                   ; preds = %1691
  br label %1693

; <label>:1693:                                   ; preds = %1692
  %1694 = load i32, i32* @m_Qc, align 4
  store i32 %1694, i32* %2, align 4
  br label %1695

; <label>:1695:                                   ; preds = %1693, %1686, %1294, %1087, %987, %898, %896, %610, %592, %585, %555, %344, %309, %31
  %1696 = load i32, i32* %2, align 4
  ret i32 %1696
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: noinline nounwind uwtable
define i32 @Qstep2QP(double) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load double, double* %3, align 8
  %7 = call double @QP2Qstep(i32 0)
  %8 = fcmp olt double %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

; <label>:10:                                     ; preds = %1
  %11 = load double, double* %3, align 8
  %12 = call double @QP2Qstep(i32 51)
  %13 = fcmp ogt double %11, %12
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  store i32 51, i32* %2, align 4
  br label %56

; <label>:15:                                     ; preds = %10
  br label %16

; <label>:16:                                     ; preds = %15
  br label %17

; <label>:17:                                     ; preds = %21, %16
  %18 = load double, double* %3, align 8
  %19 = call double @QP2Qstep(i32 5)
  %20 = fcmp ogt double %18, %19
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %17
  %22 = load double, double* %3, align 8
  %23 = fdiv double %22, 2.000000e+00
  store double %23, double* %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %17

; <label>:26:                                     ; preds = %17
  %27 = load double, double* %3, align 8
  %28 = fcmp ole double %27, 6.562500e-01
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26
  store double 6.250000e-01, double* %3, align 8
  store i32 0, i32* %5, align 4
  br label %51

; <label>:30:                                     ; preds = %26
  %31 = load double, double* %3, align 8
  %32 = fcmp ole double %31, 7.500000e-01
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  store double 6.875000e-01, double* %3, align 8
  store i32 1, i32* %5, align 4
  br label %50

; <label>:34:                                     ; preds = %30
  %35 = load double, double* %3, align 8
  %36 = fcmp ole double %35, 8.437500e-01
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  store double 8.125000e-01, double* %3, align 8
  store i32 2, i32* %5, align 4
  br label %49

; <label>:38:                                     ; preds = %34
  %39 = load double, double* %3, align 8
  %40 = fcmp ole double %39, 9.375000e-01
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  store double 8.750000e-01, double* %3, align 8
  store i32 3, i32* %5, align 4
  br label %48

; <label>:42:                                     ; preds = %38
  %43 = load double, double* %3, align 8
  %44 = fcmp ole double %43, 1.062500e+00
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  store double 1.000000e+00, double* %3, align 8
  store i32 4, i32* %5, align 4
  br label %47

; <label>:46:                                     ; preds = %42
  store double 1.125000e+00, double* %3, align 8
  store i32 5, i32* %5, align 4
  br label %47

; <label>:47:                                     ; preds = %46, %45
  br label %48

; <label>:48:                                     ; preds = %47, %41
  br label %49

; <label>:49:                                     ; preds = %48, %37
  br label %50

; <label>:50:                                     ; preds = %49, %33
  br label %51

; <label>:51:                                     ; preds = %50, %29
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %52, 6
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %2, align 4
  br label %56

; <label>:56:                                     ; preds = %51, %14, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define void @updateRCModel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [20 x double], align 16
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double 0.000000e+00, double* %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %9 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %384

; <label>:12:                                     ; preds = %0
  %13 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %13, i32 0, i32 139
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 136
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %12
  %21 = call double @ComputeFrameMAD()
  store double %21, double* @CurrentFrameMAD, align 8
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %23 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 127
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  br label %152

; <label>:25:                                     ; preds = %12
  %26 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %26, i32 0, i32 92
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

; <label>:30:                                     ; preds = %25
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %32 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 134
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

; <label>:35:                                     ; preds = %30
  %36 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %37 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %36, i32 0, i32 123
  %38 = load double, double* %37, align 8
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %40 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 139
  %41 = load i32, i32* %40, align 4
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %38, %42
  %44 = fdiv double %43, 2.000000e+00
  store double %44, double* @CurrentFrameMAD, align 8
  br label %54

; <label>:45:                                     ; preds = %30, %25
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %47 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 123
  %48 = load double, double* %47, align 8
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %50 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 139
  %51 = load i32, i32* %50, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %48, %52
  store double %53, double* @CurrentFrameMAD, align 8
  br label %54

; <label>:54:                                     ; preds = %45, %35
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %56 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 123
  store double 0.000000e+00, double* %56, align 8
  %57 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %58 = load i32, i32* @NumberofBasicUnit, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* @CodedBasicUnit, align 4
  %60 = load i32, i32* @CodedBasicUnit, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %98

; <label>:62:                                     ; preds = %54
  %63 = load i32, i32* @PAveHeaderBits1, align 4
  %64 = load i32, i32* @CodedBasicUnit, align 4
  %65 = sub nsw i32 %64, 1
  %66 = mul nsw i32 %63, %65
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %68 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 121
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = sitofp i32 %70 to double
  %72 = fmul double 1.000000e+00, %71
  %73 = load i32, i32* @CodedBasicUnit, align 4
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %72, %74
  %76 = fadd double %75, 5.000000e-01
  %77 = fptosi double %76 to i32
  store i32 %77, i32* @PAveHeaderBits1, align 4
  %78 = load i32, i32* @PAveHeaderBits3, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %62
  %81 = load i32, i32* @PAveHeaderBits1, align 4
  store i32 %81, i32* @PAveHeaderBits2, align 4
  br label %97

; <label>:82:                                     ; preds = %62
  %83 = load i32, i32* @PAveHeaderBits1, align 4
  %84 = load i32, i32* @CodedBasicUnit, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* @PAveHeaderBits3, align 4
  %87 = load i32, i32* @NumberofBasicUnit, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %85, %88
  %90 = sitofp i32 %89 to double
  %91 = fmul double 1.000000e+00, %90
  %92 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %93 = sitofp i32 %92 to double
  %94 = fdiv double %91, %93
  %95 = fadd double %94, 5.000000e-01
  %96 = fptosi double %95 to i32
  store i32 %96, i32* @PAveHeaderBits2, align 4
  br label %97

; <label>:97:                                     ; preds = %82, %80
  br label %98

; <label>:98:                                     ; preds = %97, %54
  %99 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %100 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %99, i32 0, i32 91
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %108, label %103

; <label>:103:                                    ; preds = %98
  %104 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %105 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %104, i32 0, i32 92
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

; <label>:108:                                    ; preds = %103, %98
  %109 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %109, i32 0, i32 134
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %122

; <label>:113:                                    ; preds = %108
  %114 = load double, double* @CurrentFrameMAD, align 8
  %115 = load double*, double** @FCBUCFMAD, align 8
  %116 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* @NumberofBasicUnit, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, double* %115, i64 %120
  store double %114, double* %121, align 8
  br label %131

; <label>:122:                                    ; preds = %108, %103
  %123 = load double, double* @CurrentFrameMAD, align 8
  %124 = load double*, double** @BUCFMAD, align 8
  %125 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* @NumberofBasicUnit, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %124, i64 %129
  store double %123, double* %130, align 8
  br label %131

; <label>:131:                                    ; preds = %122, %113
  %132 = load i32, i32* @NumberofBasicUnit, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

; <label>:134:                                    ; preds = %131
  %135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %136 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %135, i32 0, i32 127
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* @CodedBasicUnit, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %6, align 4
  br label %151

; <label>:142:                                    ; preds = %131
  %143 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %143, i32 0, i32 127
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load i32, i32* @CodedBasicUnit, align 4
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %6, align 4
  br label %151

; <label>:151:                                    ; preds = %142, %134
  br label %152

; <label>:152:                                    ; preds = %151, %20
  %153 = load i32, i32* %6, align 4
  %154 = icmp sgt i32 %153, 1
  br i1 %154, label %155, label %156

; <label>:155:                                    ; preds = %152
  store i32 1, i32* %7, align 4
  br label %156

; <label>:156:                                    ; preds = %155, %152
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %158 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 119
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* @PPreHeader, align 4
  store i32 19, i32* %2, align 4
  br label %160

; <label>:160:                                    ; preds = %194, %156
  %161 = load i32, i32* %2, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %197

; <label>:163:                                    ; preds = %160
  %164 = load i32, i32* %2, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgQp, i64 0, i64 %166
  %168 = load double, double* %167, align 8
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgQp, i64 0, i64 %170
  store double %168, double* %171, align 8
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgQp, i64 0, i64 %173
  %175 = load double, double* %174, align 8
  %176 = load i32, i32* %2, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i64 0, i64 %177
  store double %175, double* %178, align 8
  %179 = load i32, i32* %2, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgRp, i64 0, i64 %181
  %183 = load double, double* %182, align 8
  %184 = load i32, i32* %2, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgRp, i64 0, i64 %185
  store double %183, double* %186, align 8
  %187 = load i32, i32* %2, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [20 x double], [20 x double]* @Pm_rgRp, i64 0, i64 %188
  %190 = load double, double* %189, align 8
  %191 = load i32, i32* %2, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [21 x double], [21 x double]* @m_rgRp, i64 0, i64 %192
  store double %190, double* %193, align 8
  br label %194

; <label>:194:                                    ; preds = %163
  %195 = load i32, i32* %2, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %2, align 4
  br label %160

; <label>:197:                                    ; preds = %160
  %198 = load i32, i32* @m_Qc, align 4
  %199 = call double @QP2Qstep(i32 %198)
  store double %199, double* getelementptr inbounds ([20 x double], [20 x double]* @Pm_rgQp, i64 0, i64 0), align 16
  %200 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %201 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %200, i32 0, i32 139
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %204 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 136
  %205 = load i32, i32* %204, align 8
  %206 = icmp eq i32 %202, %205
  br i1 %206, label %207, label %215

; <label>:207:                                    ; preds = %197
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %209 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 120
  %210 = load i32, i32* %209, align 8
  %211 = sitofp i32 %210 to double
  %212 = fmul double %211, 1.000000e+00
  %213 = load double, double* @CurrentFrameMAD, align 8
  %214 = fdiv double %212, %213
  store double %214, double* getelementptr inbounds ([20 x double], [20 x double]* @Pm_rgRp, i64 0, i64 0), align 16
  br label %223

; <label>:215:                                    ; preds = %197
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %217 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 122
  %218 = load i32, i32* %217, align 8
  %219 = sitofp i32 %218 to double
  %220 = fmul double %219, 1.000000e+00
  %221 = load double, double* @CurrentFrameMAD, align 8
  %222 = fdiv double %220, %221
  store double %222, double* getelementptr inbounds ([20 x double], [20 x double]* @Pm_rgRp, i64 0, i64 0), align 16
  br label %223

; <label>:223:                                    ; preds = %215, %207
  %224 = load double, double* getelementptr inbounds ([20 x double], [20 x double]* @Pm_rgQp, i64 0, i64 0), align 16
  store double %224, double* getelementptr inbounds ([21 x double], [21 x double]* @m_rgQp, i64 0, i64 0), align 16
  %225 = load double, double* getelementptr inbounds ([20 x double], [20 x double]* @Pm_rgRp, i64 0, i64 0), align 16
  store double %225, double* getelementptr inbounds ([21 x double], [21 x double]* @m_rgRp, i64 0, i64 0), align 16
  %226 = load double, double* @Pm_X1, align 8
  store double %226, double* @m_X1, align 8
  %227 = load double, double* @Pm_X2, align 8
  store double %227, double* @m_X2, align 8
  %228 = load double, double* @CurrentFrameMAD, align 8
  %229 = load double, double* @PreviousFrameMAD, align 8
  %230 = fcmp ogt double %228, %229
  br i1 %230, label %231, label %237

; <label>:231:                                    ; preds = %223
  %232 = load double, double* @PreviousFrameMAD, align 8
  %233 = load double, double* @CurrentFrameMAD, align 8
  %234 = fdiv double %232, %233
  %235 = fmul double %234, 2.000000e+01
  %236 = fptosi double %235 to i32
  br label %243

; <label>:237:                                    ; preds = %223
  %238 = load double, double* @CurrentFrameMAD, align 8
  %239 = load double, double* @PreviousFrameMAD, align 8
  %240 = fdiv double %238, %239
  %241 = fmul double %240, 2.000000e+01
  %242 = fptosi double %241 to i32
  br label %243

; <label>:243:                                    ; preds = %237, %231
  %244 = phi i32 [ %236, %231 ], [ %242, %237 ]
  store i32 %244, i32* %1, align 4
  %245 = load i32, i32* %1, align 4
  %246 = icmp slt i32 %245, 1
  br i1 %246, label %247, label %248

; <label>:247:                                    ; preds = %243
  br label %250

; <label>:248:                                    ; preds = %243
  %249 = load i32, i32* %1, align 4
  br label %250

; <label>:250:                                    ; preds = %248, %247
  %251 = phi i32 [ 1, %247 ], [ %249, %248 ]
  store i32 %251, i32* %1, align 4
  %252 = load i32, i32* %1, align 4
  %253 = load i32, i32* %6, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %257

; <label>:255:                                    ; preds = %250
  %256 = load i32, i32* %1, align 4
  br label %259

; <label>:257:                                    ; preds = %250
  %258 = load i32, i32* %6, align 4
  br label %259

; <label>:259:                                    ; preds = %257, %255
  %260 = phi i32 [ %256, %255 ], [ %258, %257 ]
  store i32 %260, i32* %1, align 4
  %261 = load i32, i32* %1, align 4
  %262 = load i32, i32* @m_windowSize, align 4
  %263 = add nsw i32 %262, 1
  %264 = icmp slt i32 %261, %263
  br i1 %264, label %265, label %267

; <label>:265:                                    ; preds = %259
  %266 = load i32, i32* %1, align 4
  br label %270

; <label>:267:                                    ; preds = %259
  %268 = load i32, i32* @m_windowSize, align 4
  %269 = add nsw i32 %268, 1
  br label %270

; <label>:270:                                    ; preds = %267, %265
  %271 = phi i32 [ %266, %265 ], [ %269, %267 ]
  store i32 %271, i32* %1, align 4
  %272 = load i32, i32* %1, align 4
  %273 = icmp slt i32 %272, 20
  br i1 %273, label %274, label %276

; <label>:274:                                    ; preds = %270
  %275 = load i32, i32* %1, align 4
  br label %277

; <label>:276:                                    ; preds = %270
  br label %277

; <label>:277:                                    ; preds = %276, %274
  %278 = phi i32 [ %275, %274 ], [ 20, %276 ]
  store i32 %278, i32* %1, align 4
  %279 = load i32, i32* %1, align 4
  store i32 %279, i32* @m_windowSize, align 4
  store i32 0, i32* %2, align 4
  br label %280

; <label>:280:                                    ; preds = %287, %277
  %281 = load i32, i32* %2, align 4
  %282 = icmp slt i32 %281, 20
  br i1 %282, label %283, label %290

; <label>:283:                                    ; preds = %280
  %284 = load i32, i32* %2, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i64 0, i64 %285
  store i32 0, i32* %286, align 4
  br label %287

; <label>:287:                                    ; preds = %283
  %288 = load i32, i32* %2, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %2, align 4
  br label %280

; <label>:290:                                    ; preds = %280
  %291 = load i32, i32* %1, align 4
  call void @RCModelEstimator(i32 %291)
  %292 = load i32, i32* @m_windowSize, align 4
  store i32 %292, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %293

; <label>:293:                                    ; preds = %335, %290
  %294 = load i32, i32* %2, align 4
  %295 = load i32, i32* %1, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %338

; <label>:297:                                    ; preds = %293
  %298 = load double, double* @m_X1, align 8
  %299 = load i32, i32* %2, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i64 0, i64 %300
  %302 = load double, double* %301, align 8
  %303 = fdiv double %298, %302
  %304 = load double, double* @m_X2, align 8
  %305 = load i32, i32* %2, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i64 0, i64 %306
  %308 = load double, double* %307, align 8
  %309 = load i32, i32* %2, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i64 0, i64 %310
  %312 = load double, double* %311, align 8
  %313 = fmul double %308, %312
  %314 = fdiv double %304, %313
  %315 = fadd double %303, %314
  %316 = load i32, i32* %2, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [21 x double], [21 x double]* @m_rgRp, i64 0, i64 %317
  %319 = load double, double* %318, align 8
  %320 = fsub double %315, %319
  %321 = load i32, i32* %2, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [20 x double], [20 x double]* %3, i64 0, i64 %322
  store double %320, double* %323, align 8
  %324 = load i32, i32* %2, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [20 x double], [20 x double]* %3, i64 0, i64 %325
  %327 = load double, double* %326, align 8
  %328 = load i32, i32* %2, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [20 x double], [20 x double]* %3, i64 0, i64 %329
  %331 = load double, double* %330, align 8
  %332 = fmul double %327, %331
  %333 = load double, double* %4, align 8
  %334 = fadd double %333, %332
  store double %334, double* %4, align 8
  br label %335

; <label>:335:                                    ; preds = %297
  %336 = load i32, i32* %2, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %2, align 4
  br label %293

; <label>:338:                                    ; preds = %293
  %339 = load i32, i32* %1, align 4
  %340 = icmp eq i32 %339, 2
  br i1 %340, label %341, label %342

; <label>:341:                                    ; preds = %338
  br label %348

; <label>:342:                                    ; preds = %338
  %343 = load double, double* %4, align 8
  %344 = load i32, i32* %1, align 4
  %345 = sitofp i32 %344 to double
  %346 = fdiv double %343, %345
  %347 = call double @sqrt(double %346) #4
  br label %348

; <label>:348:                                    ; preds = %342, %341
  %349 = phi double [ 0.000000e+00, %341 ], [ %347, %342 ]
  store double %349, double* %5, align 8
  store i32 0, i32* %2, align 4
  br label %350

; <label>:350:                                    ; preds = %367, %348
  %351 = load i32, i32* %2, align 4
  %352 = load i32, i32* %1, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %370

; <label>:354:                                    ; preds = %350
  %355 = load i32, i32* %2, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [20 x double], [20 x double]* %3, i64 0, i64 %356
  %358 = load double, double* %357, align 8
  %359 = call double @fabs(double %358) #5
  %360 = load double, double* %5, align 8
  %361 = fcmp ogt double %359, %360
  br i1 %361, label %362, label %366

; <label>:362:                                    ; preds = %354
  %363 = load i32, i32* %2, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i64 0, i64 %364
  store i32 1, i32* %365, align 4
  br label %366

; <label>:366:                                    ; preds = %362, %354
  br label %367

; <label>:367:                                    ; preds = %366
  %368 = load i32, i32* %2, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %2, align 4
  br label %350

; <label>:370:                                    ; preds = %350
  store i32 0, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @m_rgRejected, i64 0, i64 0), align 16
  %371 = load i32, i32* %1, align 4
  call void @RCModelEstimator(i32 %371)
  %372 = load i32, i32* %7, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

; <label>:374:                                    ; preds = %370
  call void @updateMADModel()
  br label %383

; <label>:375:                                    ; preds = %370
  %376 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %377 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 8
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %382

; <label>:380:                                    ; preds = %375
  %381 = load double, double* @CurrentFrameMAD, align 8
  store double %381, double* getelementptr inbounds ([21 x double], [21 x double]* @PPictureMAD, i64 0, i64 0), align 16
  br label %382

; <label>:382:                                    ; preds = %380, %375
  br label %383

; <label>:383:                                    ; preds = %382, %374
  br label %384

; <label>:384:                                    ; preds = %383, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define double @QP2Qstep(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = srem i32 %5, 6
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [6 x double], [6 x double]* @QP2Qstep.QP2QSTEP, i64 0, i64 %7
  %9 = load double, double* %8, align 8
  store double %9, double* %4, align 8
  store i32 0, i32* %3, align 4
  br label %10

; <label>:10:                                     ; preds = %18, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sdiv i32 %12, 6
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %10
  %16 = load double, double* %4, align 8
  %17 = fmul double %16, 2.000000e+00
  store double %17, double* %4, align 8
  br label %18

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %10

; <label>:21:                                     ; preds = %10
  %22 = load double, double* %4, align 8
  ret double %22
}

; Function Attrs: noinline nounwind uwtable
define void @RCModelEstimator(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  store i32 %14, i32* %3, align 4
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %4, align 4
  br label %15

; <label>:15:                                     ; preds = %29, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %3, align 4
  br label %28

; <label>:28:                                     ; preds = %25, %19
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %15

; <label>:32:                                     ; preds = %15
  store double 0.000000e+00, double* @m_X2, align 8
  store double 0.000000e+00, double* @m_X1, align 8
  store i32 0, i32* %4, align 4
  br label %33

; <label>:33:                                     ; preds = %49, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i64 0, i64 %45
  %47 = load double, double* %46, align 8
  store double %47, double* %5, align 8
  br label %48

; <label>:48:                                     ; preds = %43, %37
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %33

; <label>:52:                                     ; preds = %33
  store i32 0, i32* %4, align 4
  br label %53

; <label>:53:                                     ; preds = %93, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %96

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i64 0, i64 %59
  %61 = load double, double* %60, align 8
  %62 = load double, double* %5, align 8
  %63 = fcmp une double %61, %62
  br i1 %63, label %64, label %71

; <label>:64:                                     ; preds = %57
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

; <label>:70:                                     ; preds = %64
  store i32 1, i32* %13, align 4
  br label %71

; <label>:71:                                     ; preds = %70, %64, %57
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %92, label %77

; <label>:77:                                     ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i64 0, i64 %79
  %81 = load double, double* %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [21 x double], [21 x double]* @m_rgRp, i64 0, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fmul double %81, %85
  %87 = load i32, i32* %3, align 4
  %88 = sitofp i32 %87 to double
  %89 = fdiv double %86, %88
  %90 = load double, double* @m_X1, align 8
  %91 = fadd double %90, %89
  store double %91, double* @m_X1, align 8
  br label %92

; <label>:92:                                     ; preds = %77, %71
  br label %93

; <label>:93:                                     ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %53

; <label>:96:                                     ; preds = %53
  %97 = load i32, i32* %3, align 4
  %98 = icmp sge i32 %97, 1
  br i1 %98, label %99, label %192

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %192

; <label>:102:                                    ; preds = %99
  store i32 0, i32* %4, align 4
  br label %103

; <label>:103:                                    ; preds = %154, %102
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %2, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %157

; <label>:107:                                    ; preds = %103
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [21 x i32], [21 x i32]* @m_rgRejected, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %153, label %113

; <label>:113:                                    ; preds = %107
  %114 = load double, double* %6, align 8
  %115 = fadd double %114, 1.000000e+00
  store double %115, double* %6, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i64 0, i64 %117
  %119 = load double, double* %118, align 8
  %120 = fdiv double 1.000000e+00, %119
  %121 = load double, double* %7, align 8
  %122 = fadd double %121, %120
  store double %122, double* %7, align 8
  %123 = load double, double* %7, align 8
  store double %123, double* %8, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i64 0, i64 %125
  %127 = load double, double* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i64 0, i64 %129
  %131 = load double, double* %130, align 8
  %132 = fmul double %127, %131
  %133 = fdiv double 1.000000e+00, %132
  %134 = load double, double* %9, align 8
  %135 = fadd double %134, %133
  store double %135, double* %9, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [21 x double], [21 x double]* @m_rgQp, i64 0, i64 %137
  %139 = load double, double* %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [21 x double], [21 x double]* @m_rgRp, i64 0, i64 %141
  %143 = load double, double* %142, align 8
  %144 = fmul double %139, %143
  %145 = load double, double* %10, align 8
  %146 = fadd double %145, %144
  store double %146, double* %10, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [21 x double], [21 x double]* @m_rgRp, i64 0, i64 %148
  %150 = load double, double* %149, align 8
  %151 = load double, double* %11, align 8
  %152 = fadd double %151, %150
  store double %152, double* %11, align 8
  br label %153

; <label>:153:                                    ; preds = %113, %107
  br label %154

; <label>:154:                                    ; preds = %153
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %4, align 4
  br label %103

; <label>:157:                                    ; preds = %103
  %158 = load double, double* %6, align 8
  %159 = load double, double* %9, align 8
  %160 = fmul double %158, %159
  %161 = load double, double* %7, align 8
  %162 = load double, double* %8, align 8
  %163 = fmul double %161, %162
  %164 = fsub double %160, %163
  store double %164, double* %12, align 8
  %165 = load double, double* %12, align 8
  %166 = call double @fabs(double %165) #5
  %167 = fcmp ogt double %166, 1.000000e-06
  br i1 %167, label %168, label %187

; <label>:168:                                    ; preds = %157
  %169 = load double, double* %10, align 8
  %170 = load double, double* %9, align 8
  %171 = fmul double %169, %170
  %172 = load double, double* %11, align 8
  %173 = load double, double* %7, align 8
  %174 = fmul double %172, %173
  %175 = fsub double %171, %174
  %176 = load double, double* %12, align 8
  %177 = fdiv double %175, %176
  store double %177, double* @m_X1, align 8
  %178 = load double, double* %11, align 8
  %179 = load double, double* %6, align 8
  %180 = fmul double %178, %179
  %181 = load double, double* %10, align 8
  %182 = load double, double* %8, align 8
  %183 = fmul double %181, %182
  %184 = fsub double %180, %183
  %185 = load double, double* %12, align 8
  %186 = fdiv double %184, %185
  store double %186, double* @m_X2, align 8
  br label %191

; <label>:187:                                    ; preds = %157
  %188 = load double, double* %10, align 8
  %189 = load double, double* %6, align 8
  %190 = fdiv double %188, %189
  store double %190, double* @m_X1, align 8
  store double 0.000000e+00, double* @m_X2, align 8
  br label %191

; <label>:191:                                    ; preds = %187, %168
  br label %192

; <label>:192:                                    ; preds = %191, %99, %96
  %193 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %194 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %200

; <label>:197:                                    ; preds = %192
  %198 = load double, double* @m_X1, align 8
  store double %198, double* @Pm_X1, align 8
  %199 = load double, double* @m_X2, align 8
  store double %199, double* @Pm_X2, align 8
  br label %200

; <label>:200:                                    ; preds = %197, %192
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: noinline nounwind uwtable
define double @ComputeFrameMAD() #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  store double 0.000000e+00, double* %1, align 8
  store i32 0, i32* %2, align 4
  br label %3

; <label>:3:                                      ; preds = %19, %0
  %4 = load i32, i32* %2, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 136
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %4, %7
  br i1 %8, label %9, label %22

; <label>:9:                                      ; preds = %3
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %11 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 131
  %12 = load double*, double** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, double* %12, i64 %14
  %16 = load double, double* %15, align 8
  %17 = load double, double* %1, align 8
  %18 = fadd double %17, %16
  store double %18, double* %1, align 8
  br label %19

; <label>:19:                                     ; preds = %9
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %3

; <label>:22:                                     ; preds = %3
  %23 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %24 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %23, i32 0, i32 136
  %25 = load i32, i32* %24, align 8
  %26 = sitofp i32 %25 to double
  %27 = load double, double* %1, align 8
  %28 = fdiv double %27, %26
  store double %28, double* %1, align 8
  %29 = load double, double* %1, align 8
  ret double %29
}

; Function Attrs: noinline nounwind uwtable
define void @updateMADModel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [20 x double], align 16
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double 0.000000e+00, double* %4, align 8
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 127
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %253

; <label>:11:                                     ; preds = %0
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 139
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %15, i32 0, i32 136
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %11
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %21 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 127
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %31

; <label>:23:                                     ; preds = %11
  %24 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %25 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %24, i32 0, i32 127
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* @CodedBasicUnit, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %6, align 4
  br label %31

; <label>:31:                                     ; preds = %23, %19
  store i32 19, i32* %2, align 4
  br label %32

; <label>:32:                                     ; preds = %59, %31
  %33 = load i32, i32* %2, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %62

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [21 x double], [21 x double]* @PPictureMAD, i64 0, i64 %38
  %40 = load double, double* %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [21 x double], [21 x double]* @PPictureMAD, i64 0, i64 %42
  store double %40, double* %43, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [21 x double], [21 x double]* @PPictureMAD, i64 0, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i64 0, i64 %49
  store double %47, double* %50, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i64 0, i64 %53
  %55 = load double, double* %54, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i64 0, i64 %57
  store double %55, double* %58, align 8
  br label %59

; <label>:59:                                     ; preds = %35
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %2, align 4
  br label %32

; <label>:62:                                     ; preds = %32
  %63 = load double, double* @CurrentFrameMAD, align 8
  store double %63, double* getelementptr inbounds ([21 x double], [21 x double]* @PPictureMAD, i64 0, i64 0), align 16
  %64 = load double, double* getelementptr inbounds ([21 x double], [21 x double]* @PPictureMAD, i64 0, i64 0), align 16
  store double %64, double* getelementptr inbounds ([21 x double], [21 x double]* @PictureMAD, i64 0, i64 0), align 16
  %65 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %66 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %65, i32 0, i32 139
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %69 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 136
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %74

; <label>:72:                                     ; preds = %62
  %73 = load double, double* getelementptr inbounds ([21 x double], [21 x double]* @PictureMAD, i64 0, i64 1), align 8
  store double %73, double* getelementptr inbounds ([21 x double], [21 x double]* @ReferenceMAD, i64 0, i64 0), align 16
  br label %108

; <label>:74:                                     ; preds = %62
  %75 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %76 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %75, i32 0, i32 91
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %84, label %79

; <label>:79:                                     ; preds = %74
  %80 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %81 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %80, i32 0, i32 92
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

; <label>:84:                                     ; preds = %79, %74
  %85 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %86 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %85, i32 0, i32 134
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %98

; <label>:89:                                     ; preds = %84
  %90 = load double*, double** @FCBUPFMAD, align 8
  %91 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %92 = sub nsw i32 %91, 1
  %93 = load i32, i32* @NumberofBasicUnit, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %90, i64 %95
  %97 = load double, double* %96, align 8
  store double %97, double* getelementptr inbounds ([21 x double], [21 x double]* @ReferenceMAD, i64 0, i64 0), align 16
  br label %107

; <label>:98:                                     ; preds = %84, %79
  %99 = load double*, double** @BUPFMAD, align 8
  %100 = load i32, i32* @TotalNumberofBasicUnit, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load i32, i32* @NumberofBasicUnit, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %99, i64 %104
  %106 = load double, double* %105, align 8
  store double %106, double* getelementptr inbounds ([21 x double], [21 x double]* @ReferenceMAD, i64 0, i64 0), align 16
  br label %107

; <label>:107:                                    ; preds = %98, %89
  br label %108

; <label>:108:                                    ; preds = %107, %72
  %109 = load double, double* @PMADPictureC1, align 8
  store double %109, double* @MADPictureC1, align 8
  %110 = load double, double* @PMADPictureC2, align 8
  store double %110, double* @MADPictureC2, align 8
  %111 = load double, double* @CurrentFrameMAD, align 8
  %112 = load double, double* @PreviousFrameMAD, align 8
  %113 = fcmp ogt double %111, %112
  br i1 %113, label %114, label %120

; <label>:114:                                    ; preds = %108
  %115 = load double, double* @PreviousFrameMAD, align 8
  %116 = load double, double* @CurrentFrameMAD, align 8
  %117 = fdiv double %115, %116
  %118 = fmul double %117, 2.000000e+01
  %119 = fptosi double %118 to i32
  br label %126

; <label>:120:                                    ; preds = %108
  %121 = load double, double* @CurrentFrameMAD, align 8
  %122 = load double, double* @PreviousFrameMAD, align 8
  %123 = fdiv double %121, %122
  %124 = fmul double %123, 2.000000e+01
  %125 = fptosi double %124 to i32
  br label %126

; <label>:126:                                    ; preds = %120, %114
  %127 = phi i32 [ %119, %114 ], [ %125, %120 ]
  store i32 %127, i32* %1, align 4
  %128 = load i32, i32* %1, align 4
  %129 = load i32, i32* %6, align 4
  %130 = sub nsw i32 %129, 1
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %134

; <label>:132:                                    ; preds = %126
  %133 = load i32, i32* %1, align 4
  br label %137

; <label>:134:                                    ; preds = %126
  %135 = load i32, i32* %6, align 4
  %136 = sub nsw i32 %135, 1
  br label %137

; <label>:137:                                    ; preds = %134, %132
  %138 = phi i32 [ %133, %132 ], [ %136, %134 ]
  store i32 %138, i32* %1, align 4
  %139 = load i32, i32* %1, align 4
  %140 = icmp slt i32 %139, 1
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %137
  br label %144

; <label>:142:                                    ; preds = %137
  %143 = load i32, i32* %1, align 4
  br label %144

; <label>:144:                                    ; preds = %142, %141
  %145 = phi i32 [ 1, %141 ], [ %143, %142 ]
  store i32 %145, i32* %1, align 4
  %146 = load i32, i32* %1, align 4
  %147 = load i32, i32* @MADm_windowSize, align 4
  %148 = add nsw i32 %147, 1
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %152

; <label>:150:                                    ; preds = %144
  %151 = load i32, i32* %1, align 4
  br label %155

; <label>:152:                                    ; preds = %144
  %153 = load i32, i32* @MADm_windowSize, align 4
  %154 = add nsw i32 %153, 1
  br label %155

; <label>:155:                                    ; preds = %152, %150
  %156 = phi i32 [ %151, %150 ], [ %154, %152 ]
  store i32 %156, i32* %1, align 4
  %157 = load i32, i32* %1, align 4
  %158 = icmp slt i32 20, %157
  br i1 %158, label %159, label %160

; <label>:159:                                    ; preds = %155
  br label %162

; <label>:160:                                    ; preds = %155
  %161 = load i32, i32* %1, align 4
  br label %162

; <label>:162:                                    ; preds = %160, %159
  %163 = phi i32 [ 20, %159 ], [ %161, %160 ]
  store i32 %163, i32* %1, align 4
  %164 = load i32, i32* %1, align 4
  store i32 %164, i32* @MADm_windowSize, align 4
  store i32 0, i32* %2, align 4
  br label %165

; <label>:165:                                    ; preds = %172, %162
  %166 = load i32, i32* %2, align 4
  %167 = icmp slt i32 %166, 20
  br i1 %167, label %168, label %175

; <label>:168:                                    ; preds = %165
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i64 0, i64 %170
  store i32 0, i32* %171, align 4
  br label %172

; <label>:172:                                    ; preds = %168
  %173 = load i32, i32* %2, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %2, align 4
  br label %165

; <label>:175:                                    ; preds = %165
  %176 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %177 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

; <label>:180:                                    ; preds = %175
  %181 = load double, double* @CurrentFrameMAD, align 8
  store double %181, double* @PreviousFrameMAD, align 8
  br label %182

; <label>:182:                                    ; preds = %180, %175
  %183 = load i32, i32* %1, align 4
  call void @MADModelEstimator(i32 %183)
  store i32 0, i32* %2, align 4
  br label %184

; <label>:184:                                    ; preds = %216, %182
  %185 = load i32, i32* %2, align 4
  %186 = load i32, i32* %1, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %219

; <label>:188:                                    ; preds = %184
  %189 = load double, double* @MADPictureC1, align 8
  %190 = load i32, i32* %2, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i64 0, i64 %191
  %193 = load double, double* %192, align 8
  %194 = fmul double %189, %193
  %195 = load double, double* @MADPictureC2, align 8
  %196 = fadd double %194, %195
  %197 = load i32, i32* %2, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i64 0, i64 %198
  %200 = load double, double* %199, align 8
  %201 = fsub double %196, %200
  %202 = load i32, i32* %2, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [20 x double], [20 x double]* %3, i64 0, i64 %203
  store double %201, double* %204, align 8
  %205 = load i32, i32* %2, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [20 x double], [20 x double]* %3, i64 0, i64 %206
  %208 = load double, double* %207, align 8
  %209 = load i32, i32* %2, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [20 x double], [20 x double]* %3, i64 0, i64 %210
  %212 = load double, double* %211, align 8
  %213 = fmul double %208, %212
  %214 = load double, double* %4, align 8
  %215 = fadd double %214, %213
  store double %215, double* %4, align 8
  br label %216

; <label>:216:                                    ; preds = %188
  %217 = load i32, i32* %2, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %2, align 4
  br label %184

; <label>:219:                                    ; preds = %184
  %220 = load i32, i32* %1, align 4
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %223

; <label>:222:                                    ; preds = %219
  br label %229

; <label>:223:                                    ; preds = %219
  %224 = load double, double* %4, align 8
  %225 = load i32, i32* %1, align 4
  %226 = sitofp i32 %225 to double
  %227 = fdiv double %224, %226
  %228 = call double @sqrt(double %227) #4
  br label %229

; <label>:229:                                    ; preds = %223, %222
  %230 = phi double [ 0.000000e+00, %222 ], [ %228, %223 ]
  store double %230, double* %5, align 8
  store i32 0, i32* %2, align 4
  br label %231

; <label>:231:                                    ; preds = %248, %229
  %232 = load i32, i32* %2, align 4
  %233 = load i32, i32* %1, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %251

; <label>:235:                                    ; preds = %231
  %236 = load i32, i32* %2, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [20 x double], [20 x double]* %3, i64 0, i64 %237
  %239 = load double, double* %238, align 8
  %240 = call double @fabs(double %239) #5
  %241 = load double, double* %5, align 8
  %242 = fcmp ogt double %240, %241
  br i1 %242, label %243, label %247

; <label>:243:                                    ; preds = %235
  %244 = load i32, i32* %2, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i64 0, i64 %245
  store i32 1, i32* %246, align 4
  br label %247

; <label>:247:                                    ; preds = %243, %235
  br label %248

; <label>:248:                                    ; preds = %247
  %249 = load i32, i32* %2, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %2, align 4
  br label %231

; <label>:251:                                    ; preds = %231
  store i32 0, i32* getelementptr inbounds ([21 x i32], [21 x i32]* @PictureRejected, i64 0, i64 0), align 16
  %252 = load i32, i32* %1, align 4
  call void @MADModelEstimator(i32 %252)
  br label %253

; <label>:253:                                    ; preds = %251, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @MADModelEstimator(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  store i32 %14, i32* %3, align 4
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %4, align 4
  br label %15

; <label>:15:                                     ; preds = %29, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %3, align 4
  br label %28

; <label>:28:                                     ; preds = %25, %19
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %15

; <label>:32:                                     ; preds = %15
  store double 0.000000e+00, double* @MADPictureC2, align 8
  store double 0.000000e+00, double* @MADPictureC1, align 8
  store i32 0, i32* %4, align 4
  br label %33

; <label>:33:                                     ; preds = %49, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i64 0, i64 %45
  %47 = load double, double* %46, align 8
  store double %47, double* %5, align 8
  br label %48

; <label>:48:                                     ; preds = %43, %37
  br label %49

; <label>:49:                                     ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %33

; <label>:52:                                     ; preds = %33
  store i32 0, i32* %4, align 4
  br label %53

; <label>:53:                                     ; preds = %93, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %96

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i64 0, i64 %59
  %61 = load double, double* %60, align 8
  %62 = load double, double* %5, align 8
  %63 = fcmp une double %61, %62
  br i1 %63, label %64, label %71

; <label>:64:                                     ; preds = %57
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

; <label>:70:                                     ; preds = %64
  store i32 1, i32* %13, align 4
  br label %71

; <label>:71:                                     ; preds = %70, %64, %57
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %92, label %77

; <label>:77:                                     ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i64 0, i64 %79
  %81 = load double, double* %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i64 0, i64 %83
  %85 = load double, double* %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sitofp i32 %86 to double
  %88 = fmul double %85, %87
  %89 = fdiv double %81, %88
  %90 = load double, double* @MADPictureC1, align 8
  %91 = fadd double %90, %89
  store double %91, double* @MADPictureC1, align 8
  br label %92

; <label>:92:                                     ; preds = %77, %71
  br label %93

; <label>:93:                                     ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %53

; <label>:96:                                     ; preds = %53
  %97 = load i32, i32* %3, align 4
  %98 = icmp sge i32 %97, 1
  br i1 %98, label %99, label %190

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %190

; <label>:102:                                    ; preds = %99
  store i32 0, i32* %4, align 4
  br label %103

; <label>:103:                                    ; preds = %152, %102
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %2, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %155

; <label>:107:                                    ; preds = %103
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [21 x i32], [21 x i32]* @PictureRejected, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %151, label %113

; <label>:113:                                    ; preds = %107
  %114 = load double, double* %6, align 8
  %115 = fadd double %114, 1.000000e+00
  store double %115, double* %6, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i64 0, i64 %117
  %119 = load double, double* %118, align 8
  %120 = load double, double* %7, align 8
  %121 = fadd double %120, %119
  store double %121, double* %7, align 8
  %122 = load double, double* %7, align 8
  store double %122, double* %8, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i64 0, i64 %124
  %126 = load double, double* %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i64 0, i64 %128
  %130 = load double, double* %129, align 8
  %131 = fmul double %126, %130
  %132 = load double, double* %9, align 8
  %133 = fadd double %132, %131
  store double %133, double* %9, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i64 0, i64 %135
  %137 = load double, double* %136, align 8
  %138 = load double, double* %10, align 8
  %139 = fadd double %138, %137
  store double %139, double* %10, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [21 x double], [21 x double]* @PictureMAD, i64 0, i64 %141
  %143 = load double, double* %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [21 x double], [21 x double]* @ReferenceMAD, i64 0, i64 %145
  %147 = load double, double* %146, align 8
  %148 = fmul double %143, %147
  %149 = load double, double* %11, align 8
  %150 = fadd double %149, %148
  store double %150, double* %11, align 8
  br label %151

; <label>:151:                                    ; preds = %113, %107
  br label %152

; <label>:152:                                    ; preds = %151
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %103

; <label>:155:                                    ; preds = %103
  %156 = load double, double* %6, align 8
  %157 = load double, double* %9, align 8
  %158 = fmul double %156, %157
  %159 = load double, double* %7, align 8
  %160 = load double, double* %8, align 8
  %161 = fmul double %159, %160
  %162 = fsub double %158, %161
  store double %162, double* %12, align 8
  %163 = load double, double* %12, align 8
  %164 = call double @fabs(double %163) #5
  %165 = fcmp ogt double %164, 1.000000e-06
  br i1 %165, label %166, label %185

; <label>:166:                                    ; preds = %155
  %167 = load double, double* %10, align 8
  %168 = load double, double* %9, align 8
  %169 = fmul double %167, %168
  %170 = load double, double* %11, align 8
  %171 = load double, double* %7, align 8
  %172 = fmul double %170, %171
  %173 = fsub double %169, %172
  %174 = load double, double* %12, align 8
  %175 = fdiv double %173, %174
  store double %175, double* @MADPictureC2, align 8
  %176 = load double, double* %11, align 8
  %177 = load double, double* %6, align 8
  %178 = fmul double %176, %177
  %179 = load double, double* %10, align 8
  %180 = load double, double* %8, align 8
  %181 = fmul double %179, %180
  %182 = fsub double %178, %181
  %183 = load double, double* %12, align 8
  %184 = fdiv double %182, %183
  store double %184, double* @MADPictureC1, align 8
  br label %189

; <label>:185:                                    ; preds = %155
  %186 = load double, double* %10, align 8
  %187 = load double, double* %7, align 8
  %188 = fdiv double %186, %187
  store double %188, double* @MADPictureC1, align 8
  store double 0.000000e+00, double* @MADPictureC2, align 8
  br label %189

; <label>:189:                                    ; preds = %185, %166
  br label %190

; <label>:190:                                    ; preds = %189, %99, %96
  %191 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %192 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %198

; <label>:195:                                    ; preds = %190
  %196 = load double, double* @MADPictureC1, align 8
  store double %196, double* @PMADPictureC1, align 8
  %197 = load double, double* @MADPictureC2, align 8
  store double %197, double* @PMADPictureC2, align 8
  br label %198

; <label>:198:                                    ; preds = %195, %190
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
