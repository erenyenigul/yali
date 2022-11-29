; ModuleID = 'host/ir_O0/povray_hfield.ll'
source_filename = "hfield.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.pov::Object_Struct" = type { %"struct.pov::Method_Struct"*, i32, %"struct.pov::Object_Struct"*, %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"*, %"struct.pov::Interior_Struct"*, %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"*, %"struct.pov::Light_Source_Struct"*, %"struct.pov::Bounding_Box_Struct", %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"*, float, i32 }
%"struct.pov::Method_Struct" = type { {}*, i32 (double*, %"struct.pov::Object_Struct"*)*, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)*, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)*, i8* (%"struct.pov::Object_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*)*, void (%"struct.pov::Object_Struct"*)* }
%"struct.pov::Texture_Struct" = type { i16, i16, i16, i32, float, float, float, %"struct.pov::Warps_Struct"*, %"struct.pov::Pattern_Struct"*, %"struct.pov::Blend_Map_Struct"*, %union.anon.25, %"struct.pov::Texture_Struct"*, %"struct.pov::Pigment_Struct"*, %"struct.pov::Tnormal_Struct"*, %"struct.pov::Finish_Struct"*, %"struct.pov::Texture_Struct"*, i32 }
%"struct.pov::Warps_Struct" = type { i16, %"struct.pov::Warps_Struct"*, %"struct.pov::Warps_Struct"* }
%"struct.pov::Pattern_Struct" = type { i16, i16, i16, i32, float, float, float, %"struct.pov::Warps_Struct"*, %"struct.pov::Pattern_Struct"*, %"struct.pov::Blend_Map_Struct"*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.21 }
%struct.anon.21 = type { [3 x double], [3 x double], double, double, i16, [3 x double]*, i32, [3 x double] }
%"struct.pov::Blend_Map_Struct" = type { i32, i16, i8, i8, %"struct.pov::Blend_Map_Entry"* }
%"struct.pov::Blend_Map_Entry" = type { float, i8, %union.anon }
%union.anon = type { [2 x double], [8 x i8] }
%union.anon.25 = type { %struct.anon.29 }
%struct.anon.29 = type { [3 x double], [3 x double], double, double, i16, [3 x double]*, i32, [3 x double] }
%"struct.pov::Pigment_Struct" = type { i16, i16, i16, i32, float, float, float, %"struct.pov::Warps_Struct"*, %"struct.pov::Pattern_Struct"*, %"struct.pov::Blend_Map_Struct"*, %union.anon.0, [5 x float] }
%union.anon.0 = type { %struct.anon.5 }
%struct.anon.5 = type { [3 x double], [3 x double], double, double, i16, [3 x double]*, i32, [3 x double] }
%"struct.pov::Tnormal_Struct" = type { i16, i16, i16, i32, float, float, float, %"struct.pov::Warps_Struct"*, %"struct.pov::Pattern_Struct"*, %"struct.pov::Blend_Map_Struct"*, %union.anon.9, float, float }
%union.anon.9 = type { %struct.anon.13 }
%struct.anon.13 = type { [3 x double], [3 x double], double, double, i16, [3 x double]*, i32, [3 x double] }
%"struct.pov::Finish_Struct" = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, i32, float, i32 }
%"struct.pov::Interior_Struct" = type { i32, i32, i32, float, float, float, float, float, float, [5 x float], %"struct.pov::Media_Struct"* }
%"struct.pov::Media_Struct" = type { i32, i32, i32, i32, i32, double, i32, double, double, i32, i32, i32, i32, [5 x float], [5 x float], [5 x float], [5 x float], double, double, double, double*, double, i32, i32, %"struct.pov::Pigment_Struct"*, %"struct.pov::Media_Struct"* }
%"struct.pov::Light_Source_Struct" = type { %"struct.pov::Method_Struct"*, i32, %"struct.pov::Object_Struct"*, %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"*, %"struct.pov::Interior_Struct"*, %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"*, %"struct.pov::Light_Source_Struct"*, %"struct.pov::Bounding_Box_Struct", %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"*, float, i32, %"struct.pov::Object_Struct"*, [5 x float], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], double, double, double, double, double, %"struct.pov::Light_Source_Struct"*, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [5 x float]**, %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"*, %"struct.pov::Blend_Map_Struct"*, [6 x %"struct.pov::Project_Tree_Node_Struct"*] }
%"struct.pov::Project_Tree_Node_Struct" = type { i16, %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::Project_Struct", i16, %"struct.pov::Project_Tree_Node_Struct"** }
%"struct.pov::BBox_Tree_Struct" = type { i16, i16, %"struct.pov::Bounding_Box_Struct", %"struct.pov::BBox_Tree_Struct"** }
%"struct.pov::Project_Struct" = type { i32, i32, i32, i32 }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::Transform_Struct" = type { [4 x [4 x double]], [4 x [4 x double]] }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x %"struct.pov::Interior_Struct"*] }
%"struct.pov::istack_struct" = type { %"struct.pov::istack_struct"*, %"struct.pov::istk_entry"*, i32, i32 }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], %"struct.pov::Object_Struct"*, i32, i32, double, double, double, double, double, double, double, double, double, i8*, i8* }
%"struct.pov::HField_Struct" = type { %"struct.pov::Method_Struct"*, i32, %"struct.pov::Object_Struct"*, %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"*, %"struct.pov::Interior_Struct"*, %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"*, %"struct.pov::Light_Source_Struct"*, %"struct.pov::Bounding_Box_Struct", %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"*, float, i32, [3 x double], [3 x double], %"struct.pov::HField_Data_Struct"* }
%"struct.pov::HField_Data_Struct" = type { i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i16**, [3 x i16]**, [16 x %"struct.pov::HField_Normal_Struct"], %"struct.pov::HField_Block_Struct"** }
%"struct.pov::HField_Normal_Struct" = type { double, double, [3 x double] }
%"struct.pov::HField_Block_Struct" = type { i32, i32, i32, i32, double, double }
%"struct.pov::Image_Struct" = type { i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, [3 x double], float, float, [2 x double], double, double, %"struct.pov::Image_Colour_Struct"*, i8*, %union.anon.2 }
%"struct.pov::Image_Colour_Struct" = type { i16, i16, i16, i16, i16 }
%union.anon.2 = type { %"struct.pov::Image8_Line_Struct"* }
%"struct.pov::Image8_Line_Struct" = type { i8*, i8*, i8*, i8* }

$_ZSt3minItERKT_S2_S2_ = comdat any

$_ZSt3maxItERKT_S2_S2_ = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZN3pov16Assign_BBox_VectERA3_fPd = comdat any

$_ZN3pov4VSubEPfPKdS2_ = comdat any

$_ZN3pov16Increase_CounterERx = comdat any

$_ZN3pov12VEvaluateRayEPdPKddS2_ = comdat any

$_ZSt3minIdERKT_S2_S2_ = comdat any

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZN3pov4VDotERdPKdS2_ = comdat any

$_ZN3pov4VSubEPdPKdS2_ = comdat any

$_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE = comdat any

$_ZN3pov4itopEPNS_13istack_structE = comdat any

$_ZN3pov14Assign_UV_VectEPdS0_ = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_ZN3pov10VNormalizeEPdPKd = comdat any

$_ZN3pov12VNormalizeEqEPd = comdat any

$_ZN3pov7VLengthERdPKd = comdat any

$_ZN3pov13VInverseScaleEPdPKdd = comdat any

$_ZN3pov15VInverseScaleEqEPdd = comdat any

$_ZN3pov6VCrossEPdPKdS2_ = comdat any

$_ZN3pov8VScaleEqEPdd = comdat any

$_ZN3pov6VAddEqEPdPKd = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

@_ZN3pov14HField_MethodsE = global { i32 (%"struct.pov::Object_Struct"*, %"struct.pov::Ray_Struct"*, %"struct.pov::istack_struct"*)*, i32 (double*, %"struct.pov::Object_Struct"*)*, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)*, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)*, i8* (%"struct.pov::Object_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*)*, void (%"struct.pov::Object_Struct"*)* } { i32 (%"struct.pov::Object_Struct"*, %"struct.pov::Ray_Struct"*, %"struct.pov::istack_struct"*)* @_ZN3povL24All_HField_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, i32 (double*, %"struct.pov::Object_Struct"*)* @_ZN3povL13Inside_HFieldEPdPNS_13Object_StructE, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)* @_ZN3povL13HField_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)* @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, i8* (%"struct.pov::Object_Struct"*)* bitcast (%"struct.pov::HField_Struct"* (%"struct.pov::Object_Struct"*)* @_ZN3povL11Copy_HFieldEPNS_13Object_StructE to i8* (%"struct.pov::Object_Struct"*)*), void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)* @_ZN3povL16Translate_HFieldEPNS_13Object_StructEPdPNS_16Transform_StructE, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)* @_ZN3povL13Rotate_HFieldEPNS_13Object_StructEPdPNS_16Transform_StructE, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)* @_ZN3povL12Scale_HFieldEPNS_13Object_StructEPdPNS_16Transform_StructE, void (%"struct.pov::Object_Struct"*, %"struct.pov::Transform_Struct"*)* @_ZN3povL16Transform_HFieldEPNS_13Object_StructEPNS_16Transform_StructE, void (%"struct.pov::Object_Struct"*)* @_ZN3povL13Invert_HFieldEPNS_13Object_StructE, void (%"struct.pov::Object_Struct"*)* @_ZN3povL14Destroy_HFieldEPNS_13Object_StructE }, align 8
@.str = private unnamed_addr constant [11 x i8] c"hfield.cpp\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"height field\00", align 1
@_ZN3pov5statsE = external global [126 x i64], align 16
@.str.2 = private unnamed_addr constant [183 x i8] c"Illegal grid value in dda_traversal().\0AThe height field may contain dark spots. To eliminate them\0Amoving the camera a tiny bit should help. For more information\0Aread the user manual!\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"height field normals\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to find any normals at: (%d, %d).\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"height field blocks\00", align 1

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL24All_HField_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(%"struct.pov::Object_Struct"*, %"struct.pov::Ray_Struct"*, %"struct.pov::istack_struct"*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %"struct.pov::Object_Struct"*, align 8
  %6 = alloca %"struct.pov::Ray_Struct"*, align 8
  %7 = alloca %"struct.pov::istack_struct"*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x double], align 16
  %11 = alloca %"struct.pov::Ray_Struct", align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %"struct.pov::HField_Struct"*, align 8
  %15 = alloca %"struct.pov::istack_struct"*, align 8
  %16 = alloca %"struct.pov::Ray_Struct"*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %5, align 8
  store %"struct.pov::Ray_Struct"* %1, %"struct.pov::Ray_Struct"** %6, align 8
  store %"struct.pov::istack_struct"* %2, %"struct.pov::istack_struct"** %7, align 8
  %19 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %5, align 8
  %20 = bitcast %"struct.pov::Object_Struct"* %19 to %"struct.pov::HField_Struct"*
  store %"struct.pov::HField_Struct"* %20, %"struct.pov::HField_Struct"** %14, align 8
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 32))
  %21 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %11, i32 0, i32 0
  %22 = getelementptr inbounds [3 x double], [3 x double]* %21, i32 0, i32 0
  %23 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %24 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %23, i32 0, i32 0
  %25 = getelementptr inbounds [3 x double], [3 x double]* %24, i32 0, i32 0
  %26 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %14, align 8
  %27 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %26, i32 0, i32 10
  %28 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %27, align 8
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(double* %22, double* %25, %"struct.pov::Transform_Struct"* %28)
  %29 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %11, i32 0, i32 1
  %30 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 0
  %31 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %32 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %31, i32 0, i32 1
  %33 = getelementptr inbounds [3 x double], [3 x double]* %32, i32 0, i32 0
  %34 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %14, align 8
  %35 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %34, i32 0, i32 10
  %36 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %35, align 8
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(double* %30, double* %33, %"struct.pov::Transform_Struct"* %36)
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 34))
  %37 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %14, align 8
  %38 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %37, i32 0, i32 14
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i32 0, i32 0
  %40 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %14, align 8
  %41 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %40, i32 0, i32 15
  %42 = getelementptr inbounds [3 x double], [3 x double]* %41, i32 0, i32 0
  %43 = call i32 @_ZN3pov13Intersect_BoxEPNS_10Ray_StructEPNS_16Transform_StructEPdS4_S4_S4_PiS5_(%"struct.pov::Ray_Struct"* %11, %"struct.pov::Transform_Struct"* null, double* %39, double* %42, double* %12, double* %13, i32* %8, i32* %9)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

; <label>:45:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

; <label>:46:                                     ; preds = %3
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 35))
  %47 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %14, align 8
  %48 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %47, i32 0, i32 16
  %49 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %48, align 8
  %50 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load double, double* %12, align 8
  %52 = fcmp olt double %51, 1.000000e-06
  br i1 %52, label %53, label %59

; <label>:53:                                     ; preds = %46
  store double 1.000000e-06, double* %12, align 8
  %54 = load double, double* %12, align 8
  %55 = load double, double* %13, align 8
  %56 = fcmp ogt double %54, %55
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %53
  store i32 0, i32* %4, align 4
  br label %76

; <label>:58:                                     ; preds = %53
  br label %59

; <label>:59:                                     ; preds = %58, %46
  %60 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %61 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %11, i32 0, i32 0
  %62 = getelementptr inbounds [3 x double], [3 x double]* %61, i32 0, i32 0
  %63 = load double, double* %12, align 8
  %64 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %11, i32 0, i32 1
  %65 = getelementptr inbounds [3 x double], [3 x double]* %64, i32 0, i32 0
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(double* %60, double* %62, double %63, double* %65)
  %66 = load double, double* %12, align 8
  store double %66, double* %17, align 8
  %67 = load double, double* %13, align 8
  store double %67, double* %18, align 8
  %68 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %7, align 8
  store %"struct.pov::istack_struct"* %68, %"struct.pov::istack_struct"** %15, align 8
  %69 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  store %"struct.pov::Ray_Struct"* %69, %"struct.pov::Ray_Struct"** %16, align 8
  %70 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %14, align 8
  %71 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %72 = call i32 @_ZN3povL15block_traversalEPNS_10Ray_StructEPNS_13HField_StructEPdRPNS_13istack_structERS1_RdS9_(%"struct.pov::Ray_Struct"* %11, %"struct.pov::HField_Struct"* %70, double* %71, %"struct.pov::istack_struct"** dereferenceable(8) %15, %"struct.pov::Ray_Struct"** dereferenceable(8) %16, double* dereferenceable(8) %17, double* dereferenceable(8) %18)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %59
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 33))
  store i32 1, i32* %4, align 4
  br label %76

; <label>:75:                                     ; preds = %59
  store i32 0, i32* %4, align 4
  br label %76

; <label>:76:                                     ; preds = %75, %74, %57, %45
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL13Inside_HFieldEPdPNS_13Object_StructE(double*, %"struct.pov::Object_Struct"*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca %"struct.pov::Object_Struct"*, align 8
  %6 = alloca %"struct.pov::HField_Struct"*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca [3 x double], align 16
  %18 = alloca [3 x double], align 16
  %19 = alloca [3 x double], align 16
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store double* %0, double** %4, align 8
  store %"struct.pov::Object_Struct"* %1, %"struct.pov::Object_Struct"** %5, align 8
  %26 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %5, align 8
  %27 = bitcast %"struct.pov::Object_Struct"* %26 to %"struct.pov::HField_Struct"*
  store %"struct.pov::HField_Struct"* %27, %"struct.pov::HField_Struct"** %6, align 8
  %28 = getelementptr inbounds [3 x double], [3 x double]* %19, i32 0, i32 0
  %29 = load double*, double** %4, align 8
  %30 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %31 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %30, i32 0, i32 10
  %32 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %31, align 8
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(double* %28, double* %29, %"struct.pov::Transform_Struct"* %32)
  %33 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %34 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %33, i32 0, i32 14
  %35 = getelementptr inbounds [3 x double], [3 x double]* %34, i64 0, i64 1
  %36 = load double, double* %35, align 8
  store double %36, double* %14, align 8
  %37 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 0
  %38 = load double, double* %37, align 16
  %39 = fcmp olt double %38, 0.000000e+00
  br i1 %39, label %60, label %40

; <label>:40:                                     ; preds = %2
  %41 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 0
  %42 = load double, double* %41, align 16
  %43 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %44 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %43, i32 0, i32 15
  %45 = getelementptr inbounds [3 x double], [3 x double]* %44, i64 0, i64 0
  %46 = load double, double* %45, align 8
  %47 = fcmp oge double %42, %46
  br i1 %47, label %60, label %48

; <label>:48:                                     ; preds = %40
  %49 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 2
  %50 = load double, double* %49, align 16
  %51 = fcmp olt double %50, 0.000000e+00
  br i1 %51, label %60, label %52

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 2
  %54 = load double, double* %53, align 16
  %55 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %56 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %55, i32 0, i32 15
  %57 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 0, i64 2
  %58 = load double, double* %57, align 8
  %59 = fcmp oge double %54, %58
  br i1 %59, label %60, label %67

; <label>:60:                                     ; preds = %52, %48, %40, %2
  %61 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %62 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %61, i32 0, i32 13
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  %65 = and i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %277

; <label>:67:                                     ; preds = %52
  %68 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 1
  %69 = load double, double* %68, align 8
  %70 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %71 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %70, i32 0, i32 15
  %72 = getelementptr inbounds [3 x double], [3 x double]* %71, i64 0, i64 1
  %73 = load double, double* %72, align 8
  %74 = fcmp oge double %69, %73
  br i1 %74, label %75, label %82

; <label>:75:                                     ; preds = %67
  %76 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %77 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %76, i32 0, i32 13
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  %80 = and i64 %79, 4
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %3, align 4
  br label %277

; <label>:82:                                     ; preds = %67
  %83 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 1
  %84 = load double, double* %83, align 8
  %85 = load double, double* %14, align 8
  %86 = fcmp olt double %84, %85
  br i1 %86, label %87, label %96

; <label>:87:                                     ; preds = %82
  %88 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %89 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  %92 = and i64 %91, 4
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %3, align 4
  br label %277

; <label>:96:                                     ; preds = %82
  %97 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 0
  %98 = load double, double* %97, align 16
  %99 = fptosi double %98 to i32
  store i32 %99, i32* %7, align 4
  %100 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 2
  %101 = load double, double* %100, align 16
  %102 = fptosi double %101 to i32
  store i32 %102, i32* %8, align 4
  %103 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 0
  %104 = load double, double* %103, align 16
  %105 = load i32, i32* %7, align 4
  %106 = sitofp i32 %105 to double
  %107 = fsub double %104, %106
  store double %107, double* %9, align 8
  %108 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 2
  %109 = load double, double* %108, align 16
  %110 = load i32, i32* %8, align 4
  %111 = sitofp i32 %110 to double
  %112 = fsub double %109, %111
  store double %112, double* %10, align 8
  %113 = load double, double* %9, align 8
  %114 = load double, double* %10, align 8
  %115 = fadd double %113, %114
  %116 = fcmp olt double %115, 1.000000e+00
  br i1 %116, label %117, label %181

; <label>:117:                                    ; preds = %96
  %118 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %119 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %118, i32 0, i32 16
  %120 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %119, align 8
  %121 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %120, i32 0, i32 11
  %122 = load i16**, i16*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i16*, i16** %122, i64 %124
  %126 = load i16*, i16** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i16, i16* %126, i64 %128
  %130 = load i16, i16* %129, align 2
  %131 = uitofp i16 %130 to double
  store double %131, double* %20, align 8
  %132 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %20, double* dereferenceable(8) %14)
  %133 = load double, double* %132, align 8
  store double %133, double* %11, align 8
  %134 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %135 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %134, i32 0, i32 16
  %136 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %135, align 8
  %137 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %136, i32 0, i32 11
  %138 = load i16**, i16*** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i16*, i16** %138, i64 %140
  %142 = load i16*, i16** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i16, i16* %142, i64 %145
  %147 = load i16, i16* %146, align 2
  %148 = uitofp i16 %147 to double
  store double %148, double* %21, align 8
  %149 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %21, double* dereferenceable(8) %14)
  %150 = load double, double* %149, align 8
  store double %150, double* %12, align 8
  %151 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %152 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %151, i32 0, i32 16
  %153 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %152, align 8
  %154 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %153, i32 0, i32 11
  %155 = load i16**, i16*** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i16*, i16** %155, i64 %158
  %160 = load i16*, i16** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i16, i16* %160, i64 %162
  %164 = load i16, i16* %163, align 2
  %165 = uitofp i16 %164 to double
  store double %165, double* %22, align 8
  %166 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %22, double* dereferenceable(8) %14)
  %167 = load double, double* %166, align 8
  store double %167, double* %13, align 8
  %168 = getelementptr inbounds [3 x double], [3 x double]* %17, i32 0, i32 0
  %169 = load i32, i32* %7, align 4
  %170 = sitofp i32 %169 to double
  %171 = load double, double* %11, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sitofp i32 %172 to double
  call void @_ZN3pov11Make_VectorEPdddd(double* %168, double %170, double %171, double %173)
  %174 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  %175 = load double, double* %11, align 8
  %176 = load double, double* %12, align 8
  %177 = fsub double %175, %176
  %178 = load double, double* %11, align 8
  %179 = load double, double* %13, align 8
  %180 = fsub double %178, %179
  call void @_ZN3pov11Make_VectorEPdddd(double* %174, double %177, double 1.000000e+00, double %180)
  br label %253

; <label>:181:                                    ; preds = %96
  %182 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 0
  %183 = load double, double* %182, align 16
  %184 = call double @ceil(double %183) #6
  %185 = fptosi double %184 to i32
  store i32 %185, i32* %7, align 4
  %186 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 2
  %187 = load double, double* %186, align 16
  %188 = call double @ceil(double %187) #6
  %189 = fptosi double %188 to i32
  store i32 %189, i32* %8, align 4
  %190 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %191 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %190, i32 0, i32 16
  %192 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %191, align 8
  %193 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %192, i32 0, i32 11
  %194 = load i16**, i16*** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i16*, i16** %194, i64 %196
  %198 = load i16*, i16** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i16, i16* %198, i64 %200
  %202 = load i16, i16* %201, align 2
  %203 = uitofp i16 %202 to double
  store double %203, double* %23, align 8
  %204 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %23, double* dereferenceable(8) %14)
  %205 = load double, double* %204, align 8
  store double %205, double* %11, align 8
  %206 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %207 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %206, i32 0, i32 16
  %208 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %207, align 8
  %209 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %208, i32 0, i32 11
  %210 = load i16**, i16*** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i16*, i16** %210, i64 %212
  %214 = load i16*, i16** %213, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i16, i16* %214, i64 %217
  %219 = load i16, i16* %218, align 2
  %220 = uitofp i16 %219 to double
  store double %220, double* %24, align 8
  %221 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %24, double* dereferenceable(8) %14)
  %222 = load double, double* %221, align 8
  store double %222, double* %12, align 8
  %223 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %224 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %223, i32 0, i32 16
  %225 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %224, align 8
  %226 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %225, i32 0, i32 11
  %227 = load i16**, i16*** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i16*, i16** %227, i64 %230
  %232 = load i16*, i16** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i16, i16* %232, i64 %234
  %236 = load i16, i16* %235, align 2
  %237 = uitofp i16 %236 to double
  store double %237, double* %25, align 8
  %238 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %25, double* dereferenceable(8) %14)
  %239 = load double, double* %238, align 8
  store double %239, double* %13, align 8
  %240 = getelementptr inbounds [3 x double], [3 x double]* %17, i32 0, i32 0
  %241 = load i32, i32* %7, align 4
  %242 = sitofp i32 %241 to double
  %243 = load double, double* %11, align 8
  %244 = load i32, i32* %8, align 4
  %245 = sitofp i32 %244 to double
  call void @_ZN3pov11Make_VectorEPdddd(double* %240, double %242, double %243, double %245)
  %246 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  %247 = load double, double* %12, align 8
  %248 = load double, double* %11, align 8
  %249 = fsub double %247, %248
  %250 = load double, double* %13, align 8
  %251 = load double, double* %11, align 8
  %252 = fsub double %250, %251
  call void @_ZN3pov11Make_VectorEPdddd(double* %246, double %249, double 1.000000e+00, double %252)
  br label %253

; <label>:253:                                    ; preds = %181, %117
  %254 = getelementptr inbounds [3 x double], [3 x double]* %19, i32 0, i32 0
  %255 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %15, double* %254, double* %255)
  %256 = getelementptr inbounds [3 x double], [3 x double]* %17, i32 0, i32 0
  %257 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %16, double* %256, double* %257)
  %258 = load double, double* %15, align 8
  %259 = load double, double* %16, align 8
  %260 = fcmp olt double %258, %259
  br i1 %260, label %261, label %270

; <label>:261:                                    ; preds = %253
  %262 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %263 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %262, i32 0, i32 13
  %264 = load i32, i32* %263, align 4
  %265 = zext i32 %264 to i64
  %266 = and i64 %265, 4
  %267 = icmp ne i64 %266, 0
  %268 = xor i1 %267, true
  %269 = zext i1 %268 to i32
  store i32 %269, i32* %3, align 4
  br label %277

; <label>:270:                                    ; preds = %253
  %271 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %6, align 8
  %272 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %271, i32 0, i32 13
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  %275 = and i64 %274, 4
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %3, align 4
  br label %277

; <label>:277:                                    ; preds = %270, %261, %87, %75, %60
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL13HField_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*) #0 {
  %4 = alloca double*, align 8
  %5 = alloca %"struct.pov::Object_Struct"*, align 8
  %6 = alloca %"struct.pov::istk_entry"*, align 8
  %7 = alloca %"struct.pov::HField_Struct"*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca [3 x double], align 16
  %19 = alloca [5 x [3 x double]], align 16
  store double* %0, double** %4, align 8
  store %"struct.pov::Object_Struct"* %1, %"struct.pov::Object_Struct"** %5, align 8
  store %"struct.pov::istk_entry"* %2, %"struct.pov::istk_entry"** %6, align 8
  %20 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %5, align 8
  %21 = bitcast %"struct.pov::Object_Struct"* %20 to %"struct.pov::HField_Struct"*
  store %"struct.pov::HField_Struct"* %21, %"struct.pov::HField_Struct"** %7, align 8
  %22 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  %23 = load %"struct.pov::istk_entry"*, %"struct.pov::istk_entry"** %6, align 8
  %24 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %23, i32 0, i32 1
  %25 = getelementptr inbounds [3 x double], [3 x double]* %24, i32 0, i32 0
  %26 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %27 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %26, i32 0, i32 10
  %28 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %27, align 8
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(double* %22, double* %25, %"struct.pov::Transform_Struct"* %28)
  store i32 0, i32* %10, align 4
  br label %29

