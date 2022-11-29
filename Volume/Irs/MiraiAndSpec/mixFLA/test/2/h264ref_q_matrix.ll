; ModuleID = 'host/ir_O0/h264ref_q_matrix.ll'
source_filename = "q_matrix.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@matrix4x4_check = global [6 x i32] zeroinitializer, align 16
@matrix8x8_check = global [2 x i32] zeroinitializer, align 4
@MatrixType4x4 = internal constant [6 x [20 x i8]] [[20 x i8] c"INTRA4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAV\00\00\00\00", [20 x i8] c"INTER4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAV\00\00\00\00"], align 16
@MatrixType8x8 = internal constant [2 x [20 x i8]] [[20 x i8] c"INTRA8X8_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER8X8_LUMA\00\00\00\00\00\00\00"], align 16
@errortext = external global [300 x i8], align 16
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@ScalingList4x4input = common global [6 x [16 x i16]] zeroinitializer, align 16
@ScalingList8x8input = common global [2 x [64 x i16]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@input = external global %struct.InputParameters*, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"\0A%s value exceed range. (Value must be 1 to 255)\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Setting default values for this matrix.\00", align 1
@Quant_inter_default = internal constant [16 x i16] [i16 10, i16 14, i16 20, i16 24, i16 14, i16 20, i16 24, i16 27, i16 20, i16 24, i16 27, i16 30, i16 24, i16 27, i16 30, i16 34], align 16
@Quant_intra_default = internal constant [16 x i16] [i16 6, i16 13, i16 20, i16 28, i16 13, i16 20, i16 28, i16 32, i16 20, i16 28, i16 32, i16 37, i16 28, i16 32, i16 37, i16 42], align 16
@.str.8 = private unnamed_addr constant [57 x i8] c"\0A%s matrix definition not found. Setting default values.\00", align 1
@Quant8_inter_default = internal constant [64 x i16] [i16 9, i16 13, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 13, i16 13, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 35], align 16
@Quant8_intra_default = internal constant [64 x i16] [i16 6, i16 10, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 10, i16 11, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 42], align 16
@.str.9 = private unnamed_addr constant [25 x i8] c"Parsing QMatrix file %s \00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UseDefaultScalingMatrix4x4Flag = common global [6 x i16] zeroinitializer, align 2
@UseDefaultScalingMatrix8x8Flag = common global [2 x i16] zeroinitializer, align 2
@active_sps = external global %struct.seq_parameter_set_rbsp_t*, align 8
@active_pps = external global %struct.pic_parameter_set_rbsp_t*, align 8
@quant_coef = external constant [6 x [4 x [4 x i32]]], align 16
@LevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@dequant_coef = external constant [6 x [4 x [4 x i32]]], align 16
@InvLevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@LevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@LevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@ScalingList4x4 = common global [6 x [16 x i16]] zeroinitializer, align 16
@quant_coef8 = external constant [6 x [8 x [8 x i32]]], align 16
@LevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@dequant_coef8 = external constant [6 x [8 x [8 x i32]]], align 16
@InvLevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@LevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@ScalingList8x8 = common global [2 x [64 x i16]] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define i32 @CheckParameterName(i8*, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %32, %2
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %10
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i32 0, i32 0
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 6
  br label %17

; <label>:17:                                     ; preds = %14, %8
  %18 = phi i1 [ false, %8 ], [ %16, %14 ]
  br i1 %18, label %19, label %33

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %21
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %22, i32 0, i32 0
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcmp(i8* %23, i8* %24) #5
  %26 = icmp eq i32 0, %25
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %19
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %61

; <label>:29:                                     ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %32

; <label>:32:                                     ; preds = %29
  br label %8

; <label>:33:                                     ; preds = %17
  store i32 0, i32* %6, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 1, i32* %34, align 4
  br label %35

; <label>:35:                                     ; preds = %59, %33
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %37
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %38, i32 0, i32 0
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 2
  br label %44

; <label>:44:                                     ; preds = %41, %35
  %45 = phi i1 [ false, %35 ], [ %43, %41 ]
  br i1 %45, label %46, label %60

; <label>:46:                                     ; preds = %44
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %48
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %49, i32 0, i32 0
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcmp(i8* %50, i8* %51) #5
  %53 = icmp eq i32 0, %52
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %46
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %61

; <label>:56:                                     ; preds = %46
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %59

; <label>:59:                                     ; preds = %56
  br label %35

; <label>:60:                                     ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %61

; <label>:61:                                     ; preds = %60, %54, %27
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @ParseMatrix(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1000 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i8*, i8** %3, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %11, align 8
  br label %24

; <label>:24:                                     ; preds = %99, %2
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %100

; <label>:28:                                     ; preds = %24
  %29 = load i8*, i8** %10, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %85 [
    i32 13, label %32
    i32 35, label %35
    i32 10, label %52
    i32 32, label %55
    i32 9, label %55
    i32 34, label %65
    i32 44, label %82
  ]

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  br label %99

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %10, align 8
  store i8 0, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %48, %35
  %38 = load i8*, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ult i8* %43, %44
  br label %46

; <label>:46:                                     ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %46
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %10, align 8
  br label %37

; <label>:51:                                     ; preds = %46
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %99

; <label>:52:                                     ; preds = %28
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  store i8 0, i8* %53, align 1
  br label %99

; <label>:55:                                     ; preds = %28, %28
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

; <label>:58:                                     ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  br label %64

; <label>:61:                                     ; preds = %55
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  store i8 0, i8* %62, align 1
  store i32 0, i32* %9, align 4
  br label %64

; <label>:64:                                     ; preds = %61, %58
  br label %99

; <label>:65:                                     ; preds = %28
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  store i8 0, i8* %66, align 1
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

; <label>:70:                                     ; preds = %65
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %74
  store i8* %71, i8** %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = xor i32 %76, -1
  store i32 %77, i32* %9, align 4
  br label %79

; <label>:78:                                     ; preds = %65
  store i32 0, i32* %9, align 4
  br label %79

; <label>:79:                                     ; preds = %78, %70
  %80 = load i32, i32* %8, align 4
  %81 = xor i32 %80, -1
  store i32 %81, i32* %8, align 4
  br label %99

; <label>:82:                                     ; preds = %28
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %99

; <label>:85:                                     ; preds = %28
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

; <label>:88:                                     ; preds = %85
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %92
  store i8* %89, i8** %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = xor i32 %94, -1
  store i32 %95, i32* %9, align 4
  br label %96

; <label>:96:                                     ; preds = %88, %85
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  br label %99

; <label>:99:                                     ; preds = %96, %82, %79, %64, %52, %51, %32
  br label %24

; <label>:100:                                    ; preds = %24
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  store i32 0, i32* %13, align 4
  br label %103

; <label>:103:                                    ; preds = %203, %100
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %207

; <label>:107:                                    ; preds = %103
  store i32 0, i32* %17, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @CheckParameterName(i8* %113, i32* %16)
  store i32 %114, i32* %6, align 4
  %115 = icmp sgt i32 0, %114
  br i1 %115, label %116, label %124

; <label>:116:                                    ; preds = %107
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i32 0, i32 0), i8* %122) #6
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %124

; <label>:124:                                    ; preds = %116, %107
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %132) #5
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

; <label>:135:                                    ; preds = %124
  %136 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i32 0, i32 0)) #6
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %137

; <label>:137:                                    ; preds = %135, %124
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

; <label>:142:                                    ; preds = %137
  store i32 16, i32* %15, align 4
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %144
  %146 = getelementptr inbounds [16 x i16], [16 x i16]* %145, i32 0, i32 0
  store i16* %146, i16** %18, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [6 x i32], [6 x i32]* @matrix4x4_check, i64 0, i64 %148
  store i32 1, i32* %149, align 4
  br label %158

; <label>:150:                                    ; preds = %137
  store i32 64, i32* %15, align 4
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %152
  %154 = getelementptr inbounds [64 x i16], [64 x i16]* %153, i32 0, i32 0
  store i16* %154, i16** %18, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* @matrix8x8_check, i64 0, i64 %156
  store i32 1, i32* %157, align 4
  br label %158

