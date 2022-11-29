; ModuleID = 'host/ir_O0/gcc_stor-layout.ll'
source_filename = "stor-layout.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %union.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i24 }
%struct.eh_status = type opaque
%struct.stmt_status = type opaque
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %union.tree_node**, %struct.rtx_def** }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack* }
%struct.varasm_status = type opaque
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.initial_value_struct = type opaque
%struct.temp_slot = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.lang_decl = type opaque
%struct.record_layout_info_s = type { %union.tree_node*, %union.tree_node*, i32, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.anon.0 = type { i32 }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }

@set_alignment = global i32 0, align 4
@reference_types_internal = internal global i32 0, align 4
@pending_sizes = internal global %union.tree_node* null, align 8
@current_function_decl = external global %union.tree_node*, align 8
@tree_code_type = external global [256 x i8], align 16
@.str = private unnamed_addr constant [14 x i8] c"stor-layout.c\00", align 1
@__FUNCTION__.put_pending_sizes = private unnamed_addr constant [18 x i8] c"put_pending_sizes\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"type size can't be explicitly evaluated\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"variable-size type declared outside of any function\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@immediate_size_expand = common global i32 0, align 4
@cfun = external global %struct.function*, align 8
@mode_bitsize = external constant [59 x i16], align 16
@class_narrowest_mode = external constant [9 x i32], align 16
@mode_wider_mode = external constant [59 x i8], align 16
@__FUNCTION__.smallest_mode_for_size = private unnamed_addr constant [23 x i8] c"smallest_mode_for_size\00", align 1
@mode_class = external constant [59 x i32], align 16
@__FUNCTION__.int_mode_for_mode = private unnamed_addr constant [18 x i8] c"int_mode_for_mode\00", align 1
@__FUNCTION__.layout_decl = private unnamed_addr constant [12 x i8] c"layout_decl\00", align 1
@sizetype_tab = common global [6 x %union.tree_node*] zeroinitializer, align 16
@maximum_field_alignment = common global i32 0, align 4
@warn_larger_than = external global i32, align 4
@larger_than_size = external global i64, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"size of `%s' is %d bytes\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"size of `%s' is larger than %d bytes\00", align 1
@lang_adjust_rli = global void (%struct.record_layout_info_s*)* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0Aoffset\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" bitpos\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"\0Aaligns: rec = %u, unpack = %u, unpad = %u, off = %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"packed may be necessary\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"pending statics:\0A\00", align 1
@targetm = external global %struct.gcc_target, align 8
@warn_packed = external global i32, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"packed attribute is unnecessary for `%s'\00", align 1
@warn_padded = external global i32, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"padding struct to align `%s'\00", align 1
@target_flags = external global i32, align 4
@__FUNCTION__.layout_type = private unnamed_addr constant [12 x i8] c"layout_type\00", align 1
@mode_size = external constant [59 x i8], align 16
@ptr_mode = external global i32, align 4
@sizetype_set = internal global i32 0, align 4
@early_type_list = internal global %union.tree_node* null, align 8
@integer_types = external global [11 x %union.tree_node*], align 16
@__FUNCTION__.set_sizetype = private unnamed_addr constant [13 x i8] c"set_sizetype\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"bit_size_type\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"padding struct size to alignment boundary\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"packed attribute is unnecessary\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @internal_reference_types() #0 {
  store i32 1, i32* @reference_types_internal, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %union.tree_node* @get_pending_sizes() #0 {
  %1 = alloca %union.tree_node*, align 8
  %2 = alloca %union.tree_node*, align 8
  %3 = load %union.tree_node*, %union.tree_node** @pending_sizes, align 8
  store %union.tree_node* %3, %union.tree_node** %1, align 8
  %4 = load %union.tree_node*, %union.tree_node** %1, align 8
  store %union.tree_node* %4, %union.tree_node** %2, align 8
  br label %5

; <label>:5:                                      ; preds = %17, %0
  %6 = load %union.tree_node*, %union.tree_node** %2, align 8
  %7 = icmp ne %union.tree_node* %6, null
  br i1 %7, label %8, label %22

; <label>:8:                                      ; preds = %5
  %9 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %10 = load %union.tree_node*, %union.tree_node** %2, align 8
  %11 = bitcast %union.tree_node* %10 to %struct.tree_list*
  %12 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %11, i32 0, i32 2
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8
  %14 = bitcast %union.tree_node* %13 to %struct.tree_exp*
  %15 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %14, i32 0, i32 2
  %16 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %15, i64 0, i64 1
  store %union.tree_node* %9, %union.tree_node** %16, align 8
  br label %17

; <label>:17:                                     ; preds = %8
  %18 = load %union.tree_node*, %union.tree_node** %2, align 8
  %19 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %19, i32 0, i32 0
  %21 = load %union.tree_node*, %union.tree_node** %20, align 8
  store %union.tree_node* %21, %union.tree_node** %2, align 8
  br label %5

; <label>:22:                                     ; preds = %5
  store %union.tree_node* null, %union.tree_node** @pending_sizes, align 8
  %23 = load %union.tree_node*, %union.tree_node** %1, align 8
  ret %union.tree_node* %23
}

; Function Attrs: noinline nounwind uwtable
define i32 @is_pending_size(%union.tree_node*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  %5 = load %union.tree_node*, %union.tree_node** @pending_sizes, align 8
  store %union.tree_node* %5, %union.tree_node** %4, align 8
  br label %6

; <label>:6:                                      ; preds = %18, %1
  %7 = load %union.tree_node*, %union.tree_node** %4, align 8
  %8 = icmp ne %union.tree_node* %7, null
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %6
  %10 = load %union.tree_node*, %union.tree_node** %4, align 8
  %11 = bitcast %union.tree_node* %10 to %struct.tree_list*
  %12 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %11, i32 0, i32 2
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8
  %14 = load %union.tree_node*, %union.tree_node** %3, align 8
  %15 = icmp eq %union.tree_node* %13, %14
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %9
  store i32 1, i32* %2, align 4
  br label %24

; <label>:17:                                     ; preds = %9
  br label %18

; <label>:18:                                     ; preds = %17
  %19 = load %union.tree_node*, %union.tree_node** %4, align 8
  %20 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %20, i32 0, i32 0
  %22 = load %union.tree_node*, %union.tree_node** %21, align 8
  store %union.tree_node* %22, %union.tree_node** %4, align 8
  br label %6

; <label>:23:                                     ; preds = %6
  store i32 0, i32* %2, align 4
  br label %24

; <label>:24:                                     ; preds = %23, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define void @put_pending_size(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %41, %1
  %4 = load %union.tree_node*, %union.tree_node** %2, align 8
  %5 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 255
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 49
  br i1 %13, label %39, label %14

; <label>:14:                                     ; preds = %3
  %15 = load %union.tree_node*, %union.tree_node** %2, align 8
  %16 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 255
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 50
  br i1 %24, label %25, label %37

; <label>:25:                                     ; preds = %14
  %26 = load %union.tree_node*, %union.tree_node** %2, align 8
  %27 = bitcast %union.tree_node* %26 to %struct.tree_exp*
  %28 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %27, i32 0, i32 2
  %29 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %28, i64 0, i64 1
  %30 = load %union.tree_node*, %union.tree_node** %29, align 8
  %31 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = lshr i32 %33, 9
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br label %37

; <label>:37:                                     ; preds = %25, %14
  %38 = phi i1 [ false, %14 ], [ %36, %25 ]
  br label %39

; <label>:39:                                     ; preds = %37, %3
  %40 = phi i1 [ true, %3 ], [ %38, %37 ]
  br i1 %40, label %41, label %47

; <label>:41:                                     ; preds = %39
  %42 = load %union.tree_node*, %union.tree_node** %2, align 8
  %43 = bitcast %union.tree_node* %42 to %struct.tree_exp*
  %44 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %43, i32 0, i32 2
  %45 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %44, i64 0, i64 0
  %46 = load %union.tree_node*, %union.tree_node** %45, align 8
  store %union.tree_node* %46, %union.tree_node** %2, align 8
  br label %3

; <label>:47:                                     ; preds = %39
  %48 = load %union.tree_node*, %union.tree_node** %2, align 8
  %49 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %50 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 118
  br i1 %53, label %54, label %58

; <label>:54:                                     ; preds = %47
  %55 = load %union.tree_node*, %union.tree_node** %2, align 8
  %56 = load %union.tree_node*, %union.tree_node** @pending_sizes, align 8
  %57 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %55, %union.tree_node* %56)
  store %union.tree_node* %57, %union.tree_node** @pending_sizes, align 8
  br label %58

; <label>:58:                                     ; preds = %54, %47
  ret void
}

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

; Function Attrs: noinline nounwind uwtable
define void @put_pending_sizes(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %3 = load %union.tree_node*, %union.tree_node** @pending_sizes, align 8
  %4 = icmp ne %union.tree_node* %3, null
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.put_pending_sizes, i32 0, i32 0)) #4
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = load %union.tree_node*, %union.tree_node** %2, align 8
  store %union.tree_node* %7, %union.tree_node** @pending_sizes, align 8
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define %union.tree_node* @variable_size(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  %5 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = lshr i32 %7, 9
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

; <label>:11:                                     ; preds = %1
  %12 = call i32 @global_bindings_p()
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %11
  %15 = load %union.tree_node*, %union.tree_node** %3, align 8
  %16 = call i32 @contains_placeholder_p(%union.tree_node* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %14, %11, %1
  %19 = load %union.tree_node*, %union.tree_node** %3, align 8
  store %union.tree_node* %19, %union.tree_node** %2, align 8
  br label %76

; <label>:20:                                     ; preds = %14
  %21 = load %union.tree_node*, %union.tree_node** %3, align 8
  %22 = call %union.tree_node* @save_expr(%union.tree_node* %21)
  store %union.tree_node* %22, %union.tree_node** %3, align 8
  %23 = load %union.tree_node*, %union.tree_node** %3, align 8
  %24 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 118
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %20
  %30 = load %union.tree_node*, %union.tree_node** %3, align 8
  %31 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, -16385
  %35 = or i32 %34, 16384
  store i32 %35, i32* %32, align 8
  br label %36

; <label>:36:                                     ; preds = %29, %20
  %37 = call i32 @global_bindings_p()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

; <label>:39:                                     ; preds = %36
  %40 = load %union.tree_node*, %union.tree_node** %3, align 8
  %41 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = lshr i32 %43, 9
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %39
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0))
  br label %49

; <label>:48:                                     ; preds = %39
  call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0))
  br label %49

; <label>:49:                                     ; preds = %48, %47
  %50 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 16), align 16
  store %union.tree_node* %50, %union.tree_node** %2, align 8
  br label %76

; <label>:51:                                     ; preds = %36
  %52 = load i32, i32* @immediate_size_expand, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

; <label>:54:                                     ; preds = %51
  %55 = load %union.tree_node*, %union.tree_node** %3, align 8
  %56 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 11), align 8
  %57 = call %struct.rtx_def* @expand_expr(%union.tree_node* %56, %struct.rtx_def* null, i32 0, i32 0)
  %58 = call %struct.rtx_def* @expand_expr(%union.tree_node* %55, %struct.rtx_def* %57, i32 0, i32 0)
  br label %74

; <label>:59:                                     ; preds = %51
  %60 = load %struct.function*, %struct.function** @cfun, align 8
  %61 = icmp ne %struct.function* %60, null
  br i1 %61, label %62, label %71

; <label>:62:                                     ; preds = %59
  %63 = load %struct.function*, %struct.function** @cfun, align 8
  %64 = getelementptr inbounds %struct.function, %struct.function* %63, i32 0, i32 56
  %65 = bitcast i24* %64 to i32*
  %66 = load i32, i32* %65, align 8
  %67 = lshr i32 %66, 19
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %62
  br label %73

; <label>:71:                                     ; preds = %62, %59
  %72 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @put_pending_size(%union.tree_node* %72)
  br label %73

; <label>:73:                                     ; preds = %71, %70
  br label %74

; <label>:74:                                     ; preds = %73, %54
  %75 = load %union.tree_node*, %union.tree_node** %3, align 8
  store %union.tree_node* %75, %union.tree_node** %2, align 8
  br label %76

; <label>:76:                                     ; preds = %74, %49, %18
  %77 = load %union.tree_node*, %union.tree_node** %2, align 8
  ret %union.tree_node* %77
}

declare i32 @global_bindings_p() #1

declare i32 @contains_placeholder_p(%union.tree_node*) #1

declare %union.tree_node* @save_expr(%union.tree_node*) #1

declare void @error(i8*, ...) #1

declare %struct.rtx_def* @expand_expr(%union.tree_node*, %struct.rtx_def*, i32, i32) #1

; Function Attrs: noinline nounwind uwtable
define i32 @mode_for_size(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 5), align 2
  %14 = zext i16 %13 to i32
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  store i32 51, i32* %4, align 4
  br label %43

; <label>:17:                                     ; preds = %11, %3
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [9 x i32], [9 x i32]* @class_narrowest_mode, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  br label %22

; <label>:22:                                     ; preds = %36, %17
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %43

; <label>:35:                                     ; preds = %25
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  store i32 %41, i32* %8, align 4
  br label %22

; <label>:42:                                     ; preds = %22
  store i32 51, i32* %4, align 4
  br label %43

; <label>:43:                                     ; preds = %42, %33, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define i32 @mode_for_size_tree(%union.tree_node*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.tree_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %union.tree_node* %0, %union.tree_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %union.tree_node*, %union.tree_node** %5, align 8
  %9 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 255
  %13 = icmp ne i32 %12, 25
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %3
  %15 = load %union.tree_node*, %union.tree_node** %5, align 8
  %16 = call i32 @compare_tree_int(%union.tree_node* %15, i64 1000)
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %14, %3
  store i32 51, i32* %4, align 4
  br label %29

; <label>:19:                                     ; preds = %14
  %20 = load %union.tree_node*, %union.tree_node** %5, align 8
  %21 = bitcast %union.tree_node* %20 to %struct.tree_int_cst*
  %22 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @mode_for_size(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

; <label>:29:                                     ; preds = %19, %18
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare i32 @compare_tree_int(%union.tree_node*, i64) #1

; Function Attrs: noinline nounwind uwtable
define i32 @smallest_mode_for_size(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [9 x i32], [9 x i32]* @class_narrowest_mode, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  br label %10

; <label>:10:                                     ; preds = %24, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = load i32, i32* %3, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %13
  %22 = load i32, i32* %5, align 4
  ret i32 %22

; <label>:23:                                     ; preds = %13
  br label %24

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %5, align 4
  br label %10

; <label>:30:                                     ; preds = %10
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.smallest_mode_for_size, i32 0, i32 0)) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define i32 @int_mode_for_mode(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %21 [
    i32 1, label %7
    i32 3, label %7
    i32 5, label %8
    i32 6, label %8
    i32 2, label %8
    i32 7, label %8
    i32 8, label %8
    i32 0, label %15
    i32 4, label %20
  ]

; <label>:7:                                      ; preds = %1, %1
  br label %22

; <label>:8:                                      ; preds = %1, %1, %1, %1, %1
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = call i32 @mode_for_size(i32 %13, i32 1, i32 0)
  store i32 %14, i32* %2, align 4
  br label %22

; <label>:15:                                     ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 51
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  br label %22

; <label>:19:                                     ; preds = %15
  br label %20

; <label>:20:                                     ; preds = %19, %1
  br label %21

; <label>:21:                                     ; preds = %20, %1
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.int_mode_for_mode, i32 0, i32 0)) #4
  unreachable

; <label>:22:                                     ; preds = %18, %8, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define %union.tree_node* @round_up(%union.tree_node*, i32) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = load %union.tree_node*, %union.tree_node** %3, align 8
  %9 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %9, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8
  %12 = call %union.tree_node* @size_int_type_wide(i64 %7, %union.tree_node* %11)
  store %union.tree_node* %12, %union.tree_node** %5, align 8
  %13 = load %union.tree_node*, %union.tree_node** %3, align 8
  %14 = load %union.tree_node*, %union.tree_node** %5, align 8
  %15 = call %union.tree_node* @size_binop(i32 63, %union.tree_node* %13, %union.tree_node* %14)
  %16 = load %union.tree_node*, %union.tree_node** %5, align 8
  %17 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %15, %union.tree_node* %16)
  ret %union.tree_node* %17
}

declare %union.tree_node* @size_int_type_wide(i64, %union.tree_node*) #1

declare %union.tree_node* @size_binop(i32, %union.tree_node*, %union.tree_node*) #1

; Function Attrs: noinline nounwind uwtable
define %union.tree_node* @round_down(%union.tree_node*, i32) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = load %union.tree_node*, %union.tree_node** %3, align 8
  %9 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %9, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8
  %12 = call %union.tree_node* @size_int_type_wide(i64 %7, %union.tree_node* %11)
  store %union.tree_node* %12, %union.tree_node** %5, align 8
  %13 = load %union.tree_node*, %union.tree_node** %3, align 8
  %14 = load %union.tree_node*, %union.tree_node** %5, align 8
  %15 = call %union.tree_node* @size_binop(i32 64, %union.tree_node* %13, %union.tree_node* %14)
  %16 = load %union.tree_node*, %union.tree_node** %5, align 8
  %17 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %15, %union.tree_node* %16)
  ret %union.tree_node* %17
}

; Function Attrs: noinline nounwind uwtable
define void @layout_decl(%union.tree_node*, i32) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.tree_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.tree_node*, align 8
  %9 = alloca i32, align 4
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %union.tree_node*, %union.tree_node** %3, align 8
  %11 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %11, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8
  store %union.tree_node* %13, %union.tree_node** %5, align 8
  %14 = load %union.tree_node*, %union.tree_node** %3, align 8
  %15 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 255
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %2
  br label %588

; <label>:22:                                     ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 34
  br i1 %24, label %25, label %38

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 35
  br i1 %27, label %28, label %38

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 36
  br i1 %30, label %31, label %38

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 33
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 37
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 346, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.layout_decl, i32 0, i32 0)) #4
  unreachable

; <label>:38:                                     ; preds = %34, %31, %28, %25, %22
  br label %39

; <label>:39:                                     ; preds = %38
  %40 = load %union.tree_node*, %union.tree_node** %5, align 8
  %41 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16
  %42 = icmp eq %union.tree_node* %40, %41
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 27), align 8
  store %union.tree_node* %44, %union.tree_node** %5, align 8
  br label %45

; <label>:45:                                     ; preds = %43, %39
  %46 = load %union.tree_node*, %union.tree_node** %5, align 8
  %47 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %48 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = lshr i32 %49, 13
  %51 = and i32 %50, 1
  %52 = load %union.tree_node*, %union.tree_node** %3, align 8
  %53 = bitcast %union.tree_node* %52 to %struct.tree_common*
  %54 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %51, 1
  %57 = shl i32 %56, 13
  %58 = and i32 %55, -8193
  %59 = or i32 %58, %57
  store i32 %59, i32* %54, align 8
  %60 = load %union.tree_node*, %union.tree_node** %3, align 8
  %61 = bitcast %union.tree_node* %60 to %struct.tree_decl*
  %62 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %61, i32 0, i32 5
  %63 = bitcast i48* %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, 255
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %85

; <label>:68:                                     ; preds = %45
  %69 = load %union.tree_node*, %union.tree_node** %5, align 8
  %70 = bitcast %union.tree_node* %69 to %struct.tree_type*
  %71 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = lshr i32 %72, 9
  %74 = and i32 %73, 127
  %75 = load %union.tree_node*, %union.tree_node** %3, align 8
  %76 = bitcast %union.tree_node* %75 to %struct.tree_decl*
  %77 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %76, i32 0, i32 5
  %78 = bitcast i48* %77 to i64*
  %79 = zext i32 %74 to i64
  %80 = load i64, i64* %78, align 8
  %81 = and i64 %79, 255
  %82 = and i64 %80, -256
  %83 = or i64 %82, %81
  store i64 %83, i64* %78, align 8
  %84 = trunc i64 %81 to i32
  br label %85

; <label>:85:                                     ; preds = %68, %45
  %86 = load %union.tree_node*, %union.tree_node** %3, align 8
  %87 = bitcast %union.tree_node* %86 to %struct.tree_decl*
  %88 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %87, i32 0, i32 4
  %89 = load %union.tree_node*, %union.tree_node** %88, align 8
  %90 = icmp eq %union.tree_node* %89, null
  br i1 %90, label %91, label %106

; <label>:91:                                     ; preds = %85
  %92 = load %union.tree_node*, %union.tree_node** %5, align 8
  %93 = bitcast %union.tree_node* %92 to %struct.tree_type*
  %94 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %93, i32 0, i32 2
  %95 = load %union.tree_node*, %union.tree_node** %94, align 8
  %96 = load %union.tree_node*, %union.tree_node** %3, align 8
  %97 = bitcast %union.tree_node* %96 to %struct.tree_decl*
  %98 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %97, i32 0, i32 4
  store %union.tree_node* %95, %union.tree_node** %98, align 8
  %99 = load %union.tree_node*, %union.tree_node** %5, align 8
  %100 = bitcast %union.tree_node* %99 to %struct.tree_type*
  %101 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %100, i32 0, i32 3
  %102 = load %union.tree_node*, %union.tree_node** %101, align 8
  %103 = load %union.tree_node*, %union.tree_node** %3, align 8
  %104 = bitcast %union.tree_node* %103 to %struct.tree_decl*
  %105 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %104, i32 0, i32 7
  store %union.tree_node* %102, %union.tree_node** %105, align 8
  br label %118

; <label>:106:                                    ; preds = %85
  %107 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %108 = load %union.tree_node*, %union.tree_node** %3, align 8
  %109 = bitcast %union.tree_node* %108 to %struct.tree_decl*
  %110 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %109, i32 0, i32 4
  %111 = load %union.tree_node*, %union.tree_node** %110, align 8
  %112 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 19), align 8
  %113 = call %union.tree_node* @size_binop(i32 63, %union.tree_node* %111, %union.tree_node* %112)
  %114 = call %union.tree_node* @convert(%union.tree_node* %107, %union.tree_node* %113)
  %115 = load %union.tree_node*, %union.tree_node** %3, align 8
  %116 = bitcast %union.tree_node* %115 to %struct.tree_decl*
  %117 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %116, i32 0, i32 7
  store %union.tree_node* %114, %union.tree_node** %117, align 8
  br label %118

; <label>:118:                                    ; preds = %106, %91
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 37
  br i1 %120, label %121, label %131

; <label>:121:                                    ; preds = %118
  %122 = load %union.tree_node*, %union.tree_node** %3, align 8
  %123 = bitcast %union.tree_node* %122 to %struct.tree_decl*
  %124 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %123, i32 0, i32 5
  %125 = bitcast i48* %124 to i64*
  %126 = load i64, i64* %125, align 8
  %127 = lshr i64 %126, 12
  %128 = and i64 %127, 1
  %129 = trunc i64 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %186, label %131

; <label>:131:                                    ; preds = %121, %118
  %132 = load %union.tree_node*, %union.tree_node** %3, align 8
  %133 = bitcast %union.tree_node* %132 to %struct.tree_decl*
  %134 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %133, i32 0, i32 6
  %135 = bitcast %union.anon* %134 to %struct.anon.0*
  %136 = bitcast %struct.anon.0* %135 to i32*
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, 16777215
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %166, label %140

; <label>:140:                                    ; preds = %131
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 37
  br i1 %142, label %143, label %153

; <label>:143:                                    ; preds = %140
  %144 = load %union.tree_node*, %union.tree_node** %3, align 8
  %145 = bitcast %union.tree_node* %144 to %struct.tree_decl*
  %146 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %145, i32 0, i32 5
  %147 = bitcast i48* %146 to i64*
  %148 = load i64, i64* %147, align 8
  %149 = lshr i64 %148, 10
  %150 = and i64 %149, 1
  %151 = trunc i64 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %186, label %153

; <label>:153:                                    ; preds = %143, %140
  %154 = load %union.tree_node*, %union.tree_node** %5, align 8
  %155 = bitcast %union.tree_node* %154 to %struct.tree_type*
  %156 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = load %union.tree_node*, %union.tree_node** %3, align 8
  %159 = bitcast %union.tree_node* %158 to %struct.tree_decl*
  %160 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %159, i32 0, i32 6
  %161 = bitcast %union.anon* %160 to %struct.anon.0*
  %162 = bitcast %struct.anon.0* %161 to i32*
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, 16777215
  %165 = icmp ugt i32 %157, %164
  br i1 %165, label %166, label %186

; <label>:166:                                    ; preds = %153, %131
  %167 = load %union.tree_node*, %union.tree_node** %5, align 8
  %168 = bitcast %union.tree_node* %167 to %struct.tree_type*
  %169 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = load %union.tree_node*, %union.tree_node** %3, align 8
  %172 = bitcast %union.tree_node* %171 to %struct.tree_decl*
  %173 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %172, i32 0, i32 6
  %174 = bitcast %union.anon* %173 to %struct.anon.0*
  %175 = bitcast %struct.anon.0* %174 to i32*
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %170, 16777215
  %178 = and i32 %176, -16777216
  %179 = or i32 %178, %177
  store i32 %179, i32* %175, align 8
  %180 = load %union.tree_node*, %union.tree_node** %3, align 8
  %181 = bitcast %union.tree_node* %180 to %struct.tree_decl*
  %182 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %181, i32 0, i32 5
  %183 = bitcast i48* %182 to i64*
  %184 = load i64, i64* %183, align 8
  %185 = and i64 %184, -34359738369
  store i64 %185, i64* %183, align 8
  br label %186

; <label>:186:                                    ; preds = %166, %153, %143, %121
  %187 = load i32, i32* %6, align 4
  %188 = icmp eq i32 %187, 37
  br i1 %188, label %189, label %313

; <label>:189:                                    ; preds = %186
  %190 = load %union.tree_node*, %union.tree_node** %3, align 8
  %191 = bitcast %union.tree_node* %190 to %struct.tree_decl*
  %192 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %191, i32 0, i32 5
  %193 = bitcast i48* %192 to i64*
  %194 = load i64, i64* %193, align 8
  %195 = lshr i64 %194, 12
  %196 = and i64 %195, 1
  %197 = trunc i64 %196 to i32
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

; <label>:199:                                    ; preds = %189
  %200 = load %union.tree_node*, %union.tree_node** %5, align 8
  br label %202

; <label>:201:                                    ; preds = %189
  br label %202

; <label>:202:                                    ; preds = %201, %199
  %203 = phi %union.tree_node* [ %200, %199 ], [ null, %201 ]
  %204 = load %union.tree_node*, %union.tree_node** %3, align 8
  %205 = bitcast %union.tree_node* %204 to %struct.tree_decl*
  %206 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %205, i32 0, i32 11
  store %union.tree_node* %203, %union.tree_node** %206, align 8
  %207 = load i32, i32* @maximum_field_alignment, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %240

; <label>:209:                                    ; preds = %202
  %210 = load %union.tree_node*, %union.tree_node** %3, align 8
  %211 = bitcast %union.tree_node* %210 to %struct.tree_decl*
  %212 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %211, i32 0, i32 6
  %213 = bitcast %union.anon* %212 to %struct.anon.0*
  %214 = bitcast %struct.anon.0* %213 to i32*
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %215, 16777215
  %217 = load i32, i32* @maximum_field_alignment, align 4
  %218 = icmp ult i32 %216, %217
  br i1 %218, label %219, label %227

; <label>:219:                                    ; preds = %209
  %220 = load %union.tree_node*, %union.tree_node** %3, align 8
  %221 = bitcast %union.tree_node* %220 to %struct.tree_decl*
  %222 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %221, i32 0, i32 6
  %223 = bitcast %union.anon* %222 to %struct.anon.0*
  %224 = bitcast %struct.anon.0* %223 to i32*
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, 16777215
  br label %229

; <label>:227:                                    ; preds = %209
  %228 = load i32, i32* @maximum_field_alignment, align 4
  br label %229

; <label>:229:                                    ; preds = %227, %219
  %230 = phi i32 [ %226, %219 ], [ %228, %227 ]
  %231 = load %union.tree_node*, %union.tree_node** %3, align 8
  %232 = bitcast %union.tree_node* %231 to %struct.tree_decl*
  %233 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %232, i32 0, i32 6
  %234 = bitcast %union.anon* %233 to %struct.anon.0*
  %235 = bitcast %struct.anon.0* %234 to i32*
  %236 = load i32, i32* %235, align 8
  %237 = and i32 %230, 16777215
  %238 = and i32 %236, -16777216
  %239 = or i32 %238, %237
  store i32 %239, i32* %235, align 8
  br label %312

; <label>:240:                                    ; preds = %202
  %241 = load %union.tree_node*, %union.tree_node** %3, align 8
  %242 = bitcast %union.tree_node* %241 to %struct.tree_decl*
  %243 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %242, i32 0, i32 5
  %244 = bitcast i48* %243 to i64*
  %245 = load i64, i64* %244, align 8
  %246 = lshr i64 %245, 10
  %247 = and i64 %246, 1
  %248 = trunc i64 %247 to i32
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %311

; <label>:250:                                    ; preds = %240
  %251 = load %union.tree_node*, %union.tree_node** %3, align 8
  %252 = bitcast %union.tree_node* %251 to %struct.tree_decl*
  %253 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %252, i32 0, i32 5
  %254 = bitcast i48* %253 to i64*
  %255 = load i64, i64* %254, align 8
  %256 = lshr i64 %255, 34
  %257 = and i64 %256, 1
  %258 = trunc i64 %257 to i32
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %276, label %260

; <label>:260:                                    ; preds = %250
  %261 = load %union.tree_node*, %union.tree_node** %3, align 8
  %262 = bitcast %union.tree_node* %261 to %struct.tree_decl*
  %263 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %262, i32 0, i32 7
  %264 = load %union.tree_node*, %union.tree_node** %263, align 8
  %265 = icmp eq %union.tree_node* %264, null
  br i1 %265, label %276, label %266

; <label>:266:                                    ; preds = %260
  %267 = load %union.tree_node*, %union.tree_node** %3, align 8
  %268 = bitcast %union.tree_node* %267 to %struct.tree_decl*
  %269 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %268, i32 0, i32 7
  %270 = load %union.tree_node*, %union.tree_node** %269, align 8
  %271 = bitcast %union.tree_node* %270 to %struct.tree_common*
  %272 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = and i32 %273, 255
  %275 = icmp eq i32 %274, 25
  br i1 %275, label %276, label %311

; <label>:276:                                    ; preds = %266, %260, %250
  %277 = load %union.tree_node*, %union.tree_node** %3, align 8
  %278 = bitcast %union.tree_node* %277 to %struct.tree_decl*
  %279 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %278, i32 0, i32 6
  %280 = bitcast %union.anon* %279 to %struct.anon.0*
  %281 = bitcast %struct.anon.0* %280 to i32*
  %282 = load i32, i32* %281, align 8
  %283 = and i32 %282, 16777215
  %284 = icmp slt i32 %283, 8
  br i1 %284, label %285, label %293

; <label>:285:                                    ; preds = %276
  %286 = load %union.tree_node*, %union.tree_node** %3, align 8
  %287 = bitcast %union.tree_node* %286 to %struct.tree_decl*
  %288 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %287, i32 0, i32 6
  %289 = bitcast %union.anon* %288 to %struct.anon.0*
  %290 = bitcast %struct.anon.0* %289 to i32*
  %291 = load i32, i32* %290, align 8
  %292 = and i32 %291, 16777215
  br label %294

; <label>:293:                                    ; preds = %276
  br label %294

; <label>:294:                                    ; preds = %293, %285
  %295 = phi i32 [ %292, %285 ], [ 8, %293 ]
  %296 = load %union.tree_node*, %union.tree_node** %3, align 8
  %297 = bitcast %union.tree_node* %296 to %struct.tree_decl*
  %298 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %297, i32 0, i32 6
  %299 = bitcast %union.anon* %298 to %struct.anon.0*
  %300 = bitcast %struct.anon.0* %299 to i32*
  %301 = load i32, i32* %300, align 8
  %302 = and i32 %295, 16777215
  %303 = and i32 %301, -16777216
  %304 = or i32 %303, %302
  store i32 %304, i32* %300, align 8
  %305 = load %union.tree_node*, %union.tree_node** %3, align 8
  %306 = bitcast %union.tree_node* %305 to %struct.tree_decl*
  %307 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %306, i32 0, i32 5
  %308 = bitcast i48* %307 to i64*
  %309 = load i64, i64* %308, align 8
  %310 = and i64 %309, -34359738369
  store i64 %310, i64* %308, align 8
  br label %311

