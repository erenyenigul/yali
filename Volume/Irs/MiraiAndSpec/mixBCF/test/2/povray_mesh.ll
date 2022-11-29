; ModuleID = 'host/ir_O0/povray_mesh.ll'
source_filename = "mesh.cpp"
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
%"struct.pov::Hash_Table_Struct" = type { i32, [3 x float], %"struct.pov::Hash_Table_Struct"* }
%"struct.pov::UV_Hash_Table_Struct" = type { i32, [2 x double], %"struct.pov::UV_Hash_Table_Struct"* }
%"struct.pov::Priority_Queue_Struct" = type { i32, i32, %"struct.pov::Qelem_Struct"* }
%"struct.pov::Qelem_Struct" = type { double, %"struct.pov::BBox_Tree_Struct"* }
%"struct.pov::Mesh_Struct" = type { %"struct.pov::Method_Struct"*, i32, %"struct.pov::Object_Struct"*, %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"*, %"struct.pov::Interior_Struct"*, %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"*, %"struct.pov::Light_Source_Struct"*, %"struct.pov::Bounding_Box_Struct", %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"*, float, i32, %"struct.pov::Mesh_Data_Struct"*, i64, %"struct.pov::Texture_Struct"**, i16 }
%"struct.pov::Mesh_Data_Struct" = type { i32, i64, i64, i64, i64, [3 x float]*, [3 x float]*, [2 x double]*, %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::BBox_Tree_Struct"*, [3 x double] }
%"struct.pov::Mesh_Triangle_Struct" = type { i8, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, float, [3 x float] }
%"struct.pov::Rayinfo_Struct" = type { [3 x double], [3 x double], [3 x i32], [3 x i32] }

$_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZSt3minIdERKT_S2_S2_ = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_ = comdat any

$_ZN3pov4VSubEPdPKdS2_ = comdat any

$_ZN3pov6VCrossEPdPKdS2_ = comdat any

$_ZN3pov7VLengthERdPKd = comdat any

$_ZN3pov15VInverseScaleEqEPdd = comdat any

$_ZN3pov4VDotERfPKdS2_ = comdat any

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZN3pov11Make_VectorEPffff = comdat any

$_ZN3pov14Assign_UV_VectEPdS0_ = comdat any

$_ZN3pov8VScaleEqEPdd = comdat any

$_ZN3pov16Increase_CounterERx = comdat any

$_ZN3pov13Assign_VectorEPdPf = comdat any

$_ZN3pov4VDotERdPKdS2_ = comdat any

$_ZN3pov12VEvaluateRayEPdPKddS2_ = comdat any

$_ZN3pov18push_entry_pointerEdPdPNS_13Object_StructEPvPNS_13istack_structE = comdat any

$_ZN3pov4itopEPNS_13istack_structE = comdat any

$_ZN3pov10VNormalizeEPdPKd = comdat any

$_ZN3pov4VSubEPdPKdPKf = comdat any

$_ZN3pov4VDotERdPKdPKf = comdat any

$_ZN3pov13VInverseScaleEPdPKdd = comdat any

$_ZN3pov4VSubEPfPKdS2_ = comdat any

$_ZN3pov10VNormalizeEPfPKf = comdat any

$_ZN3pov15VInverseScaleEqEPff = comdat any

$_ZN3pov7VLengthERfPKf = comdat any

$_ZN3pov13VInverseScaleEPfPKff = comdat any

$_ZSt4sqrtf = comdat any

$_ZN3pov13Assign_VectorEPfPd = comdat any

$_ZN3pov4VSubEPfPKfS2_ = comdat any

$_ZSt4fabsf = comdat any

$_ZN3pov13Assign_VectorEPfS0_ = comdat any

$_ZN3pov4VSubEPdPKfS2_ = comdat any

$_ZN3pov6VScaleEPdPKdd = comdat any

$_ZN3pov6VSubEqEPdPKd = comdat any

@_ZN3pov12Mesh_MethodsE = global { i32 (%"struct.pov::Object_Struct"*, %"struct.pov::Ray_Struct"*, %"struct.pov::istack_struct"*)*, i32 (double*, %"struct.pov::Object_Struct"*)*, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)*, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)*, i8* (%"struct.pov::Object_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*)*, void (%"struct.pov::Object_Struct"*)* } { i32 (%"struct.pov::Object_Struct"*, %"struct.pov::Ray_Struct"*, %"struct.pov::istack_struct"*)* @_ZN3povL22All_Mesh_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, i32 (double*, %"struct.pov::Object_Struct"*)* @_ZN3povL11Inside_MeshEPdPNS_13Object_StructE, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)* @_ZN3povL11Mesh_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)* @_ZN3povL12Mesh_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, i8* (%"struct.pov::Object_Struct"*)* bitcast (%"struct.pov::Mesh_Struct"* (%"struct.pov::Object_Struct"*)* @_ZN3povL9Copy_MeshEPNS_13Object_StructE to i8* (%"struct.pov::Object_Struct"*)*), void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)* @_ZN3povL14Translate_MeshEPNS_13Object_StructEPdPNS_16Transform_StructE, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)* @_ZN3povL11Rotate_MeshEPNS_13Object_StructEPdPNS_16Transform_StructE, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)* @_ZN3povL10Scale_MeshEPNS_13Object_StructEPdPNS_16Transform_StructE, void (%"struct.pov::Object_Struct"*, %"struct.pov::Transform_Struct"*)* @_ZN3povL14Transform_MeshEPNS_13Object_StructEPNS_16Transform_StructE, void (%"struct.pov::Object_Struct"*)* @_ZN3povL11Invert_MeshEPNS_13Object_StructE, void (%"struct.pov::Object_Struct"*)* @_ZN3povL12Destroy_MeshEPNS_13Object_StructE }, align 8
@.str = private unnamed_addr constant [9 x i8] c"mesh.cpp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"mesh bbox tree\00", align 1
@_ZN3povL17Vertex_Hash_TableE = internal global %"struct.pov::Hash_Table_Struct"** null, align 8
@_ZN3povL17Normal_Hash_TableE = internal global %"struct.pov::Hash_Table_Struct"** null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Too many textures in mesh.\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"mesh data\00", align 1
@_ZN3povL13UV_Hash_TableE = internal global %"struct.pov::UV_Hash_Table_Struct"** null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Too many normals/vertices in mesh.\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"mesh hash table\00", align 1
@_ZN3povL10Mesh_QueueE = internal global %"struct.pov::Priority_Queue_Struct"* null, align 8
@_ZN3pov5statsE = external global [126 x i64], align 16
@.str.7 = private unnamed_addr constant [19 x i8] c"triangle mesh data\00", align 1

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL22All_Mesh_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(%"struct.pov::Object_Struct"*, %"struct.pov::Ray_Struct"*, %"struct.pov::istack_struct"*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %"struct.pov::Object_Struct"*, align 8
  %6 = alloca %"struct.pov::Ray_Struct"*, align 8
  %7 = alloca %"struct.pov::istack_struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %5, align 8
  store %"struct.pov::Ray_Struct"* %1, %"struct.pov::Ray_Struct"** %6, align 8
  store %"struct.pov::istack_struct"* %2, %"struct.pov::istack_struct"** %7, align 8
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 52))
  %8 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %9 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %5, align 8
  %10 = bitcast %"struct.pov::Object_Struct"* %9 to %"struct.pov::Mesh_Struct"*
  %11 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %7, align 8
  %12 = call i32 @_ZN3povL14Intersect_MeshEPNS_10Ray_StructEPNS_11Mesh_StructEPNS_13istack_structE(%"struct.pov::Ray_Struct"* %8, %"struct.pov::Mesh_Struct"* %10, %"struct.pov::istack_struct"* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %3
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 53))
  store i32 1, i32* %4, align 4
  br label %16

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %16

; <label>:16:                                     ; preds = %15, %14
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL11Inside_MeshEPdPNS_13Object_StructE(double*, %"struct.pov::Object_Struct"*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca %"struct.pov::Object_Struct"*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %"struct.pov::Ray_Struct", align 8
  %12 = alloca %"struct.pov::Ray_Struct", align 8
  %13 = alloca %"struct.pov::Mesh_Struct"*, align 8
  store double* %0, double** %4, align 8
  store %"struct.pov::Object_Struct"* %1, %"struct.pov::Object_Struct"** %5, align 8
  %14 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %5, align 8
  %15 = bitcast %"struct.pov::Object_Struct"* %14 to %"struct.pov::Mesh_Struct"*
  store %"struct.pov::Mesh_Struct"* %15, %"struct.pov::Mesh_Struct"** %13, align 8
  %16 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %13, align 8
  %17 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %16, i32 0, i32 17
  %18 = load i16, i16* %17, align 8
  %19 = sext i16 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %116

; <label>:22:                                     ; preds = %2
  %23 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %11, i32 0, i32 1
  %24 = getelementptr inbounds [3 x double], [3 x double]* %23, i32 0, i32 0
  %25 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %13, align 8
  %26 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %25, i32 0, i32 14
  %27 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %26, align 8
  %28 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %27, i32 0, i32 10
  %29 = getelementptr inbounds [3 x double], [3 x double]* %28, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %24, double* %29)
  %30 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %11, i32 0, i32 0
  %31 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 0
  %32 = load double*, double** %4, align 8
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %31, double* %32)
  %33 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %13, align 8
  %34 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %33, i32 0, i32 10
  %35 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %34, align 8
  %36 = icmp ne %"struct.pov::Transform_Struct"* %35, null
  br i1 %36, label %37, label %57

; <label>:37:                                     ; preds = %22
  %38 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %12, i32 0, i32 0
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i32 0, i32 0
  %40 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %11, i32 0, i32 0
  %41 = getelementptr inbounds [3 x double], [3 x double]* %40, i32 0, i32 0
  %42 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %13, align 8
  %43 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %42, i32 0, i32 10
  %44 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %43, align 8
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(double* %39, double* %41, %"struct.pov::Transform_Struct"* %44)
  %45 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %12, i32 0, i32 1
  %46 = getelementptr inbounds [3 x double], [3 x double]* %45, i32 0, i32 0
  %47 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %11, i32 0, i32 1
  %48 = getelementptr inbounds [3 x double], [3 x double]* %47, i32 0, i32 0
  %49 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %13, align 8
  %50 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %49, i32 0, i32 10
  %51 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %50, align 8
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(double* %46, double* %48, %"struct.pov::Transform_Struct"* %51)
  %52 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %12, i32 0, i32 1
  %53 = getelementptr inbounds [3 x double], [3 x double]* %52, i32 0, i32 0
  call void @_ZN3pov7VLengthERdPKd(double* dereferenceable(8) %9, double* %53)
  %54 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %12, i32 0, i32 1
  %55 = getelementptr inbounds [3 x double], [3 x double]* %54, i32 0, i32 0
  %56 = load double, double* %9, align 8
  call void @_ZN3pov15VInverseScaleEqEPdd(double* %55, double %56)
  br label %60

; <label>:57:                                     ; preds = %22
  %58 = bitcast %"struct.pov::Ray_Struct"* %12 to i8*
  %59 = bitcast %"struct.pov::Ray_Struct"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 856, i32 8, i1 false)
  store double 1.000000e+00, double* %9, align 8
  br label %60

; <label>:60:                                     ; preds = %57, %37
  store i32 0, i32* %8, align 4
  %61 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %13, align 8
  %62 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %61, i32 0, i32 14
  %63 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %62, align 8
  %64 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %63, i32 0, i32 9
  %65 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %64, align 8
  %66 = icmp eq %"struct.pov::BBox_Tree_Struct"* %65, null
  br i1 %66, label %67, label %99

; <label>:67:                                     ; preds = %60
  store i32 0, i32* %7, align 4
  br label %68

; <label>:68:                                     ; preds = %93, %67
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %13, align 8
  %72 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %71, i32 0, i32 14
  %73 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %72, align 8
  %74 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %70, %75
  br i1 %76, label %77, label %96

; <label>:77:                                     ; preds = %68
  %78 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %13, align 8
  %79 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %13, align 8
  %80 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %79, i32 0, i32 14
  %81 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %80, align 8
  %82 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %81, i32 0, i32 8
  %83 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %83, i64 %85
  %87 = call i32 @_ZN3povL23intersect_mesh_triangleEPNS_10Ray_StructEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPd(%"struct.pov::Ray_Struct"* %12, %"struct.pov::Mesh_Struct"* %78, %"struct.pov::Mesh_Triangle_Struct"* %86, double* %10)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

; <label>:89:                                     ; preds = %77
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %92

; <label>:92:                                     ; preds = %89, %77
  br label %93

; <label>:93:                                     ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %68

; <label>:96:                                     ; preds = %68
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %102

; <label>:99:                                     ; preds = %60
  %100 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %13, align 8
  %101 = call i32 @_ZN3povL16inside_bbox_treeEPNS_11Mesh_StructEPNS_10Ray_StructE(%"struct.pov::Mesh_Struct"* %100, %"struct.pov::Ray_Struct"* %12)
  store i32 %101, i32* %6, align 4
  br label %102

; <label>:102:                                    ; preds = %99, %96
  %103 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %5, align 8
  %104 = getelementptr inbounds %"struct.pov::Object_Struct", %"struct.pov::Object_Struct"* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  %107 = and i64 %106, 4
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

; <label>:109:                                    ; preds = %102
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %6, align 4
  br label %114

; <label>:114:                                    ; preds = %109, %102
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

; <label>:116:                                    ; preds = %114, %21
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL11Mesh_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*) #0 {
  %4 = alloca double*, align 8
  %5 = alloca %"struct.pov::Object_Struct"*, align 8
  %6 = alloca %"struct.pov::istk_entry"*, align 8
  %7 = alloca [3 x double], align 16
  %8 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  %9 = alloca %"struct.pov::Mesh_Struct"*, align 8
  store double* %0, double** %4, align 8
  store %"struct.pov::Object_Struct"* %1, %"struct.pov::Object_Struct"** %5, align 8
  store %"struct.pov::istk_entry"* %2, %"struct.pov::istk_entry"** %6, align 8
  %10 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %5, align 8
  %11 = bitcast %"struct.pov::Object_Struct"* %10 to %"struct.pov::Mesh_Struct"*
  store %"struct.pov::Mesh_Struct"* %11, %"struct.pov::Mesh_Struct"** %9, align 8
  %12 = load %"struct.pov::istk_entry"*, %"struct.pov::istk_entry"** %6, align 8
  %13 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %12, i32 0, i32 17
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to %"struct.pov::Mesh_Triangle_Struct"*
  store %"struct.pov::Mesh_Triangle_Struct"* %15, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %16 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %17 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %16 to i8*
  %18 = load i8, i8* %17, align 8
  %19 = and i8 %18, 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %58

; <label>:22:                                     ; preds = %3
  %23 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %9, align 8
  %24 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %23, i32 0, i32 10
  %25 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %24, align 8
  %26 = icmp ne %"struct.pov::Transform_Struct"* %25, null
  br i1 %26, label %27, label %35

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds [3 x double], [3 x double]* %7, i32 0, i32 0
  %29 = load %"struct.pov::istk_entry"*, %"struct.pov::istk_entry"** %6, align 8
  %30 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %29, i32 0, i32 1
  %31 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 0
  %32 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %9, align 8
  %33 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %32, i32 0, i32 10
  %34 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %33, align 8
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(double* %28, double* %31, %"struct.pov::Transform_Struct"* %34)
  br label %40

; <label>:35:                                     ; preds = %22
  %36 = getelementptr inbounds [3 x double], [3 x double]* %7, i32 0, i32 0
  %37 = load %"struct.pov::istk_entry"*, %"struct.pov::istk_entry"** %6, align 8
  %38 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %37, i32 0, i32 1
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %36, double* %39)
  br label %40

; <label>:40:                                     ; preds = %35, %27
  %41 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %9, align 8
  %42 = load double*, double** %4, align 8
  %43 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %44 = getelementptr inbounds [3 x double], [3 x double]* %7, i32 0, i32 0
  call void @_ZN3povL18smooth_mesh_normalEPNS_11Mesh_StructEPdPNS_20Mesh_Triangle_StructES2_(%"struct.pov::Mesh_Struct"* %41, double* %42, %"struct.pov::Mesh_Triangle_Struct"* %43, double* %44)
  %45 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %9, align 8
  %46 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %45, i32 0, i32 10
  %47 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %46, align 8
  %48 = icmp ne %"struct.pov::Transform_Struct"* %47, null
  br i1 %48, label %49, label %55

; <label>:49:                                     ; preds = %40
  %50 = load double*, double** %4, align 8
  %51 = load double*, double** %4, align 8
  %52 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %9, align 8
  %53 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %52, i32 0, i32 10
  %54 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %53, align 8
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(double* %50, double* %51, %"struct.pov::Transform_Struct"* %54)
  br label %55

; <label>:55:                                     ; preds = %49, %40
  %56 = load double*, double** %4, align 8
  %57 = load double*, double** %4, align 8
  call void @_ZN3pov10VNormalizeEPdPKd(double* %56, double* %57)
  br label %83

; <label>:58:                                     ; preds = %3
  %59 = load double*, double** %4, align 8
  %60 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %9, align 8
  %61 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %60, i32 0, i32 14
  %62 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %61, align 8
  %63 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %62, i32 0, i32 5
  %64 = load [3 x float]*, [3 x float]** %63, align 8
  %65 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %66 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds [3 x float], [3 x float]* %64, i64 %67
  %69 = getelementptr inbounds [3 x float], [3 x float]* %68, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdPf(double* %59, float* %69)
  %70 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %9, align 8
  %71 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %70, i32 0, i32 10
  %72 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %71, align 8
  %73 = icmp ne %"struct.pov::Transform_Struct"* %72, null
  br i1 %73, label %74, label %82

; <label>:74:                                     ; preds = %58
  %75 = load double*, double** %4, align 8
  %76 = load double*, double** %4, align 8
  %77 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %9, align 8
  %78 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %77, i32 0, i32 10
  %79 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %78, align 8
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(double* %75, double* %76, %"struct.pov::Transform_Struct"* %79)
  %80 = load double*, double** %4, align 8
  %81 = load double*, double** %4, align 8
  call void @_ZN3pov10VNormalizeEPdPKd(double* %80, double* %81)
  br label %82

; <label>:82:                                     ; preds = %74, %58
  br label %83

; <label>:83:                                     ; preds = %82, %55
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL12Mesh_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*) #0 {
  %4 = alloca double*, align 8
  %5 = alloca %"struct.pov::Object_Struct"*, align 8
  %6 = alloca %"struct.pov::istk_entry"*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca [3 x double], align 16
  %13 = alloca [3 x double], align 16
  %14 = alloca [3 x double], align 16
  %15 = alloca [3 x double], align 16
  %16 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  %17 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %18 = alloca [3 x double], align 16
  store double* %0, double** %4, align 8
  store %"struct.pov::Object_Struct"* %1, %"struct.pov::Object_Struct"** %5, align 8
  store %"struct.pov::istk_entry"* %2, %"struct.pov::istk_entry"** %6, align 8
  %19 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %5, align 8
  %20 = bitcast %"struct.pov::Object_Struct"* %19 to %"struct.pov::Mesh_Struct"*
  store %"struct.pov::Mesh_Struct"* %20, %"struct.pov::Mesh_Struct"** %17, align 8
  %21 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %22 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %21, i32 0, i32 10
  %23 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %22, align 8
  %24 = icmp ne %"struct.pov::Transform_Struct"* %23, null
  br i1 %24, label %25, label %33

; <label>:25:                                     ; preds = %3
  %26 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  %27 = load %"struct.pov::istk_entry"*, %"struct.pov::istk_entry"** %6, align 8
  %28 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %27, i32 0, i32 1
  %29 = getelementptr inbounds [3 x double], [3 x double]* %28, i32 0, i32 0
  %30 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %31 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %30, i32 0, i32 10
  %32 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %31, align 8
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(double* %26, double* %29, %"struct.pov::Transform_Struct"* %32)
  br label %38

; <label>:33:                                     ; preds = %3
  %34 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  %35 = load %"struct.pov::istk_entry"*, %"struct.pov::istk_entry"** %6, align 8
  %36 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %35, i32 0, i32 1
  %37 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %34, double* %37)
  br label %38