; <label>:158:                                    ; preds = %150, %142
  store i32 0, i32* %14, align 4
  br label %159

; <label>:159:                                    ; preds = %195, %158
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %198

; <label>:163:                                    ; preds = %159
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32* %12) #6
  %173 = icmp ne i32 1, %172
  br i1 %173, label %174, label %188

; <label>:174:                                    ; preds = %163
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %5, i64 0, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i64 300, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i32 0, i32 0), i8* %178, i8* %186) #6
  call void @error(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0), i32 300)
  br label %188

; <label>:188:                                    ; preds = %174, %163
  %189 = load i32, i32* %12, align 4
  %190 = trunc i32 %189 to i16
  %191 = load i16*, i16** %18, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i16, i16* %191, i64 %193
  store i16 %190, i16* %194, align 2
  br label %195

; <label>:195:                                    ; preds = %188
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %159

; <label>:198:                                    ; preds = %159
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %17, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %17, align 4
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %203

; <label>:203:                                    ; preds = %198
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %13, align 4
  br label %103

; <label>:207:                                    ; preds = %103
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #2

declare void @error(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define void @PatchMatrix() #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %5

; <label>:5:                                      ; preds = %171, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 6
  br i1 %7, label %8, label %174

; <label>:8:                                      ; preds = %5
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %10 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 133
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %87

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4input, i64 0, i64 %18
  %20 = getelementptr inbounds [16 x i16], [16 x i16]* %19, i32 0, i32 0
  store i16* %20, i16** %1, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* @matrix4x4_check, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %71

; <label>:26:                                     ; preds = %16
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %27

; <label>:27:                                     ; preds = %48, %26
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %51

; <label>:30:                                     ; preds = %27
  %31 = load i16*, i16** %1, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %46, label %38

; <label>:38:                                     ; preds = %30
  %39 = load i16*, i16** %1, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %39, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i32
  %45 = icmp sgt i32 %44, 255
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %38, %30
  store i32 1, i32* %4, align 4
  br label %51

; <label>:47:                                     ; preds = %38
  br label %48

; <label>:48:                                     ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %27

; <label>:51:                                     ; preds = %46, %27
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %56
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %57, i32 0, i32 0
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i8* %58)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  %61 = load i32, i32* %2, align 4
  %62 = icmp sgt i32 %61, 2
  br i1 %62, label %63, label %66

; <label>:63:                                     ; preds = %54
  %64 = load i16*, i16** %1, align 8
  %65 = bitcast i16* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i32 2, i1 false)
  br label %69

; <label>:66:                                     ; preds = %54
  %67 = load i16*, i16** %1, align 8
  %68 = bitcast i16* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i32 2, i1 false)
  br label %69

; <label>:69:                                     ; preds = %66, %63
  br label %70

; <label>:70:                                     ; preds = %69, %51
  br label %86

; <label>:71:                                     ; preds = %16
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @MatrixType4x4, i64 0, i64 %73
  %75 = getelementptr inbounds [20 x i8], [20 x i8]* %74, i32 0, i32 0
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0), i8* %75)
  %77 = load i32, i32* %2, align 4
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %79, label %82

; <label>:79:                                     ; preds = %71
  %80 = load i16*, i16** %1, align 8
  %81 = bitcast i16* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* bitcast ([16 x i16]* @Quant_inter_default to i8*), i64 32, i32 2, i1 false)
  br label %85

; <label>:82:                                     ; preds = %71
  %83 = load i16*, i16** %1, align 8
  %84 = bitcast i16* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* bitcast ([16 x i16]* @Quant_intra_default to i8*), i64 32, i32 2, i1 false)
  br label %85

; <label>:85:                                     ; preds = %82, %79
  br label %86

; <label>:86:                                     ; preds = %85, %70
  br label %87

; <label>:87:                                     ; preds = %86, %8
  %88 = load i32, i32* %2, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %170

; <label>:90:                                     ; preds = %87
  %91 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %92 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %91, i32 0, i32 133
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, 6
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %92, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %170

; <label>:99:                                     ; preds = %90
  %100 = load i32, i32* %2, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8input, i64 0, i64 %101
  %103 = getelementptr inbounds [64 x i16], [64 x i16]* %102, i32 0, i32 0
  store i16* %103, i16** %1, align 8
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* @matrix8x8_check, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %154

; <label>:109:                                    ; preds = %99
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %110

; <label>:110:                                    ; preds = %131, %109
  %111 = load i32, i32* %3, align 4
  %112 = icmp slt i32 %111, 64
  br i1 %112, label %113, label %134

; <label>:113:                                    ; preds = %110
  %114 = load i16*, i16** %1, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i16, i16* %114, i64 %116
  %118 = load i16, i16* %117, align 2
  %119 = sext i16 %118 to i32
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %129, label %121

; <label>:121:                                    ; preds = %113
  %122 = load i16*, i16** %1, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i16, i16* %122, i64 %124
  %126 = load i16, i16* %125, align 2
  %127 = sext i16 %126 to i32
  %128 = icmp sgt i32 %127, 255
  br i1 %128, label %129, label %130

; <label>:129:                                    ; preds = %121, %113
  store i32 1, i32* %4, align 4
  br label %134

; <label>:130:                                    ; preds = %121
  br label %131

; <label>:131:                                    ; preds = %130
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %110

; <label>:134:                                    ; preds = %129, %110
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %153

; <label>:137:                                    ; preds = %134
  %138 = load i32, i32* %2, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %139
  %141 = getelementptr inbounds [20 x i8], [20 x i8]* %140, i32 0, i32 0
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i8* %141)
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0))
  %144 = load i32, i32* %2, align 4
  %145 = icmp eq i32 %144, 7
  br i1 %145, label %146, label %149

; <label>:146:                                    ; preds = %137
  %147 = load i16*, i16** %1, align 8
  %148 = bitcast i16* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* bitcast ([64 x i16]* @Quant8_inter_default to i8*), i64 128, i32 2, i1 false)
  br label %152

; <label>:149:                                    ; preds = %137
  %150 = load i16*, i16** %1, align 8
  %151 = bitcast i16* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i32 2, i1 false)
  br label %152

; <label>:152:                                    ; preds = %149, %146
  br label %153

; <label>:153:                                    ; preds = %152, %134
  br label %169

; <label>:154:                                    ; preds = %99
  %155 = load i32, i32* %2, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @MatrixType8x8, i64 0, i64 %156
  %158 = getelementptr inbounds [20 x i8], [20 x i8]* %157, i32 0, i32 0
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i32 0, i32 0), i8* %158)
  %160 = load i32, i32* %2, align 4
  %161 = icmp eq i32 %160, 7
  br i1 %161, label %162, label %165

; <label>:162:                                    ; preds = %154
  %163 = load i16*, i16** %1, align 8
  %164 = bitcast i16* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* bitcast ([64 x i16]* @Quant8_inter_default to i8*), i64 128, i32 2, i1 false)
  br label %168

; <label>:165:                                    ; preds = %154
  %166 = load i16*, i16** %1, align 8
  %167 = bitcast i16* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %167, i8* bitcast ([64 x i16]* @Quant8_intra_default to i8*), i64 128, i32 2, i1 false)
  br label %168

; <label>:168:                                    ; preds = %165, %162
  br label %169

; <label>:169:                                    ; preds = %168, %153
  br label %170

; <label>:170:                                    ; preds = %169, %90, %87
  br label %171

; <label>:171:                                    ; preds = %170
  %172 = load i32, i32* %2, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %2, align 4
  br label %5

; <label>:174:                                    ; preds = %5
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noinline nounwind uwtable
define void @Init_QMatrix() #0 {
  %1 = alloca i8*, align 8
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 132
  %4 = load i32, i32* %3, align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %27