; <label>:29:                                     ; preds = %82, %3
  %30 = load i32, i32* %10, align 4
  %31 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %32 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %31, i32 0, i32 16
  %33 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %32, align 8
  %34 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %85

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 0
  %39 = load double, double* %38, align 16
  %40 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %41 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %40, i32 0, i32 16
  %42 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %41, align 8
  %43 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %42, i32 0, i32 13
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [16 x %"struct.pov::HField_Normal_Struct"], [16 x %"struct.pov::HField_Normal_Struct"]* %43, i64 0, i64 %45
  %47 = getelementptr inbounds %"struct.pov::HField_Normal_Struct", %"struct.pov::HField_Normal_Struct"* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = fcmp oeq double %39, %48
  br i1 %49, label %50, label %81

; <label>:50:                                     ; preds = %37
  %51 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 2
  %52 = load double, double* %51, align 16
  %53 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %54 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %53, i32 0, i32 16
  %55 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %54, align 8
  %56 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %55, i32 0, i32 13
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [16 x %"struct.pov::HField_Normal_Struct"], [16 x %"struct.pov::HField_Normal_Struct"]* %56, i64 0, i64 %58
  %60 = getelementptr inbounds %"struct.pov::HField_Normal_Struct", %"struct.pov::HField_Normal_Struct"* %59, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = fcmp oeq double %52, %61
  br i1 %62, label %63, label %81

; <label>:63:                                     ; preds = %50
  %64 = load double*, double** %4, align 8
  %65 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %66 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %65, i32 0, i32 16
  %67 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %66, align 8
  %68 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %67, i32 0, i32 13
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x %"struct.pov::HField_Normal_Struct"], [16 x %"struct.pov::HField_Normal_Struct"]* %68, i64 0, i64 %70
  %72 = getelementptr inbounds %"struct.pov::HField_Normal_Struct", %"struct.pov::HField_Normal_Struct"* %71, i32 0, i32 2
  %73 = getelementptr inbounds [3 x double], [3 x double]* %72, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %64, double* %73)
  %74 = load double*, double** %4, align 8
  %75 = load double*, double** %4, align 8
  %76 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %77 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %76, i32 0, i32 10
  %78 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %77, align 8
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(double* %74, double* %75, %"struct.pov::Transform_Struct"* %78)
  %79 = load double*, double** %4, align 8
  %80 = load double*, double** %4, align 8
  call void @_ZN3pov10VNormalizeEPdPKd(double* %79, double* %80)
  br label %587

; <label>:81:                                     ; preds = %50, %37
  br label %82

; <label>:82:                                     ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %29

; <label>:85:                                     ; preds = %29
  %86 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 0
  %87 = load double, double* %86, align 16
  %88 = fptosi double %87 to i32
  store i32 %88, i32* %8, align 4
  %89 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 2
  %90 = load double, double* %89, align 16
  %91 = fptosi double %90 to i32
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %94 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %93, i32 0, i32 16
  %95 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %94, align 8
  %96 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %92, %97
  br i1 %98, label %99, label %105

; <label>:99:                                     ; preds = %85
  %100 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %101 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %100, i32 0, i32 16
  %102 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %101, align 8
  %103 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %8, align 4
  br label %105

; <label>:105:                                    ; preds = %99, %85
  %106 = load i32, i32* %9, align 4
  %107 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %108 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %107, i32 0, i32 16
  %109 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %108, align 8
  %110 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %106, %111
  br i1 %112, label %113, label %119

; <label>:113:                                    ; preds = %105
  %114 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %115 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %114, i32 0, i32 16
  %116 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %115, align 8
  %117 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %9, align 4
  br label %119

; <label>:119:                                    ; preds = %113, %105
  %120 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 0
  %121 = load double, double* %120, align 16
  %122 = load i32, i32* %8, align 4
  %123 = sitofp i32 %122 to double
  %124 = fsub double %121, %123
  store double %124, double* %11, align 8
  %125 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 2
  %126 = load double, double* %125, align 16
  %127 = load i32, i32* %9, align 4
  %128 = sitofp i32 %127 to double
  %129 = fsub double %126, %128
  store double %129, double* %12, align 8
  %130 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %131 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %130, i32 0, i32 13
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  %134 = and i64 %133, 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %467

; <label>:136:                                    ; preds = %119
  %137 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %138 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %137, i32 0, i32 16
  %139 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %138, align 8
  %140 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %139, i32 0, i32 12
  %141 = load [3 x i16]**, [3 x i16]*** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x i16]*, [3 x i16]** %141, i64 %143
  %145 = load [3 x i16]*, [3 x i16]** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i16], [3 x i16]* %145, i64 %147
  %149 = getelementptr inbounds [3 x i16], [3 x i16]* %148, i64 0, i64 0
  %150 = load i16, i16* %149, align 2
  %151 = sitofp i16 %150 to double
  %152 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 0
  %153 = getelementptr inbounds [3 x double], [3 x double]* %152, i64 0, i64 0
  store double %151, double* %153, align 16
  %154 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %155 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %154, i32 0, i32 16
  %156 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %155, align 8
  %157 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %156, i32 0, i32 12
  %158 = load [3 x i16]**, [3 x i16]*** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [3 x i16]*, [3 x i16]** %158, i64 %160
  %162 = load [3 x i16]*, [3 x i16]** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [3 x i16], [3 x i16]* %162, i64 %164
  %166 = getelementptr inbounds [3 x i16], [3 x i16]* %165, i64 0, i64 1
  %167 = load i16, i16* %166, align 2
  %168 = sitofp i16 %167 to double
  %169 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 0
  %170 = getelementptr inbounds [3 x double], [3 x double]* %169, i64 0, i64 1
  store double %168, double* %170, align 8
  %171 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %172 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %171, i32 0, i32 16
  %173 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %172, align 8
  %174 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %173, i32 0, i32 12
  %175 = load [3 x i16]**, [3 x i16]*** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x i16]*, [3 x i16]** %175, i64 %177
  %179 = load [3 x i16]*, [3 x i16]** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x i16], [3 x i16]* %179, i64 %181
  %183 = getelementptr inbounds [3 x i16], [3 x i16]* %182, i64 0, i64 2
  %184 = load i16, i16* %183, align 2
  %185 = sitofp i16 %184 to double
  %186 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 0
  %187 = getelementptr inbounds [3 x double], [3 x double]* %186, i64 0, i64 2
  store double %185, double* %187, align 16
  %188 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %189 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %188, i32 0, i32 16
  %190 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %189, align 8
  %191 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %190, i32 0, i32 12
  %192 = load [3 x i16]**, [3 x i16]*** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [3 x i16]*, [3 x i16]** %192, i64 %194
  %196 = load [3 x i16]*, [3 x i16]** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [3 x i16], [3 x i16]* %196, i64 %199
  %201 = getelementptr inbounds [3 x i16], [3 x i16]* %200, i64 0, i64 0
  %202 = load i16, i16* %201, align 2
  %203 = sitofp i16 %202 to double
  %204 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 1
  %205 = getelementptr inbounds [3 x double], [3 x double]* %204, i64 0, i64 0
  store double %203, double* %205, align 8
  %206 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %207 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %206, i32 0, i32 16
  %208 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %207, align 8
  %209 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %208, i32 0, i32 12
  %210 = load [3 x i16]**, [3 x i16]*** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [3 x i16]*, [3 x i16]** %210, i64 %212
  %214 = load [3 x i16]*, [3 x i16]** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [3 x i16], [3 x i16]* %214, i64 %217
  %219 = getelementptr inbounds [3 x i16], [3 x i16]* %218, i64 0, i64 1
  %220 = load i16, i16* %219, align 2
  %221 = sitofp i16 %220 to double
  %222 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 1
  %223 = getelementptr inbounds [3 x double], [3 x double]* %222, i64 0, i64 1
  store double %221, double* %223, align 8
  %224 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %225 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %224, i32 0, i32 16
  %226 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %225, align 8
  %227 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %226, i32 0, i32 12
  %228 = load [3 x i16]**, [3 x i16]*** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [3 x i16]*, [3 x i16]** %228, i64 %230
  %232 = load [3 x i16]*, [3 x i16]** %231, align 8
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [3 x i16], [3 x i16]* %232, i64 %235
  %237 = getelementptr inbounds [3 x i16], [3 x i16]* %236, i64 0, i64 2
  %238 = load i16, i16* %237, align 2
  %239 = sitofp i16 %238 to double
  %240 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 1
  %241 = getelementptr inbounds [3 x double], [3 x double]* %240, i64 0, i64 2
  store double %239, double* %241, align 8
  %242 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %243 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %242, i32 0, i32 16
  %244 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %243, align 8
  %245 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %244, i32 0, i32 12
  %246 = load [3 x i16]**, [3 x i16]*** %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [3 x i16]*, [3 x i16]** %246, i64 %249
  %251 = load [3 x i16]*, [3 x i16]** %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [3 x i16], [3 x i16]* %251, i64 %253
  %255 = getelementptr inbounds [3 x i16], [3 x i16]* %254, i64 0, i64 0
  %256 = load i16, i16* %255, align 2
  %257 = sitofp i16 %256 to double
  %258 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 2
  %259 = getelementptr inbounds [3 x double], [3 x double]* %258, i64 0, i64 0
  store double %257, double* %259, align 16
  %260 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %261 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %260, i32 0, i32 16
  %262 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %261, align 8
  %263 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %262, i32 0, i32 12
  %264 = load [3 x i16]**, [3 x i16]*** %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [3 x i16]*, [3 x i16]** %264, i64 %267
  %269 = load [3 x i16]*, [3 x i16]** %268, align 8
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [3 x i16], [3 x i16]* %269, i64 %271
  %273 = getelementptr inbounds [3 x i16], [3 x i16]* %272, i64 0, i64 1
  %274 = load i16, i16* %273, align 2
  %275 = sitofp i16 %274 to double
  %276 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 2
  %277 = getelementptr inbounds [3 x double], [3 x double]* %276, i64 0, i64 1
  store double %275, double* %277, align 8
  %278 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %279 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %278, i32 0, i32 16
  %280 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %279, align 8
  %281 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %280, i32 0, i32 12
  %282 = load [3 x i16]**, [3 x i16]*** %281, align 8
  %283 = load i32, i32* %9, align 4
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [3 x i16]*, [3 x i16]** %282, i64 %285
  %287 = load [3 x i16]*, [3 x i16]** %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [3 x i16], [3 x i16]* %287, i64 %289
  %291 = getelementptr inbounds [3 x i16], [3 x i16]* %290, i64 0, i64 2
  %292 = load i16, i16* %291, align 2
  %293 = sitofp i16 %292 to double
  %294 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 2
  %295 = getelementptr inbounds [3 x double], [3 x double]* %294, i64 0, i64 2
  store double %293, double* %295, align 16
  %296 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %297 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %296, i32 0, i32 16
  %298 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %297, align 8
  %299 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %298, i32 0, i32 12
  %300 = load [3 x i16]**, [3 x i16]*** %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = add nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [3 x i16]*, [3 x i16]** %300, i64 %303
  %305 = load [3 x i16]*, [3 x i16]** %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [3 x i16], [3 x i16]* %305, i64 %308
  %310 = getelementptr inbounds [3 x i16], [3 x i16]* %309, i64 0, i64 0
  %311 = load i16, i16* %310, align 2
  %312 = sitofp i16 %311 to double
  %313 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 3
  %314 = getelementptr inbounds [3 x double], [3 x double]* %313, i64 0, i64 0
  store double %312, double* %314, align 8
  %315 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %316 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %315, i32 0, i32 16
  %317 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %316, align 8
  %318 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %317, i32 0, i32 12
  %319 = load [3 x i16]**, [3 x i16]*** %318, align 8
  %320 = load i32, i32* %9, align 4
  %321 = add nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [3 x i16]*, [3 x i16]** %319, i64 %322
  %324 = load [3 x i16]*, [3 x i16]** %323, align 8
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [3 x i16], [3 x i16]* %324, i64 %327
  %329 = getelementptr inbounds [3 x i16], [3 x i16]* %328, i64 0, i64 1
  %330 = load i16, i16* %329, align 2
  %331 = sitofp i16 %330 to double
  %332 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 3
  %333 = getelementptr inbounds [3 x double], [3 x double]* %332, i64 0, i64 1
  store double %331, double* %333, align 8
  %334 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %335 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %334, i32 0, i32 16
  %336 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %335, align 8
  %337 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %336, i32 0, i32 12
  %338 = load [3 x i16]**, [3 x i16]*** %337, align 8
  %339 = load i32, i32* %9, align 4
  %340 = add nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [3 x i16]*, [3 x i16]** %338, i64 %341
  %343 = load [3 x i16]*, [3 x i16]** %342, align 8
  %344 = load i32, i32* %8, align 4
  %345 = add nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [3 x i16], [3 x i16]* %343, i64 %346
  %348 = getelementptr inbounds [3 x i16], [3 x i16]* %347, i64 0, i64 2
  %349 = load i16, i16* %348, align 2
  %350 = sitofp i16 %349 to double
  %351 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 3
  %352 = getelementptr inbounds [3 x double], [3 x double]* %351, i64 0, i64 2
  store double %350, double* %352, align 8
  store i32 0, i32* %10, align 4
  br label %353

; <label>:353:                                    ; preds = %372, %136
  %354 = load i32, i32* %10, align 4
  %355 = icmp slt i32 %354, 4
  br i1 %355, label %356, label %375

; <label>:356:                                    ; preds = %353
  %357 = load i32, i32* %10, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 %358
  %360 = getelementptr inbounds [3 x double], [3 x double]* %359, i32 0, i32 0
  %361 = load i32, i32* %10, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 %362
  %364 = getelementptr inbounds [3 x double], [3 x double]* %363, i32 0, i32 0
  %365 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %366 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %365, i32 0, i32 10
  %367 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %366, align 8
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(double* %360, double* %364, %"struct.pov::Transform_Struct"* %367)
  %368 = load i32, i32* %10, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 %369
  %371 = getelementptr inbounds [3 x double], [3 x double]* %370, i32 0, i32 0
  call void @_ZN3pov12VNormalizeEqEPd(double* %371)
  br label %372

; <label>:372:                                    ; preds = %356
  %373 = load i32, i32* %10, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %10, align 4
  br label %353

; <label>:375:                                    ; preds = %353
  %376 = load double, double* %11, align 8
  %377 = fsub double 1.000000e+00, %376
  store double %377, double* %16, align 8
  %378 = load double, double* %12, align 8
  %379 = fsub double 1.000000e+00, %378
  store double %379, double* %17, align 8
  %380 = load double, double* %17, align 8
  %381 = load double, double* %16, align 8
  %382 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 0
  %383 = getelementptr inbounds [3 x double], [3 x double]* %382, i64 0, i64 0
  %384 = load double, double* %383, align 16
  %385 = fmul double %381, %384
  %386 = load double, double* %11, align 8
  %387 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 1
  %388 = getelementptr inbounds [3 x double], [3 x double]* %387, i64 0, i64 0
  %389 = load double, double* %388, align 8
  %390 = fmul double %386, %389
  %391 = fadd double %385, %390
  %392 = fmul double %380, %391
  %393 = load double, double* %12, align 8
  %394 = load double, double* %16, align 8
  %395 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 2
  %396 = getelementptr inbounds [3 x double], [3 x double]* %395, i64 0, i64 0
  %397 = load double, double* %396, align 16
  %398 = fmul double %394, %397
  %399 = load double, double* %11, align 8
  %400 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 3
  %401 = getelementptr inbounds [3 x double], [3 x double]* %400, i64 0, i64 0
  %402 = load double, double* %401, align 8
  %403 = fmul double %399, %402
  %404 = fadd double %398, %403
  %405 = fmul double %393, %404
  %406 = fadd double %392, %405
  %407 = load double*, double** %4, align 8
  %408 = getelementptr inbounds double, double* %407, i64 0
  store double %406, double* %408, align 8
  %409 = load double, double* %17, align 8
  %410 = load double, double* %16, align 8
  %411 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 0
  %412 = getelementptr inbounds [3 x double], [3 x double]* %411, i64 0, i64 1
  %413 = load double, double* %412, align 8
  %414 = fmul double %410, %413
  %415 = load double, double* %11, align 8
  %416 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 1
  %417 = getelementptr inbounds [3 x double], [3 x double]* %416, i64 0, i64 1
  %418 = load double, double* %417, align 8
  %419 = fmul double %415, %418
  %420 = fadd double %414, %419
  %421 = fmul double %409, %420
  %422 = load double, double* %12, align 8
  %423 = load double, double* %16, align 8
  %424 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 2
  %425 = getelementptr inbounds [3 x double], [3 x double]* %424, i64 0, i64 1
  %426 = load double, double* %425, align 8
  %427 = fmul double %423, %426
  %428 = load double, double* %11, align 8
  %429 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 3
  %430 = getelementptr inbounds [3 x double], [3 x double]* %429, i64 0, i64 1
  %431 = load double, double* %430, align 8
  %432 = fmul double %428, %431
  %433 = fadd double %427, %432
  %434 = fmul double %422, %433
  %435 = fadd double %421, %434
  %436 = load double*, double** %4, align 8
  %437 = getelementptr inbounds double, double* %436, i64 1
  store double %435, double* %437, align 8
  %438 = load double, double* %17, align 8
  %439 = load double, double* %16, align 8
  %440 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 0
  %441 = getelementptr inbounds [3 x double], [3 x double]* %440, i64 0, i64 2
  %442 = load double, double* %441, align 16
  %443 = fmul double %439, %442
  %444 = load double, double* %11, align 8
  %445 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 1
  %446 = getelementptr inbounds [3 x double], [3 x double]* %445, i64 0, i64 2
  %447 = load double, double* %446, align 8
  %448 = fmul double %444, %447
  %449 = fadd double %443, %448
  %450 = fmul double %438, %449
  %451 = load double, double* %12, align 8
  %452 = load double, double* %16, align 8
  %453 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 2
  %454 = getelementptr inbounds [3 x double], [3 x double]* %453, i64 0, i64 2
  %455 = load double, double* %454, align 16
  %456 = fmul double %452, %455
  %457 = load double, double* %11, align 8
  %458 = getelementptr inbounds [5 x [3 x double]], [5 x [3 x double]]* %19, i64 0, i64 3
  %459 = getelementptr inbounds [3 x double], [3 x double]* %458, i64 0, i64 2
  %460 = load double, double* %459, align 8
  %461 = fmul double %457, %460
  %462 = fadd double %456, %461
  %463 = fmul double %451, %462
  %464 = fadd double %450, %463
  %465 = load double*, double** %4, align 8
  %466 = getelementptr inbounds double, double* %465, i64 2
  store double %464, double* %466, align 8
  br label %584

; <label>:467:                                    ; preds = %119
  %468 = load double, double* %11, align 8
  %469 = load double, double* %12, align 8
  %470 = fadd double %468, %469
  %471 = fcmp ole double %470, 1.000000e+00
  br i1 %471, label %472, label %524

; <label>:472:                                    ; preds = %467
  %473 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %474 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %473, i32 0, i32 16
  %475 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %474, align 8
  %476 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %475, i32 0, i32 11
  %477 = load i16**, i16*** %476, align 8
  %478 = load i32, i32* %9, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i16*, i16** %477, i64 %479
  %481 = load i16*, i16** %480, align 8
  %482 = load i32, i32* %8, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i16, i16* %481, i64 %483
  %485 = load i16, i16* %484, align 2
  %486 = uitofp i16 %485 to double
  store double %486, double* %13, align 8
  %487 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %488 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %487, i32 0, i32 16
  %489 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %488, align 8
  %490 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %489, i32 0, i32 11
  %491 = load i16**, i16*** %490, align 8
  %492 = load i32, i32* %9, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i16*, i16** %491, i64 %493
  %495 = load i16*, i16** %494, align 8
  %496 = load i32, i32* %8, align 4
  %497 = add nsw i32 %496, 1
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i16, i16* %495, i64 %498
  %500 = load i16, i16* %499, align 2
  %501 = uitofp i16 %500 to double
  store double %501, double* %14, align 8
  %502 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %503 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %502, i32 0, i32 16
  %504 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %503, align 8
  %505 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %504, i32 0, i32 11
  %506 = load i16**, i16*** %505, align 8
  %507 = load i32, i32* %9, align 4
  %508 = add nsw i32 %507, 1
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i16*, i16** %506, i64 %509
  %511 = load i16*, i16** %510, align 8
  %512 = load i32, i32* %8, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i16, i16* %511, i64 %513
  %515 = load i16, i16* %514, align 2
  %516 = uitofp i16 %515 to double
  store double %516, double* %15, align 8
  %517 = load double*, double** %4, align 8
  %518 = load double, double* %13, align 8
  %519 = load double, double* %14, align 8
  %520 = fsub double %518, %519
  %521 = load double, double* %13, align 8
  %522 = load double, double* %15, align 8
  %523 = fsub double %521, %522
  call void @_ZN3pov11Make_VectorEPdddd(double* %517, double %520, double 1.000000e+00, double %523)
  br label %578

; <label>:524:                                    ; preds = %467
  %525 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %526 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %525, i32 0, i32 16
  %527 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %526, align 8
  %528 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %527, i32 0, i32 11
  %529 = load i16**, i16*** %528, align 8
  %530 = load i32, i32* %9, align 4
  %531 = add nsw i32 %530, 1
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i16*, i16** %529, i64 %532
  %534 = load i16*, i16** %533, align 8
  %535 = load i32, i32* %8, align 4
  %536 = add nsw i32 %535, 1
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i16, i16* %534, i64 %537
  %539 = load i16, i16* %538, align 2
  %540 = uitofp i16 %539 to double
  store double %540, double* %13, align 8
  %541 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %542 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %541, i32 0, i32 16
  %543 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %542, align 8
  %544 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %543, i32 0, i32 11
  %545 = load i16**, i16*** %544, align 8
  %546 = load i32, i32* %9, align 4
  %547 = add nsw i32 %546, 1
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i16*, i16** %545, i64 %548
  %550 = load i16*, i16** %549, align 8
  %551 = load i32, i32* %8, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i16, i16* %550, i64 %552
  %554 = load i16, i16* %553, align 2
  %555 = uitofp i16 %554 to double
  store double %555, double* %14, align 8
  %556 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %557 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %556, i32 0, i32 16
  %558 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %557, align 8
  %559 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %558, i32 0, i32 11
  %560 = load i16**, i16*** %559, align 8
  %561 = load i32, i32* %9, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i16*, i16** %560, i64 %562
  %564 = load i16*, i16** %563, align 8
  %565 = load i32, i32* %8, align 4
  %566 = add nsw i32 %565, 1
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i16, i16* %564, i64 %567
  %569 = load i16, i16* %568, align 2
  %570 = uitofp i16 %569 to double
  store double %570, double* %15, align 8
  %571 = load double*, double** %4, align 8
  %572 = load double, double* %14, align 8
  %573 = load double, double* %13, align 8
  %574 = fsub double %572, %573
  %575 = load double, double* %15, align 8
  %576 = load double, double* %13, align 8
  %577 = fsub double %575, %576
  call void @_ZN3pov11Make_VectorEPdddd(double* %571, double %574, double 1.000000e+00, double %577)
  br label %578

; <label>:578:                                    ; preds = %524, %472
  %579 = load double*, double** %4, align 8
  %580 = load double*, double** %4, align 8
  %581 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %7, align 8
  %582 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %581, i32 0, i32 10
  %583 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %582, align 8
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(double* %579, double* %580, %"struct.pov::Transform_Struct"* %583)
  br label %584

; <label>:584:                                    ; preds = %578, %375
  %585 = load double*, double** %4, align 8
  %586 = load double*, double** %4, align 8
  call void @_ZN3pov10VNormalizeEPdPKd(double* %585, double* %586)
  br label %587

; <label>:587:                                    ; preds = %584, %63
  ret void
}

declare void @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*) #1