; <label>:311:                                    ; preds = %294, %266, %240
  br label %312

; <label>:312:                                    ; preds = %311, %229
  br label %313

; <label>:313:                                    ; preds = %312, %186
  %314 = load i32, i32* %6, align 4
  %315 = icmp eq i32 %314, 37
  br i1 %315, label %316, label %417

; <label>:316:                                    ; preds = %313
  %317 = load %union.tree_node*, %union.tree_node** %3, align 8
  %318 = bitcast %union.tree_node* %317 to %struct.tree_decl*
  %319 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %318, i32 0, i32 5
  %320 = bitcast i48* %319 to i64*
  %321 = load i64, i64* %320, align 8
  %322 = lshr i64 %321, 12
  %323 = and i64 %322, 1
  %324 = trunc i64 %323 to i32
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %417

; <label>:326:                                    ; preds = %316
  %327 = load %union.tree_node*, %union.tree_node** %5, align 8
  %328 = bitcast %union.tree_node* %327 to %struct.tree_type*
  %329 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %328, i32 0, i32 2
  %330 = load %union.tree_node*, %union.tree_node** %329, align 8
  %331 = icmp ne %union.tree_node* %330, null
  br i1 %331, label %332, label %417

; <label>:332:                                    ; preds = %326
  %333 = load %union.tree_node*, %union.tree_node** %5, align 8
  %334 = bitcast %union.tree_node* %333 to %struct.tree_type*
  %335 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %334, i32 0, i32 2
  %336 = load %union.tree_node*, %union.tree_node** %335, align 8
  %337 = bitcast %union.tree_node* %336 to %struct.tree_common*
  %338 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = and i32 %339, 255
  %341 = icmp eq i32 %340, 25
  br i1 %341, label %342, label %417

; <label>:342:                                    ; preds = %332
  %343 = load %union.tree_node*, %union.tree_node** %5, align 8
  %344 = bitcast %union.tree_node* %343 to %struct.tree_type*
  %345 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 4
  %347 = lshr i32 %346, 9
  %348 = and i32 %347, 127
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %417

; <label>:353:                                    ; preds = %342
  %354 = load %union.tree_node*, %union.tree_node** %3, align 8
  %355 = bitcast %union.tree_node* %354 to %struct.tree_decl*
  %356 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %355, i32 0, i32 4
  %357 = load %union.tree_node*, %union.tree_node** %356, align 8
  %358 = call i32 @mode_for_size_tree(%union.tree_node* %357, i32 1, i32 1)
  store i32 %358, i32* %7, align 4
  %359 = load i32, i32* %7, align 4
  %360 = icmp ne i32 %359, 51
  br i1 %360, label %361, label %416

; <label>:361:                                    ; preds = %353
  %362 = load i32, i32* %4, align 4
  %363 = load i32, i32* %7, align 4
  %364 = call i32 @get_mode_alignment(i32 %363)
  %365 = icmp uge i32 %362, %364
  br i1 %365, label %366, label %416

; <label>:366:                                    ; preds = %361
  %367 = load i32, i32* %7, align 4
  %368 = call i32 @get_mode_alignment(i32 %367)
  %369 = load %union.tree_node*, %union.tree_node** %3, align 8
  %370 = bitcast %union.tree_node* %369 to %struct.tree_decl*
  %371 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %370, i32 0, i32 6
  %372 = bitcast %union.anon* %371 to %struct.anon.0*
  %373 = bitcast %struct.anon.0* %372 to i32*
  %374 = load i32, i32* %373, align 8
  %375 = and i32 %374, 16777215
  %376 = icmp ugt i32 %368, %375
  br i1 %376, label %377, label %380

; <label>:377:                                    ; preds = %366
  %378 = load i32, i32* %7, align 4
  %379 = call i32 @get_mode_alignment(i32 %378)
  br label %388

; <label>:380:                                    ; preds = %366
  %381 = load %union.tree_node*, %union.tree_node** %3, align 8
  %382 = bitcast %union.tree_node* %381 to %struct.tree_decl*
  %383 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %382, i32 0, i32 6
  %384 = bitcast %union.anon* %383 to %struct.anon.0*
  %385 = bitcast %struct.anon.0* %384 to i32*
  %386 = load i32, i32* %385, align 8
  %387 = and i32 %386, 16777215
  br label %388

; <label>:388:                                    ; preds = %380, %377
  %389 = phi i32 [ %379, %377 ], [ %387, %380 ]
  %390 = load %union.tree_node*, %union.tree_node** %3, align 8
  %391 = bitcast %union.tree_node* %390 to %struct.tree_decl*
  %392 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %391, i32 0, i32 6
  %393 = bitcast %union.anon* %392 to %struct.anon.0*
  %394 = bitcast %struct.anon.0* %393 to i32*
  %395 = load i32, i32* %394, align 8
  %396 = and i32 %389, 16777215
  %397 = and i32 %395, -16777216
  %398 = or i32 %397, %396
  store i32 %398, i32* %394, align 8
  %399 = load i32, i32* %7, align 4
  %400 = load %union.tree_node*, %union.tree_node** %3, align 8
  %401 = bitcast %union.tree_node* %400 to %struct.tree_decl*
  %402 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %401, i32 0, i32 5
  %403 = bitcast i48* %402 to i64*
  %404 = zext i32 %399 to i64
  %405 = load i64, i64* %403, align 8
  %406 = and i64 %404, 255
  %407 = and i64 %405, -256
  %408 = or i64 %407, %406
  store i64 %408, i64* %403, align 8
  %409 = trunc i64 %406 to i32
  %410 = load %union.tree_node*, %union.tree_node** %3, align 8
  %411 = bitcast %union.tree_node* %410 to %struct.tree_decl*
  %412 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %411, i32 0, i32 5
  %413 = bitcast i48* %412 to i64*
  %414 = load i64, i64* %413, align 8
  %415 = and i64 %414, -4097
  store i64 %415, i64* %413, align 8
  br label %416

; <label>:416:                                    ; preds = %388, %361, %353
  br label %417

; <label>:417:                                    ; preds = %416, %342, %332, %326, %316, %313
  %418 = load i32, i32* %6, align 4
  %419 = icmp eq i32 %418, 37
  br i1 %419, label %420, label %480

; <label>:420:                                    ; preds = %417
  %421 = load %union.tree_node*, %union.tree_node** %3, align 8
  %422 = bitcast %union.tree_node* %421 to %struct.tree_decl*
  %423 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %422, i32 0, i32 5
  %424 = bitcast i48* %423 to i64*
  %425 = load i64, i64* %424, align 8
  %426 = lshr i64 %425, 12
  %427 = and i64 %426, 1
  %428 = trunc i64 %427 to i32
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %480

; <label>:430:                                    ; preds = %420
  %431 = load %union.tree_node*, %union.tree_node** %5, align 8
  %432 = bitcast %union.tree_node* %431 to %struct.tree_type*
  %433 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %432, i32 0, i32 6
  %434 = load i32, i32* %433, align 4
  %435 = lshr i32 %434, 9
  %436 = and i32 %435, 127
  %437 = icmp eq i32 %436, 51
  br i1 %437, label %438, label %480

; <label>:438:                                    ; preds = %430
  %439 = load %union.tree_node*, %union.tree_node** %3, align 8
  %440 = bitcast %union.tree_node* %439 to %struct.tree_decl*
  %441 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %440, i32 0, i32 5
  %442 = bitcast i48* %441 to i64*
  %443 = load i64, i64* %442, align 8
  %444 = and i64 %443, 255
  %445 = trunc i64 %444 to i32
  %446 = icmp eq i32 %445, 51
  br i1 %446, label %447, label %480

; <label>:447:                                    ; preds = %438
  %448 = load i32, i32* %4, align 4
  %449 = load %union.tree_node*, %union.tree_node** %5, align 8
  %450 = bitcast %union.tree_node* %449 to %struct.tree_type*
  %451 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %450, i32 0, i32 7
  %452 = load i32, i32* %451, align 8
  %453 = icmp uge i32 %448, %452
  br i1 %453, label %454, label %480

; <label>:454:                                    ; preds = %447
  %455 = load %union.tree_node*, %union.tree_node** %3, align 8
  %456 = bitcast %union.tree_node* %455 to %struct.tree_decl*
  %457 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %456, i32 0, i32 6
  %458 = bitcast %union.anon* %457 to %struct.anon.0*
  %459 = bitcast %struct.anon.0* %458 to i32*
  %460 = load i32, i32* %459, align 8
  %461 = and i32 %460, 16777215
  %462 = load %union.tree_node*, %union.tree_node** %5, align 8
  %463 = bitcast %union.tree_node* %462 to %struct.tree_type*
  %464 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %463, i32 0, i32 7
  %465 = load i32, i32* %464, align 8
  %466 = icmp uge i32 %461, %465
  br i1 %466, label %467, label %480

; <label>:467:                                    ; preds = %454
  %468 = load %union.tree_node*, %union.tree_node** %3, align 8
  %469 = bitcast %union.tree_node* %468 to %struct.tree_decl*
  %470 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %469, i32 0, i32 7
  %471 = load %union.tree_node*, %union.tree_node** %470, align 8
  %472 = icmp ne %union.tree_node* %471, null
  br i1 %472, label %473, label %480

; <label>:473:                                    ; preds = %467
  %474 = load %union.tree_node*, %union.tree_node** %3, align 8
  %475 = bitcast %union.tree_node* %474 to %struct.tree_decl*
  %476 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %475, i32 0, i32 5
  %477 = bitcast i48* %476 to i64*
  %478 = load i64, i64* %477, align 8
  %479 = and i64 %478, -4097
  store i64 %479, i64* %477, align 8
  br label %480

; <label>:480:                                    ; preds = %473, %467, %454, %447, %438, %430, %420, %417
  %481 = load %union.tree_node*, %union.tree_node** %3, align 8
  %482 = bitcast %union.tree_node* %481 to %struct.tree_decl*
  %483 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %482, i32 0, i32 4
  %484 = load %union.tree_node*, %union.tree_node** %483, align 8
  %485 = icmp ne %union.tree_node* %484, null
  br i1 %485, label %486, label %505

; <label>:486:                                    ; preds = %480
  %487 = load %union.tree_node*, %union.tree_node** %3, align 8
  %488 = bitcast %union.tree_node* %487 to %struct.tree_decl*
  %489 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %488, i32 0, i32 4
  %490 = load %union.tree_node*, %union.tree_node** %489, align 8
  %491 = bitcast %union.tree_node* %490 to %struct.tree_common*
  %492 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 8
  %494 = and i32 %493, 255
  %495 = icmp ne i32 %494, 25
  br i1 %495, label %496, label %505

; <label>:496:                                    ; preds = %486
  %497 = load %union.tree_node*, %union.tree_node** %3, align 8
  %498 = bitcast %union.tree_node* %497 to %struct.tree_decl*
  %499 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %498, i32 0, i32 4
  %500 = load %union.tree_node*, %union.tree_node** %499, align 8
  %501 = call %union.tree_node* @variable_size(%union.tree_node* %500)
  %502 = load %union.tree_node*, %union.tree_node** %3, align 8
  %503 = bitcast %union.tree_node* %502 to %struct.tree_decl*
  %504 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %503, i32 0, i32 4
  store %union.tree_node* %501, %union.tree_node** %504, align 8
  br label %505

; <label>:505:                                    ; preds = %496, %486, %480
  %506 = load %union.tree_node*, %union.tree_node** %3, align 8
  %507 = bitcast %union.tree_node* %506 to %struct.tree_decl*
  %508 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %507, i32 0, i32 7
  %509 = load %union.tree_node*, %union.tree_node** %508, align 8
  %510 = icmp ne %union.tree_node* %509, null
  br i1 %510, label %511, label %530

; <label>:511:                                    ; preds = %505
  %512 = load %union.tree_node*, %union.tree_node** %3, align 8
  %513 = bitcast %union.tree_node* %512 to %struct.tree_decl*
  %514 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %513, i32 0, i32 7
  %515 = load %union.tree_node*, %union.tree_node** %514, align 8
  %516 = bitcast %union.tree_node* %515 to %struct.tree_common*
  %517 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 8
  %519 = and i32 %518, 255
  %520 = icmp ne i32 %519, 25
  br i1 %520, label %521, label %530

; <label>:521:                                    ; preds = %511
  %522 = load %union.tree_node*, %union.tree_node** %3, align 8
  %523 = bitcast %union.tree_node* %522 to %struct.tree_decl*
  %524 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %523, i32 0, i32 7
  %525 = load %union.tree_node*, %union.tree_node** %524, align 8
  %526 = call %union.tree_node* @variable_size(%union.tree_node* %525)
  %527 = load %union.tree_node*, %union.tree_node** %3, align 8
  %528 = bitcast %union.tree_node* %527 to %struct.tree_decl*
  %529 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %528, i32 0, i32 7
  store %union.tree_node* %526, %union.tree_node** %529, align 8
  br label %530

; <label>:530:                                    ; preds = %521, %511, %505
  %531 = load i32, i32* @warn_larger_than, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %588

; <label>:533:                                    ; preds = %530
  %534 = load i32, i32* %6, align 4
  %535 = icmp eq i32 %534, 34
  br i1 %535, label %539, label %536

; <label>:536:                                    ; preds = %533
  %537 = load i32, i32* %6, align 4
  %538 = icmp eq i32 %537, 35
  br i1 %538, label %539, label %588

; <label>:539:                                    ; preds = %536, %533
  %540 = load %union.tree_node*, %union.tree_node** %3, align 8
  %541 = bitcast %union.tree_node* %540 to %struct.tree_decl*
  %542 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %541, i32 0, i32 5
  %543 = bitcast i48* %542 to i64*
  %544 = load i64, i64* %543, align 8
  %545 = lshr i64 %544, 8
  %546 = and i64 %545, 1
  %547 = trunc i64 %546 to i32
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %588, label %549

; <label>:549:                                    ; preds = %539
  %550 = load %union.tree_node*, %union.tree_node** %3, align 8
  %551 = bitcast %union.tree_node* %550 to %struct.tree_decl*
  %552 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %551, i32 0, i32 7
  %553 = load %union.tree_node*, %union.tree_node** %552, align 8
  store %union.tree_node* %553, %union.tree_node** %8, align 8
  %554 = load %union.tree_node*, %union.tree_node** %8, align 8
  %555 = icmp ne %union.tree_node* %554, null
  br i1 %555, label %556, label %587

; <label>:556:                                    ; preds = %549
  %557 = load %union.tree_node*, %union.tree_node** %8, align 8
  %558 = bitcast %union.tree_node* %557 to %struct.tree_common*
  %559 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 8
  %561 = and i32 %560, 255
  %562 = icmp eq i32 %561, 25
  br i1 %562, label %563, label %587

; <label>:563:                                    ; preds = %556
  %564 = load %union.tree_node*, %union.tree_node** %8, align 8
  %565 = load i64, i64* @larger_than_size, align 8
  %566 = call i32 @compare_tree_int(%union.tree_node* %564, i64 %565)
  %567 = icmp sgt i32 %566, 0
  br i1 %567, label %568, label %587

; <label>:568:                                    ; preds = %563
  %569 = load %union.tree_node*, %union.tree_node** %8, align 8
  %570 = bitcast %union.tree_node* %569 to %struct.tree_int_cst*
  %571 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %570, i32 0, i32 2
  %572 = getelementptr inbounds %struct.anon, %struct.anon* %571, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = trunc i64 %573 to i32
  store i32 %574, i32* %9, align 4
  %575 = load %union.tree_node*, %union.tree_node** %8, align 8
  %576 = load i32, i32* %9, align 4
  %577 = zext i32 %576 to i64
  %578 = call i32 @compare_tree_int(%union.tree_node* %575, i64 %577)
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %583

; <label>:580:                                    ; preds = %568
  %581 = load %union.tree_node*, %union.tree_node** %3, align 8
  %582 = load i32, i32* %9, align 4
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %581, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32 %582)
  br label %586

; <label>:583:                                    ; preds = %568
  %584 = load %union.tree_node*, %union.tree_node** %3, align 8
  %585 = load i64, i64* @larger_than_size, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %584, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i64 %585)
  br label %586

; <label>:586:                                    ; preds = %583, %580
  br label %587

; <label>:587:                                    ; preds = %586, %563, %556, %549
  br label %588

; <label>:588:                                    ; preds = %587, %539, %536, %530, %21
  ret void
}

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #1

declare i32 @get_mode_alignment(i32) #1

declare void @warning_with_decl(%union.tree_node*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define void @set_lang_adjust_rli(void (%struct.record_layout_info_s*)*) #0 {
  %2 = alloca void (%struct.record_layout_info_s*)*, align 8
  store void (%struct.record_layout_info_s*)* %0, void (%struct.record_layout_info_s*)** %2, align 8
  %3 = load void (%struct.record_layout_info_s*)*, void (%struct.record_layout_info_s*)** %2, align 8
  store void (%struct.record_layout_info_s*)* %3, void (%struct.record_layout_info_s*)** @lang_adjust_rli, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.record_layout_info_s* @start_record_layout(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca %struct.record_layout_info_s*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %4 = call noalias i8* @xmalloc(i64 72)
  %5 = bitcast i8* %4 to %struct.record_layout_info_s*
  store %struct.record_layout_info_s* %5, %struct.record_layout_info_s** %3, align 8
  %6 = load %union.tree_node*, %union.tree_node** %2, align 8
  %7 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %8 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %7, i32 0, i32 0
  store %union.tree_node* %6, %union.tree_node** %8, align 8
  %9 = load %union.tree_node*, %union.tree_node** %2, align 8
  %10 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %11 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = icmp ugt i32 8, %12
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  br label %20

; <label>:15:                                     ; preds = %1
  %16 = load %union.tree_node*, %union.tree_node** %2, align 8
  %17 = bitcast %union.tree_node* %16 to %struct.tree_type*
  %18 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  br label %20

; <label>:20:                                     ; preds = %15, %14
  %21 = phi i32 [ 8, %14 ], [ %19, %15 ]
  %22 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %23 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %25 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %28 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %30 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %29, i32 0, i32 5
  store i32 %26, i32* %30, align 4
  %31 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %32 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ugt i32 %33, 128
  br i1 %34, label %35, label %39

; <label>:35:                                     ; preds = %20
  %36 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %37 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  br label %40

; <label>:39:                                     ; preds = %20
  br label %40

; <label>:40:                                     ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ 128, %39 ]
  %42 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %43 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 15), align 8
  %45 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %46 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %45, i32 0, i32 1
  store %union.tree_node* %44, %union.tree_node** %46, align 8
  %47 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 17), align 8
  %48 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %49 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %48, i32 0, i32 3
  store %union.tree_node* %47, %union.tree_node** %49, align 8
  %50 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %51 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %50, i32 0, i32 7
  store %union.tree_node* null, %union.tree_node** %51, align 8
  %52 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %53 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %52, i32 0, i32 8
  store %union.tree_node* null, %union.tree_node** %53, align 8
  %54 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %55 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %54, i32 0, i32 9
  store i32 0, i32* %55, align 8
  %56 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  ret %struct.record_layout_info_s* %56
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define %union.tree_node* @bit_from_pos(%union.tree_node*, %union.tree_node*) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  store %union.tree_node* %1, %union.tree_node** %4, align 8
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  %7 = load %union.tree_node*, %union.tree_node** %3, align 8
  %8 = call %union.tree_node* @convert(%union.tree_node* %6, %union.tree_node* %7)
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 19), align 8
  %10 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %8, %union.tree_node* %9)
  %11 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %5, %union.tree_node* %10)
  ret %union.tree_node* %11
}

; Function Attrs: noinline nounwind uwtable
define %union.tree_node* @byte_from_pos(%union.tree_node*, %union.tree_node*) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  store %union.tree_node* %1, %union.tree_node** %4, align 8
  %5 = load %union.tree_node*, %union.tree_node** %3, align 8
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %7 = load %union.tree_node*, %union.tree_node** %4, align 8
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 19), align 8
  %9 = call %union.tree_node* @size_binop(i32 62, %union.tree_node* %7, %union.tree_node* %8)
  %10 = call %union.tree_node* @convert(%union.tree_node* %6, %union.tree_node* %9)
  %11 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %5, %union.tree_node* %10)
  ret %union.tree_node* %11
}

; Function Attrs: noinline nounwind uwtable
define void @pos_from_byte(%union.tree_node**, %union.tree_node**, i32, %union.tree_node*) #0 {
  %5 = alloca %union.tree_node**, align 8
  %6 = alloca %union.tree_node**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.tree_node*, align 8
  store %union.tree_node** %0, %union.tree_node*** %5, align 8
  store %union.tree_node** %1, %union.tree_node*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.tree_node* %3, %union.tree_node** %8, align 8
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %10 = load %union.tree_node*, %union.tree_node** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = udiv i32 %11, 8
  %13 = zext i32 %12 to i64
  %14 = call %union.tree_node* @size_int_wide(i64 %13, i32 3)
  %15 = call %union.tree_node* @size_binop(i32 64, %union.tree_node* %10, %union.tree_node* %14)
  %16 = call %union.tree_node* @convert(%union.tree_node* %9, %union.tree_node* %15)
  %17 = load i32, i32* %7, align 4
  %18 = udiv i32 %17, 8
  %19 = zext i32 %18 to i64
  %20 = call %union.tree_node* @size_int_wide(i64 %19, i32 0)
  %21 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %16, %union.tree_node* %20)
  %22 = load %union.tree_node**, %union.tree_node*** %5, align 8
  store %union.tree_node* %21, %union.tree_node** %22, align 8
  %23 = load %union.tree_node*, %union.tree_node** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = udiv i32 %24, 8
  %26 = zext i32 %25 to i64
  %27 = call %union.tree_node* @size_int_wide(i64 %26, i32 3)
  %28 = call %union.tree_node* @size_binop(i32 68, %union.tree_node* %23, %union.tree_node* %27)
  %29 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 19), align 8
  %30 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %28, %union.tree_node* %29)
  %31 = load %union.tree_node**, %union.tree_node*** %6, align 8
  store %union.tree_node* %30, %union.tree_node** %31, align 8
  ret void
}

declare %union.tree_node* @size_int_wide(i64, i32) #1

; Function Attrs: noinline nounwind uwtable
define void @pos_from_bit(%union.tree_node**, %union.tree_node**, i32, %union.tree_node*) #0 {
  %5 = alloca %union.tree_node**, align 8
  %6 = alloca %union.tree_node**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.tree_node*, align 8
  store %union.tree_node** %0, %union.tree_node*** %5, align 8
  store %union.tree_node** %1, %union.tree_node*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.tree_node* %3, %union.tree_node** %8, align 8
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %10 = load %union.tree_node*, %union.tree_node** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = zext i32 %11 to i64
  %13 = call %union.tree_node* @size_int_wide(i64 %12, i32 3)
  %14 = call %union.tree_node* @size_binop(i32 64, %union.tree_node* %10, %union.tree_node* %13)
  %15 = call %union.tree_node* @convert(%union.tree_node* %9, %union.tree_node* %14)
  %16 = load i32, i32* %7, align 4
  %17 = udiv i32 %16, 8
  %18 = zext i32 %17 to i64
  %19 = call %union.tree_node* @size_int_wide(i64 %18, i32 0)
  %20 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %15, %union.tree_node* %19)
  %21 = load %union.tree_node**, %union.tree_node*** %5, align 8
  store %union.tree_node* %20, %union.tree_node** %21, align 8
  %22 = load %union.tree_node*, %union.tree_node** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = call %union.tree_node* @size_int_wide(i64 %24, i32 3)
  %26 = call %union.tree_node* @size_binop(i32 68, %union.tree_node* %22, %union.tree_node* %25)
  %27 = load %union.tree_node**, %union.tree_node*** %6, align 8
  store %union.tree_node* %26, %union.tree_node** %27, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @normalize_offset(%union.tree_node**, %union.tree_node**, i32) #0 {
  %4 = alloca %union.tree_node**, align 8
  %5 = alloca %union.tree_node**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.tree_node*, align 8
  store %union.tree_node** %0, %union.tree_node*** %4, align 8
  store %union.tree_node** %1, %union.tree_node*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %union.tree_node**, %union.tree_node*** %5, align 8
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = call i32 @compare_tree_int(%union.tree_node* %9, i64 %11)
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %40

; <label>:14:                                     ; preds = %3
  %15 = load %union.tree_node**, %union.tree_node*** %5, align 8
  %16 = load %union.tree_node*, %union.tree_node** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = call %union.tree_node* @size_int_wide(i64 %18, i32 3)
  %20 = call %union.tree_node* @size_binop(i32 64, %union.tree_node* %16, %union.tree_node* %19)
  store %union.tree_node* %20, %union.tree_node** %7, align 8
  %21 = load %union.tree_node**, %union.tree_node*** %4, align 8
  %22 = load %union.tree_node*, %union.tree_node** %21, align 8
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %24 = load %union.tree_node*, %union.tree_node** %7, align 8
  %25 = call %union.tree_node* @convert(%union.tree_node* %23, %union.tree_node* %24)
  %26 = load i32, i32* %6, align 4
  %27 = udiv i32 %26, 8
  %28 = zext i32 %27 to i64
  %29 = call %union.tree_node* @size_int_wide(i64 %28, i32 0)
  %30 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %25, %union.tree_node* %29)
  %31 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %22, %union.tree_node* %30)
  %32 = load %union.tree_node**, %union.tree_node*** %4, align 8
  store %union.tree_node* %31, %union.tree_node** %32, align 8
  %33 = load %union.tree_node**, %union.tree_node*** %5, align 8
  %34 = load %union.tree_node*, %union.tree_node** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = call %union.tree_node* @size_int_wide(i64 %36, i32 3)
  %38 = call %union.tree_node* @size_binop(i32 68, %union.tree_node* %34, %union.tree_node* %37)
  %39 = load %union.tree_node**, %union.tree_node*** %5, align 8
  store %union.tree_node* %38, %union.tree_node** %39, align 8
  br label %40

; <label>:40:                                     ; preds = %14, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @debug_rli(%struct.record_layout_info_s*) #0 {
  %2 = alloca %struct.record_layout_info_s*, align 8
  store %struct.record_layout_info_s* %0, %struct.record_layout_info_s** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %5 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %4, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8
  call void @print_node_brief(%struct._IO_FILE* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %union.tree_node* %6, i32 0)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %9 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %8, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %9, align 8
  call void @print_node_brief(%struct._IO_FILE* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %union.tree_node* %10, i32 0)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %13 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %12, i32 0, i32 3
  %14 = load %union.tree_node*, %union.tree_node** %13, align 8
  call void @print_node_brief(%struct._IO_FILE* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %union.tree_node* %14, i32 0)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %17 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %20 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %23 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %26 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %30 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %1
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  br label %36

; <label>:36:                                     ; preds = %33, %1
  %37 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %38 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %37, i32 0, i32 8
  %39 = load %union.tree_node*, %union.tree_node** %38, align 8
  %40 = icmp ne %union.tree_node* %39, null
  br i1 %40, label %41, label %47

; <label>:41:                                     ; preds = %36
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  %44 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %45 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %44, i32 0, i32 8
  %46 = load %union.tree_node*, %union.tree_node** %45, align 8
  call void @debug_tree(%union.tree_node* %46)
  br label %47

; <label>:47:                                     ; preds = %41, %36
  ret void
}

declare void @print_node_brief(%struct._IO_FILE*, i8*, %union.tree_node*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @debug_tree(%union.tree_node*) #1

; Function Attrs: noinline nounwind uwtable
define void @normalize_rli(%struct.record_layout_info_s*) #0 {
  %2 = alloca %struct.record_layout_info_s*, align 8
  store %struct.record_layout_info_s* %0, %struct.record_layout_info_s** %2, align 8
  %3 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %4 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %3, i32 0, i32 1
  %5 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %6 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %5, i32 0, i32 3
  %7 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %8 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  call void @normalize_offset(%union.tree_node** %4, %union.tree_node** %6, i32 %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %union.tree_node* @rli_size_unit_so_far(%struct.record_layout_info_s*) #0 {
  %2 = alloca %struct.record_layout_info_s*, align 8
  store %struct.record_layout_info_s* %0, %struct.record_layout_info_s** %2, align 8
  %3 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %4 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %3, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8
  %6 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %7 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %6, i32 0, i32 3
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8
  %9 = call %union.tree_node* @byte_from_pos(%union.tree_node* %5, %union.tree_node* %8)
  ret %union.tree_node* %9
}

; Function Attrs: noinline nounwind uwtable
define %union.tree_node* @rli_size_so_far(%struct.record_layout_info_s*) #0 {
  %2 = alloca %struct.record_layout_info_s*, align 8
  store %struct.record_layout_info_s* %0, %struct.record_layout_info_s** %2, align 8
  %3 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %4 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %3, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8
  %6 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %7 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %6, i32 0, i32 3
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8
  %9 = call %union.tree_node* @bit_from_pos(%union.tree_node* %5, %union.tree_node* %8)
  ret %union.tree_node* %9
}

; Function Attrs: noinline nounwind uwtable
define void @place_field(%struct.record_layout_info_s*, %union.tree_node*) #0 {
  %3 = alloca %struct.record_layout_info_s*, align 8
  %4 = alloca %union.tree_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.tree_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.tree_node*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.record_layout_info_s* %0, %struct.record_layout_info_s** %3, align 8
  store %union.tree_node* %1, %union.tree_node** %4, align 8
  %17 = load %union.tree_node*, %union.tree_node** %4, align 8
  %18 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %18, i32 0, i32 1
  %20 = load %union.tree_node*, %union.tree_node** %19, align 8
  store %union.tree_node* %20, %union.tree_node** %9, align 8
  %21 = load %union.tree_node*, %union.tree_node** %4, align 8
  %22 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

; <label>:27:                                     ; preds = %2
  %28 = load %union.tree_node*, %union.tree_node** %9, align 8
  %29 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %27, %2
  br label %1202

; <label>:35:                                     ; preds = %27
  %36 = load %union.tree_node*, %union.tree_node** %4, align 8
  %37 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %38 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 34
  br i1 %41, label %42, label %50

; <label>:42:                                     ; preds = %35
  %43 = load %union.tree_node*, %union.tree_node** %4, align 8
  %44 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %45 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %44, i32 0, i32 8
  %46 = load %union.tree_node*, %union.tree_node** %45, align 8
  %47 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %43, %union.tree_node* %46)
  %48 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %49 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %48, i32 0, i32 8
  store %union.tree_node* %47, %union.tree_node** %49, align 8
  br label %1202

; <label>:50:                                     ; preds = %35
  %51 = load %union.tree_node*, %union.tree_node** %4, align 8
  %52 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %53 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 255
  %56 = icmp ne i32 %55, 37
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %50
  br label %1202

; <label>:58:                                     ; preds = %50
  %59 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %60 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %59, i32 0, i32 0
  %61 = load %union.tree_node*, %union.tree_node** %60, align 8
  %62 = bitcast %union.tree_node* %61 to %struct.tree_common*
  %63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 255
  %66 = icmp ne i32 %65, 20
  br i1 %66, label %67, label %70

; <label>:67:                                     ; preds = %58
  %68 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %69 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @place_union_field(%struct.record_layout_info_s* %68, %union.tree_node* %69)
  br label %1202

; <label>:70:                                     ; preds = %58
  br label %71