; <label>:6:                                      ; preds = %0
  %7 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %8 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %7, i32 0, i32 30
  %9 = getelementptr inbounds [200 x i8], [200 x i8]* %8, i32 0, i32 0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* %9)
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 30
  %13 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i32 0, i32 0
  %14 = call i8* @GetConfigFileContent(i8* %13, i32 0)
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %6
  %18 = load i8*, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = call i64 @strlen(i8* %19) #5
  %21 = trunc i64 %20 to i32
  call void @ParseMatrix(i8* %18, i32 %21)
  br label %24

; <label>:22:                                     ; preds = %6
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([300 x i8], [300 x i8]* @errortext, i32 0, i32 0))
  br label %24

; <label>:24:                                     ; preds = %22, %17
  call void @PatchMatrix()
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i16]* @UseDefaultScalingMatrix4x4Flag to i8*), i8 0, i64 12, i32 2, i1 false)
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 1), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 0), align 2
  %26 = load i8*, i8** %1, align 8
  call void @free(i8* %26) #6
  br label %27

; <label>:27:                                     ; preds = %24, %0
  ret void
}

declare i8* @GetConfigFileContent(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define void @CalculateQuantParam() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %0
  %12 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %11
  store i32 1, i32* %6, align 4
  br label %85

; <label>:17:                                     ; preds = %11, %0
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i32 0, i32 0
  %19 = bitcast i32* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 24, i32 16, i1 false)
  %20 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

; <label>:24:                                     ; preds = %17
  store i32 0, i32* %1, align 4
  br label %25

; <label>:25:                                     ; preds = %38, %24
  %26 = load i32, i32* %1, align 4
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %28, label %41

; <label>:28:                                     ; preds = %25
  %29 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %30 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %29, i32 0, i32 10
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %36
  store i32 %34, i32* %37, align 4
  br label %38

; <label>:38:                                     ; preds = %28
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %25

; <label>:41:                                     ; preds = %25
  br label %42

; <label>:42:                                     ; preds = %41, %17
  %43 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %44 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %84

; <label>:47:                                     ; preds = %42
  store i32 0, i32* %1, align 4
  br label %48

; <label>:48:                                     ; preds = %80, %47
  %49 = load i32, i32* %1, align 4
  %50 = icmp slt i32 %49, 6
  br i1 %50, label %51, label %83

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %1, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %1, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %69

; <label>:57:                                     ; preds = %54, %51
  %58 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %59 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %58, i32 0, i32 6
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %59, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  br label %79

; <label>:69:                                     ; preds = %54
  %70 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %71 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %70, i32 0, i32 6
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %71, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %77
  store i32 %75, i32* %78, align 4
  br label %79

; <label>:79:                                     ; preds = %69, %57
  br label %80

; <label>:80:                                     ; preds = %79
  %81 = load i32, i32* %1, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %1, align 4
  br label %48

; <label>:83:                                     ; preds = %48
  br label %84

; <label>:84:                                     ; preds = %83, %42
  br label %85

; <label>:85:                                     ; preds = %84, %16
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %347

; <label>:88:                                     ; preds = %85
  store i32 0, i32* %3, align 4
  br label %89

; <label>:89:                                     ; preds = %343, %88
  %90 = load i32, i32* %3, align 4
  %91 = icmp slt i32 %90, 6
  br i1 %91, label %92, label %346

; <label>:92:                                     ; preds = %89
  store i32 0, i32* %2, align 4
  br label %93

; <label>:93:                                     ; preds = %339, %92
  %94 = load i32, i32* %2, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %342

; <label>:96:                                     ; preds = %93
  store i32 0, i32* %1, align 4
  br label %97

; <label>:97:                                     ; preds = %335, %96
  %98 = load i32, i32* %1, align 4
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %100, label %338

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %102
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %103, i64 0, i64 %105
  %107 = load i32, i32* %1, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %106, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %112
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %113, i64 0, i64 %115
  %117 = load i32, i32* %1, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %116, i64 0, i64 %118
  store i32 %110, i32* %119, align 4
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %121
  %123 = load i32, i32* %2, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %122, i64 0, i64 %124
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %125, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 4
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %132
  %134 = load i32, i32* %2, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %133, i64 0, i64 %135
  %137 = load i32, i32* %1, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %136, i64 0, i64 %138
  store i32 %130, i32* %139, align 4
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %141
  %143 = load i32, i32* %2, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %142, i64 0, i64 %144
  %146 = load i32, i32* %1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %145, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0), i64 0, i64 %151
  %153 = load i32, i32* %2, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %152, i64 0, i64 %154
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %155, i64 0, i64 %157
  store i32 %149, i32* %158, align 4
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %160
  %162 = load i32, i32* %2, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %161, i64 0, i64 %163
  %165 = load i32, i32* %1, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %164, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 4
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0), i64 0, i64 %171
  %173 = load i32, i32* %2, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %172, i64 0, i64 %174
  %176 = load i32, i32* %1, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %175, i64 0, i64 %177
  store i32 %169, i32* %178, align 4
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %180
  %182 = load i32, i32* %2, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %181, i64 0, i64 %183
  %185 = load i32, i32* %1, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %184, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %3, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1), i64 0, i64 %190
  %192 = load i32, i32* %2, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %191, i64 0, i64 %193
  %195 = load i32, i32* %1, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %194, i64 0, i64 %196
  store i32 %188, i32* %197, align 4
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %199
  %201 = load i32, i32* %2, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %200, i64 0, i64 %202
  %204 = load i32, i32* %1, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %203, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = shl i32 %207, 4
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1), i64 0, i64 %210
  %212 = load i32, i32* %2, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %211, i64 0, i64 %213
  %215 = load i32, i32* %1, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %214, i64 0, i64 %216
  store i32 %208, i32* %217, align 4
  %218 = load i32, i32* %3, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %219
  %221 = load i32, i32* %2, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %220, i64 0, i64 %222
  %224 = load i32, i32* %1, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [4 x i32], [4 x i32]* %223, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %3, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %229
  %231 = load i32, i32* %2, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %230, i64 0, i64 %232
  %234 = load i32, i32* %1, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [4 x i32], [4 x i32]* %233, i64 0, i64 %235
  store i32 %227, i32* %236, align 4
  %237 = load i32, i32* %3, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %238
  %240 = load i32, i32* %2, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %239, i64 0, i64 %241
  %243 = load i32, i32* %1, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %242, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = shl i32 %246, 4
  %248 = load i32, i32* %3, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %249
  %251 = load i32, i32* %2, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %250, i64 0, i64 %252
  %254 = load i32, i32* %1, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %253, i64 0, i64 %255
  store i32 %247, i32* %256, align 4
  %257 = load i32, i32* %3, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %258
  %260 = load i32, i32* %2, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %259, i64 0, i64 %261
  %263 = load i32, i32* %1, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [4 x i32], [4 x i32]* %262, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %3, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0), i64 0, i64 %268
  %270 = load i32, i32* %2, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %269, i64 0, i64 %271
  %273 = load i32, i32* %1, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [4 x i32], [4 x i32]* %272, i64 0, i64 %274
  store i32 %266, i32* %275, align 4
  %276 = load i32, i32* %3, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %277
  %279 = load i32, i32* %2, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %278, i64 0, i64 %280
  %282 = load i32, i32* %1, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [4 x i32], [4 x i32]* %281, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = shl i32 %285, 4
  %287 = load i32, i32* %3, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0), i64 0, i64 %288
  %290 = load i32, i32* %2, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %289, i64 0, i64 %291
  %293 = load i32, i32* %1, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [4 x i32], [4 x i32]* %292, i64 0, i64 %294
  store i32 %286, i32* %295, align 4
  %296 = load i32, i32* %3, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %297
  %299 = load i32, i32* %2, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %298, i64 0, i64 %300
  %302 = load i32, i32* %1, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* %301, i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %3, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1), i64 0, i64 %307
  %309 = load i32, i32* %2, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %308, i64 0, i64 %310
  %312 = load i32, i32* %1, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [4 x i32], [4 x i32]* %311, i64 0, i64 %313
  store i32 %305, i32* %314, align 4
  %315 = load i32, i32* %3, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %316
  %318 = load i32, i32* %2, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %317, i64 0, i64 %319
  %321 = load i32, i32* %1, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [4 x i32], [4 x i32]* %320, i64 0, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = shl i32 %324, 4
  %326 = load i32, i32* %3, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1), i64 0, i64 %327
  %329 = load i32, i32* %2, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %328, i64 0, i64 %330
  %332 = load i32, i32* %1, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [4 x i32], [4 x i32]* %331, i64 0, i64 %333
  store i32 %325, i32* %334, align 4
  br label %335