; <label>:38:                                     ; preds = %33, %25
  %39 = load %"struct.pov::istk_entry"*, %"struct.pov::istk_entry"** %6, align 8
  %40 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %39, i32 0, i32 17
  %41 = load i8*, i8** %40, align 8
  %42 = bitcast i8* %41 to %"struct.pov::Mesh_Triangle_Struct"*
  store %"struct.pov::Mesh_Triangle_Struct"* %42, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %43 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %44 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %45 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %44, i32 0, i32 14
  %46 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %45, align 8
  %47 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %46, i32 0, i32 6
  %48 = load [3 x float]*, [3 x float]** %47, align 8
  %49 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %50 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [3 x float], [3 x float]* %48, i64 %51
  %53 = getelementptr inbounds [3 x float], [3 x float]* %52, i32 0, i32 0
  %54 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %55 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %54, i32 0, i32 14
  %56 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %55, align 8
  %57 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %56, i32 0, i32 6
  %58 = load [3 x float]*, [3 x float]** %57, align 8
  %59 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %60 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds [3 x float], [3 x float]* %58, i64 %61
  %63 = getelementptr inbounds [3 x float], [3 x float]* %62, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKfS2_(double* %43, float* %53, float* %63)
  %64 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  %65 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %66 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %65, i32 0, i32 14
  %67 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %66, align 8
  %68 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %67, i32 0, i32 6
  %69 = load [3 x float]*, [3 x float]** %68, align 8
  %70 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %71 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds [3 x float], [3 x float]* %69, i64 %72
  %74 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 0
  %75 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %76 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %75, i32 0, i32 14
  %77 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %76, align 8
  %78 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %77, i32 0, i32 6
  %79 = load [3 x float]*, [3 x float]** %78, align 8
  %80 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %81 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds [3 x float], [3 x float]* %79, i64 %82
  %84 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKfS2_(double* %64, float* %74, float* %84)
  %85 = getelementptr inbounds [3 x double], [3 x double]* %12, i32 0, i32 0
  %86 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  %87 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %88 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %87, i32 0, i32 14
  %89 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %88, align 8
  %90 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %89, i32 0, i32 6
  %91 = load [3 x float]*, [3 x float]** %90, align 8
  %92 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %93 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds [3 x float], [3 x float]* %91, i64 %94
  %96 = getelementptr inbounds [3 x float], [3 x float]* %95, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKdPKf(double* %85, double* %86, float* %96)
  %97 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  %98 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %10, double* %97, double* %98)
  %99 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %100 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %11, double* %99, double* %100)
  %101 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  %102 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %103 = load double, double* %10, align 8
  %104 = load double, double* %11, align 8
  %105 = fdiv double %103, %104
  call void @_ZN3pov6VScaleEPdPKdd(double* %101, double* %102, double %105)
  %106 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  %107 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  call void @_ZN3pov6VSubEqEPdPKd(double* %106, double* %107)
  %108 = getelementptr inbounds [3 x double], [3 x double]* %12, i32 0, i32 0
  %109 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %10, double* %108, double* %109)
  %110 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  %111 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %11, double* %110, double* %111)
  %112 = load double, double* %10, align 8
  %113 = load double, double* %11, align 8
  %114 = fdiv double %112, %113
  %115 = fadd double 1.000000e+00, %114
  store double %115, double* %7, align 8
  %116 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %117 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %118 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %117, i32 0, i32 14
  %119 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %118, align 8
  %120 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %119, i32 0, i32 6
  %121 = load [3 x float]*, [3 x float]** %120, align 8
  %122 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %123 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds [3 x float], [3 x float]* %121, i64 %124
  %126 = getelementptr inbounds [3 x float], [3 x float]* %125, i32 0, i32 0
  %127 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %128 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %127, i32 0, i32 14
  %129 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %128, align 8
  %130 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %129, i32 0, i32 6
  %131 = load [3 x float]*, [3 x float]** %130, align 8
  %132 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %133 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds [3 x float], [3 x float]* %131, i64 %134
  %136 = getelementptr inbounds [3 x float], [3 x float]* %135, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKfS2_(double* %116, float* %126, float* %136)
  %137 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  %138 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %139 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %138, i32 0, i32 14
  %140 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %139, align 8
  %141 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %140, i32 0, i32 6
  %142 = load [3 x float]*, [3 x float]** %141, align 8
  %143 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %144 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds [3 x float], [3 x float]* %142, i64 %145
  %147 = getelementptr inbounds [3 x float], [3 x float]* %146, i32 0, i32 0
  %148 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %149 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %148, i32 0, i32 14
  %150 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %149, align 8
  %151 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %150, i32 0, i32 6
  %152 = load [3 x float]*, [3 x float]** %151, align 8
  %153 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %154 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds [3 x float], [3 x float]* %152, i64 %155
  %157 = getelementptr inbounds [3 x float], [3 x float]* %156, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKfS2_(double* %137, float* %147, float* %157)
  %158 = getelementptr inbounds [3 x double], [3 x double]* %12, i32 0, i32 0
  %159 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  %160 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %161 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %160, i32 0, i32 14
  %162 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %161, align 8
  %163 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %162, i32 0, i32 6
  %164 = load [3 x float]*, [3 x float]** %163, align 8
  %165 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %166 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds [3 x float], [3 x float]* %164, i64 %167
  %169 = getelementptr inbounds [3 x float], [3 x float]* %168, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKdPKf(double* %158, double* %159, float* %169)
  %170 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  %171 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %10, double* %170, double* %171)
  %172 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %173 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %11, double* %172, double* %173)
  %174 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  %175 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %176 = load double, double* %10, align 8
  %177 = load double, double* %11, align 8
  %178 = fdiv double %176, %177
  call void @_ZN3pov6VScaleEPdPKdd(double* %174, double* %175, double %178)
  %179 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  %180 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  call void @_ZN3pov6VSubEqEPdPKd(double* %179, double* %180)
  %181 = getelementptr inbounds [3 x double], [3 x double]* %12, i32 0, i32 0
  %182 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %10, double* %181, double* %182)
  %183 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  %184 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %11, double* %183, double* %184)
  %185 = load double, double* %10, align 8
  %186 = load double, double* %11, align 8
  %187 = fdiv double %185, %186
  %188 = fadd double 1.000000e+00, %187
  store double %188, double* %8, align 8
  %189 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %190 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %191 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %190, i32 0, i32 14
  %192 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %191, align 8
  %193 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %192, i32 0, i32 6
  %194 = load [3 x float]*, [3 x float]** %193, align 8
  %195 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %196 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds [3 x float], [3 x float]* %194, i64 %197
  %199 = getelementptr inbounds [3 x float], [3 x float]* %198, i32 0, i32 0
  %200 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %201 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %200, i32 0, i32 14
  %202 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %201, align 8
  %203 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %202, i32 0, i32 6
  %204 = load [3 x float]*, [3 x float]** %203, align 8
  %205 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %206 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds [3 x float], [3 x float]* %204, i64 %207
  %209 = getelementptr inbounds [3 x float], [3 x float]* %208, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKfS2_(double* %189, float* %199, float* %209)
  %210 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  %211 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %212 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %211, i32 0, i32 14
  %213 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %212, align 8
  %214 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %213, i32 0, i32 6
  %215 = load [3 x float]*, [3 x float]** %214, align 8
  %216 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %217 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds [3 x float], [3 x float]* %215, i64 %218
  %220 = getelementptr inbounds [3 x float], [3 x float]* %219, i32 0, i32 0
  %221 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %222 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %221, i32 0, i32 14
  %223 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %222, align 8
  %224 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %223, i32 0, i32 6
  %225 = load [3 x float]*, [3 x float]** %224, align 8
  %226 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %227 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds [3 x float], [3 x float]* %225, i64 %228
  %230 = getelementptr inbounds [3 x float], [3 x float]* %229, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKfS2_(double* %210, float* %220, float* %230)
  %231 = getelementptr inbounds [3 x double], [3 x double]* %12, i32 0, i32 0
  %232 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  %233 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %234 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %233, i32 0, i32 14
  %235 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %234, align 8
  %236 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %235, i32 0, i32 6
  %237 = load [3 x float]*, [3 x float]** %236, align 8
  %238 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %239 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds [3 x float], [3 x float]* %237, i64 %240
  %242 = getelementptr inbounds [3 x float], [3 x float]* %241, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKdPKf(double* %231, double* %232, float* %242)
  %243 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  %244 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %10, double* %243, double* %244)
  %245 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %246 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %11, double* %245, double* %246)
  %247 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  %248 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %249 = load double, double* %10, align 8
  %250 = load double, double* %11, align 8
  %251 = fdiv double %249, %250
  call void @_ZN3pov6VScaleEPdPKdd(double* %247, double* %248, double %251)
  %252 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  %253 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  call void @_ZN3pov6VSubEqEPdPKd(double* %252, double* %253)
  %254 = getelementptr inbounds [3 x double], [3 x double]* %12, i32 0, i32 0
  %255 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %10, double* %254, double* %255)
  %256 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  %257 = getelementptr inbounds [3 x double], [3 x double]* %13, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %11, double* %256, double* %257)
  %258 = load double, double* %10, align 8
  %259 = load double, double* %11, align 8
  %260 = fdiv double %258, %259
  %261 = fadd double 1.000000e+00, %260
  store double %261, double* %9, align 8
  %262 = load double, double* %7, align 8
  %263 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %264 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %263, i32 0, i32 14
  %265 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %264, align 8
  %266 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %265, i32 0, i32 7
  %267 = load [2 x double]*, [2 x double]** %266, align 8
  %268 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %269 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %268, i32 0, i32 11
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds [2 x double], [2 x double]* %267, i64 %270
  %272 = getelementptr inbounds [2 x double], [2 x double]* %271, i64 0, i64 0
  %273 = load double, double* %272, align 8
  %274 = fmul double %262, %273
  %275 = load double, double* %8, align 8
  %276 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %277 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %276, i32 0, i32 14
  %278 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %277, align 8
  %279 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %278, i32 0, i32 7
  %280 = load [2 x double]*, [2 x double]** %279, align 8
  %281 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %282 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %281, i32 0, i32 12
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds [2 x double], [2 x double]* %280, i64 %283
  %285 = getelementptr inbounds [2 x double], [2 x double]* %284, i64 0, i64 0
  %286 = load double, double* %285, align 8
  %287 = fmul double %275, %286
  %288 = fadd double %274, %287
  %289 = load double, double* %9, align 8
  %290 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %291 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %290, i32 0, i32 14
  %292 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %291, align 8
  %293 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %292, i32 0, i32 7
  %294 = load [2 x double]*, [2 x double]** %293, align 8
  %295 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %296 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %295, i32 0, i32 13
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds [2 x double], [2 x double]* %294, i64 %297
  %299 = getelementptr inbounds [2 x double], [2 x double]* %298, i64 0, i64 0
  %300 = load double, double* %299, align 8
  %301 = fmul double %289, %300
  %302 = fadd double %288, %301
  %303 = load double*, double** %4, align 8
  %304 = getelementptr inbounds double, double* %303, i64 0
  store double %302, double* %304, align 8
  %305 = load double, double* %7, align 8
  %306 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %307 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %306, i32 0, i32 14
  %308 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %307, align 8
  %309 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %308, i32 0, i32 7
  %310 = load [2 x double]*, [2 x double]** %309, align 8
  %311 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %312 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %311, i32 0, i32 11
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds [2 x double], [2 x double]* %310, i64 %313
  %315 = getelementptr inbounds [2 x double], [2 x double]* %314, i64 0, i64 1
  %316 = load double, double* %315, align 8
  %317 = fmul double %305, %316
  %318 = load double, double* %8, align 8
  %319 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %320 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %319, i32 0, i32 14
  %321 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %320, align 8
  %322 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %321, i32 0, i32 7
  %323 = load [2 x double]*, [2 x double]** %322, align 8
  %324 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %325 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %324, i32 0, i32 12
  %326 = load i64, i64* %325, align 8
  %327 = getelementptr inbounds [2 x double], [2 x double]* %323, i64 %326
  %328 = getelementptr inbounds [2 x double], [2 x double]* %327, i64 0, i64 1
  %329 = load double, double* %328, align 8
  %330 = fmul double %318, %329
  %331 = fadd double %317, %330
  %332 = load double, double* %9, align 8
  %333 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %17, align 8
  %334 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %333, i32 0, i32 14
  %335 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %334, align 8
  %336 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %335, i32 0, i32 7
  %337 = load [2 x double]*, [2 x double]** %336, align 8
  %338 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %16, align 8
  %339 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %338, i32 0, i32 13
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds [2 x double], [2 x double]* %337, i64 %340
  %342 = getelementptr inbounds [2 x double], [2 x double]* %341, i64 0, i64 1
  %343 = load double, double* %342, align 8
  %344 = fmul double %332, %343
  %345 = fadd double %331, %344
  %346 = load double*, double** %4, align 8
  %347 = getelementptr inbounds double, double* %346, i64 1
  store double %345, double* %347, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal %"struct.pov::Mesh_Struct"* @_ZN3povL9Copy_MeshEPNS_13Object_StructE(%"struct.pov::Object_Struct"*) #0 {
  %2 = alloca %"struct.pov::Object_Struct"*, align 8
  %3 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %4 = alloca i32, align 4
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %2, align 8
  %5 = call %"struct.pov::Mesh_Struct"* @_ZN3pov11Create_MeshEv()
  store %"struct.pov::Mesh_Struct"* %5, %"struct.pov::Mesh_Struct"** %3, align 8
  %6 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %7 = bitcast %"struct.pov::Object_Struct"* %6 to %"struct.pov::Mesh_Struct"*
  %8 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %3, align 8
  %9 = bitcast %"struct.pov::Mesh_Struct"* %8 to i8*
  %10 = bitcast %"struct.pov::Mesh_Struct"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 152, i32 8, i1 false)
  %11 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %3, align 8
  %12 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %11, i32 0, i32 10
  %13 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %12, align 8
  %14 = call %"struct.pov::Transform_Struct"* @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(%"struct.pov::Transform_Struct"* %13)
  %15 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %3, align 8
  %16 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %15, i32 0, i32 10
  store %"struct.pov::Transform_Struct"* %14, %"struct.pov::Transform_Struct"** %16, align 8
  %17 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %3, align 8
  %18 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %17, i32 0, i32 14
  %19 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %18, align 8
  %20 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %24 = bitcast %"struct.pov::Object_Struct"* %23 to %"struct.pov::Mesh_Struct"*
  %25 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %24, i32 0, i32 16
  %26 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %25, align 8
  %27 = icmp ne %"struct.pov::Texture_Struct"** %26, null
  br i1 %27, label %28, label %66

; <label>:28:                                     ; preds = %1
  %29 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %30 = bitcast %"struct.pov::Object_Struct"* %29 to %"struct.pov::Mesh_Struct"*
  %31 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %30, i32 0, i32 15
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 %32, 8
  %34 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 800, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  %35 = bitcast i8* %34 to %"struct.pov::Texture_Struct"**
  %36 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %3, align 8
  %37 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %36, i32 0, i32 16
  store %"struct.pov::Texture_Struct"** %35, %"struct.pov::Texture_Struct"*** %37, align 8
  store i32 0, i32* %4, align 4
  br label %38

; <label>:38:                                     ; preds = %62, %28
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %42 = bitcast %"struct.pov::Object_Struct"* %41 to %"struct.pov::Mesh_Struct"*
  %43 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %42, i32 0, i32 15
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %40, %44
  br i1 %45, label %46, label %65

; <label>:46:                                     ; preds = %38
  %47 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %48 = bitcast %"struct.pov::Object_Struct"* %47 to %"struct.pov::Mesh_Struct"*
  %49 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %48, i32 0, i32 16
  %50 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %50, i64 %52
  %54 = load %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %53, align 8
  %55 = call %"struct.pov::Texture_Struct"* @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(%"struct.pov::Texture_Struct"* %54)
  %56 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %3, align 8
  %57 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %56, i32 0, i32 16
  %58 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %58, i64 %60
  store %"struct.pov::Texture_Struct"* %55, %"struct.pov::Texture_Struct"** %61, align 8
  br label %62

; <label>:62:                                     ; preds = %46
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %38

; <label>:65:                                     ; preds = %38
  br label %66

; <label>:66:                                     ; preds = %65, %1
  %67 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %3, align 8
  ret %"struct.pov::Mesh_Struct"* %67
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL14Translate_MeshEPNS_13Object_StructEPdPNS_16Transform_StructE(%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*) #0 {
  %4 = alloca %"struct.pov::Object_Struct"*, align 8
  %5 = alloca double*, align 8
  %6 = alloca %"struct.pov::Transform_Struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %4, align 8
  store double* %1, double** %5, align 8
  store %"struct.pov::Transform_Struct"* %2, %"struct.pov::Transform_Struct"** %6, align 8
  %7 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %4, align 8
  %8 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %6, align 8
  call void @_ZN3povL14Transform_MeshEPNS_13Object_StructEPNS_16Transform_StructE(%"struct.pov::Object_Struct"* %7, %"struct.pov::Transform_Struct"* %8)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL11Rotate_MeshEPNS_13Object_StructEPdPNS_16Transform_StructE(%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*) #0 {
  %4 = alloca %"struct.pov::Object_Struct"*, align 8
  %5 = alloca double*, align 8
  %6 = alloca %"struct.pov::Transform_Struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %4, align 8
  store double* %1, double** %5, align 8
  store %"struct.pov::Transform_Struct"* %2, %"struct.pov::Transform_Struct"** %6, align 8
  %7 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %4, align 8
  %8 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %6, align 8
  call void @_ZN3povL14Transform_MeshEPNS_13Object_StructEPNS_16Transform_StructE(%"struct.pov::Object_Struct"* %7, %"struct.pov::Transform_Struct"* %8)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL10Scale_MeshEPNS_13Object_StructEPdPNS_16Transform_StructE(%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*) #0 {
  %4 = alloca %"struct.pov::Object_Struct"*, align 8
  %5 = alloca double*, align 8
  %6 = alloca %"struct.pov::Transform_Struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %4, align 8
  store double* %1, double** %5, align 8
  store %"struct.pov::Transform_Struct"* %2, %"struct.pov::Transform_Struct"** %6, align 8
  %7 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %4, align 8
  %8 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %6, align 8
  call void @_ZN3povL14Transform_MeshEPNS_13Object_StructEPNS_16Transform_StructE(%"struct.pov::Object_Struct"* %7, %"struct.pov::Transform_Struct"* %8)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL14Transform_MeshEPNS_13Object_StructEPNS_16Transform_StructE(%"struct.pov::Object_Struct"*, %"struct.pov::Transform_Struct"*) #0 {
  %3 = alloca %"struct.pov::Object_Struct"*, align 8
  %4 = alloca %"struct.pov::Transform_Struct"*, align 8
  %5 = alloca i32, align 4
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %3, align 8
  store %"struct.pov::Transform_Struct"* %1, %"struct.pov::Transform_Struct"** %4, align 8
  %6 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %3, align 8
  %7 = bitcast %"struct.pov::Object_Struct"* %6 to %"struct.pov::Mesh_Struct"*
  %8 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %7, i32 0, i32 10
  %9 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %8, align 8
  %10 = icmp eq %"struct.pov::Transform_Struct"* %9, null
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %2
  %12 = call %"struct.pov::Transform_Struct"* @_ZN3pov16Create_TransformEv()
  %13 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %3, align 8
  %14 = bitcast %"struct.pov::Object_Struct"* %13 to %"struct.pov::Mesh_Struct"*
  %15 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %14, i32 0, i32 10
  store %"struct.pov::Transform_Struct"* %12, %"struct.pov::Transform_Struct"** %15, align 8
  br label %16

; <label>:16:                                     ; preds = %11, %2
  %17 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %3, align 8
  %18 = getelementptr inbounds %"struct.pov::Object_Struct", %"struct.pov::Object_Struct"* %17, i32 0, i32 9
  %19 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %4, align 8
  call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(%"struct.pov::Bounding_Box_Struct"* %18, %"struct.pov::Transform_Struct"* %19)
  %20 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %3, align 8
  %21 = bitcast %"struct.pov::Object_Struct"* %20 to %"struct.pov::Mesh_Struct"*
  %22 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %21, i32 0, i32 10
  %23 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %22, align 8
  %24 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %4, align 8
  call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(%"struct.pov::Transform_Struct"* %23, %"struct.pov::Transform_Struct"* %24)
  %25 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %3, align 8
  %26 = getelementptr inbounds %"struct.pov::Object_Struct", %"struct.pov::Object_Struct"* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 4
  %28 = zext i32 %27 to i64
  %29 = and i64 %28, 8192
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %54, label %31

; <label>:31:                                     ; preds = %16
  store i32 0, i32* %5, align 4
  br label %32

; <label>:32:                                     ; preds = %50, %31
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %3, align 8
  %36 = bitcast %"struct.pov::Object_Struct"* %35 to %"struct.pov::Mesh_Struct"*
  %37 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %36, i32 0, i32 15
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %53

; <label>:40:                                     ; preds = %32
  %41 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %3, align 8
  %42 = bitcast %"struct.pov::Object_Struct"* %41 to %"struct.pov::Mesh_Struct"*
  %43 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %42, i32 0, i32 16
  %44 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %44, i64 %46
  %48 = load %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %47, align 8
  %49 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %4, align 8
  call void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(%"struct.pov::Texture_Struct"* %48, %"struct.pov::Transform_Struct"* %49)
  br label %50

; <label>:50:                                     ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %32

; <label>:53:                                     ; preds = %32
  br label %54

; <label>:54:                                     ; preds = %53, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_ZN3povL11Invert_MeshEPNS_13Object_StructE(%"struct.pov::Object_Struct"*) #1 {
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
define internal void @_ZN3povL12Destroy_MeshEPNS_13Object_StructE(%"struct.pov::Object_Struct"*) #0 {
  %2 = alloca %"struct.pov::Object_Struct"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"struct.pov::Mesh_Struct"*, align 8
  store %"struct.pov::Object_Struct"* %0, %"struct.pov::Object_Struct"** %2, align 8
  %5 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %6 = bitcast %"struct.pov::Object_Struct"* %5 to %"struct.pov::Mesh_Struct"*
  store %"struct.pov::Mesh_Struct"* %6, %"struct.pov::Mesh_Struct"** %4, align 8
  %7 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %8 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %7, i32 0, i32 10
  %9 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %8, align 8
  call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(%"struct.pov::Transform_Struct"* %9)
  %10 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %11 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %10, i32 0, i32 16
  %12 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %11, align 8
  %13 = icmp ne %"struct.pov::Texture_Struct"** %12, null
  br i1 %13, label %14, label %40

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

; <label>:15:                                     ; preds = %30, %14
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %19 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %18, i32 0, i32 15
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %33

; <label>:22:                                     ; preds = %15
  %23 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %24 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %23, i32 0, i32 16
  %25 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %25, i64 %27
  %29 = load %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %28, align 8
  call void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(%"struct.pov::Texture_Struct"* %29)
  br label %30

; <label>:30:                                     ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %15

; <label>:33:                                     ; preds = %15
  %34 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %35 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %34, i32 0, i32 16
  %36 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %35, align 8
  %37 = bitcast %"struct.pov::Texture_Struct"** %36 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 853)
  %38 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %39 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %38, i32 0, i32 16
  store %"struct.pov::Texture_Struct"** null, %"struct.pov::Texture_Struct"*** %39, align 8
  br label %40

; <label>:40:                                     ; preds = %33, %1
  %41 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %42 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %41, i32 0, i32 14
  %43 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %42, align 8
  %44 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %132

; <label>:48:                                     ; preds = %40
  %49 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %50 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %49, i32 0, i32 14
  %51 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %50, align 8
  %52 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %51, i32 0, i32 9
  %53 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %52, align 8
  call void @_ZN3pov17Destroy_BBox_TreeEPNS_16BBox_Tree_StructE(%"struct.pov::BBox_Tree_Struct"* %53)
  %54 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %55 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %54, i32 0, i32 14
  %56 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %55, align 8
  %57 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %56, i32 0, i32 5
  %58 = load [3 x float]*, [3 x float]** %57, align 8
  %59 = icmp ne [3 x float]* %58, null
  br i1 %59, label %60, label %71

; <label>:60:                                     ; preds = %48
  %61 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %62 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %61, i32 0, i32 14
  %63 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %62, align 8
  %64 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %63, i32 0, i32 5
  %65 = load [3 x float]*, [3 x float]** %64, align 8
  %66 = bitcast [3 x float]* %65 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 862)
  %67 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %68 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %67, i32 0, i32 14
  %69 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %68, align 8
  %70 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %69, i32 0, i32 5
  store [3 x float]* null, [3 x float]** %70, align 8
  br label %71

; <label>:71:                                     ; preds = %60, %48
  %72 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %73 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %72, i32 0, i32 14
  %74 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %73, align 8
  %75 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %74, i32 0, i32 7
  %76 = load [2 x double]*, [2 x double]** %75, align 8
  %77 = icmp ne [2 x double]* %76, null
  br i1 %77, label %78, label %89

; <label>:78:                                     ; preds = %71
  %79 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %80 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %79, i32 0, i32 14
  %81 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %80, align 8
  %82 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %81, i32 0, i32 7
  %83 = load [2 x double]*, [2 x double]** %82, align 8
  %84 = bitcast [2 x double]* %83 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 868)
  %85 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %86 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %85, i32 0, i32 14
  %87 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %86, align 8
  %88 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %87, i32 0, i32 7
  store [2 x double]* null, [2 x double]** %88, align 8
  br label %89

; <label>:89:                                     ; preds = %78, %71
  %90 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %91 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %90, i32 0, i32 14
  %92 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %91, align 8
  %93 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %92, i32 0, i32 6
  %94 = load [3 x float]*, [3 x float]** %93, align 8
  %95 = icmp ne [3 x float]* %94, null
  br i1 %95, label %96, label %107

; <label>:96:                                     ; preds = %89
  %97 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %98 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %97, i32 0, i32 14
  %99 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %98, align 8
  %100 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %99, i32 0, i32 6
  %101 = load [3 x float]*, [3 x float]** %100, align 8
  %102 = bitcast [3 x float]* %101 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 874)
  %103 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %104 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %103, i32 0, i32 14
  %105 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %104, align 8
  %106 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %105, i32 0, i32 6
  store [3 x float]* null, [3 x float]** %106, align 8
  br label %107

; <label>:107:                                    ; preds = %96, %89
  %108 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %109 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %108, i32 0, i32 14
  %110 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %109, align 8
  %111 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %110, i32 0, i32 8
  %112 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %111, align 8
  %113 = icmp ne %"struct.pov::Mesh_Triangle_Struct"* %112, null
  br i1 %113, label %114, label %125

; <label>:114:                                    ; preds = %107
  %115 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %116 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %115, i32 0, i32 14
  %117 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %116, align 8
  %118 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %117, i32 0, i32 8
  %119 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %118, align 8
  %120 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %119 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 879)
  %121 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %122 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %121, i32 0, i32 14
  %123 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %122, align 8
  %124 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %123, i32 0, i32 8
  store %"struct.pov::Mesh_Triangle_Struct"* null, %"struct.pov::Mesh_Triangle_Struct"** %124, align 8
  br label %125

; <label>:125:                                    ; preds = %114, %107
  %126 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %127 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %126, i32 0, i32 14
  %128 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %127, align 8
  %129 = bitcast %"struct.pov::Mesh_Data_Struct"* %128 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 882)
  %130 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %131 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %130, i32 0, i32 14
  store %"struct.pov::Mesh_Data_Struct"* null, %"struct.pov::Mesh_Data_Struct"** %131, align 8
  br label %132