; <label>:71:                                     ; preds = %70
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %74 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %73, i32 0, i32 3
  %75 = load %union.tree_node*, %union.tree_node** %74, align 8
  %76 = call i32 @integer_zerop(%union.tree_node* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

; <label>:78:                                     ; preds = %72
  %79 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %80 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %79, i32 0, i32 3
  %81 = load %union.tree_node*, %union.tree_node** %80, align 8
  %82 = call i64 @tree_low_cst(%union.tree_node* %81, i32 1)
  %83 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %84 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %83, i32 0, i32 3
  %85 = load %union.tree_node*, %union.tree_node** %84, align 8
  %86 = call i64 @tree_low_cst(%union.tree_node* %85, i32 1)
  %87 = sub nsw i64 0, %86
  %88 = and i64 %82, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %122

; <label>:90:                                     ; preds = %72
  %91 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %92 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %91, i32 0, i32 1
  %93 = load %union.tree_node*, %union.tree_node** %92, align 8
  %94 = call i32 @integer_zerop(%union.tree_node* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %90
  store i32 128, i32* %6, align 4
  br label %121

; <label>:97:                                     ; preds = %90
  %98 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %99 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %98, i32 0, i32 1
  %100 = load %union.tree_node*, %union.tree_node** %99, align 8
  %101 = call i32 @host_integerp(%union.tree_node* %100, i32 1)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

; <label>:103:                                    ; preds = %97
  %104 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %105 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %104, i32 0, i32 1
  %106 = load %union.tree_node*, %union.tree_node** %105, align 8
  %107 = call i64 @tree_low_cst(%union.tree_node* %106, i32 1)
  %108 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %109 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %108, i32 0, i32 1
  %110 = load %union.tree_node*, %union.tree_node** %109, align 8
  %111 = call i64 @tree_low_cst(%union.tree_node* %110, i32 1)
  %112 = sub nsw i64 0, %111
  %113 = and i64 %107, %112
  %114 = mul nsw i64 8, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %6, align 4
  br label %120

; <label>:116:                                    ; preds = %97
  %117 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %118 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %6, align 4
  br label %120

; <label>:120:                                    ; preds = %116, %103
  br label %121

; <label>:121:                                    ; preds = %120, %96
  br label %122

; <label>:122:                                    ; preds = %121, %78
  %123 = load %union.tree_node*, %union.tree_node** %4, align 8
  %124 = bitcast %union.tree_node* %123 to %struct.tree_decl*
  %125 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %124, i32 0, i32 6
  %126 = bitcast %union.anon* %125 to %struct.anon.0*
  %127 = bitcast %struct.anon.0* %126 to i32*
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 16777215
  store i32 %129, i32* %5, align 4
  %130 = load %union.tree_node*, %union.tree_node** %4, align 8
  %131 = bitcast %union.tree_node* %130 to %struct.tree_decl*
  %132 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %131, i32 0, i32 5
  %133 = bitcast i48* %132 to i64*
  %134 = load i64, i64* %133, align 8
  %135 = lshr i64 %134, 35
  %136 = and i64 %135, 1
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %8, align 4
  %138 = load %union.tree_node*, %union.tree_node** %4, align 8
  %139 = load i32, i32* %6, align 4
  call void @layout_decl(%union.tree_node* %138, i32 %139)
  %140 = load %union.tree_node*, %union.tree_node** %4, align 8
  %141 = bitcast %union.tree_node* %140 to %struct.tree_decl*
  %142 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %141, i32 0, i32 5
  %143 = bitcast i48* %142 to i64*
  %144 = load i64, i64* %143, align 8
  %145 = lshr i64 %144, 10
  %146 = and i64 %145, 1
  %147 = trunc i64 %146 to i32
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %165, label %149

; <label>:149:                                    ; preds = %122
  %150 = load %union.tree_node*, %union.tree_node** %4, align 8
  %151 = bitcast %union.tree_node* %150 to %struct.tree_decl*
  %152 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %151, i32 0, i32 6
  %153 = bitcast %union.anon* %152 to %struct.anon.0*
  %154 = bitcast %struct.anon.0* %153 to i32*
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 16777215
  store i32 %156, i32* %5, align 4
  %157 = load %union.tree_node*, %union.tree_node** %4, align 8
  %158 = bitcast %union.tree_node* %157 to %struct.tree_decl*
  %159 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %158, i32 0, i32 5
  %160 = bitcast i48* %159 to i64*
  %161 = load i64, i64* %160, align 8
  %162 = lshr i64 %161, 35
  %163 = and i64 %162, 1
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %8, align 4
  br label %165

; <label>:165:                                    ; preds = %149, %122
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

; <label>:168:                                    ; preds = %165
  %169 = load %union.tree_node*, %union.tree_node** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @x86_field_alignment(%union.tree_node* %169, i32 %170)
  store i32 %171, i32* %5, align 4
  br label %172

; <label>:172:                                    ; preds = %168, %165
  %173 = load i1 (%union.tree_node*)*, i1 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 9), align 8
  %174 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %175 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %174, i32 0, i32 0
  %176 = load %union.tree_node*, %union.tree_node** %175, align 8
  %177 = call zeroext i1 %173(%union.tree_node* %176)
  br i1 %177, label %178, label %263

; <label>:178:                                    ; preds = %172
  %179 = load %union.tree_node*, %union.tree_node** %9, align 8
  %180 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16
  %181 = icmp ne %union.tree_node* %179, %180
  br i1 %181, label %182, label %263

; <label>:182:                                    ; preds = %178
  %183 = load %union.tree_node*, %union.tree_node** %4, align 8
  %184 = bitcast %union.tree_node* %183 to %struct.tree_decl*
  %185 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %184, i32 0, i32 11
  %186 = load %union.tree_node*, %union.tree_node** %185, align 8
  %187 = icmp ne %union.tree_node* %186, null
  br i1 %187, label %188, label %263

; <label>:188:                                    ; preds = %182
  %189 = load %union.tree_node*, %union.tree_node** %9, align 8
  %190 = bitcast %union.tree_node* %189 to %struct.tree_type*
  %191 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %190, i32 0, i32 2
  %192 = load %union.tree_node*, %union.tree_node** %191, align 8
  %193 = call i32 @integer_zerop(%union.tree_node* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %263, label %195

; <label>:195:                                    ; preds = %188
  %196 = load %union.tree_node*, %union.tree_node** %4, align 8
  %197 = bitcast %union.tree_node* %196 to %struct.tree_decl*
  %198 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %197, i32 0, i32 4
  %199 = load %union.tree_node*, %union.tree_node** %198, align 8
  %200 = call i32 @integer_zerop(%union.tree_node* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %263

; <label>:202:                                    ; preds = %195
  %203 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %204 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %203, i32 0, i32 7
  %205 = load %union.tree_node*, %union.tree_node** %204, align 8
  %206 = icmp ne %union.tree_node* %205, null
  br i1 %206, label %207, label %261

; <label>:207:                                    ; preds = %202
  %208 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %209 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %208, i32 0, i32 7
  %210 = load %union.tree_node*, %union.tree_node** %209, align 8
  %211 = bitcast %union.tree_node* %210 to %struct.tree_decl*
  %212 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %211, i32 0, i32 11
  %213 = load %union.tree_node*, %union.tree_node** %212, align 8
  %214 = icmp ne %union.tree_node* %213, null
  br i1 %214, label %215, label %261

; <label>:215:                                    ; preds = %207
  %216 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %217 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %216, i32 0, i32 7
  %218 = load %union.tree_node*, %union.tree_node** %217, align 8
  %219 = bitcast %union.tree_node* %218 to %struct.tree_decl*
  %220 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %219, i32 0, i32 4
  %221 = load %union.tree_node*, %union.tree_node** %220, align 8
  %222 = call i32 @integer_zerop(%union.tree_node* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %261, label %224

; <label>:224:                                    ; preds = %215
  %225 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %226 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = icmp ugt i32 %227, %228
  br i1 %229, label %230, label %234

; <label>:230:                                    ; preds = %224
  %231 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %232 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  br label %236

; <label>:234:                                    ; preds = %224
  %235 = load i32, i32* %5, align 4
  br label %236

; <label>:236:                                    ; preds = %234, %230
  %237 = phi i32 [ %233, %230 ], [ %235, %234 ]
  %238 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %239 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %238, i32 0, i32 4
  store i32 %237, i32* %239, align 8
  %240 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %241 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = load %union.tree_node*, %union.tree_node** %9, align 8
  %244 = bitcast %union.tree_node* %243 to %struct.tree_type*
  %245 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 8
  %247 = icmp ugt i32 %242, %246
  br i1 %247, label %248, label %252

; <label>:248:                                    ; preds = %236
  %249 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %250 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  br label %257

; <label>:252:                                    ; preds = %236
  %253 = load %union.tree_node*, %union.tree_node** %9, align 8
  %254 = bitcast %union.tree_node* %253 to %struct.tree_type*
  %255 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 8
  br label %257

; <label>:257:                                    ; preds = %252, %248
  %258 = phi i32 [ %251, %248 ], [ %256, %252 ]
  %259 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %260 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %259, i32 0, i32 5
  store i32 %258, i32* %260, align 4
  br label %262

; <label>:261:                                    ; preds = %215, %207, %202
  store i32 1, i32* %5, align 4
  br label %262

; <label>:262:                                    ; preds = %261, %257
  br label %519

; <label>:263:                                    ; preds = %195, %188, %182, %178, %172
  %264 = load %union.tree_node*, %union.tree_node** %9, align 8
  %265 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16
  %266 = icmp ne %union.tree_node* %264, %265
  br i1 %266, label %267, label %454

; <label>:267:                                    ; preds = %263
  %268 = load i1 (%union.tree_node*)*, i1 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 9), align 8
  %269 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %270 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %269, i32 0, i32 0
  %271 = load %union.tree_node*, %union.tree_node** %270, align 8
  %272 = call zeroext i1 %268(%union.tree_node* %271)
  br i1 %272, label %454, label %273

; <label>:273:                                    ; preds = %267
  %274 = load %union.tree_node*, %union.tree_node** %4, align 8
  %275 = bitcast %union.tree_node* %274 to %struct.tree_decl*
  %276 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %275, i32 0, i32 11
  %277 = load %union.tree_node*, %union.tree_node** %276, align 8
  %278 = icmp ne %union.tree_node* %277, null
  br i1 %278, label %279, label %454

; <label>:279:                                    ; preds = %273
  %280 = load %union.tree_node*, %union.tree_node** %9, align 8
  %281 = bitcast %union.tree_node* %280 to %struct.tree_type*
  %282 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %281, i32 0, i32 2
  %283 = load %union.tree_node*, %union.tree_node** %282, align 8
  %284 = call i32 @integer_zerop(%union.tree_node* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %454, label %286

; <label>:286:                                    ; preds = %279
  %287 = load %union.tree_node*, %union.tree_node** %4, align 8
  %288 = bitcast %union.tree_node* %287 to %struct.tree_decl*
  %289 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %288, i32 0, i32 4
  %290 = load %union.tree_node*, %union.tree_node** %289, align 8
  %291 = call i32 @integer_zerop(%union.tree_node* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %309, label %293

; <label>:293:                                    ; preds = %286
  %294 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %295 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* %5, align 4
  %298 = icmp ugt i32 %296, %297
  br i1 %298, label %299, label %303

; <label>:299:                                    ; preds = %293
  %300 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %301 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  br label %305

; <label>:303:                                    ; preds = %293
  %304 = load i32, i32* %5, align 4
  br label %305

; <label>:305:                                    ; preds = %303, %299
  %306 = phi i32 [ %302, %299 ], [ %304, %303 ]
  %307 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %308 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %307, i32 0, i32 4
  store i32 %306, i32* %308, align 8
  br label %325

; <label>:309:                                    ; preds = %286
  %310 = load %union.tree_node*, %union.tree_node** %4, align 8
  %311 = bitcast %union.tree_node* %310 to %struct.tree_decl*
  %312 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %311, i32 0, i32 5
  %313 = bitcast i48* %312 to i64*
  %314 = load i64, i64* %313, align 8
  %315 = lshr i64 %314, 10
  %316 = and i64 %315, 1
  %317 = trunc i64 %316 to i32
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %324, label %319

; <label>:319:                                    ; preds = %309
  %320 = load %union.tree_node*, %union.tree_node** %9, align 8
  %321 = bitcast %union.tree_node* %320 to %struct.tree_type*
  %322 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %321, i32 0, i32 7
  %323 = load i32, i32* %322, align 8
  store i32 %323, i32* %5, align 4
  br label %324

; <label>:324:                                    ; preds = %319, %309
  br label %325

; <label>:325:                                    ; preds = %324, %305
  %326 = load %union.tree_node*, %union.tree_node** %4, align 8
  %327 = bitcast %union.tree_node* %326 to %struct.tree_decl*
  %328 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %327, i32 0, i32 8
  %329 = load %union.tree_node*, %union.tree_node** %328, align 8
  %330 = icmp ne %union.tree_node* %329, null
  br i1 %330, label %331, label %453

; <label>:331:                                    ; preds = %325
  %332 = load %union.tree_node*, %union.tree_node** %9, align 8
  %333 = bitcast %union.tree_node* %332 to %struct.tree_type*
  %334 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %333, i32 0, i32 7
  %335 = load i32, i32* %334, align 8
  store i32 %335, i32* %10, align 4
  %336 = load %union.tree_node*, %union.tree_node** %9, align 8
  %337 = bitcast %union.tree_node* %336 to %struct.tree_type*
  %338 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 4
  %340 = lshr i32 %339, 31
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %346, label %342

; <label>:342:                                    ; preds = %331
  %343 = load %union.tree_node*, %union.tree_node** %4, align 8
  %344 = load i32, i32* %10, align 4
  %345 = call i32 @x86_field_alignment(%union.tree_node* %343, i32 %344)
  store i32 %345, i32* %10, align 4
  br label %346

; <label>:346:                                    ; preds = %342, %331
  %347 = load i32, i32* @maximum_field_alignment, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %359

; <label>:349:                                    ; preds = %346
  %350 = load i32, i32* %10, align 4
  %351 = load i32, i32* @maximum_field_alignment, align 4
  %352 = icmp ult i32 %350, %351
  br i1 %352, label %353, label %355

; <label>:353:                                    ; preds = %349
  %354 = load i32, i32* %10, align 4
  br label %357

; <label>:355:                                    ; preds = %349
  %356 = load i32, i32* @maximum_field_alignment, align 4
  br label %357

; <label>:357:                                    ; preds = %355, %353
  %358 = phi i32 [ %354, %353 ], [ %356, %355 ]
  store i32 %358, i32* %10, align 4
  br label %378

; <label>:359:                                    ; preds = %346
  %360 = load %union.tree_node*, %union.tree_node** %4, align 8
  %361 = bitcast %union.tree_node* %360 to %struct.tree_decl*
  %362 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %361, i32 0, i32 5
  %363 = bitcast i48* %362 to i64*
  %364 = load i64, i64* %363, align 8
  %365 = lshr i64 %364, 10
  %366 = and i64 %365, 1
  %367 = trunc i64 %366 to i32
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %377

; <label>:369:                                    ; preds = %359
  %370 = load i32, i32* %10, align 4
  %371 = icmp ult i32 %370, 8
  br i1 %371, label %372, label %374

; <label>:372:                                    ; preds = %369
  %373 = load i32, i32* %10, align 4
  br label %375

; <label>:374:                                    ; preds = %369
  br label %375

; <label>:375:                                    ; preds = %374, %372
  %376 = phi i32 [ %373, %372 ], [ 8, %374 ]
  store i32 %376, i32* %10, align 4
  br label %377

; <label>:377:                                    ; preds = %375, %359
  br label %378

; <label>:378:                                    ; preds = %377, %357
  %379 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %380 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* %10, align 4
  %383 = icmp ugt i32 %381, %382
  br i1 %383, label %384, label %388

; <label>:384:                                    ; preds = %378
  %385 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %386 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  br label %390

; <label>:388:                                    ; preds = %378
  %389 = load i32, i32* %10, align 4
  br label %390

; <label>:390:                                    ; preds = %388, %384
  %391 = phi i32 [ %387, %384 ], [ %389, %388 ]
  %392 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %393 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %392, i32 0, i32 4
  store i32 %391, i32* %393, align 8
  %394 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %395 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %394, i32 0, i32 6
  %396 = load i32, i32* %395, align 8
  %397 = load %union.tree_node*, %union.tree_node** %4, align 8
  %398 = bitcast %union.tree_node* %397 to %struct.tree_decl*
  %399 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %398, i32 0, i32 6
  %400 = bitcast %union.anon* %399 to %struct.anon.0*
  %401 = bitcast %struct.anon.0* %400 to i32*
  %402 = load i32, i32* %401, align 8
  %403 = and i32 %402, 16777215
  %404 = icmp ugt i32 %396, %403
  br i1 %404, label %405, label %409

; <label>:405:                                    ; preds = %390
  %406 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %407 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %406, i32 0, i32 6
  %408 = load i32, i32* %407, align 8
  br label %417

; <label>:409:                                    ; preds = %390
  %410 = load %union.tree_node*, %union.tree_node** %4, align 8
  %411 = bitcast %union.tree_node* %410 to %struct.tree_decl*
  %412 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %411, i32 0, i32 6
  %413 = bitcast %union.anon* %412 to %struct.anon.0*
  %414 = bitcast %struct.anon.0* %413 to i32*
  %415 = load i32, i32* %414, align 8
  %416 = and i32 %415, 16777215
  br label %417

; <label>:417:                                    ; preds = %409, %405
  %418 = phi i32 [ %408, %405 ], [ %416, %409 ]
  %419 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %420 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %419, i32 0, i32 6
  store i32 %418, i32* %420, align 8
  %421 = load i32, i32* @warn_packed, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %445

; <label>:423:                                    ; preds = %417
  %424 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %425 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %424, i32 0, i32 5
  %426 = load i32, i32* %425, align 4
  %427 = load %union.tree_node*, %union.tree_node** %9, align 8
  %428 = bitcast %union.tree_node* %427 to %struct.tree_type*
  %429 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %428, i32 0, i32 7
  %430 = load i32, i32* %429, align 8
  %431 = icmp ugt i32 %426, %430
  br i1 %431, label %432, label %436

; <label>:432:                                    ; preds = %423
  %433 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %434 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %433, i32 0, i32 5
  %435 = load i32, i32* %434, align 4
  br label %441

; <label>:436:                                    ; preds = %423
  %437 = load %union.tree_node*, %union.tree_node** %9, align 8
  %438 = bitcast %union.tree_node* %437 to %struct.tree_type*
  %439 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %438, i32 0, i32 7
  %440 = load i32, i32* %439, align 8
  br label %441

; <label>:441:                                    ; preds = %436, %432
  %442 = phi i32 [ %435, %432 ], [ %440, %436 ]
  %443 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %444 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %443, i32 0, i32 5
  store i32 %442, i32* %444, align 4
  br label %445

; <label>:445:                                    ; preds = %441, %417
  %446 = load %union.tree_node*, %union.tree_node** %9, align 8
  %447 = bitcast %union.tree_node* %446 to %struct.tree_type*
  %448 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %447, i32 0, i32 6
  %449 = load i32, i32* %448, align 4
  %450 = lshr i32 %449, 31
  %451 = load i32, i32* %8, align 4
  %452 = or i32 %451, %450
  store i32 %452, i32* %8, align 4
  br label %453

; <label>:453:                                    ; preds = %445, %325
  br label %518

; <label>:454:                                    ; preds = %279, %273, %267, %263
  %455 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %456 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* %5, align 4
  %459 = icmp ugt i32 %457, %458
  br i1 %459, label %460, label %464

; <label>:460:                                    ; preds = %454
  %461 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %462 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 8
  br label %466

; <label>:464:                                    ; preds = %454
  %465 = load i32, i32* %5, align 4
  br label %466

; <label>:466:                                    ; preds = %464, %460
  %467 = phi i32 [ %463, %460 ], [ %465, %464 ]
  %468 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %469 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %468, i32 0, i32 4
  store i32 %467, i32* %469, align 8
  %470 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %471 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %470, i32 0, i32 5
  %472 = load i32, i32* %471, align 4
  %473 = load %union.tree_node*, %union.tree_node** %9, align 8
  %474 = bitcast %union.tree_node* %473 to %struct.tree_type*
  %475 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %474, i32 0, i32 7
  %476 = load i32, i32* %475, align 8
  %477 = icmp ugt i32 %472, %476
  br i1 %477, label %478, label %482

; <label>:478:                                    ; preds = %466
  %479 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %480 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %479, i32 0, i32 5
  %481 = load i32, i32* %480, align 4
  br label %487

; <label>:482:                                    ; preds = %466
  %483 = load %union.tree_node*, %union.tree_node** %9, align 8
  %484 = bitcast %union.tree_node* %483 to %struct.tree_type*
  %485 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %484, i32 0, i32 7
  %486 = load i32, i32* %485, align 8
  br label %487

; <label>:487:                                    ; preds = %482, %478
  %488 = phi i32 [ %481, %478 ], [ %486, %482 ]
  %489 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %490 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %489, i32 0, i32 5
  store i32 %488, i32* %490, align 4
  %491 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %492 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %491, i32 0, i32 6
  %493 = load i32, i32* %492, align 8
  %494 = load %union.tree_node*, %union.tree_node** %4, align 8
  %495 = bitcast %union.tree_node* %494 to %struct.tree_decl*
  %496 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %495, i32 0, i32 6
  %497 = bitcast %union.anon* %496 to %struct.anon.0*
  %498 = bitcast %struct.anon.0* %497 to i32*
  %499 = load i32, i32* %498, align 8
  %500 = and i32 %499, 16777215
  %501 = icmp ugt i32 %493, %500
  br i1 %501, label %502, label %506

; <label>:502:                                    ; preds = %487
  %503 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %504 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %503, i32 0, i32 6
  %505 = load i32, i32* %504, align 8
  br label %514

; <label>:506:                                    ; preds = %487
  %507 = load %union.tree_node*, %union.tree_node** %4, align 8
  %508 = bitcast %union.tree_node* %507 to %struct.tree_decl*
  %509 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %508, i32 0, i32 6
  %510 = bitcast %union.anon* %509 to %struct.anon.0*
  %511 = bitcast %struct.anon.0* %510 to i32*
  %512 = load i32, i32* %511, align 8
  %513 = and i32 %512, 16777215
  br label %514

; <label>:514:                                    ; preds = %506, %502
  %515 = phi i32 [ %505, %502 ], [ %513, %506 ]
  %516 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %517 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %516, i32 0, i32 6
  store i32 %515, i32* %517, align 8
  br label %518

; <label>:518:                                    ; preds = %514, %453
  br label %519

; <label>:519:                                    ; preds = %518, %262
  %520 = load i32, i32* @warn_packed, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %553

; <label>:522:                                    ; preds = %519
  %523 = load %union.tree_node*, %union.tree_node** %4, align 8
  %524 = bitcast %union.tree_node* %523 to %struct.tree_decl*
  %525 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %524, i32 0, i32 5
  %526 = bitcast i48* %525 to i64*
  %527 = load i64, i64* %526, align 8
  %528 = lshr i64 %527, 10
  %529 = and i64 %528, 1
  %530 = trunc i64 %529 to i32
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %553

; <label>:532:                                    ; preds = %522
  %533 = load i32, i32* %6, align 4
  %534 = load %union.tree_node*, %union.tree_node** %9, align 8
  %535 = bitcast %union.tree_node* %534 to %struct.tree_type*
  %536 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %535, i32 0, i32 7
  %537 = load i32, i32* %536, align 8
  %538 = icmp ugt i32 %533, %537
  br i1 %538, label %539, label %549

; <label>:539:                                    ; preds = %532
  %540 = load %union.tree_node*, %union.tree_node** %9, align 8
  %541 = bitcast %union.tree_node* %540 to %struct.tree_type*
  %542 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %541, i32 0, i32 7
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* %5, align 4
  %545 = icmp ugt i32 %543, %544
  br i1 %545, label %546, label %548

; <label>:546:                                    ; preds = %539
  %547 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %547, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0))
  br label %548

; <label>:548:                                    ; preds = %546, %539
  br label %552

; <label>:549:                                    ; preds = %532
  %550 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %551 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %550, i32 0, i32 9
  store i32 1, i32* %551, align 8
  br label %552

; <label>:552:                                    ; preds = %549, %548
  br label %553

; <label>:553:                                    ; preds = %552, %522, %519
  %554 = load i32, i32* %6, align 4
  %555 = load i32, i32* %5, align 4
  %556 = icmp ult i32 %554, %555
  br i1 %556, label %557, label %616

; <label>:557:                                    ; preds = %553
  %558 = load i32, i32* @warn_padded, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %562

; <label>:560:                                    ; preds = %557
  %561 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %561, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0))
  br label %562

; <label>:562:                                    ; preds = %560, %557
  %563 = load i32, i32* %5, align 4
  %564 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %565 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %564, i32 0, i32 2
  %566 = load i32, i32* %565, align 8
  %567 = icmp ult i32 %563, %566
  br i1 %567, label %568, label %576

; <label>:568:                                    ; preds = %562
  %569 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %570 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %569, i32 0, i32 3
  %571 = load %union.tree_node*, %union.tree_node** %570, align 8
  %572 = load i32, i32* %5, align 4
  %573 = call %union.tree_node* @round_up(%union.tree_node* %571, i32 %572)
  %574 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %575 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %574, i32 0, i32 3
  store %union.tree_node* %573, %union.tree_node** %575, align 8
  br label %601

; <label>:576:                                    ; preds = %562
  %577 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %578 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %577, i32 0, i32 1
  %579 = load %union.tree_node*, %union.tree_node** %578, align 8
  %580 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %581 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %582 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %581, i32 0, i32 3
  %583 = load %union.tree_node*, %union.tree_node** %582, align 8
  %584 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 19), align 8
  %585 = call %union.tree_node* @size_binop(i32 63, %union.tree_node* %583, %union.tree_node* %584)
  %586 = call %union.tree_node* @convert(%union.tree_node* %580, %union.tree_node* %585)
  %587 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %579, %union.tree_node* %586)
  %588 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %589 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %588, i32 0, i32 1
  store %union.tree_node* %587, %union.tree_node** %589, align 8
  %590 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 17), align 8
  %591 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %592 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %591, i32 0, i32 3
  store %union.tree_node* %590, %union.tree_node** %592, align 8
  %593 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %594 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %593, i32 0, i32 1
  %595 = load %union.tree_node*, %union.tree_node** %594, align 8
  %596 = load i32, i32* %5, align 4
  %597 = udiv i32 %596, 8
  %598 = call %union.tree_node* @round_up(%union.tree_node* %595, i32 %597)
  %599 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %600 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %599, i32 0, i32 1
  store %union.tree_node* %598, %union.tree_node** %600, align 8
  br label %601

; <label>:601:                                    ; preds = %576, %568
  %602 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %603 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %602, i32 0, i32 1
  %604 = load %union.tree_node*, %union.tree_node** %603, align 8
  %605 = bitcast %union.tree_node* %604 to %struct.tree_common*
  %606 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %605, i32 0, i32 2
  %607 = load i32, i32* %606, align 8
  %608 = lshr i32 %607, 9
  %609 = and i32 %608, 1
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %615, label %611

; <label>:611:                                    ; preds = %601
  %612 = load i32, i32* %5, align 4
  %613 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %614 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %613, i32 0, i32 2
  store i32 %612, i32* %614, align 8
  br label %615

; <label>:615:                                    ; preds = %611, %601
  br label %616

; <label>:616:                                    ; preds = %615, %553
  %617 = load i1 (%union.tree_node*)*, i1 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 9), align 8
  %618 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %619 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %618, i32 0, i32 0
  %620 = load %union.tree_node*, %union.tree_node** %619, align 8
  %621 = call zeroext i1 %617(%union.tree_node* %620)
  br i1 %621, label %759, label %622

; <label>:622:                                    ; preds = %616
  %623 = load %union.tree_node*, %union.tree_node** %4, align 8
  %624 = bitcast %union.tree_node* %623 to %struct.tree_common*
  %625 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 8
  %627 = and i32 %626, 255
  %628 = icmp eq i32 %627, 37
  br i1 %628, label %629, label %759

; <label>:629:                                    ; preds = %622
  %630 = load %union.tree_node*, %union.tree_node** %9, align 8
  %631 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16
  %632 = icmp ne %union.tree_node* %630, %631
  br i1 %632, label %633, label %759

; <label>:633:                                    ; preds = %629
  %634 = load %union.tree_node*, %union.tree_node** %4, align 8
  %635 = bitcast %union.tree_node* %634 to %struct.tree_decl*
  %636 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %635, i32 0, i32 5
  %637 = bitcast i48* %636 to i64*
  %638 = load i64, i64* %637, align 8
  %639 = lshr i64 %638, 12
  %640 = and i64 %639, 1
  %641 = trunc i64 %640 to i32
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %759

; <label>:643:                                    ; preds = %633
  %644 = load %union.tree_node*, %union.tree_node** %4, align 8
  %645 = bitcast %union.tree_node* %644 to %struct.tree_decl*
  %646 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %645, i32 0, i32 5
  %647 = bitcast i48* %646 to i64*
  %648 = load i64, i64* %647, align 8
  %649 = lshr i64 %648, 10
  %650 = and i64 %649, 1
  %651 = trunc i64 %650 to i32
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %759, label %653

; <label>:653:                                    ; preds = %643
  %654 = load i32, i32* @maximum_field_alignment, align 4
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %656, label %759

; <label>:656:                                    ; preds = %653
  %657 = load %union.tree_node*, %union.tree_node** %4, align 8
  %658 = bitcast %union.tree_node* %657 to %struct.tree_decl*
  %659 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %658, i32 0, i32 4
  %660 = load %union.tree_node*, %union.tree_node** %659, align 8
  %661 = call i32 @integer_zerop(%union.tree_node* %660)
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %759, label %663

; <label>:663:                                    ; preds = %656
  %664 = load %union.tree_node*, %union.tree_node** %4, align 8
  %665 = bitcast %union.tree_node* %664 to %struct.tree_decl*
  %666 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %665, i32 0, i32 4
  %667 = load %union.tree_node*, %union.tree_node** %666, align 8
  %668 = call i32 @host_integerp(%union.tree_node* %667, i32 1)
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %759

; <label>:670:                                    ; preds = %663
  %671 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %672 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %671, i32 0, i32 1
  %673 = load %union.tree_node*, %union.tree_node** %672, align 8
  %674 = call i32 @host_integerp(%union.tree_node* %673, i32 1)
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %759

; <label>:676:                                    ; preds = %670
  %677 = load %union.tree_node*, %union.tree_node** %9, align 8
  %678 = bitcast %union.tree_node* %677 to %struct.tree_type*
  %679 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %678, i32 0, i32 2
  %680 = load %union.tree_node*, %union.tree_node** %679, align 8
  %681 = call i32 @host_integerp(%union.tree_node* %680, i32 1)
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %683, label %759

; <label>:683:                                    ; preds = %676
  %684 = load %union.tree_node*, %union.tree_node** %9, align 8
  %685 = bitcast %union.tree_node* %684 to %struct.tree_type*
  %686 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %685, i32 0, i32 7
  %687 = load i32, i32* %686, align 8
  store i32 %687, i32* %11, align 4
  %688 = load %union.tree_node*, %union.tree_node** %4, align 8
  %689 = bitcast %union.tree_node* %688 to %struct.tree_decl*
  %690 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %689, i32 0, i32 4
  %691 = load %union.tree_node*, %union.tree_node** %690, align 8
  store %union.tree_node* %691, %union.tree_node** %12, align 8
  %692 = load %union.tree_node*, %union.tree_node** %12, align 8
  %693 = call i64 @tree_low_cst(%union.tree_node* %692, i32 1)
  store i64 %693, i64* %13, align 8
  %694 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %695 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %694, i32 0, i32 1
  %696 = load %union.tree_node*, %union.tree_node** %695, align 8
  %697 = call i64 @tree_low_cst(%union.tree_node* %696, i32 0)
  store i64 %697, i64* %14, align 8
  %698 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %699 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %698, i32 0, i32 3
  %700 = load %union.tree_node*, %union.tree_node** %699, align 8
  %701 = call i64 @tree_low_cst(%union.tree_node* %700, i32 0)
  store i64 %701, i64* %15, align 8
  %702 = load %union.tree_node*, %union.tree_node** %9, align 8
  %703 = bitcast %union.tree_node* %702 to %struct.tree_type*
  %704 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %703, i32 0, i32 6
  %705 = load i32, i32* %704, align 4
  %706 = lshr i32 %705, 31
  %707 = icmp ne i32 %706, 0
  br i1 %707, label %712, label %708