; <label>:335:                                    ; preds = %100
  %336 = load i32, i32* %1, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %1, align 4
  br label %97

; <label>:338:                                    ; preds = %97
  br label %339

; <label>:339:                                    ; preds = %338
  %340 = load i32, i32* %2, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %2, align 4
  br label %93

; <label>:342:                                    ; preds = %93
  br label %343

; <label>:343:                                    ; preds = %342
  %344 = load i32, i32* %3, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %3, align 4
  br label %89

; <label>:346:                                    ; preds = %89
  br label %1076

; <label>:347:                                    ; preds = %85
  store i32 0, i32* %3, align 4
  br label %348

; <label>:348:                                    ; preds = %1072, %347
  %349 = load i32, i32* %3, align 4
  %350 = icmp slt i32 %349, 6
  br i1 %350, label %351, label %1075

; <label>:351:                                    ; preds = %348
  store i32 0, i32* %2, align 4
  br label %352

; <label>:352:                                    ; preds = %1068, %351
  %353 = load i32, i32* %2, align 4
  %354 = icmp slt i32 %353, 4
  br i1 %354, label %355, label %1071

; <label>:355:                                    ; preds = %352
  store i32 0, i32* %1, align 4
  br label %356

; <label>:356:                                    ; preds = %1064, %355
  %357 = load i32, i32* %1, align 4
  %358 = icmp slt i32 %357, 4
  br i1 %358, label %359, label %1067

; <label>:359:                                    ; preds = %356
  %360 = load i32, i32* %1, align 4
  %361 = shl i32 %360, 2
  %362 = load i32, i32* %2, align 4
  %363 = add nsw i32 %361, %362
  store i32 %363, i32* %4, align 4
  %364 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %365 = load i32, i32* %364, align 16
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %371

; <label>:367:                                    ; preds = %359
  %368 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 0), align 2
  %369 = sext i16 %368 to i32
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %423

; <label>:371:                                    ; preds = %367, %359
  %372 = load i32, i32* %3, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %373
  %375 = load i32, i32* %2, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %374, i64 0, i64 %376
  %378 = load i32, i32* %1, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [4 x i32], [4 x i32]* %377, i64 0, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = shl i32 %381, 4
  %383 = load i32, i32* %4, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i64 0, i64 %384
  %386 = load i16, i16* %385, align 2
  %387 = sext i16 %386 to i32
  %388 = sdiv i32 %382, %387
  %389 = load i32, i32* %3, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %390
  %392 = load i32, i32* %2, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %391, i64 0, i64 %393
  %395 = load i32, i32* %1, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [4 x i32], [4 x i32]* %394, i64 0, i64 %396
  store i32 %388, i32* %397, align 4
  %398 = load i32, i32* %3, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %399
  %401 = load i32, i32* %2, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %400, i64 0, i64 %402
  %404 = load i32, i32* %1, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [4 x i32], [4 x i32]* %403, i64 0, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %4, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i64 0, i64 %409
  %411 = load i16, i16* %410, align 2
  %412 = sext i16 %411 to i32
  %413 = mul nsw i32 %407, %412
  %414 = load i32, i32* %3, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %415
  %417 = load i32, i32* %2, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %416, i64 0, i64 %418
  %420 = load i32, i32* %1, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [4 x i32], [4 x i32]* %419, i64 0, i64 %421
  store i32 %413, i32* %422, align 4
  br label %475

; <label>:423:                                    ; preds = %367
  %424 = load i32, i32* %3, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %425
  %427 = load i32, i32* %2, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %426, i64 0, i64 %428
  %430 = load i32, i32* %1, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [4 x i32], [4 x i32]* %429, i64 0, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = shl i32 %433, 4
  %435 = load i32, i32* %4, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 0), i64 0, i64 %436
  %438 = load i16, i16* %437, align 2
  %439 = sext i16 %438 to i32
  %440 = sdiv i32 %434, %439
  %441 = load i32, i32* %3, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %442
  %444 = load i32, i32* %2, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %443, i64 0, i64 %445
  %447 = load i32, i32* %1, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [4 x i32], [4 x i32]* %446, i64 0, i64 %448
  store i32 %440, i32* %449, align 4
  %450 = load i32, i32* %3, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %451
  %453 = load i32, i32* %2, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %452, i64 0, i64 %454
  %456 = load i32, i32* %1, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [4 x i32], [4 x i32]* %455, i64 0, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* %4, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 0), i64 0, i64 %461
  %463 = load i16, i16* %462, align 2
  %464 = sext i16 %463 to i32
  %465 = mul nsw i32 %459, %464
  %466 = load i32, i32* %3, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %467
  %469 = load i32, i32* %2, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %468, i64 0, i64 %470
  %472 = load i32, i32* %1, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [4 x i32], [4 x i32]* %471, i64 0, i64 %473
  store i32 %465, i32* %474, align 4
  br label %475

; <label>:475:                                    ; preds = %423, %371
  %476 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %477 = load i32, i32* %476, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %518, label %479

; <label>:479:                                    ; preds = %475
  %480 = load i32, i32* %3, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Intra, i64 0, i64 %481
  %483 = load i32, i32* %2, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %482, i64 0, i64 %484
  %486 = load i32, i32* %1, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [4 x i32], [4 x i32]* %485, i64 0, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* %3, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0), i64 0, i64 %491
  %493 = load i32, i32* %2, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %492, i64 0, i64 %494
  %496 = load i32, i32* %1, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [4 x i32], [4 x i32]* %495, i64 0, i64 %497
  store i32 %489, i32* %498, align 4
  %499 = load i32, i32* %3, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i64 0, i64 %500
  %502 = load i32, i32* %2, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %501, i64 0, i64 %503
  %505 = load i32, i32* %1, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [4 x i32], [4 x i32]* %504, i64 0, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* %3, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0), i64 0, i64 %510
  %512 = load i32, i32* %2, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %511, i64 0, i64 %513
  %515 = load i32, i32* %1, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [4 x i32], [4 x i32]* %514, i64 0, i64 %516
  store i32 %508, i32* %517, align 4
  br label %594

; <label>:518:                                    ; preds = %475
  %519 = load i32, i32* %3, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %520
  %522 = load i32, i32* %2, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %521, i64 0, i64 %523
  %525 = load i32, i32* %1, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [4 x i32], [4 x i32]* %524, i64 0, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = shl i32 %528, 4
  %530 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 1), align 2
  %531 = sext i16 %530 to i32
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %539

; <label>:533:                                    ; preds = %518
  %534 = load i32, i32* %4, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i64 0, i64 %535
  %537 = load i16, i16* %536, align 2
  %538 = sext i16 %537 to i32
  br label %545

; <label>:539:                                    ; preds = %518
  %540 = load i32, i32* %4, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 1), i64 0, i64 %541
  %543 = load i16, i16* %542, align 2
  %544 = sext i16 %543 to i32
  br label %545

; <label>:545:                                    ; preds = %539, %533
  %546 = phi i32 [ %538, %533 ], [ %544, %539 ]
  %547 = sdiv i32 %529, %546
  %548 = load i32, i32* %3, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0), i64 0, i64 %549
  %551 = load i32, i32* %2, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %550, i64 0, i64 %552
  %554 = load i32, i32* %1, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [4 x i32], [4 x i32]* %553, i64 0, i64 %555
  store i32 %547, i32* %556, align 4
  %557 = load i32, i32* %3, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %558
  %560 = load i32, i32* %2, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %559, i64 0, i64 %561
  %563 = load i32, i32* %1, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [4 x i32], [4 x i32]* %562, i64 0, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 1), align 2
  %568 = sext i16 %567 to i32
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %576