; Function Attrs: noinline uwtable
define internal %"struct.pov::HField_Struct"* @_ZN3povL11Copy_HFieldEPNS_13Object_StructE(%"struct.pov::Object_Struct"*) #0 {
  %2 = alloca %"struct.pov::Object_Struct"*, align 8
  %3 = alloca %"struct.pov::HField_Struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %2, align 8
  %4 = call %"struct.pov::HField_Struct"* @_ZN3pov13Create_HFieldEv()
  store %"struct.pov::HField_Struct"* %4, %"struct.pov::HField_Struct"** %3, align 8
  %5 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %6 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %5, i32 0, i32 10
  %7 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %6, align 8
  call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(%"struct.pov::Transform_Struct"* %7)
  %8 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %9 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %8, i32 0, i32 16
  %10 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %9, align 8
  %11 = bitcast %"struct.pov::HField_Data_Struct"* %10 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1364)
  %12 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %13 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %12, i32 0, i32 16
  store %"struct.pov::HField_Data_Struct"* null, %"struct.pov::HField_Data_Struct"** %13, align 8
  %14 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %15 = bitcast %"struct.pov::Object_Struct"* %14 to %"struct.pov::HField_Struct"*
  %16 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %17 = bitcast %"struct.pov::HField_Struct"* %16 to i8*
  %18 = bitcast %"struct.pov::HField_Struct"* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 176, i32 8, i1 false)
  %19 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %20 = bitcast %"struct.pov::Object_Struct"* %19 to %"struct.pov::HField_Struct"*
  %21 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %20, i32 0, i32 10
  %22 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %21, align 8
  %23 = call %"struct.pov::Transform_Struct"* @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(%"struct.pov::Transform_Struct"* %22)
  %24 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %25 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %24, i32 0, i32 10
  store %"struct.pov::Transform_Struct"* %23, %"struct.pov::Transform_Struct"** %25, align 8
  %26 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %27 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %26, i32 0, i32 14
  %28 = getelementptr inbounds [3 x double], [3 x double]* %27, i32 0, i32 0
  %29 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %30 = bitcast %"struct.pov::Object_Struct"* %29 to %"struct.pov::HField_Struct"*
  %31 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %30, i32 0, i32 14
  %32 = getelementptr inbounds [3 x double], [3 x double]* %31, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %28, double* %32)
  %33 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %34 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %33, i32 0, i32 15
  %35 = getelementptr inbounds [3 x double], [3 x double]* %34, i32 0, i32 0
  %36 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %37 = bitcast %"struct.pov::Object_Struct"* %36 to %"struct.pov::HField_Struct"*
  %38 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %37, i32 0, i32 15
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %35, double* %39)
  %40 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %41 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %40, i32 0, i32 16
  %42 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %41, align 8
  %43 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  ret %"struct.pov::HField_Struct"* %46
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL16Translate_HFieldEPNS_13Object_StructEPdPNS_16Transform_StructE(%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*) #0 {
  %4 = alloca %"struct.pov::Object_Struct"*, align 8
  %5 = alloca double*, align 8
  %6 = alloca %"struct.pov::Transform_Struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %4, align 8
  store double* %1, double** %5, align 8
  store %"struct.pov::Transform_Struct"* %2, %"struct.pov::Transform_Struct"** %6, align 8
  %7 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %4, align 8
  %8 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %6, align 8
  call void @_ZN3povL16Transform_HFieldEPNS_13Object_StructEPNS_16Transform_StructE(%"struct.pov::Object_Struct"* %7, %"struct.pov::Transform_Struct"* %8)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL13Rotate_HFieldEPNS_13Object_StructEPdPNS_16Transform_StructE(%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*) #0 {
  %4 = alloca %"struct.pov::Object_Struct"*, align 8
  %5 = alloca double*, align 8
  %6 = alloca %"struct.pov::Transform_Struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %4, align 8
  store double* %1, double** %5, align 8
  store %"struct.pov::Transform_Struct"* %2, %"struct.pov::Transform_Struct"** %6, align 8
  %7 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %4, align 8
  %8 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %6, align 8
  call void @_ZN3povL16Transform_HFieldEPNS_13Object_StructEPNS_16Transform_StructE(%"struct.pov::Object_Struct"* %7, %"struct.pov::Transform_Struct"* %8)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL12Scale_HFieldEPNS_13Object_StructEPdPNS_16Transform_StructE(%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*) #0 {
  %4 = alloca %"struct.pov::Object_Struct"*, align 8
  %5 = alloca double*, align 8
  %6 = alloca %"struct.pov::Transform_Struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %4, align 8
  store double* %1, double** %5, align 8
  store %"struct.pov::Transform_Struct"* %2, %"struct.pov::Transform_Struct"** %6, align 8
  %7 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %4, align 8
  %8 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %6, align 8
  call void @_ZN3povL16Transform_HFieldEPNS_13Object_StructEPNS_16Transform_StructE(%"struct.pov::Object_Struct"* %7, %"struct.pov::Transform_Struct"* %8)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL16Transform_HFieldEPNS_13Object_StructEPNS_16Transform_StructE(%"struct.pov::Object_Struct"*, %"struct.pov::Transform_Struct"*) #0 {
  %3 = alloca %"struct.pov::Object_Struct"*, align 8
  %4 = alloca %"struct.pov::Transform_Struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %3, align 8
  store %"struct.pov::Transform_Struct"* %1, %"struct.pov::Transform_Struct"** %4, align 8
  %5 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %3, align 8
  %6 = bitcast %"struct.pov::Object_Struct"* %5 to %"struct.pov::HField_Struct"*
  %7 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %6, i32 0, i32 10
  %8 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %7, align 8
  %9 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %4, align 8
  call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(%"struct.pov::Transform_Struct"* %8, %"struct.pov::Transform_Struct"* %9)
  %10 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %3, align 8
  %11 = bitcast %"struct.pov::Object_Struct"* %10 to %"struct.pov::HField_Struct"*
  call void @_ZN3pov19Compute_HField_BBoxEPNS_13HField_StructE(%"struct.pov::HField_Struct"* %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_ZN3povL13Invert_HFieldEPNS_13Object_StructE(%"struct.pov::Object_Struct"*) #2 {
  %2 = alloca %"struct.pov::Object_Struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %2, align 8
  %3 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %4 = getelementptr inbounds %"struct.pov::Object_Struct", %"struct.pov::Object_Struct"* %3, i32 0, i32 13
  %5 = load i32, i32* %4, align 4
  %6 = zext i32 %5 to i64
  %7 = xor i64 %6, 4
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %4, align 4
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL14Destroy_HFieldEPNS_13Object_StructE(%"struct.pov::Object_Struct"*) #0 {
  %2 = alloca %"struct.pov::Object_Struct"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"struct.pov::HField_Struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %2, align 8
  %5 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %6 = bitcast %"struct.pov::Object_Struct"* %5 to %"struct.pov::HField_Struct"*
  store %"struct.pov::HField_Struct"* %6, %"struct.pov::HField_Struct"** %4, align 8
  %7 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %8 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %7, i32 0, i32 10
  %9 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %8, align 8
  call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(%"struct.pov::Transform_Struct"* %9)
  %10 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %11 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %10, i32 0, i32 16
  %12 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %11, align 8
  %13 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %184

; <label>:17:                                     ; preds = %1
  %18 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %19 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %18, i32 0, i32 16
  %20 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %19, align 8
  %21 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %20, i32 0, i32 11
  %22 = load i16**, i16*** %21, align 8
  %23 = icmp ne i16** %22, null
  br i1 %23, label %24, label %79

; <label>:24:                                     ; preds = %17
  store i32 0, i32* %3, align 4
  br label %25

; <label>:25:                                     ; preds = %65, %24
  %26 = load i32, i32* %3, align 4
  %27 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %28 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %27, i32 0, i32 16
  %29 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %28, align 8
  %30 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 2
  %33 = icmp slt i32 %26, %32
  br i1 %33, label %34, label %68

; <label>:34:                                     ; preds = %25
  %35 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %36 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %35, i32 0, i32 16
  %37 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %36, align 8
  %38 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %37, i32 0, i32 11
  %39 = load i16**, i16*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16*, i16** %39, i64 %41
  %43 = load i16*, i16** %42, align 8
  %44 = icmp ne i16* %43, null
  br i1 %44, label %45, label %64

; <label>:45:                                     ; preds = %34
  %46 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %47 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %46, i32 0, i32 16
  %48 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %47, align 8
  %49 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %48, i32 0, i32 11
  %50 = load i16**, i16*** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16*, i16** %50, i64 %52
  %54 = load i16*, i16** %53, align 8
  %55 = bitcast i16* %54 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1424)
  %56 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %57 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %56, i32 0, i32 16
  %58 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %57, align 8
  %59 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %58, i32 0, i32 11
  %60 = load i16**, i16*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16*, i16** %60, i64 %62
  store i16* null, i16** %63, align 8
  br label %64

; <label>:64:                                     ; preds = %45, %34
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %25

; <label>:68:                                     ; preds = %25
  %69 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %70 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %69, i32 0, i32 16
  %71 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %70, align 8
  %72 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %71, i32 0, i32 11
  %73 = load i16**, i16*** %72, align 8
  %74 = bitcast i16** %73 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1428)
  %75 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %76 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %75, i32 0, i32 16
  %77 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %76, align 8
  %78 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %77, i32 0, i32 11
  store i16** null, i16*** %78, align 8
  br label %79

; <label>:79:                                     ; preds = %68, %17
  %80 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %81 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %80, i32 0, i32 16
  %82 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %81, align 8
  %83 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %82, i32 0, i32 12
  %84 = load [3 x i16]**, [3 x i16]*** %83, align 8
  %85 = icmp ne [3 x i16]** %84, null
  br i1 %85, label %86, label %128

; <label>:86:                                     ; preds = %79
  store i32 0, i32* %3, align 4
  br label %87

; <label>:87:                                     ; preds = %114, %86
  %88 = load i32, i32* %3, align 4
  %89 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %90 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %89, i32 0, i32 16
  %91 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %90, align 8
  %92 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %88, %93
  br i1 %94, label %95, label %117

; <label>:95:                                     ; preds = %87
  %96 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %97 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %96, i32 0, i32 16
  %98 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %97, align 8
  %99 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %98, i32 0, i32 12
  %100 = load [3 x i16]**, [3 x i16]*** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i16]*, [3 x i16]** %100, i64 %102
  %104 = load [3 x i16]*, [3 x i16]** %103, align 8
  %105 = bitcast [3 x i16]* %104 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1435)
  %106 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %107 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %106, i32 0, i32 16
  %108 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %107, align 8
  %109 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %108, i32 0, i32 12
  %110 = load [3 x i16]**, [3 x i16]*** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x i16]*, [3 x i16]** %110, i64 %112
  store [3 x i16]* null, [3 x i16]** %113, align 8
  br label %114

; <label>:114:                                    ; preds = %95
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %87

; <label>:117:                                    ; preds = %87
  %118 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %119 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %118, i32 0, i32 16
  %120 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %119, align 8
  %121 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %120, i32 0, i32 12
  %122 = load [3 x i16]**, [3 x i16]*** %121, align 8
  %123 = bitcast [3 x i16]** %122 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1438)
  %124 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %125 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %124, i32 0, i32 16
  %126 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %125, align 8
  %127 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %126, i32 0, i32 12
  store [3 x i16]** null, [3 x i16]*** %127, align 8
  br label %128

; <label>:128:                                    ; preds = %117, %79
  %129 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %130 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %129, i32 0, i32 16
  %131 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %130, align 8
  %132 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %131, i32 0, i32 14
  %133 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %132, align 8
  %134 = icmp ne %"struct.pov::HField_Block_Struct"** %133, null
  br i1 %134, label %135, label %177

; <label>:135:                                    ; preds = %128
  store i32 0, i32* %3, align 4
  br label %136

; <label>:136:                                    ; preds = %163, %135
  %137 = load i32, i32* %3, align 4
  %138 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %139 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %138, i32 0, i32 16
  %140 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %139, align 8
  %141 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %137, %142
  br i1 %143, label %144, label %166

; <label>:144:                                    ; preds = %136
  %145 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %146 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %145, i32 0, i32 16
  %147 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %146, align 8
  %148 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %147, i32 0, i32 14
  %149 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %149, i64 %151
  %153 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %152, align 8
  %154 = bitcast %"struct.pov::HField_Block_Struct"* %153 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1445)
  %155 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %156 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %155, i32 0, i32 16
  %157 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %156, align 8
  %158 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %157, i32 0, i32 14
  %159 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %158, align 8
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %159, i64 %161
  store %"struct.pov::HField_Block_Struct"* null, %"struct.pov::HField_Block_Struct"** %162, align 8
  br label %163

; <label>:163:                                    ; preds = %144
  %164 = load i32, i32* %3, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %3, align 4
  br label %136

; <label>:166:                                    ; preds = %136
  %167 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %168 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %167, i32 0, i32 16
  %169 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %168, align 8
  %170 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %169, i32 0, i32 14
  %171 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %170, align 8
  %172 = bitcast %"struct.pov::HField_Block_Struct"** %171 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1448)
  %173 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %174 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %173, i32 0, i32 16
  %175 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %174, align 8
  %176 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %175, i32 0, i32 14
  store %"struct.pov::HField_Block_Struct"** null, %"struct.pov::HField_Block_Struct"*** %176, align 8
  br label %177

; <label>:177:                                    ; preds = %166, %128
  %178 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %179 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %178, i32 0, i32 16
  %180 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %179, align 8
  %181 = bitcast %"struct.pov::HField_Data_Struct"* %180 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1451)
  %182 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %183 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %182, i32 0, i32 16
  store %"struct.pov::HField_Data_Struct"* null, %"struct.pov::HField_Data_Struct"** %183, align 8
  br label %184

; <label>:184:                                    ; preds = %177, %1
  %185 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %186 = bitcast %"struct.pov::Object_Struct"* %185 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1454)
  store %"struct.pov::Object_Struct"* null, %"struct.pov::Object_Struct"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN3pov14Compute_HFieldEPNS_13HField_StructEPNS_12Image_StructE(%"struct.pov::HField_Struct"*, %"struct.pov::Image_Struct"*) #0 {
  %3 = alloca %"struct.pov::HField_Struct"*, align 8
  %4 = alloca %"struct.pov::Image_Struct"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca double, align 8
  store %"struct.pov::HField_Struct"* %0, %"struct.pov::HField_Struct"** %3, align 8
  store %"struct.pov::Image_Struct"* %1, %"struct.pov::Image_Struct"** %4, align 8
  %13 = load %"struct.pov::Image_Struct"*, %"struct.pov::Image_Struct"** %4, align 8
  %14 = getelementptr inbounds %"struct.pov::Image_Struct", %"struct.pov::Image_Struct"* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %"struct.pov::Image_Struct"*, %"struct.pov::Image_Struct"** %4, align 8
  %17 = getelementptr inbounds %"struct.pov::Image_Struct", %"struct.pov::Image_Struct"* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 894, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  %23 = bitcast i8* %22 to i16**
  %24 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %25 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %24, i32 0, i32 16
  %26 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %25, align 8
  %27 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %26, i32 0, i32 11
  store i16** %23, i16*** %27, align 8
  store i32 0, i32* %6, align 4
  br label %28

; <label>:28:                                     ; preds = %46, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %49

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 2
  %36 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 898, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  %37 = bitcast i8* %36 to i16*
  %38 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %39 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %38, i32 0, i32 16
  %40 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %39, align 8
  %41 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %40, i32 0, i32 11
  %42 = load i16**, i16*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16*, i16** %42, i64 %44
  store i16* %37, i16** %45, align 8
  br label %46

; <label>:46:                                     ; preds = %32
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %28

; <label>:49:                                     ; preds = %28
  store i16 -1, i16* %9, align 2
  store i16 0, i16* %10, align 2
  store i32 0, i32* %6, align 4
  br label %50

; <label>:50:                                     ; preds = %88, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %91

; <label>:54:                                     ; preds = %50
  call void @_ZN3pov12Do_CooperateEi(i32 0)
  store i32 0, i32* %5, align 4
  br label %55

; <label>:55:                                     ; preds = %84, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %87

; <label>:59:                                     ; preds = %55
  %60 = load %"struct.pov::Image_Struct"*, %"struct.pov::Image_Struct"** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sub nsw i32 %64, 1
  %66 = call zeroext i16 @_ZN3pov15image_height_atEPNS_12Image_StructEii(%"struct.pov::Image_Struct"* %60, i32 %61, i32 %65)
  store i16 %66, i16* %11, align 2
  %67 = load i16, i16* %11, align 2
  %68 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %69 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %68, i32 0, i32 16
  %70 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %69, align 8
  %71 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %70, i32 0, i32 11
  %72 = load i16**, i16*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16*, i16** %72, i64 %74
  %76 = load i16*, i16** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %76, i64 %78
  store i16 %67, i16* %79, align 2
  %80 = call dereferenceable(2) i16* @_ZSt3minItERKT_S2_S2_(i16* dereferenceable(2) %9, i16* dereferenceable(2) %11)
  %81 = load i16, i16* %80, align 2
  store i16 %81, i16* %9, align 2
  %82 = call dereferenceable(2) i16* @_ZSt3maxItERKT_S2_S2_(i16* dereferenceable(2) %10, i16* dereferenceable(2) %11)
  %83 = load i16, i16* %82, align 2
  store i16 %83, i16* %10, align 2
  br label %84

; <label>:84:                                     ; preds = %59
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %55

; <label>:87:                                     ; preds = %55
  br label %88

; <label>:88:                                     ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %50

; <label>:91:                                     ; preds = %50
  %92 = load i16, i16* %9, align 2
  %93 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %94 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %93, i32 0, i32 16
  %95 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %94, align 8
  %96 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %95, i32 0, i32 5
  store i16 %92, i16* %96, align 4
  %97 = load i16, i16* %10, align 2
  %98 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %99 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %98, i32 0, i32 16
  %100 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %99, align 8
  %101 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %100, i32 0, i32 6
  store i16 %97, i16* %101, align 2
  %102 = load i16, i16* %9, align 2
  %103 = uitofp i16 %102 to double
  store double %103, double* %12, align 8
  %104 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %105 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %104, i32 0, i32 14
  %106 = getelementptr inbounds [3 x double], [3 x double]* %105, i64 0, i64 1
  %107 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %12, double* dereferenceable(8) %106)
  %108 = load double, double* %107, align 8
  %109 = fsub double %108, 1.000000e-03
  %110 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %111 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %110, i32 0, i32 14
  %112 = getelementptr inbounds [3 x double], [3 x double]* %111, i64 0, i64 1
  store double %109, double* %112, align 8
  %113 = load i16, i16* %10, align 2
  %114 = uitofp i16 %113 to double
  %115 = fadd double %114, 1.000000e-03
  %116 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %117 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %116, i32 0, i32 15
  %118 = getelementptr inbounds [3 x double], [3 x double]* %117, i64 0, i64 1
  store double %115, double* %118, align 8
  %119 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %120 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %119, i32 0, i32 13
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  %123 = and i64 %122, 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

; <label>:125:                                    ; preds = %91
  %126 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %127, 1
  %129 = load i32, i32* %8, align 4
  %130 = sub nsw i32 %129, 1
  call void @_ZN3povL19smooth_height_fieldEPNS_13HField_StructEii(%"struct.pov::HField_Struct"* %126, i32 %128, i32 %130)
  br label %131

; <label>:131:                                    ; preds = %125, %91
  %132 = load i32, i32* %7, align 4
  %133 = sub nsw i32 %132, 2
  %134 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %135 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %134, i32 0, i32 16
  %136 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %135, align 8
  %137 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %136, i32 0, i32 3
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, 2
  %140 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  %141 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %140, i32 0, i32 16
  %142 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %141, align 8
  %143 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %142, i32 0, i32 4
  store i32 %139, i32* %143, align 8
  %144 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %3, align 8
  call void @_ZN3povL19build_hfield_blocksEPNS_13HField_StructE(%"struct.pov::HField_Struct"* %144)
  ret void
}

declare i8* @_ZN3pov10pov_mallocEmPKciS1_(i64, i8*, i32, i8*) #1

declare void @_ZN3pov12Do_CooperateEi(i32) #1

declare zeroext i16 @_ZN3pov15image_height_atEPNS_12Image_StructEii(%"struct.pov::Image_Struct"*, i32, i32) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(2) i16* @_ZSt3minItERKT_S2_S2_(i16* dereferenceable(2), i16* dereferenceable(2)) #2 comdat {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  %6 = load i16*, i16** %5, align 8
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i32
  %9 = load i16*, i16** %4, align 8
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %2
  %14 = load i16*, i16** %5, align 8
  store i16* %14, i16** %3, align 8
  br label %17

; <label>:15:                                     ; preds = %2
  %16 = load i16*, i16** %4, align 8
  store i16* %16, i16** %3, align 8
  br label %17

; <label>:17:                                     ; preds = %15, %13
  %18 = load i16*, i16** %3, align 8
  ret i16* %18
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(2) i16* @_ZSt3maxItERKT_S2_S2_(i16* dereferenceable(2), i16* dereferenceable(2)) #2 comdat {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  %6 = load i16*, i16** %4, align 8
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i32
  %9 = load i16*, i16** %5, align 8
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %2
  %14 = load i16*, i16** %5, align 8
  store i16* %14, i16** %3, align 8
  br label %17

; <label>:15:                                     ; preds = %2
  %16 = load i16*, i16** %4, align 8
  store i16* %16, i16** %3, align 8
  br label %17

; <label>:17:                                     ; preds = %15, %13
  %18 = load i16*, i16** %3, align 8
  ret i16* %18
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8), double* dereferenceable(8)) #2 comdat {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  %6 = load double*, double** %4, align 8
  %7 = load double, double* %6, align 8
  %8 = load double*, double** %5, align 8
  %9 = load double, double* %8, align 8
  %10 = fcmp olt double %7, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = load double*, double** %5, align 8
  store double* %12, double** %3, align 8
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = load double*, double** %4, align 8
  store double* %14, double** %3, align 8
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = load double*, double** %3, align 8
  ret double* %16
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL19smooth_height_fieldEPNS_13HField_StructEii(%"struct.pov::HField_Struct"*, i32, i32) #0 {
  %4 = alloca %"struct.pov::HField_Struct"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x double], align 16
  %11 = alloca i16**, align 8
  store %"struct.pov::HField_Struct"* %0, %"struct.pov::HField_Struct"** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %13 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %12, i32 0, i32 16
  %14 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %13, align 8
  %15 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %14, i32 0, i32 11
  %16 = load i16**, i16*** %15, align 8
  store i16** %16, i16*** %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %20 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %19, i32 0, i32 16
  %21 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %20, align 8
  %22 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %21, i32 0, i32 2
  store i32 %18, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 812, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  %28 = bitcast i8* %27 to [3 x i16]**
  %29 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %30 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %29, i32 0, i32 16
  %31 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %30, align 8
  %32 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %31, i32 0, i32 12
  store [3 x i16]** %28, [3 x i16]*** %32, align 8
  store i32 0, i32* %7, align 4
  br label %33

; <label>:33:                                     ; preds = %52, %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %55

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 6
  %42 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 816, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0))
  %43 = bitcast i8* %42 to [3 x i16]*
  %44 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %45 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %44, i32 0, i32 16
  %46 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %45, align 8
  %47 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %46, i32 0, i32 12
  %48 = load [3 x i16]**, [3 x i16]*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i16]*, [3 x i16]** %48, i64 %50
  store [3 x i16]* %43, [3 x i16]** %51, align 8
  br label %52

; <label>:52:                                     ; preds = %37
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %33

; <label>:55:                                     ; preds = %33
  store i32 0, i32* %7, align 4
  br label %56

; <label>:56:                                     ; preds = %192, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %195

; <label>:60:                                     ; preds = %56
  call void @_ZN3pov12Do_CooperateEi(i32 0)
  store i32 0, i32* %8, align 4
  br label %61

; <label>:61:                                     ; preds = %188, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %191

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  call void @_ZN3pov11Make_VectorEPdddd(double* %66, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store i32 0, i32* %9, align 4
  %67 = load i16**, i16*** %11, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  %78 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %79 = call i32 @_ZN3povL17add_single_normalEPPtiiiiiiiiPd(i16** %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %73, i32 %74, i32 %75, i32 %77, double* %78)
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i16**, i16*** %11, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* %7, align 4
  %93 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %94 = call i32 @_ZN3povL17add_single_normalEPPtiiiiiiiiPd(i16** %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %89, i32 %91, i32 %92, double* %93)
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load i16**, i16*** %11, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %106, 1
  %108 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %109 = call i32 @_ZN3povL17add_single_normalEPPtiiiiiiiiPd(i16** %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %103, i32 %104, i32 %105, i32 %107, double* %108)
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load i16**, i16*** %11, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %7, align 4
  %123 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %124 = call i32 @_ZN3povL17add_single_normalEPPtiiiiiiiiPd(i16** %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %119, i32 %121, i32 %122, double* %123)
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

; <label>:129:                                    ; preds = %65
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 (i8*, ...) @_ZN3pov5ErrorEPKcz(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i32 %130, i32 %131)
  br label %133

; <label>:133:                                    ; preds = %129, %65
  %134 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %135 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %136 = call double @_ZN3povL9normalizeEPdS0_(double* %134, double* %135)
  %137 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 0
  %138 = load double, double* %137, align 16
  %139 = fmul double 3.276700e+04, %138
  %140 = fptosi double %139 to i16
  %141 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %142 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %141, i32 0, i32 16
  %143 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %142, align 8
  %144 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %143, i32 0, i32 12
  %145 = load [3 x i16]**, [3 x i16]*** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i16]*, [3 x i16]** %145, i64 %147
  %149 = load [3 x i16]*, [3 x i16]** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [3 x i16], [3 x i16]* %149, i64 %151
  %153 = getelementptr inbounds [3 x i16], [3 x i16]* %152, i64 0, i64 0
  store i16 %140, i16* %153, align 2
  %154 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 1
  %155 = load double, double* %154, align 8
  %156 = fmul double 3.276700e+04, %155
  %157 = fptosi double %156 to i16
  %158 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %159 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %158, i32 0, i32 16
  %160 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %159, align 8
  %161 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %160, i32 0, i32 12
  %162 = load [3 x i16]**, [3 x i16]*** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [3 x i16]*, [3 x i16]** %162, i64 %164
  %166 = load [3 x i16]*, [3 x i16]** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [3 x i16], [3 x i16]* %166, i64 %168
  %170 = getelementptr inbounds [3 x i16], [3 x i16]* %169, i64 0, i64 1
  store i16 %157, i16* %170, align 2
  %171 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 2
  %172 = load double, double* %171, align 16
  %173 = fmul double 3.276700e+04, %172
  %174 = fptosi double %173 to i16
  %175 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %4, align 8
  %176 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %175, i32 0, i32 16
  %177 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %176, align 8
  %178 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %177, i32 0, i32 12
  %179 = load [3 x i16]**, [3 x i16]*** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x i16]*, [3 x i16]** %179, i64 %181
  %183 = load [3 x i16]*, [3 x i16]** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [3 x i16], [3 x i16]* %183, i64 %185
  %187 = getelementptr inbounds [3 x i16], [3 x i16]* %186, i64 0, i64 2
  store i16 %174, i16* %187, align 2
  br label %188

; <label>:188:                                    ; preds = %133
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %61

; <label>:191:                                    ; preds = %61
  br label %192

; <label>:192:                                    ; preds = %191
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %56

; <label>:195:                                    ; preds = %56
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL19build_hfield_blocksEPNS_13HField_StructE(%"struct.pov::HField_Struct"*) #0 {
  %2 = alloca %"struct.pov::HField_Struct"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %"struct.pov::HField_Struct"* %0, %"struct.pov::HField_Struct"** %2, align 8
  store i32 1, i32* %19, align 4
  %25 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %26 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %25, i32 0, i32 16
  %27 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %26, align 8
  %28 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = sitofp i32 %29 to double
  %31 = call double @sqrt(double %30) #7
  %32 = fptosi double %31 to i32
  store i32 %32, i32* %20, align 4
  %33 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %19, i32* dereferenceable(4) %20)
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %21, align 4
  %35 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %36 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %35, i32 0, i32 16
  %37 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %36, align 8
  %38 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = sitofp i32 %39 to double
  %41 = call double @sqrt(double %40) #7
  %42 = fptosi double %41 to i32
  store i32 %42, i32* %22, align 4
  %43 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %21, i32* dereferenceable(4) %22)
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %46 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %45, i32 0, i32 16
  %47 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %46, align 8
  %48 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 2
  %51 = sitofp i32 %50 to double
  %52 = load i32, i32* %5, align 4
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %51, %53
  %55 = call double @ceil(double %54) #6
  %56 = fptosi double %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %58 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %57, i32 0, i32 16
  %59 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %58, align 8
  %60 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 2
  %63 = sitofp i32 %62 to double
  %64 = load i32, i32* %6, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %63, %65
  %67 = call double @ceil(double %66) #6
  %68 = fptosi double %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %73 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %72, i32 0, i32 16
  %74 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %73, align 8
  %75 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 2
  %78 = icmp slt i32 %71, %77
  br i1 %78, label %79, label %82

; <label>:79:                                     ; preds = %1
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %82

; <label>:82:                                     ; preds = %79, %1
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %87 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %86, i32 0, i32 16
  %88 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %87, align 8
  %89 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 2
  %92 = icmp slt i32 %85, %91
  br i1 %92, label %93, label %96

; <label>:93:                                     ; preds = %82
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %96

; <label>:96:                                     ; preds = %93, %82
  %97 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %98 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  %101 = and i64 %100, 1024
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

; <label>:103:                                    ; preds = %96
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %225

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %225