; <label>:708:                                    ; preds = %683
  %709 = load %union.tree_node*, %union.tree_node** %4, align 8
  %710 = load i32, i32* %11, align 4
  %711 = call i32 @x86_field_alignment(%union.tree_node* %709, i32 %710)
  store i32 %711, i32* %11, align 4
  br label %712

; <label>:712:                                    ; preds = %708, %683
  %713 = load i64, i64* %14, align 8
  %714 = mul nsw i64 %713, 8
  %715 = load i64, i64* %15, align 8
  %716 = add nsw i64 %714, %715
  %717 = load i64, i64* %13, align 8
  %718 = add nsw i64 %716, %717
  %719 = load i32, i32* %11, align 4
  %720 = zext i32 %719 to i64
  %721 = add nsw i64 %718, %720
  %722 = sub nsw i64 %721, 1
  %723 = load i32, i32* %11, align 4
  %724 = zext i32 %723 to i64
  %725 = sdiv i64 %722, %724
  %726 = load i64, i64* %14, align 8
  %727 = mul nsw i64 %726, 8
  %728 = load i64, i64* %15, align 8
  %729 = add nsw i64 %727, %728
  %730 = load i32, i32* %11, align 4
  %731 = zext i32 %730 to i64
  %732 = sdiv i64 %729, %731
  %733 = sub nsw i64 %725, %732
  %734 = load %union.tree_node*, %union.tree_node** %9, align 8
  %735 = bitcast %union.tree_node* %734 to %struct.tree_type*
  %736 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %735, i32 0, i32 2
  %737 = load %union.tree_node*, %union.tree_node** %736, align 8
  %738 = call i64 @tree_low_cst(%union.tree_node* %737, i32 1)
  %739 = load i32, i32* %11, align 4
  %740 = zext i32 %739 to i64
  %741 = sdiv i64 %738, %740
  %742 = icmp sgt i64 %733, %741
  br i1 %742, label %743, label %751

; <label>:743:                                    ; preds = %712
  %744 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %745 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %744, i32 0, i32 3
  %746 = load %union.tree_node*, %union.tree_node** %745, align 8
  %747 = load i32, i32* %11, align 4
  %748 = call %union.tree_node* @round_up(%union.tree_node* %746, i32 %747)
  %749 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %750 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %749, i32 0, i32 3
  store %union.tree_node* %748, %union.tree_node** %750, align 8
  br label %751

; <label>:751:                                    ; preds = %743, %712
  %752 = load %union.tree_node*, %union.tree_node** %9, align 8
  %753 = bitcast %union.tree_node* %752 to %struct.tree_type*
  %754 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %753, i32 0, i32 6
  %755 = load i32, i32* %754, align 4
  %756 = lshr i32 %755, 31
  %757 = load i32, i32* %8, align 4
  %758 = or i32 %757, %756
  store i32 %758, i32* %8, align 4
  br label %759

; <label>:759:                                    ; preds = %751, %676, %670, %663, %656, %653, %643, %633, %629, %622, %616
  %760 = load i1 (%union.tree_node*)*, i1 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 9), align 8
  %761 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %762 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %761, i32 0, i32 0
  %763 = load %union.tree_node*, %union.tree_node** %762, align 8
  %764 = call zeroext i1 %760(%union.tree_node* %763)
  br i1 %764, label %765, label %982

; <label>:765:                                    ; preds = %759
  %766 = load %union.tree_node*, %union.tree_node** %4, align 8
  %767 = bitcast %union.tree_node* %766 to %struct.tree_common*
  %768 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %767, i32 0, i32 2
  %769 = load i32, i32* %768, align 8
  %770 = and i32 %769, 255
  %771 = icmp eq i32 %770, 37
  br i1 %771, label %772, label %982

; <label>:772:                                    ; preds = %765
  %773 = load %union.tree_node*, %union.tree_node** %9, align 8
  %774 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16
  %775 = icmp ne %union.tree_node* %773, %774
  br i1 %775, label %776, label %982

; <label>:776:                                    ; preds = %772
  %777 = load %union.tree_node*, %union.tree_node** %4, align 8
  %778 = bitcast %union.tree_node* %777 to %struct.tree_decl*
  %779 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %778, i32 0, i32 5
  %780 = bitcast i48* %779 to i64*
  %781 = load i64, i64* %780, align 8
  %782 = lshr i64 %781, 10
  %783 = and i64 %782, 1
  %784 = trunc i64 %783 to i32
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %982, label %786

; <label>:786:                                    ; preds = %776
  %787 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %788 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %787, i32 0, i32 7
  %789 = load %union.tree_node*, %union.tree_node** %788, align 8
  %790 = icmp ne %union.tree_node* %789, null
  br i1 %790, label %791, label %982

; <label>:791:                                    ; preds = %786
  %792 = load %union.tree_node*, %union.tree_node** %4, align 8
  %793 = bitcast %union.tree_node* %792 to %struct.tree_decl*
  %794 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %793, i32 0, i32 4
  %795 = load %union.tree_node*, %union.tree_node** %794, align 8
  %796 = icmp ne %union.tree_node* %795, null
  br i1 %796, label %797, label %982

; <label>:797:                                    ; preds = %791
  %798 = load %union.tree_node*, %union.tree_node** %4, align 8
  %799 = bitcast %union.tree_node* %798 to %struct.tree_decl*
  %800 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %799, i32 0, i32 4
  %801 = load %union.tree_node*, %union.tree_node** %800, align 8
  %802 = call i32 @host_integerp(%union.tree_node* %801, i32 1)
  %803 = icmp ne i32 %802, 0
  br i1 %803, label %804, label %982

; <label>:804:                                    ; preds = %797
  %805 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %806 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %805, i32 0, i32 7
  %807 = load %union.tree_node*, %union.tree_node** %806, align 8
  %808 = bitcast %union.tree_node* %807 to %struct.tree_decl*
  %809 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %808, i32 0, i32 4
  %810 = load %union.tree_node*, %union.tree_node** %809, align 8
  %811 = icmp ne %union.tree_node* %810, null
  br i1 %811, label %812, label %982

; <label>:812:                                    ; preds = %804
  %813 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %814 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %813, i32 0, i32 7
  %815 = load %union.tree_node*, %union.tree_node** %814, align 8
  %816 = bitcast %union.tree_node* %815 to %struct.tree_decl*
  %817 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %816, i32 0, i32 4
  %818 = load %union.tree_node*, %union.tree_node** %817, align 8
  %819 = call i32 @host_integerp(%union.tree_node* %818, i32 1)
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %821, label %982

; <label>:821:                                    ; preds = %812
  %822 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %823 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %822, i32 0, i32 1
  %824 = load %union.tree_node*, %union.tree_node** %823, align 8
  %825 = call i32 @host_integerp(%union.tree_node* %824, i32 1)
  %826 = icmp ne i32 %825, 0
  br i1 %826, label %827, label %982

; <label>:827:                                    ; preds = %821
  %828 = load %union.tree_node*, %union.tree_node** %9, align 8
  %829 = bitcast %union.tree_node* %828 to %struct.tree_type*
  %830 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %829, i32 0, i32 2
  %831 = load %union.tree_node*, %union.tree_node** %830, align 8
  %832 = call i32 @host_integerp(%union.tree_node* %831, i32 1)
  %833 = icmp ne i32 %832, 0
  br i1 %833, label %834, label %982

; <label>:834:                                    ; preds = %827
  %835 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %836 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %835, i32 0, i32 7
  %837 = load %union.tree_node*, %union.tree_node** %836, align 8
  %838 = bitcast %union.tree_node* %837 to %struct.tree_common*
  %839 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %838, i32 0, i32 1
  %840 = load %union.tree_node*, %union.tree_node** %839, align 8
  %841 = bitcast %union.tree_node* %840 to %struct.tree_type*
  %842 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %841, i32 0, i32 2
  %843 = load %union.tree_node*, %union.tree_node** %842, align 8
  %844 = call i32 @host_integerp(%union.tree_node* %843, i32 1)
  %845 = icmp ne i32 %844, 0
  br i1 %845, label %846, label %982

; <label>:846:                                    ; preds = %834
  %847 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %848 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %847, i32 0, i32 7
  %849 = load %union.tree_node*, %union.tree_node** %848, align 8
  %850 = bitcast %union.tree_node* %849 to %struct.tree_decl*
  %851 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %850, i32 0, i32 11
  %852 = load %union.tree_node*, %union.tree_node** %851, align 8
  %853 = icmp ne %union.tree_node* %852, null
  br i1 %853, label %854, label %863

; <label>:854:                                    ; preds = %846
  %855 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %856 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %855, i32 0, i32 7
  %857 = load %union.tree_node*, %union.tree_node** %856, align 8
  %858 = bitcast %union.tree_node* %857 to %struct.tree_decl*
  %859 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %858, i32 0, i32 4
  %860 = load %union.tree_node*, %union.tree_node** %859, align 8
  %861 = call i32 @integer_zerop(%union.tree_node* %860)
  %862 = icmp ne i32 %861, 0
  br i1 %862, label %863, label %876

; <label>:863:                                    ; preds = %854, %846
  %864 = load %union.tree_node*, %union.tree_node** %4, align 8
  %865 = bitcast %union.tree_node* %864 to %struct.tree_decl*
  %866 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %865, i32 0, i32 11
  %867 = load %union.tree_node*, %union.tree_node** %866, align 8
  %868 = icmp ne %union.tree_node* %867, null
  br i1 %868, label %869, label %982

; <label>:869:                                    ; preds = %863
  %870 = load %union.tree_node*, %union.tree_node** %4, align 8
  %871 = bitcast %union.tree_node* %870 to %struct.tree_decl*
  %872 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %871, i32 0, i32 4
  %873 = load %union.tree_node*, %union.tree_node** %872, align 8
  %874 = call i32 @integer_zerop(%union.tree_node* %873)
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %982, label %876

; <label>:876:                                    ; preds = %869, %854
  %877 = load %union.tree_node*, %union.tree_node** %9, align 8
  %878 = bitcast %union.tree_node* %877 to %struct.tree_type*
  %879 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %878, i32 0, i32 2
  %880 = load %union.tree_node*, %union.tree_node** %879, align 8
  %881 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %882 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %881, i32 0, i32 7
  %883 = load %union.tree_node*, %union.tree_node** %882, align 8
  %884 = bitcast %union.tree_node* %883 to %struct.tree_common*
  %885 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %884, i32 0, i32 1
  %886 = load %union.tree_node*, %union.tree_node** %885, align 8
  %887 = bitcast %union.tree_node* %886 to %struct.tree_type*
  %888 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %887, i32 0, i32 2
  %889 = load %union.tree_node*, %union.tree_node** %888, align 8
  %890 = call i32 @simple_cst_equal(%union.tree_node* %880, %union.tree_node* %889)
  %891 = icmp ne i32 %890, 0
  br i1 %891, label %892, label %909

; <label>:892:                                    ; preds = %876
  %893 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %894 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %893, i32 0, i32 7
  %895 = load %union.tree_node*, %union.tree_node** %894, align 8
  %896 = bitcast %union.tree_node* %895 to %struct.tree_decl*
  %897 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %896, i32 0, i32 11
  %898 = load %union.tree_node*, %union.tree_node** %897, align 8
  %899 = icmp ne %union.tree_node* %898, null
  br i1 %899, label %900, label %982

; <label>:900:                                    ; preds = %892
  %901 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %902 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %901, i32 0, i32 7
  %903 = load %union.tree_node*, %union.tree_node** %902, align 8
  %904 = bitcast %union.tree_node* %903 to %struct.tree_decl*
  %905 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %904, i32 0, i32 4
  %906 = load %union.tree_node*, %union.tree_node** %905, align 8
  %907 = call i32 @integer_zerop(%union.tree_node* %906)
  %908 = icmp ne i32 %907, 0
  br i1 %908, label %909, label %982

; <label>:909:                                    ; preds = %900, %876
  %910 = load %union.tree_node*, %union.tree_node** %9, align 8
  %911 = bitcast %union.tree_node* %910 to %struct.tree_type*
  %912 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %911, i32 0, i32 7
  %913 = load i32, i32* %912, align 8
  store i32 %913, i32* %16, align 4
  %914 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %915 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %914, i32 0, i32 7
  %916 = load %union.tree_node*, %union.tree_node** %915, align 8
  %917 = icmp ne %union.tree_node* %916, null
  br i1 %917, label %918, label %961

; <label>:918:                                    ; preds = %909
  %919 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %920 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %919, i32 0, i32 7
  %921 = load %union.tree_node*, %union.tree_node** %920, align 8
  %922 = bitcast %union.tree_node* %921 to %struct.tree_decl*
  %923 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %922, i32 0, i32 11
  %924 = load %union.tree_node*, %union.tree_node** %923, align 8
  %925 = icmp ne %union.tree_node* %924, null
  br i1 %925, label %926, label %961

; <label>:926:                                    ; preds = %918
  %927 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %928 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %927, i32 0, i32 7
  %929 = load %union.tree_node*, %union.tree_node** %928, align 8
  %930 = bitcast %union.tree_node* %929 to %struct.tree_decl*
  %931 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %930, i32 0, i32 4
  %932 = load %union.tree_node*, %union.tree_node** %931, align 8
  %933 = call i32 @integer_zerop(%union.tree_node* %932)
  %934 = icmp ne i32 %933, 0
  br i1 %934, label %961, label %935

; <label>:935:                                    ; preds = %926
  %936 = load i32, i32* %16, align 4
  %937 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %938 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %937, i32 0, i32 7
  %939 = load %union.tree_node*, %union.tree_node** %938, align 8
  %940 = bitcast %union.tree_node* %939 to %struct.tree_common*
  %941 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %940, i32 0, i32 1
  %942 = load %union.tree_node*, %union.tree_node** %941, align 8
  %943 = bitcast %union.tree_node* %942 to %struct.tree_type*
  %944 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %943, i32 0, i32 7
  %945 = load i32, i32* %944, align 8
  %946 = icmp ugt i32 %936, %945
  br i1 %946, label %947, label %949

; <label>:947:                                    ; preds = %935
  %948 = load i32, i32* %16, align 4
  br label %959

; <label>:949:                                    ; preds = %935
  %950 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %951 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %950, i32 0, i32 7
  %952 = load %union.tree_node*, %union.tree_node** %951, align 8
  %953 = bitcast %union.tree_node* %952 to %struct.tree_common*
  %954 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %953, i32 0, i32 1
  %955 = load %union.tree_node*, %union.tree_node** %954, align 8
  %956 = bitcast %union.tree_node* %955 to %struct.tree_type*
  %957 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %956, i32 0, i32 7
  %958 = load i32, i32* %957, align 8
  br label %959

; <label>:959:                                    ; preds = %949, %947
  %960 = phi i32 [ %948, %947 ], [ %958, %949 ]
  store i32 %960, i32* %16, align 4
  br label %961

; <label>:961:                                    ; preds = %959, %926, %918, %909
  %962 = load i32, i32* @maximum_field_alignment, align 4
  %963 = icmp ne i32 %962, 0
  br i1 %963, label %964, label %974

; <label>:964:                                    ; preds = %961
  %965 = load i32, i32* %16, align 4
  %966 = load i32, i32* @maximum_field_alignment, align 4
  %967 = icmp ult i32 %965, %966
  br i1 %967, label %968, label %970

; <label>:968:                                    ; preds = %964
  %969 = load i32, i32* %16, align 4
  br label %972

; <label>:970:                                    ; preds = %964
  %971 = load i32, i32* @maximum_field_alignment, align 4
  br label %972

; <label>:972:                                    ; preds = %970, %968
  %973 = phi i32 [ %969, %968 ], [ %971, %970 ]
  store i32 %973, i32* %16, align 4
  br label %974

; <label>:974:                                    ; preds = %972, %961
  %975 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %976 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %975, i32 0, i32 3
  %977 = load %union.tree_node*, %union.tree_node** %976, align 8
  %978 = load i32, i32* %16, align 4
  %979 = call %union.tree_node* @round_up(%union.tree_node* %977, i32 %978)
  %980 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %981 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %980, i32 0, i32 3
  store %union.tree_node* %979, %union.tree_node** %981, align 8
  br label %982

; <label>:982:                                    ; preds = %974, %900, %892, %869, %863, %834, %827, %821, %812, %804, %797, %791, %786, %776, %772, %765, %759
  %983 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  call void @normalize_rli(%struct.record_layout_info_s* %983)
  %984 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %985 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %984, i32 0, i32 1
  %986 = load %union.tree_node*, %union.tree_node** %985, align 8
  %987 = load %union.tree_node*, %union.tree_node** %4, align 8
  %988 = bitcast %union.tree_node* %987 to %struct.tree_decl*
  %989 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %988, i32 0, i32 10
  store %union.tree_node* %986, %union.tree_node** %989, align 8
  %990 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %991 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %990, i32 0, i32 3
  %992 = load %union.tree_node*, %union.tree_node** %991, align 8
  %993 = load %union.tree_node*, %union.tree_node** %4, align 8
  %994 = bitcast %union.tree_node* %993 to %struct.tree_decl*
  %995 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %994, i32 0, i32 19
  %996 = bitcast %union.anon.1* %995 to %union.tree_node**
  store %union.tree_node* %992, %union.tree_node** %996, align 8
  %997 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %998 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %997, i32 0, i32 2
  %999 = load i32, i32* %998, align 8
  %1000 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1001 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1000, i32 0, i32 2
  %1002 = load i32, i32* %1001, align 8
  %1003 = sub i32 0, %1002
  %1004 = and i32 %999, %1003
  %1005 = zext i32 %1004 to i64
  %1006 = call i32 @exact_log2_wide(i64 %1005)
  %1007 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1008 = bitcast %union.tree_node* %1007 to %struct.tree_decl*
  %1009 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1008, i32 0, i32 6
  %1010 = bitcast %union.anon* %1009 to %struct.anon.0*
  %1011 = bitcast %struct.anon.0* %1010 to i32*
  %1012 = load i32, i32* %1011, align 8
  %1013 = and i32 %1006, 255
  %1014 = shl i32 %1013, 24
  %1015 = and i32 %1012, 16777215
  %1016 = or i32 %1015, %1014
  store i32 %1016, i32* %1011, align 8
  %1017 = load i32, i32* %8, align 4
  %1018 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1019 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1018, i32 0, i32 0
  %1020 = load %union.tree_node*, %union.tree_node** %1019, align 8
  %1021 = bitcast %union.tree_node* %1020 to %struct.tree_type*
  %1022 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1021, i32 0, i32 6
  %1023 = load i32, i32* %1022, align 4
  %1024 = lshr i32 %1023, 31
  %1025 = or i32 %1024, %1017
  %1026 = load i32, i32* %1022, align 4
  %1027 = and i32 %1025, 1
  %1028 = shl i32 %1027, 31
  %1029 = and i32 %1026, 2147483647
  %1030 = or i32 %1029, %1028
  store i32 %1030, i32* %1022, align 4
  %1031 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1032 = bitcast %union.tree_node* %1031 to %struct.tree_decl*
  %1033 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1032, i32 0, i32 19
  %1034 = bitcast %union.anon.1* %1033 to %union.tree_node**
  %1035 = load %union.tree_node*, %union.tree_node** %1034, align 8
  %1036 = call i32 @integer_zerop(%union.tree_node* %1035)
  %1037 = icmp ne i32 %1036, 0
  br i1 %1037, label %1054, label %1038

; <label>:1038:                                   ; preds = %982
  %1039 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1040 = bitcast %union.tree_node* %1039 to %struct.tree_decl*
  %1041 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1040, i32 0, i32 19
  %1042 = bitcast %union.anon.1* %1041 to %union.tree_node**
  %1043 = load %union.tree_node*, %union.tree_node** %1042, align 8
  %1044 = call i64 @tree_low_cst(%union.tree_node* %1043, i32 1)
  %1045 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1046 = bitcast %union.tree_node* %1045 to %struct.tree_decl*
  %1047 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1046, i32 0, i32 19
  %1048 = bitcast %union.anon.1* %1047 to %union.tree_node**
  %1049 = load %union.tree_node*, %union.tree_node** %1048, align 8
  %1050 = call i64 @tree_low_cst(%union.tree_node* %1049, i32 1)
  %1051 = sub nsw i64 0, %1050
  %1052 = and i64 %1044, %1051
  %1053 = trunc i64 %1052 to i32
  store i32 %1053, i32* %7, align 4
  br label %1097

; <label>:1054:                                   ; preds = %982
  %1055 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1056 = bitcast %union.tree_node* %1055 to %struct.tree_decl*
  %1057 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1056, i32 0, i32 10
  %1058 = load %union.tree_node*, %union.tree_node** %1057, align 8
  %1059 = call i32 @integer_zerop(%union.tree_node* %1058)
  %1060 = icmp ne i32 %1059, 0
  br i1 %1060, label %1061, label %1062

; <label>:1061:                                   ; preds = %1054
  store i32 128, i32* %7, align 4
  br label %1096

; <label>:1062:                                   ; preds = %1054
  %1063 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1064 = bitcast %union.tree_node* %1063 to %struct.tree_decl*
  %1065 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1064, i32 0, i32 10
  %1066 = load %union.tree_node*, %union.tree_node** %1065, align 8
  %1067 = call i32 @host_integerp(%union.tree_node* %1066, i32 1)
  %1068 = icmp ne i32 %1067, 0
  br i1 %1068, label %1069, label %1084

; <label>:1069:                                   ; preds = %1062
  %1070 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1071 = bitcast %union.tree_node* %1070 to %struct.tree_decl*
  %1072 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1071, i32 0, i32 10
  %1073 = load %union.tree_node*, %union.tree_node** %1072, align 8
  %1074 = call i64 @tree_low_cst(%union.tree_node* %1073, i32 1)
  %1075 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1076 = bitcast %union.tree_node* %1075 to %struct.tree_decl*
  %1077 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1076, i32 0, i32 10
  %1078 = load %union.tree_node*, %union.tree_node** %1077, align 8
  %1079 = call i64 @tree_low_cst(%union.tree_node* %1078, i32 1)
  %1080 = sub nsw i64 0, %1079
  %1081 = and i64 %1074, %1080
  %1082 = mul nsw i64 8, %1081
  %1083 = trunc i64 %1082 to i32
  store i32 %1083, i32* %7, align 4
  br label %1095

; <label>:1084:                                   ; preds = %1062
  %1085 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1086 = bitcast %union.tree_node* %1085 to %struct.tree_decl*
  %1087 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1086, i32 0, i32 6
  %1088 = bitcast %union.anon* %1087 to %struct.anon.0*
  %1089 = bitcast %struct.anon.0* %1088 to i32*
  %1090 = load i32, i32* %1089, align 8
  %1091 = lshr i32 %1090, 24
  %1092 = zext i32 %1091 to i64
  %1093 = shl i64 1, %1092
  %1094 = trunc i64 %1093 to i32
  store i32 %1094, i32* %7, align 4
  br label %1095

; <label>:1095:                                   ; preds = %1084, %1069
  br label %1096

; <label>:1096:                                   ; preds = %1095, %1061
  br label %1097

; <label>:1097:                                   ; preds = %1096, %1038
  %1098 = load i32, i32* %6, align 4
  %1099 = load i32, i32* %7, align 4
  %1100 = icmp ne i32 %1098, %1099
  br i1 %1100, label %1101, label %1104

; <label>:1101:                                   ; preds = %1097
  %1102 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1103 = load i32, i32* %7, align 4
  call void @layout_decl(%union.tree_node* %1102, i32 %1103)
  br label %1104

; <label>:1104:                                   ; preds = %1101, %1097
  %1105 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1106 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1107 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1106, i32 0, i32 7
  store %union.tree_node* %1105, %union.tree_node** %1107, align 8
  %1108 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1109 = bitcast %union.tree_node* %1108 to %struct.tree_decl*
  %1110 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1109, i32 0, i32 4
  %1111 = load %union.tree_node*, %union.tree_node** %1110, align 8
  %1112 = icmp eq %union.tree_node* %1111, null
  br i1 %1112, label %1113, label %1114

; <label>:1113:                                   ; preds = %1104
  br label %1202

; <label>:1114:                                   ; preds = %1104
  %1115 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1116 = bitcast %union.tree_node* %1115 to %struct.tree_decl*
  %1117 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1116, i32 0, i32 7
  %1118 = load %union.tree_node*, %union.tree_node** %1117, align 8
  %1119 = bitcast %union.tree_node* %1118 to %struct.tree_common*
  %1120 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1119, i32 0, i32 2
  %1121 = load i32, i32* %1120, align 8
  %1122 = and i32 %1121, 255
  %1123 = icmp ne i32 %1122, 25
  br i1 %1123, label %1135, label %1124

; <label>:1124:                                   ; preds = %1114
  %1125 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1126 = bitcast %union.tree_node* %1125 to %struct.tree_decl*
  %1127 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1126, i32 0, i32 7
  %1128 = load %union.tree_node*, %union.tree_node** %1127, align 8
  %1129 = bitcast %union.tree_node* %1128 to %struct.tree_common*
  %1130 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1129, i32 0, i32 2
  %1131 = load i32, i32* %1130, align 8
  %1132 = lshr i32 %1131, 18
  %1133 = and i32 %1132, 1
  %1134 = icmp ne i32 %1133, 0
  br i1 %1134, label %1135, label %1189

; <label>:1135:                                   ; preds = %1124, %1114
  %1136 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1137 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1136, i32 0, i32 1
  %1138 = load %union.tree_node*, %union.tree_node** %1137, align 8
  %1139 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %1140 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1141 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1140, i32 0, i32 3
  %1142 = load %union.tree_node*, %union.tree_node** %1141, align 8
  %1143 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 19), align 8
  %1144 = call %union.tree_node* @size_binop(i32 63, %union.tree_node* %1142, %union.tree_node* %1143)
  %1145 = call %union.tree_node* @convert(%union.tree_node* %1139, %union.tree_node* %1144)
  %1146 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %1138, %union.tree_node* %1145)
  %1147 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1148 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1147, i32 0, i32 1
  store %union.tree_node* %1146, %union.tree_node** %1148, align 8
  %1149 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1150 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1149, i32 0, i32 1
  %1151 = load %union.tree_node*, %union.tree_node** %1150, align 8
  %1152 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1153 = bitcast %union.tree_node* %1152 to %struct.tree_decl*
  %1154 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1153, i32 0, i32 7
  %1155 = load %union.tree_node*, %union.tree_node** %1154, align 8
  %1156 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %1151, %union.tree_node* %1155)
  %1157 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1158 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1157, i32 0, i32 1
  store %union.tree_node* %1156, %union.tree_node** %1158, align 8
  %1159 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 17), align 8
  %1160 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1161 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1160, i32 0, i32 3
  store %union.tree_node* %1159, %union.tree_node** %1161, align 8
  %1162 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1163 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1162, i32 0, i32 2
  %1164 = load i32, i32* %1163, align 8
  %1165 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1166 = bitcast %union.tree_node* %1165 to %struct.tree_decl*
  %1167 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1166, i32 0, i32 6
  %1168 = bitcast %union.anon* %1167 to %struct.anon.0*
  %1169 = bitcast %struct.anon.0* %1168 to i32*
  %1170 = load i32, i32* %1169, align 8
  %1171 = and i32 %1170, 16777215
  %1172 = icmp ult i32 %1164, %1171
  br i1 %1172, label %1173, label %1177

; <label>:1173:                                   ; preds = %1135
  %1174 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1175 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1174, i32 0, i32 2
  %1176 = load i32, i32* %1175, align 8
  br label %1185

; <label>:1177:                                   ; preds = %1135
  %1178 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1179 = bitcast %union.tree_node* %1178 to %struct.tree_decl*
  %1180 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1179, i32 0, i32 6
  %1181 = bitcast %union.anon* %1180 to %struct.anon.0*
  %1182 = bitcast %struct.anon.0* %1181 to i32*
  %1183 = load i32, i32* %1182, align 8
  %1184 = and i32 %1183, 16777215
  br label %1185

; <label>:1185:                                   ; preds = %1177, %1173
  %1186 = phi i32 [ %1176, %1173 ], [ %1184, %1177 ]
  %1187 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1188 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1187, i32 0, i32 2
  store i32 %1186, i32* %1188, align 8
  br label %1201

; <label>:1189:                                   ; preds = %1124
  %1190 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1191 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1190, i32 0, i32 3
  %1192 = load %union.tree_node*, %union.tree_node** %1191, align 8
  %1193 = load %union.tree_node*, %union.tree_node** %4, align 8
  %1194 = bitcast %union.tree_node* %1193 to %struct.tree_decl*
  %1195 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1194, i32 0, i32 4
  %1196 = load %union.tree_node*, %union.tree_node** %1195, align 8
  %1197 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %1192, %union.tree_node* %1196)
  %1198 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %1199 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1198, i32 0, i32 3
  store %union.tree_node* %1197, %union.tree_node** %1199, align 8
  %1200 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  call void @normalize_rli(%struct.record_layout_info_s* %1200)
  br label %1201

; <label>:1201:                                   ; preds = %1189, %1185
  br label %1202

; <label>:1202:                                   ; preds = %1201, %1113, %67, %57, %42, %34
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @place_union_field(%struct.record_layout_info_s*, %union.tree_node*) #0 {
  %3 = alloca %struct.record_layout_info_s*, align 8
  %4 = alloca %union.tree_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.record_layout_info_s* %0, %struct.record_layout_info_s** %3, align 8
  store %union.tree_node* %1, %union.tree_node** %4, align 8
  %7 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @layout_decl(%union.tree_node* %7, i32 0)
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 15), align 8
  %9 = load %union.tree_node*, %union.tree_node** %4, align 8
  %10 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %11 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %10, i32 0, i32 10
  store %union.tree_node* %8, %union.tree_node** %11, align 8
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 17), align 8
  %13 = load %union.tree_node*, %union.tree_node** %4, align 8
  %14 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %15 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %14, i32 0, i32 19
  %16 = bitcast %union.anon.1* %15 to %union.tree_node**
  store %union.tree_node* %12, %union.tree_node** %16, align 8
  %17 = call i32 @exact_log2_wide(i64 128)
  %18 = load %union.tree_node*, %union.tree_node** %4, align 8
  %19 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %20 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %19, i32 0, i32 6
  %21 = bitcast %union.anon* %20 to %struct.anon.0*
  %22 = bitcast %struct.anon.0* %21 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %17, 255
  %25 = shl i32 %24, 24
  %26 = and i32 %23, 16777215
  %27 = or i32 %26, %25
  store i32 %27, i32* %22, align 8
  %28 = load %union.tree_node*, %union.tree_node** %4, align 8
  %29 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %30 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %29, i32 0, i32 6
  %31 = bitcast %union.anon* %30 to %struct.anon.0*
  %32 = bitcast %struct.anon.0* %31 to i32*
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 16777215
  store i32 %34, i32* %5, align 4
  %35 = load %union.tree_node*, %union.tree_node** %4, align 8
  %36 = bitcast %union.tree_node* %35 to %struct.tree_decl*
  %37 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %36, i32 0, i32 5
  %38 = bitcast i48* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = lshr i64 %39, 35
  %41 = and i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