; <label>:570:                                    ; preds = %545
  %571 = load i32, i32* %4, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i64 0, i64 %572
  %574 = load i16, i16* %573, align 2
  %575 = sext i16 %574 to i32
  br label %582

; <label>:576:                                    ; preds = %545
  %577 = load i32, i32* %4, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 1), i64 0, i64 %578
  %580 = load i16, i16* %579, align 2
  %581 = sext i16 %580 to i32
  br label %582

; <label>:582:                                    ; preds = %576, %570
  %583 = phi i32 [ %575, %570 ], [ %581, %576 ]
  %584 = mul nsw i32 %566, %583
  %585 = load i32, i32* %3, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0), i64 0, i64 %586
  %588 = load i32, i32* %2, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %587, i64 0, i64 %589
  %591 = load i32, i32* %1, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [4 x i32], [4 x i32]* %590, i64 0, i64 %592
  store i32 %584, i32* %593, align 4
  br label %594

; <label>:594:                                    ; preds = %582, %479
  %595 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %596 = load i32, i32* %595, align 8
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %637, label %598

; <label>:598:                                    ; preds = %594
  %599 = load i32, i32* %3, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 0), i64 0, i64 %600
  %602 = load i32, i32* %2, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %601, i64 0, i64 %603
  %605 = load i32, i32* %1, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [4 x i32], [4 x i32]* %604, i64 0, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* %3, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1), i64 0, i64 %610
  %612 = load i32, i32* %2, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %611, i64 0, i64 %613
  %615 = load i32, i32* %1, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [4 x i32], [4 x i32]* %614, i64 0, i64 %616
  store i32 %608, i32* %617, align 4
  %618 = load i32, i32* %3, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 0), i64 0, i64 %619
  %621 = load i32, i32* %2, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %620, i64 0, i64 %622
  %624 = load i32, i32* %1, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [4 x i32], [4 x i32]* %623, i64 0, i64 %625
  %627 = load i32, i32* %626, align 4
  %628 = load i32, i32* %3, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1), i64 0, i64 %629
  %631 = load i32, i32* %2, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %630, i64 0, i64 %632
  %634 = load i32, i32* %1, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [4 x i32], [4 x i32]* %633, i64 0, i64 %635
  store i32 %627, i32* %636, align 4
  br label %713

; <label>:637:                                    ; preds = %594
  %638 = load i32, i32* %3, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %639
  %641 = load i32, i32* %2, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %640, i64 0, i64 %642
  %644 = load i32, i32* %1, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [4 x i32], [4 x i32]* %643, i64 0, i64 %645
  %647 = load i32, i32* %646, align 4
  %648 = shl i32 %647, 4
  %649 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 2), align 2
  %650 = sext i16 %649 to i32
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %658

; <label>:652:                                    ; preds = %637
  %653 = load i32, i32* %4, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i64 0, i64 %654
  %656 = load i16, i16* %655, align 2
  %657 = sext i16 %656 to i32
  br label %664

; <label>:658:                                    ; preds = %637
  %659 = load i32, i32* %4, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 2), i64 0, i64 %660
  %662 = load i16, i16* %661, align 2
  %663 = sext i16 %662 to i32
  br label %664

; <label>:664:                                    ; preds = %658, %652
  %665 = phi i32 [ %657, %652 ], [ %663, %658 ]
  %666 = sdiv i32 %648, %665
  %667 = load i32, i32* %3, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Intra, i64 0, i64 1), i64 0, i64 %668
  %670 = load i32, i32* %2, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %669, i64 0, i64 %671
  %673 = load i32, i32* %1, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [4 x i32], [4 x i32]* %672, i64 0, i64 %674
  store i32 %666, i32* %675, align 4
  %676 = load i32, i32* %3, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %677
  %679 = load i32, i32* %2, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %678, i64 0, i64 %680
  %682 = load i32, i32* %1, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds [4 x i32], [4 x i32]* %681, i64 0, i64 %683
  %685 = load i32, i32* %684, align 4
  %686 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 2), align 2
  %687 = sext i16 %686 to i32
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %695

; <label>:689:                                    ; preds = %664
  %690 = load i32, i32* %4, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_intra_default, i64 0, i64 %691
  %693 = load i16, i16* %692, align 2
  %694 = sext i16 %693 to i32
  br label %701

; <label>:695:                                    ; preds = %664
  %696 = load i32, i32* %4, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 2), i64 0, i64 %697
  %699 = load i16, i16* %698, align 2
  %700 = sext i16 %699 to i32
  br label %701

; <label>:701:                                    ; preds = %695, %689
  %702 = phi i32 [ %694, %689 ], [ %700, %695 ]
  %703 = mul nsw i32 %685, %702
  %704 = load i32, i32* %3, align 4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i64 0, i64 1), i64 0, i64 %705
  %707 = load i32, i32* %2, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %706, i64 0, i64 %708
  %710 = load i32, i32* %1, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds [4 x i32], [4 x i32]* %709, i64 0, i64 %711
  store i32 %703, i32* %712, align 4
  br label %713

; <label>:713:                                    ; preds = %701, %598
  %714 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %715 = load i32, i32* %714, align 4
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %721

; <label>:717:                                    ; preds = %713
  %718 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 3), align 2
  %719 = sext i16 %718 to i32
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %773

; <label>:721:                                    ; preds = %717, %713
  %722 = load i32, i32* %3, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %723
  %725 = load i32, i32* %2, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %724, i64 0, i64 %726
  %728 = load i32, i32* %1, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [4 x i32], [4 x i32]* %727, i64 0, i64 %729
  %731 = load i32, i32* %730, align 4
  %732 = shl i32 %731, 4
  %733 = load i32, i32* %4, align 4
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i64 0, i64 %734
  %736 = load i16, i16* %735, align 2
  %737 = sext i16 %736 to i32
  %738 = sdiv i32 %732, %737
  %739 = load i32, i32* %3, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %740
  %742 = load i32, i32* %2, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %741, i64 0, i64 %743
  %745 = load i32, i32* %1, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds [4 x i32], [4 x i32]* %744, i64 0, i64 %746
  store i32 %738, i32* %747, align 4
  %748 = load i32, i32* %3, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %749
  %751 = load i32, i32* %2, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %750, i64 0, i64 %752
  %754 = load i32, i32* %1, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds [4 x i32], [4 x i32]* %753, i64 0, i64 %755
  %757 = load i32, i32* %756, align 4
  %758 = load i32, i32* %4, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i64 0, i64 %759
  %761 = load i16, i16* %760, align 2
  %762 = sext i16 %761 to i32
  %763 = mul nsw i32 %757, %762
  %764 = load i32, i32* %3, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %765
  %767 = load i32, i32* %2, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %766, i64 0, i64 %768
  %770 = load i32, i32* %1, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [4 x i32], [4 x i32]* %769, i64 0, i64 %771
  store i32 %763, i32* %772, align 4
  br label %825