; <label>:109:                                    ; preds = %106, %96
  %110 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1002, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  %111 = bitcast i8* %110 to %"struct.pov::HField_Block_Struct"**
  %112 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %113 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %112, i32 0, i32 16
  %114 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %113, align 8
  %115 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %114, i32 0, i32 14
  store %"struct.pov::HField_Block_Struct"** %111, %"struct.pov::HField_Block_Struct"*** %115, align 8
  %116 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1004, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  %117 = bitcast i8* %116 to %"struct.pov::HField_Block_Struct"*
  %118 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %119 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %118, i32 0, i32 16
  %120 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %119, align 8
  %121 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %120, i32 0, i32 14
  %122 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %121, align 8
  %123 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %122, i64 0
  store %"struct.pov::HField_Block_Struct"* %117, %"struct.pov::HField_Block_Struct"** %123, align 8
  %124 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %125 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %124, i32 0, i32 16
  %126 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %125, align 8
  %127 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %126, i32 0, i32 14
  %128 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %127, align 8
  %129 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %128, i64 0
  %130 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %129, align 8
  %131 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %130, i64 0
  %132 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %134 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %133, i32 0, i32 16
  %135 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %134, align 8
  %136 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %139 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %138, i32 0, i32 16
  %140 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %139, align 8
  %141 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %140, i32 0, i32 14
  %142 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %141, align 8
  %143 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %142, i64 0
  %144 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %143, align 8
  %145 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %144, i64 0
  %146 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %145, i32 0, i32 1
  store i32 %137, i32* %146, align 4
  %147 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %148 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %147, i32 0, i32 16
  %149 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %148, align 8
  %150 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %149, i32 0, i32 14
  %151 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %150, align 8
  %152 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %151, i64 0
  %153 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %152, align 8
  %154 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %153, i64 0
  %155 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %154, i32 0, i32 2
  store i32 0, i32* %155, align 8
  %156 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %157 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %156, i32 0, i32 16
  %158 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %157, align 8
  %159 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %162 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %161, i32 0, i32 16
  %163 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %162, align 8
  %164 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %163, i32 0, i32 14
  %165 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %164, align 8
  %166 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %165, i64 0
  %167 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %166, align 8
  %168 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %167, i64 0
  %169 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %168, i32 0, i32 3
  store i32 %160, i32* %169, align 4
  %170 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %171 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %170, i32 0, i32 14
  %172 = getelementptr inbounds [3 x double], [3 x double]* %171, i64 0, i64 1
  %173 = load double, double* %172, align 8
  %174 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %175 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %174, i32 0, i32 16
  %176 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %175, align 8
  %177 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %176, i32 0, i32 14
  %178 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %177, align 8
  %179 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %178, i64 0
  %180 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %179, align 8
  %181 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %180, i64 0
  %182 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %181, i32 0, i32 4
  store double %173, double* %182, align 8
  %183 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %184 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %183, i32 0, i32 15
  %185 = getelementptr inbounds [3 x double], [3 x double]* %184, i64 0, i64 1
  %186 = load double, double* %185, align 8
  %187 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %188 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %187, i32 0, i32 16
  %189 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %188, align 8
  %190 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %189, i32 0, i32 14
  %191 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %190, align 8
  %192 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %191, i64 0
  %193 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %192, align 8
  %194 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %193, i64 0
  %195 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %194, i32 0, i32 5
  store double %186, double* %195, align 8
  %196 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %197 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %196, i32 0, i32 16
  %198 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %197, align 8
  %199 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %198, i32 0, i32 7
  store i32 1, i32* %199, align 8
  %200 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %201 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %200, i32 0, i32 16
  %202 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %201, align 8
  %203 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %202, i32 0, i32 8
  store i32 1, i32* %203, align 4
  %204 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %205 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %204, i32 0, i32 16
  %206 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %205, align 8
  %207 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 2
  %210 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %211 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %210, i32 0, i32 16
  %212 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %211, align 8
  %213 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %212, i32 0, i32 9
  store i32 %209, i32* %213, align 8
  %214 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %215 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %214, i32 0, i32 16
  %216 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %215, align 8
  %217 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %216, i32 0, i32 6
  %218 = load i16, i16* %217, align 2
  %219 = zext i16 %218 to i32
  %220 = add nsw i32 %219, 2
  %221 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %222 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %221, i32 0, i32 16
  %223 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %222, align 8
  %224 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %223, i32 0, i32 10
  store i32 %220, i32* %224, align 4
  br label %444

; <label>:225:                                    ; preds = %106, %103
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = mul i64 %227, 8
  %229 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 %228, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1029, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  %230 = bitcast i8* %229 to %"struct.pov::HField_Block_Struct"**
  %231 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %232 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %231, i32 0, i32 16
  %233 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %232, align 8
  %234 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %233, i32 0, i32 14
  store %"struct.pov::HField_Block_Struct"** %230, %"struct.pov::HField_Block_Struct"*** %234, align 8
  %235 = load i32, i32* %5, align 4
  %236 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %237 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %236, i32 0, i32 16
  %238 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %237, align 8
  %239 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %238, i32 0, i32 7
  store i32 %235, i32* %239, align 8
  %240 = load i32, i32* %6, align 4
  %241 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %242 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %241, i32 0, i32 16
  %243 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %242, align 8
  %244 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %243, i32 0, i32 8
  store i32 %240, i32* %244, align 4
  %245 = load i32, i32* %7, align 4
  %246 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %247 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %246, i32 0, i32 16
  %248 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %247, align 8
  %249 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %248, i32 0, i32 9
  store i32 %245, i32* %249, align 8
  %250 = load i32, i32* %8, align 4
  %251 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %252 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %251, i32 0, i32 16
  %253 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %252, align 8
  %254 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %253, i32 0, i32 10
  store i32 %250, i32* %254, align 4
  %255 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %256 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %255, i32 0, i32 14
  %257 = getelementptr inbounds [3 x double], [3 x double]* %256, i64 0, i64 1
  %258 = load double, double* %257, align 8
  store double %258, double* %18, align 8
  store i32 0, i32* %4, align 4
  br label %259

; <label>:259:                                    ; preds = %441, %225
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %444

; <label>:263:                                    ; preds = %259
  call void @_ZN3pov12Do_CooperateEi(i32 1)
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = mul i64 %265, 32
  %267 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 %266, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1045, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  %268 = bitcast i8* %267 to %"struct.pov::HField_Block_Struct"*
  %269 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %270 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %269, i32 0, i32 16
  %271 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %270, align 8
  %272 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %271, i32 0, i32 14
  %273 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %272, align 8
  %274 = load i32, i32* %4, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %273, i64 %275
  store %"struct.pov::HField_Block_Struct"* %268, %"struct.pov::HField_Block_Struct"** %276, align 8
  store i32 0, i32* %3, align 4
  br label %277

; <label>:277:                                    ; preds = %437, %263
  %278 = load i32, i32* %3, align 4
  %279 = load i32, i32* %5, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %440

; <label>:281:                                    ; preds = %277
  %282 = load i32, i32* %3, align 4
  %283 = load i32, i32* %7, align 4
  %284 = mul nsw i32 %282, %283
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %4, align 4
  %286 = load i32, i32* %8, align 4
  %287 = mul nsw i32 %285, %286
  store i32 %287, i32* %13, align 4
  %288 = load i32, i32* %3, align 4
  %289 = add nsw i32 %288, 1
  %290 = load i32, i32* %7, align 4
  %291 = mul nsw i32 %289, %290
  %292 = sub nsw i32 %291, 1
  store i32 %292, i32* %23, align 4
  %293 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %294 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %293, i32 0, i32 16
  %295 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %294, align 8
  %296 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %295, i32 0, i32 3
  %297 = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %23, i32* dereferenceable(4) %296)
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %12, align 4
  %299 = load i32, i32* %4, align 4
  %300 = add nsw i32 %299, 1
  %301 = load i32, i32* %8, align 4
  %302 = mul nsw i32 %300, %301
  %303 = sub nsw i32 %302, 1
  store i32 %303, i32* %24, align 4
  %304 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %305 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %304, i32 0, i32 16
  %306 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %305, align 8
  %307 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %306, i32 0, i32 4
  %308 = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %24, i32* dereferenceable(4) %307)
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* %14, align 4
  store double 2.000000e+10, double* %16, align 8
  store double -2.000000e+10, double* %17, align 8
  %310 = load i32, i32* %11, align 4
  store i32 %310, i32* %9, align 4
  br label %311

; <label>:311:                                    ; preds = %346, %281
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* %12, align 4
  %314 = add nsw i32 %313, 1
  %315 = icmp sle i32 %312, %314
  br i1 %315, label %316, label %349

; <label>:316:                                    ; preds = %311
  %317 = load i32, i32* %13, align 4
  store i32 %317, i32* %10, align 4
  br label %318

; <label>:318:                                    ; preds = %342, %316
  %319 = load i32, i32* %10, align 4
  %320 = load i32, i32* %14, align 4
  %321 = add nsw i32 %320, 1
  %322 = icmp sle i32 %319, %321
  br i1 %322, label %323, label %345

; <label>:323:                                    ; preds = %318
  %324 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %325 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %324, i32 0, i32 16
  %326 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %325, align 8
  %327 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %326, i32 0, i32 11
  %328 = load i16**, i16*** %327, align 8
  %329 = load i32, i32* %10, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i16*, i16** %328, i64 %330
  %332 = load i16*, i16** %331, align 8
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i16, i16* %332, i64 %334
  %336 = load i16, i16* %335, align 2
  %337 = uitofp i16 %336 to double
  store double %337, double* %15, align 8
  %338 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %16, double* dereferenceable(8) %15)
  %339 = load double, double* %338, align 8
  store double %339, double* %16, align 8
  %340 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %17, double* dereferenceable(8) %15)
  %341 = load double, double* %340, align 8
  store double %341, double* %17, align 8
  br label %342

; <label>:342:                                    ; preds = %323
  %343 = load i32, i32* %10, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %10, align 4
  br label %318

; <label>:345:                                    ; preds = %318
  br label %346

; <label>:346:                                    ; preds = %345
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %9, align 4
  br label %311

; <label>:349:                                    ; preds = %311
  %350 = load i32, i32* %11, align 4
  %351 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %352 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %351, i32 0, i32 16
  %353 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %352, align 8
  %354 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %353, i32 0, i32 14
  %355 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %354, align 8
  %356 = load i32, i32* %4, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %355, i64 %357
  %359 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %358, align 8
  %360 = load i32, i32* %3, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %359, i64 %361
  %363 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %362, i32 0, i32 0
  store i32 %350, i32* %363, align 8
  %364 = load i32, i32* %12, align 4
  %365 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %366 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %365, i32 0, i32 16
  %367 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %366, align 8
  %368 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %367, i32 0, i32 14
  %369 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %368, align 8
  %370 = load i32, i32* %4, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %369, i64 %371
  %373 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %372, align 8
  %374 = load i32, i32* %3, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %373, i64 %375
  %377 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %376, i32 0, i32 1
  store i32 %364, i32* %377, align 4
  %378 = load i32, i32* %13, align 4
  %379 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %380 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %379, i32 0, i32 16
  %381 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %380, align 8
  %382 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %381, i32 0, i32 14
  %383 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %382, align 8
  %384 = load i32, i32* %4, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %383, i64 %385
  %387 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %386, align 8
  %388 = load i32, i32* %3, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %387, i64 %389
  %391 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %390, i32 0, i32 2
  store i32 %378, i32* %391, align 8
  %392 = load i32, i32* %14, align 4
  %393 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %394 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %393, i32 0, i32 16
  %395 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %394, align 8
  %396 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %395, i32 0, i32 14
  %397 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %396, align 8
  %398 = load i32, i32* %4, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %397, i64 %399
  %401 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %400, align 8
  %402 = load i32, i32* %3, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %401, i64 %403
  %405 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %404, i32 0, i32 3
  store i32 %392, i32* %405, align 4
  %406 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %16, double* dereferenceable(8) %18)
  %407 = load double, double* %406, align 8
  %408 = fsub double %407, 1.000000e-03
  %409 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %410 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %409, i32 0, i32 16
  %411 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %410, align 8
  %412 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %411, i32 0, i32 14
  %413 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %412, align 8
  %414 = load i32, i32* %4, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %413, i64 %415
  %417 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %416, align 8
  %418 = load i32, i32* %3, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %417, i64 %419
  %421 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %420, i32 0, i32 4
  store double %408, double* %421, align 8
  %422 = load double, double* %17, align 8
  %423 = fadd double %422, 1.000000e-03
  %424 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %425 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %424, i32 0, i32 16
  %426 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %425, align 8
  %427 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %426, i32 0, i32 14
  %428 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %427, align 8
  %429 = load i32, i32* %4, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %428, i64 %430
  %432 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %431, align 8
  %433 = load i32, i32* %3, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %432, i64 %434
  %436 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %435, i32 0, i32 5
  store double %423, double* %436, align 8
  br label %437

; <label>:437:                                    ; preds = %349
  %438 = load i32, i32* %3, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %3, align 4
  br label %277

; <label>:440:                                    ; preds = %277
  br label %441

; <label>:441:                                    ; preds = %440
  %442 = load i32, i32* %4, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %4, align 4
  br label %259

; <label>:444:                                    ; preds = %259, %109
  ret void
}

; Function Attrs: noinline uwtable
define %"struct.pov::HField_Struct"* @_ZN3pov13Create_HFieldEv() #0 {
  %1 = alloca %"struct.pov::HField_Struct"*, align 8
  %2 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1287, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  %3 = bitcast i8* %2 to %"struct.pov::HField_Struct"*
  store %"struct.pov::HField_Struct"* %3, %"struct.pov::HField_Struct"** %1, align 8
  %4 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %5 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %4, i32 0, i32 1
  store i32 512, i32* %5, align 8
  %6 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %7 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %6, i32 0, i32 0
  store %"struct.pov::Method_Struct"* bitcast ({ i32 (%"struct.pov::Object_Struct"*, %"struct.pov::Ray_Struct"*, %"struct.pov::istack_struct"*)*, i32 (double*, %"struct.pov::Object_Struct"*)*, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)*, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)*, i8* (%"struct.pov::Object_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*)*, void (%"struct.pov::Object_Struct"*)* }* @_ZN3pov14HField_MethodsE to %"struct.pov::Method_Struct"*), %"struct.pov::Method_Struct"** %7, align 8
  %8 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %9 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %8, i32 0, i32 2
  store %"struct.pov::Object_Struct"* null, %"struct.pov::Object_Struct"** %9, align 8
  %10 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %11 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %10, i32 0, i32 3
  store %"struct.pov::Texture_Struct"* null, %"struct.pov::Texture_Struct"** %11, align 8
  %12 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %13 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %12, i32 0, i32 4
  store %"struct.pov::Texture_Struct"* null, %"struct.pov::Texture_Struct"** %13, align 8
  %14 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %15 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %14, i32 0, i32 5
  store %"struct.pov::Interior_Struct"* null, %"struct.pov::Interior_Struct"** %15, align 8
  %16 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %17 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %16, i32 0, i32 6
  store %"struct.pov::Object_Struct"* null, %"struct.pov::Object_Struct"** %17, align 8
  %18 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %19 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %18, i32 0, i32 7
  store %"struct.pov::Object_Struct"* null, %"struct.pov::Object_Struct"** %19, align 8
  %20 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %21 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %20, i32 0, i32 8
  store %"struct.pov::Light_Source_Struct"* null, %"struct.pov::Light_Source_Struct"** %21, align 8
  %22 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %23 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %22, i32 0, i32 10
  store %"struct.pov::Transform_Struct"* null, %"struct.pov::Transform_Struct"** %23, align 8
  %24 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %25 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %24, i32 0, i32 11
  store %"struct.pov::Transform_Struct"* null, %"struct.pov::Transform_Struct"** %25, align 8
  %26 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %27 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %26, i32 0, i32 12
  store float 0.000000e+00, float* %27, align 8
  %28 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %29 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %28, i32 0, i32 13
  store i32 0, i32* %29, align 4
  %30 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %31 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %30, i32 0, i32 9
  call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(%"struct.pov::Bounding_Box_Struct"* dereferenceable(24) %31, float -1.000000e+10, float -1.000000e+10, float -1.000000e+10, float 2.000000e+10, float 2.000000e+10, float 2.000000e+10)
  %32 = call %"struct.pov::Transform_Struct"* @_ZN3pov16Create_TransformEv()
  %33 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %34 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %33, i32 0, i32 10
  store %"struct.pov::Transform_Struct"* %32, %"struct.pov::Transform_Struct"** %34, align 8
  %35 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %36 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %35, i32 0, i32 14
  %37 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  call void @_ZN3pov11Make_VectorEPdddd(double* %37, double -1.000000e+00, double -1.000000e+00, double -1.000000e+00)
  %38 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %39 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %38, i32 0, i32 15
  %40 = getelementptr inbounds [3 x double], [3 x double]* %39, i32 0, i32 0
  call void @_ZN3pov11Make_VectorEPdddd(double* %40, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %41 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 704, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1300, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  %42 = bitcast i8* %41 to %"struct.pov::HField_Data_Struct"*
  %43 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %44 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %43, i32 0, i32 16
  store %"struct.pov::HField_Data_Struct"* %42, %"struct.pov::HField_Data_Struct"** %44, align 8
  %45 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %46 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %45, i32 0, i32 16
  %47 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %46, align 8
  %48 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %50 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %49, i32 0, i32 16
  %51 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %50, align 8
  %52 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %54 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %53, i32 0, i32 16
  %55 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %54, align 8
  %56 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %58 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %57, i32 0, i32 16
  %59 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %58, align 8
  %60 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %59, i32 0, i32 11
  store i16** null, i16*** %60, align 8
  %61 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %62 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %61, i32 0, i32 16
  %63 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %62, align 8
  %64 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %63, i32 0, i32 12
  store [3 x i16]** null, [3 x i16]*** %64, align 8
  %65 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %66 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %65, i32 0, i32 16
  %67 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %66, align 8
  %68 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %67, i32 0, i32 3
  store i32 0, i32* %68, align 4
  %69 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %70 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %69, i32 0, i32 16
  %71 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %70, align 8
  %72 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %71, i32 0, i32 4
  store i32 0, i32* %72, align 8
  %73 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %74 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %73, i32 0, i32 16
  %75 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %74, align 8
  %76 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %75, i32 0, i32 7
  store i32 0, i32* %76, align 8
  %77 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %78 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %77, i32 0, i32 16
  %79 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %78, align 8
  %80 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %79, i32 0, i32 8
  store i32 0, i32* %80, align 4
  %81 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %82 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %81, i32 0, i32 16
  %83 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %82, align 8
  %84 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %83, i32 0, i32 9
  store i32 0, i32* %84, align 8
  %85 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %86 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %85, i32 0, i32 16
  %87 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %86, align 8
  %88 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %87, i32 0, i32 10
  store i32 0, i32* %88, align 4
  %89 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  %90 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  %93 = or i64 %92, 1024
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %1, align 8
  ret %"struct.pov::HField_Struct"* %95
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(%"struct.pov::Bounding_Box_Struct"* dereferenceable(24), float, float, float, float, float, float) #2 comdat {
  %8 = alloca %"struct.pov::Bounding_Box_Struct"*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %"struct.pov::Bounding_Box_Struct"* %0, %"struct.pov::Bounding_Box_Struct"** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %15 = load float, float* %9, align 4
  %16 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %8, align 8
  %17 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %16, i32 0, i32 0
  %18 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  store float %15, float* %18, align 4
  %19 = load float, float* %10, align 4
  %20 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %8, align 8
  %21 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %20, i32 0, i32 0
  %22 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 1
  store float %19, float* %22, align 4
  %23 = load float, float* %11, align 4
  %24 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %8, align 8
  %25 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %24, i32 0, i32 0
  %26 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 2
  store float %23, float* %26, align 4
  %27 = load float, float* %12, align 4
  %28 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %8, align 8
  %29 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %28, i32 0, i32 1
  %30 = getelementptr inbounds [3 x float], [3 x float]* %29, i64 0, i64 0
  store float %27, float* %30, align 4
  %31 = load float, float* %13, align 4
  %32 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %8, align 8
  %33 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %32, i32 0, i32 1
  %34 = getelementptr inbounds [3 x float], [3 x float]* %33, i64 0, i64 1
  store float %31, float* %34, align 4
  %35 = load float, float* %14, align 4
  %36 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %8, align 8
  %37 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %36, i32 0, i32 1
  %38 = getelementptr inbounds [3 x float], [3 x float]* %37, i64 0, i64 2
  store float %35, float* %38, align 4
  ret void
}

declare %"struct.pov::Transform_Struct"* @_ZN3pov16Create_TransformEv() #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov11Make_VectorEPdddd(double*, double, double, double) #2 comdat {
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double* %0, double** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %6, align 8
  %10 = load double*, double** %5, align 8
  %11 = getelementptr inbounds double, double* %10, i64 0
  store double %9, double* %11, align 8
  %12 = load double, double* %7, align 8
  %13 = load double*, double** %5, align 8
  %14 = getelementptr inbounds double, double* %13, i64 1
  store double %12, double* %14, align 8
  %15 = load double, double* %8, align 8
  %16 = load double*, double** %5, align 8
  %17 = getelementptr inbounds double, double* %16, i64 2
  store double %15, double* %17, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN3pov19Compute_HField_BBoxEPNS_13HField_StructE(%"struct.pov::HField_Struct"*) #0 {
  %2 = alloca %"struct.pov::HField_Struct"*, align 8
  %3 = alloca [3 x float]*, align 8
  store %"struct.pov::HField_Struct"* %0, %"struct.pov::HField_Struct"** %2, align 8
  %4 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %5 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %4, i32 0, i32 9
  %6 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %5, i32 0, i32 0
  store [3 x float]* %6, [3 x float]** %3, align 8
  %7 = load [3 x float]*, [3 x float]** %3, align 8
  %8 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %9 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %8, i32 0, i32 14
  %10 = getelementptr inbounds [3 x double], [3 x double]* %9, i32 0, i32 0
  call void @_ZN3pov16Assign_BBox_VectERA3_fPd([3 x float]* dereferenceable(12) %7, double* %10)
  %11 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %12 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %11, i32 0, i32 9
  %13 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %12, i32 0, i32 1
  %14 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 0
  %15 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %16 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %15, i32 0, i32 15
  %17 = getelementptr inbounds [3 x double], [3 x double]* %16, i32 0, i32 0
  %18 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %19 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %18, i32 0, i32 14
  %20 = getelementptr inbounds [3 x double], [3 x double]* %19, i32 0, i32 0
  call void @_ZN3pov4VSubEPfPKdS2_(float* %14, double* %17, double* %20)
  %21 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %22 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %21, i32 0, i32 10
  %23 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %22, align 8
  %24 = icmp ne %"struct.pov::Transform_Struct"* %23, null
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %1
  %26 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %27 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %26, i32 0, i32 9
  %28 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %2, align 8
  %29 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %28, i32 0, i32 10
  %30 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %29, align 8
  call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(%"struct.pov::Bounding_Box_Struct"* %27, %"struct.pov::Transform_Struct"* %30)
  br label %31

; <label>:31:                                     ; preds = %25, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov16Assign_BBox_VectERA3_fPd([3 x float]* dereferenceable(12), double*) #2 comdat {
  %3 = alloca [3 x float]*, align 8
  %4 = alloca double*, align 8
  store [3 x float]* %0, [3 x float]** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load double*, double** %4, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  %7 = load double, double* %6, align 8
  %8 = fptrunc double %7 to float
  %9 = load [3 x float]*, [3 x float]** %3, align 8
  %10 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 0
  store float %8, float* %10, align 4
  %11 = load double*, double** %4, align 8
  %12 = getelementptr inbounds double, double* %11, i64 1
  %13 = load double, double* %12, align 8
  %14 = fptrunc double %13 to float
  %15 = load [3 x float]*, [3 x float]** %3, align 8
  %16 = getelementptr inbounds [3 x float], [3 x float]* %15, i64 0, i64 1
  store float %14, float* %16, align 4
  %17 = load double*, double** %4, align 8
  %18 = getelementptr inbounds double, double* %17, i64 2
  %19 = load double, double* %18, align 8
  %20 = fptrunc double %19 to float
  %21 = load [3 x float]*, [3 x float]** %3, align 8
  %22 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 2
  store float %20, float* %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov4VSubEPfPKdS2_(float*, double*, double*) #2 comdat {
  %4 = alloca float*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store float* %0, float** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load double*, double** %5, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  %9 = load double, double* %8, align 8
  %10 = load double*, double** %6, align 8
  %11 = getelementptr inbounds double, double* %10, i64 0
  %12 = load double, double* %11, align 8
  %13 = fsub double %9, %12
  %14 = fptrunc double %13 to float
  %15 = load float*, float** %4, align 8
  %16 = getelementptr inbounds float, float* %15, i64 0
  store float %14, float* %16, align 4
  %17 = load double*, double** %5, align 8
  %18 = getelementptr inbounds double, double* %17, i64 1
  %19 = load double, double* %18, align 8
  %20 = load double*, double** %6, align 8
  %21 = getelementptr inbounds double, double* %20, i64 1
  %22 = load double, double* %21, align 8
  %23 = fsub double %19, %22
  %24 = fptrunc double %23 to float
  %25 = load float*, float** %4, align 8
  %26 = getelementptr inbounds float, float* %25, i64 1
  store float %24, float* %26, align 4
  %27 = load double*, double** %5, align 8
  %28 = getelementptr inbounds double, double* %27, i64 2
  %29 = load double, double* %28, align 8
  %30 = load double*, double** %6, align 8
  %31 = getelementptr inbounds double, double* %30, i64 2
  %32 = load double, double* %31, align 8
  %33 = fsub double %29, %32
  %34 = fptrunc double %33 to float
  %35 = load float*, float** %4, align 8
  %36 = getelementptr inbounds float, float* %35, i64 2
  store float %34, float* %36, align 4
  ret void
}

declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(%"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Transform_Struct"*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8)) #2 comdat {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* %3, align 8
  ret void
}

declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(double*, double*, %"struct.pov::Transform_Struct"*) #1

declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(double*, double*, %"struct.pov::Transform_Struct"*) #1