; <label>:44:                                     ; preds = %2
  %45 = load %union.tree_node*, %union.tree_node** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @x86_field_alignment(%union.tree_node* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

; <label>:48:                                     ; preds = %44, %2
  %49 = load %union.tree_node*, %union.tree_node** %4, align 8
  %50 = bitcast %union.tree_node* %49 to %struct.tree_decl*
  %51 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %50, i32 0, i32 5
  %52 = bitcast i48* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = lshr i64 %53, 35
  %55 = and i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %58 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %57, i32 0, i32 0
  %59 = load %union.tree_node*, %union.tree_node** %58, align 8
  %60 = bitcast %union.tree_node* %59 to %struct.tree_type*
  %61 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = lshr i32 %62, 31
  %64 = or i32 %63, %56
  %65 = load i32, i32* %61, align 4
  %66 = and i32 %64, 1
  %67 = shl i32 %66, 31
  %68 = and i32 %65, 2147483647
  %69 = or i32 %68, %67
  store i32 %69, i32* %61, align 4
  %70 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %71 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %75, label %79

; <label>:75:                                     ; preds = %48
  %76 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %77 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  br label %81

; <label>:79:                                     ; preds = %48
  %80 = load i32, i32* %5, align 4
  br label %81

; <label>:81:                                     ; preds = %79, %75
  %82 = phi i32 [ %78, %75 ], [ %80, %79 ]
  %83 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %84 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %86 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %90, label %94

; <label>:90:                                     ; preds = %81
  %91 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %92 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  br label %96

; <label>:94:                                     ; preds = %81
  %95 = load i32, i32* %5, align 4
  br label %96

; <label>:96:                                     ; preds = %94, %90
  %97 = phi i32 [ %93, %90 ], [ %95, %94 ]
  %98 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %99 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load %union.tree_node*, %union.tree_node** %4, align 8
  %101 = bitcast %union.tree_node* %100 to %struct.tree_decl*
  %102 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %101, i32 0, i32 11
  %103 = load %union.tree_node*, %union.tree_node** %102, align 8
  %104 = icmp ne %union.tree_node* %103, null
  br i1 %104, label %105, label %178

; <label>:105:                                    ; preds = %96
  %106 = load %union.tree_node*, %union.tree_node** %4, align 8
  %107 = bitcast %union.tree_node* %106 to %struct.tree_common*
  %108 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %107, i32 0, i32 1
  %109 = load %union.tree_node*, %union.tree_node** %108, align 8
  %110 = bitcast %union.tree_node* %109 to %struct.tree_type*
  %111 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %6, align 4
  %113 = load %union.tree_node*, %union.tree_node** %4, align 8
  %114 = bitcast %union.tree_node* %113 to %struct.tree_common*
  %115 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %114, i32 0, i32 1
  %116 = load %union.tree_node*, %union.tree_node** %115, align 8
  %117 = bitcast %union.tree_node* %116 to %struct.tree_type*
  %118 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = lshr i32 %119, 31
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

; <label>:122:                                    ; preds = %105
  %123 = load %union.tree_node*, %union.tree_node** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @x86_field_alignment(%union.tree_node* %123, i32 %124)
  store i32 %125, i32* %6, align 4
  br label %126

; <label>:126:                                    ; preds = %122, %105
  %127 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %128 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = icmp ugt i32 %129, %130
  br i1 %131, label %132, label %136

; <label>:132:                                    ; preds = %126
  %133 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %134 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  br label %138

; <label>:136:                                    ; preds = %126
  %137 = load i32, i32* %6, align 4
  br label %138

; <label>:138:                                    ; preds = %136, %132
  %139 = phi i32 [ %135, %132 ], [ %137, %136 ]
  %140 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %141 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %143 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = icmp ugt i32 %144, %145
  br i1 %146, label %147, label %151

; <label>:147:                                    ; preds = %138
  %148 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %149 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  br label %153

; <label>:151:                                    ; preds = %138
  %152 = load i32, i32* %6, align 4
  br label %153

; <label>:153:                                    ; preds = %151, %147
  %154 = phi i32 [ %150, %147 ], [ %152, %151 ]
  %155 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %156 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  %157 = load %union.tree_node*, %union.tree_node** %4, align 8
  %158 = bitcast %union.tree_node* %157 to %struct.tree_common*
  %159 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %158, i32 0, i32 1
  %160 = load %union.tree_node*, %union.tree_node** %159, align 8
  %161 = bitcast %union.tree_node* %160 to %struct.tree_type*
  %162 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = lshr i32 %163, 31
  %165 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %166 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %165, i32 0, i32 0
  %167 = load %union.tree_node*, %union.tree_node** %166, align 8
  %168 = bitcast %union.tree_node* %167 to %struct.tree_type*
  %169 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = lshr i32 %170, 31
  %172 = or i32 %171, %164
  %173 = load i32, i32* %169, align 4
  %174 = and i32 %172, 1
  %175 = shl i32 %174, 31
  %176 = and i32 %173, 2147483647
  %177 = or i32 %176, %175
  store i32 %177, i32* %169, align 4
  br label %178

; <label>:178:                                    ; preds = %153, %96
  %179 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %180 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %179, i32 0, i32 0
  %181 = load %union.tree_node*, %union.tree_node** %180, align 8
  %182 = bitcast %union.tree_node* %181 to %struct.tree_common*
  %183 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, 255
  %186 = icmp eq i32 %185, 21
  br i1 %186, label %187, label %198

; <label>:187:                                    ; preds = %178
  %188 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %189 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %188, i32 0, i32 1
  %190 = load %union.tree_node*, %union.tree_node** %189, align 8
  %191 = load %union.tree_node*, %union.tree_node** %4, align 8
  %192 = bitcast %union.tree_node* %191 to %struct.tree_decl*
  %193 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %192, i32 0, i32 7
  %194 = load %union.tree_node*, %union.tree_node** %193, align 8
  %195 = call %union.tree_node* @size_binop(i32 79, %union.tree_node* %190, %union.tree_node* %194)
  %196 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %197 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %196, i32 0, i32 1
  store %union.tree_node* %195, %union.tree_node** %197, align 8
  br label %225

; <label>:198:                                    ; preds = %178
  %199 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %200 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %199, i32 0, i32 0
  %201 = load %union.tree_node*, %union.tree_node** %200, align 8
  %202 = bitcast %union.tree_node* %201 to %struct.tree_common*
  %203 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, 255
  %206 = icmp eq i32 %205, 22
  br i1 %206, label %207, label %224

; <label>:207:                                    ; preds = %198
  %208 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %209 = load %union.tree_node*, %union.tree_node** %4, align 8
  %210 = bitcast %union.tree_node* %209 to %struct.tree_decl*
  %211 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %210, i32 0, i32 12
  %212 = load %union.tree_node*, %union.tree_node** %211, align 8
  %213 = load %union.tree_node*, %union.tree_node** %4, align 8
  %214 = bitcast %union.tree_node* %213 to %struct.tree_decl*
  %215 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %214, i32 0, i32 7
  %216 = load %union.tree_node*, %union.tree_node** %215, align 8
  %217 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %218 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %217, i32 0, i32 1
  %219 = load %union.tree_node*, %union.tree_node** %218, align 8
  %220 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 51, %union.tree_node* %208, %union.tree_node* %212, %union.tree_node* %216, %union.tree_node* %219)
  %221 = call %union.tree_node* @fold(%union.tree_node* %220)
  %222 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %3, align 8
  %223 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %222, i32 0, i32 1
  store %union.tree_node* %221, %union.tree_node** %223, align 8
  br label %224

; <label>:224:                                    ; preds = %207, %198
  br label %225

; <label>:225:                                    ; preds = %224, %187
  ret void
}

declare i32 @integer_zerop(%union.tree_node*) #1

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare i32 @x86_field_alignment(%union.tree_node*, i32) #1

declare i32 @simple_cst_equal(%union.tree_node*, %union.tree_node*) #1

declare i32 @exact_log2_wide(i64) #1

; Function Attrs: noinline nounwind uwtable
define void @compute_record_mode(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %union.tree_node*, %union.tree_node** %2, align 8
  %7 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %8 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, -65025
  %11 = or i32 %10, 26112
  store i32 %11, i32* %8, align 4
  %12 = load %union.tree_node*, %union.tree_node** %2, align 8
  %13 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %13, i32 0, i32 2
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8
  %16 = call i32 @host_integerp(%union.tree_node* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %1
  br label %225

; <label>:19:                                     ; preds = %1
  %20 = load %union.tree_node*, %union.tree_node** %2, align 8
  %21 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %22 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %21, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8
  store %union.tree_node* %23, %union.tree_node** %3, align 8
  br label %24

; <label>:24:                                     ; preds = %145, %19
  %25 = load %union.tree_node*, %union.tree_node** %3, align 8
  %26 = icmp ne %union.tree_node* %25, null
  br i1 %26, label %27, label %150

; <label>:27:                                     ; preds = %24
  %28 = load %union.tree_node*, %union.tree_node** %3, align 8
  %29 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 255
  %33 = icmp ne i32 %32, 37
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %27
  br label %145

; <label>:35:                                     ; preds = %27
  %36 = load %union.tree_node*, %union.tree_node** %3, align 8
  %37 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %38 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %37, i32 0, i32 1
  %39 = load %union.tree_node*, %union.tree_node** %38, align 8
  %40 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %85, label %45

; <label>:45:                                     ; preds = %35
  %46 = load %union.tree_node*, %union.tree_node** %3, align 8
  %47 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %48 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %47, i32 0, i32 1
  %49 = load %union.tree_node*, %union.tree_node** %48, align 8
  %50 = bitcast %union.tree_node* %49 to %struct.tree_type*
  %51 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = lshr i32 %52, 9
  %54 = and i32 %53, 127
  %55 = icmp eq i32 %54, 51
  br i1 %55, label %56, label %67

; <label>:56:                                     ; preds = %45
  %57 = load %union.tree_node*, %union.tree_node** %3, align 8
  %58 = bitcast %union.tree_node* %57 to %struct.tree_common*
  %59 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %58, i32 0, i32 1
  %60 = load %union.tree_node*, %union.tree_node** %59, align 8
  %61 = bitcast %union.tree_node* %60 to %struct.tree_type*
  %62 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = lshr i32 %63, 17
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

; <label>:67:                                     ; preds = %56, %45
  %68 = load %union.tree_node*, %union.tree_node** %3, align 8
  %69 = call %union.tree_node* @bit_position(%union.tree_node* %68)
  %70 = call i32 @host_integerp(%union.tree_node* %69, i32 1)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

; <label>:72:                                     ; preds = %67
  %73 = load %union.tree_node*, %union.tree_node** %3, align 8
  %74 = bitcast %union.tree_node* %73 to %struct.tree_decl*
  %75 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %74, i32 0, i32 4
  %76 = load %union.tree_node*, %union.tree_node** %75, align 8
  %77 = icmp eq %union.tree_node* %76, null
  br i1 %77, label %85, label %78

; <label>:78:                                     ; preds = %72
  %79 = load %union.tree_node*, %union.tree_node** %3, align 8
  %80 = bitcast %union.tree_node* %79 to %struct.tree_decl*
  %81 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %80, i32 0, i32 4
  %82 = load %union.tree_node*, %union.tree_node** %81, align 8
  %83 = call i32 @host_integerp(%union.tree_node* %82, i32 1)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

; <label>:85:                                     ; preds = %78, %72, %67, %56, %35
  br label %225

; <label>:86:                                     ; preds = %78
  %87 = load %union.tree_node*, %union.tree_node** %3, align 8
  %88 = call i64 @int_bit_position(%union.tree_node* %87)
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i32, i32* @target_flags, align 4
  %91 = and i32 %90, 33554432
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %92, i32 64, i32 32
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %89, %94
  %96 = load %union.tree_node*, %union.tree_node** %3, align 8
  %97 = bitcast %union.tree_node* %96 to %struct.tree_decl*
  %98 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %97, i32 0, i32 4
  %99 = load %union.tree_node*, %union.tree_node** %98, align 8
  %100 = call i64 @tree_low_cst(%union.tree_node* %99, i32 1)
  %101 = load i64, i64* %5, align 8
  %102 = add i64 %100, %101
  %103 = sub i64 %102, 1
  %104 = load i32, i32* @target_flags, align 4
  %105 = and i32 %104, 33554432
  %106 = icmp ne i32 %105, 0
  %107 = select i1 %106, i32 64, i32 32
  %108 = sext i32 %107 to i64
  %109 = udiv i64 %103, %108
  %110 = icmp ne i64 %95, %109
  br i1 %110, label %111, label %125

; <label>:111:                                    ; preds = %86
  %112 = load %union.tree_node*, %union.tree_node** %3, align 8
  %113 = bitcast %union.tree_node* %112 to %struct.tree_decl*
  %114 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %113, i32 0, i32 4
  %115 = load %union.tree_node*, %union.tree_node** %114, align 8
  %116 = call i64 @tree_low_cst(%union.tree_node* %115, i32 1)
  %117 = load i32, i32* @target_flags, align 4
  %118 = and i32 %117, 33554432
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %119, i32 64, i32 32
  %121 = sext i32 %120 to i64
  %122 = srem i64 %116, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %111
  br label %225

; <label>:125:                                    ; preds = %111, %86
  %126 = load %union.tree_node*, %union.tree_node** %2, align 8
  %127 = bitcast %union.tree_node* %126 to %struct.tree_type*
  %128 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %127, i32 0, i32 2
  %129 = load %union.tree_node*, %union.tree_node** %128, align 8
  %130 = load %union.tree_node*, %union.tree_node** %3, align 8
  %131 = bitcast %union.tree_node* %130 to %struct.tree_decl*
  %132 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %131, i32 0, i32 4
  %133 = load %union.tree_node*, %union.tree_node** %132, align 8
  %134 = call i32 @simple_cst_equal(%union.tree_node* %129, %union.tree_node* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

; <label>:136:                                    ; preds = %125
  %137 = load %union.tree_node*, %union.tree_node** %3, align 8
  %138 = bitcast %union.tree_node* %137 to %struct.tree_decl*
  %139 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %138, i32 0, i32 5
  %140 = bitcast i48* %139 to i64*
  %141 = load i64, i64* %140, align 8
  %142 = and i64 %141, 255
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %4, align 4
  br label %144

; <label>:144:                                    ; preds = %136, %125
  br label %145

; <label>:145:                                    ; preds = %144, %34
  %146 = load %union.tree_node*, %union.tree_node** %3, align 8
  %147 = bitcast %union.tree_node* %146 to %struct.tree_common*
  %148 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %147, i32 0, i32 0
  %149 = load %union.tree_node*, %union.tree_node** %148, align 8
  store %union.tree_node* %149, %union.tree_node** %3, align 8
  br label %24

; <label>:150:                                    ; preds = %24
  %151 = load %union.tree_node*, %union.tree_node** %2, align 8
  %152 = bitcast %union.tree_node* %151 to %struct.tree_common*
  %153 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, 255
  %156 = icmp eq i32 %155, 20
  br i1 %156, label %157, label %170

; <label>:157:                                    ; preds = %150
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %170

; <label>:160:                                    ; preds = %157
  %161 = load i32, i32* %4, align 4
  %162 = load %union.tree_node*, %union.tree_node** %2, align 8
  %163 = bitcast %union.tree_node* %162 to %struct.tree_type*
  %164 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %161, 127
  %167 = shl i32 %166, 9
  %168 = and i32 %165, -65025
  %169 = or i32 %168, %167
  store i32 %169, i32* %164, align 4
  br label %184

; <label>:170:                                    ; preds = %157, %150
  %171 = load %union.tree_node*, %union.tree_node** %2, align 8
  %172 = bitcast %union.tree_node* %171 to %struct.tree_type*
  %173 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %172, i32 0, i32 2
  %174 = load %union.tree_node*, %union.tree_node** %173, align 8
  %175 = call i32 @mode_for_size_tree(%union.tree_node* %174, i32 1, i32 1)
  %176 = load %union.tree_node*, %union.tree_node** %2, align 8
  %177 = bitcast %union.tree_node* %176 to %struct.tree_type*
  %178 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %175, 127
  %181 = shl i32 %180, 9
  %182 = and i32 %179, -65025
  %183 = or i32 %182, %181
  store i32 %183, i32* %178, align 4
  br label %184

; <label>:184:                                    ; preds = %170, %160
  %185 = load %union.tree_node*, %union.tree_node** %2, align 8
  %186 = bitcast %union.tree_node* %185 to %struct.tree_type*
  %187 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = lshr i32 %188, 9
  %190 = and i32 %189, 127
  %191 = icmp ne i32 %190, 51
  br i1 %191, label %192, label %225

; <label>:192:                                    ; preds = %184
  br i1 false, label %193, label %225

; <label>:193:                                    ; preds = %192
  %194 = load %union.tree_node*, %union.tree_node** %2, align 8
  %195 = bitcast %union.tree_node* %194 to %struct.tree_type*
  %196 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = icmp uge i32 %197, 128
  br i1 %198, label %225, label %199

; <label>:199:                                    ; preds = %193
  %200 = load %union.tree_node*, %union.tree_node** %2, align 8
  %201 = bitcast %union.tree_node* %200 to %struct.tree_type*
  %202 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 8
  %204 = load %union.tree_node*, %union.tree_node** %2, align 8
  %205 = bitcast %union.tree_node* %204 to %struct.tree_type*
  %206 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = lshr i32 %207, 9
  %209 = and i32 %208, 127
  %210 = call i32 @get_mode_alignment(i32 %209)
  %211 = icmp uge i32 %203, %210
  br i1 %211, label %225, label %212

; <label>:212:                                    ; preds = %199
  %213 = load %union.tree_node*, %union.tree_node** %2, align 8
  %214 = bitcast %union.tree_node* %213 to %struct.tree_type*
  %215 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, -131073
  %218 = or i32 %217, 131072
  store i32 %218, i32* %215, align 4
  %219 = load %union.tree_node*, %union.tree_node** %2, align 8
  %220 = bitcast %union.tree_node* %219 to %struct.tree_type*
  %221 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, -65025
  %224 = or i32 %223, 26112
  store i32 %224, i32* %221, align 4
  br label %225

; <label>:225:                                    ; preds = %212, %199, %193, %192, %184, %124, %85, %18
  ret void
}

declare %union.tree_node* @bit_position(%union.tree_node*) #1

declare i64 @int_bit_position(%union.tree_node*) #1

; Function Attrs: noinline nounwind uwtable
define void @finish_record_layout(%struct.record_layout_info_s*) #0 {
  %2 = alloca %struct.record_layout_info_s*, align 8
  store %struct.record_layout_info_s* %0, %struct.record_layout_info_s** %2, align 8
  %3 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  call void @finalize_record_size(%struct.record_layout_info_s* %3)
  %4 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %5 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %4, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8
  call void @compute_record_mode(%union.tree_node* %6)
  %7 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %8 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %7, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8
  call void @finalize_type_size(%union.tree_node* %9)
  br label %10

; <label>:10:                                     ; preds = %15, %1
  %11 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %12 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %11, i32 0, i32 8
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8
  %14 = icmp ne %union.tree_node* %13, null
  br i1 %14, label %15, label %30

; <label>:15:                                     ; preds = %10
  %16 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %17 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %16, i32 0, i32 8
  %18 = load %union.tree_node*, %union.tree_node** %17, align 8
  %19 = bitcast %union.tree_node* %18 to %struct.tree_list*
  %20 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %19, i32 0, i32 2
  %21 = load %union.tree_node*, %union.tree_node** %20, align 8
  call void @layout_decl(%union.tree_node* %21, i32 0)
  %22 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %23 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %22, i32 0, i32 8
  %24 = load %union.tree_node*, %union.tree_node** %23, align 8
  %25 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %26 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %25, i32 0, i32 0
  %27 = load %union.tree_node*, %union.tree_node** %26, align 8
  %28 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %29 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %28, i32 0, i32 8
  store %union.tree_node* %27, %union.tree_node** %29, align 8
  br label %10

; <label>:30:                                     ; preds = %10
  %31 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %32 = bitcast %struct.record_layout_info_s* %31 to i8*
  call void @free(i8* %32) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finalize_record_size(%struct.record_layout_info_s*) #0 {
  %2 = alloca %struct.record_layout_info_s*, align 8
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca %union.tree_node*, align 8
  %5 = alloca %union.tree_node*, align 8
  %6 = alloca i8*, align 8
  store %struct.record_layout_info_s* %0, %struct.record_layout_info_s** %2, align 8
  %7 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %8 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %7, i32 0, i32 2
  store i32 8, i32* %8, align 8
  %9 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  call void @normalize_rli(%struct.record_layout_info_s* %9)
  %10 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %11 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %10, i32 0, i32 0
  %12 = load %union.tree_node*, %union.tree_node** %11, align 8
  %13 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %17 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ugt i32 %15, %18
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %1
  %21 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %22 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %21, i32 0, i32 0
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8
  %24 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %25 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  br label %31

; <label>:27:                                     ; preds = %1
  %28 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %29 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  br label %31

; <label>:31:                                     ; preds = %27, %20
  %32 = phi i32 [ %26, %20 ], [ %30, %27 ]
  %33 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %34 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %33, i32 0, i32 0
  %35 = load %union.tree_node*, %union.tree_node** %34, align 8
  %36 = bitcast %union.tree_node* %35 to %struct.tree_type*
  %37 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %36, i32 0, i32 7
  store i32 %32, i32* %37, align 8
  %38 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %39 = call %union.tree_node* @rli_size_so_far(%struct.record_layout_info_s* %38)
  store %union.tree_node* %39, %union.tree_node** %3, align 8
  %40 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %41 = call %union.tree_node* @rli_size_unit_so_far(%struct.record_layout_info_s* %40)
  store %union.tree_node* %41, %union.tree_node** %4, align 8
  %42 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %43 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %42, i32 0, i32 3
  %44 = load %union.tree_node*, %union.tree_node** %43, align 8
  %45 = call i32 @integer_zerop(%union.tree_node* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

; <label>:47:                                     ; preds = %31
  %48 = load %union.tree_node*, %union.tree_node** %4, align 8
  %49 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 16), align 16
  %50 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %48, %union.tree_node* %49)
  store %union.tree_node* %50, %union.tree_node** %4, align 8
  br label %51

; <label>:51:                                     ; preds = %47, %31
  %52 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %53 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %52, i32 0, i32 0
  %54 = load %union.tree_node*, %union.tree_node** %53, align 8
  %55 = bitcast %union.tree_node* %54 to %struct.tree_type*
  %56 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %55, i32 0, i32 16
  %57 = load %union.tree_node*, %union.tree_node** %56, align 8
  %58 = icmp ne %union.tree_node* %57, null
  br i1 %58, label %59, label %91

; <label>:59:                                     ; preds = %51
  %60 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %61 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %60, i32 0, i32 0
  %62 = load %union.tree_node*, %union.tree_node** %61, align 8
  %63 = bitcast %union.tree_node* %62 to %struct.tree_type*
  %64 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %63, i32 0, i32 16
  %65 = load %union.tree_node*, %union.tree_node** %64, align 8
  %66 = bitcast %union.tree_node* %65 to %struct.tree_vec*
  %67 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 6
  br i1 %69, label %70, label %91

; <label>:70:                                     ; preds = %59
  %71 = load %union.tree_node*, %union.tree_node** %3, align 8
  %72 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %73 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %72, i32 0, i32 0
  %74 = load %union.tree_node*, %union.tree_node** %73, align 8
  %75 = bitcast %union.tree_node* %74 to %struct.tree_type*
  %76 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %75, i32 0, i32 16
  %77 = load %union.tree_node*, %union.tree_node** %76, align 8
  %78 = bitcast %union.tree_node* %77 to %struct.tree_vec*
  %79 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %78, i32 0, i32 2
  %80 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %79, i64 0, i64 6
  store %union.tree_node* %71, %union.tree_node** %80, align 8
  %81 = load %union.tree_node*, %union.tree_node** %4, align 8
  %82 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %83 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %82, i32 0, i32 0
  %84 = load %union.tree_node*, %union.tree_node** %83, align 8
  %85 = bitcast %union.tree_node* %84 to %struct.tree_type*
  %86 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %85, i32 0, i32 16
  %87 = load %union.tree_node*, %union.tree_node** %86, align 8
  %88 = bitcast %union.tree_node* %87 to %struct.tree_vec*
  %89 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %88, i32 0, i32 2
  %90 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %89, i64 0, i64 7
  store %union.tree_node* %81, %union.tree_node** %90, align 8
  br label %91

; <label>:91:                                     ; preds = %70, %59, %51
  %92 = load %union.tree_node*, %union.tree_node** %3, align 8
  %93 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %94 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %93, i32 0, i32 0
  %95 = load %union.tree_node*, %union.tree_node** %94, align 8
  %96 = bitcast %union.tree_node* %95 to %struct.tree_type*
  %97 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = call %union.tree_node* @round_up(%union.tree_node* %92, i32 %98)
  %100 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %101 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %100, i32 0, i32 0
  %102 = load %union.tree_node*, %union.tree_node** %101, align 8
  %103 = bitcast %union.tree_node* %102 to %struct.tree_type*
  %104 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %103, i32 0, i32 2
  store %union.tree_node* %99, %union.tree_node** %104, align 8
  %105 = load %union.tree_node*, %union.tree_node** %4, align 8
  %106 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %107 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %106, i32 0, i32 0
  %108 = load %union.tree_node*, %union.tree_node** %107, align 8
  %109 = bitcast %union.tree_node* %108 to %struct.tree_type*
  %110 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = udiv i32 %111, 8
  %113 = call %union.tree_node* @round_up(%union.tree_node* %105, i32 %112)
  %114 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %115 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %114, i32 0, i32 0
  %116 = load %union.tree_node*, %union.tree_node** %115, align 8
  %117 = bitcast %union.tree_node* %116 to %struct.tree_type*
  %118 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %117, i32 0, i32 3
  store %union.tree_node* %113, %union.tree_node** %118, align 8
  %119 = load i32, i32* @warn_padded, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

; <label>:121:                                    ; preds = %91
  %122 = load %union.tree_node*, %union.tree_node** %3, align 8
  %123 = bitcast %union.tree_node* %122 to %struct.tree_common*
  %124 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = lshr i32 %125, 9
  %127 = and i32 %126, 1
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

; <label>:129:                                    ; preds = %121
  %130 = load %union.tree_node*, %union.tree_node** %3, align 8
  %131 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %132 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %131, i32 0, i32 0
  %133 = load %union.tree_node*, %union.tree_node** %132, align 8
  %134 = bitcast %union.tree_node* %133 to %struct.tree_type*
  %135 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %134, i32 0, i32 2
  %136 = load %union.tree_node*, %union.tree_node** %135, align 8
  %137 = call i32 @simple_cst_equal(%union.tree_node* %130, %union.tree_node* %136)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

; <label>:139:                                    ; preds = %129
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0))
  br label %140

; <label>:140:                                    ; preds = %139, %129, %121, %91
  %141 = load i32, i32* @warn_packed, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %277

; <label>:143:                                    ; preds = %140
  %144 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %145 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %144, i32 0, i32 0
  %146 = load %union.tree_node*, %union.tree_node** %145, align 8
  %147 = bitcast %union.tree_node* %146 to %struct.tree_common*
  %148 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, 255
  %151 = icmp eq i32 %150, 20
  br i1 %151, label %152, label %277

; <label>:152:                                    ; preds = %143
  %153 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %154 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %153, i32 0, i32 0
  %155 = load %union.tree_node*, %union.tree_node** %154, align 8
  %156 = bitcast %union.tree_node* %155 to %struct.tree_type*
  %157 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = lshr i32 %158, 20
  %160 = and i32 %159, 1
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %277

; <label>:162:                                    ; preds = %152
  %163 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %164 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %277, label %167

; <label>:167:                                    ; preds = %162
  %168 = load %union.tree_node*, %union.tree_node** %3, align 8
  %169 = bitcast %union.tree_node* %168 to %struct.tree_common*
  %170 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = lshr i32 %171, 9
  %173 = and i32 %172, 1
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %277

; <label>:175:                                    ; preds = %167
  %176 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %177 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %176, i32 0, i32 0
  %178 = load %union.tree_node*, %union.tree_node** %177, align 8
  %179 = bitcast %union.tree_node* %178 to %struct.tree_type*
  %180 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %183 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = icmp ugt i32 %181, %184
  br i1 %185, label %186, label %193

; <label>:186:                                    ; preds = %175
  %187 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %188 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %187, i32 0, i32 0
  %189 = load %union.tree_node*, %union.tree_node** %188, align 8
  %190 = bitcast %union.tree_node* %189 to %struct.tree_type*
  %191 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 8
  br label %197

; <label>:193:                                    ; preds = %175
  %194 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %195 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  br label %197

; <label>:197:                                    ; preds = %193, %186
  %198 = phi i32 [ %192, %186 ], [ %196, %193 ]
  %199 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %200 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  %201 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %202 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %201, i32 0, i32 0
  %203 = load %union.tree_node*, %union.tree_node** %202, align 8
  %204 = bitcast %union.tree_node* %203 to %struct.tree_type*
  %205 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %204, i32 0, i32 2
  %206 = load %union.tree_node*, %union.tree_node** %205, align 8
  %207 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %208 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = call %union.tree_node* @round_up(%union.tree_node* %206, i32 %209)
  store %union.tree_node* %210, %union.tree_node** %5, align 8
  %211 = load %union.tree_node*, %union.tree_node** %5, align 8
  %212 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %213 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %212, i32 0, i32 0
  %214 = load %union.tree_node*, %union.tree_node** %213, align 8
  %215 = bitcast %union.tree_node* %214 to %struct.tree_type*
  %216 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %215, i32 0, i32 2
  %217 = load %union.tree_node*, %union.tree_node** %216, align 8
  %218 = call i32 @simple_cst_equal(%union.tree_node* %211, %union.tree_node* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %276

; <label>:220:                                    ; preds = %197
  %221 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %222 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %221, i32 0, i32 0
  %223 = load %union.tree_node*, %union.tree_node** %222, align 8
  %224 = bitcast %union.tree_node* %223 to %struct.tree_type*
  %225 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, -1048577
  store i32 %227, i32* %225, align 4
  %228 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %229 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %228, i32 0, i32 0
  %230 = load %union.tree_node*, %union.tree_node** %229, align 8
  %231 = bitcast %union.tree_node* %230 to %struct.tree_type*
  %232 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %231, i32 0, i32 11
  %233 = load %union.tree_node*, %union.tree_node** %232, align 8
  %234 = icmp ne %union.tree_node* %233, null
  br i1 %234, label %235, label %274

; <label>:235:                                    ; preds = %220
  %236 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %237 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %236, i32 0, i32 0
  %238 = load %union.tree_node*, %union.tree_node** %237, align 8
  %239 = bitcast %union.tree_node* %238 to %struct.tree_type*
  %240 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %239, i32 0, i32 11
  %241 = load %union.tree_node*, %union.tree_node** %240, align 8
  %242 = bitcast %union.tree_node* %241 to %struct.tree_common*
  %243 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = and i32 %244, 255
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %258

; <label>:247:                                    ; preds = %235
  %248 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %249 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %248, i32 0, i32 0
  %250 = load %union.tree_node*, %union.tree_node** %249, align 8
  %251 = bitcast %union.tree_node* %250 to %struct.tree_type*
  %252 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %251, i32 0, i32 11
  %253 = load %union.tree_node*, %union.tree_node** %252, align 8
  %254 = bitcast %union.tree_node* %253 to %struct.tree_identifier*
  %255 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  store i8* %257, i8** %6, align 8
  br label %272

; <label>:258:                                    ; preds = %235
  %259 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %2, align 8
  %260 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %259, i32 0, i32 0
  %261 = load %union.tree_node*, %union.tree_node** %260, align 8
  %262 = bitcast %union.tree_node* %261 to %struct.tree_type*
  %263 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %262, i32 0, i32 11
  %264 = load %union.tree_node*, %union.tree_node** %263, align 8
  %265 = bitcast %union.tree_node* %264 to %struct.tree_decl*
  %266 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %265, i32 0, i32 8
  %267 = load %union.tree_node*, %union.tree_node** %266, align 8
  %268 = bitcast %union.tree_node* %267 to %struct.tree_identifier*
  %269 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %269, i32 0, i32 1
  %271 = load i8*, i8** %270, align 8
  store i8* %271, i8** %6, align 8
  br label %272

; <label>:272:                                    ; preds = %258, %247
  %273 = load i8*, i8** %6, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i8* %273)
  br label %275

; <label>:274:                                    ; preds = %220
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  br label %275

; <label>:275:                                    ; preds = %274, %272
  br label %276

; <label>:276:                                    ; preds = %275, %197
  br label %277