; <label>:132:                                    ; preds = %125, %40
  %133 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %2, align 8
  %134 = bitcast %"struct.pov::Object_Struct"* %133 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 885)
  store %"struct.pov::Object_Struct"* null, %"struct.pov::Object_Struct"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define %"struct.pov::Mesh_Struct"* @_ZN3pov11Create_MeshEv() #0 {
  %1 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %2 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 731, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0))
  %3 = bitcast i8* %2 to %"struct.pov::Mesh_Struct"*
  store %"struct.pov::Mesh_Struct"* %3, %"struct.pov::Mesh_Struct"** %1, align 8
  %4 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %5 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %4, i32 0, i32 1
  store i32 513, i32* %5, align 8
  %6 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %7 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %6, i32 0, i32 0
  store %"struct.pov::Method_Struct"* bitcast ({ i32 (%"struct.pov::Object_Struct"*, %"struct.pov::Ray_Struct"*, %"struct.pov::istack_struct"*)*, i32 (double*, %"struct.pov::Object_Struct"*)*, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)*, void (double*, %"struct.pov::Object_Struct"*, %"struct.pov::istk_entry"*)*, i8* (%"struct.pov::Object_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, double*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*, %"struct.pov::Transform_Struct"*)*, void (%"struct.pov::Object_Struct"*)*, void (%"struct.pov::Object_Struct"*)* }* @_ZN3pov12Mesh_MethodsE to %"struct.pov::Method_Struct"*), %"struct.pov::Method_Struct"** %7, align 8
  %8 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %9 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %8, i32 0, i32 2
  store %"struct.pov::Object_Struct"* null, %"struct.pov::Object_Struct"** %9, align 8
  %10 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %11 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %10, i32 0, i32 3
  store %"struct.pov::Texture_Struct"* null, %"struct.pov::Texture_Struct"** %11, align 8
  %12 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %13 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %12, i32 0, i32 4
  store %"struct.pov::Texture_Struct"* null, %"struct.pov::Texture_Struct"** %13, align 8
  %14 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %15 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %14, i32 0, i32 5
  store %"struct.pov::Interior_Struct"* null, %"struct.pov::Interior_Struct"** %15, align 8
  %16 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %17 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %16, i32 0, i32 6
  store %"struct.pov::Object_Struct"* null, %"struct.pov::Object_Struct"** %17, align 8
  %18 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %19 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %18, i32 0, i32 7
  store %"struct.pov::Object_Struct"* null, %"struct.pov::Object_Struct"** %19, align 8
  %20 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %21 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %20, i32 0, i32 8
  store %"struct.pov::Light_Source_Struct"* null, %"struct.pov::Light_Source_Struct"** %21, align 8
  %22 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %23 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %22, i32 0, i32 10
  store %"struct.pov::Transform_Struct"* null, %"struct.pov::Transform_Struct"** %23, align 8
  %24 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %25 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %24, i32 0, i32 11
  store %"struct.pov::Transform_Struct"* null, %"struct.pov::Transform_Struct"** %25, align 8
  %26 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %27 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %26, i32 0, i32 12
  store float 0.000000e+00, float* %27, align 8
  %28 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %29 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %28, i32 0, i32 13
  store i32 0, i32* %29, align 4
  %30 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %31 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %30, i32 0, i32 9
  call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(%"struct.pov::Bounding_Box_Struct"* dereferenceable(24) %31, float -1.000000e+10, float -1.000000e+10, float -1.000000e+10, float 2.000000e+10, float 2.000000e+10, float 2.000000e+10)
  %32 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %33 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 4
  %35 = zext i32 %34 to i64
  %36 = or i64 %35, 1024
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %39 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %38, i32 0, i32 10
  store %"struct.pov::Transform_Struct"* null, %"struct.pov::Transform_Struct"** %39, align 8
  %40 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %41 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %40, i32 0, i32 14
  store %"struct.pov::Mesh_Data_Struct"* null, %"struct.pov::Mesh_Data_Struct"** %41, align 8
  %42 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %43 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %42, i32 0, i32 17
  store i16 0, i16* %43, align 8
  %44 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %45 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %44, i32 0, i32 15
  store i64 0, i64* %45, align 8
  %46 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  %47 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %46, i32 0, i32 16
  store %"struct.pov::Texture_Struct"** null, %"struct.pov::Texture_Struct"*** %47, align 8
  %48 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %1, align 8
  ret %"struct.pov::Mesh_Struct"* %48
}

declare i8* @_ZN3pov10pov_mallocEmPKciS1_(i64, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(%"struct.pov::Bounding_Box_Struct"* dereferenceable(24), float, float, float, float, float, float) #1 comdat {
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

; Function Attrs: noinline uwtable
define void @_ZN3pov17Compute_Mesh_BBoxEPNS_11Mesh_StructE(%"struct.pov::Mesh_Struct"*) #0 {
  %2 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  store %"struct.pov::Mesh_Struct"* %0, %"struct.pov::Mesh_Struct"** %2, align 8
  %9 = getelementptr inbounds [3 x double], [3 x double]* %7, i32 0, i32 0
  call void @_ZN3pov11Make_VectorEPdddd(double* %9, double 2.000000e+10, double 2.000000e+10, double 2.000000e+10)
  %10 = getelementptr inbounds [3 x double], [3 x double]* %8, i32 0, i32 0
  call void @_ZN3pov11Make_VectorEPdddd(double* %10, double -2.000000e+10, double -2.000000e+10, double -2.000000e+10)
  store i32 0, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %87, %1
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %15 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %14, i32 0, i32 14
  %16 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %15, align 8
  %17 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %13, %18
  br i1 %19, label %20, label %90

; <label>:20:                                     ; preds = %11
  %21 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %22 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %23 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %22, i32 0, i32 14
  %24 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %23, align 8
  %25 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %24, i32 0, i32 8
  %26 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %26, i64 %28
  %30 = getelementptr inbounds [3 x double], [3 x double]* %4, i32 0, i32 0
  %31 = getelementptr inbounds [3 x double], [3 x double]* %5, i32 0, i32 0
  %32 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @_ZN3povL21get_triangle_verticesEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPdS4_S4_(%"struct.pov::Mesh_Struct"* %21, %"struct.pov::Mesh_Triangle_Struct"* %29, double* %30, double* %31, double* %32)
  %33 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %34 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %35 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %36 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %37 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %35, double* dereferenceable(8) %36)
  %38 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %34, double* dereferenceable(8) %37)
  %39 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %33, double* dereferenceable(8) %38)
  %40 = load double, double* %39, align 8
  %41 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  store double %40, double* %41, align 16
  %42 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %43 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  %44 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 1
  %45 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  %46 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %44, double* dereferenceable(8) %45)
  %47 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %43, double* dereferenceable(8) %46)
  %48 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %42, double* dereferenceable(8) %47)
  %49 = load double, double* %48, align 8
  %50 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  store double %49, double* %50, align 8
  %51 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  %52 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  %53 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 2
  %54 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  %55 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %53, double* dereferenceable(8) %54)
  %56 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %52, double* dereferenceable(8) %55)
  %57 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %51, double* dereferenceable(8) %56)
  %58 = load double, double* %57, align 8
  %59 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  store double %58, double* %59, align 16
  %60 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %61 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %62 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0
  %63 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %64 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %62, double* dereferenceable(8) %63)
  %65 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %61, double* dereferenceable(8) %64)
  %66 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %60, double* dereferenceable(8) %65)
  %67 = load double, double* %66, align 8
  %68 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  store double %67, double* %68, align 16
  %69 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %70 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  %71 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 1
  %72 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  %73 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %71, double* dereferenceable(8) %72)
  %74 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %70, double* dereferenceable(8) %73)
  %75 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %69, double* dereferenceable(8) %74)
  %76 = load double, double* %75, align 8
  %77 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  store double %76, double* %77, align 8
  %78 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  %79 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  %80 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 2
  %81 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  %82 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %80, double* dereferenceable(8) %81)
  %83 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %79, double* dereferenceable(8) %82)
  %84 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %78, double* dereferenceable(8) %83)
  %85 = load double, double* %84, align 8
  %86 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  store double %85, double* %86, align 16
  br label %87

; <label>:87:                                     ; preds = %20
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %11

; <label>:90:                                     ; preds = %11
  %91 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %92 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %91, i32 0, i32 9
  %93 = getelementptr inbounds [3 x double], [3 x double]* %7, i32 0, i32 0
  %94 = getelementptr inbounds [3 x double], [3 x double]* %8, i32 0, i32 0
  call void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(%"struct.pov::Bounding_Box_Struct"* dereferenceable(24) %92, double* %93, double* %94)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov11Make_VectorEPdddd(double*, double, double, double) #1 comdat {
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

; Function Attrs: noinline nounwind uwtable
define internal void @_ZN3povL21get_triangle_verticesEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPdS4_S4_(%"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Triangle_Struct"*, double*, double*, double*) #1 {
  %6 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %7 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  store %"struct.pov::Mesh_Struct"* %0, %"struct.pov::Mesh_Struct"** %6, align 8
  store %"struct.pov::Mesh_Triangle_Struct"* %1, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %11 = load double*, double** %8, align 8
  %12 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %13 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %12, i32 0, i32 14
  %14 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %13, align 8
  %15 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %14, i32 0, i32 6
  %16 = load [3 x float]*, [3 x float]** %15, align 8
  %17 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %18 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 %19
  %21 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdPf(double* %11, float* %21)
  %22 = load double*, double** %9, align 8
  %23 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %24 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %23, i32 0, i32 14
  %25 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %24, align 8
  %26 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %25, i32 0, i32 6
  %27 = load [3 x float]*, [3 x float]** %26, align 8
  %28 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %29 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds [3 x float], [3 x float]* %27, i64 %30
  %32 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdPf(double* %22, float* %32)
  %33 = load double*, double** %10, align 8
  %34 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %35 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %34, i32 0, i32 14
  %36 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %35, align 8
  %37 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %36, i32 0, i32 6
  %38 = load [3 x float]*, [3 x float]** %37, align 8
  %39 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %40 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [3 x float], [3 x float]* %38, i64 %41
  %43 = getelementptr inbounds [3 x float], [3 x float]* %42, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdPf(double* %33, float* %43)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8), double* dereferenceable(8)) #1 comdat {
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8), double* dereferenceable(8)) #1 comdat {
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(%"struct.pov::Bounding_Box_Struct"* dereferenceable(24), double*, double*) #1 comdat {
  %4 = alloca %"struct.pov::Bounding_Box_Struct"*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store %"struct.pov::Bounding_Box_Struct"* %0, %"struct.pov::Bounding_Box_Struct"** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load double*, double** %5, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  %9 = load double, double* %8, align 8
  %10 = fptrunc double %9 to float
  %11 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %4, align 8
  %12 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %11, i32 0, i32 0
  %13 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  store float %10, float* %13, align 4
  %14 = load double*, double** %5, align 8
  %15 = getelementptr inbounds double, double* %14, i64 1
  %16 = load double, double* %15, align 8
  %17 = fptrunc double %16 to float
  %18 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %4, align 8
  %19 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %18, i32 0, i32 0
  %20 = getelementptr inbounds [3 x float], [3 x float]* %19, i64 0, i64 1
  store float %17, float* %20, align 4
  %21 = load double*, double** %5, align 8
  %22 = getelementptr inbounds double, double* %21, i64 2
  %23 = load double, double* %22, align 8
  %24 = fptrunc double %23 to float
  %25 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %4, align 8
  %26 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %25, i32 0, i32 0
  %27 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 2
  store float %24, float* %27, align 4
  %28 = load double*, double** %6, align 8
  %29 = getelementptr inbounds double, double* %28, i64 0
  %30 = load double, double* %29, align 8
  %31 = load double*, double** %5, align 8
  %32 = getelementptr inbounds double, double* %31, i64 0
  %33 = load double, double* %32, align 8
  %34 = fsub double %30, %33
  %35 = fptrunc double %34 to float
  %36 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %4, align 8
  %37 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %36, i32 0, i32 1
  %38 = getelementptr inbounds [3 x float], [3 x float]* %37, i64 0, i64 0
  store float %35, float* %38, align 4
  %39 = load double*, double** %6, align 8
  %40 = getelementptr inbounds double, double* %39, i64 1
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %5, align 8
  %43 = getelementptr inbounds double, double* %42, i64 1
  %44 = load double, double* %43, align 8
  %45 = fsub double %41, %44
  %46 = fptrunc double %45 to float
  %47 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %4, align 8
  %48 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %47, i32 0, i32 1
  %49 = getelementptr inbounds [3 x float], [3 x float]* %48, i64 0, i64 1
  store float %46, float* %49, align 4
  %50 = load double*, double** %6, align 8
  %51 = getelementptr inbounds double, double* %50, i64 2
  %52 = load double, double* %51, align 8
  %53 = load double*, double** %5, align 8
  %54 = getelementptr inbounds double, double* %53, i64 2
  %55 = load double, double* %54, align 8
  %56 = fsub double %52, %55
  %57 = fptrunc double %56 to float
  %58 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %4, align 8
  %59 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", %"struct.pov::Bounding_Box_Struct"* %58, i32 0, i32 1
  %60 = getelementptr inbounds [3 x float], [3 x float]* %59, i64 0, i64 2
  store float %57, float* %60, align 4
  ret void
}

; Function Attrs: noinline uwtable
define i32 @_ZN3pov21Compute_Mesh_TriangleEPNS_20Mesh_Triangle_StructEiPdS2_S2_S2_(%"struct.pov::Mesh_Triangle_Struct"*, i32, double*, double*, double*, double*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca [3 x double], align 16
  %20 = alloca [3 x double], align 16
  %21 = alloca [3 x double], align 16
  %22 = alloca double, align 8
  store %"struct.pov::Mesh_Triangle_Struct"* %0, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  store i32 %1, i32* %9, align 4
  store double* %2, double** %10, align 8
  store double* %3, double** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  %23 = getelementptr inbounds [3 x double], [3 x double]* %19, i32 0, i32 0
  %24 = load double*, double** %11, align 8
  %25 = load double*, double** %10, align 8
  call void @_ZN3pov4VSubEPdPKdS2_(double* %23, double* %24, double* %25)
  %26 = getelementptr inbounds [3 x double], [3 x double]* %20, i32 0, i32 0
  %27 = load double*, double** %12, align 8
  %28 = load double*, double** %10, align 8
  call void @_ZN3pov4VSubEPdPKdS2_(double* %26, double* %27, double* %28)
  %29 = load double*, double** %13, align 8
  %30 = getelementptr inbounds [3 x double], [3 x double]* %20, i32 0, i32 0
  %31 = getelementptr inbounds [3 x double], [3 x double]* %19, i32 0, i32 0
  call void @_ZN3pov6VCrossEPdPKdS2_(double* %29, double* %30, double* %31)
  %32 = load double*, double** %13, align 8
  call void @_ZN3pov7VLengthERdPKd(double* dereferenceable(8) %22, double* %32)
  %33 = load double, double* %22, align 8
  %34 = fcmp oeq double %33, 0.000000e+00
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %6
  store i32 0, i32* %7, align 4
  br label %281

; <label>:36:                                     ; preds = %6
  %37 = load double*, double** %13, align 8
  %38 = load double, double* %22, align 8
  call void @_ZN3pov15VInverseScaleEqEPdd(double* %37, double %38)
  %39 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %40 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %39, i32 0, i32 14
  %41 = load double*, double** %13, align 8
  %42 = load double*, double** %10, align 8
  call void @_ZN3pov4VDotERfPKdS2_(float* dereferenceable(4) %40, double* %41, double* %42)
  %43 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %44 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %43, i32 0, i32 14
  %45 = load float, float* %44, align 8
  %46 = fpext float %45 to double
  %47 = fmul double %46, -1.000000e+00
  %48 = fptrunc double %47 to float
  store float %48, float* %44, align 8
  %49 = load double*, double** %13, align 8
  %50 = getelementptr inbounds double, double* %49, i64 0
  %51 = load double, double* %50, align 8
  %52 = call double @fabs(double %51) #6
  store double %52, double* %16, align 8
  %53 = load double*, double** %13, align 8
  %54 = getelementptr inbounds double, double* %53, i64 1
  %55 = load double, double* %54, align 8
  %56 = call double @fabs(double %55) #6
  store double %56, double* %17, align 8
  %57 = load double*, double** %13, align 8
  %58 = getelementptr inbounds double, double* %57, i64 2
  %59 = load double, double* %58, align 8
  %60 = call double @fabs(double %59) #6
  store double %60, double* %18, align 8
  %61 = load double, double* %16, align 8
  %62 = load double, double* %17, align 8
  %63 = fcmp ogt double %61, %62
  br i1 %63, label %64, label %69

; <label>:64:                                     ; preds = %36
  %65 = load double, double* %16, align 8
  %66 = load double, double* %18, align 8
  %67 = fcmp ogt double %65, %66
  %68 = select i1 %67, i32 0, i32 2
  br label %74

; <label>:69:                                     ; preds = %36
  %70 = load double, double* %17, align 8
  %71 = load double, double* %18, align 8
  %72 = fcmp ogt double %70, %71
  %73 = select i1 %72, i32 1, i32 2
  br label %74

; <label>:74:                                     ; preds = %69, %64
  %75 = phi i32 [ %68, %64 ], [ %73, %69 ]
  %76 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %77 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %76 to i8*
  %78 = trunc i32 %75 to i8
  %79 = load i8, i8* %77, align 8
  %80 = and i8 %78, 3
  %81 = shl i8 %80, 1
  %82 = and i8 %79, -7
  %83 = or i8 %82, %81
  store i8 %83, i8* %77, align 8
  store i32 0, i32* %15, align 4
  %84 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %85 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %84 to i8*
  %86 = load i8, i8* %85, align 8
  %87 = lshr i8 %86, 1
  %88 = and i8 %87, 3
  %89 = zext i8 %88 to i32
  switch i32 %89, label %192 [
    i32 0, label %90
    i32 1, label %124
    i32 2, label %158
  ]

; <label>:90:                                     ; preds = %74
  %91 = load double*, double** %11, align 8
  %92 = getelementptr inbounds double, double* %91, i64 1
  %93 = load double, double* %92, align 8
  %94 = load double*, double** %12, align 8
  %95 = getelementptr inbounds double, double* %94, i64 1
  %96 = load double, double* %95, align 8
  %97 = fsub double %93, %96
  %98 = load double*, double** %11, align 8
  %99 = getelementptr inbounds double, double* %98, i64 2
  %100 = load double, double* %99, align 8
  %101 = load double*, double** %10, align 8
  %102 = getelementptr inbounds double, double* %101, i64 2
  %103 = load double, double* %102, align 8
  %104 = fsub double %100, %103
  %105 = fmul double %97, %104
  %106 = load double*, double** %11, align 8
  %107 = getelementptr inbounds double, double* %106, i64 2
  %108 = load double, double* %107, align 8
  %109 = load double*, double** %12, align 8
  %110 = getelementptr inbounds double, double* %109, i64 2
  %111 = load double, double* %110, align 8
  %112 = fsub double %108, %111
  %113 = load double*, double** %11, align 8
  %114 = getelementptr inbounds double, double* %113, i64 1
  %115 = load double, double* %114, align 8
  %116 = load double*, double** %10, align 8
  %117 = getelementptr inbounds double, double* %116, i64 1
  %118 = load double, double* %117, align 8
  %119 = fsub double %115, %118
  %120 = fmul double %112, %119
  %121 = fcmp olt double %105, %120
  br i1 %121, label %122, label %123

; <label>:122:                                    ; preds = %90
  store i32 1, i32* %15, align 4
  br label %123

; <label>:123:                                    ; preds = %122, %90
  br label %192

; <label>:124:                                    ; preds = %74
  %125 = load double*, double** %11, align 8
  %126 = getelementptr inbounds double, double* %125, i64 0
  %127 = load double, double* %126, align 8
  %128 = load double*, double** %12, align 8
  %129 = getelementptr inbounds double, double* %128, i64 0
  %130 = load double, double* %129, align 8
  %131 = fsub double %127, %130
  %132 = load double*, double** %11, align 8
  %133 = getelementptr inbounds double, double* %132, i64 2
  %134 = load double, double* %133, align 8
  %135 = load double*, double** %10, align 8
  %136 = getelementptr inbounds double, double* %135, i64 2
  %137 = load double, double* %136, align 8
  %138 = fsub double %134, %137
  %139 = fmul double %131, %138
  %140 = load double*, double** %11, align 8
  %141 = getelementptr inbounds double, double* %140, i64 2
  %142 = load double, double* %141, align 8
  %143 = load double*, double** %12, align 8
  %144 = getelementptr inbounds double, double* %143, i64 2
  %145 = load double, double* %144, align 8
  %146 = fsub double %142, %145
  %147 = load double*, double** %11, align 8
  %148 = getelementptr inbounds double, double* %147, i64 0
  %149 = load double, double* %148, align 8
  %150 = load double*, double** %10, align 8
  %151 = getelementptr inbounds double, double* %150, i64 0
  %152 = load double, double* %151, align 8
  %153 = fsub double %149, %152
  %154 = fmul double %146, %153
  %155 = fcmp olt double %139, %154
  br i1 %155, label %156, label %157

; <label>:156:                                    ; preds = %124
  store i32 1, i32* %15, align 4
  br label %157

; <label>:157:                                    ; preds = %156, %124
  br label %192

; <label>:158:                                    ; preds = %74
  %159 = load double*, double** %11, align 8
  %160 = getelementptr inbounds double, double* %159, i64 0
  %161 = load double, double* %160, align 8
  %162 = load double*, double** %12, align 8
  %163 = getelementptr inbounds double, double* %162, i64 0
  %164 = load double, double* %163, align 8
  %165 = fsub double %161, %164
  %166 = load double*, double** %11, align 8
  %167 = getelementptr inbounds double, double* %166, i64 1
  %168 = load double, double* %167, align 8
  %169 = load double*, double** %10, align 8
  %170 = getelementptr inbounds double, double* %169, i64 1
  %171 = load double, double* %170, align 8
  %172 = fsub double %168, %171
  %173 = fmul double %165, %172
  %174 = load double*, double** %11, align 8
  %175 = getelementptr inbounds double, double* %174, i64 1
  %176 = load double, double* %175, align 8
  %177 = load double*, double** %12, align 8
  %178 = getelementptr inbounds double, double* %177, i64 1
  %179 = load double, double* %178, align 8
  %180 = fsub double %176, %179
  %181 = load double*, double** %11, align 8
  %182 = getelementptr inbounds double, double* %181, i64 0
  %183 = load double, double* %182, align 8
  %184 = load double*, double** %10, align 8
  %185 = getelementptr inbounds double, double* %184, i64 0
  %186 = load double, double* %185, align 8
  %187 = fsub double %183, %186
  %188 = fmul double %180, %187
  %189 = fcmp olt double %173, %188
  br i1 %189, label %190, label %191

; <label>:190:                                    ; preds = %158
  store i32 1, i32* %15, align 4
  br label %191

; <label>:191:                                    ; preds = %190, %158
  br label %192

; <label>:192:                                    ; preds = %191, %157, %123, %74
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %267

; <label>:195:                                    ; preds = %192
  %196 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %197 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %14, align 4
  %200 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %201 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %204 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %203, i32 0, i32 3
  store i64 %202, i64* %204, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %208 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  %209 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %210 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %209, i32 0, i32 12
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %14, align 4
  %213 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %214 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %213, i32 0, i32 11
  %215 = load i64, i64* %214, align 8
  %216 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %217 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %216, i32 0, i32 12
  store i64 %215, i64* %217, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %221 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %220, i32 0, i32 11
  store i64 %219, i64* %221, align 8
  %222 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %223 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %222 to i8*
  %224 = load i8, i8* %223, align 8
  %225 = lshr i8 %224, 5
  %226 = and i8 %225, 1
  %227 = zext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %243

; <label>:229:                                    ; preds = %195
  %230 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %231 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %14, align 4
  %234 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %235 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %238 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %237, i32 0, i32 6
  store i64 %236, i64* %238, align 8
  %239 = load i32, i32* %14, align 4
  %240 = sext i32 %239 to i64
  %241 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %242 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %241, i32 0, i32 5
  store i64 %240, i64* %242, align 8
  br label %243

; <label>:243:                                    ; preds = %229, %195
  %244 = getelementptr inbounds [3 x double], [3 x double]* %21, i32 0, i32 0
  %245 = load double*, double** %10, align 8
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %244, double* %245)
  %246 = load double*, double** %10, align 8
  %247 = load double*, double** %11, align 8
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %246, double* %247)
  %248 = load double*, double** %11, align 8
  %249 = getelementptr inbounds [3 x double], [3 x double]* %21, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %248, double* %249)
  %250 = load i32, i32* %9, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %266

; <label>:252:                                    ; preds = %243
  %253 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %254 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %253, i32 0, i32 9
  %255 = load i64, i64* %254, align 8
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %14, align 4
  %257 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %258 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %257, i32 0, i32 8
  %259 = load i64, i64* %258, align 8
  %260 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %261 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %260, i32 0, i32 9
  store i64 %259, i64* %261, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %265 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %264, i32 0, i32 8
  store i64 %263, i64* %265, align 8
  br label %266

; <label>:266:                                    ; preds = %252, %243
  br label %267

; <label>:267:                                    ; preds = %266, %192
  %268 = load i32, i32* %9, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

; <label>:270:                                    ; preds = %267
  %271 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %272 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %271 to i8*
  %273 = load i8, i8* %272, align 8
  %274 = and i8 %273, -2
  %275 = or i8 %274, 1
  store i8 %275, i8* %272, align 8
  br label %276