; <label>:773:                                    ; preds = %717
  %774 = load i32, i32* %3, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %775
  %777 = load i32, i32* %2, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %776, i64 0, i64 %778
  %780 = load i32, i32* %1, align 4
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds [4 x i32], [4 x i32]* %779, i64 0, i64 %781
  %783 = load i32, i32* %782, align 4
  %784 = shl i32 %783, 4
  %785 = load i32, i32* %4, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 3), i64 0, i64 %786
  %788 = load i16, i16* %787, align 2
  %789 = sext i16 %788 to i32
  %790 = sdiv i32 %784, %789
  %791 = load i32, i32* %3, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %792
  %794 = load i32, i32* %2, align 4
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %793, i64 0, i64 %795
  %797 = load i32, i32* %1, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds [4 x i32], [4 x i32]* %796, i64 0, i64 %798
  store i32 %790, i32* %799, align 4
  %800 = load i32, i32* %3, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %801
  %803 = load i32, i32* %2, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %802, i64 0, i64 %804
  %806 = load i32, i32* %1, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds [4 x i32], [4 x i32]* %805, i64 0, i64 %807
  %809 = load i32, i32* %808, align 4
  %810 = load i32, i32* %4, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 3), i64 0, i64 %811
  %813 = load i16, i16* %812, align 2
  %814 = sext i16 %813 to i32
  %815 = mul nsw i32 %809, %814
  %816 = load i32, i32* %3, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %817
  %819 = load i32, i32* %2, align 4
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %818, i64 0, i64 %820
  %822 = load i32, i32* %1, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds [4 x i32], [4 x i32]* %821, i64 0, i64 %823
  store i32 %815, i32* %824, align 4
  br label %825

; <label>:825:                                    ; preds = %773, %721
  %826 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %827 = load i32, i32* %826, align 16
  %828 = icmp ne i32 %827, 0
  br i1 %828, label %868, label %829

; <label>:829:                                    ; preds = %825
  %830 = load i32, i32* %3, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @LevelScale4x4Luma_Inter, i64 0, i64 %831
  %833 = load i32, i32* %2, align 4
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %832, i64 0, i64 %834
  %836 = load i32, i32* %1, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds [4 x i32], [4 x i32]* %835, i64 0, i64 %837
  %839 = load i32, i32* %838, align 4
  %840 = load i32, i32* %3, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0), i64 0, i64 %841
  %843 = load i32, i32* %2, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %842, i64 0, i64 %844
  %846 = load i32, i32* %1, align 4
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [4 x i32], [4 x i32]* %845, i64 0, i64 %847
  store i32 %839, i32* %848, align 4
  %849 = load i32, i32* %3, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i64 0, i64 %850
  %852 = load i32, i32* %2, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %851, i64 0, i64 %853
  %855 = load i32, i32* %1, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds [4 x i32], [4 x i32]* %854, i64 0, i64 %856
  %858 = load i32, i32* %857, align 4
  %859 = load i32, i32* %3, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0), i64 0, i64 %860
  %862 = load i32, i32* %2, align 4
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %861, i64 0, i64 %863
  %865 = load i32, i32* %1, align 4
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds [4 x i32], [4 x i32]* %864, i64 0, i64 %866
  store i32 %858, i32* %867, align 4
  br label %944

; <label>:868:                                    ; preds = %825
  %869 = load i32, i32* %3, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %870
  %872 = load i32, i32* %2, align 4
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %871, i64 0, i64 %873
  %875 = load i32, i32* %1, align 4
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds [4 x i32], [4 x i32]* %874, i64 0, i64 %876
  %878 = load i32, i32* %877, align 4
  %879 = shl i32 %878, 4
  %880 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 4), align 2
  %881 = sext i16 %880 to i32
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %883, label %889

; <label>:883:                                    ; preds = %868
  %884 = load i32, i32* %4, align 4
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i64 0, i64 %885
  %887 = load i16, i16* %886, align 2
  %888 = sext i16 %887 to i32
  br label %895

; <label>:889:                                    ; preds = %868
  %890 = load i32, i32* %4, align 4
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 4), i64 0, i64 %891
  %893 = load i16, i16* %892, align 2
  %894 = sext i16 %893 to i32
  br label %895

; <label>:895:                                    ; preds = %889, %883
  %896 = phi i32 [ %888, %883 ], [ %894, %889 ]
  %897 = sdiv i32 %879, %896
  %898 = load i32, i32* %3, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0), i64 0, i64 %899
  %901 = load i32, i32* %2, align 4
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %900, i64 0, i64 %902
  %904 = load i32, i32* %1, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds [4 x i32], [4 x i32]* %903, i64 0, i64 %905
  store i32 %897, i32* %906, align 4
  %907 = load i32, i32* %3, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %908
  %910 = load i32, i32* %2, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %909, i64 0, i64 %911
  %913 = load i32, i32* %1, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds [4 x i32], [4 x i32]* %912, i64 0, i64 %914
  %916 = load i32, i32* %915, align 4
  %917 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 4), align 2
  %918 = sext i16 %917 to i32
  %919 = icmp ne i32 %918, 0
  br i1 %919, label %920, label %926

; <label>:920:                                    ; preds = %895
  %921 = load i32, i32* %4, align 4
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i64 0, i64 %922
  %924 = load i16, i16* %923, align 2
  %925 = sext i16 %924 to i32
  br label %932

; <label>:926:                                    ; preds = %895
  %927 = load i32, i32* %4, align 4
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 4), i64 0, i64 %928
  %930 = load i16, i16* %929, align 2
  %931 = sext i16 %930 to i32
  br label %932

; <label>:932:                                    ; preds = %926, %920
  %933 = phi i32 [ %925, %920 ], [ %931, %926 ]
  %934 = mul nsw i32 %916, %933
  %935 = load i32, i32* %3, align 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0), i64 0, i64 %936
  %938 = load i32, i32* %2, align 4
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %937, i64 0, i64 %939
  %941 = load i32, i32* %1, align 4
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds [4 x i32], [4 x i32]* %940, i64 0, i64 %942
  store i32 %934, i32* %943, align 4
  br label %944

; <label>:944:                                    ; preds = %932, %829
  %945 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %946 = load i32, i32* %945, align 4
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %987, label %948

; <label>:948:                                    ; preds = %944
  %949 = load i32, i32* %3, align 4
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 0), i64 0, i64 %950
  %952 = load i32, i32* %2, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %951, i64 0, i64 %953
  %955 = load i32, i32* %1, align 4
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds [4 x i32], [4 x i32]* %954, i64 0, i64 %956
  %958 = load i32, i32* %957, align 4
  %959 = load i32, i32* %3, align 4
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1), i64 0, i64 %960
  %962 = load i32, i32* %2, align 4
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %961, i64 0, i64 %963
  %965 = load i32, i32* %1, align 4
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds [4 x i32], [4 x i32]* %964, i64 0, i64 %966
  store i32 %958, i32* %967, align 4
  %968 = load i32, i32* %3, align 4
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 0), i64 0, i64 %969
  %971 = load i32, i32* %2, align 4
  %972 = sext i32 %971 to i64
  %973 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %970, i64 0, i64 %972
  %974 = load i32, i32* %1, align 4
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds [4 x i32], [4 x i32]* %973, i64 0, i64 %975
  %977 = load i32, i32* %976, align 4
  %978 = load i32, i32* %3, align 4
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1), i64 0, i64 %979
  %981 = load i32, i32* %2, align 4
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %980, i64 0, i64 %982
  %984 = load i32, i32* %1, align 4
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds [4 x i32], [4 x i32]* %983, i64 0, i64 %985
  store i32 %977, i32* %986, align 4
  br label %1063

; <label>:987:                                    ; preds = %944
  %988 = load i32, i32* %3, align 4
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i64 0, i64 %989
  %991 = load i32, i32* %2, align 4
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %990, i64 0, i64 %992
  %994 = load i32, i32* %1, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds [4 x i32], [4 x i32]* %993, i64 0, i64 %995
  %997 = load i32, i32* %996, align 4
  %998 = shl i32 %997, 4
  %999 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 5), align 2
  %1000 = sext i16 %999 to i32
  %1001 = icmp ne i32 %1000, 0
  br i1 %1001, label %1002, label %1008

; <label>:1002:                                   ; preds = %987
  %1003 = load i32, i32* %4, align 4
  %1004 = sext i32 %1003 to i64
  %1005 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i64 0, i64 %1004
  %1006 = load i16, i16* %1005, align 2
  %1007 = sext i16 %1006 to i32
  br label %1014

; <label>:1008:                                   ; preds = %987
  %1009 = load i32, i32* %4, align 4
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 5), i64 0, i64 %1010
  %1012 = load i16, i16* %1011, align 2
  %1013 = sext i16 %1012 to i32
  br label %1014