; <label>:277:                                    ; preds = %276, %167, %162, %152, %143, %140
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finalize_type_size(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca %union.tree_node*, align 8
  %5 = alloca %union.tree_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %9 = load %union.tree_node*, %union.tree_node** %2, align 8
  %10 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %11 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = lshr i32 %12, 9
  %14 = and i32 %13, 127
  %15 = icmp ne i32 %14, 51
  br i1 %15, label %16, label %68

; <label>:16:                                     ; preds = %1
  %17 = load %union.tree_node*, %union.tree_node** %2, align 8
  %18 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %19 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = lshr i32 %20, 9
  %22 = and i32 %21, 127
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %68

; <label>:24:                                     ; preds = %16
  %25 = load %union.tree_node*, %union.tree_node** %2, align 8
  %26 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 255
  %30 = icmp ne i32 %29, 20
  br i1 %30, label %31, label %68

; <label>:31:                                     ; preds = %24
  %32 = load %union.tree_node*, %union.tree_node** %2, align 8
  %33 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %34 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 255
  %37 = icmp ne i32 %36, 21
  br i1 %37, label %38, label %68

; <label>:38:                                     ; preds = %31
  %39 = load %union.tree_node*, %union.tree_node** %2, align 8
  %40 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 255
  %44 = icmp ne i32 %43, 22
  br i1 %44, label %45, label %68

; <label>:45:                                     ; preds = %38
  %46 = load %union.tree_node*, %union.tree_node** %2, align 8
  %47 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %48 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 255
  %51 = icmp ne i32 %50, 18
  br i1 %51, label %52, label %68

; <label>:52:                                     ; preds = %45
  %53 = load %union.tree_node*, %union.tree_node** %2, align 8
  %54 = bitcast %union.tree_node* %53 to %struct.tree_type*
  %55 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = lshr i32 %56, 9
  %58 = and i32 %57, 127
  %59 = call i32 @get_mode_alignment(i32 %58)
  %60 = load %union.tree_node*, %union.tree_node** %2, align 8
  %61 = bitcast %union.tree_node* %60 to %struct.tree_type*
  %62 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %61, i32 0, i32 7
  store i32 %59, i32* %62, align 8
  %63 = load %union.tree_node*, %union.tree_node** %2, align 8
  %64 = bitcast %union.tree_node* %63 to %struct.tree_type*
  %65 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 2147483647
  store i32 %67, i32* %65, align 4
  br label %68

; <label>:68:                                     ; preds = %52, %45, %38, %31, %24, %16, %1
  %69 = load %union.tree_node*, %union.tree_node** %2, align 8
  %70 = bitcast %union.tree_node* %69 to %struct.tree_type*
  %71 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %70, i32 0, i32 3
  %72 = load %union.tree_node*, %union.tree_node** %71, align 8
  %73 = icmp eq %union.tree_node* %72, null
  br i1 %73, label %74, label %92

; <label>:74:                                     ; preds = %68
  %75 = load %union.tree_node*, %union.tree_node** %2, align 8
  %76 = bitcast %union.tree_node* %75 to %struct.tree_type*
  %77 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %76, i32 0, i32 2
  %78 = load %union.tree_node*, %union.tree_node** %77, align 8
  %79 = icmp ne %union.tree_node* %78, null
  br i1 %79, label %80, label %92

; <label>:80:                                     ; preds = %74
  %81 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %82 = load %union.tree_node*, %union.tree_node** %2, align 8
  %83 = bitcast %union.tree_node* %82 to %struct.tree_type*
  %84 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %83, i32 0, i32 2
  %85 = load %union.tree_node*, %union.tree_node** %84, align 8
  %86 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 19), align 8
  %87 = call %union.tree_node* @size_binop(i32 64, %union.tree_node* %85, %union.tree_node* %86)
  %88 = call %union.tree_node* @convert(%union.tree_node* %81, %union.tree_node* %87)
  %89 = load %union.tree_node*, %union.tree_node** %2, align 8
  %90 = bitcast %union.tree_node* %89 to %struct.tree_type*
  %91 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %90, i32 0, i32 3
  store %union.tree_node* %88, %union.tree_node** %91, align 8
  br label %92

; <label>:92:                                     ; preds = %80, %74, %68
  %93 = load %union.tree_node*, %union.tree_node** %2, align 8
  %94 = bitcast %union.tree_node* %93 to %struct.tree_type*
  %95 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %94, i32 0, i32 2
  %96 = load %union.tree_node*, %union.tree_node** %95, align 8
  %97 = icmp ne %union.tree_node* %96, null
  br i1 %97, label %98, label %124

; <label>:98:                                     ; preds = %92
  %99 = load %union.tree_node*, %union.tree_node** %2, align 8
  %100 = bitcast %union.tree_node* %99 to %struct.tree_type*
  %101 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %100, i32 0, i32 2
  %102 = load %union.tree_node*, %union.tree_node** %101, align 8
  %103 = load %union.tree_node*, %union.tree_node** %2, align 8
  %104 = bitcast %union.tree_node* %103 to %struct.tree_type*
  %105 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = call %union.tree_node* @round_up(%union.tree_node* %102, i32 %106)
  %108 = load %union.tree_node*, %union.tree_node** %2, align 8
  %109 = bitcast %union.tree_node* %108 to %struct.tree_type*
  %110 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %109, i32 0, i32 2
  store %union.tree_node* %107, %union.tree_node** %110, align 8
  %111 = load %union.tree_node*, %union.tree_node** %2, align 8
  %112 = bitcast %union.tree_node* %111 to %struct.tree_type*
  %113 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %112, i32 0, i32 3
  %114 = load %union.tree_node*, %union.tree_node** %113, align 8
  %115 = load %union.tree_node*, %union.tree_node** %2, align 8
  %116 = bitcast %union.tree_node* %115 to %struct.tree_type*
  %117 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = udiv i32 %118, 8
  %120 = call %union.tree_node* @round_up(%union.tree_node* %114, i32 %119)
  %121 = load %union.tree_node*, %union.tree_node** %2, align 8
  %122 = bitcast %union.tree_node* %121 to %struct.tree_type*
  %123 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %122, i32 0, i32 3
  store %union.tree_node* %120, %union.tree_node** %123, align 8
  br label %124

; <label>:124:                                    ; preds = %98, %92
  %125 = load %union.tree_node*, %union.tree_node** %2, align 8
  %126 = bitcast %union.tree_node* %125 to %struct.tree_type*
  %127 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %126, i32 0, i32 2
  %128 = load %union.tree_node*, %union.tree_node** %127, align 8
  %129 = icmp ne %union.tree_node* %128, null
  br i1 %129, label %130, label %149

; <label>:130:                                    ; preds = %124
  %131 = load %union.tree_node*, %union.tree_node** %2, align 8
  %132 = bitcast %union.tree_node* %131 to %struct.tree_type*
  %133 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %132, i32 0, i32 2
  %134 = load %union.tree_node*, %union.tree_node** %133, align 8
  %135 = bitcast %union.tree_node* %134 to %struct.tree_common*
  %136 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, 255
  %139 = icmp ne i32 %138, 25
  br i1 %139, label %140, label %149

; <label>:140:                                    ; preds = %130
  %141 = load %union.tree_node*, %union.tree_node** %2, align 8
  %142 = bitcast %union.tree_node* %141 to %struct.tree_type*
  %143 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %142, i32 0, i32 2
  %144 = load %union.tree_node*, %union.tree_node** %143, align 8
  %145 = call %union.tree_node* @variable_size(%union.tree_node* %144)
  %146 = load %union.tree_node*, %union.tree_node** %2, align 8
  %147 = bitcast %union.tree_node* %146 to %struct.tree_type*
  %148 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %147, i32 0, i32 2
  store %union.tree_node* %145, %union.tree_node** %148, align 8
  br label %149

; <label>:149:                                    ; preds = %140, %130, %124
  %150 = load %union.tree_node*, %union.tree_node** %2, align 8
  %151 = bitcast %union.tree_node* %150 to %struct.tree_type*
  %152 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %151, i32 0, i32 3
  %153 = load %union.tree_node*, %union.tree_node** %152, align 8
  %154 = icmp ne %union.tree_node* %153, null
  br i1 %154, label %155, label %174

; <label>:155:                                    ; preds = %149
  %156 = load %union.tree_node*, %union.tree_node** %2, align 8
  %157 = bitcast %union.tree_node* %156 to %struct.tree_type*
  %158 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %157, i32 0, i32 3
  %159 = load %union.tree_node*, %union.tree_node** %158, align 8
  %160 = bitcast %union.tree_node* %159 to %struct.tree_common*
  %161 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, 255
  %164 = icmp ne i32 %163, 25
  br i1 %164, label %165, label %174

; <label>:165:                                    ; preds = %155
  %166 = load %union.tree_node*, %union.tree_node** %2, align 8
  %167 = bitcast %union.tree_node* %166 to %struct.tree_type*
  %168 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %167, i32 0, i32 3
  %169 = load %union.tree_node*, %union.tree_node** %168, align 8
  %170 = call %union.tree_node* @variable_size(%union.tree_node* %169)
  %171 = load %union.tree_node*, %union.tree_node** %2, align 8
  %172 = bitcast %union.tree_node* %171 to %struct.tree_type*
  %173 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %172, i32 0, i32 3
  store %union.tree_node* %170, %union.tree_node** %173, align 8
  br label %174

; <label>:174:                                    ; preds = %165, %155, %149
  %175 = load %union.tree_node*, %union.tree_node** %2, align 8
  %176 = bitcast %union.tree_node* %175 to %struct.tree_type*
  %177 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %176, i32 0, i32 14
  %178 = load %union.tree_node*, %union.tree_node** %177, align 8
  %179 = icmp ne %union.tree_node* %178, null
  br i1 %179, label %187, label %180

; <label>:180:                                    ; preds = %174
  %181 = load %union.tree_node*, %union.tree_node** %2, align 8
  %182 = load %union.tree_node*, %union.tree_node** %2, align 8
  %183 = bitcast %union.tree_node* %182 to %struct.tree_type*
  %184 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %183, i32 0, i32 15
  %185 = load %union.tree_node*, %union.tree_node** %184, align 8
  %186 = icmp ne %union.tree_node* %181, %185
  br i1 %186, label %187, label %255

; <label>:187:                                    ; preds = %180, %174
  %188 = load %union.tree_node*, %union.tree_node** %2, align 8
  %189 = bitcast %union.tree_node* %188 to %struct.tree_type*
  %190 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %189, i32 0, i32 2
  %191 = load %union.tree_node*, %union.tree_node** %190, align 8
  store %union.tree_node* %191, %union.tree_node** %4, align 8
  %192 = load %union.tree_node*, %union.tree_node** %2, align 8
  %193 = bitcast %union.tree_node* %192 to %struct.tree_type*
  %194 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %193, i32 0, i32 3
  %195 = load %union.tree_node*, %union.tree_node** %194, align 8
  store %union.tree_node* %195, %union.tree_node** %5, align 8
  %196 = load %union.tree_node*, %union.tree_node** %2, align 8
  %197 = bitcast %union.tree_node* %196 to %struct.tree_type*
  %198 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %6, align 4
  %200 = load %union.tree_node*, %union.tree_node** %2, align 8
  %201 = bitcast %union.tree_node* %200 to %struct.tree_type*
  %202 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = lshr i32 %203, 31
  store i32 %204, i32* %7, align 4
  %205 = load %union.tree_node*, %union.tree_node** %2, align 8
  %206 = bitcast %union.tree_node* %205 to %struct.tree_type*
  %207 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = lshr i32 %208, 9
  %210 = and i32 %209, 127
  store i32 %210, i32* %8, align 4
  %211 = load %union.tree_node*, %union.tree_node** %2, align 8
  %212 = bitcast %union.tree_node* %211 to %struct.tree_type*
  %213 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %212, i32 0, i32 15
  %214 = load %union.tree_node*, %union.tree_node** %213, align 8
  store %union.tree_node* %214, %union.tree_node** %3, align 8
  br label %215

; <label>:215:                                    ; preds = %249, %187
  %216 = load %union.tree_node*, %union.tree_node** %3, align 8
  %217 = icmp ne %union.tree_node* %216, null
  br i1 %217, label %218, label %254

; <label>:218:                                    ; preds = %215
  %219 = load %union.tree_node*, %union.tree_node** %4, align 8
  %220 = load %union.tree_node*, %union.tree_node** %3, align 8
  %221 = bitcast %union.tree_node* %220 to %struct.tree_type*
  %222 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %221, i32 0, i32 2
  store %union.tree_node* %219, %union.tree_node** %222, align 8
  %223 = load %union.tree_node*, %union.tree_node** %5, align 8
  %224 = load %union.tree_node*, %union.tree_node** %3, align 8
  %225 = bitcast %union.tree_node* %224 to %struct.tree_type*
  %226 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %225, i32 0, i32 3
  store %union.tree_node* %223, %union.tree_node** %226, align 8
  %227 = load i32, i32* %6, align 4
  %228 = load %union.tree_node*, %union.tree_node** %3, align 8
  %229 = bitcast %union.tree_node* %228 to %struct.tree_type*
  %230 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %229, i32 0, i32 7
  store i32 %227, i32* %230, align 8
  %231 = load i32, i32* %7, align 4
  %232 = load %union.tree_node*, %union.tree_node** %3, align 8
  %233 = bitcast %union.tree_node* %232 to %struct.tree_type*
  %234 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %231, 1
  %237 = shl i32 %236, 31
  %238 = and i32 %235, 2147483647
  %239 = or i32 %238, %237
  store i32 %239, i32* %234, align 4
  %240 = load i32, i32* %8, align 4
  %241 = load %union.tree_node*, %union.tree_node** %3, align 8
  %242 = bitcast %union.tree_node* %241 to %struct.tree_type*
  %243 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %240, 127
  %246 = shl i32 %245, 9
  %247 = and i32 %244, -65025
  %248 = or i32 %247, %246
  store i32 %248, i32* %243, align 4
  br label %249

; <label>:249:                                    ; preds = %218
  %250 = load %union.tree_node*, %union.tree_node** %3, align 8
  %251 = bitcast %union.tree_node* %250 to %struct.tree_type*
  %252 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %251, i32 0, i32 14
  %253 = load %union.tree_node*, %union.tree_node** %252, align 8
  store %union.tree_node* %253, %union.tree_node** %3, align 8
  br label %215

; <label>:254:                                    ; preds = %215
  br label %255

; <label>:255:                                    ; preds = %254, %180
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind uwtable
define void @layout_type(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.tree_node*, align 8
  %6 = alloca %union.tree_node*, align 8
  %7 = alloca %union.tree_node*, align 8
  %8 = alloca %union.tree_node*, align 8
  %9 = alloca %union.tree_node*, align 8
  %10 = alloca %union.tree_node*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %union.tree_node*, align 8
  %14 = alloca %struct.record_layout_info_s*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %18 = load %union.tree_node*, %union.tree_node** %2, align 8
  %19 = icmp eq %union.tree_node* %18, null
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %1
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1422, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.layout_type, i32 0, i32 0)) #4
  unreachable

; <label>:21:                                     ; preds = %1
  %22 = load %union.tree_node*, %union.tree_node** %2, align 8
  %23 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %24 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %23, i32 0, i32 2
  %25 = load %union.tree_node*, %union.tree_node** %24, align 8
  %26 = icmp ne %union.tree_node* %25, null
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %21
  br label %1039

; <label>:28:                                     ; preds = %21
  %29 = load %union.tree_node*, %union.tree_node** %2, align 8
  %30 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 255
  switch i32 %33, label %963 [
    i32 24, label %34
    i32 11, label %35
    i32 6, label %50
    i32 10, label %50
    i32 12, label %50
    i32 7, label %117
    i32 8, label %160
    i32 9, label %234
    i32 5, label %281
    i32 14, label %295
    i32 23, label %328
    i32 16, label %328
    i32 13, label %364
    i32 15, label %364
    i32 18, label %440
    i32 20, label %765
    i32 21, label %765
    i32 22, label %765
    i32 19, label %823
    i32 17, label %948
  ]

; <label>:34:                                     ; preds = %28
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1433, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.layout_type, i32 0, i32 0)) #4
  unreachable

; <label>:35:                                     ; preds = %28
  %36 = load %union.tree_node*, %union.tree_node** %2, align 8
  %37 = bitcast %union.tree_node* %36 to %struct.tree_type*
  %38 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 511
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

; <label>:42:                                     ; preds = %35
  %43 = load %union.tree_node*, %union.tree_node** %2, align 8
  %44 = bitcast %union.tree_node* %43 to %struct.tree_type*
  %45 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -512
  %48 = or i32 %47, 1
  store i32 %48, i32* %45, align 4
  br label %49

; <label>:49:                                     ; preds = %42, %35
  br label %50

; <label>:50:                                     ; preds = %49, %28, %28, %28
  %51 = load %union.tree_node*, %union.tree_node** %2, align 8
  %52 = bitcast %union.tree_node* %51 to %struct.tree_type*
  %53 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %52, i32 0, i32 12
  %54 = load %union.tree_node*, %union.tree_node** %53, align 8
  %55 = bitcast %union.tree_node* %54 to %struct.tree_common*
  %56 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 255
  %59 = icmp eq i32 %58, 25
  br i1 %59, label %60, label %74

; <label>:60:                                     ; preds = %50
  %61 = load %union.tree_node*, %union.tree_node** %2, align 8
  %62 = bitcast %union.tree_node* %61 to %struct.tree_type*
  %63 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %62, i32 0, i32 12
  %64 = load %union.tree_node*, %union.tree_node** %63, align 8
  %65 = call i32 @tree_int_cst_sgn(%union.tree_node* %64)
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %74

; <label>:67:                                     ; preds = %60
  %68 = load %union.tree_node*, %union.tree_node** %2, align 8
  %69 = bitcast %union.tree_node* %68 to %struct.tree_common*
  %70 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, -8193
  %73 = or i32 %72, 8192
  store i32 %73, i32* %70, align 8
  br label %74

; <label>:74:                                     ; preds = %67, %60, %50
  %75 = load %union.tree_node*, %union.tree_node** %2, align 8
  %76 = bitcast %union.tree_node* %75 to %struct.tree_type*
  %77 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 511
  %80 = call i32 @smallest_mode_for_size(i32 %79, i32 1)
  %81 = load %union.tree_node*, %union.tree_node** %2, align 8
  %82 = bitcast %union.tree_node* %81 to %struct.tree_type*
  %83 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %80, 127
  %86 = shl i32 %85, 9
  %87 = and i32 %84, -65025
  %88 = or i32 %87, %86
  store i32 %88, i32* %83, align 4
  %89 = load %union.tree_node*, %union.tree_node** %2, align 8
  %90 = bitcast %union.tree_node* %89 to %struct.tree_type*
  %91 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = lshr i32 %92, 9
  %94 = and i32 %93, 127
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i64
  %99 = call %union.tree_node* @size_int_wide(i64 %98, i32 3)
  %100 = load %union.tree_node*, %union.tree_node** %2, align 8
  %101 = bitcast %union.tree_node* %100 to %struct.tree_type*
  %102 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %101, i32 0, i32 2
  store %union.tree_node* %99, %union.tree_node** %102, align 8
  %103 = load %union.tree_node*, %union.tree_node** %2, align 8
  %104 = bitcast %union.tree_node* %103 to %struct.tree_type*
  %105 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = lshr i32 %106, 9
  %108 = and i32 %107, 127
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i64
  %113 = call %union.tree_node* @size_int_wide(i64 %112, i32 0)
  %114 = load %union.tree_node*, %union.tree_node** %2, align 8
  %115 = bitcast %union.tree_node* %114 to %struct.tree_type*
  %116 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %115, i32 0, i32 3
  store %union.tree_node* %113, %union.tree_node** %116, align 8
  br label %964

; <label>:117:                                    ; preds = %28
  %118 = load %union.tree_node*, %union.tree_node** %2, align 8
  %119 = bitcast %union.tree_node* %118 to %struct.tree_type*
  %120 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 511
  %123 = call i32 @mode_for_size(i32 %122, i32 2, i32 0)
  %124 = load %union.tree_node*, %union.tree_node** %2, align 8
  %125 = bitcast %union.tree_node* %124 to %struct.tree_type*
  %126 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %123, 127
  %129 = shl i32 %128, 9
  %130 = and i32 %127, -65025
  %131 = or i32 %130, %129
  store i32 %131, i32* %126, align 4
  %132 = load %union.tree_node*, %union.tree_node** %2, align 8
  %133 = bitcast %union.tree_node* %132 to %struct.tree_type*
  %134 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = lshr i32 %135, 9
  %137 = and i32 %136, 127
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %138
  %140 = load i16, i16* %139, align 2
  %141 = zext i16 %140 to i64
  %142 = call %union.tree_node* @size_int_wide(i64 %141, i32 3)
  %143 = load %union.tree_node*, %union.tree_node** %2, align 8
  %144 = bitcast %union.tree_node* %143 to %struct.tree_type*
  %145 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %144, i32 0, i32 2
  store %union.tree_node* %142, %union.tree_node** %145, align 8
  %146 = load %union.tree_node*, %union.tree_node** %2, align 8
  %147 = bitcast %union.tree_node* %146 to %struct.tree_type*
  %148 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = lshr i32 %149, 9
  %151 = and i32 %150, 127
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i64
  %156 = call %union.tree_node* @size_int_wide(i64 %155, i32 0)
  %157 = load %union.tree_node*, %union.tree_node** %2, align 8
  %158 = bitcast %union.tree_node* %157 to %struct.tree_type*
  %159 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %158, i32 0, i32 3
  store %union.tree_node* %156, %union.tree_node** %159, align 8
  br label %964

; <label>:160:                                    ; preds = %28
  %161 = load %union.tree_node*, %union.tree_node** %2, align 8
  %162 = bitcast %union.tree_node* %161 to %struct.tree_common*
  %163 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %162, i32 0, i32 1
  %164 = load %union.tree_node*, %union.tree_node** %163, align 8
  %165 = bitcast %union.tree_node* %164 to %struct.tree_common*
  %166 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = lshr i32 %167, 13
  %169 = and i32 %168, 1
  %170 = load %union.tree_node*, %union.tree_node** %2, align 8
  %171 = bitcast %union.tree_node* %170 to %struct.tree_common*
  %172 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %169, 1
  %175 = shl i32 %174, 13
  %176 = and i32 %173, -8193
  %177 = or i32 %176, %175
  store i32 %177, i32* %172, align 8
  %178 = load %union.tree_node*, %union.tree_node** %2, align 8
  %179 = bitcast %union.tree_node* %178 to %struct.tree_common*
  %180 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %179, i32 0, i32 1
  %181 = load %union.tree_node*, %union.tree_node** %180, align 8
  %182 = bitcast %union.tree_node* %181 to %struct.tree_type*
  %183 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 511
  %186 = mul nsw i32 2, %185
  %187 = load %union.tree_node*, %union.tree_node** %2, align 8
  %188 = bitcast %union.tree_node* %187 to %struct.tree_common*
  %189 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %188, i32 0, i32 1
  %190 = load %union.tree_node*, %union.tree_node** %189, align 8
  %191 = bitcast %union.tree_node* %190 to %struct.tree_common*
  %192 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, 255
  %195 = icmp eq i32 %194, 6
  %196 = select i1 %195, i32 5, i32 6
  %197 = call i32 @mode_for_size(i32 %186, i32 %196, i32 0)
  %198 = load %union.tree_node*, %union.tree_node** %2, align 8
  %199 = bitcast %union.tree_node* %198 to %struct.tree_type*
  %200 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %197, 127
  %203 = shl i32 %202, 9
  %204 = and i32 %201, -65025
  %205 = or i32 %204, %203
  store i32 %205, i32* %200, align 4
  %206 = load %union.tree_node*, %union.tree_node** %2, align 8
  %207 = bitcast %union.tree_node* %206 to %struct.tree_type*
  %208 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = lshr i32 %209, 9
  %211 = and i32 %210, 127
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %212
  %214 = load i16, i16* %213, align 2
  %215 = zext i16 %214 to i64
  %216 = call %union.tree_node* @size_int_wide(i64 %215, i32 3)
  %217 = load %union.tree_node*, %union.tree_node** %2, align 8
  %218 = bitcast %union.tree_node* %217 to %struct.tree_type*
  %219 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %218, i32 0, i32 2
  store %union.tree_node* %216, %union.tree_node** %219, align 8
  %220 = load %union.tree_node*, %union.tree_node** %2, align 8
  %221 = bitcast %union.tree_node* %220 to %struct.tree_type*
  %222 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 4
  %224 = lshr i32 %223, 9
  %225 = and i32 %224, 127
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i64
  %230 = call %union.tree_node* @size_int_wide(i64 %229, i32 0)
  %231 = load %union.tree_node*, %union.tree_node** %2, align 8
  %232 = bitcast %union.tree_node* %231 to %struct.tree_type*
  %233 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %232, i32 0, i32 3
  store %union.tree_node* %230, %union.tree_node** %233, align 8
  br label %964

; <label>:234:                                    ; preds = %28
  %235 = load %union.tree_node*, %union.tree_node** %2, align 8
  %236 = bitcast %union.tree_node* %235 to %struct.tree_common*
  %237 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %236, i32 0, i32 1
  %238 = load %union.tree_node*, %union.tree_node** %237, align 8
  store %union.tree_node* %238, %union.tree_node** %3, align 8
  %239 = load %union.tree_node*, %union.tree_node** %3, align 8
  %240 = bitcast %union.tree_node* %239 to %struct.tree_common*
  %241 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = lshr i32 %242, 13
  %244 = and i32 %243, 1
  %245 = load %union.tree_node*, %union.tree_node** %2, align 8
  %246 = bitcast %union.tree_node* %245 to %struct.tree_common*
  %247 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %244, 1
  %250 = shl i32 %249, 13
  %251 = and i32 %248, -8193
  %252 = or i32 %251, %250
  store i32 %252, i32* %247, align 8
  %253 = load %union.tree_node*, %union.tree_node** %2, align 8
  %254 = bitcast %union.tree_node* %253 to %struct.tree_type*
  %255 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = lshr i32 %256, 9
  %258 = and i32 %257, 127
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %259
  %261 = load i16, i16* %260, align 2
  %262 = zext i16 %261 to i64
  %263 = call %union.tree_node* @size_int_wide(i64 %262, i32 3)
  %264 = load %union.tree_node*, %union.tree_node** %2, align 8
  %265 = bitcast %union.tree_node* %264 to %struct.tree_type*
  %266 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %265, i32 0, i32 2
  store %union.tree_node* %263, %union.tree_node** %266, align 8
  %267 = load %union.tree_node*, %union.tree_node** %2, align 8
  %268 = bitcast %union.tree_node* %267 to %struct.tree_type*
  %269 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 4
  %271 = lshr i32 %270, 9
  %272 = and i32 %271, 127
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i64
  %277 = call %union.tree_node* @size_int_wide(i64 %276, i32 0)
  %278 = load %union.tree_node*, %union.tree_node** %2, align 8
  %279 = bitcast %union.tree_node* %278 to %struct.tree_type*
  %280 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %279, i32 0, i32 3
  store %union.tree_node* %277, %union.tree_node** %280, align 8
  br label %964

; <label>:281:                                    ; preds = %28
  %282 = load %union.tree_node*, %union.tree_node** %2, align 8
  %283 = bitcast %union.tree_node* %282 to %struct.tree_type*
  %284 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %283, i32 0, i32 7
  store i32 1, i32* %284, align 8
  %285 = load %union.tree_node*, %union.tree_node** %2, align 8
  %286 = bitcast %union.tree_node* %285 to %struct.tree_type*
  %287 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, 2147483647
  store i32 %289, i32* %287, align 4
  %290 = load %union.tree_node*, %union.tree_node** %2, align 8
  %291 = bitcast %union.tree_node* %290 to %struct.tree_type*
  %292 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, -65025
  store i32 %294, i32* %292, align 4
  br label %964

; <label>:295:                                    ; preds = %28
  %296 = load i32, i32* @target_flags, align 4
  %297 = and i32 %296, 33554432
  %298 = icmp ne i32 %297, 0
  %299 = select i1 %298, i32 64, i32 32
  %300 = sext i32 %299 to i64
  %301 = call %union.tree_node* @size_int_wide(i64 %300, i32 3)
  %302 = load %union.tree_node*, %union.tree_node** %2, align 8
  %303 = bitcast %union.tree_node* %302 to %struct.tree_type*
  %304 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %303, i32 0, i32 2
  store %union.tree_node* %301, %union.tree_node** %304, align 8
  %305 = load i32, i32* @target_flags, align 4
  %306 = and i32 %305, 33554432
  %307 = icmp ne i32 %306, 0
  %308 = select i1 %307, i32 64, i32 32
  %309 = sdiv i32 %308, 8
  %310 = sext i32 %309 to i64
  %311 = call %union.tree_node* @size_int_wide(i64 %310, i32 0)
  %312 = load %union.tree_node*, %union.tree_node** %2, align 8
  %313 = bitcast %union.tree_node* %312 to %struct.tree_type*
  %314 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %313, i32 0, i32 3
  store %union.tree_node* %311, %union.tree_node** %314, align 8
  %315 = load i32, i32* @target_flags, align 4
  %316 = and i32 %315, 33554432
  %317 = icmp ne i32 %316, 0
  %318 = select i1 %317, i32 64, i32 32
  %319 = call i32 @mode_for_size(i32 %318, i32 1, i32 0)
  %320 = load %union.tree_node*, %union.tree_node** %2, align 8
  %321 = bitcast %union.tree_node* %320 to %struct.tree_type*
  %322 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %321, i32 0, i32 6
  %323 = load i32, i32* %322, align 4
  %324 = and i32 %319, 127
  %325 = shl i32 %324, 9
  %326 = and i32 %323, -65025
  %327 = or i32 %326, %325
  store i32 %327, i32* %322, align 4
  br label %964

; <label>:328:                                    ; preds = %28, %28
  %329 = load i32, i32* @target_flags, align 4
  %330 = and i32 %329, 33554432
  %331 = icmp ne i32 %330, 0
  %332 = select i1 %331, i32 64, i32 32
  %333 = mul nsw i32 2, %332
  %334 = call i32 @mode_for_size(i32 %333, i32 1, i32 0)
  %335 = load %union.tree_node*, %union.tree_node** %2, align 8
  %336 = bitcast %union.tree_node* %335 to %struct.tree_type*
  %337 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 4
  %339 = and i32 %334, 127
  %340 = shl i32 %339, 9
  %341 = and i32 %338, -65025
  %342 = or i32 %341, %340
  store i32 %342, i32* %337, align 4
  %343 = load i32, i32* @target_flags, align 4
  %344 = and i32 %343, 33554432
  %345 = icmp ne i32 %344, 0
  %346 = select i1 %345, i32 64, i32 32
  %347 = mul nsw i32 2, %346
  %348 = sext i32 %347 to i64
  %349 = call %union.tree_node* @size_int_wide(i64 %348, i32 3)
  %350 = load %union.tree_node*, %union.tree_node** %2, align 8
  %351 = bitcast %union.tree_node* %350 to %struct.tree_type*
  %352 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %351, i32 0, i32 2
  store %union.tree_node* %349, %union.tree_node** %352, align 8
  %353 = load i32, i32* @target_flags, align 4
  %354 = and i32 %353, 33554432
  %355 = icmp ne i32 %354, 0
  %356 = select i1 %355, i32 64, i32 32
  %357 = mul nsw i32 2, %356
  %358 = sdiv i32 %357, 8
  %359 = sext i32 %358 to i64
  %360 = call %union.tree_node* @size_int_wide(i64 %359, i32 0)
  %361 = load %union.tree_node*, %union.tree_node** %2, align 8
  %362 = bitcast %union.tree_node* %361 to %struct.tree_type*
  %363 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %362, i32 0, i32 3
  store %union.tree_node* %360, %union.tree_node** %363, align 8
  br label %964

; <label>:364:                                    ; preds = %28, %28
  %365 = load %union.tree_node*, %union.tree_node** %2, align 8
  %366 = bitcast %union.tree_node* %365 to %struct.tree_common*
  %367 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = and i32 %368, 255
  %370 = icmp eq i32 %369, 15
  br i1 %370, label %371, label %383

; <label>:371:                                    ; preds = %364
  %372 = load i32, i32* @reference_types_internal, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %383