; <label>:276:                                    ; preds = %270, %267
  %277 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %278 = load double*, double** %10, align 8
  %279 = load double*, double** %11, align 8
  %280 = load double*, double** %12, align 8
  call void @_ZN3povL23compute_smooth_triangleEPNS_20Mesh_Triangle_StructEPdS2_S2_(%"struct.pov::Mesh_Triangle_Struct"* %277, double* %278, double* %279, double* %280)
  store i32 1, i32* %7, align 4
  br label %281

; <label>:281:                                    ; preds = %276, %35
  %282 = load i32, i32* %7, align 4
  ret i32 %282
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov4VSubEPdPKdS2_(double*, double*, double*) #1 comdat {
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

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN3pov6VCrossEPdPKdS2_(double*, double*, double*) #0 comdat {
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
define linkonce_odr void @_ZN3pov7VLengthERdPKd(double* dereferenceable(8), double*) #1 comdat {
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
define linkonce_odr void @_ZN3pov15VInverseScaleEqEPdd(double*, double) #1 comdat {
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

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov4VDotERfPKdS2_(float* dereferenceable(4), double*, double*) #1 comdat {
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
  %30 = fptrunc double %29 to float
  %31 = load float*, float** %4, align 8
  store float %30, float* %31, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov13Assign_VectorEPdS0_(double*, double*) #1 comdat {
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

; Function Attrs: noinline uwtable
define internal void @_ZN3povL23compute_smooth_triangleEPNS_20Mesh_Triangle_StructEPdS2_S2_(%"struct.pov::Mesh_Triangle_Struct"*, double*, double*, double*) #0 {
  %5 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store %"struct.pov::Mesh_Triangle_Struct"* %0, %"struct.pov::Mesh_Triangle_Struct"** %5, align 8
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %17 = getelementptr inbounds [3 x double], [3 x double]* %9, i32 0, i32 0
  %18 = load double*, double** %8, align 8
  %19 = load double*, double** %7, align 8
  call void @_ZN3pov4VSubEPdPKdS2_(double* %17, double* %18, double* %19)
  %20 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  %21 = load double, double* %20, align 16
  %22 = call double @fabs(double %21) #6
  store double %22, double* %12, align 8
  %23 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 1
  %24 = load double, double* %23, align 8
  %25 = call double @fabs(double %24) #6
  store double %25, double* %13, align 8
  %26 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 2
  %27 = load double, double* %26, align 16
  %28 = call double @fabs(double %27) #6
  store double %28, double* %14, align 8
  %29 = load double, double* %12, align 8
  %30 = load double, double* %13, align 8
  %31 = fcmp ogt double %29, %30
  br i1 %31, label %32, label %37

; <label>:32:                                     ; preds = %4
  %33 = load double, double* %12, align 8
  %34 = load double, double* %14, align 8
  %35 = fcmp ogt double %33, %34
  %36 = select i1 %35, i32 0, i32 2
  br label %42

; <label>:37:                                     ; preds = %4
  %38 = load double, double* %13, align 8
  %39 = load double, double* %14, align 8
  %40 = fcmp ogt double %38, %39
  %41 = select i1 %40, i32 1, i32 2
  br label %42

; <label>:42:                                     ; preds = %37, %32
  %43 = phi i32 [ %36, %32 ], [ %41, %37 ]
  %44 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %5, align 8
  %45 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %44 to i8*
  %46 = trunc i32 %43 to i8
  %47 = load i8, i8* %45, align 8
  %48 = and i8 %46, 3
  %49 = shl i8 %48, 3
  %50 = and i8 %47, -25
  %51 = or i8 %50, %49
  store i8 %51, i8* %45, align 8
  %52 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %53 = load double*, double** %7, align 8
  %54 = load double*, double** %8, align 8
  call void @_ZN3pov4VSubEPdPKdS2_(double* %52, double* %53, double* %54)
  %55 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %56 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  call void @_ZN3pov10VNormalizeEPdPKd(double* %55, double* %56)
  %57 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 0
  %58 = load double*, double** %6, align 8
  %59 = load double*, double** %8, align 8
  call void @_ZN3pov4VSubEPdPKdS2_(double* %57, double* %58, double* %59)
  %60 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 0
  %61 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %16, double* %60, double* %61)
  %62 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %63 = load double, double* %16, align 8
  call void @_ZN3pov8VScaleEqEPdd(double* %62, double %63)
  %64 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %5, align 8
  %65 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %64, i32 0, i32 15
  %66 = getelementptr inbounds [3 x float], [3 x float]* %65, i32 0, i32 0
  %67 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %68 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 0
  call void @_ZN3pov4VSubEPfPKdS2_(float* %66, double* %67, double* %68)
  %69 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %5, align 8
  %70 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %69, i32 0, i32 15
  %71 = getelementptr inbounds [3 x float], [3 x float]* %70, i32 0, i32 0
  %72 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %5, align 8
  %73 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %72, i32 0, i32 15
  %74 = getelementptr inbounds [3 x float], [3 x float]* %73, i32 0, i32 0
  call void @_ZN3pov10VNormalizeEPfPKf(float* %71, float* %74)
  %75 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 0
  %76 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %5, align 8
  %77 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %76, i32 0, i32 15
  %78 = getelementptr inbounds [3 x float], [3 x float]* %77, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdPKf(double* dereferenceable(8) %15, double* %75, float* %78)
  %79 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %5, align 8
  %80 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %79, i32 0, i32 15
  %81 = getelementptr inbounds [3 x float], [3 x float]* %80, i32 0, i32 0
  %82 = load double, double* %15, align 8
  %83 = fsub double -0.000000e+00, %82
  %84 = fptrunc double %83 to float
  call void @_ZN3pov15VInverseScaleEqEPff(float* %81, float %84)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN3pov18Init_Mesh_TriangleEPNS_20Mesh_Triangle_StructE(%"struct.pov::Mesh_Triangle_Struct"*) #0 {
  %2 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  store %"struct.pov::Mesh_Triangle_Struct"* %0, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %3 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %4 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %3 to i8*
  %5 = load i8, i8* %4, align 8
  %6 = and i8 %5, -2
  store i8 %6, i8* %4, align 8
  %7 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %8 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %7 to i8*
  %9 = load i8, i8* %8, align 8
  %10 = and i8 %9, -33
  store i8 %10, i8* %8, align 8
  %11 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %12 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %11 to i8*
  %13 = load i8, i8* %12, align 8
  %14 = and i8 %13, -7
  store i8 %14, i8* %12, align 8
  %15 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %16 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %15 to i8*
  %17 = load i8, i8* %16, align 8
  %18 = and i8 %17, -25
  store i8 %18, i8* %16, align 8
  %19 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %20 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %19, i32 0, i32 4
  store i64 -1, i64* %20, align 8
  %21 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %22 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %21, i32 0, i32 3
  store i64 -1, i64* %22, align 8
  %23 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %24 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %23, i32 0, i32 2
  store i64 -1, i64* %24, align 8
  %25 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %26 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %25, i32 0, i32 1
  store i64 -1, i64* %26, align 8
  %27 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %28 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %27, i32 0, i32 7
  store i64 -1, i64* %28, align 8
  %29 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %30 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %29, i32 0, i32 6
  store i64 -1, i64* %30, align 8
  %31 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %32 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %31, i32 0, i32 5
  store i64 -1, i64* %32, align 8
  %33 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %34 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %33, i32 0, i32 10
  store i64 -1, i64* %34, align 8
  %35 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %36 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %35, i32 0, i32 9
  store i64 -1, i64* %36, align 8
  %37 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %38 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %37, i32 0, i32 8
  store i64 -1, i64* %38, align 8
  %39 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %40 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %39, i32 0, i32 13
  store i64 -1, i64* %40, align 8
  %41 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %42 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %41, i32 0, i32 12
  store i64 -1, i64* %42, align 8
  %43 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %44 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %43, i32 0, i32 11
  store i64 -1, i64* %44, align 8
  %45 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %46 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %45, i32 0, i32 15
  %47 = getelementptr inbounds [3 x float], [3 x float]* %46, i32 0, i32 0
  call void @_ZN3pov11Make_VectorEPffff(float* %47, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %48 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %2, align 8
  %49 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %48, i32 0, i32 14
  store float 0.000000e+00, float* %49, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov11Make_VectorEPffff(float*, float, float, float) #1 comdat {
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %6, align 4
  %10 = load float*, float** %5, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  store float %9, float* %11, align 4
  %12 = load float, float* %7, align 4
  %13 = load float*, float** %5, align 8
  %14 = getelementptr inbounds float, float* %13, i64 1
  store float %12, float* %14, align 4
  %15 = load float, float* %8, align 4
  %16 = load float*, float** %5, align 8
  %17 = getelementptr inbounds float, float* %16, i64 2
  store float %15, float* %17, align 4
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN3pov20Build_Mesh_BBox_TreeEPNS_11Mesh_StructE(%"struct.pov::Mesh_Struct"*) #0 {
  %2 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %"struct.pov::BBox_Tree_Struct"**, align 8
  store %"struct.pov::Mesh_Struct"* %0, %"struct.pov::Mesh_Struct"** %2, align 8
  %7 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %8 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %7, i32 0, i32 13
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  %11 = and i64 %10, 1024
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %1
  br label %93

; <label>:14:                                     ; preds = %1
  %15 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %16 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %15, i32 0, i32 14
  %17 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %16, align 8
  %18 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 2, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1531, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %27 = bitcast i8* %26 to %"struct.pov::BBox_Tree_Struct"**
  store %"struct.pov::BBox_Tree_Struct"** %27, %"struct.pov::BBox_Tree_Struct"*** %6, align 8
  store i32 0, i32* %3, align 4
  br label %28

; <label>:28:                                     ; preds = %81, %14
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %84

; <label>:32:                                     ; preds = %28
  %33 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1537, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %34 = bitcast i8* %33 to %"struct.pov::BBox_Tree_Struct"*
  %35 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %6, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %35, i64 %37
  store %"struct.pov::BBox_Tree_Struct"* %34, %"struct.pov::BBox_Tree_Struct"** %38, align 8
  %39 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %6, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %39, i64 %41
  %43 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %42, align 8
  %44 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %43, i32 0, i32 0
  store i16 0, i16* %44, align 8
  %45 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %6, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %45, i64 %47
  %49 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %48, align 8
  %50 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %49, i32 0, i32 1
  store i16 0, i16* %50, align 2
  %51 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %52 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %51, i32 0, i32 14
  %53 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %52, align 8
  %54 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %53, i32 0, i32 8
  %55 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %55, i64 %57
  %59 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %58 to %"struct.pov::BBox_Tree_Struct"**
  %60 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %6, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %60, i64 %62
  %64 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %63, align 8
  %65 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %64, i32 0, i32 3
  store %"struct.pov::BBox_Tree_Struct"** %59, %"struct.pov::BBox_Tree_Struct"*** %65, align 8
  %66 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %67 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %68 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %67, i32 0, i32 14
  %69 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %68, align 8
  %70 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %69, i32 0, i32 8
  %71 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %71, i64 %73
  %75 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %6, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %75, i64 %77
  %79 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %78, align 8
  %80 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %79, i32 0, i32 2
  call void @_ZN3povL17get_triangle_bboxEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPNS_19Bounding_Box_StructE(%"struct.pov::Mesh_Struct"* %66, %"struct.pov::Mesh_Triangle_Struct"* %74, %"struct.pov::Bounding_Box_Struct"* %80)
  br label %81

; <label>:81:                                     ; preds = %32
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %28

; <label>:84:                                     ; preds = %28
  %85 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %86 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %85, i32 0, i32 14
  %87 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %86, align 8
  %88 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %87, i32 0, i32 9
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  call void @_ZN3pov15Build_BBox_TreeEPPNS_16BBox_Tree_StructElRS2_lS2_(%"struct.pov::BBox_Tree_Struct"** %88, i64 %90, %"struct.pov::BBox_Tree_Struct"*** dereferenceable(8) %6, i64 0, %"struct.pov::BBox_Tree_Struct"** null)
  %91 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %6, align 8
  %92 = bitcast %"struct.pov::BBox_Tree_Struct"** %91 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1550)
  store %"struct.pov::BBox_Tree_Struct"** null, %"struct.pov::BBox_Tree_Struct"*** %6, align 8
  br label %93

; <label>:93:                                     ; preds = %84, %13
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL17get_triangle_bboxEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPNS_19Bounding_Box_StructE(%"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Bounding_Box_Struct"*) #0 {
  %4 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %5 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  %6 = alloca %"struct.pov::Bounding_Box_Struct"*, align 8
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  store %"struct.pov::Mesh_Struct"* %0, %"struct.pov::Mesh_Struct"** %4, align 8
  store %"struct.pov::Mesh_Triangle_Struct"* %1, %"struct.pov::Mesh_Triangle_Struct"** %5, align 8
  store %"struct.pov::Bounding_Box_Struct"* %2, %"struct.pov::Bounding_Box_Struct"** %6, align 8
  %12 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %4, align 8
  %13 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %5, align 8
  %14 = getelementptr inbounds [3 x double], [3 x double]* %7, i32 0, i32 0
  %15 = getelementptr inbounds [3 x double], [3 x double]* %8, i32 0, i32 0
  %16 = getelementptr inbounds [3 x double], [3 x double]* %9, i32 0, i32 0
  call void @_ZN3povL21get_triangle_verticesEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPdS4_S4_(%"struct.pov::Mesh_Struct"* %12, %"struct.pov::Mesh_Triangle_Struct"* %13, double* %14, double* %15, double* %16)
  %17 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %18 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %19 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  %20 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %18, double* dereferenceable(8) %19)
  %21 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %17, double* dereferenceable(8) %20)
  %22 = load double, double* %21, align 8
  %23 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 0
  store double %22, double* %23, align 16
  %24 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %25 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %26 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 1
  %27 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %25, double* dereferenceable(8) %26)
  %28 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %24, double* dereferenceable(8) %27)
  %29 = load double, double* %28, align 8
  %30 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 1
  store double %29, double* %30, align 8
  %31 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  %32 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  %33 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 2
  %34 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %32, double* dereferenceable(8) %33)
  %35 = call dereferenceable(8) double* @_ZSt3minIdERKT_S2_S2_(double* dereferenceable(8) %31, double* dereferenceable(8) %34)
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 2
  store double %36, double* %37, align 16
  %38 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0
  %39 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0
  %40 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  %41 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %39, double* dereferenceable(8) %40)
  %42 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %38, double* dereferenceable(8) %41)
  %43 = load double, double* %42, align 8
  %44 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 0
  store double %43, double* %44, align 16
  %45 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 1
  %46 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 1
  %47 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 1
  %48 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %46, double* dereferenceable(8) %47)
  %49 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %45, double* dereferenceable(8) %48)
  %50 = load double, double* %49, align 8
  %51 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 1
  store double %50, double* %51, align 8
  %52 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 2
  %53 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 2
  %54 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 2
  %55 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %53, double* dereferenceable(8) %54)
  %56 = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %52, double* dereferenceable(8) %55)
  %57 = load double, double* %56, align 8
  %58 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 2
  store double %57, double* %58, align 16
  %59 = load %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Bounding_Box_Struct"** %6, align 8
  %60 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %61 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 0
  call void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(%"struct.pov::Bounding_Box_Struct"* dereferenceable(24) %59, double* %60, double* %61)
  ret void
}

declare void @_ZN3pov15Build_BBox_TreeEPPNS_16BBox_Tree_StructElRS2_lS2_(%"struct.pov::BBox_Tree_Struct"**, i64, %"struct.pov::BBox_Tree_Struct"*** dereferenceable(8), i64, %"struct.pov::BBox_Tree_Struct"**) #2

declare void @_ZN3pov8pov_freeEPvPKci(i8*, i8*, i32) #2

; Function Attrs: noinline uwtable
define i32 @_ZN3pov16Mesh_Hash_VertexEPiS0_PPA3_fPd(i32*, i32*, [3 x float]**, double*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [3 x float]**, align 8
  %8 = alloca double*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store [3 x float]** %2, [3 x float]*** %7, align 8
  store double* %3, double** %8, align 8
  %9 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Vertex_Hash_TableE, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load [3 x float]**, [3 x float]*** %7, align 8
  %13 = load double*, double** %8, align 8
  %14 = call i32 @_ZN3povL9mesh_hashEPPNS_17Hash_Table_StructEPiS3_PPA3_fPd(%"struct.pov::Hash_Table_Struct"** %9, i32* %10, i32* %11, [3 x float]** %12, double* %13)
  ret i32 %14
}

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL9mesh_hashEPPNS_17Hash_Table_StructEPiS3_PPA3_fPd(%"struct.pov::Hash_Table_Struct"**, i32*, i32*, [3 x float]**, double*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %"struct.pov::Hash_Table_Struct"**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x float]**, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca %"struct.pov::Hash_Table_Struct"*, align 8
  store %"struct.pov::Hash_Table_Struct"** %0, %"struct.pov::Hash_Table_Struct"*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store [3 x float]** %3, [3 x float]*** %10, align 8
  store double* %4, double** %11, align 8
  %16 = getelementptr inbounds [3 x float], [3 x float]* %14, i32 0, i32 0
  %17 = load double*, double** %11, align 8
  call void @_ZN3pov13Assign_VectorEPfPd(float* %16, double* %17)
  %18 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = fmul double 3.260000e+02, %20
  %22 = fptosi double %21 to i32
  %23 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 1
  %24 = load float, float* %23, align 4
  %25 = fpext float %24 to double
  %26 = fmul double 6.947000e+02, %25
  %27 = fptosi double %26 to i32
  %28 = xor i32 %22, %27
  %29 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 2
  %30 = load float, float* %29, align 4
  %31 = fpext float %30 to double
  %32 = fmul double 1.423600e+03, %31
  %33 = fptosi double %32 to i32
  %34 = xor i32 %28, %33
  %35 = urem i32 %34, 1000
  store i32 %35, i32* %12, align 4
  %36 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %36, i64 %38
  %40 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %39, align 8
  store %"struct.pov::Hash_Table_Struct"* %40, %"struct.pov::Hash_Table_Struct"** %15, align 8
  br label %41

; <label>:41:                                     ; preds = %69, %5
  %42 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %15, align 8
  %43 = icmp ne %"struct.pov::Hash_Table_Struct"* %42, null
  br i1 %43, label %44, label %73

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 0
  %46 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %15, align 8
  %47 = getelementptr inbounds %"struct.pov::Hash_Table_Struct", %"struct.pov::Hash_Table_Struct"* %46, i32 0, i32 1
  %48 = getelementptr inbounds [3 x float], [3 x float]* %47, i32 0, i32 0
  %49 = getelementptr inbounds [3 x float], [3 x float]* %14, i32 0, i32 0
  call void @_ZN3pov4VSubEPfPKfS2_(float* %45, float* %48, float* %49)
  %50 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %51 = load float, float* %50, align 4
  %52 = call float @_ZSt4fabsf(float %51)
  %53 = fpext float %52 to double
  %54 = fcmp olt double %53, 1.000000e-07
  br i1 %54, label %55, label %68

; <label>:55:                                     ; preds = %44
  %56 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  %57 = load float, float* %56, align 4
  %58 = call float @_ZSt4fabsf(float %57)
  %59 = fpext float %58 to double
  %60 = fcmp olt double %59, 1.000000e-07
  br i1 %60, label %61, label %68

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 2
  %63 = load float, float* %62, align 4
  %64 = call float @_ZSt4fabsf(float %63)
  %65 = fpext float %64 to double
  %66 = fcmp olt double %65, 1.000000e-07
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %61
  br label %73

; <label>:68:                                     ; preds = %61, %55, %44
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %15, align 8
  %71 = getelementptr inbounds %"struct.pov::Hash_Table_Struct", %"struct.pov::Hash_Table_Struct"* %70, i32 0, i32 2
  %72 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %71, align 8
  store %"struct.pov::Hash_Table_Struct"* %72, %"struct.pov::Hash_Table_Struct"** %15, align 8
  br label %41

; <label>:73:                                     ; preds = %67, %41
  %74 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %15, align 8
  %75 = icmp ne %"struct.pov::Hash_Table_Struct"* %74, null
  br i1 %75, label %76, label %85

; <label>:76:                                     ; preds = %73
  %77 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %15, align 8
  %78 = getelementptr inbounds %"struct.pov::Hash_Table_Struct", %"struct.pov::Hash_Table_Struct"* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %85

; <label>:81:                                     ; preds = %76
  %82 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %15, align 8
  %83 = getelementptr inbounds %"struct.pov::Hash_Table_Struct", %"struct.pov::Hash_Table_Struct"* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %6, align 4
  br label %145

; <label>:85:                                     ; preds = %76, %73
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %87, %89
  br i1 %90, label %91, label %111

; <label>:91:                                     ; preds = %85
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 1073741823
  br i1 %94, label %95, label %97