declare i32 @_ZN3pov13Intersect_BoxEPNS_10Ray_StructEPNS_16Transform_StructEPdS4_S4_S4_PiS5_(%"struct.pov::Ray_Struct"*, %"struct.pov::Transform_Struct"*, double*, double*, double*, double*, i32*, i32*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov12VEvaluateRayEPdPKddS2_(double*, double*, double, double*) #2 comdat {
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  store double %2, double* %7, align 8
  store double* %3, double** %8, align 8
  %9 = load double*, double** %6, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  %11 = load double, double* %10, align 8
  %12 = load double, double* %7, align 8
  %13 = load double*, double** %8, align 8
  %14 = getelementptr inbounds double, double* %13, i64 0
  %15 = load double, double* %14, align 8
  %16 = fmul double %12, %15
  %17 = fadd double %11, %16
  %18 = load double*, double** %5, align 8
  %19 = getelementptr inbounds double, double* %18, i64 0
  store double %17, double* %19, align 8
  %20 = load double*, double** %6, align 8
  %21 = getelementptr inbounds double, double* %20, i64 1
  %22 = load double, double* %21, align 8
  %23 = load double, double* %7, align 8
  %24 = load double*, double** %8, align 8
  %25 = getelementptr inbounds double, double* %24, i64 1
  %26 = load double, double* %25, align 8
  %27 = fmul double %23, %26
  %28 = fadd double %22, %27
  %29 = load double*, double** %5, align 8
  %30 = getelementptr inbounds double, double* %29, i64 1
  store double %28, double* %30, align 8
  %31 = load double*, double** %6, align 8
  %32 = getelementptr inbounds double, double* %31, i64 2
  %33 = load double, double* %32, align 8
  %34 = load double, double* %7, align 8
  %35 = load double*, double** %8, align 8
  %36 = getelementptr inbounds double, double* %35, i64 2
  %37 = load double, double* %36, align 8
  %38 = fmul double %34, %37
  %39 = fadd double %33, %38
  %40 = load double*, double** %5, align 8
  %41 = getelementptr inbounds double, double* %40, i64 2
  store double %39, double* %41, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL15block_traversalEPNS_10Ray_StructEPNS_13HField_StructEPdRPNS_13istack_structERS1_RdS9_(%"struct.pov::Ray_Struct"*, %"struct.pov::HField_Struct"*, double*, %"struct.pov::istack_struct"** dereferenceable(8), %"struct.pov::Ray_Struct"** dereferenceable(8), double* dereferenceable(8), double* dereferenceable(8)) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %"struct.pov::Ray_Struct"*, align 8
  %10 = alloca %"struct.pov::HField_Struct"*, align 8
  %11 = alloca double*, align 8
  %12 = alloca %"struct.pov::istack_struct"**, align 8
  %13 = alloca %"struct.pov::Ray_Struct"**, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca [3 x double], align 16
  %43 = alloca [3 x double], align 16
  %44 = alloca %"struct.pov::HField_Block_Struct"*, align 8
  store %"struct.pov::Ray_Struct"* %0, %"struct.pov::Ray_Struct"** %9, align 8
  store %"struct.pov::HField_Struct"* %1, %"struct.pov::HField_Struct"** %10, align 8
  store double* %2, double** %11, align 8
  store %"struct.pov::istack_struct"** %3, %"struct.pov::istack_struct"*** %12, align 8
  store %"struct.pov::Ray_Struct"** %4, %"struct.pov::Ray_Struct"*** %13, align 8
  store double* %5, double** %14, align 8
  store double* %6, double** %15, align 8
  store i32 0, i32* %24, align 4
  %45 = load double*, double** %11, align 8
  %46 = getelementptr inbounds double, double* %45, i64 0
  %47 = load double, double* %46, align 8
  store double %47, double* %27, align 8
  %48 = load double*, double** %11, align 8
  %49 = getelementptr inbounds double, double* %48, i64 2
  %50 = load double, double* %49, align 8
  store double %50, double* %28, align 8
  %51 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %52 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %51, i32 0, i32 1
  %53 = getelementptr inbounds [3 x double], [3 x double]* %52, i64 0, i64 0
  %54 = load double, double* %53, align 8
  store double %54, double* %29, align 8
  %55 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %56 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %55, i32 0, i32 1
  %57 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 0, i64 1
  %58 = load double, double* %57, align 8
  store double %58, double* %30, align 8
  %59 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %60 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %59, i32 0, i32 1
  %61 = getelementptr inbounds [3 x double], [3 x double]* %60, i64 0, i64 2
  %62 = load double, double* %61, align 8
  store double %62, double* %31, align 8
  %63 = load double, double* %29, align 8
  %64 = load double, double* %31, align 8
  %65 = fcmp ogt double %63, %64
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %7
  %67 = load double, double* %29, align 8
  br label %70

; <label>:68:                                     ; preds = %7
  %69 = load double, double* %31, align 8
  br label %70

; <label>:70:                                     ; preds = %68, %66
  %71 = phi double [ %67, %66 ], [ %69, %68 ]
  store double %71, double* %32, align 8
  %72 = load double, double* %29, align 8
  %73 = call double @fabs(double %72) #6
  %74 = fcmp olt double %73, 1.000000e-07
  br i1 %74, label %75, label %105

; <label>:75:                                     ; preds = %70
  %76 = load double, double* %31, align 8
  %77 = call double @fabs(double %76) #6
  %78 = fcmp olt double %77, 1.000000e-07
  br i1 %78, label %79, label %105

; <label>:79:                                     ; preds = %75
  %80 = load double, double* %27, align 8
  %81 = fptosi double %80 to i32
  store i32 %81, i32* %18, align 4
  %82 = load double, double* %28, align 8
  %83 = fptosi double %82 to i32
  store i32 %83, i32* %19, align 4
  %84 = load double*, double** %11, align 8
  %85 = getelementptr inbounds double, double* %84, i64 1
  %86 = load double, double* %85, align 8
  store double %86, double* %37, align 8
  %87 = load double, double* %30, align 8
  %88 = fcmp oge double %87, 0.000000e+00
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %79
  store double 6.553600e+04, double* %38, align 8
  br label %91

; <label>:90:                                     ; preds = %79
  store double 0.000000e+00, double* %38, align 8
  br label %91

; <label>:91:                                     ; preds = %90, %89
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %95 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %96 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %37, double* dereferenceable(8) %38)
  %97 = load double, double* %96, align 8
  %98 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %37, double* dereferenceable(8) %38)
  %99 = load double, double* %98, align 8
  %100 = load %"struct.pov::istack_struct"**, %"struct.pov::istack_struct"*** %12, align 8
  %101 = load %"struct.pov::Ray_Struct"**, %"struct.pov::Ray_Struct"*** %13, align 8
  %102 = load double*, double** %14, align 8
  %103 = load double*, double** %15, align 8
  %104 = call i32 @_ZN3povL15intersect_pixelEiiPNS_10Ray_StructEPNS_13HField_StructEddRPNS_13istack_structERS1_RdS8_(i32 %92, i32 %93, %"struct.pov::Ray_Struct"* %94, %"struct.pov::HField_Struct"* %95, double %97, double %99, %"struct.pov::istack_struct"** dereferenceable(8) %100, %"struct.pov::Ray_Struct"** dereferenceable(8) %101, double* dereferenceable(8) %102, double* dereferenceable(8) %103)
  store i32 %104, i32* %8, align 4
  br label %431

; <label>:105:                                    ; preds = %75, %70
  %106 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %107 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %106, i32 0, i32 16
  %108 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %107, align 8
  %109 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = icmp sle i32 %110, 1
  br i1 %111, label %112, label %136

; <label>:112:                                    ; preds = %105
  %113 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %114 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %113, i32 0, i32 16
  %115 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %114, align 8
  %116 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 4
  %118 = icmp sle i32 %117, 1
  br i1 %118, label %119, label %136

; <label>:119:                                    ; preds = %112
  %120 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %121 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %122 = load double*, double** %11, align 8
  %123 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %124 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %123, i32 0, i32 16
  %125 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %124, align 8
  %126 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %125, i32 0, i32 14
  %127 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %126, align 8
  %128 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %127, i64 0
  %129 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %128, align 8
  %130 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %129, i64 0
  %131 = load %"struct.pov::istack_struct"**, %"struct.pov::istack_struct"*** %12, align 8
  %132 = load %"struct.pov::Ray_Struct"**, %"struct.pov::Ray_Struct"*** %13, align 8
  %133 = load double*, double** %14, align 8
  %134 = load double*, double** %15, align 8
  %135 = call i32 @_ZN3povL13dda_traversalEPNS_10Ray_StructEPNS_13HField_StructEPdPNS_19HField_Block_StructERPNS_13istack_structERS1_RdSB_(%"struct.pov::Ray_Struct"* %120, %"struct.pov::HField_Struct"* %121, double* %122, %"struct.pov::HField_Block_Struct"* %130, %"struct.pov::istack_struct"** dereferenceable(8) %131, %"struct.pov::Ray_Struct"** dereferenceable(8) %132, double* dereferenceable(8) %133, double* dereferenceable(8) %134)
  store i32 %135, i32* %8, align 4
  br label %431

; <label>:136:                                    ; preds = %112, %105
  %137 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %138 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %137, i32 0, i32 16
  %139 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %138, align 8
  %140 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %16, align 4
  %142 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %143 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %142, i32 0, i32 16
  %144 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %143, align 8
  %145 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %17, align 4
  %147 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %148 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %147, i32 0, i32 16
  %149 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %148, align 8
  %150 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %149, i32 0, i32 5
  %151 = load i16, i16* %150, align 4
  %152 = uitofp i16 %151 to double
  %153 = fsub double %152, 1.000000e-07
  store double %153, double* %33, align 8
  %154 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %155 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %154, i32 0, i32 16
  %156 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %155, align 8
  %157 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %156, i32 0, i32 6
  %158 = load i16, i16* %157, align 2
  %159 = uitofp i16 %158 to double
  %160 = fadd double %159, 1.000000e-07
  store double %160, double* %34, align 8
  %161 = load double, double* %29, align 8
  %162 = call double @fabs(double %161) #6
  %163 = fcmp olt double %162, 1.000000e-07
  %164 = zext i1 %163 to i32
  store i32 %164, i32* %25, align 4
  %165 = load double, double* %31, align 8
  %166 = call double @fabs(double %165) #6
  %167 = fcmp olt double %166, 1.000000e-07
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %26, align 4
  %169 = load double, double* %29, align 8
  %170 = fcmp oge double %169, 0.000000e+00
  %171 = select i1 %170, double 1.000000e+00, double -1.000000e+00
  %172 = fptosi double %171 to i32
  store i32 %172, i32* %22, align 4
  %173 = load double, double* %31, align 8
  %174 = fcmp oge double %173, 0.000000e+00
  %175 = select i1 %174, double 1.000000e+00, double -1.000000e+00
  %176 = fptosi double %175 to i32
  store i32 %176, i32* %23, align 4
  %177 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %178 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %177, i32 0, i32 16
  %179 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %178, align 8
  %180 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 8
  %182 = sitofp i32 %181 to double
  %183 = load double, double* %27, align 8
  %184 = fdiv double %183, %182
  store double %184, double* %27, align 8
  %185 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %186 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %185, i32 0, i32 16
  %187 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %186, align 8
  %188 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %187, i32 0, i32 10
  %189 = load i32, i32* %188, align 4
  %190 = sitofp i32 %189 to double
  %191 = load double, double* %28, align 8
  %192 = fdiv double %191, %190
  store double %192, double* %28, align 8
  %193 = load double, double* %27, align 8
  %194 = fptosi double %193 to i32
  store i32 %194, i32* %18, align 4
  %195 = load double, double* %28, align 8
  %196 = fptosi double %195 to i32
  store i32 %196, i32* %19, align 4
  %197 = getelementptr inbounds [3 x double], [3 x double]* %42, i32 0, i32 0
  %198 = load double*, double** %11, align 8
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %197, double* %198)
  %199 = load double*, double** %11, align 8
  %200 = getelementptr inbounds double, double* %199, i64 1
  %201 = load double, double* %200, align 8
  store double %201, double* %37, align 8
  br label %202

; <label>:202:                                    ; preds = %427, %136
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 38))
  %203 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %204 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %203, i32 0, i32 16
  %205 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %204, align 8
  %206 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %205, i32 0, i32 14
  %207 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %206, align 8
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %207, i64 %209
  %211 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %210, align 8
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %211, i64 %213
  store %"struct.pov::HField_Block_Struct"* %214, %"struct.pov::HField_Block_Struct"** %44, align 8
  %215 = load i32, i32* %25, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

; <label>:217:                                    ; preds = %202
  store double 2.000000e+10, double* %39, align 8
  br label %247

; <label>:218:                                    ; preds = %202
  %219 = load i32, i32* %22, align 4
  %220 = icmp sge i32 %219, 0
  br i1 %220, label %221, label %234

; <label>:221:                                    ; preds = %218
  %222 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %44, align 8
  %223 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sitofp i32 %224 to double
  %226 = fadd double %225, 1.000000e+00
  %227 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %228 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %227, i32 0, i32 0
  %229 = getelementptr inbounds [3 x double], [3 x double]* %228, i64 0, i64 0
  %230 = load double, double* %229, align 8
  %231 = fsub double %226, %230
  %232 = load double, double* %29, align 8
  %233 = fdiv double %231, %232
  store double %233, double* %39, align 8
  br label %246

; <label>:234:                                    ; preds = %218
  %235 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %44, align 8
  %236 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sitofp i32 %237 to double
  %239 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %240 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %239, i32 0, i32 0
  %241 = getelementptr inbounds [3 x double], [3 x double]* %240, i64 0, i64 0
  %242 = load double, double* %241, align 8
  %243 = fsub double %238, %242
  %244 = load double, double* %29, align 8
  %245 = fdiv double %243, %244
  store double %245, double* %39, align 8
  br label %246

; <label>:246:                                    ; preds = %234, %221
  br label %247

; <label>:247:                                    ; preds = %246, %217
  %248 = load i32, i32* %26, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

; <label>:250:                                    ; preds = %247
  store double 2.000000e+10, double* %40, align 8
  br label %280

; <label>:251:                                    ; preds = %247
  %252 = load i32, i32* %23, align 4
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %254, label %267

; <label>:254:                                    ; preds = %251
  %255 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %44, align 8
  %256 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = sitofp i32 %257 to double
  %259 = fadd double %258, 1.000000e+00
  %260 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %261 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %260, i32 0, i32 0
  %262 = getelementptr inbounds [3 x double], [3 x double]* %261, i64 0, i64 2
  %263 = load double, double* %262, align 8
  %264 = fsub double %259, %263
  %265 = load double, double* %31, align 8
  %266 = fdiv double %264, %265
  store double %266, double* %40, align 8
  br label %279

; <label>:267:                                    ; preds = %251
  %268 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %44, align 8
  %269 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = sitofp i32 %270 to double
  %272 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %273 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %272, i32 0, i32 0
  %274 = getelementptr inbounds [3 x double], [3 x double]* %273, i64 0, i64 2
  %275 = load double, double* %274, align 8
  %276 = fsub double %271, %275
  %277 = load double, double* %31, align 8
  %278 = fdiv double %276, %277
  store double %278, double* %40, align 8
  br label %279

; <label>:279:                                    ; preds = %267, %254
  br label %280

; <label>:280:                                    ; preds = %279, %250
  %281 = load i32, i32* %26, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %296, label %283

; <label>:283:                                    ; preds = %280
  %284 = load i32, i32* %25, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %302, label %286

; <label>:286:                                    ; preds = %283
  %287 = load double, double* %39, align 8
  %288 = load double, double* %40, align 8
  %289 = load double, double* %32, align 8
  %290 = fdiv double 1.000000e-07, %289
  %291 = fsub double %288, %290
  %292 = fcmp olt double %287, %291
  br i1 %292, label %293, label %302

; <label>:293:                                    ; preds = %286
  %294 = load double, double* %39, align 8
  %295 = fcmp ogt double %294, 0.000000e+00
  br i1 %295, label %296, label %302

; <label>:296:                                    ; preds = %293, %280
  %297 = load double, double* %39, align 8
  store double %297, double* %41, align 8
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* %22, align 4
  %300 = add nsw i32 %298, %299
  store i32 %300, i32* %20, align 4
  %301 = load i32, i32* %19, align 4
  store i32 %301, i32* %21, align 4
  br label %333

; <label>:302:                                    ; preds = %293, %286, %283
  %303 = load i32, i32* %26, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %318, label %305

; <label>:305:                                    ; preds = %302
  %306 = load i32, i32* %25, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %326, label %308

; <label>:308:                                    ; preds = %305
  %309 = load double, double* %39, align 8
  %310 = load double, double* %40, align 8
  %311 = load double, double* %32, align 8
  %312 = fdiv double 1.000000e-07, %311
  %313 = fadd double %310, %312
  %314 = fcmp olt double %309, %313
  br i1 %314, label %315, label %326

; <label>:315:                                    ; preds = %308
  %316 = load double, double* %39, align 8
  %317 = fcmp ogt double %316, 0.000000e+00
  br i1 %317, label %318, label %326

; <label>:318:                                    ; preds = %315, %302
  %319 = load double, double* %39, align 8
  store double %319, double* %41, align 8
  %320 = load i32, i32* %18, align 4
  %321 = load i32, i32* %22, align 4
  %322 = add nsw i32 %320, %321
  store i32 %322, i32* %20, align 4
  %323 = load i32, i32* %19, align 4
  %324 = load i32, i32* %23, align 4
  %325 = add nsw i32 %323, %324
  store i32 %325, i32* %21, align 4
  br label %332

; <label>:326:                                    ; preds = %315, %308, %305
  %327 = load double, double* %40, align 8
  store double %327, double* %41, align 8
  %328 = load i32, i32* %18, align 4
  store i32 %328, i32* %20, align 4
  %329 = load i32, i32* %19, align 4
  %330 = load i32, i32* %23, align 4
  %331 = add nsw i32 %329, %330
  store i32 %331, i32* %21, align 4
  br label %332

; <label>:332:                                    ; preds = %326, %318
  br label %333

; <label>:333:                                    ; preds = %332, %296
  %334 = getelementptr inbounds [3 x double], [3 x double]* %43, i32 0, i32 0
  %335 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %336 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %335, i32 0, i32 0
  %337 = getelementptr inbounds [3 x double], [3 x double]* %336, i32 0, i32 0
  %338 = load double, double* %41, align 8
  %339 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %340 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %339, i32 0, i32 1
  %341 = getelementptr inbounds [3 x double], [3 x double]* %340, i32 0, i32 0
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(double* %334, double* %337, double %338, double* %341)
  %342 = getelementptr inbounds [3 x double], [3 x double]* %43, i64 0, i64 1
  %343 = load double, double* %342, align 8
  store double %343, double* %38, align 8
  %344 = load double, double* %37, align 8
  %345 = load double, double* %38, align 8
  %346 = fcmp olt double %344, %345
  br i1 %346, label %347, label %350

; <label>:347:                                    ; preds = %333
  %348 = load double, double* %37, align 8
  store double %348, double* %35, align 8
  %349 = load double, double* %38, align 8
  store double %349, double* %36, align 8
  br label %353

; <label>:350:                                    ; preds = %333
  %351 = load double, double* %38, align 8
  store double %351, double* %35, align 8
  %352 = load double, double* %37, align 8
  store double %352, double* %36, align 8
  br label %353

; <label>:353:                                    ; preds = %350, %347
  %354 = load double, double* %35, align 8
  %355 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %44, align 8
  %356 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %355, i32 0, i32 5
  %357 = load double, double* %356, align 8
  %358 = fadd double %357, 1.000000e-07
  %359 = fcmp ole double %354, %358
  br i1 %359, label %360, label %399

; <label>:360:                                    ; preds = %353
  %361 = load double, double* %36, align 8
  %362 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %44, align 8
  %363 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %362, i32 0, i32 4
  %364 = load double, double* %363, align 8
  %365 = fsub double %364, 1.000000e-07
  %366 = fcmp oge double %361, %365
  br i1 %366, label %367, label %399

; <label>:367:                                    ; preds = %360
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 39))
  %368 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %9, align 8
  %369 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %370 = getelementptr inbounds [3 x double], [3 x double]* %42, i32 0, i32 0
  %371 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %372 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %371, i32 0, i32 16
  %373 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %372, align 8
  %374 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %373, i32 0, i32 14
  %375 = load %"struct.pov::HField_Block_Struct"**, %"struct.pov::HField_Block_Struct"*** %374, align 8
  %376 = load i32, i32* %19, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %375, i64 %377
  %379 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %378, align 8
  %380 = load i32, i32* %18, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %379, i64 %381
  %383 = load %"struct.pov::istack_struct"**, %"struct.pov::istack_struct"*** %12, align 8
  %384 = load %"struct.pov::Ray_Struct"**, %"struct.pov::Ray_Struct"*** %13, align 8
  %385 = load double*, double** %14, align 8
  %386 = load double*, double** %15, align 8
  %387 = call i32 @_ZN3povL13dda_traversalEPNS_10Ray_StructEPNS_13HField_StructEPdPNS_19HField_Block_StructERPNS_13istack_structERS1_RdSB_(%"struct.pov::Ray_Struct"* %368, %"struct.pov::HField_Struct"* %369, double* %370, %"struct.pov::HField_Block_Struct"* %382, %"struct.pov::istack_struct"** dereferenceable(8) %383, %"struct.pov::Ray_Struct"** dereferenceable(8) %384, double* dereferenceable(8) %385, double* dereferenceable(8) %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %398

; <label>:389:                                    ; preds = %367
  %390 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %10, align 8
  %391 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = and i32 %392, 256
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %396

; <label>:395:                                    ; preds = %389
  store i32 1, i32* %24, align 4
  br label %397

; <label>:396:                                    ; preds = %389
  store i32 1, i32* %8, align 4
  br label %431

; <label>:397:                                    ; preds = %395
  br label %398

; <label>:398:                                    ; preds = %397, %367
  br label %399

; <label>:399:                                    ; preds = %398, %360, %353
  %400 = load i32, i32* %20, align 4
  store i32 %400, i32* %18, align 4
  %401 = load i32, i32* %21, align 4
  store i32 %401, i32* %19, align 4
  %402 = getelementptr inbounds [3 x double], [3 x double]* %42, i32 0, i32 0
  %403 = getelementptr inbounds [3 x double], [3 x double]* %43, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %402, double* %403)
  %404 = load double, double* %38, align 8
  store double %404, double* %37, align 8
  br label %405

; <label>:405:                                    ; preds = %399
  %406 = load i32, i32* %18, align 4
  %407 = icmp sge i32 %406, 0
  br i1 %407, label %408, label %427

; <label>:408:                                    ; preds = %405
  %409 = load i32, i32* %18, align 4
  %410 = load i32, i32* %16, align 4
  %411 = icmp slt i32 %409, %410
  br i1 %411, label %412, label %427

; <label>:412:                                    ; preds = %408
  %413 = load i32, i32* %19, align 4
  %414 = icmp sge i32 %413, 0
  br i1 %414, label %415, label %427

; <label>:415:                                    ; preds = %412
  %416 = load i32, i32* %19, align 4
  %417 = load i32, i32* %17, align 4
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %419, label %427

; <label>:419:                                    ; preds = %415
  %420 = load double, double* %37, align 8
  %421 = load double, double* %33, align 8
  %422 = fcmp oge double %420, %421
  br i1 %422, label %423, label %427

; <label>:423:                                    ; preds = %419
  %424 = load double, double* %37, align 8
  %425 = load double, double* %34, align 8
  %426 = fcmp ole double %424, %425
  br label %427

; <label>:427:                                    ; preds = %423, %419, %415, %412, %408, %405
  %428 = phi i1 [ false, %419 ], [ false, %415 ], [ false, %412 ], [ false, %408 ], [ false, %405 ], [ %426, %423 ]
  br i1 %428, label %202, label %429

; <label>:429:                                    ; preds = %427
  %430 = load i32, i32* %24, align 4
  store i32 %430, i32* %8, align 4
  br label %431

; <label>:431:                                    ; preds = %429, %396, %119, %91
  %432 = load i32, i32* %8, align 4
  ret i32 %432
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL15intersect_pixelEiiPNS_10Ray_StructEPNS_13HField_StructEddRPNS_13istack_structERS1_RdS8_(i32, i32, %"struct.pov::Ray_Struct"*, %"struct.pov::HField_Struct"*, double, double, %"struct.pov::istack_struct"** dereferenceable(8), %"struct.pov::Ray_Struct"** dereferenceable(8), double* dereferenceable(8), double* dereferenceable(8)) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %"struct.pov::Ray_Struct"*, align 8
  %15 = alloca %"struct.pov::HField_Struct"*, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %"struct.pov::istack_struct"**, align 8
  %19 = alloca %"struct.pov::Ray_Struct"**, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca [3 x double], align 16
  %37 = alloca [3 x double], align 16
  %38 = alloca [3 x double], align 16
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store %"struct.pov::Ray_Struct"* %2, %"struct.pov::Ray_Struct"** %14, align 8
  store %"struct.pov::HField_Struct"* %3, %"struct.pov::HField_Struct"** %15, align 8
  store double %4, double* %16, align 8
  store double %5, double* %17, align 8
  store %"struct.pov::istack_struct"** %6, %"struct.pov::istack_struct"*** %18, align 8
  store %"struct.pov::Ray_Struct"** %7, %"struct.pov::Ray_Struct"*** %19, align 8
  store double* %8, double** %20, align 8
  store double* %9, double** %21, align 8
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 40))
  %39 = load i32, i32* %13, align 4
  %40 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %41 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %40, i32 0, i32 16
  %42 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %41, align 8
  %43 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %39, %44
  br i1 %45, label %46, label %52

; <label>:46:                                     ; preds = %10
  %47 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %48 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %47, i32 0, i32 16
  %49 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %48, align 8
  %50 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %13, align 4
  br label %52

; <label>:52:                                     ; preds = %46, %10
  %53 = load i32, i32* %12, align 4
  %54 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %55 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %54, i32 0, i32 16
  %56 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %55, align 8
  %57 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %53, %58
  br i1 %59, label %60, label %66

; <label>:60:                                     ; preds = %52
  %61 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %62 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %61, i32 0, i32 16
  %63 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %62, align 8
  %64 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  br label %66

; <label>:66:                                     ; preds = %60, %52
  %67 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %68 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %67, i32 0, i32 16
  %69 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %68, align 8
  %70 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %69, i32 0, i32 11
  %71 = load i16**, i16*** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i16*, i16** %71, i64 %73
  %75 = load i16*, i16** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, i16* %75, i64 %77
  %79 = load i16, i16* %78, align 2
  %80 = uitofp i16 %79 to double
  store double %80, double* %28, align 8
  %81 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %82 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %81, i32 0, i32 16
  %83 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %82, align 8
  %84 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %83, i32 0, i32 11
  %85 = load i16**, i16*** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16*, i16** %85, i64 %87
  %89 = load i16*, i16** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i16, i16* %89, i64 %92
  %94 = load i16, i16* %93, align 2
  %95 = uitofp i16 %94 to double
  store double %95, double* %29, align 8
  %96 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %97 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %96, i32 0, i32 16
  %98 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %97, align 8
  %99 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %98, i32 0, i32 11
  %100 = load i16**, i16*** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i16*, i16** %100, i64 %103
  %105 = load i16*, i16** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i16, i16* %105, i64 %107
  %109 = load i16, i16* %108, align 2
  %110 = uitofp i16 %109 to double
  store double %110, double* %30, align 8
  %111 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %112 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %111, i32 0, i32 16
  %113 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %112, align 8
  %114 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %113, i32 0, i32 11
  %115 = load i16**, i16*** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16*, i16** %115, i64 %118
  %120 = load i16*, i16** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i16, i16* %120, i64 %123
  %125 = load i16, i16* %124, align 2
  %126 = uitofp i16 %125 to double
  store double %126, double* %31, align 8
  %127 = load double, double* %29, align 8
  %128 = load double, double* %30, align 8
  %129 = fcmp olt double %127, %128
  br i1 %129, label %130, label %133