; <label>:1014:                                   ; preds = %1008, %1002
  %1015 = phi i32 [ %1007, %1002 ], [ %1013, %1008 ]
  %1016 = sdiv i32 %998, %1015
  %1017 = load i32, i32* %3, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @LevelScale4x4Chroma_Inter, i64 0, i64 1), i64 0, i64 %1018
  %1020 = load i32, i32* %2, align 4
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %1019, i64 0, i64 %1021
  %1023 = load i32, i32* %1, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds [4 x i32], [4 x i32]* %1022, i64 0, i64 %1024
  store i32 %1016, i32* %1025, align 4
  %1026 = load i32, i32* %3, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i64 0, i64 %1027
  %1029 = load i32, i32* %2, align 4
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %1028, i64 0, i64 %1030
  %1032 = load i32, i32* %1, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds [4 x i32], [4 x i32]* %1031, i64 0, i64 %1033
  %1035 = load i32, i32* %1034, align 4
  %1036 = load i16, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @UseDefaultScalingMatrix4x4Flag, i64 0, i64 5), align 2
  %1037 = sext i16 %1036 to i32
  %1038 = icmp ne i32 %1037, 0
  br i1 %1038, label %1039, label %1045

; <label>:1039:                                   ; preds = %1014
  %1040 = load i32, i32* %4, align 4
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds [16 x i16], [16 x i16]* @Quant_inter_default, i64 0, i64 %1041
  %1043 = load i16, i16* %1042, align 2
  %1044 = sext i16 %1043 to i32
  br label %1051

; <label>:1045:                                   ; preds = %1014
  %1046 = load i32, i32* %4, align 4
  %1047 = sext i32 %1046 to i64
  %1048 = getelementptr inbounds [16 x i16], [16 x i16]* getelementptr inbounds ([6 x [16 x i16]], [6 x [16 x i16]]* @ScalingList4x4, i64 0, i64 5), i64 0, i64 %1047
  %1049 = load i16, i16* %1048, align 2
  %1050 = sext i16 %1049 to i32
  br label %1051

; <label>:1051:                                   ; preds = %1045, %1039
  %1052 = phi i32 [ %1044, %1039 ], [ %1050, %1045 ]
  %1053 = mul nsw i32 %1035, %1052
  %1054 = load i32, i32* %3, align 4
  %1055 = sext i32 %1054 to i64
  %1056 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i64 0, i64 1), i64 0, i64 %1055
  %1057 = load i32, i32* %2, align 4
  %1058 = sext i32 %1057 to i64
  %1059 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %1056, i64 0, i64 %1058
  %1060 = load i32, i32* %1, align 4
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds [4 x i32], [4 x i32]* %1059, i64 0, i64 %1061
  store i32 %1053, i32* %1062, align 4
  br label %1063

; <label>:1063:                                   ; preds = %1051, %948
  br label %1064

; <label>:1064:                                   ; preds = %1063
  %1065 = load i32, i32* %1, align 4
  %1066 = add nsw i32 %1065, 1
  store i32 %1066, i32* %1, align 4
  br label %356

; <label>:1067:                                   ; preds = %356
  br label %1068

; <label>:1068:                                   ; preds = %1067
  %1069 = load i32, i32* %2, align 4
  %1070 = add nsw i32 %1069, 1
  store i32 %1070, i32* %2, align 4
  br label %352

; <label>:1071:                                   ; preds = %352
  br label %1072

; <label>:1072:                                   ; preds = %1071
  %1073 = load i32, i32* %3, align 4
  %1074 = add nsw i32 %1073, 1
  store i32 %1074, i32* %3, align 4
  br label %348

; <label>:1075:                                   ; preds = %348
  br label %1076

; <label>:1076:                                   ; preds = %1075, %346
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @CalculateQuant8Param() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

; <label>:11:                                     ; preds = %0
  %12 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %11
  store i32 1, i32* %6, align 4
  br label %70

; <label>:17:                                     ; preds = %11, %0
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i32 0, i32 0
  %19 = bitcast i32* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 8, i32 4, i1 false)
  %20 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %21 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

; <label>:24:                                     ; preds = %17
  store i32 0, i32* %1, align 4
  br label %25

; <label>:25:                                     ; preds = %39, %24
  %26 = load i32, i32* %1, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %42

; <label>:28:                                     ; preds = %25
  %29 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %30 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %29, i32 0, i32 10
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 6
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %37
  store i32 %35, i32* %38, align 4
  br label %39

; <label>:39:                                     ; preds = %28
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %25

; <label>:42:                                     ; preds = %25
  br label %43

; <label>:43:                                     ; preds = %42, %17
  %44 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %45 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

; <label>:48:                                     ; preds = %43
  store i32 0, i32* %1, align 4
  br label %49

; <label>:49:                                     ; preds = %65, %48
  %50 = load i32, i32* %1, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %68

; <label>:52:                                     ; preds = %49
  %53 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %54 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %53, i32 0, i32 6
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 6
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %54, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

; <label>:65:                                     ; preds = %52
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %49

; <label>:68:                                     ; preds = %49
  br label %69

; <label>:69:                                     ; preds = %68, %43
  br label %70

; <label>:70:                                     ; preds = %69, %16
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %176

; <label>:73:                                     ; preds = %70
  store i32 0, i32* %3, align 4
  br label %74

; <label>:74:                                     ; preds = %172, %73
  %75 = load i32, i32* %3, align 4
  %76 = icmp slt i32 %75, 6
  br i1 %76, label %77, label %175

; <label>:77:                                     ; preds = %74
  store i32 0, i32* %2, align 4
  br label %78

; <label>:78:                                     ; preds = %168, %77
  %79 = load i32, i32* %2, align 4
  %80 = icmp slt i32 %79, 8
  br i1 %80, label %81, label %171

; <label>:81:                                     ; preds = %78
  store i32 0, i32* %1, align 4
  br label %82

; <label>:82:                                     ; preds = %164, %81
  %83 = load i32, i32* %1, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %167

; <label>:85:                                     ; preds = %82
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %87
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %88, i64 0, i64 %90
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %91, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %97
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %98, i64 0, i64 %100
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %101, i64 0, i64 %103
  store i32 %95, i32* %104, align 4
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %106
  %108 = load i32, i32* %2, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %107, i64 0, i64 %109
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* %110, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 4
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %117
  %119 = load i32, i32* %2, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %118, i64 0, i64 %120
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %121, i64 0, i64 %123
  store i32 %115, i32* %124, align 4
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %126
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %127, i64 0, i64 %129
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %130, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %136
  %138 = load i32, i32* %2, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %137, i64 0, i64 %139
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 %142
  store i32 %134, i32* %143, align 4
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %145
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %146, i64 0, i64 %148
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [8 x i32], [8 x i32]* %149, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 4
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %156
  %158 = load i32, i32* %2, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %157, i64 0, i64 %159
  %161 = load i32, i32* %1, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %160, i64 0, i64 %162
  store i32 %154, i32* %163, align 4
  br label %164

; <label>:164:                                    ; preds = %85
  %165 = load i32, i32* %1, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %1, align 4
  br label %82

; <label>:167:                                    ; preds = %82
  br label %168

; <label>:168:                                    ; preds = %167
  %169 = load i32, i32* %2, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %2, align 4
  br label %78

; <label>:171:                                    ; preds = %78
  br label %172

; <label>:172:                                    ; preds = %171
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %3, align 4
  br label %74

; <label>:175:                                    ; preds = %74
  br label %429

; <label>:176:                                    ; preds = %70
  store i32 0, i32* %3, align 4
  br label %177

; <label>:177:                                    ; preds = %425, %176
  %178 = load i32, i32* %3, align 4
  %179 = icmp slt i32 %178, 6
  br i1 %179, label %180, label %428

; <label>:180:                                    ; preds = %177
  store i32 0, i32* %2, align 4
  br label %181