; <label>:95:                                     ; preds = %91
  %96 = call i32 (i8*, ...) @_ZN3pov5ErrorEPKcz(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %97

; <label>:97:                                     ; preds = %95, %91
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 2
  store i32 %100, i32* %98, align 4
  %101 = load [3 x float]**, [3 x float]*** %10, align 8
  %102 = load [3 x float]*, [3 x float]** %101, align 8
  %103 = bitcast [3 x float]* %102 to i8*
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 12
  %108 = call i8* @_ZN3pov11pov_reallocEPvmPKciS2_(i8* %103, i64 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1751, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %109 = bitcast i8* %108 to [3 x float]*
  %110 = load [3 x float]**, [3 x float]*** %10, align 8
  store [3 x float]* %109, [3 x float]** %110, align 8
  br label %111

; <label>:111:                                    ; preds = %97, %85
  %112 = load [3 x float]**, [3 x float]*** %10, align 8
  %113 = load [3 x float]*, [3 x float]** %112, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [3 x float], [3 x float]* %113, i64 %116
  %118 = getelementptr inbounds [3 x float], [3 x float]* %117, i32 0, i32 0
  %119 = getelementptr inbounds [3 x float], [3 x float]* %14, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPfS0_(float* %118, float* %119)
  %120 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1756, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %121 = bitcast i8* %120 to %"struct.pov::Hash_Table_Struct"*
  store %"struct.pov::Hash_Table_Struct"* %121, %"struct.pov::Hash_Table_Struct"** %15, align 8
  %122 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %15, align 8
  %123 = getelementptr inbounds %"struct.pov::Hash_Table_Struct", %"struct.pov::Hash_Table_Struct"* %122, i32 0, i32 1
  %124 = getelementptr inbounds [3 x float], [3 x float]* %123, i32 0, i32 0
  %125 = getelementptr inbounds [3 x float], [3 x float]* %14, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPfS0_(float* %124, float* %125)
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %15, align 8
  %129 = getelementptr inbounds %"struct.pov::Hash_Table_Struct", %"struct.pov::Hash_Table_Struct"* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %130, i64 %132
  %134 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %133, align 8
  %135 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %15, align 8
  %136 = getelementptr inbounds %"struct.pov::Hash_Table_Struct", %"struct.pov::Hash_Table_Struct"* %135, i32 0, i32 2
  store %"struct.pov::Hash_Table_Struct"* %134, %"struct.pov::Hash_Table_Struct"** %136, align 8
  %137 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %15, align 8
  %138 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** %7, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %138, i64 %140
  store %"struct.pov::Hash_Table_Struct"* %137, %"struct.pov::Hash_Table_Struct"** %141, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  store i32 %143, i32* %6, align 4
  br label %145

; <label>:145:                                    ; preds = %111, %81
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

; Function Attrs: noinline uwtable
define i32 @_ZN3pov16Mesh_Hash_NormalEPiS0_PPA3_fPd(i32*, i32*, [3 x float]**, double*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [3 x float]**, align 8
  %8 = alloca double*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store [3 x float]** %2, [3 x float]*** %7, align 8
  store double* %3, double** %8, align 8
  %9 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Normal_Hash_TableE, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load [3 x float]**, [3 x float]*** %7, align 8
  %13 = load double*, double** %8, align 8
  %14 = call i32 @_ZN3povL9mesh_hashEPPNS_17Hash_Table_StructEPiS3_PPA3_fPd(%"struct.pov::Hash_Table_Struct"** %9, i32* %10, i32* %11, [3 x float]** %12, double* %13)
  ret i32 %14
}

; Function Attrs: noinline uwtable
define i32 @_ZN3pov17Mesh_Hash_TextureEPiS0_PPPNS_14Texture_StructES2_(i32*, i32*, %"struct.pov::Texture_Struct"***, %"struct.pov::Texture_Struct"*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %"struct.pov::Texture_Struct"***, align 8
  %9 = alloca %"struct.pov::Texture_Struct"*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %"struct.pov::Texture_Struct"*** %2, %"struct.pov::Texture_Struct"**** %8, align 8
  store %"struct.pov::Texture_Struct"* %3, %"struct.pov::Texture_Struct"** %9, align 8
  %11 = load %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %9, align 8
  %12 = icmp eq %"struct.pov::Texture_Struct"* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %77

; <label>:14:                                     ; preds = %4
  store i32 0, i32* %10, align 4
  br label %15

; <label>:15:                                     ; preds = %31, %14
  %16 = load i32, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %15
  %21 = load %"struct.pov::Texture_Struct"***, %"struct.pov::Texture_Struct"**** %8, align 8
  %22 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %22, i64 %24
  %26 = load %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %25, align 8
  %27 = load %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %9, align 8
  %28 = icmp eq %"struct.pov::Texture_Struct"* %26, %27
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %20
  br label %34

; <label>:30:                                     ; preds = %20
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %15

; <label>:34:                                     ; preds = %29, %15
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %75

; <label>:39:                                     ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %41, %43
  br i1 %44, label %45, label %65

; <label>:45:                                     ; preds = %39
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 1073741823
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %45
  %50 = call i32 (i8*, ...) @_ZN3pov5ErrorEPKcz(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %51

; <label>:51:                                     ; preds = %49, %45
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %52, align 4
  %55 = load %"struct.pov::Texture_Struct"***, %"struct.pov::Texture_Struct"**** %8, align 8
  %56 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %55, align 8
  %57 = bitcast %"struct.pov::Texture_Struct"** %56 to i8*
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = call i8* @_ZN3pov11pov_reallocEPvmPKciS2_(i8* %57, i64 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1920, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %63 = bitcast i8* %62 to %"struct.pov::Texture_Struct"**
  %64 = load %"struct.pov::Texture_Struct"***, %"struct.pov::Texture_Struct"**** %8, align 8
  store %"struct.pov::Texture_Struct"** %63, %"struct.pov::Texture_Struct"*** %64, align 8
  br label %65

; <label>:65:                                     ; preds = %51, %39
  %66 = load %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %9, align 8
  %67 = call %"struct.pov::Texture_Struct"* @_ZN3pov20Copy_Texture_PointerEPNS_14Texture_StructE(%"struct.pov::Texture_Struct"* %66)
  %68 = load %"struct.pov::Texture_Struct"***, %"struct.pov::Texture_Struct"**** %8, align 8
  %69 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %68, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %69, i64 %73
  store %"struct.pov::Texture_Struct"* %67, %"struct.pov::Texture_Struct"** %74, align 8
  br label %75

; <label>:75:                                     ; preds = %65, %34
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %77

; <label>:77:                                     ; preds = %75, %13
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare i32 @_ZN3pov5ErrorEPKcz(i8*, ...) #2

declare i8* @_ZN3pov11pov_reallocEPvmPKciS2_(i8*, i64, i8*, i32, i8*) #2

declare %"struct.pov::Texture_Struct"* @_ZN3pov20Copy_Texture_PointerEPNS_14Texture_StructE(%"struct.pov::Texture_Struct"*) #2

; Function Attrs: noinline uwtable
define i32 @_ZN3pov12Mesh_Hash_UVEPiS0_PPA2_dPd(i32*, i32*, [2 x double]**, double*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x double]**, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x double], align 16
  %12 = alloca [2 x double], align 16
  %13 = alloca %"struct.pov::UV_Hash_Table_Struct"*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store [2 x double]** %2, [2 x double]*** %8, align 8
  store double* %3, double** %9, align 8
  %14 = getelementptr inbounds [2 x double], [2 x double]* %12, i32 0, i32 0
  %15 = load double*, double** %9, align 8
  call void @_ZN3pov14Assign_UV_VectEPdS0_(double* %14, double* %15)
  %16 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 0
  %17 = load double, double* %16, align 16
  %18 = fmul double 3.260000e+02, %17
  %19 = fptosi double %18 to i32
  %20 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 1
  %21 = load double, double* %20, align 8
  %22 = fmul double 6.947000e+02, %21
  %23 = fptosi double %22 to i32
  %24 = xor i32 %19, %23
  %25 = urem i32 %24, 1000
  store i32 %25, i32* %10, align 4
  %26 = load %"struct.pov::UV_Hash_Table_Struct"**, %"struct.pov::UV_Hash_Table_Struct"*** @_ZN3povL13UV_Hash_TableE, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %26, i64 %28
  %30 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %29, align 8
  store %"struct.pov::UV_Hash_Table_Struct"* %30, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  br label %31

; <label>:31:                                     ; preds = %62, %4
  %32 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %33 = icmp ne %"struct.pov::UV_Hash_Table_Struct"* %32, null
  br i1 %33, label %34, label %66

; <label>:34:                                     ; preds = %31
  %35 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %36 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct", %"struct.pov::UV_Hash_Table_Struct"* %35, i32 0, i32 1
  %37 = getelementptr inbounds [2 x double], [2 x double]* %36, i64 0, i64 0
  %38 = load double, double* %37, align 8
  %39 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 0
  %40 = load double, double* %39, align 16
  %41 = fsub double %38, %40
  %42 = getelementptr inbounds [2 x double], [2 x double]* %11, i64 0, i64 0
  store double %41, double* %42, align 16
  %43 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %44 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct", %"struct.pov::UV_Hash_Table_Struct"* %43, i32 0, i32 1
  %45 = getelementptr inbounds [2 x double], [2 x double]* %44, i64 0, i64 1
  %46 = load double, double* %45, align 8
  %47 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 0, i64 1
  %48 = load double, double* %47, align 8
  %49 = fsub double %46, %48
  %50 = getelementptr inbounds [2 x double], [2 x double]* %11, i64 0, i64 1
  store double %49, double* %50, align 8
  %51 = getelementptr inbounds [2 x double], [2 x double]* %11, i64 0, i64 0
  %52 = load double, double* %51, align 16
  %53 = call double @fabs(double %52) #6
  %54 = fcmp olt double %53, 1.000000e-07
  br i1 %54, label %55, label %61

; <label>:55:                                     ; preds = %34
  %56 = getelementptr inbounds [2 x double], [2 x double]* %11, i64 0, i64 1
  %57 = load double, double* %56, align 8
  %58 = call double @fabs(double %57) #6
  %59 = fcmp olt double %58, 1.000000e-07
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %55
  br label %66

; <label>:61:                                     ; preds = %55, %34
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %64 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct", %"struct.pov::UV_Hash_Table_Struct"* %63, i32 0, i32 2
  %65 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %64, align 8
  store %"struct.pov::UV_Hash_Table_Struct"* %65, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  br label %31

; <label>:66:                                     ; preds = %60, %31
  %67 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %68 = icmp ne %"struct.pov::UV_Hash_Table_Struct"* %67, null
  br i1 %68, label %69, label %78

; <label>:69:                                     ; preds = %66
  %70 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %71 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct", %"struct.pov::UV_Hash_Table_Struct"* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %78

; <label>:74:                                     ; preds = %69
  %75 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %76 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct", %"struct.pov::UV_Hash_Table_Struct"* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %5, align 4
  br label %138

; <label>:78:                                     ; preds = %69, %66
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %80, %82
  br i1 %83, label %84, label %104

; <label>:84:                                     ; preds = %78
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 1073741823
  br i1 %87, label %88, label %90

; <label>:88:                                     ; preds = %84
  %89 = call i32 (i8*, ...) @_ZN3pov5ErrorEPKcz(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0))
  br label %90

; <label>:90:                                     ; preds = %88, %84
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 2
  store i32 %93, i32* %91, align 4
  %94 = load [2 x double]**, [2 x double]*** %8, align 8
  %95 = load [2 x double]*, [2 x double]** %94, align 8
  %96 = bitcast [2 x double]* %95 to i8*
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 16
  %101 = call i8* @_ZN3pov11pov_reallocEPvmPKciS2_(i8* %96, i64 %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2005, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %102 = bitcast i8* %101 to [2 x double]*
  %103 = load [2 x double]**, [2 x double]*** %8, align 8
  store [2 x double]* %102, [2 x double]** %103, align 8
  br label %104

; <label>:104:                                    ; preds = %90, %78
  %105 = load [2 x double]**, [2 x double]*** %8, align 8
  %106 = load [2 x double]*, [2 x double]** %105, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [2 x double], [2 x double]* %106, i64 %109
  %111 = getelementptr inbounds [2 x double], [2 x double]* %110, i32 0, i32 0
  %112 = getelementptr inbounds [2 x double], [2 x double]* %12, i32 0, i32 0
  call void @_ZN3pov14Assign_UV_VectEPdS0_(double* %111, double* %112)
  %113 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2010, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %114 = bitcast i8* %113 to %"struct.pov::UV_Hash_Table_Struct"*
  store %"struct.pov::UV_Hash_Table_Struct"* %114, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %115 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %116 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct", %"struct.pov::UV_Hash_Table_Struct"* %115, i32 0, i32 1
  %117 = getelementptr inbounds [2 x double], [2 x double]* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x double], [2 x double]* %12, i32 0, i32 0
  call void @_ZN3pov14Assign_UV_VectEPdS0_(double* %117, double* %118)
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %122 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct", %"struct.pov::UV_Hash_Table_Struct"* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %"struct.pov::UV_Hash_Table_Struct"**, %"struct.pov::UV_Hash_Table_Struct"*** @_ZN3povL13UV_Hash_TableE, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %123, i64 %125
  %127 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %126, align 8
  %128 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %129 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct", %"struct.pov::UV_Hash_Table_Struct"* %128, i32 0, i32 2
  store %"struct.pov::UV_Hash_Table_Struct"* %127, %"struct.pov::UV_Hash_Table_Struct"** %129, align 8
  %130 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %13, align 8
  %131 = load %"struct.pov::UV_Hash_Table_Struct"**, %"struct.pov::UV_Hash_Table_Struct"*** @_ZN3povL13UV_Hash_TableE, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %131, i64 %133
  store %"struct.pov::UV_Hash_Table_Struct"* %130, %"struct.pov::UV_Hash_Table_Struct"** %134, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  store i32 %136, i32* %5, align 4
  br label %138

; <label>:138:                                    ; preds = %104, %74
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov14Assign_UV_VectEPdS0_(double*, double*) #1 comdat {
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

; Function Attrs: noinline uwtable
define void @_ZN3pov23Create_Mesh_Hash_TablesEv() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 8000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2055, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  %3 = bitcast i8* %2 to %"struct.pov::Hash_Table_Struct"**
  store %"struct.pov::Hash_Table_Struct"** %3, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Vertex_Hash_TableE, align 8
  store i32 0, i32* %1, align 4
  br label %4

; <label>:4:                                      ; preds = %12, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1000
  br i1 %6, label %7, label %15

; <label>:7:                                      ; preds = %4
  %8 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Vertex_Hash_TableE, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %8, i64 %10
  store %"struct.pov::Hash_Table_Struct"* null, %"struct.pov::Hash_Table_Struct"** %11, align 8
  br label %12

; <label>:12:                                     ; preds = %7
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %4

; <label>:15:                                     ; preds = %4
  %16 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 8000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2062, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  %17 = bitcast i8* %16 to %"struct.pov::Hash_Table_Struct"**
  store %"struct.pov::Hash_Table_Struct"** %17, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Normal_Hash_TableE, align 8
  store i32 0, i32* %1, align 4
  br label %18

; <label>:18:                                     ; preds = %26, %15
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 1000
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %18
  %22 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Normal_Hash_TableE, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %22, i64 %24
  store %"struct.pov::Hash_Table_Struct"* null, %"struct.pov::Hash_Table_Struct"** %25, align 8
  br label %26

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %18

; <label>:29:                                     ; preds = %18
  %30 = call i8* @_ZN3pov10pov_mallocEmPKciS1_(i64 8000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2070, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  %31 = bitcast i8* %30 to %"struct.pov::UV_Hash_Table_Struct"**
  store %"struct.pov::UV_Hash_Table_Struct"** %31, %"struct.pov::UV_Hash_Table_Struct"*** @_ZN3povL13UV_Hash_TableE, align 8
  store i32 0, i32* %1, align 4
  br label %32

; <label>:32:                                     ; preds = %40, %29
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 1000
  br i1 %34, label %35, label %43

; <label>:35:                                     ; preds = %32
  %36 = load %"struct.pov::UV_Hash_Table_Struct"**, %"struct.pov::UV_Hash_Table_Struct"*** @_ZN3povL13UV_Hash_TableE, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %36, i64 %38
  store %"struct.pov::UV_Hash_Table_Struct"* null, %"struct.pov::UV_Hash_Table_Struct"** %39, align 8
  br label %40

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %32

; <label>:43:                                     ; preds = %32
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN3pov24Destroy_Mesh_Hash_TablesEv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %"struct.pov::Hash_Table_Struct"*, align 8
  %3 = alloca %"struct.pov::UV_Hash_Table_Struct"*, align 8
  store i32 0, i32* %1, align 4
  br label %4

; <label>:4:                                      ; preds = %31, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1000
  br i1 %6, label %7, label %34

; <label>:7:                                      ; preds = %4
  br label %8

; <label>:8:                                      ; preds = %15, %7
  %9 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Vertex_Hash_TableE, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %9, i64 %11
  %13 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %12, align 8
  %14 = icmp ne %"struct.pov::Hash_Table_Struct"* %13, null
  br i1 %14, label %15, label %30

; <label>:15:                                     ; preds = %8
  %16 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Vertex_Hash_TableE, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %16, i64 %18
  %20 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %19, align 8
  store %"struct.pov::Hash_Table_Struct"* %20, %"struct.pov::Hash_Table_Struct"** %2, align 8
  %21 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %2, align 8
  %22 = getelementptr inbounds %"struct.pov::Hash_Table_Struct", %"struct.pov::Hash_Table_Struct"* %21, i32 0, i32 2
  %23 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %22, align 8
  %24 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Vertex_Hash_TableE, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %24, i64 %26
  store %"struct.pov::Hash_Table_Struct"* %23, %"struct.pov::Hash_Table_Struct"** %27, align 8
  %28 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %2, align 8
  %29 = bitcast %"struct.pov::Hash_Table_Struct"* %28 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2123)
  store %"struct.pov::Hash_Table_Struct"* null, %"struct.pov::Hash_Table_Struct"** %2, align 8
  br label %8

; <label>:30:                                     ; preds = %8
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %4

; <label>:34:                                     ; preds = %4
  %35 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Vertex_Hash_TableE, align 8
  %36 = bitcast %"struct.pov::Hash_Table_Struct"** %35 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2127)
  store %"struct.pov::Hash_Table_Struct"** null, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Vertex_Hash_TableE, align 8
  store i32 0, i32* %1, align 4
  br label %37

; <label>:37:                                     ; preds = %64, %34
  %38 = load i32, i32* %1, align 4
  %39 = icmp slt i32 %38, 1000
  br i1 %39, label %40, label %67

; <label>:40:                                     ; preds = %37
  br label %41

; <label>:41:                                     ; preds = %48, %40
  %42 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Normal_Hash_TableE, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %42, i64 %44
  %46 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %45, align 8
  %47 = icmp ne %"struct.pov::Hash_Table_Struct"* %46, null
  br i1 %47, label %48, label %63

; <label>:48:                                     ; preds = %41
  %49 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Normal_Hash_TableE, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %49, i64 %51
  %53 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %52, align 8
  store %"struct.pov::Hash_Table_Struct"* %53, %"struct.pov::Hash_Table_Struct"** %2, align 8
  %54 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %2, align 8
  %55 = getelementptr inbounds %"struct.pov::Hash_Table_Struct", %"struct.pov::Hash_Table_Struct"* %54, i32 0, i32 2
  %56 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %55, align 8
  %57 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Normal_Hash_TableE, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %57, i64 %59
  store %"struct.pov::Hash_Table_Struct"* %56, %"struct.pov::Hash_Table_Struct"** %60, align 8
  %61 = load %"struct.pov::Hash_Table_Struct"*, %"struct.pov::Hash_Table_Struct"** %2, align 8
  %62 = bitcast %"struct.pov::Hash_Table_Struct"* %61 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2137)
  store %"struct.pov::Hash_Table_Struct"* null, %"struct.pov::Hash_Table_Struct"** %2, align 8
  br label %41

; <label>:63:                                     ; preds = %41
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  br label %37

; <label>:67:                                     ; preds = %37
  %68 = load %"struct.pov::Hash_Table_Struct"**, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Normal_Hash_TableE, align 8
  %69 = bitcast %"struct.pov::Hash_Table_Struct"** %68 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2141)
  store %"struct.pov::Hash_Table_Struct"** null, %"struct.pov::Hash_Table_Struct"*** @_ZN3povL17Normal_Hash_TableE, align 8
  store i32 0, i32* %1, align 4
  br label %70

; <label>:70:                                     ; preds = %97, %67
  %71 = load i32, i32* %1, align 4
  %72 = icmp slt i32 %71, 1000
  br i1 %72, label %73, label %100

; <label>:73:                                     ; preds = %70
  br label %74

; <label>:74:                                     ; preds = %81, %73
  %75 = load %"struct.pov::UV_Hash_Table_Struct"**, %"struct.pov::UV_Hash_Table_Struct"*** @_ZN3povL13UV_Hash_TableE, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %75, i64 %77
  %79 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %78, align 8
  %80 = icmp ne %"struct.pov::UV_Hash_Table_Struct"* %79, null
  br i1 %80, label %81, label %96

; <label>:81:                                     ; preds = %74
  %82 = load %"struct.pov::UV_Hash_Table_Struct"**, %"struct.pov::UV_Hash_Table_Struct"*** @_ZN3povL13UV_Hash_TableE, align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %82, i64 %84
  %86 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %85, align 8
  store %"struct.pov::UV_Hash_Table_Struct"* %86, %"struct.pov::UV_Hash_Table_Struct"** %3, align 8
  %87 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %3, align 8
  %88 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct", %"struct.pov::UV_Hash_Table_Struct"* %87, i32 0, i32 2
  %89 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %88, align 8
  %90 = load %"struct.pov::UV_Hash_Table_Struct"**, %"struct.pov::UV_Hash_Table_Struct"*** @_ZN3povL13UV_Hash_TableE, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %90, i64 %92
  store %"struct.pov::UV_Hash_Table_Struct"* %89, %"struct.pov::UV_Hash_Table_Struct"** %93, align 8
  %94 = load %"struct.pov::UV_Hash_Table_Struct"*, %"struct.pov::UV_Hash_Table_Struct"** %3, align 8
  %95 = bitcast %"struct.pov::UV_Hash_Table_Struct"* %94 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2152)
  store %"struct.pov::UV_Hash_Table_Struct"* null, %"struct.pov::UV_Hash_Table_Struct"** %3, align 8
  br label %74

; <label>:96:                                     ; preds = %74
  br label %97

; <label>:97:                                     ; preds = %96
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %1, align 4
  br label %70

; <label>:100:                                    ; preds = %70
  %101 = load %"struct.pov::UV_Hash_Table_Struct"**, %"struct.pov::UV_Hash_Table_Struct"*** @_ZN3povL13UV_Hash_TableE, align 8
  %102 = bitcast %"struct.pov::UV_Hash_Table_Struct"** %101 to i8*
  call void @_ZN3pov8pov_freeEPvPKci(i8* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2156)
  store %"struct.pov::UV_Hash_Table_Struct"** null, %"struct.pov::UV_Hash_Table_Struct"*** @_ZN3povL13UV_Hash_TableE, align 8
  ret void
}

; Function Attrs: noinline uwtable
define i32 @_ZN3pov15Mesh_DegenerateEPdS0_S0_(double*, double*, double*) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %11 = getelementptr inbounds [3 x double], [3 x double]* %7, i32 0, i32 0
  %12 = load double*, double** %4, align 8
  %13 = load double*, double** %5, align 8
  call void @_ZN3pov4VSubEPdPKdS2_(double* %11, double* %12, double* %13)
  %14 = getelementptr inbounds [3 x double], [3 x double]* %8, i32 0, i32 0
  %15 = load double*, double** %6, align 8
  %16 = load double*, double** %5, align 8
  call void @_ZN3pov4VSubEPdPKdS2_(double* %14, double* %15, double* %16)
  %17 = getelementptr inbounds [3 x double], [3 x double]* %9, i32 0, i32 0
  %18 = getelementptr inbounds [3 x double], [3 x double]* %7, i32 0, i32 0
  %19 = getelementptr inbounds [3 x double], [3 x double]* %8, i32 0, i32 0
  call void @_ZN3pov6VCrossEPdPKdS2_(double* %17, double* %18, double* %19)
  %20 = getelementptr inbounds [3 x double], [3 x double]* %9, i32 0, i32 0
  call void @_ZN3pov7VLengthERdPKd(double* dereferenceable(8) %10, double* %20)
  %21 = load double, double* %10, align 8
  %22 = fcmp oeq double %21, 0.000000e+00
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline uwtable
define void @_ZN3pov20Initialize_Mesh_CodeEv() #0 {
  %1 = call %"struct.pov::Priority_Queue_Struct"* @_ZN3pov21Create_Priority_QueueEj(i32 256)
  store %"struct.pov::Priority_Queue_Struct"* %1, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  ret void
}

declare %"struct.pov::Priority_Queue_Struct"* @_ZN3pov21Create_Priority_QueueEj(i32) #2

; Function Attrs: noinline uwtable
define void @_ZN3pov22Deinitialize_Mesh_CodeEv() #0 {
  %1 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  %2 = icmp ne %"struct.pov::Priority_Queue_Struct"* %1, null
  br i1 %2, label %3, label %5

; <label>:3:                                      ; preds = %0
  %4 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  call void @_ZN3pov22Destroy_Priority_QueueEPNS_21Priority_Queue_StructE(%"struct.pov::Priority_Queue_Struct"* %4)
  br label %5

; <label>:5:                                      ; preds = %3, %0
  store %"struct.pov::Priority_Queue_Struct"* null, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  ret void
}

declare void @_ZN3pov22Destroy_Priority_QueueEPNS_21Priority_Queue_StructE(%"struct.pov::Priority_Queue_Struct"*) #2

; Function Attrs: noinline uwtable
define void @_ZN3pov17Test_Mesh_OpacityEPNS_11Mesh_StructE(%"struct.pov::Mesh_Struct"*) #0 {
  %2 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %3 = alloca i32, align 4
  store %"struct.pov::Mesh_Struct"* %0, %"struct.pov::Mesh_Struct"** %2, align 8
  %4 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %5 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %4, i32 0, i32 3
  %6 = load %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %5, align 8
  %7 = icmp eq %"struct.pov::Texture_Struct"* %6, null
  br i1 %7, label %14, label %8