; <label>:374:                                    ; preds = %371
  %375 = load i32, i32* @target_flags, align 4
  %376 = and i32 %375, 33554432
  %377 = icmp ne i32 %376, 0
  %378 = select i1 %377, i32 5, i32 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %379
  %381 = load i16, i16* %380, align 2
  %382 = zext i16 %381 to i32
  br label %388

; <label>:383:                                    ; preds = %371, %364
  %384 = load i32, i32* @target_flags, align 4
  %385 = and i32 %384, 33554432
  %386 = icmp ne i32 %385, 0
  %387 = select i1 %386, i32 64, i32 32
  br label %388

; <label>:388:                                    ; preds = %383, %374
  %389 = phi i32 [ %382, %374 ], [ %387, %383 ]
  store i32 %389, i32* %4, align 4
  %390 = load i32, i32* %4, align 4
  %391 = load i32, i32* @target_flags, align 4
  %392 = and i32 %391, 33554432
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %393, i32 64, i32 32
  %395 = icmp eq i32 %390, %394
  br i1 %395, label %396, label %398

; <label>:396:                                    ; preds = %388
  %397 = load i32, i32* @ptr_mode, align 4
  br label %403

; <label>:398:                                    ; preds = %388
  %399 = load i32, i32* @target_flags, align 4
  %400 = and i32 %399, 33554432
  %401 = icmp ne i32 %400, 0
  %402 = select i1 %401, i32 5, i32 4
  br label %403

; <label>:403:                                    ; preds = %398, %396
  %404 = phi i32 [ %397, %396 ], [ %402, %398 ]
  %405 = load %union.tree_node*, %union.tree_node** %2, align 8
  %406 = bitcast %union.tree_node* %405 to %struct.tree_type*
  %407 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %406, i32 0, i32 6
  %408 = load i32, i32* %407, align 4
  %409 = and i32 %404, 127
  %410 = shl i32 %409, 9
  %411 = and i32 %408, -65025
  %412 = or i32 %411, %410
  store i32 %412, i32* %407, align 4
  %413 = load i32, i32* %4, align 4
  %414 = sext i32 %413 to i64
  %415 = call %union.tree_node* @size_int_wide(i64 %414, i32 3)
  %416 = load %union.tree_node*, %union.tree_node** %2, align 8
  %417 = bitcast %union.tree_node* %416 to %struct.tree_type*
  %418 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %417, i32 0, i32 2
  store %union.tree_node* %415, %union.tree_node** %418, align 8
  %419 = load i32, i32* %4, align 4
  %420 = sdiv i32 %419, 8
  %421 = sext i32 %420 to i64
  %422 = call %union.tree_node* @size_int_wide(i64 %421, i32 0)
  %423 = load %union.tree_node*, %union.tree_node** %2, align 8
  %424 = bitcast %union.tree_node* %423 to %struct.tree_type*
  %425 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %424, i32 0, i32 3
  store %union.tree_node* %422, %union.tree_node** %425, align 8
  %426 = load %union.tree_node*, %union.tree_node** %2, align 8
  %427 = bitcast %union.tree_node* %426 to %struct.tree_common*
  %428 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = and i32 %429, -8193
  %431 = or i32 %430, 8192
  store i32 %431, i32* %428, align 8
  %432 = load i32, i32* %4, align 4
  %433 = load %union.tree_node*, %union.tree_node** %2, align 8
  %434 = bitcast %union.tree_node* %433 to %struct.tree_type*
  %435 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %434, i32 0, i32 6
  %436 = load i32, i32* %435, align 4
  %437 = and i32 %432, 511
  %438 = and i32 %436, -512
  %439 = or i32 %438, %437
  store i32 %439, i32* %435, align 4
  br label %964

; <label>:440:                                    ; preds = %28
  %441 = load %union.tree_node*, %union.tree_node** %2, align 8
  %442 = bitcast %union.tree_node* %441 to %struct.tree_type*
  %443 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %442, i32 0, i32 1
  %444 = load %union.tree_node*, %union.tree_node** %443, align 8
  store %union.tree_node* %444, %union.tree_node** %5, align 8
  %445 = load %union.tree_node*, %union.tree_node** %2, align 8
  %446 = bitcast %union.tree_node* %445 to %struct.tree_common*
  %447 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %446, i32 0, i32 1
  %448 = load %union.tree_node*, %union.tree_node** %447, align 8
  store %union.tree_node* %448, %union.tree_node** %6, align 8
  %449 = load %union.tree_node*, %union.tree_node** %6, align 8
  %450 = call %union.tree_node* @build_pointer_type(%union.tree_node* %449)
  %451 = load %union.tree_node*, %union.tree_node** %5, align 8
  %452 = icmp ne %union.tree_node* %451, null
  br i1 %452, label %453, label %605

; <label>:453:                                    ; preds = %440
  %454 = load %union.tree_node*, %union.tree_node** %5, align 8
  %455 = bitcast %union.tree_node* %454 to %struct.tree_type*
  %456 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %455, i32 0, i32 13
  %457 = load %union.tree_node*, %union.tree_node** %456, align 8
  %458 = icmp ne %union.tree_node* %457, null
  br i1 %458, label %459, label %605

; <label>:459:                                    ; preds = %453
  %460 = load %union.tree_node*, %union.tree_node** %5, align 8
  %461 = bitcast %union.tree_node* %460 to %struct.tree_type*
  %462 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %461, i32 0, i32 12
  %463 = load %union.tree_node*, %union.tree_node** %462, align 8
  %464 = icmp ne %union.tree_node* %463, null
  br i1 %464, label %465, label %605

; <label>:465:                                    ; preds = %459
  %466 = load %union.tree_node*, %union.tree_node** %6, align 8
  %467 = bitcast %union.tree_node* %466 to %struct.tree_type*
  %468 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %467, i32 0, i32 2
  %469 = load %union.tree_node*, %union.tree_node** %468, align 8
  %470 = icmp ne %union.tree_node* %469, null
  br i1 %470, label %471, label %605

; <label>:471:                                    ; preds = %465
  %472 = load %union.tree_node*, %union.tree_node** %5, align 8
  %473 = bitcast %union.tree_node* %472 to %struct.tree_type*
  %474 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %473, i32 0, i32 13
  %475 = load %union.tree_node*, %union.tree_node** %474, align 8
  store %union.tree_node* %475, %union.tree_node** %7, align 8
  %476 = load %union.tree_node*, %union.tree_node** %5, align 8
  %477 = bitcast %union.tree_node* %476 to %struct.tree_type*
  %478 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %477, i32 0, i32 12
  %479 = load %union.tree_node*, %union.tree_node** %478, align 8
  store %union.tree_node* %479, %union.tree_node** %8, align 8
  %480 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 16), align 16
  %481 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %482 = load %union.tree_node*, %union.tree_node** %8, align 8
  %483 = bitcast %union.tree_node* %482 to %struct.tree_common*
  %484 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %483, i32 0, i32 1
  %485 = load %union.tree_node*, %union.tree_node** %484, align 8
  %486 = load %union.tree_node*, %union.tree_node** %7, align 8
  %487 = load %union.tree_node*, %union.tree_node** %8, align 8
  %488 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 60, %union.tree_node* %485, %union.tree_node* %486, %union.tree_node* %487)
  %489 = call %union.tree_node* @fold(%union.tree_node* %488)
  %490 = call %union.tree_node* @convert(%union.tree_node* %481, %union.tree_node* %489)
  %491 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %480, %union.tree_node* %490)
  store %union.tree_node* %491, %union.tree_node** %9, align 8
  %492 = load %union.tree_node*, %union.tree_node** %6, align 8
  %493 = bitcast %union.tree_node* %492 to %struct.tree_type*
  %494 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %493, i32 0, i32 2
  %495 = load %union.tree_node*, %union.tree_node** %494, align 8
  store %union.tree_node* %495, %union.tree_node** %10, align 8
  %496 = load %union.tree_node*, %union.tree_node** %2, align 8
  %497 = bitcast %union.tree_node* %496 to %struct.tree_type*
  %498 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %497, i32 0, i32 6
  %499 = load i32, i32* %498, align 4
  %500 = lshr i32 %499, 20
  %501 = and i32 %500, 1
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %576

; <label>:503:                                    ; preds = %471
  %504 = load %union.tree_node*, %union.tree_node** %6, align 8
  %505 = bitcast %union.tree_node* %504 to %struct.tree_common*
  %506 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 8
  %508 = and i32 %507, 255
  %509 = icmp eq i32 %508, 6
  br i1 %509, label %531, label %510

; <label>:510:                                    ; preds = %503
  %511 = load %union.tree_node*, %union.tree_node** %6, align 8
  %512 = bitcast %union.tree_node* %511 to %struct.tree_common*
  %513 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %512, i32 0, i32 2
  %514 = load i32, i32* %513, align 8
  %515 = and i32 %514, 255
  %516 = icmp eq i32 %515, 10
  br i1 %516, label %531, label %517

; <label>:517:                                    ; preds = %510
  %518 = load %union.tree_node*, %union.tree_node** %6, align 8
  %519 = bitcast %union.tree_node* %518 to %struct.tree_common*
  %520 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %519, i32 0, i32 2
  %521 = load i32, i32* %520, align 8
  %522 = and i32 %521, 255
  %523 = icmp eq i32 %522, 11
  br i1 %523, label %531, label %524

; <label>:524:                                    ; preds = %517
  %525 = load %union.tree_node*, %union.tree_node** %6, align 8
  %526 = bitcast %union.tree_node* %525 to %struct.tree_common*
  %527 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 8
  %529 = and i32 %528, 255
  %530 = icmp eq i32 %529, 12
  br i1 %530, label %531, label %576

; <label>:531:                                    ; preds = %524, %517, %510, %503
  %532 = load %union.tree_node*, %union.tree_node** %6, align 8
  %533 = bitcast %union.tree_node* %532 to %struct.tree_type*
  %534 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %533, i32 0, i32 13
  %535 = load %union.tree_node*, %union.tree_node** %534, align 8
  %536 = call i32 @integer_zerop(%union.tree_node* %535)
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %545, label %538

; <label>:538:                                    ; preds = %531
  %539 = load %union.tree_node*, %union.tree_node** %6, align 8
  %540 = bitcast %union.tree_node* %539 to %struct.tree_type*
  %541 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %540, i32 0, i32 13
  %542 = load %union.tree_node*, %union.tree_node** %541, align 8
  %543 = call i32 @integer_onep(%union.tree_node* %542)
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %576

; <label>:545:                                    ; preds = %538, %531
  %546 = load %union.tree_node*, %union.tree_node** %6, align 8
  %547 = bitcast %union.tree_node* %546 to %struct.tree_type*
  %548 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %547, i32 0, i32 12
  %549 = load %union.tree_node*, %union.tree_node** %548, align 8
  %550 = call i32 @host_integerp(%union.tree_node* %549, i32 1)
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %576

; <label>:552:                                    ; preds = %545
  %553 = load %union.tree_node*, %union.tree_node** %6, align 8
  %554 = bitcast %union.tree_node* %553 to %struct.tree_type*
  %555 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %554, i32 0, i32 13
  %556 = load %union.tree_node*, %union.tree_node** %555, align 8
  %557 = call i64 @tree_low_cst(%union.tree_node* %556, i32 1)
  store i64 %557, i64* %11, align 8
  %558 = load %union.tree_node*, %union.tree_node** %6, align 8
  %559 = bitcast %union.tree_node* %558 to %struct.tree_type*
  %560 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %559, i32 0, i32 12
  %561 = load %union.tree_node*, %union.tree_node** %560, align 8
  %562 = call i64 @tree_low_cst(%union.tree_node* %561, i32 1)
  store i64 %562, i64* %12, align 8
  %563 = load i64, i64* %11, align 8
  %564 = load i64, i64* %12, align 8
  %565 = sub nsw i64 %563, %564
  %566 = icmp eq i64 %565, 1
  br i1 %566, label %567, label %575

; <label>:567:                                    ; preds = %552
  %568 = load i64, i64* %11, align 8
  %569 = icmp eq i64 %568, 1
  br i1 %569, label %573, label %570

; <label>:570:                                    ; preds = %567
  %571 = load i64, i64* %11, align 8
  %572 = icmp eq i64 %571, 0
  br i1 %572, label %573, label %575

; <label>:573:                                    ; preds = %570, %567
  %574 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 12), align 16
  store %union.tree_node* %574, %union.tree_node** %10, align 8
  br label %575

; <label>:575:                                    ; preds = %573, %570, %552
  br label %576

; <label>:576:                                    ; preds = %575, %545, %538, %524, %471
  %577 = load %union.tree_node*, %union.tree_node** %10, align 8
  %578 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  %579 = load %union.tree_node*, %union.tree_node** %9, align 8
  %580 = call %union.tree_node* @convert(%union.tree_node* %578, %union.tree_node* %579)
  %581 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %577, %union.tree_node* %580)
  %582 = load %union.tree_node*, %union.tree_node** %2, align 8
  %583 = bitcast %union.tree_node* %582 to %struct.tree_type*
  %584 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %583, i32 0, i32 2
  store %union.tree_node* %581, %union.tree_node** %584, align 8
  %585 = load %union.tree_node*, %union.tree_node** %6, align 8
  %586 = bitcast %union.tree_node* %585 to %struct.tree_type*
  %587 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %586, i32 0, i32 3
  %588 = load %union.tree_node*, %union.tree_node** %587, align 8
  %589 = icmp ne %union.tree_node* %588, null
  br i1 %589, label %590, label %604

; <label>:590:                                    ; preds = %576
  %591 = load %union.tree_node*, %union.tree_node** %10, align 8
  %592 = call i32 @integer_onep(%union.tree_node* %591)
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %604, label %594

; <label>:594:                                    ; preds = %590
  %595 = load %union.tree_node*, %union.tree_node** %6, align 8
  %596 = bitcast %union.tree_node* %595 to %struct.tree_type*
  %597 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %596, i32 0, i32 3
  %598 = load %union.tree_node*, %union.tree_node** %597, align 8
  %599 = load %union.tree_node*, %union.tree_node** %9, align 8
  %600 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %598, %union.tree_node* %599)
  %601 = load %union.tree_node*, %union.tree_node** %2, align 8
  %602 = bitcast %union.tree_node* %601 to %struct.tree_type*
  %603 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %602, i32 0, i32 3
  store %union.tree_node* %600, %union.tree_node** %603, align 8
  br label %604

; <label>:604:                                    ; preds = %594, %590, %576
  br label %605

; <label>:605:                                    ; preds = %604, %465, %459, %453, %440
  %606 = load %union.tree_node*, %union.tree_node** %6, align 8
  %607 = bitcast %union.tree_node* %606 to %struct.tree_type*
  %608 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %607, i32 0, i32 7
  %609 = load i32, i32* %608, align 8
  %610 = icmp ugt i32 %609, 8
  br i1 %610, label %611, label %616

; <label>:611:                                    ; preds = %605
  %612 = load %union.tree_node*, %union.tree_node** %6, align 8
  %613 = bitcast %union.tree_node* %612 to %struct.tree_type*
  %614 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %613, i32 0, i32 7
  %615 = load i32, i32* %614, align 8
  br label %617

; <label>:616:                                    ; preds = %605
  br label %617

; <label>:617:                                    ; preds = %616, %611
  %618 = phi i32 [ %615, %611 ], [ 8, %616 ]
  %619 = load %union.tree_node*, %union.tree_node** %2, align 8
  %620 = bitcast %union.tree_node* %619 to %struct.tree_type*
  %621 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %620, i32 0, i32 7
  store i32 %618, i32* %621, align 8
  %622 = load %union.tree_node*, %union.tree_node** %6, align 8
  %623 = bitcast %union.tree_node* %622 to %struct.tree_type*
  %624 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %623, i32 0, i32 6
  %625 = load i32, i32* %624, align 4
  %626 = lshr i32 %625, 31
  %627 = load %union.tree_node*, %union.tree_node** %2, align 8
  %628 = bitcast %union.tree_node* %627 to %struct.tree_type*
  %629 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %628, i32 0, i32 6
  %630 = load i32, i32* %629, align 4
  %631 = and i32 %626, 1
  %632 = shl i32 %631, 31
  %633 = and i32 %630, 2147483647
  %634 = or i32 %633, %632
  store i32 %634, i32* %629, align 4
  %635 = load %union.tree_node*, %union.tree_node** %2, align 8
  %636 = bitcast %union.tree_node* %635 to %struct.tree_type*
  %637 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %636, i32 0, i32 6
  %638 = load i32, i32* %637, align 4
  %639 = and i32 %638, -65025
  %640 = or i32 %639, 26112
  store i32 %640, i32* %637, align 4
  %641 = load %union.tree_node*, %union.tree_node** %2, align 8
  %642 = bitcast %union.tree_node* %641 to %struct.tree_type*
  %643 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %642, i32 0, i32 2
  %644 = load %union.tree_node*, %union.tree_node** %643, align 8
  %645 = icmp ne %union.tree_node* %644, null
  br i1 %645, label %646, label %764

; <label>:646:                                    ; preds = %617
  %647 = load %union.tree_node*, %union.tree_node** %2, align 8
  %648 = bitcast %union.tree_node* %647 to %struct.tree_common*
  %649 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %648, i32 0, i32 1
  %650 = load %union.tree_node*, %union.tree_node** %649, align 8
  %651 = bitcast %union.tree_node* %650 to %struct.tree_type*
  %652 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %651, i32 0, i32 6
  %653 = load i32, i32* %652, align 4
  %654 = lshr i32 %653, 9
  %655 = and i32 %654, 127
  %656 = icmp ne i32 %655, 51
  br i1 %656, label %668, label %657

; <label>:657:                                    ; preds = %646
  %658 = load %union.tree_node*, %union.tree_node** %2, align 8
  %659 = bitcast %union.tree_node* %658 to %struct.tree_common*
  %660 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %659, i32 0, i32 1
  %661 = load %union.tree_node*, %union.tree_node** %660, align 8
  %662 = bitcast %union.tree_node* %661 to %struct.tree_type*
  %663 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %662, i32 0, i32 6
  %664 = load i32, i32* %663, align 4
  %665 = lshr i32 %664, 17
  %666 = and i32 %665, 1
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %764

; <label>:668:                                    ; preds = %657, %646
  %669 = load %union.tree_node*, %union.tree_node** %2, align 8
  %670 = bitcast %union.tree_node* %669 to %struct.tree_type*
  %671 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %670, i32 0, i32 2
  %672 = load %union.tree_node*, %union.tree_node** %671, align 8
  %673 = load %union.tree_node*, %union.tree_node** %2, align 8
  %674 = bitcast %union.tree_node* %673 to %struct.tree_common*
  %675 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %674, i32 0, i32 1
  %676 = load %union.tree_node*, %union.tree_node** %675, align 8
  %677 = bitcast %union.tree_node* %676 to %struct.tree_type*
  %678 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %677, i32 0, i32 2
  %679 = load %union.tree_node*, %union.tree_node** %678, align 8
  %680 = call i32 @simple_cst_equal(%union.tree_node* %672, %union.tree_node* %679)
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %700

; <label>:682:                                    ; preds = %668
  %683 = load %union.tree_node*, %union.tree_node** %2, align 8
  %684 = bitcast %union.tree_node* %683 to %struct.tree_common*
  %685 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %684, i32 0, i32 1
  %686 = load %union.tree_node*, %union.tree_node** %685, align 8
  %687 = bitcast %union.tree_node* %686 to %struct.tree_type*
  %688 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %687, i32 0, i32 6
  %689 = load i32, i32* %688, align 4
  %690 = lshr i32 %689, 9
  %691 = and i32 %690, 127
  %692 = load %union.tree_node*, %union.tree_node** %2, align 8
  %693 = bitcast %union.tree_node* %692 to %struct.tree_type*
  %694 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %693, i32 0, i32 6
  %695 = load i32, i32* %694, align 4
  %696 = and i32 %691, 127
  %697 = shl i32 %696, 9
  %698 = and i32 %695, -65025
  %699 = or i32 %698, %697
  store i32 %699, i32* %694, align 4
  br label %714

; <label>:700:                                    ; preds = %668
  %701 = load %union.tree_node*, %union.tree_node** %2, align 8
  %702 = bitcast %union.tree_node* %701 to %struct.tree_type*
  %703 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %702, i32 0, i32 2
  %704 = load %union.tree_node*, %union.tree_node** %703, align 8
  %705 = call i32 @mode_for_size_tree(%union.tree_node* %704, i32 1, i32 1)
  %706 = load %union.tree_node*, %union.tree_node** %2, align 8
  %707 = bitcast %union.tree_node* %706 to %struct.tree_type*
  %708 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %707, i32 0, i32 6
  %709 = load i32, i32* %708, align 4
  %710 = and i32 %705, 127
  %711 = shl i32 %710, 9
  %712 = and i32 %709, -65025
  %713 = or i32 %712, %711
  store i32 %713, i32* %708, align 4
  br label %714

; <label>:714:                                    ; preds = %700, %682
  %715 = load %union.tree_node*, %union.tree_node** %2, align 8
  %716 = bitcast %union.tree_node* %715 to %struct.tree_type*
  %717 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %716, i32 0, i32 6
  %718 = load i32, i32* %717, align 4
  %719 = lshr i32 %718, 9
  %720 = and i32 %719, 127
  %721 = icmp ne i32 %720, 51
  br i1 %721, label %722, label %763

; <label>:722:                                    ; preds = %714
  br i1 false, label %723, label %763

; <label>:723:                                    ; preds = %722
  %724 = load %union.tree_node*, %union.tree_node** %2, align 8
  %725 = bitcast %union.tree_node* %724 to %struct.tree_type*
  %726 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %725, i32 0, i32 7
  %727 = load i32, i32* %726, align 8
  %728 = icmp ult i32 %727, 128
  br i1 %728, label %729, label %763

; <label>:729:                                    ; preds = %723
  %730 = load %union.tree_node*, %union.tree_node** %2, align 8
  %731 = bitcast %union.tree_node* %730 to %struct.tree_type*
  %732 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %731, i32 0, i32 7
  %733 = load i32, i32* %732, align 8
  %734 = load %union.tree_node*, %union.tree_node** %2, align 8
  %735 = bitcast %union.tree_node* %734 to %struct.tree_type*
  %736 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %735, i32 0, i32 6
  %737 = load i32, i32* %736, align 4
  %738 = lshr i32 %737, 9
  %739 = and i32 %738, 127
  %740 = call i32 @get_mode_alignment(i32 %739)
  %741 = icmp ult i32 %733, %740
  br i1 %741, label %742, label %763

; <label>:742:                                    ; preds = %729
  %743 = load %union.tree_node*, %union.tree_node** %2, align 8
  %744 = bitcast %union.tree_node* %743 to %struct.tree_type*
  %745 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %744, i32 0, i32 6
  %746 = load i32, i32* %745, align 4
  %747 = lshr i32 %746, 9
  %748 = and i32 %747, 127
  %749 = icmp ne i32 %748, 51
  br i1 %749, label %750, label %763

; <label>:750:                                    ; preds = %742
  %751 = load %union.tree_node*, %union.tree_node** %2, align 8
  %752 = bitcast %union.tree_node* %751 to %struct.tree_type*
  %753 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %752, i32 0, i32 6
  %754 = load i32, i32* %753, align 4
  %755 = and i32 %754, -131073
  %756 = or i32 %755, 131072
  store i32 %756, i32* %753, align 4
  %757 = load %union.tree_node*, %union.tree_node** %2, align 8
  %758 = bitcast %union.tree_node* %757 to %struct.tree_type*
  %759 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %758, i32 0, i32 6
  %760 = load i32, i32* %759, align 4
  %761 = and i32 %760, -65025
  %762 = or i32 %761, 26112
  store i32 %762, i32* %759, align 4
  br label %763

; <label>:763:                                    ; preds = %750, %742, %729, %723, %722, %714
  br label %764

; <label>:764:                                    ; preds = %763, %657, %617
  br label %964

; <label>:765:                                    ; preds = %28, %28, %28
  %766 = load %union.tree_node*, %union.tree_node** %2, align 8
  %767 = call %struct.record_layout_info_s* @start_record_layout(%union.tree_node* %766)
  store %struct.record_layout_info_s* %767, %struct.record_layout_info_s** %14, align 8
  %768 = load %union.tree_node*, %union.tree_node** %2, align 8
  %769 = bitcast %union.tree_node* %768 to %struct.tree_common*
  %770 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %769, i32 0, i32 2
  %771 = load i32, i32* %770, align 8
  %772 = and i32 %771, 255
  %773 = icmp eq i32 %772, 22
  br i1 %773, label %774, label %783

; <label>:774:                                    ; preds = %765
  %775 = load %union.tree_node*, %union.tree_node** %2, align 8
  %776 = bitcast %union.tree_node* %775 to %struct.tree_type*
  %777 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %776, i32 0, i32 1
  %778 = load %union.tree_node*, %union.tree_node** %777, align 8
  %779 = call %union.tree_node* @nreverse(%union.tree_node* %778)
  %780 = load %union.tree_node*, %union.tree_node** %2, align 8
  %781 = bitcast %union.tree_node* %780 to %struct.tree_type*
  %782 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %781, i32 0, i32 1
  store %union.tree_node* %779, %union.tree_node** %782, align 8
  br label %783

; <label>:783:                                    ; preds = %774, %765
  %784 = load %union.tree_node*, %union.tree_node** %2, align 8
  %785 = bitcast %union.tree_node* %784 to %struct.tree_type*
  %786 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %785, i32 0, i32 1
  %787 = load %union.tree_node*, %union.tree_node** %786, align 8
  store %union.tree_node* %787, %union.tree_node** %13, align 8
  br label %788

; <label>:788:                                    ; preds = %794, %783
  %789 = load %union.tree_node*, %union.tree_node** %13, align 8
  %790 = icmp ne %union.tree_node* %789, null
  br i1 %790, label %791, label %799

; <label>:791:                                    ; preds = %788
  %792 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %14, align 8
  %793 = load %union.tree_node*, %union.tree_node** %13, align 8
  call void @place_field(%struct.record_layout_info_s* %792, %union.tree_node* %793)
  br label %794

; <label>:794:                                    ; preds = %791
  %795 = load %union.tree_node*, %union.tree_node** %13, align 8
  %796 = bitcast %union.tree_node* %795 to %struct.tree_common*
  %797 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %796, i32 0, i32 0
  %798 = load %union.tree_node*, %union.tree_node** %797, align 8
  store %union.tree_node* %798, %union.tree_node** %13, align 8
  br label %788

; <label>:799:                                    ; preds = %788
  %800 = load %union.tree_node*, %union.tree_node** %2, align 8
  %801 = bitcast %union.tree_node* %800 to %struct.tree_common*
  %802 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %801, i32 0, i32 2
  %803 = load i32, i32* %802, align 8
  %804 = and i32 %803, 255
  %805 = icmp eq i32 %804, 22
  br i1 %805, label %806, label %815

; <label>:806:                                    ; preds = %799
  %807 = load %union.tree_node*, %union.tree_node** %2, align 8
  %808 = bitcast %union.tree_node* %807 to %struct.tree_type*
  %809 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %808, i32 0, i32 1
  %810 = load %union.tree_node*, %union.tree_node** %809, align 8
  %811 = call %union.tree_node* @nreverse(%union.tree_node* %810)
  %812 = load %union.tree_node*, %union.tree_node** %2, align 8
  %813 = bitcast %union.tree_node* %812 to %struct.tree_type*
  %814 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %813, i32 0, i32 1
  store %union.tree_node* %811, %union.tree_node** %814, align 8
  br label %815

; <label>:815:                                    ; preds = %806, %799
  %816 = load void (%struct.record_layout_info_s*)*, void (%struct.record_layout_info_s*)** @lang_adjust_rli, align 8
  %817 = icmp ne void (%struct.record_layout_info_s*)* %816, null
  br i1 %817, label %818, label %821

; <label>:818:                                    ; preds = %815
  %819 = load void (%struct.record_layout_info_s*)*, void (%struct.record_layout_info_s*)** @lang_adjust_rli, align 8
  %820 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %14, align 8
  call void %819(%struct.record_layout_info_s* %820)
  br label %821

; <label>:821:                                    ; preds = %818, %815
  %822 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %14, align 8
  call void @finish_record_layout(%struct.record_layout_info_s* %822)
  br label %964

; <label>:823:                                    ; preds = %28
  %824 = load %union.tree_node*, %union.tree_node** %2, align 8
  %825 = bitcast %union.tree_node* %824 to %struct.tree_type*
  %826 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %825, i32 0, i32 1
  %827 = load %union.tree_node*, %union.tree_node** %826, align 8
  %828 = bitcast %union.tree_node* %827 to %struct.tree_type*
  %829 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %828, i32 0, i32 13
  %830 = load %union.tree_node*, %union.tree_node** %829, align 8
  %831 = bitcast %union.tree_node* %830 to %struct.tree_common*
  %832 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %831, i32 0, i32 2
  %833 = load i32, i32* %832, align 8
  %834 = and i32 %833, 255
  %835 = icmp ne i32 %834, 25
  br i1 %835, label %849, label %836

; <label>:836:                                    ; preds = %823
  %837 = load %union.tree_node*, %union.tree_node** %2, align 8
  %838 = bitcast %union.tree_node* %837 to %struct.tree_type*
  %839 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %838, i32 0, i32 1
  %840 = load %union.tree_node*, %union.tree_node** %839, align 8
  %841 = bitcast %union.tree_node* %840 to %struct.tree_type*
  %842 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %841, i32 0, i32 12
  %843 = load %union.tree_node*, %union.tree_node** %842, align 8
  %844 = bitcast %union.tree_node* %843 to %struct.tree_common*
  %845 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %844, i32 0, i32 2
  %846 = load i32, i32* %845, align 8
  %847 = and i32 %846, 255
  %848 = icmp ne i32 %847, 25
  br i1 %848, label %849, label %850

; <label>:849:                                    ; preds = %836, %823
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1666, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.layout_type, i32 0, i32 0)) #4
  unreachable

; <label>:850:                                    ; preds = %836
  %851 = load i32, i32* @set_alignment, align 4
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %853, label %855

; <label>:853:                                    ; preds = %850
  %854 = load i32, i32* @set_alignment, align 4
  br label %860

; <label>:855:                                    ; preds = %850
  %856 = load i32, i32* @target_flags, align 4
  %857 = and i32 %856, 33554432
  %858 = icmp ne i32 %857, 0
  %859 = select i1 %858, i32 64, i32 32
  br label %860

; <label>:860:                                    ; preds = %855, %853
  %861 = phi i32 [ %854, %853 ], [ %859, %855 ]
  store i32 %861, i32* %15, align 4
  %862 = load %union.tree_node*, %union.tree_node** %2, align 8
  %863 = bitcast %union.tree_node* %862 to %struct.tree_type*
  %864 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %863, i32 0, i32 1
  %865 = load %union.tree_node*, %union.tree_node** %864, align 8
  %866 = bitcast %union.tree_node* %865 to %struct.tree_type*
  %867 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %866, i32 0, i32 13
  %868 = load %union.tree_node*, %union.tree_node** %867, align 8
  %869 = bitcast %union.tree_node* %868 to %struct.tree_int_cst*
  %870 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %869, i32 0, i32 2
  %871 = getelementptr inbounds %struct.anon, %struct.anon* %870, i32 0, i32 0
  %872 = load i64, i64* %871, align 8
  %873 = load %union.tree_node*, %union.tree_node** %2, align 8
  %874 = bitcast %union.tree_node* %873 to %struct.tree_type*
  %875 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %874, i32 0, i32 1
  %876 = load %union.tree_node*, %union.tree_node** %875, align 8
  %877 = bitcast %union.tree_node* %876 to %struct.tree_type*
  %878 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %877, i32 0, i32 12
  %879 = load %union.tree_node*, %union.tree_node** %878, align 8
  %880 = bitcast %union.tree_node* %879 to %struct.tree_int_cst*
  %881 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %880, i32 0, i32 2
  %882 = getelementptr inbounds %struct.anon, %struct.anon* %881, i32 0, i32 0
  %883 = load i64, i64* %882, align 8
  %884 = sub i64 %872, %883
  %885 = add i64 %884, 1
  %886 = trunc i64 %885 to i32
  store i32 %886, i32* %16, align 4
  %887 = load i32, i32* %16, align 4
  %888 = load i32, i32* %15, align 4
  %889 = add i32 %887, %888
  %890 = sub i32 %889, 1
  %891 = load i32, i32* %15, align 4
  %892 = udiv i32 %890, %891
  %893 = load i32, i32* %15, align 4
  %894 = mul i32 %892, %893
  store i32 %894, i32* %17, align 4
  %895 = load i32, i32* %17, align 4
  %896 = load i32, i32* %15, align 4
  %897 = icmp sgt i32 %895, %896
  br i1 %897, label %898, label %905