; <label>:130:                                    ; preds = %66
  %131 = load double, double* %29, align 8
  store double %131, double* %32, align 8
  %132 = load double, double* %30, align 8
  store double %132, double* %33, align 8
  br label %136

; <label>:133:                                    ; preds = %66
  %134 = load double, double* %30, align 8
  store double %134, double* %32, align 8
  %135 = load double, double* %29, align 8
  store double %135, double* %33, align 8
  br label %136

; <label>:136:                                    ; preds = %133, %130
  %137 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %28, double* dereferenceable(8) %31)
  %138 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %137, double* dereferenceable(8) %32)
  %139 = load double, double* %138, align 8
  store double %139, double* %35, align 8
  %140 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %28, double* dereferenceable(8) %31)
  %141 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %140, double* dereferenceable(8) %33)
  %142 = load double, double* %141, align 8
  store double %142, double* %34, align 8
  %143 = load double, double* %34, align 8
  %144 = load double, double* %16, align 8
  %145 = fcmp olt double %143, %144
  br i1 %145, label %150, label %146

; <label>:146:                                    ; preds = %136
  %147 = load double, double* %35, align 8
  %148 = load double, double* %17, align 8
  %149 = fcmp ogt double %147, %148
  br i1 %149, label %150, label %151

; <label>:150:                                    ; preds = %146, %136
  store i32 0, i32* %11, align 4
  br label %533

; <label>:151:                                    ; preds = %146
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 41))
  store i32 0, i32* %22, align 4
  %152 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %28, double* dereferenceable(8) %32)
  %153 = load double, double* %152, align 8
  store double %153, double* %35, align 8
  %154 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %28, double* dereferenceable(8) %33)
  %155 = load double, double* %154, align 8
  store double %155, double* %34, align 8
  %156 = load double, double* %34, align 8
  %157 = load double, double* %16, align 8
  %158 = fcmp oge double %156, %157
  br i1 %158, label %159, label %340

; <label>:159:                                    ; preds = %151
  %160 = load double, double* %35, align 8
  %161 = load double, double* %17, align 8
  %162 = fcmp ole double %160, %161
  br i1 %162, label %163, label %340

; <label>:163:                                    ; preds = %159
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 36))
  %164 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  %165 = load i32, i32* %12, align 4
  %166 = sitofp i32 %165 to double
  %167 = load double, double* %28, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sitofp i32 %168 to double
  call void @_ZN3pov11Make_VectorEPdddd(double* %164, double %166, double %167, double %169)
  %170 = getelementptr inbounds [3 x double], [3 x double]* %37, i32 0, i32 0
  %171 = load double, double* %28, align 8
  %172 = load double, double* %29, align 8
  %173 = fsub double %171, %172
  %174 = load double, double* %28, align 8
  %175 = load double, double* %30, align 8
  %176 = fsub double %174, %175
  call void @_ZN3pov11Make_VectorEPdddd(double* %170, double %173, double 1.000000e+00, double %176)
  %177 = getelementptr inbounds [3 x double], [3 x double]* %37, i32 0, i32 0
  %178 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %179 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %178, i32 0, i32 1
  %180 = getelementptr inbounds [3 x double], [3 x double]* %179, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %23, double* %177, double* %180)
  %181 = load double, double* %23, align 8
  %182 = fcmp ogt double %181, 1.000000e-07
  br i1 %182, label %186, label %183

; <label>:183:                                    ; preds = %163
  %184 = load double, double* %23, align 8
  %185 = fcmp olt double %184, -1.000000e-07
  br i1 %185, label %186, label %339

; <label>:186:                                    ; preds = %183, %163
  %187 = getelementptr inbounds [3 x double], [3 x double]* %38, i32 0, i32 0
  %188 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  %189 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %190 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %189, i32 0, i32 0
  %191 = getelementptr inbounds [3 x double], [3 x double]* %190, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKdS2_(double* %187, double* %188, double* %191)
  %192 = getelementptr inbounds [3 x double], [3 x double]* %37, i32 0, i32 0
  %193 = getelementptr inbounds [3 x double], [3 x double]* %38, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %24, double* %192, double* %193)
  %194 = load double, double* %23, align 8
  %195 = load double, double* %24, align 8
  %196 = fdiv double %195, %194
  store double %196, double* %24, align 8
  %197 = load double, double* %24, align 8
  %198 = load double*, double** %20, align 8
  %199 = load double, double* %198, align 8
  %200 = fcmp oge double %197, %199
  br i1 %200, label %201, label %338

; <label>:201:                                    ; preds = %186
  %202 = load double, double* %24, align 8
  %203 = load double*, double** %21, align 8
  %204 = load double, double* %203, align 8
  %205 = fcmp ole double %202, %204
  br i1 %205, label %206, label %338

; <label>:206:                                    ; preds = %201
  %207 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %208 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %207, i32 0, i32 0
  %209 = getelementptr inbounds [3 x double], [3 x double]* %208, i64 0, i64 0
  %210 = load double, double* %209, align 8
  %211 = load double, double* %24, align 8
  %212 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %213 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %212, i32 0, i32 1
  %214 = getelementptr inbounds [3 x double], [3 x double]* %213, i64 0, i64 0
  %215 = load double, double* %214, align 8
  %216 = fmul double %211, %215
  %217 = fadd double %210, %216
  %218 = load i32, i32* %12, align 4
  %219 = sitofp i32 %218 to double
  %220 = fsub double %217, %219
  store double %220, double* %26, align 8
  %221 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %222 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %221, i32 0, i32 0
  %223 = getelementptr inbounds [3 x double], [3 x double]* %222, i64 0, i64 2
  %224 = load double, double* %223, align 8
  %225 = load double, double* %24, align 8
  %226 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %227 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %226, i32 0, i32 1
  %228 = getelementptr inbounds [3 x double], [3 x double]* %227, i64 0, i64 2
  %229 = load double, double* %228, align 8
  %230 = fmul double %225, %229
  %231 = fadd double %224, %230
  %232 = load i32, i32* %13, align 4
  %233 = sitofp i32 %232 to double
  %234 = fsub double %231, %233
  store double %234, double* %27, align 8
  %235 = load double, double* %26, align 8
  %236 = fcmp oge double %235, -1.000000e-04
  br i1 %236, label %237, label %337

; <label>:237:                                    ; preds = %206
  %238 = load double, double* %27, align 8
  %239 = fcmp oge double %238, -1.000000e-04
  br i1 %239, label %240, label %337

; <label>:240:                                    ; preds = %237
  %241 = load double, double* %26, align 8
  %242 = load double, double* %27, align 8
  %243 = fadd double %241, %242
  %244 = fcmp ole double %243, 1.000100e+00
  br i1 %244, label %245, label %337

; <label>:245:                                    ; preds = %240
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 37))
  %246 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  %247 = load %"struct.pov::Ray_Struct"**, %"struct.pov::Ray_Struct"*** %19, align 8
  %248 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %247, align 8
  %249 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %248, i32 0, i32 0
  %250 = getelementptr inbounds [3 x double], [3 x double]* %249, i32 0, i32 0
  %251 = load double, double* %24, align 8
  %252 = load %"struct.pov::Ray_Struct"**, %"struct.pov::Ray_Struct"*** %19, align 8
  %253 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %252, align 8
  %254 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %253, i32 0, i32 1
  %255 = getelementptr inbounds [3 x double], [3 x double]* %254, i32 0, i32 0
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(double* %246, double* %250, double %251, double* %255)
  %256 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  %257 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %258 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %257, i32 0, i32 7
  %259 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %258, align 8
  %260 = call zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(double* %256, %"struct.pov::Object_Struct"* %259)
  br i1 %260, label %261, label %336

; <label>:261:                                    ; preds = %245
  %262 = load double, double* %24, align 8
  %263 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  %264 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %265 = bitcast %"struct.pov::HField_Struct"* %264 to %"struct.pov::Object_Struct"*
  %266 = load %"struct.pov::istack_struct"**, %"struct.pov::istack_struct"*** %18, align 8
  %267 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %266, align 8
  call void @_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE(double %262, double* %263, %"struct.pov::Object_Struct"* %265, %"struct.pov::istack_struct"* %267)
  store i32 1, i32* %22, align 4
  %268 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %269 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %268, i32 0, i32 13
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  %272 = and i64 %271, 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %335, label %274

; <label>:274:                                    ; preds = %261
  %275 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %276 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %275, i32 0, i32 16
  %277 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %276, align 8
  %278 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp slt i32 %279, 16
  br i1 %280, label %281, label %334

; <label>:281:                                    ; preds = %274
  %282 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %283 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %282, i32 0, i32 16
  %284 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %283, align 8
  %285 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %284, i32 0, i32 13
  %286 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %287 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %286, i32 0, i32 16
  %288 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %287, align 8
  %289 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [16 x %"struct.pov::HField_Normal_Struct"], [16 x %"struct.pov::HField_Normal_Struct"]* %285, i64 0, i64 %291
  %293 = getelementptr inbounds %"struct.pov::HField_Normal_Struct", %"struct.pov::HField_Normal_Struct"* %292, i32 0, i32 2
  %294 = getelementptr inbounds [3 x double], [3 x double]* %293, i32 0, i32 0
  %295 = getelementptr inbounds [3 x double], [3 x double]* %37, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %294, double* %295)
  %296 = load i32, i32* %12, align 4
  %297 = sitofp i32 %296 to double
  %298 = load double, double* %26, align 8
  %299 = fadd double %297, %298
  %300 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %301 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %300, i32 0, i32 16
  %302 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %301, align 8
  %303 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %302, i32 0, i32 13
  %304 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %305 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %304, i32 0, i32 16
  %306 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %305, align 8
  %307 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [16 x %"struct.pov::HField_Normal_Struct"], [16 x %"struct.pov::HField_Normal_Struct"]* %303, i64 0, i64 %309
  %311 = getelementptr inbounds %"struct.pov::HField_Normal_Struct", %"struct.pov::HField_Normal_Struct"* %310, i32 0, i32 0
  store double %299, double* %311, align 8
  %312 = load i32, i32* %13, align 4
  %313 = sitofp i32 %312 to double
  %314 = load double, double* %27, align 8
  %315 = fadd double %313, %314
  %316 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %317 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %316, i32 0, i32 16
  %318 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %317, align 8
  %319 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %318, i32 0, i32 13
  %320 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %321 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %320, i32 0, i32 16
  %322 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %321, align 8
  %323 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [16 x %"struct.pov::HField_Normal_Struct"], [16 x %"struct.pov::HField_Normal_Struct"]* %319, i64 0, i64 %325
  %327 = getelementptr inbounds %"struct.pov::HField_Normal_Struct", %"struct.pov::HField_Normal_Struct"* %326, i32 0, i32 1
  store double %315, double* %327, align 8
  %328 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %329 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %328, i32 0, i32 16
  %330 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %329, align 8
  %331 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 4
  br label %334

; <label>:334:                                    ; preds = %281, %274
  br label %335

; <label>:335:                                    ; preds = %334, %261
  br label %336

; <label>:336:                                    ; preds = %335, %245
  br label %337

; <label>:337:                                    ; preds = %336, %240, %237, %206
  br label %338

; <label>:338:                                    ; preds = %337, %201, %186
  br label %339

; <label>:339:                                    ; preds = %338, %183
  br label %340

; <label>:340:                                    ; preds = %339, %159, %151
  %341 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %31, double* dereferenceable(8) %32)
  %342 = load double, double* %341, align 8
  store double %342, double* %35, align 8
  %343 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %31, double* dereferenceable(8) %33)
  %344 = load double, double* %343, align 8
  store double %344, double* %34, align 8
  %345 = load double, double* %34, align 8
  %346 = load double, double* %16, align 8
  %347 = fcmp oge double %345, %346
  br i1 %347, label %348, label %531

; <label>:348:                                    ; preds = %340
  %349 = load double, double* %35, align 8
  %350 = load double, double* %17, align 8
  %351 = fcmp ole double %349, %350
  br i1 %351, label %352, label %531

; <label>:352:                                    ; preds = %348
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 36))
  %353 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  %354 = load i32, i32* %12, align 4
  %355 = add nsw i32 %354, 1
  %356 = sitofp i32 %355 to double
  %357 = load double, double* %31, align 8
  %358 = load i32, i32* %13, align 4
  %359 = add nsw i32 %358, 1
  %360 = sitofp i32 %359 to double
  call void @_ZN3pov11Make_VectorEPdddd(double* %353, double %356, double %357, double %360)
  %361 = getelementptr inbounds [3 x double], [3 x double]* %37, i32 0, i32 0
  %362 = load double, double* %30, align 8
  %363 = load double, double* %31, align 8
  %364 = fsub double %362, %363
  %365 = load double, double* %29, align 8
  %366 = load double, double* %31, align 8
  %367 = fsub double %365, %366
  call void @_ZN3pov11Make_VectorEPdddd(double* %361, double %364, double 1.000000e+00, double %367)
  %368 = getelementptr inbounds [3 x double], [3 x double]* %37, i32 0, i32 0
  %369 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %370 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %369, i32 0, i32 1
  %371 = getelementptr inbounds [3 x double], [3 x double]* %370, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %23, double* %368, double* %371)
  %372 = load double, double* %23, align 8
  %373 = fcmp ogt double %372, 1.000000e-07
  br i1 %373, label %377, label %374

; <label>:374:                                    ; preds = %352
  %375 = load double, double* %23, align 8
  %376 = fcmp olt double %375, -1.000000e-07
  br i1 %376, label %377, label %530

; <label>:377:                                    ; preds = %374, %352
  %378 = getelementptr inbounds [3 x double], [3 x double]* %38, i32 0, i32 0
  %379 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  %380 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %381 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %380, i32 0, i32 0
  %382 = getelementptr inbounds [3 x double], [3 x double]* %381, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKdS2_(double* %378, double* %379, double* %382)
  %383 = getelementptr inbounds [3 x double], [3 x double]* %37, i32 0, i32 0
  %384 = getelementptr inbounds [3 x double], [3 x double]* %38, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %25, double* %383, double* %384)
  %385 = load double, double* %23, align 8
  %386 = load double, double* %25, align 8
  %387 = fdiv double %386, %385
  store double %387, double* %25, align 8
  %388 = load double, double* %25, align 8
  %389 = load double*, double** %20, align 8
  %390 = load double, double* %389, align 8
  %391 = fcmp oge double %388, %390
  br i1 %391, label %392, label %529

; <label>:392:                                    ; preds = %377
  %393 = load double, double* %25, align 8
  %394 = load double*, double** %21, align 8
  %395 = load double, double* %394, align 8
  %396 = fcmp ole double %393, %395
  br i1 %396, label %397, label %529

; <label>:397:                                    ; preds = %392
  %398 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %399 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %398, i32 0, i32 0
  %400 = getelementptr inbounds [3 x double], [3 x double]* %399, i64 0, i64 0
  %401 = load double, double* %400, align 8
  %402 = load double, double* %25, align 8
  %403 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %404 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %403, i32 0, i32 1
  %405 = getelementptr inbounds [3 x double], [3 x double]* %404, i64 0, i64 0
  %406 = load double, double* %405, align 8
  %407 = fmul double %402, %406
  %408 = fadd double %401, %407
  %409 = load i32, i32* %12, align 4
  %410 = sitofp i32 %409 to double
  %411 = fsub double %408, %410
  store double %411, double* %26, align 8
  %412 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %413 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %412, i32 0, i32 0
  %414 = getelementptr inbounds [3 x double], [3 x double]* %413, i64 0, i64 2
  %415 = load double, double* %414, align 8
  %416 = load double, double* %25, align 8
  %417 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %14, align 8
  %418 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %417, i32 0, i32 1
  %419 = getelementptr inbounds [3 x double], [3 x double]* %418, i64 0, i64 2
  %420 = load double, double* %419, align 8
  %421 = fmul double %416, %420
  %422 = fadd double %415, %421
  %423 = load i32, i32* %13, align 4
  %424 = sitofp i32 %423 to double
  %425 = fsub double %422, %424
  store double %425, double* %27, align 8
  %426 = load double, double* %26, align 8
  %427 = fcmp ole double %426, 1.000100e+00
  br i1 %427, label %428, label %528

; <label>:428:                                    ; preds = %397
  %429 = load double, double* %27, align 8
  %430 = fcmp ole double %429, 1.000100e+00
  br i1 %430, label %431, label %528

; <label>:431:                                    ; preds = %428
  %432 = load double, double* %26, align 8
  %433 = load double, double* %27, align 8
  %434 = fadd double %432, %433
  %435 = fcmp oge double %434, 9.999000e-01
  br i1 %435, label %436, label %528

; <label>:436:                                    ; preds = %431
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 37))
  %437 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  %438 = load %"struct.pov::Ray_Struct"**, %"struct.pov::Ray_Struct"*** %19, align 8
  %439 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %438, align 8
  %440 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %439, i32 0, i32 0
  %441 = getelementptr inbounds [3 x double], [3 x double]* %440, i32 0, i32 0
  %442 = load double, double* %25, align 8
  %443 = load %"struct.pov::Ray_Struct"**, %"struct.pov::Ray_Struct"*** %19, align 8
  %444 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %443, align 8
  %445 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %444, i32 0, i32 1
  %446 = getelementptr inbounds [3 x double], [3 x double]* %445, i32 0, i32 0
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(double* %437, double* %441, double %442, double* %446)
  %447 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  %448 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %449 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %448, i32 0, i32 7
  %450 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %449, align 8
  %451 = call zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(double* %447, %"struct.pov::Object_Struct"* %450)
  br i1 %451, label %452, label %527

; <label>:452:                                    ; preds = %436
  %453 = load double, double* %25, align 8
  %454 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  %455 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %456 = bitcast %"struct.pov::HField_Struct"* %455 to %"struct.pov::Object_Struct"*
  %457 = load %"struct.pov::istack_struct"**, %"struct.pov::istack_struct"*** %18, align 8
  %458 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %457, align 8
  call void @_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE(double %453, double* %454, %"struct.pov::Object_Struct"* %456, %"struct.pov::istack_struct"* %458)
  store i32 1, i32* %22, align 4
  %459 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %460 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %459, i32 0, i32 13
  %461 = load i32, i32* %460, align 4
  %462 = zext i32 %461 to i64
  %463 = and i64 %462, 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %526, label %465

; <label>:465:                                    ; preds = %452
  %466 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %467 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %466, i32 0, i32 16
  %468 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %467, align 8
  %469 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = icmp slt i32 %470, 16
  br i1 %471, label %472, label %525

; <label>:472:                                    ; preds = %465
  %473 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %474 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %473, i32 0, i32 16
  %475 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %474, align 8
  %476 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %475, i32 0, i32 13
  %477 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %478 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %477, i32 0, i32 16
  %479 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %478, align 8
  %480 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [16 x %"struct.pov::HField_Normal_Struct"], [16 x %"struct.pov::HField_Normal_Struct"]* %476, i64 0, i64 %482
  %484 = getelementptr inbounds %"struct.pov::HField_Normal_Struct", %"struct.pov::HField_Normal_Struct"* %483, i32 0, i32 2
  %485 = getelementptr inbounds [3 x double], [3 x double]* %484, i32 0, i32 0
  %486 = getelementptr inbounds [3 x double], [3 x double]* %37, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %485, double* %486)
  %487 = load i32, i32* %12, align 4
  %488 = sitofp i32 %487 to double
  %489 = load double, double* %26, align 8
  %490 = fadd double %488, %489
  %491 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %492 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %491, i32 0, i32 16
  %493 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %492, align 8
  %494 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %493, i32 0, i32 13
  %495 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %496 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %495, i32 0, i32 16
  %497 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %496, align 8
  %498 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [16 x %"struct.pov::HField_Normal_Struct"], [16 x %"struct.pov::HField_Normal_Struct"]* %494, i64 0, i64 %500
  %502 = getelementptr inbounds %"struct.pov::HField_Normal_Struct", %"struct.pov::HField_Normal_Struct"* %501, i32 0, i32 0
  store double %490, double* %502, align 8
  %503 = load i32, i32* %13, align 4
  %504 = sitofp i32 %503 to double
  %505 = load double, double* %27, align 8
  %506 = fadd double %504, %505
  %507 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %508 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %507, i32 0, i32 16
  %509 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %508, align 8
  %510 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %509, i32 0, i32 13
  %511 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %512 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %511, i32 0, i32 16
  %513 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %512, align 8
  %514 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [16 x %"struct.pov::HField_Normal_Struct"], [16 x %"struct.pov::HField_Normal_Struct"]* %510, i64 0, i64 %516
  %518 = getelementptr inbounds %"struct.pov::HField_Normal_Struct", %"struct.pov::HField_Normal_Struct"* %517, i32 0, i32 1
  store double %506, double* %518, align 8
  %519 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %15, align 8
  %520 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %519, i32 0, i32 16
  %521 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %520, align 8
  %522 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %522, align 4
  br label %525

; <label>:525:                                    ; preds = %472, %465
  br label %526

; <label>:526:                                    ; preds = %525, %452
  br label %527

; <label>:527:                                    ; preds = %526, %436
  br label %528

; <label>:528:                                    ; preds = %527, %431, %428, %397
  br label %529

; <label>:529:                                    ; preds = %528, %392, %377
  br label %530

; <label>:530:                                    ; preds = %529, %374
  br label %531

; <label>:531:                                    ; preds = %530, %348, %340
  %532 = load i32, i32* %22, align 4
  store i32 %532, i32* %11, align 4
  br label %533

; <label>:533:                                    ; preds = %531, %150
  %534 = load i32, i32* %11, align 4
  ret i32 %534
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8), double* dereferenceable(8)) #2 comdat {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  %6 = load double*, double** %5, align 8
  %7 = load double, double* %6, align 8
  %8 = load double*, double** %4, align 8
  %9 = load double, double* %8, align 8
  %10 = fcmp olt double %7, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = load double*, double** %5, align 8
  store double* %12, double** %3, align 8
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = load double*, double** %4, align 8
  store double* %14, double** %3, align 8
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = load double*, double** %3, align 8
  ret double* %16
}

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL13dda_traversalEPNS_10Ray_StructEPNS_13HField_StructEPdPNS_19HField_Block_StructERPNS_13istack_structERS1_RdSB_(%"struct.pov::Ray_Struct"*, %"struct.pov::HField_Struct"*, double*, %"struct.pov::HField_Block_Struct"*, %"struct.pov::istack_struct"** dereferenceable(8), %"struct.pov::Ray_Struct"** dereferenceable(8), double* dereferenceable(8), double* dereferenceable(8)) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %"struct.pov::Ray_Struct"*, align 8
  %11 = alloca %"struct.pov::HField_Struct"*, align 8
  %12 = alloca double*, align 8
  %13 = alloca %"struct.pov::HField_Block_Struct"*, align 8
  %14 = alloca %"struct.pov::istack_struct"**, align 8
  %15 = alloca %"struct.pov::Ray_Struct"**, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store %"struct.pov::Ray_Struct"* %0, %"struct.pov::Ray_Struct"** %10, align 8
  store %"struct.pov::HField_Struct"* %1, %"struct.pov::HField_Struct"** %11, align 8
  store double* %2, double** %12, align 8
  store %"struct.pov::HField_Block_Struct"* %3, %"struct.pov::HField_Block_Struct"** %13, align 8
  store %"struct.pov::istack_struct"** %4, %"struct.pov::istack_struct"*** %14, align 8
  store %"struct.pov::Ray_Struct"** %5, %"struct.pov::Ray_Struct"*** %15, align 8
  store double* %6, double** %16, align 8
  store double* %7, double** %17, align 8
  store i8* getelementptr inbounds ([183 x i8], [183 x i8]* @.str.2, i32 0, i32 0), i8** %18, align 8
  store i32 0, i32* %19, align 4
  %46 = load double*, double** %12, align 8
  %47 = getelementptr inbounds double, double* %46, i64 0
  %48 = load double, double* %47, align 8
  store double %48, double* %32, align 8
  %49 = load double*, double** %12, align 8
  %50 = getelementptr inbounds double, double* %49, i64 2
  %51 = load double, double* %50, align 8
  store double %51, double* %33, align 8
  %52 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %13, align 8
  %53 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %20, align 4
  %55 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %13, align 8
  %56 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %44, align 4
  %59 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %11, align 8
  %60 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %59, i32 0, i32 16
  %61 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %60, align 8
  %62 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %61, i32 0, i32 3
  %63 = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %44, i32* dereferenceable(4) %62)
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %21, align 4
  %65 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %13, align 8
  %66 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %22, align 4
  %68 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %13, align 8
  %69 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %45, align 4
  %72 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %11, align 8
  %73 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %72, i32 0, i32 16
  %74 = load %"struct.pov::HField_Data_Struct"*, %"struct.pov::HField_Data_Struct"** %73, align 8
  %75 = getelementptr inbounds %"struct.pov::HField_Data_Struct", %"struct.pov::HField_Data_Struct"* %74, i32 0, i32 4
  %76 = call dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4) %45, i32* dereferenceable(4) %75)
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %23, align 4
  %78 = load double*, double** %12, align 8
  %79 = getelementptr inbounds double, double* %78, i64 1
  %80 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %13, align 8
  %81 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %80, i32 0, i32 4
  %82 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %79, double* dereferenceable(8) %81)
  %83 = load double, double* %82, align 8
  %84 = fsub double %83, 1.000000e-07
  store double %84, double* %28, align 8
  %85 = load double*, double** %12, align 8
  %86 = getelementptr inbounds double, double* %85, i64 1
  %87 = load %"struct.pov::HField_Block_Struct"*, %"struct.pov::HField_Block_Struct"** %13, align 8
  %88 = getelementptr inbounds %"struct.pov::HField_Block_Struct", %"struct.pov::HField_Block_Struct"* %87, i32 0, i32 5
  %89 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %86, double* dereferenceable(8) %88)
  %90 = load double, double* %89, align 8
  %91 = fadd double %90, 1.000000e-07
  store double %91, double* %29, align 8
  %92 = load double, double* %32, align 8
  %93 = load i32, i32* %20, align 4
  %94 = sitofp i32 %93 to double
  %95 = fcmp olt double %92, %94
  br i1 %95, label %96, label %109