; <label>:8:                                      ; preds = %1
  %9 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %10 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %9, i32 0, i32 3
  %11 = load %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %10, align 8
  %12 = call i32 @_ZN3pov12Test_OpacityEPNS_14Texture_StructE(%"struct.pov::Texture_Struct"* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

; <label>:14:                                     ; preds = %8, %1
  %15 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %16 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %17 to i64
  %19 = or i64 %18, 128
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  br label %21

; <label>:21:                                     ; preds = %14, %8
  %22 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %23 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = and i64 %25, 256
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %68

; <label>:28:                                     ; preds = %21
  store i32 0, i32* %3, align 4
  br label %29

; <label>:29:                                     ; preds = %64, %28
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %33 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %32, i32 0, i32 15
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %67

; <label>:36:                                     ; preds = %29
  %37 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %38 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %37, i32 0, i32 16
  %39 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %39, i64 %41
  %43 = load %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %42, align 8
  %44 = icmp ne %"struct.pov::Texture_Struct"* %43, null
  br i1 %44, label %45, label %63

; <label>:45:                                     ; preds = %36
  %46 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %47 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %46, i32 0, i32 16
  %48 = load %"struct.pov::Texture_Struct"**, %"struct.pov::Texture_Struct"*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %48, i64 %50
  %52 = load %"struct.pov::Texture_Struct"*, %"struct.pov::Texture_Struct"** %51, align 8
  %53 = call i32 @_ZN3pov12Test_OpacityEPNS_14Texture_StructE(%"struct.pov::Texture_Struct"* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

; <label>:55:                                     ; preds = %45
  %56 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %2, align 8
  %57 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %56, i32 0, i32 13
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  %60 = and i64 %59, -129
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  br label %62

; <label>:62:                                     ; preds = %55, %45
  br label %63

; <label>:63:                                     ; preds = %62, %36
  br label %64

; <label>:64:                                     ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %29

; <label>:67:                                     ; preds = %29
  br label %68

; <label>:68:                                     ; preds = %67, %21
  ret void
}

declare i32 @_ZN3pov12Test_OpacityEPNS_14Texture_StructE(%"struct.pov::Texture_Struct"*) #2

; Function Attrs: noinline uwtable
define i32 @_ZN3pov16Mesh_InterpolateEPdS0_PNS_11Mesh_StructEPNS_20Mesh_Triangle_StructE(double*, double*, %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Triangle_Struct"*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %9 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  %12 = alloca [3 x double], align 16
  %13 = alloca double, align 8
  %14 = alloca [3 x double], align 16
  store double* %0, double** %6, align 8
  store double* %1, double** %7, align 8
  store %"struct.pov::Mesh_Struct"* %2, %"struct.pov::Mesh_Struct"** %8, align 8
  store %"struct.pov::Mesh_Triangle_Struct"* %3, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %15 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %8, align 8
  %16 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %15, i32 0, i32 10
  %17 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %16, align 8
  %18 = icmp ne %"struct.pov::Transform_Struct"* %17, null
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %4
  %20 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %21 = load double*, double** %7, align 8
  %22 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %8, align 8
  %23 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %22, i32 0, i32 10
  %24 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %23, align 8
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(double* %20, double* %21, %"struct.pov::Transform_Struct"* %24)
  br label %28

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %27 = load double*, double** %7, align 8
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %26, double* %27)
  br label %28

; <label>:28:                                     ; preds = %25, %19
  %29 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %30 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %29 to i8*
  %31 = load i8, i8* %30, align 8
  %32 = lshr i8 %31, 5
  %33 = and i8 %32, 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %192

; <label>:36:                                     ; preds = %28
  %37 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %8, align 8
  %38 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %37, i32 0, i32 14
  %39 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %38, align 8
  %40 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %39, i32 0, i32 6
  %41 = load [3 x float]*, [3 x float]** %40, align 8
  %42 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %43 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds [3 x float], [3 x float]* %41, i64 %44
  %46 = getelementptr inbounds [3 x float], [3 x float]* %45, i64 0, i64 0
  %47 = load float, float* %46, align 4
  %48 = fpext float %47 to double
  %49 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 0
  store double %48, double* %49, align 16
  %50 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %8, align 8
  %51 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %50, i32 0, i32 14
  %52 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %51, align 8
  %53 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %52, i32 0, i32 6
  %54 = load [3 x float]*, [3 x float]** %53, align 8
  %55 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %56 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds [3 x float], [3 x float]* %54, i64 %57
  %59 = getelementptr inbounds [3 x float], [3 x float]* %58, i64 0, i64 1
  %60 = load float, float* %59, align 4
  %61 = fpext float %60 to double
  %62 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 1
  store double %61, double* %62, align 8
  %63 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %8, align 8
  %64 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %63, i32 0, i32 14
  %65 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %64, align 8
  %66 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %65, i32 0, i32 6
  %67 = load [3 x float]*, [3 x float]** %66, align 8
  %68 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %69 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds [3 x float], [3 x float]* %67, i64 %70
  %72 = getelementptr inbounds [3 x float], [3 x float]* %71, i64 0, i64 2
  %73 = load float, float* %72, align 4
  %74 = fpext float %73 to double
  %75 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 2
  store double %74, double* %75, align 16
  %76 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %8, align 8
  %77 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %76, i32 0, i32 14
  %78 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %77, align 8
  %79 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %78, i32 0, i32 6
  %80 = load [3 x float]*, [3 x float]** %79, align 8
  %81 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %82 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds [3 x float], [3 x float]* %80, i64 %83
  %85 = getelementptr inbounds [3 x float], [3 x float]* %84, i64 0, i64 0
  %86 = load float, float* %85, align 4
  %87 = fpext float %86 to double
  %88 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 0
  store double %87, double* %88, align 16
  %89 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %8, align 8
  %90 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %89, i32 0, i32 14
  %91 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %90, align 8
  %92 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %91, i32 0, i32 6
  %93 = load [3 x float]*, [3 x float]** %92, align 8
  %94 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %95 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds [3 x float], [3 x float]* %93, i64 %96
  %98 = getelementptr inbounds [3 x float], [3 x float]* %97, i64 0, i64 1
  %99 = load float, float* %98, align 4
  %100 = fpext float %99 to double
  %101 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 1
  store double %100, double* %101, align 8
  %102 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %8, align 8
  %103 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %102, i32 0, i32 14
  %104 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %103, align 8
  %105 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %104, i32 0, i32 6
  %106 = load [3 x float]*, [3 x float]** %105, align 8
  %107 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %108 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds [3 x float], [3 x float]* %106, i64 %109
  %111 = getelementptr inbounds [3 x float], [3 x float]* %110, i64 0, i64 2
  %112 = load float, float* %111, align 4
  %113 = fpext float %112 to double
  %114 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 2
  store double %113, double* %114, align 16
  %115 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %8, align 8
  %116 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %115, i32 0, i32 14
  %117 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %116, align 8
  %118 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %117, i32 0, i32 6
  %119 = load [3 x float]*, [3 x float]** %118, align 8
  %120 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %121 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds [3 x float], [3 x float]* %119, i64 %122
  %124 = getelementptr inbounds [3 x float], [3 x float]* %123, i64 0, i64 0
  %125 = load float, float* %124, align 4
  %126 = fpext float %125 to double
  %127 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 0
  store double %126, double* %127, align 16
  %128 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %8, align 8
  %129 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %128, i32 0, i32 14
  %130 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %129, align 8
  %131 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %130, i32 0, i32 6
  %132 = load [3 x float]*, [3 x float]** %131, align 8
  %133 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %134 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds [3 x float], [3 x float]* %132, i64 %135
  %137 = getelementptr inbounds [3 x float], [3 x float]* %136, i64 0, i64 1
  %138 = load float, float* %137, align 4
  %139 = fpext float %138 to double
  %140 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 1
  store double %139, double* %140, align 8
  %141 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %8, align 8
  %142 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %141, i32 0, i32 14
  %143 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %142, align 8
  %144 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %143, i32 0, i32 6
  %145 = load [3 x float]*, [3 x float]** %144, align 8
  %146 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %147 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds [3 x float], [3 x float]* %145, i64 %148
  %150 = getelementptr inbounds [3 x float], [3 x float]* %149, i64 0, i64 2
  %151 = load float, float* %150, align 4
  %152 = fpext float %151 to double
  %153 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 2
  store double %152, double* %153, align 16
  %154 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %155 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %156 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 0
  %157 = getelementptr inbounds [3 x double], [3 x double]* %12, i32 0, i32 0
  %158 = call double @_ZN3pov18Calculate_Smooth_TEPdS0_S0_S0_(double* %154, double* %155, double* %156, double* %157)
  %159 = fsub double 1.000000e+00, %158
  %160 = load double*, double** %6, align 8
  %161 = getelementptr inbounds double, double* %160, i64 0
  store double %159, double* %161, align 8
  %162 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %163 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 0
  %164 = getelementptr inbounds [3 x double], [3 x double]* %12, i32 0, i32 0
  %165 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %166 = call double @_ZN3pov18Calculate_Smooth_TEPdS0_S0_S0_(double* %162, double* %163, double* %164, double* %165)
  %167 = fsub double 1.000000e+00, %166
  %168 = load double*, double** %6, align 8
  %169 = getelementptr inbounds double, double* %168, i64 1
  store double %167, double* %169, align 8
  %170 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %171 = getelementptr inbounds [3 x double], [3 x double]* %12, i32 0, i32 0
  %172 = getelementptr inbounds [3 x double], [3 x double]* %10, i32 0, i32 0
  %173 = getelementptr inbounds [3 x double], [3 x double]* %11, i32 0, i32 0
  %174 = call double @_ZN3pov18Calculate_Smooth_TEPdS0_S0_S0_(double* %170, double* %171, double* %172, double* %173)
  %175 = fsub double 1.000000e+00, %174
  %176 = load double*, double** %6, align 8
  %177 = getelementptr inbounds double, double* %176, i64 2
  store double %175, double* %177, align 8
  %178 = load double*, double** %6, align 8
  %179 = getelementptr inbounds double, double* %178, i64 0
  %180 = load double, double* %179, align 8
  %181 = load double*, double** %6, align 8
  %182 = getelementptr inbounds double, double* %181, i64 1
  %183 = load double, double* %182, align 8
  %184 = fadd double %180, %183
  %185 = load double*, double** %6, align 8
  %186 = getelementptr inbounds double, double* %185, i64 2
  %187 = load double, double* %186, align 8
  %188 = fadd double %184, %187
  store double %188, double* %13, align 8
  %189 = load double*, double** %6, align 8
  %190 = load double, double* %13, align 8
  %191 = fdiv double 1.000000e+00, %190
  call void @_ZN3pov8VScaleEqEPdd(double* %189, double %191)
  store i32 1, i32* %5, align 4
  br label %193

; <label>:192:                                    ; preds = %28
  store i32 0, i32* %5, align 4
  br label %193

; <label>:193:                                    ; preds = %192, %36
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(double*, double*, %"struct.pov::Transform_Struct"*) #2

declare double @_ZN3pov18Calculate_Smooth_TEPdS0_S0_S0_(double*, double*, double*, double*) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov8VScaleEqEPdd(double*, double) #1 comdat {
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
define linkonce_odr void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8)) #1 comdat {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = add nsw i64 %4, 1
  store i64 %5, i64* %3, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL14Intersect_MeshEPNS_10Ray_StructEPNS_11Mesh_StructEPNS_13istack_structE(%"struct.pov::Ray_Struct"*, %"struct.pov::Mesh_Struct"*, %"struct.pov::istack_struct"*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %"struct.pov::Ray_Struct"*, align 8
  %6 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %7 = alloca %"struct.pov::istack_struct"*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %"struct.pov::Ray_Struct", align 8
  store %"struct.pov::Ray_Struct"* %0, %"struct.pov::Ray_Struct"** %5, align 8
  store %"struct.pov::Mesh_Struct"* %1, %"struct.pov::Mesh_Struct"** %6, align 8
  store %"struct.pov::istack_struct"* %2, %"struct.pov::istack_struct"** %7, align 8
  %13 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %14 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %13, i32 0, i32 10
  %15 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %14, align 8
  %16 = icmp ne %"struct.pov::Transform_Struct"* %15, null
  br i1 %16, label %17, label %39

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %12, i32 0, i32 0
  %19 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  %20 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %5, align 8
  %21 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %20, i32 0, i32 0
  %22 = getelementptr inbounds [3 x double], [3 x double]* %21, i32 0, i32 0
  %23 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %24 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %23, i32 0, i32 10
  %25 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %24, align 8
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(double* %19, double* %22, %"struct.pov::Transform_Struct"* %25)
  %26 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %12, i32 0, i32 1
  %27 = getelementptr inbounds [3 x double], [3 x double]* %26, i32 0, i32 0
  %28 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %5, align 8
  %29 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %28, i32 0, i32 1
  %30 = getelementptr inbounds [3 x double], [3 x double]* %29, i32 0, i32 0
  %31 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %32 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %31, i32 0, i32 10
  %33 = load %"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"** %32, align 8
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(double* %27, double* %30, %"struct.pov::Transform_Struct"* %33)
  %34 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %12, i32 0, i32 1
  %35 = getelementptr inbounds [3 x double], [3 x double]* %34, i32 0, i32 0
  call void @_ZN3pov7VLengthERdPKd(double* dereferenceable(8) %10, double* %35)
  %36 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %12, i32 0, i32 1
  %37 = getelementptr inbounds [3 x double], [3 x double]* %36, i32 0, i32 0
  %38 = load double, double* %10, align 8
  call void @_ZN3pov15VInverseScaleEqEPdd(double* %37, double %38)
  br label %43

; <label>:39:                                     ; preds = %3
  %40 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %5, align 8
  %41 = bitcast %"struct.pov::Ray_Struct"* %12 to i8*
  %42 = bitcast %"struct.pov::Ray_Struct"* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 856, i32 8, i1 false)
  store double 1.000000e+00, double* %10, align 8
  br label %43

; <label>:43:                                     ; preds = %39, %17
  store i32 0, i32* %9, align 4
  %44 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %45 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %44, i32 0, i32 14
  %46 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %45, align 8
  %47 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %46, i32 0, i32 9
  %48 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %47, align 8
  %49 = icmp eq %"struct.pov::BBox_Tree_Struct"* %48, null
  br i1 %49, label %50, label %95

; <label>:50:                                     ; preds = %43
  store i32 0, i32* %8, align 4
  br label %51

; <label>:51:                                     ; preds = %91, %50
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %55 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %54, i32 0, i32 14
  %56 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %55, align 8
  %57 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %53, %58
  br i1 %59, label %60, label %94

; <label>:60:                                     ; preds = %51
  %61 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %62 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %63 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %62, i32 0, i32 14
  %64 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %63, align 8
  %65 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %64, i32 0, i32 8
  %66 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %66, i64 %68
  %70 = call i32 @_ZN3povL23intersect_mesh_triangleEPNS_10Ray_StructEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPd(%"struct.pov::Ray_Struct"* %12, %"struct.pov::Mesh_Struct"* %61, %"struct.pov::Mesh_Triangle_Struct"* %69, double* %11)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %90

; <label>:72:                                     ; preds = %60
  %73 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %74 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %73, i32 0, i32 14
  %75 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %74, align 8
  %76 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %75, i32 0, i32 8
  %77 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %77, i64 %79
  %81 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %82 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %5, align 8
  %83 = load double, double* %11, align 8
  %84 = load double, double* %10, align 8
  %85 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %7, align 8
  %86 = call i32 @_ZN3povL8test_hitEPNS_20Mesh_Triangle_StructEPNS_11Mesh_StructEPNS_10Ray_StructES5_ddPNS_13istack_structE(%"struct.pov::Mesh_Triangle_Struct"* %80, %"struct.pov::Mesh_Struct"* %81, %"struct.pov::Ray_Struct"* %82, %"struct.pov::Ray_Struct"* %12, double %83, double %84, %"struct.pov::istack_struct"* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %72
  store i32 1, i32* %9, align 4
  br label %89

; <label>:89:                                     ; preds = %88, %72
  br label %90

; <label>:90:                                     ; preds = %89, %60
  br label %91

; <label>:91:                                     ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %51

; <label>:94:                                     ; preds = %51
  br label %101

; <label>:95:                                     ; preds = %43
  %96 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %97 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %5, align 8
  %98 = load double, double* %10, align 8
  %99 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %7, align 8
  %100 = call i32 @_ZN3povL19intersect_bbox_treeEPNS_11Mesh_StructEPNS_10Ray_StructES3_dPNS_13istack_structE(%"struct.pov::Mesh_Struct"* %96, %"struct.pov::Ray_Struct"* %12, %"struct.pov::Ray_Struct"* %97, double %98, %"struct.pov::istack_struct"* %99)
  store i32 %100, i32* %4, align 4
  br label %103

; <label>:101:                                    ; preds = %94
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

; <label>:103:                                    ; preds = %101, %95
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(double*, double*, %"struct.pov::Transform_Struct"*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL23intersect_mesh_triangleEPNS_10Ray_StructEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPd(%"struct.pov::Ray_Struct"*, %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Triangle_Struct"*, double*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %"struct.pov::Ray_Struct"*, align 8
  %7 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %8 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca [3 x double], align 16
  %15 = alloca [3 x double], align 16
  %16 = alloca [3 x double], align 16
  %17 = alloca [3 x double], align 16
  store %"struct.pov::Ray_Struct"* %0, %"struct.pov::Ray_Struct"** %6, align 8
  store %"struct.pov::Mesh_Struct"* %1, %"struct.pov::Mesh_Struct"** %7, align 8
  store %"struct.pov::Mesh_Triangle_Struct"* %2, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  store double* %3, double** %9, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %17, i32 0, i32 0
  %19 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %7, align 8
  %20 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %19, i32 0, i32 14
  %21 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %20, align 8
  %22 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %21, i32 0, i32 5
  %23 = load [3 x float]*, [3 x float]** %22, align 8
  %24 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %25 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 %26
  %28 = getelementptr inbounds [3 x float], [3 x float]* %27, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdPf(double* %18, float* %28)
  %29 = getelementptr inbounds [3 x double], [3 x double]* %17, i32 0, i32 0
  %30 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %31 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %30, i32 0, i32 1
  %32 = getelementptr inbounds [3 x double], [3 x double]* %31, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %11, double* %29, double* %32)
  %33 = load double, double* %11, align 8
  %34 = call double @fabs(double %33) #6
  %35 = fcmp olt double %34, 1.000000e-07
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %4
  store i32 0, i32* %5, align 4
  br label %355

; <label>:37:                                     ; preds = %4
  %38 = getelementptr inbounds [3 x double], [3 x double]* %17, i32 0, i32 0
  %39 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %40 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %39, i32 0, i32 0
  %41 = getelementptr inbounds [3 x double], [3 x double]* %40, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8) %10, double* %38, double* %41)
  %42 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %43 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %42, i32 0, i32 14
  %44 = load float, float* %43, align 8
  %45 = fpext float %44 to double
  %46 = load double, double* %10, align 8
  %47 = fadd double %45, %46
  %48 = fsub double -0.000000e+00, %47
  %49 = load double, double* %11, align 8
  %50 = fdiv double %48, %49
  %51 = load double*, double** %9, align 8
  store double %50, double* %51, align 8
  %52 = load double*, double** %9, align 8
  %53 = load double, double* %52, align 8
  %54 = fcmp olt double %53, 1.000000e-06
  br i1 %54, label %59, label %55

; <label>:55:                                     ; preds = %37
  %56 = load double*, double** %9, align 8
  %57 = load double, double* %56, align 8
  %58 = fcmp ogt double %57, 1.000000e+07
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %55, %37
  store i32 0, i32* %5, align 4
  br label %355

; <label>:60:                                     ; preds = %55
  %61 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %7, align 8
  %62 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %63 = getelementptr inbounds [3 x double], [3 x double]* %14, i32 0, i32 0
  %64 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  %65 = getelementptr inbounds [3 x double], [3 x double]* %16, i32 0, i32 0
  call void @_ZN3povL21get_triangle_verticesEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPdS4_S4_(%"struct.pov::Mesh_Struct"* %61, %"struct.pov::Mesh_Triangle_Struct"* %62, double* %63, double* %64, double* %65)
  %66 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %8, align 8
  %67 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %66 to i8*
  %68 = load i8, i8* %67, align 8
  %69 = lshr i8 %68, 1
  %70 = and i8 %69, 3
  %71 = zext i8 %70 to i32
  switch i32 %71, label %354 [
    i32 0, label %72
    i32 1, label %166
    i32 2, label %260
  ]

; <label>:72:                                     ; preds = %60
  %73 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %74 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %73, i32 0, i32 0
  %75 = getelementptr inbounds [3 x double], [3 x double]* %74, i64 0, i64 1
  %76 = load double, double* %75, align 8
  %77 = load double*, double** %9, align 8
  %78 = load double, double* %77, align 8
  %79 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %80 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %79, i32 0, i32 1
  %81 = getelementptr inbounds [3 x double], [3 x double]* %80, i64 0, i64 1
  %82 = load double, double* %81, align 8
  %83 = fmul double %78, %82
  %84 = fadd double %76, %83
  store double %84, double* %12, align 8
  %85 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %86 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %85, i32 0, i32 0
  %87 = getelementptr inbounds [3 x double], [3 x double]* %86, i64 0, i64 2
  %88 = load double, double* %87, align 8
  %89 = load double*, double** %9, align 8
  %90 = load double, double* %89, align 8
  %91 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %92 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %91, i32 0, i32 1
  %93 = getelementptr inbounds [3 x double], [3 x double]* %92, i64 0, i64 2
  %94 = load double, double* %93, align 8
  %95 = fmul double %90, %94
  %96 = fadd double %88, %95
  store double %96, double* %13, align 8
  %97 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 1
  %98 = load double, double* %97, align 8
  %99 = load double, double* %12, align 8
  %100 = fsub double %98, %99
  %101 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 2
  %102 = load double, double* %101, align 16
  %103 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %104 = load double, double* %103, align 16
  %105 = fsub double %102, %104
  %106 = fmul double %100, %105
  %107 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 2
  %108 = load double, double* %107, align 16
  %109 = load double, double* %13, align 8
  %110 = fsub double %108, %109
  %111 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 1
  %112 = load double, double* %111, align 8
  %113 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %114 = load double, double* %113, align 8
  %115 = fsub double %112, %114
  %116 = fmul double %110, %115
  %117 = fcmp olt double %106, %116
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %72
  store i32 0, i32* %5, align 4
  br label %355

; <label>:119:                                    ; preds = %72
  %120 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %121 = load double, double* %120, align 8
  %122 = load double, double* %12, align 8
  %123 = fsub double %121, %122
  %124 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %125 = load double, double* %124, align 16
  %126 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 2
  %127 = load double, double* %126, align 16
  %128 = fsub double %125, %127
  %129 = fmul double %123, %128
  %130 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %131 = load double, double* %130, align 16
  %132 = load double, double* %13, align 8
  %133 = fsub double %131, %132
  %134 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %135 = load double, double* %134, align 8
  %136 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 1
  %137 = load double, double* %136, align 8
  %138 = fsub double %135, %137
  %139 = fmul double %133, %138
  %140 = fcmp olt double %129, %139
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %119
  store i32 0, i32* %5, align 4
  br label %355

; <label>:142:                                    ; preds = %119
  %143 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %144 = load double, double* %143, align 8
  %145 = load double, double* %12, align 8
  %146 = fsub double %144, %145
  %147 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %148 = load double, double* %147, align 16
  %149 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %150 = load double, double* %149, align 16
  %151 = fsub double %148, %150
  %152 = fmul double %146, %151
  %153 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %154 = load double, double* %153, align 16
  %155 = load double, double* %13, align 8
  %156 = fsub double %154, %155
  %157 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %158 = load double, double* %157, align 8
  %159 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %160 = load double, double* %159, align 8
  %161 = fsub double %158, %160
  %162 = fmul double %156, %161
  %163 = fcmp olt double %152, %162
  br i1 %163, label %164, label %165

; <label>:164:                                    ; preds = %142
  store i32 0, i32* %5, align 4
  br label %355

; <label>:165:                                    ; preds = %142
  store i32 1, i32* %5, align 4
  br label %355

; <label>:166:                                    ; preds = %60
  %167 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %168 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %167, i32 0, i32 0
  %169 = getelementptr inbounds [3 x double], [3 x double]* %168, i64 0, i64 0
  %170 = load double, double* %169, align 8
  %171 = load double*, double** %9, align 8
  %172 = load double, double* %171, align 8
  %173 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %174 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %173, i32 0, i32 1
  %175 = getelementptr inbounds [3 x double], [3 x double]* %174, i64 0, i64 0
  %176 = load double, double* %175, align 8
  %177 = fmul double %172, %176
  %178 = fadd double %170, %177
  store double %178, double* %12, align 8
  %179 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %180 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %179, i32 0, i32 0
  %181 = getelementptr inbounds [3 x double], [3 x double]* %180, i64 0, i64 2
  %182 = load double, double* %181, align 8
  %183 = load double*, double** %9, align 8
  %184 = load double, double* %183, align 8
  %185 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %186 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %185, i32 0, i32 1
  %187 = getelementptr inbounds [3 x double], [3 x double]* %186, i64 0, i64 2
  %188 = load double, double* %187, align 8
  %189 = fmul double %184, %188
  %190 = fadd double %182, %189
  store double %190, double* %13, align 8
  %191 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 0
  %192 = load double, double* %191, align 16
  %193 = load double, double* %12, align 8
  %194 = fsub double %192, %193
  %195 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 2
  %196 = load double, double* %195, align 16
  %197 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %198 = load double, double* %197, align 16
  %199 = fsub double %196, %198
  %200 = fmul double %194, %199
  %201 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 2
  %202 = load double, double* %201, align 16
  %203 = load double, double* %13, align 8
  %204 = fsub double %202, %203
  %205 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 0
  %206 = load double, double* %205, align 16
  %207 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %208 = load double, double* %207, align 16
  %209 = fsub double %206, %208
  %210 = fmul double %204, %209
  %211 = fcmp olt double %200, %210
  br i1 %211, label %212, label %213