; <label>:898:                                    ; preds = %860
  %899 = load %union.tree_node*, %union.tree_node** %2, align 8
  %900 = bitcast %union.tree_node* %899 to %struct.tree_type*
  %901 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %900, i32 0, i32 6
  %902 = load i32, i32* %901, align 4
  %903 = and i32 %902, -65025
  %904 = or i32 %903, 26112
  store i32 %904, i32* %901, align 4
  br label %916

; <label>:905:                                    ; preds = %860
  %906 = load i32, i32* %15, align 4
  %907 = call i32 @mode_for_size(i32 %906, i32 1, i32 1)
  %908 = load %union.tree_node*, %union.tree_node** %2, align 8
  %909 = bitcast %union.tree_node* %908 to %struct.tree_type*
  %910 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %909, i32 0, i32 6
  %911 = load i32, i32* %910, align 4
  %912 = and i32 %907, 127
  %913 = shl i32 %912, 9
  %914 = and i32 %911, -65025
  %915 = or i32 %914, %913
  store i32 %915, i32* %910, align 4
  br label %916

; <label>:916:                                    ; preds = %905, %898
  %917 = load i32, i32* %17, align 4
  %918 = sext i32 %917 to i64
  %919 = call %union.tree_node* @size_int_wide(i64 %918, i32 3)
  %920 = load %union.tree_node*, %union.tree_node** %2, align 8
  %921 = bitcast %union.tree_node* %920 to %struct.tree_type*
  %922 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %921, i32 0, i32 2
  store %union.tree_node* %919, %union.tree_node** %922, align 8
  %923 = load i32, i32* %17, align 4
  %924 = sdiv i32 %923, 8
  %925 = sext i32 %924 to i64
  %926 = call %union.tree_node* @size_int_wide(i64 %925, i32 0)
  %927 = load %union.tree_node*, %union.tree_node** %2, align 8
  %928 = bitcast %union.tree_node* %927 to %struct.tree_type*
  %929 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %928, i32 0, i32 3
  store %union.tree_node* %926, %union.tree_node** %929, align 8
  %930 = load i32, i32* %15, align 4
  %931 = load %union.tree_node*, %union.tree_node** %2, align 8
  %932 = bitcast %union.tree_node* %931 to %struct.tree_type*
  %933 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %932, i32 0, i32 7
  store i32 %930, i32* %933, align 8
  %934 = load %union.tree_node*, %union.tree_node** %2, align 8
  %935 = bitcast %union.tree_node* %934 to %struct.tree_type*
  %936 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %935, i32 0, i32 6
  %937 = load i32, i32* %936, align 4
  %938 = and i32 %937, 2147483647
  store i32 %938, i32* %936, align 4
  %939 = load i32, i32* %16, align 4
  %940 = load %union.tree_node*, %union.tree_node** %2, align 8
  %941 = bitcast %union.tree_node* %940 to %struct.tree_type*
  %942 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %941, i32 0, i32 6
  %943 = load i32, i32* %942, align 4
  %944 = and i32 %939, 511
  %945 = and i32 %943, -512
  %946 = or i32 %945, %944
  store i32 %946, i32* %942, align 4
  br label %947

; <label>:947:                                    ; preds = %916
  br label %964

; <label>:948:                                    ; preds = %28
  %949 = load %union.tree_node*, %union.tree_node** %2, align 8
  %950 = bitcast %union.tree_node* %949 to %struct.tree_type*
  %951 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %950, i32 0, i32 7
  store i32 128, i32* %951, align 8
  %952 = load %union.tree_node*, %union.tree_node** %2, align 8
  %953 = bitcast %union.tree_node* %952 to %struct.tree_type*
  %954 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %953, i32 0, i32 6
  %955 = load i32, i32* %954, align 4
  %956 = and i32 %955, 2147483647
  store i32 %956, i32* %954, align 4
  %957 = load %union.tree_node*, %union.tree_node** %2, align 8
  %958 = bitcast %union.tree_node* %957 to %struct.tree_type*
  %959 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %958, i32 0, i32 6
  %960 = load i32, i32* %959, align 4
  %961 = and i32 %960, -65025
  %962 = or i32 %961, 26112
  store i32 %962, i32* %959, align 4
  br label %964

; <label>:963:                                    ; preds = %28
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1702, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.layout_type, i32 0, i32 0)) #4
  unreachable

; <label>:964:                                    ; preds = %948, %947, %821, %764, %403, %328, %295, %281, %234, %160, %117, %74
  %965 = load %union.tree_node*, %union.tree_node** %2, align 8
  %966 = bitcast %union.tree_node* %965 to %struct.tree_common*
  %967 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %966, i32 0, i32 2
  %968 = load i32, i32* %967, align 8
  %969 = and i32 %968, 255
  %970 = icmp ne i32 %969, 20
  br i1 %970, label %971, label %987

; <label>:971:                                    ; preds = %964
  %972 = load %union.tree_node*, %union.tree_node** %2, align 8
  %973 = bitcast %union.tree_node* %972 to %struct.tree_common*
  %974 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %973, i32 0, i32 2
  %975 = load i32, i32* %974, align 8
  %976 = and i32 %975, 255
  %977 = icmp ne i32 %976, 21
  br i1 %977, label %978, label %987

; <label>:978:                                    ; preds = %971
  %979 = load %union.tree_node*, %union.tree_node** %2, align 8
  %980 = bitcast %union.tree_node* %979 to %struct.tree_common*
  %981 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %980, i32 0, i32 2
  %982 = load i32, i32* %981, align 8
  %983 = and i32 %982, 255
  %984 = icmp ne i32 %983, 22
  br i1 %984, label %985, label %987

; <label>:985:                                    ; preds = %978
  %986 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @finalize_type_size(%union.tree_node* %986)
  br label %987

; <label>:987:                                    ; preds = %985, %978, %971, %964
  %988 = load i32, i32* @sizetype_set, align 4
  %989 = icmp ne i32 %988, 0
  br i1 %989, label %994, label %990

; <label>:990:                                    ; preds = %987
  %991 = load %union.tree_node*, %union.tree_node** %2, align 8
  %992 = load %union.tree_node*, %union.tree_node** @early_type_list, align 8
  %993 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %991, %union.tree_node* %992)
  store %union.tree_node* %993, %union.tree_node** @early_type_list, align 8
  br label %994

; <label>:994:                                    ; preds = %990, %987
  %995 = load %union.tree_node*, %union.tree_node** %2, align 8
  %996 = bitcast %union.tree_node* %995 to %struct.tree_common*
  %997 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %996, i32 0, i32 2
  %998 = load i32, i32* %997, align 8
  %999 = and i32 %998, 255
  %1000 = icmp eq i32 %999, 18
  br i1 %1000, label %1029, label %1001

; <label>:1001:                                   ; preds = %994
  %1002 = load %union.tree_node*, %union.tree_node** %2, align 8
  %1003 = bitcast %union.tree_node* %1002 to %struct.tree_common*
  %1004 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1003, i32 0, i32 2
  %1005 = load i32, i32* %1004, align 8
  %1006 = and i32 %1005, 255
  %1007 = icmp eq i32 %1006, 20
  br i1 %1007, label %1029, label %1008

; <label>:1008:                                   ; preds = %1001
  %1009 = load %union.tree_node*, %union.tree_node** %2, align 8
  %1010 = bitcast %union.tree_node* %1009 to %struct.tree_common*
  %1011 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1010, i32 0, i32 2
  %1012 = load i32, i32* %1011, align 8
  %1013 = and i32 %1012, 255
  %1014 = icmp eq i32 %1013, 21
  br i1 %1014, label %1029, label %1015

; <label>:1015:                                   ; preds = %1008
  %1016 = load %union.tree_node*, %union.tree_node** %2, align 8
  %1017 = bitcast %union.tree_node* %1016 to %struct.tree_common*
  %1018 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1017, i32 0, i32 2
  %1019 = load i32, i32* %1018, align 8
  %1020 = and i32 %1019, 255
  %1021 = icmp eq i32 %1020, 22
  br i1 %1021, label %1029, label %1022

; <label>:1022:                                   ; preds = %1015
  %1023 = load %union.tree_node*, %union.tree_node** %2, align 8
  %1024 = bitcast %union.tree_node* %1023 to %struct.tree_common*
  %1025 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1024, i32 0, i32 2
  %1026 = load i32, i32* %1025, align 8
  %1027 = and i32 %1026, 255
  %1028 = icmp eq i32 %1027, 19
  br i1 %1028, label %1029, label %1039

; <label>:1029:                                   ; preds = %1022, %1015, %1008, %1001, %994
  %1030 = load %union.tree_node*, %union.tree_node** %2, align 8
  %1031 = bitcast %union.tree_node* %1030 to %struct.tree_type*
  %1032 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1031, i32 0, i32 18
  %1033 = load i64, i64* %1032, align 8
  %1034 = icmp ne i64 %1033, -1
  br i1 %1034, label %1035, label %1039

; <label>:1035:                                   ; preds = %1029
  %1036 = load %union.tree_node*, %union.tree_node** %2, align 8
  %1037 = bitcast %union.tree_node* %1036 to %struct.tree_type*
  %1038 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1037, i32 0, i32 18
  store i64 0, i64* %1038, align 8
  br label %1039

; <label>:1039:                                   ; preds = %1035, %1029, %1022, %27
  ret void
}

declare i32 @tree_int_cst_sgn(%union.tree_node*) #1

declare %union.tree_node* @build_pointer_type(%union.tree_node*) #1

declare %union.tree_node* @fold(%union.tree_node*) #1

declare %union.tree_node* @build(i32, %union.tree_node*, ...) #1

declare i32 @integer_onep(%union.tree_node*) #1

declare %union.tree_node* @nreverse(%union.tree_node*) #1

; Function Attrs: noinline nounwind uwtable
define %union.tree_node* @make_signed_type(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.tree_node*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %union.tree_node* @make_node(i32 6)
  store %union.tree_node* %4, %union.tree_node** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load %union.tree_node*, %union.tree_node** %3, align 8
  %7 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %8 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %5, 511
  %11 = and i32 %9, -512
  %12 = or i32 %11, %10
  store i32 %12, i32* %8, align 4
  %13 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @fixup_signed_type(%union.tree_node* %13)
  %14 = load %union.tree_node*, %union.tree_node** %3, align 8
  ret %union.tree_node* %14
}

declare %union.tree_node* @make_node(i32) #1

; Function Attrs: noinline nounwind uwtable
define void @fixup_signed_type(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca i32, align 4
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %4 = load %union.tree_node*, %union.tree_node** %2, align 8
  %5 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %6 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 511
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 128
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store i32 128, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %11, %1
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 64
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %12
  br label %22

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = shl i64 -1, %20
  br label %22

; <label>:22:                                     ; preds = %17, %16
  %23 = phi i64 [ 0, %16 ], [ %21, %17 ]
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %24, 64
  %26 = sub nsw i32 %25, 1
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 64
  %31 = sub nsw i32 %30, 1
  br label %33

; <label>:32:                                     ; preds = %22
  br label %33

; <label>:33:                                     ; preds = %32, %28
  %34 = phi i32 [ %31, %28 ], [ 0, %32 ]
  %35 = zext i32 %34 to i64
  %36 = shl i64 -1, %35
  %37 = call %union.tree_node* @build_int_2_wide(i64 %23, i64 %36)
  %38 = load %union.tree_node*, %union.tree_node** %2, align 8
  %39 = bitcast %union.tree_node* %38 to %struct.tree_type*
  %40 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %39, i32 0, i32 12
  store %union.tree_node* %37, %union.tree_node** %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %41, 64
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %33
  br label %51

; <label>:45:                                     ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = sub nsw i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = shl i64 1, %48
  %50 = sub nsw i64 %49, 1
  br label %51

; <label>:51:                                     ; preds = %45, %44
  %52 = phi i64 [ -1, %44 ], [ %50, %45 ]
  %53 = load i32, i32* %3, align 4
  %54 = sub nsw i32 %53, 64
  %55 = sub nsw i32 %54, 1
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %64

; <label>:57:                                     ; preds = %51
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %58, 64
  %60 = sub nsw i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = shl i64 1, %61
  %63 = sub nsw i64 %62, 1
  br label %65

; <label>:64:                                     ; preds = %51
  br label %65

; <label>:65:                                     ; preds = %64, %57
  %66 = phi i64 [ %63, %57 ], [ 0, %64 ]
  %67 = call %union.tree_node* @build_int_2_wide(i64 %52, i64 %66)
  %68 = load %union.tree_node*, %union.tree_node** %2, align 8
  %69 = bitcast %union.tree_node* %68 to %struct.tree_type*
  %70 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %69, i32 0, i32 13
  store %union.tree_node* %67, %union.tree_node** %70, align 8
  %71 = load %union.tree_node*, %union.tree_node** %2, align 8
  %72 = load %union.tree_node*, %union.tree_node** %2, align 8
  %73 = bitcast %union.tree_node* %72 to %struct.tree_type*
  %74 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %73, i32 0, i32 12
  %75 = load %union.tree_node*, %union.tree_node** %74, align 8
  %76 = bitcast %union.tree_node* %75 to %struct.tree_common*
  %77 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %76, i32 0, i32 1
  store %union.tree_node* %71, %union.tree_node** %77, align 8
  %78 = load %union.tree_node*, %union.tree_node** %2, align 8
  %79 = load %union.tree_node*, %union.tree_node** %2, align 8
  %80 = bitcast %union.tree_node* %79 to %struct.tree_type*
  %81 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %80, i32 0, i32 13
  %82 = load %union.tree_node*, %union.tree_node** %81, align 8
  %83 = bitcast %union.tree_node* %82 to %struct.tree_common*
  %84 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %83, i32 0, i32 1
  store %union.tree_node* %78, %union.tree_node** %84, align 8
  %85 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @layout_type(%union.tree_node* %85)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %union.tree_node* @make_unsigned_type(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.tree_node*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %union.tree_node* @make_node(i32 6)
  store %union.tree_node* %4, %union.tree_node** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load %union.tree_node*, %union.tree_node** %3, align 8
  %7 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %8 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %5, 511
  %11 = and i32 %9, -512
  %12 = or i32 %11, %10
  store i32 %12, i32* %8, align 4
  %13 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @fixup_unsigned_type(%union.tree_node* %13)
  %14 = load %union.tree_node*, %union.tree_node** %3, align 8
  ret %union.tree_node* %14
}

; Function Attrs: noinline nounwind uwtable
define void @fixup_unsigned_type(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca i32, align 4
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %4 = load %union.tree_node*, %union.tree_node** %2, align 8
  %5 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %6 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 511
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 128
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store i32 128, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %11, %1
  %13 = call %union.tree_node* @build_int_2_wide(i64 0, i64 0)
  %14 = load %union.tree_node*, %union.tree_node** %2, align 8
  %15 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %16 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %15, i32 0, i32 12
  store %union.tree_node* %13, %union.tree_node** %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 64
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %12
  br label %26

; <label>:21:                                     ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 1, %23
  %25 = sub nsw i64 %24, 1
  br label %26

; <label>:26:                                     ; preds = %21, %20
  %27 = phi i64 [ -1, %20 ], [ %25, %21 ]
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %28, 64
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %37

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 64
  %34 = sub nsw i32 64, %33
  %35 = zext i32 %34 to i64
  %36 = lshr i64 -1, %35
  br label %38

; <label>:37:                                     ; preds = %26
  br label %38

; <label>:38:                                     ; preds = %37, %31
  %39 = phi i64 [ %36, %31 ], [ 0, %37 ]
  %40 = call %union.tree_node* @build_int_2_wide(i64 %27, i64 %39)
  %41 = load %union.tree_node*, %union.tree_node** %2, align 8
  %42 = bitcast %union.tree_node* %41 to %struct.tree_type*
  %43 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %42, i32 0, i32 13
  store %union.tree_node* %40, %union.tree_node** %43, align 8
  %44 = load %union.tree_node*, %union.tree_node** %2, align 8
  %45 = load %union.tree_node*, %union.tree_node** %2, align 8
  %46 = bitcast %union.tree_node* %45 to %struct.tree_type*
  %47 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %46, i32 0, i32 12
  %48 = load %union.tree_node*, %union.tree_node** %47, align 8
  %49 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %50 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %49, i32 0, i32 1
  store %union.tree_node* %44, %union.tree_node** %50, align 8
  %51 = load %union.tree_node*, %union.tree_node** %2, align 8
  %52 = load %union.tree_node*, %union.tree_node** %2, align 8
  %53 = bitcast %union.tree_node* %52 to %struct.tree_type*
  %54 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %53, i32 0, i32 13
  %55 = load %union.tree_node*, %union.tree_node** %54, align 8
  %56 = bitcast %union.tree_node* %55 to %struct.tree_common*
  %57 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %56, i32 0, i32 1
  store %union.tree_node* %51, %union.tree_node** %57, align 8
  %58 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @layout_type(%union.tree_node* %58)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @initialize_sizetypes() #0 {
  %1 = alloca %union.tree_node*, align 8
  %2 = call %union.tree_node* @make_node(i32 6)
  store %union.tree_node* %2, %union.tree_node** %1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %1, align 8
  store %union.tree_node* %3, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  %4 = load %union.tree_node*, %union.tree_node** %1, align 8
  %5 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %6 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, -65025
  %9 = or i32 %8, 2048
  store i32 %9, i32* %6, align 4
  %10 = call i32 @get_mode_alignment(i32 4)
  %11 = load %union.tree_node*, %union.tree_node** %1, align 8
  %12 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %13 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %12, i32 0, i32 7
  store i32 %10, i32* %13, align 8
  %14 = load %union.tree_node*, %union.tree_node** %1, align 8
  %15 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %16 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 2147483647
  store i32 %18, i32* %16, align 4
  %19 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 4), align 8
  %20 = zext i16 %19 to i64
  %21 = call %union.tree_node* @build_int_2_wide(i64 %20, i64 0)
  %22 = load %union.tree_node*, %union.tree_node** %1, align 8
  %23 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %24 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %23, i32 0, i32 2
  store %union.tree_node* %21, %union.tree_node** %24, align 8
  %25 = load i8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @mode_size, i64 0, i64 4), align 4
  %26 = zext i8 %25 to i64
  %27 = call %union.tree_node* @build_int_2_wide(i64 %26, i64 0)
  %28 = load %union.tree_node*, %union.tree_node** %1, align 8
  %29 = bitcast %union.tree_node* %28 to %struct.tree_type*
  %30 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %29, i32 0, i32 3
  store %union.tree_node* %27, %union.tree_node** %30, align 8
  %31 = load %union.tree_node*, %union.tree_node** %1, align 8
  %32 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, -8193
  %36 = or i32 %35, 8192
  store i32 %36, i32* %33, align 8
  %37 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 4), align 8
  %38 = zext i16 %37 to i32
  %39 = load %union.tree_node*, %union.tree_node** %1, align 8
  %40 = bitcast %union.tree_node* %39 to %struct.tree_type*
  %41 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %38, 511
  %44 = and i32 %42, -512
  %45 = or i32 %44, %43
  store i32 %45, i32* %41, align 4
  %46 = call %union.tree_node* @build_int_2_wide(i64 0, i64 0)
  %47 = load %union.tree_node*, %union.tree_node** %1, align 8
  %48 = bitcast %union.tree_node* %47 to %struct.tree_type*
  %49 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %48, i32 0, i32 12
  store %union.tree_node* %46, %union.tree_node** %49, align 8
  %50 = load %union.tree_node*, %union.tree_node** %1, align 8
  %51 = bitcast %union.tree_node* %50 to %struct.tree_type*
  %52 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, -131073
  %55 = or i32 %54, 131072
  store i32 %55, i32* %52, align 4
  %56 = call %union.tree_node* @build_int_2_wide(i64 1000, i64 0)
  %57 = load %union.tree_node*, %union.tree_node** %1, align 8
  %58 = bitcast %union.tree_node* %57 to %struct.tree_type*
  %59 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %58, i32 0, i32 13
  store %union.tree_node* %56, %union.tree_node** %59, align 8
  %60 = load %union.tree_node*, %union.tree_node** %1, align 8
  store %union.tree_node* %60, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %61 = load %union.tree_node*, %union.tree_node** %1, align 8
  %62 = call %union.tree_node* @copy_node(%union.tree_node* %61)
  store %union.tree_node* %62, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  store %union.tree_node* null, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  ret void
}

declare %union.tree_node* @build_int_2_wide(i64, i64) #1

declare %union.tree_node* @copy_node(%union.tree_node*) #1

; Function Attrs: noinline nounwind uwtable
define void @set_sizetype(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %7 = load %union.tree_node*, %union.tree_node** %2, align 8
  %8 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %9 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 511
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 3
  %14 = add nsw i32 %13, 1
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 3
  %19 = add nsw i32 %18, 1
  br label %21

; <label>:20:                                     ; preds = %1
  br label %21

; <label>:21:                                     ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 128, %20 ]
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @sizetype_set, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %21
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1806, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.set_sizetype, i32 0, i32 0)) #4
  unreachable

; <label>:26:                                     ; preds = %21
  %27 = load %union.tree_node*, %union.tree_node** %2, align 8
  %28 = call %union.tree_node* @copy_node(%union.tree_node* %27)
  store %union.tree_node* %28, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %29 = load %union.tree_node*, %union.tree_node** %2, align 8
  %30 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %31 = bitcast %union.tree_node* %30 to %struct.tree_type*
  %32 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %31, i32 0, i32 1
  store %union.tree_node* %29, %union.tree_node** %32, align 8
  %33 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %34 = bitcast %union.tree_node* %33 to %struct.tree_type*
  %35 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -131073
  %38 = or i32 %37, 131072
  store i32 %38, i32* %35, align 4
  %39 = call %union.tree_node* @make_node(i32 6)
  store %union.tree_node* %39, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  %40 = load %union.tree_node*, %union.tree_node** %2, align 8
  %41 = bitcast %union.tree_node* %40 to %struct.tree_type*
  %42 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %41, i32 0, i32 11
  %43 = load %union.tree_node*, %union.tree_node** %42, align 8
  %44 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  %45 = bitcast %union.tree_node* %44 to %struct.tree_type*
  %46 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %45, i32 0, i32 11
  store %union.tree_node* %43, %union.tree_node** %46, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  %49 = bitcast %union.tree_node* %48 to %struct.tree_type*
  %50 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %47, 511
  %53 = and i32 %51, -512
  %54 = or i32 %53, %52
  store i32 %54, i32* %50, align 4
  %55 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  %56 = bitcast %union.tree_node* %55 to %struct.tree_type*
  %57 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -131073
  %60 = or i32 %59, 131072
  store i32 %60, i32* %57, align 4
  %61 = load %union.tree_node*, %union.tree_node** %2, align 8
  %62 = bitcast %union.tree_node* %61 to %struct.tree_common*
  %63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = lshr i32 %64, 13
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

; <label>:68:                                     ; preds = %26
  %69 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  call void @fixup_unsigned_type(%union.tree_node* %69)
  br label %72

; <label>:70:                                     ; preds = %26
  %71 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  call void @fixup_signed_type(%union.tree_node* %71)
  br label %72

; <label>:72:                                     ; preds = %70, %68
  %73 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  call void @layout_type(%union.tree_node* %73)
  %74 = load %union.tree_node*, %union.tree_node** %2, align 8
  %75 = bitcast %union.tree_node* %74 to %struct.tree_common*
  %76 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = lshr i32 %77, 13
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

; <label>:81:                                     ; preds = %72
  %82 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  store %union.tree_node* %82, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 2), align 16
  %83 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  store %union.tree_node* %83, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 5), align 8
  %84 = load i32, i32* %3, align 4
  %85 = call %union.tree_node* @make_signed_type(i32 %84)
  %86 = call %union.tree_node* @copy_node(%union.tree_node* %85)
  store %union.tree_node* %86, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %87 = load i32, i32* %4, align 4
  %88 = call %union.tree_node* @make_signed_type(i32 %87)
  %89 = call %union.tree_node* @copy_node(%union.tree_node* %88)
  store %union.tree_node* %89, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 4), align 16
  br label %99

; <label>:90:                                     ; preds = %72
  %91 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  store %union.tree_node* %91, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %92 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  store %union.tree_node* %92, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 4), align 16
  %93 = load i32, i32* %3, align 4
  %94 = call %union.tree_node* @make_unsigned_type(i32 %93)
  %95 = call %union.tree_node* @copy_node(%union.tree_node* %94)
  store %union.tree_node* %95, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 2), align 16
  %96 = load i32, i32* %4, align 4
  %97 = call %union.tree_node* @make_unsigned_type(i32 %96)
  %98 = call %union.tree_node* @copy_node(%union.tree_node* %97)
  store %union.tree_node* %98, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 5), align 8
  br label %99

; <label>:99:                                     ; preds = %90, %81
  %100 = call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  %101 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  %102 = bitcast %union.tree_node* %101 to %struct.tree_type*
  %103 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %102, i32 0, i32 11
  store %union.tree_node* %100, %union.tree_node** %103, align 8
  store i32 0, i32* %5, align 4
  br label %104

; <label>:104:                                    ; preds = %146, %99
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = icmp ult i64 %106, 6
  br i1 %107, label %108, label %149

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* %5, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 %110
  %112 = load %union.tree_node*, %union.tree_node** %111, align 8
  %113 = bitcast %union.tree_node* %112 to %struct.tree_type*
  %114 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, -131073
  %117 = or i32 %116, 131072
  store i32 %117, i32* %114, align 4
  %118 = load i32, i32* %5, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 %119
  %121 = load %union.tree_node*, %union.tree_node** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 %123
  %125 = load %union.tree_node*, %union.tree_node** %124, align 8
  %126 = bitcast %union.tree_node* %125 to %struct.tree_type*
  %127 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %126, i32 0, i32 15
  store %union.tree_node* %121, %union.tree_node** %127, align 8
  %128 = load i32, i32* %5, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 %129
  %131 = load %union.tree_node*, %union.tree_node** %130, align 8
  %132 = bitcast %union.tree_node* %131 to %struct.tree_type*
  %133 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %132, i32 0, i32 14
  store %union.tree_node* null, %union.tree_node** %133, align 8
  %134 = load i32, i32* %5, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 %135
  %137 = load %union.tree_node*, %union.tree_node** %136, align 8
  %138 = bitcast %union.tree_node* %137 to %struct.tree_type*
  %139 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %138, i32 0, i32 8
  store %union.tree_node* null, %union.tree_node** %139, align 8
  %140 = load i32, i32* %5, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 %141
  %143 = load %union.tree_node*, %union.tree_node** %142, align 8
  %144 = bitcast %union.tree_node* %143 to %struct.tree_type*
  %145 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %144, i32 0, i32 9
  store %union.tree_node* null, %union.tree_node** %145, align 8
  br label %146

; <label>:146:                                    ; preds = %108
  %147 = load i32, i32* %5, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %104

; <label>:149:                                    ; preds = %104
  call void @ggc_add_tree_root(%union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i32 0), i32 6)
  %150 = load %union.tree_node*, %union.tree_node** @early_type_list, align 8
  store %union.tree_node* %150, %union.tree_node** %6, align 8
  br label %151

; <label>:151:                                    ; preds = %186, %149
  %152 = load %union.tree_node*, %union.tree_node** %6, align 8
  %153 = icmp ne %union.tree_node* %152, null
  br i1 %153, label %154, label %191

; <label>:154:                                    ; preds = %151
  %155 = load %union.tree_node*, %union.tree_node** %6, align 8
  %156 = bitcast %union.tree_node* %155 to %struct.tree_list*
  %157 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %156, i32 0, i32 2
  %158 = load %union.tree_node*, %union.tree_node** %157, align 8
  %159 = bitcast %union.tree_node* %158 to %struct.tree_common*
  %160 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, 255
  %163 = icmp ne i32 %162, 6
  br i1 %163, label %164, label %165

; <label>:164:                                    ; preds = %154
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1859, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.set_sizetype, i32 0, i32 0)) #4
  unreachable

; <label>:165:                                    ; preds = %154
  %166 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 3), align 8
  %167 = load %union.tree_node*, %union.tree_node** %6, align 8
  %168 = bitcast %union.tree_node* %167 to %struct.tree_list*
  %169 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %168, i32 0, i32 2
  %170 = load %union.tree_node*, %union.tree_node** %169, align 8
  %171 = bitcast %union.tree_node* %170 to %struct.tree_type*
  %172 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %171, i32 0, i32 2
  %173 = load %union.tree_node*, %union.tree_node** %172, align 8
  %174 = bitcast %union.tree_node* %173 to %struct.tree_common*
  %175 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %174, i32 0, i32 1
  store %union.tree_node* %166, %union.tree_node** %175, align 8
  %176 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 0), align 16
  %177 = load %union.tree_node*, %union.tree_node** %6, align 8
  %178 = bitcast %union.tree_node* %177 to %struct.tree_list*
  %179 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %178, i32 0, i32 2
  %180 = load %union.tree_node*, %union.tree_node** %179, align 8
  %181 = bitcast %union.tree_node* %180 to %struct.tree_type*
  %182 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %181, i32 0, i32 3
  %183 = load %union.tree_node*, %union.tree_node** %182, align 8
  %184 = bitcast %union.tree_node* %183 to %struct.tree_common*
  %185 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %184, i32 0, i32 1
  store %union.tree_node* %176, %union.tree_node** %185, align 8
  br label %186

; <label>:186:                                    ; preds = %165
  %187 = load %union.tree_node*, %union.tree_node** %6, align 8
  %188 = bitcast %union.tree_node* %187 to %struct.tree_common*
  %189 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %188, i32 0, i32 0
  %190 = load %union.tree_node*, %union.tree_node** %189, align 8
  store %union.tree_node* %190, %union.tree_node** %6, align 8
  br label %151

; <label>:191:                                    ; preds = %151
  store %union.tree_node* null, %union.tree_node** @early_type_list, align 8
  store i32 1, i32* @sizetype_set, align 4
  ret void
}

declare %union.tree_node* @get_identifier(i8*) #1

declare void @ggc_add_tree_root(%union.tree_node**, i32) #1

; Function Attrs: noinline nounwind uwtable
define i32 @get_best_mode(i32, i32, i32, i32, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i64 0, i64 1), align 4
  store i32 %14, i32* %12, align 4
  br label %15

; <label>:15:                                     ; preds = %33, %5
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %13, align 4
  %26 = urem i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %26, %27
  %29 = load i32, i32* %13, align 4
  %30 = icmp ule i32 %28, %29
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %18
  br label %39

; <label>:32:                                     ; preds = %18
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, i32* %12, align 4
  br label %15

; <label>:39:                                     ; preds = %31, %15
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %63, label %42

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = icmp ult i32 %43, 128
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %13, align 4
  br label %48

; <label>:47:                                     ; preds = %42
  br label %48

; <label>:48:                                     ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 128, %47 ]
  %50 = load i32, i32* %9, align 4
  %51 = icmp ugt i32 %49, %50
  br i1 %51, label %63, label %52

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %58
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp ugt i32 %56, %61
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %55, %48, %39
  store i32 0, i32* %6, align 4
  br label %66

; <label>:64:                                     ; preds = %55, %52
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %6, align 4
  br label %66

; <label>:66:                                     ; preds = %64, %63
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind uwtable
define void @init_stor_layout_once() #0 {
  call void @ggc_add_tree_root(%union.tree_node** @pending_sizes, i32 1)
  ret void
}

declare void @warning(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}