; <label>:96:                                     ; preds = %8
  %97 = load double, double* %32, align 8
  %98 = load i32, i32* %20, align 4
  %99 = sitofp i32 %98 to double
  %100 = fsub double %99, 1.000000e-03
  %101 = fcmp olt double %97, %100
  br i1 %101, label %102, label %105

; <label>:102:                                    ; preds = %96
  %103 = load i8*, i8** %18, align 8
  %104 = call i32 (i32, i8*, ...) @_ZN3pov7WarningEjPKcz(i32 0, i8* %103)
  store i32 0, i32* %9, align 4
  br label %631

; <label>:105:                                    ; preds = %96
  %106 = load i32, i32* %20, align 4
  %107 = sitofp i32 %106 to double
  store double %107, double* %32, align 8
  br label %108

; <label>:108:                                    ; preds = %105
  br label %133

; <label>:109:                                    ; preds = %8
  %110 = load double, double* %32, align 8
  %111 = load i32, i32* %21, align 4
  %112 = sitofp i32 %111 to double
  %113 = fadd double %112, 1.000000e+00
  %114 = fsub double %113, 1.000000e-07
  %115 = fcmp ogt double %110, %114
  br i1 %115, label %116, label %132

; <label>:116:                                    ; preds = %109
  %117 = load double, double* %32, align 8
  %118 = load i32, i32* %21, align 4
  %119 = sitofp i32 %118 to double
  %120 = fadd double %119, 1.000000e+00
  %121 = fadd double %120, 1.000000e-07
  %122 = fcmp ogt double %117, %121
  br i1 %122, label %123, label %126

; <label>:123:                                    ; preds = %116
  %124 = load i8*, i8** %18, align 8
  %125 = call i32 (i32, i8*, ...) @_ZN3pov7WarningEjPKcz(i32 0, i8* %124)
  store i32 0, i32* %9, align 4
  br label %631

; <label>:126:                                    ; preds = %116
  %127 = load i32, i32* %21, align 4
  %128 = sitofp i32 %127 to double
  %129 = fadd double %128, 1.000000e+00
  %130 = fsub double %129, 1.000000e-07
  store double %130, double* %32, align 8
  br label %131

; <label>:131:                                    ; preds = %126
  br label %132

; <label>:132:                                    ; preds = %131, %109
  br label %133

; <label>:133:                                    ; preds = %132, %108
  %134 = load double, double* %33, align 8
  %135 = load i32, i32* %22, align 4
  %136 = sitofp i32 %135 to double
  %137 = fcmp olt double %134, %136
  br i1 %137, label %138, label %151

; <label>:138:                                    ; preds = %133
  %139 = load double, double* %33, align 8
  %140 = load i32, i32* %22, align 4
  %141 = sitofp i32 %140 to double
  %142 = fsub double %141, 1.000000e-03
  %143 = fcmp olt double %139, %142
  br i1 %143, label %144, label %147

; <label>:144:                                    ; preds = %138
  %145 = load i8*, i8** %18, align 8
  %146 = call i32 (i32, i8*, ...) @_ZN3pov7WarningEjPKcz(i32 0, i8* %145)
  store i32 0, i32* %9, align 4
  br label %631

; <label>:147:                                    ; preds = %138
  %148 = load i32, i32* %22, align 4
  %149 = sitofp i32 %148 to double
  store double %149, double* %33, align 8
  br label %150

; <label>:150:                                    ; preds = %147
  br label %175

; <label>:151:                                    ; preds = %133
  %152 = load double, double* %33, align 8
  %153 = load i32, i32* %23, align 4
  %154 = sitofp i32 %153 to double
  %155 = fadd double %154, 1.000000e+00
  %156 = fsub double %155, 1.000000e-07
  %157 = fcmp ogt double %152, %156
  br i1 %157, label %158, label %174

; <label>:158:                                    ; preds = %151
  %159 = load double, double* %33, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sitofp i32 %160 to double
  %162 = fadd double %161, 1.000000e+00
  %163 = fadd double %162, 1.000000e-07
  %164 = fcmp ogt double %159, %163
  br i1 %164, label %165, label %168

; <label>:165:                                    ; preds = %158
  %166 = load i8*, i8** %18, align 8
  %167 = call i32 (i32, i8*, ...) @_ZN3pov7WarningEjPKcz(i32 0, i8* %166)
  store i32 0, i32* %9, align 4
  br label %631

; <label>:168:                                    ; preds = %158
  %169 = load i32, i32* %23, align 4
  %170 = sitofp i32 %169 to double
  %171 = fadd double %170, 1.000000e+00
  %172 = fsub double %171, 1.000000e-07
  store double %172, double* %33, align 8
  br label %173

; <label>:173:                                    ; preds = %168
  br label %174

; <label>:174:                                    ; preds = %173, %151
  br label %175

; <label>:175:                                    ; preds = %174, %150
  %176 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %10, align 8
  %177 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %176, i32 0, i32 1
  %178 = getelementptr inbounds [3 x double], [3 x double]* %177, i64 0, i64 0
  %179 = load double, double* %178, align 8
  store double %179, double* %34, align 8
  %180 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %10, align 8
  %181 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %180, i32 0, i32 1
  %182 = getelementptr inbounds [3 x double], [3 x double]* %181, i64 0, i64 1
  %183 = load double, double* %182, align 8
  store double %183, double* %35, align 8
  %184 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %10, align 8
  %185 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %184, i32 0, i32 1
  %186 = getelementptr inbounds [3 x double], [3 x double]* %185, i64 0, i64 2
  %187 = load double, double* %186, align 8
  store double %187, double* %36, align 8
  %188 = load double, double* %34, align 8
  %189 = call double @fabs(double %188) #6
  %190 = load double, double* %36, align 8
  %191 = call double @fabs(double %190) #6
  %192 = fcmp oge double %189, %191
  br i1 %192, label %193, label %410

; <label>:193:                                    ; preds = %175
  %194 = load double, double* %36, align 8
  %195 = load double, double* %34, align 8
  %196 = fdiv double %194, %195
  %197 = call double @fabs(double %196) #6
  store double %197, double* %37, align 8
  %198 = load double, double* %32, align 8
  %199 = fptosi double %198 to i32
  store i32 %199, i32* %24, align 4
  %200 = load double, double* %33, align 8
  %201 = fptosi double %200 to i32
  store i32 %201, i32* %25, align 4
  %202 = load double, double* %32, align 8
  %203 = load double, double* %32, align 8
  %204 = call double @floor(double %203) #6
  %205 = fsub double %202, %204
  store double %205, double* %39, align 8
  %206 = load double, double* %33, align 8
  %207 = load double, double* %33, align 8
  %208 = call double @floor(double %207) #6
  %209 = fsub double %206, %208
  store double %209, double* %40, align 8
  %210 = load double, double* %34, align 8
  %211 = fcmp oge double %210, 0.000000e+00
  %212 = select i1 %211, double 1.000000e+00, double -1.000000e+00
  %213 = fptosi double %212 to i32
  store i32 %213, i32* %26, align 4
  %214 = load double, double* %36, align 8
  %215 = fcmp oge double %214, 0.000000e+00
  %216 = select i1 %215, double 1.000000e+00, double -1.000000e+00
  %217 = fptosi double %216 to i32
  store i32 %217, i32* %27, align 4
  %218 = load double, double* %34, align 8
  %219 = fcmp oge double %218, 0.000000e+00
  br i1 %219, label %220, label %240

; <label>:220:                                    ; preds = %193
  %221 = load double, double* %36, align 8
  %222 = fcmp oge double %221, 0.000000e+00
  br i1 %222, label %223, label %231

; <label>:223:                                    ; preds = %220
  %224 = load double, double* %40, align 8
  %225 = load double, double* %37, align 8
  %226 = load double, double* %39, align 8
  %227 = fsub double 1.000000e+00, %226
  %228 = fmul double %225, %227
  %229 = fadd double %224, %228
  %230 = fsub double %229, 1.000000e+00
  store double %230, double* %38, align 8
  br label %239

; <label>:231:                                    ; preds = %220
  %232 = load double, double* %40, align 8
  %233 = load double, double* %37, align 8
  %234 = load double, double* %39, align 8
  %235 = fsub double 1.000000e+00, %234
  %236 = fmul double %233, %235
  %237 = fsub double %232, %236
  %238 = fsub double -0.000000e+00, %237
  store double %238, double* %38, align 8
  br label %239

; <label>:239:                                    ; preds = %231, %223
  br label %258

; <label>:240:                                    ; preds = %193
  %241 = load double, double* %36, align 8
  %242 = fcmp oge double %241, 0.000000e+00
  br i1 %242, label %243, label %250

; <label>:243:                                    ; preds = %240
  %244 = load double, double* %40, align 8
  %245 = load double, double* %37, align 8
  %246 = load double, double* %39, align 8
  %247 = fmul double %245, %246
  %248 = fadd double %244, %247
  %249 = fsub double %248, 1.000000e+00
  store double %249, double* %38, align 8
  br label %257

; <label>:250:                                    ; preds = %240
  %251 = load double, double* %40, align 8
  %252 = load double, double* %37, align 8
  %253 = load double, double* %39, align 8
  %254 = fmul double %252, %253
  %255 = fsub double %251, %254
  %256 = fsub double -0.000000e+00, %255
  store double %256, double* %38, align 8
  br label %257

; <label>:257:                                    ; preds = %250, %243
  br label %258

; <label>:258:                                    ; preds = %257, %239
  %259 = load double, double* %35, align 8
  %260 = load double, double* %34, align 8
  %261 = call double @fabs(double %260) #6
  %262 = fdiv double %259, %261
  store double %262, double* %43, align 8
  %263 = load double, double* %34, align 8
  %264 = fcmp oge double %263, 0.000000e+00
  br i1 %264, label %265, label %276

; <label>:265:                                    ; preds = %258
  %266 = load double*, double** %12, align 8
  %267 = getelementptr inbounds double, double* %266, i64 1
  %268 = load double, double* %267, align 8
  %269 = load double, double* %39, align 8
  %270 = load double, double* %43, align 8
  %271 = fmul double %269, %270
  %272 = fsub double %268, %271
  store double %272, double* %41, align 8
  %273 = load double, double* %41, align 8
  %274 = load double, double* %43, align 8
  %275 = fadd double %273, %274
  store double %275, double* %42, align 8
  br label %288

; <label>:276:                                    ; preds = %258
  %277 = load double*, double** %12, align 8
  %278 = getelementptr inbounds double, double* %277, i64 1
  %279 = load double, double* %278, align 8
  %280 = load double, double* %39, align 8
  %281 = fsub double 1.000000e+00, %280
  %282 = load double, double* %43, align 8
  %283 = fmul double %281, %282
  %284 = fsub double %279, %283
  store double %284, double* %41, align 8
  %285 = load double, double* %41, align 8
  %286 = load double, double* %43, align 8
  %287 = fadd double %285, %286
  store double %287, double* %42, align 8
  br label %288

; <label>:288:                                    ; preds = %276, %265
  br label %289

; <label>:289:                                    ; preds = %407, %288
  %290 = load double, double* %41, align 8
  %291 = load double, double* %42, align 8
  %292 = fcmp olt double %290, %291
  br i1 %292, label %293, label %296

; <label>:293:                                    ; preds = %289
  %294 = load double, double* %41, align 8
  store double %294, double* %30, align 8
  %295 = load double, double* %42, align 8
  store double %295, double* %31, align 8
  br label %299

; <label>:296:                                    ; preds = %289
  %297 = load double, double* %42, align 8
  store double %297, double* %30, align 8
  %298 = load double, double* %41, align 8
  store double %298, double* %31, align 8
  br label %299

; <label>:299:                                    ; preds = %296, %293
  %300 = load i32, i32* %24, align 4
  %301 = load i32, i32* %25, align 4
  %302 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %10, align 8
  %303 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %11, align 8
  %304 = load double, double* %30, align 8
  %305 = load double, double* %31, align 8
  %306 = load %"struct.pov::istack_struct"**, %"struct.pov::istack_struct"*** %14, align 8
  %307 = load %"struct.pov::Ray_Struct"**, %"struct.pov::Ray_Struct"*** %15, align 8
  %308 = load double*, double** %16, align 8
  %309 = load double*, double** %17, align 8
  %310 = call i32 @_ZN3povL15intersect_pixelEiiPNS_10Ray_StructEPNS_13HField_StructEddRPNS_13istack_structERS1_RdS8_(i32 %300, i32 %301, %"struct.pov::Ray_Struct"* %302, %"struct.pov::HField_Struct"* %303, double %304, double %305, %"struct.pov::istack_struct"** dereferenceable(8) %306, %"struct.pov::Ray_Struct"** dereferenceable(8) %307, double* dereferenceable(8) %308, double* dereferenceable(8) %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %321

; <label>:312:                                    ; preds = %299
  %313 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %11, align 8
  %314 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = and i32 %315, 256
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

; <label>:318:                                    ; preds = %312
  store i32 1, i32* %19, align 4
  br label %320

; <label>:319:                                    ; preds = %312
  store i32 1, i32* %9, align 4
  br label %631

; <label>:320:                                    ; preds = %318
  br label %321

; <label>:321:                                    ; preds = %320, %299
  %322 = load double, double* %38, align 8
  %323 = fcmp ogt double %322, 1.000000e-07
  br i1 %323, label %324, label %362

; <label>:324:                                    ; preds = %321
  %325 = load i32, i32* %27, align 4
  %326 = load i32, i32* %25, align 4
  %327 = add nsw i32 %326, %325
  store i32 %327, i32* %25, align 4
  %328 = load i32, i32* %25, align 4
  %329 = load i32, i32* %22, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %335, label %331

; <label>:331:                                    ; preds = %324
  %332 = load i32, i32* %25, align 4
  %333 = load i32, i32* %23, align 4
  %334 = icmp sgt i32 %332, %333
  br i1 %334, label %335, label %336

; <label>:335:                                    ; preds = %331, %324
  br label %409

; <label>:336:                                    ; preds = %331
  %337 = load i32, i32* %24, align 4
  %338 = load i32, i32* %25, align 4
  %339 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %10, align 8
  %340 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %11, align 8
  %341 = load double, double* %30, align 8
  %342 = load double, double* %31, align 8
  %343 = load %"struct.pov::istack_struct"**, %"struct.pov::istack_struct"*** %14, align 8
  %344 = load %"struct.pov::Ray_Struct"**, %"struct.pov::Ray_Struct"*** %15, align 8
  %345 = load double*, double** %16, align 8
  %346 = load double*, double** %17, align 8
  %347 = call i32 @_ZN3povL15intersect_pixelEiiPNS_10Ray_StructEPNS_13HField_StructEddRPNS_13istack_structERS1_RdS8_(i32 %337, i32 %338, %"struct.pov::Ray_Struct"* %339, %"struct.pov::HField_Struct"* %340, double %341, double %342, %"struct.pov::istack_struct"** dereferenceable(8) %343, %"struct.pov::Ray_Struct"** dereferenceable(8) %344, double* dereferenceable(8) %345, double* dereferenceable(8) %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %358

; <label>:349:                                    ; preds = %336
  %350 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %11, align 8
  %351 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = and i32 %352, 256
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

; <label>:355:                                    ; preds = %349
  store i32 1, i32* %19, align 4
  br label %357

; <label>:356:                                    ; preds = %349
  store i32 1, i32* %9, align 4
  br label %631

; <label>:357:                                    ; preds = %355
  br label %358

; <label>:358:                                    ; preds = %357, %336
  br label %359

; <label>:359:                                    ; preds = %358
  %360 = load double, double* %38, align 8
  %361 = fadd double %360, -1.000000e+00
  store double %361, double* %38, align 8
  br label %372

; <label>:362:                                    ; preds = %321
  %363 = load double, double* %38, align 8
  %364 = fcmp ogt double %363, -1.000000e-07
  br i1 %364, label %365, label %371

; <label>:365:                                    ; preds = %362
  %366 = load i32, i32* %27, align 4
  %367 = load i32, i32* %25, align 4
  %368 = add nsw i32 %367, %366
  store i32 %368, i32* %25, align 4
  %369 = load double, double* %38, align 8
  %370 = fadd double %369, -1.000000e+00
  store double %370, double* %38, align 8
  br label %371

; <label>:371:                                    ; preds = %365, %362
  br label %372

; <label>:372:                                    ; preds = %371, %359
  %373 = load i32, i32* %26, align 4
  %374 = load i32, i32* %24, align 4
  %375 = add nsw i32 %374, %373
  store i32 %375, i32* %24, align 4
  %376 = load double, double* %37, align 8
  %377 = load double, double* %38, align 8
  %378 = fadd double %377, %376
  store double %378, double* %38, align 8
  %379 = load double, double* %42, align 8
  store double %379, double* %41, align 8
  %380 = load double, double* %43, align 8
  %381 = load double, double* %42, align 8
  %382 = fadd double %381, %380
  store double %382, double* %42, align 8
  br label %383

; <label>:383:                                    ; preds = %372
  %384 = load double, double* %41, align 8
  %385 = load double, double* %28, align 8
  %386 = fcmp oge double %384, %385
  br i1 %386, label %387, label %407

; <label>:387:                                    ; preds = %383
  %388 = load double, double* %41, align 8
  %389 = load double, double* %29, align 8
  %390 = fcmp ole double %388, %389
  br i1 %390, label %391, label %407

; <label>:391:                                    ; preds = %387
  %392 = load i32, i32* %24, align 4
  %393 = load i32, i32* %20, align 4
  %394 = icmp sge i32 %392, %393
  br i1 %394, label %395, label %407

; <label>:395:                                    ; preds = %391
  %396 = load i32, i32* %24, align 4
  %397 = load i32, i32* %21, align 4
  %398 = icmp sle i32 %396, %397
  br i1 %398, label %399, label %407

; <label>:399:                                    ; preds = %395
  %400 = load i32, i32* %25, align 4
  %401 = load i32, i32* %22, align 4
  %402 = icmp sge i32 %400, %401
  br i1 %402, label %403, label %407

; <label>:403:                                    ; preds = %399
  %404 = load i32, i32* %25, align 4
  %405 = load i32, i32* %23, align 4
  %406 = icmp sle i32 %404, %405
  br label %407

; <label>:407:                                    ; preds = %403, %399, %395, %391, %387, %383
  %408 = phi i1 [ false, %399 ], [ false, %395 ], [ false, %391 ], [ false, %387 ], [ false, %383 ], [ %406, %403 ]
  br i1 %408, label %289, label %409

; <label>:409:                                    ; preds = %407, %335
  br label %629

; <label>:410:                                    ; preds = %175
  %411 = load double, double* %34, align 8
  %412 = load double, double* %36, align 8
  %413 = fdiv double %411, %412
  %414 = call double @fabs(double %413) #6
  store double %414, double* %37, align 8
  %415 = load double, double* %32, align 8
  %416 = fptosi double %415 to i32
  store i32 %416, i32* %24, align 4
  %417 = load double, double* %33, align 8
  %418 = fptosi double %417 to i32
  store i32 %418, i32* %25, align 4
  %419 = load double, double* %32, align 8
  %420 = load double, double* %32, align 8
  %421 = call double @floor(double %420) #6
  %422 = fsub double %419, %421
  store double %422, double* %39, align 8
  %423 = load double, double* %33, align 8
  %424 = load double, double* %33, align 8
  %425 = call double @floor(double %424) #6
  %426 = fsub double %423, %425
  store double %426, double* %40, align 8
  %427 = load double, double* %34, align 8
  %428 = fcmp oge double %427, 0.000000e+00
  %429 = select i1 %428, double 1.000000e+00, double -1.000000e+00
  %430 = fptosi double %429 to i32
  store i32 %430, i32* %26, align 4
  %431 = load double, double* %36, align 8
  %432 = fcmp oge double %431, 0.000000e+00
  %433 = select i1 %432, double 1.000000e+00, double -1.000000e+00
  %434 = fptosi double %433 to i32
  store i32 %434, i32* %27, align 4
  %435 = load double, double* %36, align 8
  %436 = fcmp oge double %435, 0.000000e+00
  br i1 %436, label %437, label %457

; <label>:437:                                    ; preds = %410
  %438 = load double, double* %34, align 8
  %439 = fcmp oge double %438, 0.000000e+00
  br i1 %439, label %440, label %448

; <label>:440:                                    ; preds = %437
  %441 = load double, double* %39, align 8
  %442 = load double, double* %37, align 8
  %443 = load double, double* %40, align 8
  %444 = fsub double 1.000000e+00, %443
  %445 = fmul double %442, %444
  %446 = fadd double %441, %445
  %447 = fsub double %446, 1.000000e+00
  store double %447, double* %38, align 8
  br label %456

; <label>:448:                                    ; preds = %437
  %449 = load double, double* %39, align 8
  %450 = load double, double* %37, align 8
  %451 = load double, double* %40, align 8
  %452 = fsub double 1.000000e+00, %451
  %453 = fmul double %450, %452
  %454 = fsub double %449, %453
  %455 = fsub double -0.000000e+00, %454
  store double %455, double* %38, align 8
  br label %456

; <label>:456:                                    ; preds = %448, %440
  br label %475

; <label>:457:                                    ; preds = %410
  %458 = load double, double* %34, align 8
  %459 = fcmp oge double %458, 0.000000e+00
  br i1 %459, label %460, label %467

; <label>:460:                                    ; preds = %457
  %461 = load double, double* %39, align 8
  %462 = load double, double* %37, align 8
  %463 = load double, double* %40, align 8
  %464 = fmul double %462, %463
  %465 = fadd double %461, %464
  %466 = fsub double %465, 1.000000e+00
  store double %466, double* %38, align 8
  br label %474

; <label>:467:                                    ; preds = %457
  %468 = load double, double* %39, align 8
  %469 = load double, double* %37, align 8
  %470 = load double, double* %40, align 8
  %471 = fmul double %469, %470
  %472 = fsub double %468, %471
  %473 = fsub double -0.000000e+00, %472
  store double %473, double* %38, align 8
  br label %474

; <label>:474:                                    ; preds = %467, %460
  br label %475

; <label>:475:                                    ; preds = %474, %456
  %476 = load double, double* %35, align 8
  %477 = load double, double* %36, align 8
  %478 = call double @fabs(double %477) #6
  %479 = fdiv double %476, %478
  store double %479, double* %43, align 8
  %480 = load double, double* %36, align 8
  %481 = fcmp oge double %480, 0.000000e+00
  br i1 %481, label %482, label %493

; <label>:482:                                    ; preds = %475
  %483 = load double*, double** %12, align 8
  %484 = getelementptr inbounds double, double* %483, i64 1
  %485 = load double, double* %484, align 8
  %486 = load double, double* %40, align 8
  %487 = load double, double* %43, align 8
  %488 = fmul double %486, %487
  %489 = fsub double %485, %488
  store double %489, double* %41, align 8
  %490 = load double, double* %41, align 8
  %491 = load double, double* %43, align 8
  %492 = fadd double %490, %491
  store double %492, double* %42, align 8
  br label %505

; <label>:493:                                    ; preds = %475
  %494 = load double*, double** %12, align 8
  %495 = getelementptr inbounds double, double* %494, i64 1
  %496 = load double, double* %495, align 8
  %497 = load double, double* %40, align 8
  %498 = fsub double 1.000000e+00, %497
  %499 = load double, double* %43, align 8
  %500 = fmul double %498, %499
  %501 = fsub double %496, %500
  store double %501, double* %41, align 8
  %502 = load double, double* %41, align 8
  %503 = load double, double* %43, align 8
  %504 = fadd double %502, %503
  store double %504, double* %42, align 8
  br label %505

; <label>:505:                                    ; preds = %493, %482
  br label %506

; <label>:506:                                    ; preds = %626, %505
  %507 = load double, double* %41, align 8
  %508 = load double, double* %42, align 8
  %509 = fcmp olt double %507, %508
  br i1 %509, label %510, label %513

; <label>:510:                                    ; preds = %506
  %511 = load double, double* %41, align 8
  store double %511, double* %30, align 8
  %512 = load double, double* %42, align 8
  store double %512, double* %31, align 8
  br label %516

; <label>:513:                                    ; preds = %506
  %514 = load double, double* %42, align 8
  store double %514, double* %30, align 8
  %515 = load double, double* %41, align 8
  store double %515, double* %31, align 8
  br label %516

; <label>:516:                                    ; preds = %513, %510
  %517 = load i32, i32* %24, align 4
  %518 = load i32, i32* %25, align 4
  %519 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %10, align 8
  %520 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %11, align 8
  %521 = load double, double* %30, align 8
  %522 = load double, double* %31, align 8
  %523 = load %"struct.pov::istack_struct"**, %"struct.pov::istack_struct"*** %14, align 8
  %524 = load %"struct.pov::Ray_Struct"**, %"struct.pov::Ray_Struct"*** %15, align 8
  %525 = load double*, double** %16, align 8
  %526 = load double*, double** %17, align 8
  %527 = call i32 @_ZN3povL15intersect_pixelEiiPNS_10Ray_StructEPNS_13HField_StructEddRPNS_13istack_structERS1_RdS8_(i32 %517, i32 %518, %"struct.pov::Ray_Struct"* %519, %"struct.pov::HField_Struct"* %520, double %521, double %522, %"struct.pov::istack_struct"** dereferenceable(8) %523, %"struct.pov::Ray_Struct"** dereferenceable(8) %524, double* dereferenceable(8) %525, double* dereferenceable(8) %526)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %538

; <label>:529:                                    ; preds = %516
  %530 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %11, align 8
  %531 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %530, i32 0, i32 1
  %532 = load i32, i32* %531, align 8
  %533 = and i32 %532, 256
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %536

; <label>:535:                                    ; preds = %529
  store i32 1, i32* %19, align 4
  br label %537

; <label>:536:                                    ; preds = %529
  store i32 1, i32* %9, align 4
  br label %631

; <label>:537:                                    ; preds = %535
  br label %538

; <label>:538:                                    ; preds = %537, %516
  %539 = load double, double* %38, align 8
  %540 = fcmp ogt double %539, 1.000000e-07
  br i1 %540, label %541, label %579

; <label>:541:                                    ; preds = %538
  %542 = load i32, i32* %26, align 4
  %543 = load i32, i32* %24, align 4
  %544 = add nsw i32 %543, %542
  store i32 %544, i32* %24, align 4
  %545 = load i32, i32* %24, align 4
  %546 = load i32, i32* %20, align 4
  %547 = icmp slt i32 %545, %546
  br i1 %547, label %552, label %548

; <label>:548:                                    ; preds = %541
  %549 = load i32, i32* %24, align 4
  %550 = load i32, i32* %21, align 4
  %551 = icmp sgt i32 %549, %550
  br i1 %551, label %552, label %553

; <label>:552:                                    ; preds = %548, %541
  br label %628

; <label>:553:                                    ; preds = %548
  %554 = load i32, i32* %24, align 4
  %555 = load i32, i32* %25, align 4
  %556 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %10, align 8
  %557 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %11, align 8
  %558 = load double, double* %30, align 8
  %559 = load double, double* %31, align 8
  %560 = load %"struct.pov::istack_struct"**, %"struct.pov::istack_struct"*** %14, align 8
  %561 = load %"struct.pov::Ray_Struct"**, %"struct.pov::Ray_Struct"*** %15, align 8
  %562 = load double*, double** %16, align 8
  %563 = load double*, double** %17, align 8
  %564 = call i32 @_ZN3povL15intersect_pixelEiiPNS_10Ray_StructEPNS_13HField_StructEddRPNS_13istack_structERS1_RdS8_(i32 %554, i32 %555, %"struct.pov::Ray_Struct"* %556, %"struct.pov::HField_Struct"* %557, double %558, double %559, %"struct.pov::istack_struct"** dereferenceable(8) %560, %"struct.pov::Ray_Struct"** dereferenceable(8) %561, double* dereferenceable(8) %562, double* dereferenceable(8) %563)
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %575

; <label>:566:                                    ; preds = %553
  %567 = load %"struct.pov::HField_Struct"*, %"struct.pov::HField_Struct"** %11, align 8
  %568 = getelementptr inbounds %"struct.pov::HField_Struct", %"struct.pov::HField_Struct"* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 8
  %570 = and i32 %569, 256
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %573

; <label>:572:                                    ; preds = %566
  store i32 1, i32* %19, align 4
  br label %574

; <label>:573:                                    ; preds = %566
  store i32 1, i32* %9, align 4
  br label %631

; <label>:574:                                    ; preds = %572
  br label %575

; <label>:575:                                    ; preds = %574, %553
  br label %576

; <label>:576:                                    ; preds = %575
  %577 = load double, double* %38, align 8
  %578 = fadd double %577, -1.000000e+00
  store double %578, double* %38, align 8
  br label %589

; <label>:579:                                    ; preds = %538
  %580 = load double, double* %38, align 8
  %581 = fcmp ogt double %580, -1.000000e-07
  br i1 %581, label %582, label %588

; <label>:582:                                    ; preds = %579
  %583 = load i32, i32* %26, align 4
  %584 = load i32, i32* %24, align 4
  %585 = add nsw i32 %584, %583
  store i32 %585, i32* %24, align 4
  %586 = load double, double* %38, align 8
  %587 = fadd double %586, -1.000000e+00
  store double %587, double* %38, align 8
  br label %588

; <label>:588:                                    ; preds = %582, %579
  br label %589

; <label>:589:                                    ; preds = %588, %576
  %590 = load i32, i32* %27, align 4
  %591 = load i32, i32* %25, align 4
  %592 = add nsw i32 %591, %590
  store i32 %592, i32* %25, align 4
  %593 = load double, double* %37, align 8
  %594 = load double, double* %38, align 8
  %595 = fadd double %594, %593
  store double %595, double* %38, align 8
  %596 = load double, double* %42, align 8
  store double %596, double* %41, align 8
  %597 = load double, double* %43, align 8
  %598 = load double, double* %42, align 8
  %599 = fadd double %598, %597
  store double %599, double* %42, align 8
  br label %600

; <label>:600:                                    ; preds = %589
  %601 = load double, double* %41, align 8
  %602 = load double, double* %28, align 8
  %603 = fsub double %602, 1.000000e-07
  %604 = fcmp oge double %601, %603
  br i1 %604, label %605, label %626

; <label>:605:                                    ; preds = %600
  %606 = load double, double* %41, align 8
  %607 = load double, double* %29, align 8
  %608 = fadd double %607, 1.000000e-07
  %609 = fcmp ole double %606, %608
  br i1 %609, label %610, label %626

; <label>:610:                                    ; preds = %605
  %611 = load i32, i32* %24, align 4
  %612 = load i32, i32* %20, align 4
  %613 = icmp sge i32 %611, %612
  br i1 %613, label %614, label %626

; <label>:614:                                    ; preds = %610
  %615 = load i32, i32* %24, align 4
  %616 = load i32, i32* %21, align 4
  %617 = icmp sle i32 %615, %616
  br i1 %617, label %618, label %626

; <label>:618:                                    ; preds = %614
  %619 = load i32, i32* %25, align 4
  %620 = load i32, i32* %22, align 4
  %621 = icmp sge i32 %619, %620
  br i1 %621, label %622, label %626

; <label>:622:                                    ; preds = %618
  %623 = load i32, i32* %25, align 4
  %624 = load i32, i32* %23, align 4
  %625 = icmp sle i32 %623, %624
  br label %626

; <label>:626:                                    ; preds = %622, %618, %614, %610, %605, %600
  %627 = phi i1 [ false, %618 ], [ false, %614 ], [ false, %610 ], [ false, %605 ], [ false, %600 ], [ %625, %622 ]
  br i1 %627, label %506, label %628

; <label>:628:                                    ; preds = %626, %552
  br label %629

; <label>:629:                                    ; preds = %628, %409
  %630 = load i32, i32* %19, align 4
  store i32 %630, i32* %9, align 4
  br label %631

; <label>:631:                                    ; preds = %629, %573, %536, %356, %319, %165, %144, %123, %102
  %632 = load i32, i32* %9, align 4
  ret i32 %632
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov13Assign_VectorEPdS0_(double*, double*) #2 comdat {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load double*, double** %4, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  %7 = load double, double* %6, align 8
  %8 = load double*, double** %3, align 8
  %9 = getelementptr inbounds double, double* %8, i64 0
  store double %7, double* %9, align 8
  %10 = load double*, double** %4, align 8
  %11 = getelementptr inbounds double, double* %10, i64 1
  %12 = load double, double* %11, align 8
  %13 = load double*, double** %3, align 8
  %14 = getelementptr inbounds double, double* %13, i64 1
  store double %12, double* %14, align 8
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 2
  %17 = load double, double* %16, align 8
  %18 = load double*, double** %3, align 8
  %19 = getelementptr inbounds double, double* %18, i64 2
  store double %17, double* %19, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8), double*, double*) #2 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load double*, double** %5, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  %9 = load double, double* %8, align 8
  %10 = load double*, double** %6, align 8
  %11 = getelementptr inbounds double, double* %10, i64 0
  %12 = load double, double* %11, align 8
  %13 = fmul double %9, %12
  %14 = load double*, double** %5, align 8
  %15 = getelementptr inbounds double, double* %14, i64 1
  %16 = load double, double* %15, align 8
  %17 = load double*, double** %6, align 8
  %18 = getelementptr inbounds double, double* %17, i64 1
  %19 = load double, double* %18, align 8
  %20 = fmul double %16, %19
  %21 = fadd double %13, %20
  %22 = load double*, double** %5, align 8
  %23 = getelementptr inbounds double, double* %22, i64 2
  %24 = load double, double* %23, align 8
  %25 = load double*, double** %6, align 8
  %26 = getelementptr inbounds double, double* %25, i64 2
  %27 = load double, double* %26, align 8
  %28 = fmul double %24, %27
  %29 = fadd double %21, %28
  %30 = load double*, double** %4, align 8
  store double %29, double* %30, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov4VSubEPdPKdS2_(double*, double*, double*) #2 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load double*, double** %5, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  %9 = load double, double* %8, align 8
  %10 = load double*, double** %6, align 8
  %11 = getelementptr inbounds double, double* %10, i64 0
  %12 = load double, double* %11, align 8
  %13 = fsub double %9, %12
  %14 = load double*, double** %4, align 8
  %15 = getelementptr inbounds double, double* %14, i64 0
  store double %13, double* %15, align 8
  %16 = load double*, double** %5, align 8
  %17 = getelementptr inbounds double, double* %16, i64 1
  %18 = load double, double* %17, align 8
  %19 = load double*, double** %6, align 8
  %20 = getelementptr inbounds double, double* %19, i64 1
  %21 = load double, double* %20, align 8
  %22 = fsub double %18, %21
  %23 = load double*, double** %4, align 8
  %24 = getelementptr inbounds double, double* %23, i64 1
  store double %22, double* %24, align 8
  %25 = load double*, double** %5, align 8
  %26 = getelementptr inbounds double, double* %25, i64 2
  %27 = load double, double* %26, align 8
  %28 = load double*, double** %6, align 8
  %29 = getelementptr inbounds double, double* %28, i64 2
  %30 = load double, double* %29, align 8
  %31 = fsub double %27, %30
  %32 = load double*, double** %4, align 8
  %33 = getelementptr inbounds double, double* %32, i64 2
  store double %31, double* %33, align 8
  ret void
}