; <label>:212:                                    ; preds = %166
  store i32 0, i32* %5, align 4
  br label %355

; <label>:213:                                    ; preds = %166
  %214 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %215 = load double, double* %214, align 16
  %216 = load double, double* %12, align 8
  %217 = fsub double %215, %216
  %218 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %219 = load double, double* %218, align 16
  %220 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 2
  %221 = load double, double* %220, align 16
  %222 = fsub double %219, %221
  %223 = fmul double %217, %222
  %224 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %225 = load double, double* %224, align 16
  %226 = load double, double* %13, align 8
  %227 = fsub double %225, %226
  %228 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %229 = load double, double* %228, align 16
  %230 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 0
  %231 = load double, double* %230, align 16
  %232 = fsub double %229, %231
  %233 = fmul double %227, %232
  %234 = fcmp olt double %223, %233
  br i1 %234, label %235, label %236

; <label>:235:                                    ; preds = %213
  store i32 0, i32* %5, align 4
  br label %355

; <label>:236:                                    ; preds = %213
  %237 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %238 = load double, double* %237, align 16
  %239 = load double, double* %12, align 8
  %240 = fsub double %238, %239
  %241 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %242 = load double, double* %241, align 16
  %243 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %244 = load double, double* %243, align 16
  %245 = fsub double %242, %244
  %246 = fmul double %240, %245
  %247 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %248 = load double, double* %247, align 16
  %249 = load double, double* %13, align 8
  %250 = fsub double %248, %249
  %251 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %252 = load double, double* %251, align 16
  %253 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %254 = load double, double* %253, align 16
  %255 = fsub double %252, %254
  %256 = fmul double %250, %255
  %257 = fcmp olt double %246, %256
  br i1 %257, label %258, label %259

; <label>:258:                                    ; preds = %236
  store i32 0, i32* %5, align 4
  br label %355

; <label>:259:                                    ; preds = %236
  store i32 1, i32* %5, align 4
  br label %355

; <label>:260:                                    ; preds = %60
  %261 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %262 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %261, i32 0, i32 0
  %263 = getelementptr inbounds [3 x double], [3 x double]* %262, i64 0, i64 0
  %264 = load double, double* %263, align 8
  %265 = load double*, double** %9, align 8
  %266 = load double, double* %265, align 8
  %267 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %268 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %267, i32 0, i32 1
  %269 = getelementptr inbounds [3 x double], [3 x double]* %268, i64 0, i64 0
  %270 = load double, double* %269, align 8
  %271 = fmul double %266, %270
  %272 = fadd double %264, %271
  store double %272, double* %12, align 8
  %273 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %274 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %273, i32 0, i32 0
  %275 = getelementptr inbounds [3 x double], [3 x double]* %274, i64 0, i64 1
  %276 = load double, double* %275, align 8
  %277 = load double*, double** %9, align 8
  %278 = load double, double* %277, align 8
  %279 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %6, align 8
  %280 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %279, i32 0, i32 1
  %281 = getelementptr inbounds [3 x double], [3 x double]* %280, i64 0, i64 1
  %282 = load double, double* %281, align 8
  %283 = fmul double %278, %282
  %284 = fadd double %276, %283
  store double %284, double* %13, align 8
  %285 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 0
  %286 = load double, double* %285, align 16
  %287 = load double, double* %12, align 8
  %288 = fsub double %286, %287
  %289 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 1
  %290 = load double, double* %289, align 8
  %291 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %292 = load double, double* %291, align 8
  %293 = fsub double %290, %292
  %294 = fmul double %288, %293
  %295 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 1
  %296 = load double, double* %295, align 8
  %297 = load double, double* %13, align 8
  %298 = fsub double %296, %297
  %299 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 0
  %300 = load double, double* %299, align 16
  %301 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %302 = load double, double* %301, align 16
  %303 = fsub double %300, %302
  %304 = fmul double %298, %303
  %305 = fcmp olt double %294, %304
  br i1 %305, label %306, label %307

; <label>:306:                                    ; preds = %260
  store i32 0, i32* %5, align 4
  br label %355

; <label>:307:                                    ; preds = %260
  %308 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %309 = load double, double* %308, align 16
  %310 = load double, double* %12, align 8
  %311 = fsub double %309, %310
  %312 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %313 = load double, double* %312, align 8
  %314 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 1
  %315 = load double, double* %314, align 8
  %316 = fsub double %313, %315
  %317 = fmul double %311, %316
  %318 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %319 = load double, double* %318, align 8
  %320 = load double, double* %13, align 8
  %321 = fsub double %319, %320
  %322 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %323 = load double, double* %322, align 16
  %324 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 0
  %325 = load double, double* %324, align 16
  %326 = fsub double %323, %325
  %327 = fmul double %321, %326
  %328 = fcmp olt double %317, %327
  br i1 %328, label %329, label %330

; <label>:329:                                    ; preds = %307
  store i32 0, i32* %5, align 4
  br label %355

; <label>:330:                                    ; preds = %307
  %331 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %332 = load double, double* %331, align 16
  %333 = load double, double* %12, align 8
  %334 = fsub double %332, %333
  %335 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %336 = load double, double* %335, align 8
  %337 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %338 = load double, double* %337, align 8
  %339 = fsub double %336, %338
  %340 = fmul double %334, %339
  %341 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %342 = load double, double* %341, align 8
  %343 = load double, double* %13, align 8
  %344 = fsub double %342, %343
  %345 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %346 = load double, double* %345, align 16
  %347 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %348 = load double, double* %347, align 16
  %349 = fsub double %346, %348
  %350 = fmul double %344, %349
  %351 = fcmp olt double %340, %350
  br i1 %351, label %352, label %353

; <label>:352:                                    ; preds = %330
  store i32 0, i32* %5, align 4
  br label %355

; <label>:353:                                    ; preds = %330
  store i32 1, i32* %5, align 4
  br label %355

; <label>:354:                                    ; preds = %60
  store i32 0, i32* %5, align 4
  br label %355

; <label>:355:                                    ; preds = %354, %353, %352, %329, %306, %259, %258, %235, %212, %165, %164, %141, %118, %59, %36
  %356 = load i32, i32* %5, align 4
  ret i32 %356
}

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL8test_hitEPNS_20Mesh_Triangle_StructEPNS_11Mesh_StructEPNS_10Ray_StructES5_ddPNS_13istack_structE(%"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Struct"*, %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"*, double, double, %"struct.pov::istack_struct"*) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  %10 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %11 = alloca %"struct.pov::Ray_Struct"*, align 8
  %12 = alloca %"struct.pov::Ray_Struct"*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %"struct.pov::istack_struct"*, align 8
  %16 = alloca [3 x double], align 16
  %17 = alloca %"struct.pov::Object_Struct"*, align 8
  %18 = alloca double, align 8
  store %"struct.pov::Mesh_Triangle_Struct"* %0, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  store %"struct.pov::Mesh_Struct"* %1, %"struct.pov::Mesh_Struct"** %10, align 8
  store %"struct.pov::Ray_Struct"* %2, %"struct.pov::Ray_Struct"** %11, align 8
  store %"struct.pov::Ray_Struct"* %3, %"struct.pov::Ray_Struct"** %12, align 8
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store %"struct.pov::istack_struct"* %6, %"struct.pov::istack_struct"** %15, align 8
  %19 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %10, align 8
  %20 = bitcast %"struct.pov::Mesh_Struct"* %19 to %"struct.pov::Object_Struct"*
  store %"struct.pov::Object_Struct"* %20, %"struct.pov::Object_Struct"** %17, align 8
  %21 = load double, double* %13, align 8
  %22 = load double, double* %14, align 8
  %23 = fdiv double %21, %22
  store double %23, double* %18, align 8
  %24 = getelementptr inbounds [3 x double], [3 x double]* %16, i32 0, i32 0
  %25 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %11, align 8
  %26 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %25, i32 0, i32 0
  %27 = getelementptr inbounds [3 x double], [3 x double]* %26, i32 0, i32 0
  %28 = load double, double* %18, align 8
  %29 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %11, align 8
  %30 = getelementptr inbounds %"struct.pov::Ray_Struct", %"struct.pov::Ray_Struct"* %29, i32 0, i32 1
  %31 = getelementptr inbounds [3 x double], [3 x double]* %30, i32 0, i32 0
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(double* %24, double* %27, double %28, double* %31)
  %32 = getelementptr inbounds [3 x double], [3 x double]* %16, i32 0, i32 0
  %33 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %17, align 8
  %34 = getelementptr inbounds %"struct.pov::Object_Struct", %"struct.pov::Object_Struct"* %33, i32 0, i32 7
  %35 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %34, align 8
  %36 = call zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(double* %32, %"struct.pov::Object_Struct"* %35)
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %7
  %38 = load double, double* %18, align 8
  %39 = getelementptr inbounds [3 x double], [3 x double]* %16, i32 0, i32 0
  %40 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %17, align 8
  %41 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %9, align 8
  %42 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %41 to i8*
  %43 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %15, align 8
  call void @_ZN3pov18push_entry_pointerEdPdPNS_13Object_StructEPvPNS_13istack_structE(double %38, double* %39, %"struct.pov::Object_Struct"* %40, i8* %42, %"struct.pov::istack_struct"* %43)
  store i32 1, i32* %8, align 4
  br label %45

; <label>:44:                                     ; preds = %7
  store i32 0, i32* %8, align 4
  br label %45

; <label>:45:                                     ; preds = %44, %37
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL19intersect_bbox_treeEPNS_11Mesh_StructEPNS_10Ray_StructES3_dPNS_13istack_structE(%"struct.pov::Mesh_Struct"*, %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"*, double, %"struct.pov::istack_struct"*) #0 {
  %6 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %7 = alloca %"struct.pov::Ray_Struct"*, align 8
  %8 = alloca %"struct.pov::Ray_Struct"*, align 8
  %9 = alloca double, align 8
  %10 = alloca %"struct.pov::istack_struct"*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %"struct.pov::Rayinfo_Struct", align 8
  %16 = alloca %"struct.pov::BBox_Tree_Struct"*, align 8
  %17 = alloca %"struct.pov::BBox_Tree_Struct"*, align 8
  %18 = alloca i16, align 2
  store %"struct.pov::Mesh_Struct"* %0, %"struct.pov::Mesh_Struct"** %6, align 8
  store %"struct.pov::Ray_Struct"* %1, %"struct.pov::Ray_Struct"** %7, align 8
  store %"struct.pov::Ray_Struct"* %2, %"struct.pov::Ray_Struct"** %8, align 8
  store double %3, double* %9, align 8
  store %"struct.pov::istack_struct"* %4, %"struct.pov::istack_struct"** %10, align 8
  %19 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %20 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %19, i32 0, i32 17
  %21 = load i16, i16* %20, align 8
  store i16 %21, i16* %18, align 2
  %22 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %7, align 8
  call void @_ZN3pov14Create_RayinfoEPNS_10Ray_StructEPNS_14Rayinfo_StructE(%"struct.pov::Ray_Struct"* %22, %"struct.pov::Rayinfo_Struct"* %15)
  store i32 0, i32* %12, align 4
  %23 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  %24 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", %"struct.pov::Priority_Queue_Struct"* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  store double 2.000000e+10, double* %13, align 8
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 111))
  %25 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %26 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %25, i32 0, i32 14
  %27 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %26, align 8
  %28 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %27, i32 0, i32 9
  %29 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %28, align 8
  store %"struct.pov::BBox_Tree_Struct"* %29, %"struct.pov::BBox_Tree_Struct"** %17, align 8
  %30 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  %31 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %17, align 8
  %32 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %17, align 8
  %33 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %32, i32 0, i32 2
  call void @_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE(%"struct.pov::Priority_Queue_Struct"* %30, %"struct.pov::BBox_Tree_Struct"* %31, %"struct.pov::Bounding_Box_Struct"* %33, %"struct.pov::Rayinfo_Struct"* %15)
  br label %34

; <label>:34:                                     ; preds = %108, %5
  %35 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  %36 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", %"struct.pov::Priority_Queue_Struct"* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ugt i32 %37, 0
  br i1 %38, label %39, label %109

; <label>:39:                                     ; preds = %34
  %40 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  call void @_ZN3pov21Priority_Queue_DeleteEPNS_21Priority_Queue_StructEPdPPNS_16BBox_Tree_StructE(%"struct.pov::Priority_Queue_Struct"* %40, double* %14, %"struct.pov::BBox_Tree_Struct"** %16)
  %41 = load i16, i16* %18, align 2
  %42 = icmp ne i16 %41, 0
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %39
  %44 = load double, double* %14, align 8
  %45 = load double, double* %13, align 8
  %46 = fcmp ogt double %44, %45
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %43
  br label %109

; <label>:48:                                     ; preds = %43, %39
  %49 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %16, align 8
  %50 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %49, i32 0, i32 1
  %51 = load i16, i16* %50, align 2
  %52 = icmp ne i16 %51, 0
  br i1 %52, label %53, label %82

; <label>:53:                                     ; preds = %48
  store i32 0, i32* %11, align 4
  br label %54

; <label>:54:                                     ; preds = %78, %53
  %55 = load i32, i32* %11, align 4
  %56 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %16, align 8
  %57 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %56, i32 0, i32 1
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %81

; <label>:61:                                     ; preds = %54
  %62 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  %63 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %16, align 8
  %64 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %63, i32 0, i32 3
  %65 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %65, i64 %67
  %69 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %68, align 8
  %70 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %16, align 8
  %71 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %70, i32 0, i32 3
  %72 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %72, i64 %74
  %76 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %75, align 8
  %77 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %76, i32 0, i32 2
  call void @_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE(%"struct.pov::Priority_Queue_Struct"* %62, %"struct.pov::BBox_Tree_Struct"* %69, %"struct.pov::Bounding_Box_Struct"* %77, %"struct.pov::Rayinfo_Struct"* %15)
  br label %78

; <label>:78:                                     ; preds = %61
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %54

; <label>:81:                                     ; preds = %54
  br label %108

; <label>:82:                                     ; preds = %48
  %83 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %7, align 8
  %84 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %85 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %16, align 8
  %86 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %85, i32 0, i32 3
  %87 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %86, align 8
  %88 = bitcast %"struct.pov::BBox_Tree_Struct"** %87 to %"struct.pov::Mesh_Triangle_Struct"*
  %89 = call i32 @_ZN3povL23intersect_mesh_triangleEPNS_10Ray_StructEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPd(%"struct.pov::Ray_Struct"* %83, %"struct.pov::Mesh_Struct"* %84, %"struct.pov::Mesh_Triangle_Struct"* %88, double* %14)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

; <label>:91:                                     ; preds = %82
  %92 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %16, align 8
  %93 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %92, i32 0, i32 3
  %94 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %93, align 8
  %95 = bitcast %"struct.pov::BBox_Tree_Struct"** %94 to %"struct.pov::Mesh_Triangle_Struct"*
  %96 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %97 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %8, align 8
  %98 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %7, align 8
  %99 = load double, double* %14, align 8
  %100 = load double, double* %9, align 8
  %101 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %10, align 8
  %102 = call i32 @_ZN3povL8test_hitEPNS_20Mesh_Triangle_StructEPNS_11Mesh_StructEPNS_10Ray_StructES5_ddPNS_13istack_structE(%"struct.pov::Mesh_Triangle_Struct"* %95, %"struct.pov::Mesh_Struct"* %96, %"struct.pov::Ray_Struct"* %97, %"struct.pov::Ray_Struct"* %98, double %99, double %100, %"struct.pov::istack_struct"* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

; <label>:104:                                    ; preds = %91
  store i32 1, i32* %12, align 4
  %105 = load double, double* %14, align 8
  store double %105, double* %13, align 8
  br label %106

; <label>:106:                                    ; preds = %104, %91
  br label %107

; <label>:107:                                    ; preds = %106, %82
  br label %108

; <label>:108:                                    ; preds = %107, %81
  br label %34

; <label>:109:                                    ; preds = %47, %34
  %110 = load i32, i32* %12, align 4
  ret i32 %110
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov13Assign_VectorEPdPf(double*, float*) #1 comdat {
  %3 = alloca double*, align 8
  %4 = alloca float*, align 8
  store double* %0, double** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load float*, float** %4, align 8
  %6 = getelementptr inbounds float, float* %5, i64 0
  %7 = load float, float* %6, align 4
  %8 = fpext float %7 to double
  %9 = load double*, double** %3, align 8
  %10 = getelementptr inbounds double, double* %9, i64 0
  store double %8, double* %10, align 8
  %11 = load float*, float** %4, align 8
  %12 = getelementptr inbounds float, float* %11, i64 1
  %13 = load float, float* %12, align 4
  %14 = fpext float %13 to double
  %15 = load double*, double** %3, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  store double %14, double* %16, align 8
  %17 = load float*, float** %4, align 8
  %18 = getelementptr inbounds float, float* %17, i64 2
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = load double*, double** %3, align 8
  %22 = getelementptr inbounds double, double* %21, i64 2
  store double %20, double* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov4VDotERdPKdS2_(double* dereferenceable(8), double*, double*) #1 comdat {
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
define linkonce_odr void @_ZN3pov12VEvaluateRayEPdPKddS2_(double*, double*, double, double*) #1 comdat {
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

declare zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(double*, %"struct.pov::Object_Struct"*) #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN3pov18push_entry_pointerEdPdPNS_13Object_StructEPvPNS_13istack_structE(double, double*, %"struct.pov::Object_Struct"*, i8*, %"struct.pov::istack_struct"*) #0 comdat {
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca %"struct.pov::Object_Struct"*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %"struct.pov::istack_struct"*, align 8
  store double %0, double* %6, align 8
  store double* %1, double** %7, align 8
  store %"struct.pov::Object_Struct"* %2, %"struct.pov::Object_Struct"** %8, align 8
  store i8* %3, i8** %9, align 8
  store %"struct.pov::istack_struct"* %4, %"struct.pov::istack_struct"** %10, align 8
  %11 = load double, double* %6, align 8
  %12 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %10, align 8
  %13 = call dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"* %12)
  %14 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %13, i32 0, i32 0
  store double %11, double* %14, align 8
  %15 = load %"struct.pov::Object_Struct"*, %"struct.pov::Object_Struct"** %8, align 8
  %16 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %10, align 8
  %17 = call dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"* %16)
  %18 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %17, i32 0, i32 5
  store %"struct.pov::Object_Struct"* %15, %"struct.pov::Object_Struct"** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %10, align 8
  %21 = call dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"* %20)
  %22 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %21, i32 0, i32 17
  store i8* %19, i8** %22, align 8
  %23 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %10, align 8
  %24 = call dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"* %23)
  %25 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %24, i32 0, i32 1
  %26 = getelementptr inbounds [3 x double], [3 x double]* %25, i32 0, i32 0
  %27 = load double*, double** %7, align 8
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %26, double* %27)
  %28 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %10, align 8
  %29 = call dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"* %28)
  %30 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %29, i32 0, i32 4
  %31 = getelementptr inbounds [2 x double], [2 x double]* %30, i32 0, i32 0
  %32 = load double*, double** %7, align 8
  call void @_ZN3pov14Assign_UV_VectEPdS0_(double* %31, double* %32)
  %33 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %10, align 8
  %34 = call dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"* %33)
  %35 = getelementptr inbounds %"struct.pov::istk_entry", %"struct.pov::istk_entry"* %34, i32 0, i32 18
  store i8* null, i8** %35, align 8
  %36 = load %"struct.pov::istack_struct"*, %"struct.pov::istack_struct"** %10, align 8
  call void @_ZN3pov8incstackEPNS_13istack_structE(%"struct.pov::istack_struct"* %36)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(200) %"struct.pov::istk_entry"* @_ZN3pov4itopEPNS_13istack_structE(%"struct.pov::istack_struct"*) #1 comdat {
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

declare void @_ZN3pov8incstackEPNS_13istack_structE(%"struct.pov::istack_struct"*) #2

declare void @_ZN3pov14Create_RayinfoEPNS_10Ray_StructEPNS_14Rayinfo_StructE(%"struct.pov::Ray_Struct"*, %"struct.pov::Rayinfo_Struct"*) #2

declare void @_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE(%"struct.pov::Priority_Queue_Struct"*, %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Rayinfo_Struct"*) #2

declare void @_ZN3pov21Priority_Queue_DeleteEPNS_21Priority_Queue_StructEPdPPNS_16BBox_Tree_StructE(%"struct.pov::Priority_Queue_Struct"*, double*, %"struct.pov::BBox_Tree_Struct"**) #2

; Function Attrs: noinline uwtable
define internal i32 @_ZN3povL16inside_bbox_treeEPNS_11Mesh_StructEPNS_10Ray_StructE(%"struct.pov::Mesh_Struct"*, %"struct.pov::Ray_Struct"*) #0 {
  %3 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %4 = alloca %"struct.pov::Ray_Struct"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %"struct.pov::Rayinfo_Struct", align 8
  %10 = alloca %"struct.pov::BBox_Tree_Struct"*, align 8
  %11 = alloca %"struct.pov::BBox_Tree_Struct"*, align 8
  store %"struct.pov::Mesh_Struct"* %0, %"struct.pov::Mesh_Struct"** %3, align 8
  store %"struct.pov::Ray_Struct"* %1, %"struct.pov::Ray_Struct"** %4, align 8
  %12 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %4, align 8
  call void @_ZN3pov14Create_RayinfoEPNS_10Ray_StructEPNS_14Rayinfo_StructE(%"struct.pov::Ray_Struct"* %12, %"struct.pov::Rayinfo_Struct"* %9)
  store i32 0, i32* %6, align 4
  %13 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  %14 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", %"struct.pov::Priority_Queue_Struct"* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  store double 2.000000e+10, double* %7, align 8
  call void @_ZN3pov16Increase_CounterERx(i64* dereferenceable(8) getelementptr inbounds ([126 x i64], [126 x i64]* @_ZN3pov5statsE, i64 0, i64 111))
  %15 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %3, align 8
  %16 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %15, i32 0, i32 14
  %17 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %16, align 8
  %18 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %17, i32 0, i32 9
  %19 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %18, align 8
  store %"struct.pov::BBox_Tree_Struct"* %19, %"struct.pov::BBox_Tree_Struct"** %11, align 8
  %20 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  %21 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %11, align 8
  %22 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %11, align 8
  %23 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %22, i32 0, i32 2
  call void @_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE(%"struct.pov::Priority_Queue_Struct"* %20, %"struct.pov::BBox_Tree_Struct"* %21, %"struct.pov::Bounding_Box_Struct"* %23, %"struct.pov::Rayinfo_Struct"* %9)
  br label %24

; <label>:24:                                     ; preds = %77, %2
  %25 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  %26 = getelementptr inbounds %"struct.pov::Priority_Queue_Struct", %"struct.pov::Priority_Queue_Struct"* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ugt i32 %27, 0
  br i1 %28, label %29, label %78

; <label>:29:                                     ; preds = %24
  %30 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  call void @_ZN3pov21Priority_Queue_DeleteEPNS_21Priority_Queue_StructEPdPPNS_16BBox_Tree_StructE(%"struct.pov::Priority_Queue_Struct"* %30, double* %8, %"struct.pov::BBox_Tree_Struct"** %10)
  %31 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %10, align 8
  %32 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %31, i32 0, i32 1
  %33 = load i16, i16* %32, align 2
  %34 = icmp ne i16 %33, 0
  br i1 %34, label %35, label %64

; <label>:35:                                     ; preds = %29
  store i32 0, i32* %5, align 4
  br label %36

; <label>:36:                                     ; preds = %60, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %10, align 8
  %39 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %38, i32 0, i32 1
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %63

; <label>:43:                                     ; preds = %36
  %44 = load %"struct.pov::Priority_Queue_Struct"*, %"struct.pov::Priority_Queue_Struct"** @_ZN3povL10Mesh_QueueE, align 8
  %45 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %10, align 8
  %46 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %45, i32 0, i32 3
  %47 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %47, i64 %49
  %51 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %50, align 8
  %52 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %10, align 8
  %53 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %52, i32 0, i32 3
  %54 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %54, i64 %56
  %58 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %57, align 8
  %59 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %58, i32 0, i32 2
  call void @_ZN3pov17Check_And_EnqueueEPNS_21Priority_Queue_StructEPNS_16BBox_Tree_StructEPNS_19Bounding_Box_StructEPNS_14Rayinfo_StructE(%"struct.pov::Priority_Queue_Struct"* %44, %"struct.pov::BBox_Tree_Struct"* %51, %"struct.pov::Bounding_Box_Struct"* %59, %"struct.pov::Rayinfo_Struct"* %9)
  br label %60

; <label>:60:                                     ; preds = %43
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %36

; <label>:63:                                     ; preds = %36
  br label %77

; <label>:64:                                     ; preds = %29
  %65 = load %"struct.pov::Ray_Struct"*, %"struct.pov::Ray_Struct"** %4, align 8
  %66 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %3, align 8
  %67 = load %"struct.pov::BBox_Tree_Struct"*, %"struct.pov::BBox_Tree_Struct"** %10, align 8
  %68 = getelementptr inbounds %"struct.pov::BBox_Tree_Struct", %"struct.pov::BBox_Tree_Struct"* %67, i32 0, i32 3
  %69 = load %"struct.pov::BBox_Tree_Struct"**, %"struct.pov::BBox_Tree_Struct"*** %68, align 8
  %70 = bitcast %"struct.pov::BBox_Tree_Struct"** %69 to %"struct.pov::Mesh_Triangle_Struct"*
  %71 = call i32 @_ZN3povL23intersect_mesh_triangleEPNS_10Ray_StructEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPd(%"struct.pov::Ray_Struct"* %65, %"struct.pov::Mesh_Struct"* %66, %"struct.pov::Mesh_Triangle_Struct"* %70, double* %8)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %76

; <label>:76:                                     ; preds = %73, %64
  br label %77

; <label>:77:                                     ; preds = %76, %63
  br label %24

; <label>:78:                                     ; preds = %24
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 1
  ret i32 %80
}