; <label>:181:                                    ; preds = %421, %180
  %182 = load i32, i32* %2, align 4
  %183 = icmp slt i32 %182, 8
  br i1 %183, label %184, label %424

; <label>:184:                                    ; preds = %181
  store i32 0, i32* %1, align 4
  br label %185

; <label>:185:                                    ; preds = %417, %184
  %186 = load i32, i32* %1, align 4
  %187 = icmp slt i32 %186, 8
  br i1 %187, label %188, label %420

; <label>:188:                                    ; preds = %185
  %189 = load i32, i32* %1, align 4
  %190 = shl i32 %189, 3
  %191 = load i32, i32* %2, align 4
  %192 = add nsw i32 %190, %191
  store i32 %192, i32* %4, align 4
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

; <label>:196:                                    ; preds = %188
  %197 = load i16, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 0), align 2
  %198 = sext i16 %197 to i32
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %252

; <label>:200:                                    ; preds = %196, %188
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %202
  %204 = load i32, i32* %2, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %203, i64 0, i64 %205
  %207 = load i32, i32* %1, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [8 x i32], [8 x i32]* %206, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = shl i32 %210, 4
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_intra_default, i64 0, i64 %213
  %215 = load i16, i16* %214, align 2
  %216 = sext i16 %215 to i32
  %217 = sdiv i32 %211, %216
  %218 = load i32, i32* %3, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %219
  %221 = load i32, i32* %2, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %220, i64 0, i64 %222
  %224 = load i32, i32* %1, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %223, i64 0, i64 %225
  store i32 %217, i32* %226, align 4
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %228
  %230 = load i32, i32* %2, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %229, i64 0, i64 %231
  %233 = load i32, i32* %1, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [8 x i32], [8 x i32]* %232, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %4, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_intra_default, i64 0, i64 %238
  %240 = load i16, i16* %239, align 2
  %241 = sext i16 %240 to i32
  %242 = mul nsw i32 %236, %241
  %243 = load i32, i32* %3, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %244
  %246 = load i32, i32* %2, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %245, i64 0, i64 %247
  %249 = load i32, i32* %1, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [8 x i32], [8 x i32]* %248, i64 0, i64 %250
  store i32 %242, i32* %251, align 4
  br label %304

; <label>:252:                                    ; preds = %196
  %253 = load i32, i32* %3, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %254
  %256 = load i32, i32* %2, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %255, i64 0, i64 %257
  %259 = load i32, i32* %1, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [8 x i32], [8 x i32]* %258, i64 0, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = shl i32 %262, 4
  %264 = load i32, i32* %4, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 0), i64 0, i64 %265
  %267 = load i16, i16* %266, align 2
  %268 = sext i16 %267 to i32
  %269 = sdiv i32 %263, %268
  %270 = load i32, i32* %3, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i64 0, i64 %271
  %273 = load i32, i32* %2, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %272, i64 0, i64 %274
  %276 = load i32, i32* %1, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [8 x i32], [8 x i32]* %275, i64 0, i64 %277
  store i32 %269, i32* %278, align 4
  %279 = load i32, i32* %3, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %280
  %282 = load i32, i32* %2, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %281, i64 0, i64 %283
  %285 = load i32, i32* %1, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [8 x i32], [8 x i32]* %284, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %4, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 0), i64 0, i64 %290
  %292 = load i16, i16* %291, align 2
  %293 = sext i16 %292 to i32
  %294 = mul nsw i32 %288, %293
  %295 = load i32, i32* %3, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i64 0, i64 %296
  %298 = load i32, i32* %2, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %297, i64 0, i64 %299
  %301 = load i32, i32* %1, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [8 x i32], [8 x i32]* %300, i64 0, i64 %302
  store i32 %294, i32* %303, align 4
  br label %304

; <label>:304:                                    ; preds = %252, %200
  %305 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %312

; <label>:308:                                    ; preds = %304
  %309 = load i16, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @UseDefaultScalingMatrix8x8Flag, i64 0, i64 1), align 2
  %310 = sext i16 %309 to i32
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %364

; <label>:312:                                    ; preds = %308, %304
  %313 = load i32, i32* %3, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %314
  %316 = load i32, i32* %2, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %315, i64 0, i64 %317
  %319 = load i32, i32* %1, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [8 x i32], [8 x i32]* %318, i64 0, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = shl i32 %322, 4
  %324 = load i32, i32* %4, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_inter_default, i64 0, i64 %325
  %327 = load i16, i16* %326, align 2
  %328 = sext i16 %327 to i32
  %329 = sdiv i32 %323, %328
  %330 = load i32, i32* %3, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %331
  %333 = load i32, i32* %2, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %332, i64 0, i64 %334
  %336 = load i32, i32* %1, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [8 x i32], [8 x i32]* %335, i64 0, i64 %337
  store i32 %329, i32* %338, align 4
  %339 = load i32, i32* %3, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %340
  %342 = load i32, i32* %2, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %341, i64 0, i64 %343
  %345 = load i32, i32* %1, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [8 x i32], [8 x i32]* %344, i64 0, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %4, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [64 x i16], [64 x i16]* @Quant8_inter_default, i64 0, i64 %350
  %352 = load i16, i16* %351, align 2
  %353 = sext i16 %352 to i32
  %354 = mul nsw i32 %348, %353
  %355 = load i32, i32* %3, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %356
  %358 = load i32, i32* %2, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %357, i64 0, i64 %359
  %361 = load i32, i32* %1, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [8 x i32], [8 x i32]* %360, i64 0, i64 %362
  store i32 %354, i32* %363, align 4
  br label %416

; <label>:364:                                    ; preds = %308
  %365 = load i32, i32* %3, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @quant_coef8, i64 0, i64 %366
  %368 = load i32, i32* %2, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %367, i64 0, i64 %369
  %371 = load i32, i32* %1, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [8 x i32], [8 x i32]* %370, i64 0, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = shl i32 %374, 4
  %376 = load i32, i32* %4, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 1), i64 0, i64 %377
  %379 = load i16, i16* %378, align 2
  %380 = sext i16 %379 to i32
  %381 = sdiv i32 %375, %380
  %382 = load i32, i32* %3, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i64 0, i64 %383
  %385 = load i32, i32* %2, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %384, i64 0, i64 %386
  %388 = load i32, i32* %1, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [8 x i32], [8 x i32]* %387, i64 0, i64 %389
  store i32 %381, i32* %390, align 4
  %391 = load i32, i32* %3, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @dequant_coef8, i64 0, i64 %392
  %394 = load i32, i32* %2, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %393, i64 0, i64 %395
  %397 = load i32, i32* %1, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [8 x i32], [8 x i32]* %396, i64 0, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* %4, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [64 x i16], [64 x i16]* getelementptr inbounds ([2 x [64 x i16]], [2 x [64 x i16]]* @ScalingList8x8, i64 0, i64 1), i64 0, i64 %402
  %404 = load i16, i16* %403, align 2
  %405 = sext i16 %404 to i32
  %406 = mul nsw i32 %400, %405
  %407 = load i32, i32* %3, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i64 0, i64 %408
  %410 = load i32, i32* %2, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %409, i64 0, i64 %411
  %413 = load i32, i32* %1, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [8 x i32], [8 x i32]* %412, i64 0, i64 %414
  store i32 %406, i32* %415, align 4
  br label %416

; <label>:416:                                    ; preds = %364, %312
  br label %417

; <label>:417:                                    ; preds = %416
  %418 = load i32, i32* %1, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %1, align 4
  br label %185

; <label>:420:                                    ; preds = %185
  br label %421

; <label>:421:                                    ; preds = %420
  %422 = load i32, i32* %2, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %2, align 4
  br label %181

; <label>:424:                                    ; preds = %181
  br label %425

; <label>:425:                                    ; preds = %424
  %426 = load i32, i32* %3, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %3, align 4
  br label %177

; <label>:428:                                    ; preds = %177
  br label %429

; <label>:429:                                    ; preds = %428, %175
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