declare zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(double*, %"struct.pov::Object_Struct"*) #1

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE(double, double*, %"struct.pov::Object_Struct"*, %"struct.pov::istack_struct"*) #0 comdat {
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca %"struct.pov::Object_Struct"*, align 8
  %8 = alloca %"struct.pov::istack_struct"*, align 8
  store double %0, double* %5, align 8
  store double* %1, double** %6, align 8
  store %"struct.pov::Object_Struct"* %2, %"struct.pov::Object_Struct"** %7, align 8
  store %"struct.pov::istack_struct"* %3, %"struct.pov::istack_struct"** %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %8, align 8
  %11 = call dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"* %10)
  %12 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %11, i32 0, i32 0
  store double %9, double* %12, align 8
  %13 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %7, align 8
  %14 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %8, align 8
  %15 = call dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"* %14)
  %16 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %15, i32 0, i32 5
  store %"struct.pov::Object_Struct"* %13, %"struct.pov::Object_Struct"** %16, align 8
  %17 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %8, align 8
  %18 = call dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"* %17)
  %19 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %18, i32 0, i32 1
  %20 = getelementptr inbounds [3 x double], [3 x double]* %19, i32 0, i32 0
  %21 = load double*, double** %6, align 8
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %20, double* %21)
  %22 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %8, align 8
  %23 = call dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"* %22)
  %24 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %23, i32 0, i32 4
  %25 = getelementptr inbounds [2 x double], [2 x double]* %24, i32 0, i32 0
  %26 = load double*, double** %6, align 8
  call void @_ZN3pov14Assign_UV_VectEPdS0_(double* %25, double* %26)
  %27 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %8, align 8
  %28 = call dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"* %27)
  %29 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %28, i32 0, i32 18
  store i8* null, i8** %29, align 8
  %30 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %8, align 8
  call void @_ZN3pov8incstackEPNS_13istack_structE(%"struct.pov::istack_struct"* %30)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"*) #2 comdat {
  %2 = alloca %"struct.pov::istack_struct"*, align 8
  store %"struct.pov::istack_struct"* %0, %"struct.pov::istack_struct"** %2, align 8
  %3 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %2, align 8
  %4 = getelementptr inbounds %"struct.pov::istack_struct", %"struct.pov::istack_struct"* %3, i32 0, i32 1
  %5 = load %"struct.pov::istk_entry"*, %"struct.pov::istk_entry"** %4, align 8
  %6 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %2, align 8
  %7 = getelementptr inbounds %"struct.pov::istack_struct", %"struct.pov::istack_struct"* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %5, i64 %9
  ret %"struct.pov::istk_entry"* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov14Assign_UV_VectEPdS0_(double*, double*) #2 comdat {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load double*, double** %4, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  %7 = load double, double* %6, align 8
  %8 = load double*, double** %3, align 8
  %9 = getelementptr inbounds double, double* %8, i64 0
  store double %7, double* %9, align 8
  %10 = load double*, double** %4, align 8
  %11 = getelementptr inbounds double, double* %10, i64 1
  %12 = load double, double* %11, align 8
  %13 = load double*, double** %3, align 8
  %14 = getelementptr inbounds double, double* %13, i64 1
  store double %12, double* %14, align 8
  ret void
}

declare void @_ZN3pov8incstackEPNS_13istack_structE(%"struct.pov::istack_struct"*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* dereferenceable(4), i32* dereferenceable(4)) #2 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %3, align 8
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %3, align 8
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = load i32*, i32** %3, align 8
  ret i32* %16
}

declare i32 @_ZN3pov7WarningEjPKcz(i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(double*, double*, %"struct.pov::Transform_Struct"*) #1

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN3pov10VNormalizeEPdPKd(double*, double*) #0 comdat {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %6 = load double*, double** %4, align 8
  call void @_ZN3pov7VLengthERdPKd(double* dereferenceable(8) %5, double* %6)
  %7 = load double*, double** %3, align 8
  %8 = load double*, double** %4, align 8
  %9 = load double, double* %5, align 8
  call void @_ZN3pov13VInverseScaleEPdPKdd(double* %7, double* %8, double %9)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN3pov12VNormalizeEqEPd(double*) #0 comdat {
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  store double* %0, double** %2, align 8
  %4 = load double*, double** %2, align 8
  call void @_ZN3pov7VLengthERdPKd(double* dereferenceable(8) %3, double* %4)
  %5 = load double*, double** %2, align 8
  %6 = load double, double* %3, align 8
  call void @_ZN3pov15VInverseScaleEqEPdd(double* %5, double %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov7VLengthERdPKd(double* dereferenceable(8), double*) #2 comdat {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load double*, double** %4, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  %7 = load double, double* %6, align 8
  %8 = load double*, double** %4, align 8
  %9 = getelementptr inbounds double, double* %8, i64 0
  %10 = load double, double* %9, align 8
  %11 = fmul double %7, %10
  %12 = load double*, double** %4, align 8
  %13 = getelementptr inbounds double, double* %12, i64 1
  %14 = load double, double* %13, align 8
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = fmul double %14, %17
  %19 = fadd double %11, %18
  %20 = load double*, double** %4, align 8
  %21 = getelementptr inbounds double, double* %20, i64 2
  %22 = load double, double* %21, align 8
  %23 = load double*, double** %4, align 8
  %24 = getelementptr inbounds double, double* %23, i64 2
  %25 = load double, double* %24, align 8
  %26 = fmul double %22, %25
  %27 = fadd double %19, %26
  %28 = call double @sqrt(double %27) #7
  %29 = load double*, double** %3, align 8
  store double %28, double* %29, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov13VInverseScaleEPdPKdd(double*, double*, double) #2 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double %2, double* %6, align 8
  %8 = load double, double* %6, align 8
  %9 = fdiv double 1.000000e+00, %8
  store double %9, double* %7, align 8
  %10 = load double*, double** %5, align 8
  %11 = getelementptr inbounds double, double* %10, i64 0
  %12 = load double, double* %11, align 8
  %13 = load double, double* %7, align 8
  %14 = fmul double %12, %13
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 0
  store double %14, double* %16, align 8
  %17 = load double*, double** %5, align 8
  %18 = getelementptr inbounds double, double* %17, i64 1
  %19 = load double, double* %18, align 8
  %20 = load double, double* %7, align 8
  %21 = fmul double %19, %20
  %22 = load double*, double** %4, align 8
  %23 = getelementptr inbounds double, double* %22, i64 1
  store double %21, double* %23, align 8
  %24 = load double*, double** %5, align 8
  %25 = getelementptr inbounds double, double* %24, i64 2
  %26 = load double, double* %25, align 8
  %27 = load double, double* %7, align 8
  %28 = fmul double %26, %27
  %29 = load double*, double** %4, align 8
  %30 = getelementptr inbounds double, double* %29, i64 2
  store double %28, double* %30, align 8
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov15VInverseScaleEqEPdd(double*, double) #2 comdat {
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = fdiv double 1.000000e+00, %6
  store double %7, double* %5, align 8
  %8 = load double, double* %5, align 8
  %9 = load double*, double** %3, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  %11 = load double, double* %10, align 8
  %12 = fmul double %11, %8
  store double %12, double* %10, align 8
  %13 = load double, double* %5, align 8
  %14 = load double*, double** %3, align 8
  %15 = getelementptr inbounds double, double* %14, i64 1
  %16 = load double, double* %15, align 8
  %17 = fmul double %16, %13
  store double %17, double* %15, align 8
  %18 = load double, double* %5, align 8
  %19 = load double*, double** %3, align 8
  %20 = getelementptr inbounds double, double* %19, i64 2
  %21 = load double, double* %20, align 8
  %22 = fmul double %21, %18
  store double %22, double* %20, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL17add_single_normalEPPtiiiiiiiiPd(i16**, i32, i32, i32, i32, i32, i32, i32, i32, double*) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i16**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double*, align 8
  %22 = alloca [3 x double], align 16
  %23 = alloca [3 x double], align 16
  %24 = alloca [3 x double], align 16
  %25 = alloca [3 x double], align 16
  %26 = alloca [3 x double], align 16
  %27 = alloca [3 x double], align 16
  store i16** %0, i16*** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store double* %9, double** %21, align 8
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %69, label %30

; <label>:30:                                     ; preds = %10
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %69, label %33

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %17, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %69, label %36

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %69, label %39

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %19, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %69, label %42

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %20, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %69, label %45

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %69, label %49

; <label>:49:                                     ; preds = %45
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %69, label %53

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %69, label %57

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %69, label %61

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %69, label %65

; <label>:65:                                     ; preds = %61
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %65, %61, %57, %53, %49, %45, %42, %39, %36, %33, %30, %10
  store i32 0, i32* %11, align 4
  br label %136

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds [3 x double], [3 x double]* %22, i32 0, i32 0
  %72 = load i32, i32* %15, align 4
  %73 = sitofp i32 %72 to double
  %74 = load i16**, i16*** %12, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i16*, i16** %74, i64 %76
  %78 = load i16*, i16** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i16, i16* %78, i64 %80
  %82 = load i16, i16* %81, align 2
  %83 = uitofp i16 %82 to double
  %84 = load i32, i32* %16, align 4
  %85 = sitofp i32 %84 to double
  call void @_ZN3pov11Make_VectorEPdddd(double* %71, double %73, double %83, double %85)
  %86 = getelementptr inbounds [3 x double], [3 x double]* %23, i32 0, i32 0
  %87 = load i32, i32* %17, align 4
  %88 = sitofp i32 %87 to double
  %89 = load i16**, i16*** %12, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16*, i16** %89, i64 %91
  %93 = load i16*, i16** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, i16* %93, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = uitofp i16 %97 to double
  %99 = load i32, i32* %18, align 4
  %100 = sitofp i32 %99 to double
  call void @_ZN3pov11Make_VectorEPdddd(double* %86, double %88, double %98, double %100)
  %101 = getelementptr inbounds [3 x double], [3 x double]* %24, i32 0, i32 0
  %102 = load i32, i32* %19, align 4
  %103 = sitofp i32 %102 to double
  %104 = load i16**, i16*** %12, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i16*, i16** %104, i64 %106
  %108 = load i16*, i16** %107, align 8
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i16, i16* %108, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = uitofp i16 %112 to double
  %114 = load i32, i32* %20, align 4
  %115 = sitofp i32 %114 to double
  call void @_ZN3pov11Make_VectorEPdddd(double* %101, double %103, double %113, double %115)
  %116 = getelementptr inbounds [3 x double], [3 x double]* %25, i32 0, i32 0
  %117 = getelementptr inbounds [3 x double], [3 x double]* %24, i32 0, i32 0
  %118 = getelementptr inbounds [3 x double], [3 x double]* %22, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKdS2_(double* %116, double* %117, double* %118)
  %119 = getelementptr inbounds [3 x double], [3 x double]* %26, i32 0, i32 0
  %120 = getelementptr inbounds [3 x double], [3 x double]* %23, i32 0, i32 0
  %121 = getelementptr inbounds [3 x double], [3 x double]* %22, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKdS2_(double* %119, double* %120, double* %121)
  %122 = getelementptr inbounds [3 x double], [3 x double]* %27, i32 0, i32 0
  %123 = getelementptr inbounds [3 x double], [3 x double]* %25, i32 0, i32 0
  %124 = getelementptr inbounds [3 x double], [3 x double]* %26, i32 0, i32 0
  call void @_ZN3pov6VCrossEPdPKdS2_(double* %122, double* %123, double* %124)
  %125 = getelementptr inbounds [3 x double], [3 x double]* %27, i32 0, i32 0
  %126 = getelementptr inbounds [3 x double], [3 x double]* %27, i32 0, i32 0
  %127 = call double @_ZN3povL9normalizeEPdS0_(double* %125, double* %126)
  %128 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 1
  %129 = load double, double* %128, align 8
  %130 = fcmp olt double %129, 0.000000e+00
  br i1 %130, label %131, label %133

; <label>:131:                                    ; preds = %70
  %132 = getelementptr inbounds [3 x double], [3 x double]* %27, i32 0, i32 0
  call void @_ZN3pov8VScaleEqEPdd(double* %132, double -1.000000e+00)
  br label %133

; <label>:133:                                    ; preds = %131, %70
  %134 = load double*, double** %21, align 8
  %135 = getelementptr inbounds [3 x double], [3 x double]* %27, i32 0, i32 0
  call void @_ZN3pov6VAddEqEPdPKd(double* %134, double* %135)
  store i32 1, i32* %11, align 4
  br label %136

; <label>:136:                                    ; preds = %133, %69
  %137 = load i32, i32* %11, align 4
  ret i32 %137
}

declare i32 @_ZN3pov5ErrorEPKcz(i8*, ...) #1

; Function Attrs: noinline uwtable
define internal double @_ZN3povL9normalizeEPdS0_(double*, double*) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %6 = load double*, double** %4, align 8
  call void @_ZN3pov7VLengthERdPKd(double* dereferenceable(8) %5, double* %6)
  %7 = load double, double* %5, align 8
  %8 = call double @fabs(double %7) #6
  %9 = fcmp ogt double %8, 1.000000e-07
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %2
  %11 = load double*, double** %3, align 8
  %12 = load double*, double** %4, align 8
  %13 = load double, double* %5, align 8
  call void @_ZN3pov13VInverseScaleEPdPKdd(double* %11, double* %12, double %13)
  br label %16

; <label>:14:                                     ; preds = %2
  %15 = load double*, double** %3, align 8
  call void @_ZN3pov11Make_VectorEPdddd(double* %15, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  br label %16

; <label>:16:                                     ; preds = %14, %10
  %17 = load double, double* %5, align 8
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov6VCrossEPdPKdS2_(double*, double*, double*) #2 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca [3 x double], align 16
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %8 = load double*, double** %5, align 8
  %9 = getelementptr inbounds double, double* %8, i64 1
  %10 = load double, double* %9, align 8
  %11 = load double*, double** %6, align 8
  %12 = getelementptr inbounds double, double* %11, i64 2
  %13 = load double, double* %12, align 8
  %14 = fmul double %10, %13
  %15 = load double*, double** %5, align 8
  %16 = getelementptr inbounds double, double* %15, i64 2
  %17 = load double, double* %16, align 8
  %18 = load double*, double** %6, align 8
  %19 = getelementptr inbounds double, double* %18, i64 1
  %20 = load double, double* %19, align 8
  %21 = fmul double %17, %20
  %22 = fsub double %14, %21
  %23 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  store double %22, double* %23, align 16
  %24 = load double*, double** %5, align 8
  %25 = getelementptr inbounds double, double* %24, i64 2
  %26 = load double, double* %25, align 8
  %27 = load double*, double** %6, align 8
  %28 = getelementptr inbounds double, double* %27, i64 0
  %29 = load double, double* %28, align 8
  %30 = fmul double %26, %29
  %31 = load double*, double** %5, align 8
  %32 = getelementptr inbounds double, double* %31, i64 0
  %33 = load double, double* %32, align 8
  %34 = load double*, double** %6, align 8
  %35 = getelementptr inbounds double, double* %34, i64 2
  %36 = load double, double* %35, align 8
  %37 = fmul double %33, %36
  %38 = fsub double %30, %37
  %39 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  store double %38, double* %39, align 8
  %40 = load double*, double** %5, align 8
  %41 = getelementptr inbounds double, double* %40, i64 0
  %42 = load double, double* %41, align 8
  %43 = load double*, double** %6, align 8
  %44 = getelementptr inbounds double, double* %43, i64 1
  %45 = load double, double* %44, align 8
  %46 = fmul double %42, %45
  %47 = load double*, double** %5, align 8
  %48 = getelementptr inbounds double, double* %47, i64 1
  %49 = load double, double* %48, align 8
  %50 = load double*, double** %6, align 8
  %51 = getelementptr inbounds double, double* %50, i64 0
  %52 = load double, double* %51, align 8
  %53 = fmul double %49, %52
  %54 = fsub double %46, %53
  %55 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  store double %54, double* %55, align 16
  %56 = load double*, double** %4, align 8
  %57 = getelementptr inbounds [3 x double], [3 x double]* %7, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %56, double* %57)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov8VScaleEqEPdd(double*, double) #2 comdat {
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  store double* %0, double** %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %4, align 8
  %6 = load double*, double** %3, align 8
  %7 = getelementptr inbounds double, double* %6, i64 0
  %8 = load double, double* %7, align 8
  %9 = fmul double %8, %5
  store double %9, double* %7, align 8
  %10 = load double, double* %4, align 8
  %11 = load double*, double** %3, align 8
  %12 = getelementptr inbounds double, double* %11, i64 1
  %13 = load double, double* %12, align 8
  %14 = fmul double %13, %10
  store double %14, double* %12, align 8
  %15 = load double, double* %4, align 8
  %16 = load double*, double** %3, align 8
  %17 = getelementptr inbounds double, double* %16, i64 2
  %18 = load double, double* %17, align 8
  %19 = fmul double %18, %15
  store double %19, double* %17, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov6VAddEqEPdPKd(double*, double*) #2 comdat {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load double*, double** %4, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  %7 = load double, double* %6, align 8
  %8 = load double*, double** %3, align 8
  %9 = getelementptr inbounds double, double* %8, i64 0
  %10 = load double, double* %9, align 8
  %11 = fadd double %10, %7
  store double %11, double* %9, align 8
  %12 = load double*, double** %4, align 8
  %13 = getelementptr inbounds double, double* %12, i64 1
  %14 = load double, double* %13, align 8
  %15 = load double*, double** %3, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = fadd double %17, %14
  store double %18, double* %16, align 8
  %19 = load double*, double** %4, align 8
  %20 = getelementptr inbounds double, double* %19, i64 2
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %3, align 8
  %23 = getelementptr inbounds double, double* %22, i64 2
  %24 = load double, double* %23, align 8
  %25 = fadd double %24, %21
  store double %25, double* %23, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4), i32* dereferenceable(4)) #2 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %3, align 8
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %3, align 8
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = load i32*, i32** %3, align 8
  ret i32* %16
}

declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(%"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"*) #1

declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(%"struct.pov::Transform_Struct"*) #1

declare void @_ZN3pov8pov_freeEPvPKci(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare %"struct.pov::Transform_Struct"* @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(%"struct.pov::Transform_Struct"*) #1

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