; Function Attrs: noinline uwtable
define internal void @_ZN3povL18smooth_mesh_normalEPNS_11Mesh_StructEPdPNS_20Mesh_Triangle_StructES2_(%"struct.pov::Mesh_Struct"*, double*, %"struct.pov::Mesh_Triangle_Struct"*, double*) #0 {
  %5 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca [3 x double], align 16
  %16 = alloca [3 x double], align 16
  %17 = alloca [3 x double], align 16
  %18 = alloca [3 x double], align 16
  store %"struct.pov::Mesh_Struct"* %0, %"struct.pov::Mesh_Struct"** %5, align 8
  store double* %1, double** %6, align 8
  store %"struct.pov::Mesh_Triangle_Struct"* %2, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  store double* %3, double** %8, align 8
  %19 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %5, align 8
  %20 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %21 = getelementptr inbounds [3 x double], [3 x double]* %16, i32 0, i32 0
  %22 = getelementptr inbounds [3 x double], [3 x double]* %17, i32 0, i32 0
  %23 = getelementptr inbounds [3 x double], [3 x double]* %18, i32 0, i32 0
  call void @_ZN3povL20get_triangle_normalsEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPdS4_S4_(%"struct.pov::Mesh_Struct"* %19, %"struct.pov::Mesh_Triangle_Struct"* %20, double* %21, double* %22, double* %23)
  %24 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  %25 = load double*, double** %8, align 8
  %26 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %5, align 8
  %27 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %26, i32 0, i32 14
  %28 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %27, align 8
  %29 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %28, i32 0, i32 6
  %30 = load [3 x float]*, [3 x float]** %29, align 8
  %31 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %32 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds [3 x float], [3 x float]* %30, i64 %33
  %35 = getelementptr inbounds [3 x float], [3 x float]* %34, i32 0, i32 0
  call void @_ZN3pov4VSubEPdPKdPKf(double* %24, double* %25, float* %35)
  %36 = getelementptr inbounds [3 x double], [3 x double]* %15, i32 0, i32 0
  %37 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %38 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %37, i32 0, i32 15
  %39 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 0
  call void @_ZN3pov4VDotERdPKdPKf(double* dereferenceable(8) %10, double* %36, float* %39)
  %40 = load double, double* %10, align 8
  %41 = fcmp olt double %40, 1.000000e-07
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %4
  %43 = load double*, double** %6, align 8
  %44 = getelementptr inbounds [3 x double], [3 x double]* %16, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdS0_(double* %43, double* %44)
  br label %168

; <label>:45:                                     ; preds = %4
  %46 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %47 = bitcast %"struct.pov::Mesh_Triangle_Struct"* %46 to i8*
  %48 = load i8, i8* %47, align 8
  %49 = lshr i8 %48, 3
  %50 = and i8 %49, 3
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %5, align 8
  %53 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %52, i32 0, i32 14
  %54 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %53, align 8
  %55 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %54, i32 0, i32 6
  %56 = load [3 x float]*, [3 x float]** %55, align 8
  %57 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %58 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds [3 x float], [3 x float]* %56, i64 %59
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x float], [3 x float]* %60, i64 0, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  store double %65, double* %12, align 8
  %66 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %5, align 8
  %67 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %66, i32 0, i32 14
  %68 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %67, align 8
  %69 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %68, i32 0, i32 6
  %70 = load [3 x float]*, [3 x float]** %69, align 8
  %71 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %72 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds [3 x float], [3 x float]* %70, i64 %73
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x float], [3 x float]* %74, i64 0, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fpext float %78 to double
  store double %79, double* %13, align 8
  %80 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %5, align 8
  %81 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %80, i32 0, i32 14
  %82 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %81, align 8
  %83 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %82, i32 0, i32 6
  %84 = load [3 x float]*, [3 x float]** %83, align 8
  %85 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %86 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds [3 x float], [3 x float]* %84, i64 %87
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x float], [3 x float]* %88, i64 0, i64 %90
  %92 = load float, float* %91, align 4
  %93 = fpext float %92 to double
  store double %93, double* %14, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 %95
  %97 = load double, double* %96, align 8
  %98 = load double, double* %10, align 8
  %99 = fdiv double %97, %98
  %100 = load double, double* %12, align 8
  %101 = fadd double %99, %100
  %102 = load double, double* %13, align 8
  %103 = fsub double %101, %102
  %104 = load double, double* %14, align 8
  %105 = load double, double* %13, align 8
  %106 = fsub double %104, %105
  %107 = fdiv double %103, %106
  store double %107, double* %11, align 8
  %108 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %109 = load double, double* %108, align 16
  %110 = load double, double* %10, align 8
  %111 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 0
  %112 = load double, double* %111, align 16
  %113 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %114 = load double, double* %113, align 16
  %115 = fsub double %112, %114
  %116 = load double, double* %11, align 8
  %117 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 0
  %118 = load double, double* %117, align 16
  %119 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 0
  %120 = load double, double* %119, align 16
  %121 = fsub double %118, %120
  %122 = fmul double %116, %121
  %123 = fadd double %115, %122
  %124 = fmul double %110, %123
  %125 = fadd double %109, %124
  %126 = load double*, double** %6, align 8
  %127 = getelementptr inbounds double, double* %126, i64 0
  store double %125, double* %127, align 8
  %128 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %129 = load double, double* %128, align 8
  %130 = load double, double* %10, align 8
  %131 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 1
  %132 = load double, double* %131, align 8
  %133 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %134 = load double, double* %133, align 8
  %135 = fsub double %132, %134
  %136 = load double, double* %11, align 8
  %137 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 1
  %138 = load double, double* %137, align 8
  %139 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 1
  %140 = load double, double* %139, align 8
  %141 = fsub double %138, %140
  %142 = fmul double %136, %141
  %143 = fadd double %135, %142
  %144 = fmul double %130, %143
  %145 = fadd double %129, %144
  %146 = load double*, double** %6, align 8
  %147 = getelementptr inbounds double, double* %146, i64 1
  store double %145, double* %147, align 8
  %148 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %149 = load double, double* %148, align 16
  %150 = load double, double* %10, align 8
  %151 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 2
  %152 = load double, double* %151, align 16
  %153 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %154 = load double, double* %153, align 16
  %155 = fsub double %152, %154
  %156 = load double, double* %11, align 8
  %157 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 2
  %158 = load double, double* %157, align 16
  %159 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 2
  %160 = load double, double* %159, align 16
  %161 = fsub double %158, %160
  %162 = fmul double %156, %161
  %163 = fadd double %155, %162
  %164 = fmul double %150, %163
  %165 = fadd double %149, %164
  %166 = load double*, double** %6, align 8
  %167 = getelementptr inbounds double, double* %166, i64 2
  store double %165, double* %167, align 8
  br label %168

; <label>:168:                                    ; preds = %45, %42
  ret void
}

declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(double*, double*, %"struct.pov::Transform_Struct"*) #2

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

; Function Attrs: noinline nounwind uwtable
define internal void @_ZN3povL20get_triangle_normalsEPNS_11Mesh_StructEPNS_20Mesh_Triangle_StructEPdS4_S4_(%"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Triangle_Struct"*, double*, double*, double*) #1 {
  %6 = alloca %"struct.pov::Mesh_Struct"*, align 8
  %7 = alloca %"struct.pov::Mesh_Triangle_Struct"*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  store %"struct.pov::Mesh_Struct"* %0, %"struct.pov::Mesh_Struct"** %6, align 8
  store %"struct.pov::Mesh_Triangle_Struct"* %1, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %11 = load double*, double** %8, align 8
  %12 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %13 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %12, i32 0, i32 14
  %14 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %13, align 8
  %15 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %14, i32 0, i32 5
  %16 = load [3 x float]*, [3 x float]** %15, align 8
  %17 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %18 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [3 x float], [3 x float]* %16, i64 %19
  %21 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdPf(double* %11, float* %21)
  %22 = load double*, double** %9, align 8
  %23 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %24 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %23, i32 0, i32 14
  %25 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %24, align 8
  %26 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %25, i32 0, i32 5
  %27 = load [3 x float]*, [3 x float]** %26, align 8
  %28 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %29 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds [3 x float], [3 x float]* %27, i64 %30
  %32 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdPf(double* %22, float* %32)
  %33 = load double*, double** %10, align 8
  %34 = load %"struct.pov::Mesh_Struct"*, %"struct.pov::Mesh_Struct"** %6, align 8
  %35 = getelementptr inbounds %"struct.pov::Mesh_Struct", %"struct.pov::Mesh_Struct"* %34, i32 0, i32 14
  %36 = load %"struct.pov::Mesh_Data_Struct"*, %"struct.pov::Mesh_Data_Struct"** %35, align 8
  %37 = getelementptr inbounds %"struct.pov::Mesh_Data_Struct", %"struct.pov::Mesh_Data_Struct"* %36, i32 0, i32 5
  %38 = load [3 x float]*, [3 x float]** %37, align 8
  %39 = load %"struct.pov::Mesh_Triangle_Struct"*, %"struct.pov::Mesh_Triangle_Struct"** %7, align 8
  %40 = getelementptr inbounds %"struct.pov::Mesh_Triangle_Struct", %"struct.pov::Mesh_Triangle_Struct"* %39, i32 0, i32 10
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [3 x float], [3 x float]* %38, i64 %41
  %43 = getelementptr inbounds [3 x float], [3 x float]* %42, i32 0, i32 0
  call void @_ZN3pov13Assign_VectorEPdPf(double* %33, float* %43)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov4VSubEPdPKdPKf(double*, double*, float*) #1 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca float*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store float* %2, float** %6, align 8
  %7 = load double*, double** %5, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  %9 = load double, double* %8, align 8
  %10 = load float*, float** %6, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = fsub double %9, %13
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 0
  store double %14, double* %16, align 8
  %17 = load double*, double** %5, align 8
  %18 = getelementptr inbounds double, double* %17, i64 1
  %19 = load double, double* %18, align 8
  %20 = load float*, float** %6, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load float, float* %21, align 4
  %23 = fpext float %22 to double
  %24 = fsub double %19, %23
  %25 = load double*, double** %4, align 8
  %26 = getelementptr inbounds double, double* %25, i64 1
  store double %24, double* %26, align 8
  %27 = load double*, double** %5, align 8
  %28 = getelementptr inbounds double, double* %27, i64 2
  %29 = load double, double* %28, align 8
  %30 = load float*, float** %6, align 8
  %31 = getelementptr inbounds float, float* %30, i64 2
  %32 = load float, float* %31, align 4
  %33 = fpext float %32 to double
  %34 = fsub double %29, %33
  %35 = load double*, double** %4, align 8
  %36 = getelementptr inbounds double, double* %35, i64 2
  store double %34, double* %36, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov4VDotERdPKdPKf(double* dereferenceable(8), double*, float*) #1 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca float*, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store float* %2, float** %6, align 8
  %7 = load double*, double** %5, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  %9 = load double, double* %8, align 8
  %10 = load float*, float** %6, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = fmul double %9, %13
  %15 = load double*, double** %5, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = load float*, float** %6, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  %20 = load float, float* %19, align 4
  %21 = fpext float %20 to double
  %22 = fmul double %17, %21
  %23 = fadd double %14, %22
  %24 = load double*, double** %5, align 8
  %25 = getelementptr inbounds double, double* %24, i64 2
  %26 = load double, double* %25, align 8
  %27 = load float*, float** %6, align 8
  %28 = getelementptr inbounds float, float* %27, i64 2
  %29 = load float, float* %28, align 4
  %30 = fpext float %29 to double
  %31 = fmul double %26, %30
  %32 = fadd double %23, %31
  %33 = load double*, double** %4, align 8
  store double %32, double* %33, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov13VInverseScaleEPdPKdd(double*, double*, double) #1 comdat {
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

declare %"struct.pov::Transform_Struct"* @_ZN3pov16Create_TransformEv() #2

declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(%"struct.pov::Bounding_Box_Struct"*, %"struct.pov::Transform_Struct"*) #2

declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(%"struct.pov::Transform_Struct"*, %"struct.pov::Transform_Struct"*) #2

declare void @_ZN3pov18Transform_TexturesEPNS_14Texture_StructEPNS_16Transform_StructE(%"struct.pov::Texture_Struct"*, %"struct.pov::Transform_Struct"*) #2

declare %"struct.pov::Transform_Struct"* @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(%"struct.pov::Transform_Struct"*) #2

declare %"struct.pov::Texture_Struct"* @_ZN3pov13Copy_TexturesEPNS_14Texture_StructE(%"struct.pov::Texture_Struct"*) #2

declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(%"struct.pov::Transform_Struct"*) #2

declare void @_ZN3pov16Destroy_TexturesEPNS_14Texture_StructE(%"struct.pov::Texture_Struct"*) #2

declare void @_ZN3pov17Destroy_BBox_TreeEPNS_16BBox_Tree_StructE(%"struct.pov::BBox_Tree_Struct"*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov4VSubEPfPKdS2_(float*, double*, double*) #1 comdat {
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

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN3pov10VNormalizeEPfPKf(float*, float*) #0 comdat {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load float*, float** %4, align 8
  call void @_ZN3pov7VLengthERfPKf(float* dereferenceable(4) %5, float* %6)
  %7 = load float*, float** %3, align 8
  %8 = load float*, float** %4, align 8
  %9 = load float, float* %5, align 4
  call void @_ZN3pov13VInverseScaleEPfPKff(float* %7, float* %8, float %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov15VInverseScaleEqEPff(float*, float) #1 comdat {
  %3 = alloca float*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float %1, float* %4, align 4
  %6 = load float, float* %4, align 4
  %7 = fpext float %6 to double
  %8 = fdiv double 1.000000e+00, %7
  %9 = fptrunc double %8 to float
  store float %9, float* %5, align 4
  %10 = load float, float* %5, align 4
  %11 = load float*, float** %3, align 8
  %12 = getelementptr inbounds float, float* %11, i64 0
  %13 = load float, float* %12, align 4
  %14 = fmul float %13, %10
  store float %14, float* %12, align 4
  %15 = load float, float* %5, align 4
  %16 = load float*, float** %3, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  %18 = load float, float* %17, align 4
  %19 = fmul float %18, %15
  store float %19, float* %17, align 4
  %20 = load float, float* %5, align 4
  %21 = load float*, float** %3, align 8
  %22 = getelementptr inbounds float, float* %21, i64 2
  %23 = load float, float* %22, align 4
  %24 = fmul float %23, %20
  store float %24, float* %22, align 4
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN3pov7VLengthERfPKf(float* dereferenceable(4), float*) #0 comdat {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load float*, float** %4, align 8
  %6 = getelementptr inbounds float, float* %5, i64 0
  %7 = load float, float* %6, align 4
  %8 = load float*, float** %4, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = fmul float %7, %10
  %12 = load float*, float** %4, align 8
  %13 = getelementptr inbounds float, float* %12, i64 1
  %14 = load float, float* %13, align 4
  %15 = load float*, float** %4, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  %17 = load float, float* %16, align 4
  %18 = fmul float %14, %17
  %19 = fadd float %11, %18
  %20 = load float*, float** %4, align 8
  %21 = getelementptr inbounds float, float* %20, i64 2
  %22 = load float, float* %21, align 4
  %23 = load float*, float** %4, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  %25 = load float, float* %24, align 4
  %26 = fmul float %22, %25
  %27 = fadd float %19, %26
  %28 = call float @_ZSt4sqrtf(float %27)
  %29 = load float*, float** %3, align 8
  store float %28, float* %29, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov13VInverseScaleEPfPKff(float*, float*, float) #1 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float %2, float* %6, align 4
  %8 = load float, float* %6, align 4
  %9 = fpext float %8 to double
  %10 = fdiv double 1.000000e+00, %9
  %11 = fptrunc double %10 to float
  store float %11, float* %7, align 4
  %12 = load float*, float** %5, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  %14 = load float, float* %13, align 4
  %15 = load float, float* %7, align 4
  %16 = fmul float %14, %15
  %17 = load float*, float** %4, align 8
  %18 = getelementptr inbounds float, float* %17, i64 0
  store float %16, float* %18, align 4
  %19 = load float*, float** %5, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  %21 = load float, float* %20, align 4
  %22 = load float, float* %7, align 4
  %23 = fmul float %21, %22
  %24 = load float*, float** %4, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  store float %23, float* %25, align 4
  %26 = load float*, float** %5, align 8
  %27 = getelementptr inbounds float, float* %26, i64 2
  %28 = load float, float* %27, align 4
  %29 = load float, float* %7, align 4
  %30 = fmul float %28, %29
  %31 = load float*, float** %4, align 8
  %32 = getelementptr inbounds float, float* %31, i64 2
  store float %30, float* %32, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float @_ZSt4sqrtf(float) #1 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call float @sqrtf(float %3) #6
  ret float %4
}

; Function Attrs: nounwind readnone
declare float @sqrtf(float) #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov13Assign_VectorEPfPd(float*, double*) #1 comdat {
  %3 = alloca float*, align 8
  %4 = alloca double*, align 8
  store float* %0, float** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load double*, double** %4, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  %7 = load double, double* %6, align 8
  %8 = fptrunc double %7 to float
  %9 = load float*, float** %3, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  store float %8, float* %10, align 4
  %11 = load double*, double** %4, align 8
  %12 = getelementptr inbounds double, double* %11, i64 1
  %13 = load double, double* %12, align 8
  %14 = fptrunc double %13 to float
  %15 = load float*, float** %3, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  store float %14, float* %16, align 4
  %17 = load double*, double** %4, align 8
  %18 = getelementptr inbounds double, double* %17, i64 2
  %19 = load double, double* %18, align 8
  %20 = fptrunc double %19 to float
  %21 = load float*, float** %3, align 8
  %22 = getelementptr inbounds float, float* %21, i64 2
  store float %20, float* %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov4VSubEPfPKfS2_(float*, float*, float*) #1 comdat {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %7 = load float*, float** %5, align 8
  %8 = getelementptr inbounds float, float* %7, i64 0
  %9 = load float, float* %8, align 4
  %10 = load float*, float** %6, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  %12 = load float, float* %11, align 4
  %13 = fsub float %9, %12
  %14 = load float*, float** %4, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  store float %13, float* %15, align 4
  %16 = load float*, float** %5, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %6, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  %21 = load float, float* %20, align 4
  %22 = fsub float %18, %21
  %23 = load float*, float** %4, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  store float %22, float* %24, align 4
  %25 = load float*, float** %5, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  %27 = load float, float* %26, align 4
  %28 = load float*, float** %6, align 8
  %29 = getelementptr inbounds float, float* %28, i64 2
  %30 = load float, float* %29, align 4
  %31 = fsub float %27, %30
  %32 = load float*, float** %4, align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  store float %31, float* %33, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float @_ZSt4fabsf(float) #1 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call float @llvm.fabs.f32(float %3)
  ret float %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov13Assign_VectorEPfS0_(float*, float*) #1 comdat {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load float*, float** %4, align 8
  %6 = getelementptr inbounds float, float* %5, i64 0
  %7 = load float, float* %6, align 4
  %8 = load float*, float** %3, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  store float %7, float* %9, align 4
  %10 = load float*, float** %4, align 8
  %11 = getelementptr inbounds float, float* %10, i64 1
  %12 = load float, float* %11, align 4
  %13 = load float*, float** %3, align 8
  %14 = getelementptr inbounds float, float* %13, i64 1
  store float %12, float* %14, align 4
  %15 = load float*, float** %4, align 8
  %16 = getelementptr inbounds float, float* %15, i64 2
  %17 = load float, float* %16, align 4
  %18 = load float*, float** %3, align 8
  %19 = getelementptr inbounds float, float* %18, i64 2
  store float %17, float* %19, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov4VSubEPdPKfS2_(double*, float*, float*) #1 comdat {
  %4 = alloca double*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  store double* %0, double** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %7 = load float*, float** %5, align 8
  %8 = getelementptr inbounds float, float* %7, i64 0
  %9 = load float, float* %8, align 4
  %10 = load float*, float** %6, align 8
  %11 = getelementptr inbounds float, float* %10, i64 0
  %12 = load float, float* %11, align 4
  %13 = fsub float %9, %12
  %14 = fpext float %13 to double
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 0
  store double %14, double* %16, align 8
  %17 = load float*, float** %5, align 8
  %18 = getelementptr inbounds float, float* %17, i64 1
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %6, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load float, float* %21, align 4
  %23 = fsub float %19, %22
  %24 = fpext float %23 to double
  %25 = load double*, double** %4, align 8
  %26 = getelementptr inbounds double, double* %25, i64 1
  store double %24, double* %26, align 8
  %27 = load float*, float** %5, align 8
  %28 = getelementptr inbounds float, float* %27, i64 2
  %29 = load float, float* %28, align 4
  %30 = load float*, float** %6, align 8
  %31 = getelementptr inbounds float, float* %30, i64 2
  %32 = load float, float* %31, align 4
  %33 = fsub float %29, %32
  %34 = fpext float %33 to double
  %35 = load double*, double** %4, align 8
  %36 = getelementptr inbounds double, double* %35, i64 2
  store double %34, double* %36, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov6VScaleEPdPKdd(double*, double*, double) #1 comdat {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double %2, double* %6, align 8
  %7 = load double*, double** %5, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  %9 = load double, double* %8, align 8
  %10 = load double, double* %6, align 8
  %11 = fmul double %9, %10
  %12 = load double*, double** %4, align 8
  %13 = getelementptr inbounds double, double* %12, i64 0
  store double %11, double* %13, align 8
  %14 = load double*, double** %5, align 8
  %15 = getelementptr inbounds double, double* %14, i64 1
  %16 = load double, double* %15, align 8
  %17 = load double, double* %6, align 8
  %18 = fmul double %16, %17
  %19 = load double*, double** %4, align 8
  %20 = getelementptr inbounds double, double* %19, i64 1
  store double %18, double* %20, align 8
  %21 = load double*, double** %5, align 8
  %22 = getelementptr inbounds double, double* %21, i64 2
  %23 = load double, double* %22, align 8
  %24 = load double, double* %6, align 8
  %25 = fmul double %23, %24
  %26 = load double*, double** %4, align 8
  %27 = getelementptr inbounds double, double* %26, i64 2
  store double %25, double* %27, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3pov6VSubEqEPdPKd(double*, double*) #1 comdat {
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
  %11 = fsub double %10, %7
  store double %11, double* %9, align 8
  %12 = load double*, double** %4, align 8
  %13 = getelementptr inbounds double, double* %12, i64 1
  %14 = load double, double* %13, align 8
  %15 = load double*, double** %3, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = fsub double %17, %14
  store double %18, double* %16, align 8
  %19 = load double*, double** %4, align 8
  %20 = getelementptr inbounds double, double* %19, i64 2
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %3, align 8
  %23 = getelementptr inbounds double, double* %22, i64 2
  %24 = load double, double* %23, align 8
  %25 = fsub double %24, %21
  store double %25, double* %23, align 8
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
