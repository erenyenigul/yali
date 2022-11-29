; ModuleID = 'host/ir_O0/gcc_calls.ll'
source_filename = "calls.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
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
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.lang_decl = type opaque
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.arg_data = type { %union.tree_node*, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, %struct.args_size, %struct.args_size, %struct.args_size, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def**, i32, %struct.args_size }
%struct.args_size = type { i64, %union.tree_node* }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.arg = type { %struct.rtx_def*, i32, %struct.rtx_def*, i32, %struct.args_size, %struct.args_size, %struct.rtx_def* }
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }

@static_chain_rtx = external global %struct.rtx_def*, align 8
@expand_call.currently_expanding_call = internal global i32 0, align 4
@target_flags = external global i32, align 4
@highest_outgoing_arg_in_use = internal global i32 0, align 4
@stack_usage_map = internal global i8* null, align 8
@cfun = external global %struct.function*, align 8
@flag_no_inline = external global i32, align 4
@current_function_decl = external global %union.tree_node*, align 8
@warn_inline = external global i32, align 4
@optimize = external global i32, align 4
@.str = private unnamed_addr constant [26 x i8] c"can't inline call to `%s'\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"called from here\00", align 1
@warn_aggregate_return = external global i32, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"function call has aggregate value\00", align 1
@ix86_preferred_stack_boundary = external global i32, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"calls.c\00", align 1
@__FUNCTION__.expand_call = private unnamed_addr constant [12 x i8] c"expand_call\00", align 1
@struct_value_rtx = external global %struct.rtx_def*, align 8
@stack_arg_under_construction = common global i32 0, align 4
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@global_trees = external global [51 x %union.tree_node*], align 16
@flag_optimize_sibling_calls = external global i32, align 4
@rtx_equal_function_value_matters = external global i32, align 4
@flag_pic = external global i32, align 4
@mode_class = external constant [59 x i32], align 16
@profile_arc_flag = external global i32, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"__bb_fork_func\00", align 1
@stored_args_map = internal global %struct.simple_bitmap_def* null, align 8
@sizetype_tab = external global [6 x %union.tree_node*], align 16
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"alloca\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"__builtin_alloca\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"setjmp\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"setjmp_syscall\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"sigsetjmp\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"savectx\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"siglongjmp\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"qsetjmp\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"longjmp\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@tree_code_type = external global [256 x i8], align 16
@.str.20 = private unnamed_addr constant [32 x i8] c"inlining failed in call to `%s'\00", align 1
@integer_types = external global [11 x %union.tree_node*], align 16
@flag_stack_check = external global i32, align 4
@__FUNCTION__.precompute_arguments = private unnamed_addr constant [21 x i8] c"precompute_arguments\00", align 1
@calls_function_save_exprs = internal global %union.tree_node* null, align 8
@__FUNCTION__.compute_argument_block_size = private unnamed_addr constant [28 x i8] c"compute_argument_block_size\00", align 1
@mode_size = external constant [59 x i8], align 16
@rtx_class = external constant [153 x i8], align 16
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@word_mode = external global i32, align 4
@__FUNCTION__.emit_call_1 = private unnamed_addr constant [12 x i8] c"emit_call_1\00", align 1
@flag_defer_pop = external global i32, align 4
@__FUNCTION__.emit_library_call_value_1 = private unnamed_addr constant [26 x i8] c"emit_library_call_value_1\00", align 1
@virtuals_instantiated = external global i32, align 4
@__FUNCTION__.store_one_arg = private unnamed_addr constant [14 x i8] c"store_one_arg\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"variable offset is passed partially in stack and in reg\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"variable size is passed partially in stack and in reg\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.rtx_def* @prepare_call_address(%struct.rtx_def*, %union.tree_node*, %struct.rtx_def**, i32, i32) #0 {
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %union.tree_node*, align 8
  %8 = alloca %struct.rtx_def**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %6, align 8
  store %union.tree_node* %1, %union.tree_node** %7, align 8
  store %struct.rtx_def** %2, %struct.rtx_def*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %11, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %13 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %12, i32 0)
  store %struct.rtx_def* %13, %struct.rtx_def** %6, align 8
  %14 = load %union.tree_node*, %union.tree_node** %7, align 8
  %15 = icmp ne %union.tree_node* %14, null
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %5
  %17 = load %union.tree_node*, %union.tree_node** %7, align 8
  %18 = call %struct.rtx_def* @lookup_static_chain(%union.tree_node* %17)
  store %struct.rtx_def* %18, %struct.rtx_def** %11, align 8
  br label %19

; <label>:19:                                     ; preds = %16, %5
  %20 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp ne i32 %23, 68
  br i1 %24, label %25, label %37

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %25
  %29 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %30 = call %struct.rtx_def* @memory_address(i32 2, %struct.rtx_def* %29)
  %31 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %30)
  br label %35

; <label>:32:                                     ; preds = %25
  %33 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %34 = call %struct.rtx_def* @memory_address(i32 2, %struct.rtx_def* %33)
  br label %35

; <label>:35:                                     ; preds = %32, %28
  %36 = phi %struct.rtx_def* [ %31, %28 ], [ %34, %32 ]
  store %struct.rtx_def* %36, %struct.rtx_def** %6, align 8
  br label %42

; <label>:37:                                     ; preds = %19
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

; <label>:40:                                     ; preds = %37
  br label %41

; <label>:41:                                     ; preds = %40, %37
  br label %42

; <label>:42:                                     ; preds = %41, %35
  %43 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %44 = icmp ne %struct.rtx_def* %43, null
  br i1 %44, label %45, label %58

; <label>:45:                                     ; preds = %42
  %46 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_rtx, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %48 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %46, %struct.rtx_def* %47)
  %49 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_rtx, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 61
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %45
  %55 = load %struct.rtx_def**, %struct.rtx_def*** %8, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_rtx, align 8
  call void @use_reg(%struct.rtx_def** %55, %struct.rtx_def* %56)
  br label %57

; <label>:57:                                     ; preds = %54, %45
  br label %58

; <label>:58:                                     ; preds = %57, %42
  %59 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  ret %struct.rtx_def* %59
}

declare %struct.rtx_def* @protect_from_queue(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @lookup_static_chain(%union.tree_node*) #1

declare %struct.rtx_def* @force_not_mem(%struct.rtx_def*) #1

declare %struct.rtx_def* @memory_address(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @use_reg(%struct.rtx_def**, %struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @setjmp_call_p(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %4 = call i32 @special_function_p(%union.tree_node* %3, i32 0)
  %5 = and i32 %4, 32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @special_function_p(%union.tree_node*, i32) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %374, label %10

; <label>:10:                                     ; preds = %2
  %11 = load %union.tree_node*, %union.tree_node** %3, align 8
  %12 = icmp ne %union.tree_node* %11, null
  br i1 %12, label %13, label %374

; <label>:13:                                     ; preds = %10
  %14 = load %union.tree_node*, %union.tree_node** %3, align 8
  %15 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %16 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %15, i32 0, i32 8
  %17 = load %union.tree_node*, %union.tree_node** %16, align 8
  %18 = icmp ne %union.tree_node* %17, null
  br i1 %18, label %19, label %374

; <label>:19:                                     ; preds = %13
  %20 = load %union.tree_node*, %union.tree_node** %3, align 8
  %21 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %22 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %21, i32 0, i32 8
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8
  %24 = bitcast %union.tree_node* %23 to %struct.tree_identifier*
  %25 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ule i32 %27, 17
  br i1 %28, label %29, label %374

; <label>:29:                                     ; preds = %19
  %30 = load %union.tree_node*, %union.tree_node** %3, align 8
  %31 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %32 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %31, i32 0, i32 9
  %33 = load %union.tree_node*, %union.tree_node** %32, align 8
  %34 = icmp eq %union.tree_node* %33, null
  br i1 %34, label %35, label %374

; <label>:35:                                     ; preds = %29
  %36 = load %union.tree_node*, %union.tree_node** %3, align 8
  %37 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %38 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = lshr i32 %39, 19
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %374

; <label>:43:                                     ; preds = %35
  %44 = load %union.tree_node*, %union.tree_node** %3, align 8
  %45 = bitcast %union.tree_node* %44 to %struct.tree_decl*
  %46 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %45, i32 0, i32 8
  %47 = load %union.tree_node*, %union.tree_node** %46, align 8
  %48 = bitcast %union.tree_node* %47 to %struct.tree_identifier*
  %49 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  store i8* %52, i8** %6, align 8
  %53 = load %union.tree_node*, %union.tree_node** %3, align 8
  %54 = bitcast %union.tree_node* %53 to %struct.tree_decl*
  %55 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %54, i32 0, i32 8
  %56 = load %union.tree_node*, %union.tree_node** %55, align 8
  %57 = bitcast %union.tree_node* %56 to %struct.tree_identifier*
  %58 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 6
  br i1 %61, label %62, label %72

; <label>:62:                                     ; preds = %43
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 97
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %62
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #7
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %92

; <label>:72:                                     ; preds = %68, %62, %43
  %73 = load %union.tree_node*, %union.tree_node** %3, align 8
  %74 = bitcast %union.tree_node* %73 to %struct.tree_decl*
  %75 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %74, i32 0, i32 8
  %76 = load %union.tree_node*, %union.tree_node** %75, align 8
  %77 = bitcast %union.tree_node* %76 to %struct.tree_identifier*
  %78 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 16
  br i1 %81, label %82, label %95

; <label>:82:                                     ; preds = %72
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 95
  br i1 %87, label %88, label %95

; <label>:88:                                     ; preds = %82
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0)) #7
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

; <label>:92:                                     ; preds = %88, %68
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, 8
  store i32 %94, i32* %4, align 4
  br label %95

; <label>:95:                                     ; preds = %92, %88, %82, %72
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 95
  br i1 %100, label %101, label %130

; <label>:101:                                    ; preds = %95
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 95
  br i1 %106, label %107, label %116

; <label>:107:                                    ; preds = %101
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 120
  br i1 %112, label %113, label %116

; <label>:113:                                    ; preds = %107
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 3
  store i8* %115, i8** %6, align 8
  br label %129

; <label>:116:                                    ; preds = %107, %101
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 95
  br i1 %121, label %122, label %125

; <label>:122:                                    ; preds = %116
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 2
  store i8* %124, i8** %6, align 8
  br label %128

; <label>:125:                                    ; preds = %116
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  store i8* %127, i8** %6, align 8
  br label %128

; <label>:128:                                    ; preds = %125, %122
  br label %129

; <label>:129:                                    ; preds = %128, %113
  br label %130

; <label>:130:                                    ; preds = %129, %95
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 115
  br i1 %135, label %136, label %187

; <label>:136:                                    ; preds = %130
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 101
  br i1 %141, label %142, label %150

; <label>:142:                                    ; preds = %136
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)) #7
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %170

; <label>:146:                                    ; preds = %142
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)) #7
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %170

; <label>:150:                                    ; preds = %146, %136
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 105
  br i1 %155, label %156, label %160

; <label>:156:                                    ; preds = %150
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)) #7
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %170

; <label>:160:                                    ; preds = %156, %150
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 97
  br i1 %165, label %166, label %173

; <label>:166:                                    ; preds = %160
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)) #7
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

; <label>:170:                                    ; preds = %166, %156, %146, %142
  %171 = load i32, i32* %4, align 4
  %172 = or i32 %171, 32
  store i32 %172, i32* %4, align 4
  br label %173

; <label>:173:                                    ; preds = %170, %166, %160
  %174 = load i8*, i8** %6, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 105
  br i1 %178, label %179, label %186

; <label>:179:                                    ; preds = %173
  %180 = load i8*, i8** %6, align 8
  %181 = call i32 @strcmp(i8* %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #7
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

; <label>:183:                                    ; preds = %179
  %184 = load i32, i32* %4, align 4
  %185 = or i32 %184, 64
  store i32 %185, i32* %4, align 4
  br label %186

; <label>:186:                                    ; preds = %183, %179, %173
  br label %373

; <label>:187:                                    ; preds = %130
  %188 = load i8*, i8** %6, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 113
  br i1 %192, label %193, label %203

; <label>:193:                                    ; preds = %187
  %194 = load i8*, i8** %6, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 115
  br i1 %198, label %199, label %203

; <label>:199:                                    ; preds = %193
  %200 = load i8*, i8** %6, align 8
  %201 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)) #7
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %219

; <label>:203:                                    ; preds = %199, %193, %187
  %204 = load i8*, i8** %6, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 118
  br i1 %208, label %209, label %222

; <label>:209:                                    ; preds = %203
  %210 = load i8*, i8** %6, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 102
  br i1 %214, label %215, label %222

; <label>:215:                                    ; preds = %209
  %216 = load i8*, i8** %6, align 8
  %217 = call i32 @strcmp(i8* %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #7
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

; <label>:219:                                    ; preds = %215, %199
  %220 = load i32, i32* %4, align 4
  %221 = or i32 %220, 32
  store i32 %221, i32* %4, align 4
  br label %372

; <label>:222:                                    ; preds = %215, %209, %203
  %223 = load i8*, i8** %6, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 108
  br i1 %227, label %228, label %241

; <label>:228:                                    ; preds = %222
  %229 = load i8*, i8** %6, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 1
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 111
  br i1 %233, label %234, label %241

; <label>:234:                                    ; preds = %228
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 @strcmp(i8* %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #7
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %241, label %238

; <label>:238:                                    ; preds = %234
  %239 = load i32, i32* %4, align 4
  %240 = or i32 %239, 64
  store i32 %240, i32* %4, align 4
  br label %371

; <label>:241:                                    ; preds = %234, %228, %222
  %242 = load i8*, i8** %6, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 0
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 102
  br i1 %246, label %247, label %257

; <label>:247:                                    ; preds = %241
  %248 = load i8*, i8** %6, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 1
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %251, 111
  br i1 %252, label %253, label %257

; <label>:253:                                    ; preds = %247
  %254 = load i8*, i8** %6, align 8
  %255 = call i32 @strcmp(i8* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #7
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %333

; <label>:257:                                    ; preds = %253, %247, %241
  %258 = load i8*, i8** %5, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 0
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 95
  br i1 %262, label %263, label %273

; <label>:263:                                    ; preds = %257
  %264 = load i8*, i8** %5, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 95
  br i1 %268, label %269, label %273

; <label>:269:                                    ; preds = %263
  %270 = load i8*, i8** %6, align 8
  %271 = call i32 @strcmp(i8* %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #7
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %333

; <label>:273:                                    ; preds = %269, %263, %257
  %274 = load i8*, i8** %6, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 0
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 101
  br i1 %278, label %279, label %336

; <label>:279:                                    ; preds = %273
  %280 = load i8*, i8** %6, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 1
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 120
  br i1 %284, label %285, label %336

; <label>:285:                                    ; preds = %279
  %286 = load i8*, i8** %6, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 2
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 101
  br i1 %290, label %291, label %336

; <label>:291:                                    ; preds = %285
  %292 = load i8*, i8** %6, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 3
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp eq i32 %295, 99
  br i1 %296, label %297, label %336

; <label>:297:                                    ; preds = %291
  %298 = load i8*, i8** %6, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 4
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %301, 108
  br i1 %302, label %309, label %303

; <label>:303:                                    ; preds = %297
  %304 = load i8*, i8** %6, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 4
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 118
  br i1 %308, label %309, label %336

; <label>:309:                                    ; preds = %303, %297
  %310 = load i8*, i8** %6, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 5
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %333, label %315

; <label>:315:                                    ; preds = %309
  %316 = load i8*, i8** %6, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 5
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp eq i32 %319, 112
  br i1 %320, label %327, label %321

; <label>:321:                                    ; preds = %315
  %322 = load i8*, i8** %6, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 5
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp eq i32 %325, 101
  br i1 %326, label %327, label %336

; <label>:327:                                    ; preds = %321, %315
  %328 = load i8*, i8** %6, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 6
  %330 = load i8, i8* %329, align 1
  %331 = sext i8 %330 to i32
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %336

; <label>:333:                                    ; preds = %327, %309, %269, %253
  %334 = load i32, i32* %4, align 4
  %335 = or i32 %334, 128
  store i32 %335, i32* %4, align 4
  br label %370

; <label>:336:                                    ; preds = %327, %321, %303, %291, %285, %279, %273
  %337 = load %union.tree_node*, %union.tree_node** %3, align 8
  %338 = bitcast %union.tree_node* %337 to %struct.tree_common*
  %339 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %338, i32 0, i32 1
  %340 = load %union.tree_node*, %union.tree_node** %339, align 8
  %341 = bitcast %union.tree_node* %340 to %struct.tree_common*
  %342 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %341, i32 0, i32 1
  %343 = load %union.tree_node*, %union.tree_node** %342, align 8
  %344 = bitcast %union.tree_node* %343 to %struct.tree_type*
  %345 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 4
  %347 = lshr i32 %346, 9
  %348 = and i32 %347, 127
  %349 = load i32, i32* @target_flags, align 4
  %350 = and i32 %349, 33554432
  %351 = icmp ne i32 %350, 0
  %352 = select i1 %351, i32 5, i32 4
  %353 = icmp eq i32 %348, %352
  br i1 %353, label %354, label %369

; <label>:354:                                    ; preds = %336
  %355 = load i8*, i8** %6, align 8
  %356 = call i32 @strcmp(i8* %355, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #7
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %366

; <label>:358:                                    ; preds = %354
  %359 = load i8*, i8** %6, align 8
  %360 = call i32 @strcmp(i8* %359, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #7
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

; <label>:362:                                    ; preds = %358
  %363 = load i8*, i8** %6, align 8
  %364 = call i32 @strcmp(i8* %363, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #7
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %369, label %366

; <label>:366:                                    ; preds = %362, %358, %354
  %367 = load i32, i32* %4, align 4
  %368 = or i32 %367, 4
  store i32 %368, i32* %4, align 4
  br label %369

; <label>:369:                                    ; preds = %366, %362, %336
  br label %370

; <label>:370:                                    ; preds = %369, %333
  br label %371

; <label>:371:                                    ; preds = %370, %238
  br label %372

; <label>:372:                                    ; preds = %371, %219
  br label %373

; <label>:373:                                    ; preds = %372, %186
  br label %374

; <label>:374:                                    ; preds = %373, %35, %29, %19, %13, %10, %2
  %375 = load i32, i32* %4, align 4
  ret i32 %375
}

; Function Attrs: noinline nounwind uwtable
define %struct.rtx_def* @expand_call(%union.tree_node*, %struct.rtx_def*, i32) #0 {
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %union.tree_node*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.tree_node*, align 8
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca %struct.rtx_def*, align 8
  %11 = alloca %struct.rtx_def*, align 8
  %12 = alloca %struct.rtx_def*, align 8
  %13 = alloca %union.tree_node*, align 8
  %14 = alloca %union.tree_node*, align 8
  %15 = alloca %struct.rtx_def*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.rtx_def*, align 8
  %20 = alloca %struct.rtx_def*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.arg_data*, align 8
  %27 = alloca %struct.args_size, align 8
  %28 = alloca %struct.args_size, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.ix86_args, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.rtx_def*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.rtx_def*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  %43 = alloca %struct.rtx_def*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca %struct.rtx_def*, align 8
  %48 = alloca %union.tree_node*, align 8
  %49 = alloca i32, align 4
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca %struct.rtx_def*, align 8
  %53 = alloca %struct.rtx_def*, align 8
  %54 = alloca %struct.rtx_def*, align 8
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca %union.tree_node*, align 8
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca %struct.rtx_def*, align 8
  %64 = alloca %struct.rtx_def*, align 8
  %65 = alloca %struct.rtx_def*, align 8
  %66 = alloca i32, align 4
  %67 = alloca %struct.rtx_def*, align 8
  %68 = alloca %struct.rtx_def*, align 8
  %69 = alloca %struct.rtx_def*, align 8
  %70 = alloca %struct.rtx_def*, align 8
  %71 = alloca %struct.rtx_def*, align 8
  %72 = alloca %struct.rtx_def*, align 8
  %73 = alloca %struct.rtx_def*, align 8
  %74 = alloca %struct.rtx_def*, align 8
  %75 = alloca %struct.rtx_def*, align 8
  %76 = alloca %struct.rtx_def*, align 8
  %77 = alloca %union.tree_node*, align 8
  %78 = alloca i32, align 4
  %79 = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %0, %union.tree_node** %5, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %80 = load %union.tree_node*, %union.tree_node** %5, align 8
  %81 = bitcast %union.tree_node* %80 to %struct.tree_exp*
  %82 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %81, i32 0, i32 2
  %83 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %82, i64 0, i64 1
  %84 = load %union.tree_node*, %union.tree_node** %83, align 8
  store %union.tree_node* %84, %union.tree_node** %8, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %10, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %11, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %12, align 8
  store %union.tree_node* null, %union.tree_node** %14, align 8
  store i32 1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %20, align 8
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  store i32 0, i32* %23, align 4
  %85 = load i32, i32* @target_flags, align 4
  %86 = and i32 %85, 2048
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

; <label>:88:                                     ; preds = %3
  %89 = load i32, i32* @target_flags, align 4
  %90 = and i32 %89, 4096
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br label %93

; <label>:93:                                     ; preds = %88, %3
  %94 = phi i1 [ false, %3 ], [ %92, %88 ]
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %34, align 8
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 -1, i32* %37, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %39, align 8
  %97 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  store i32 %97, i32* %40, align 4
  %98 = load i8*, i8** @stack_usage_map, align 8
  store i8* %98, i8** %41, align 8
  store i32 0, i32* %42, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %43, align 8
  store i32 0, i32* %44, align 4
  %99 = load %struct.function*, %struct.function** @cfun, align 8
  %100 = getelementptr inbounds %struct.function, %struct.function* %99, i32 0, i32 2
  %101 = load %struct.expr_status*, %struct.expr_status** %100, align 8
  %102 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %45, align 4
  %104 = load %union.tree_node*, %union.tree_node** %5, align 8
  %105 = bitcast %union.tree_node* %104 to %struct.tree_exp*
  %106 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %105, i32 0, i32 2
  %107 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %106, i64 0, i64 0
  %108 = load %union.tree_node*, %union.tree_node** %107, align 8
  store %union.tree_node* %108, %union.tree_node** %48, align 8
  %109 = load %union.tree_node*, %union.tree_node** %5, align 8
  %110 = bitcast %union.tree_node* %109 to %struct.tree_common*
  %111 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = lshr i32 %112, 17
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

; <label>:116:                                    ; preds = %93
  %117 = load i32, i32* %35, align 4
  %118 = or i32 %117, 16
  store i32 %118, i32* %35, align 4
  br label %119

; <label>:119:                                    ; preds = %116, %93
  %120 = load %union.tree_node*, %union.tree_node** %5, align 8
  %121 = call %union.tree_node* @get_callee_fndecl(%union.tree_node* %120)
  store %union.tree_node* %121, %union.tree_node** %14, align 8
  %122 = load %union.tree_node*, %union.tree_node** %14, align 8
  %123 = icmp ne %union.tree_node* %122, null
  br i1 %123, label %124, label %196

; <label>:124:                                    ; preds = %119
  %125 = load i32, i32* @flag_no_inline, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %158, label %127

; <label>:127:                                    ; preds = %124
  %128 = load %union.tree_node*, %union.tree_node** %14, align 8
  %129 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %130 = icmp ne %union.tree_node* %128, %129
  br i1 %130, label %131, label %158

; <label>:131:                                    ; preds = %127
  %132 = load %union.tree_node*, %union.tree_node** %14, align 8
  %133 = bitcast %union.tree_node* %132 to %struct.tree_decl*
  %134 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %133, i32 0, i32 5
  %135 = bitcast i48* %134 to i64*
  %136 = load i64, i64* %135, align 8
  %137 = lshr i64 %136, 11
  %138 = and i64 %137, 1
  %139 = trunc i64 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %158

; <label>:141:                                    ; preds = %131
  %142 = load %union.tree_node*, %union.tree_node** %14, align 8
  %143 = bitcast %union.tree_node* %142 to %struct.tree_decl*
  %144 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %143, i32 0, i32 19
  %145 = bitcast %union.anon.1* %144 to %struct.function**
  %146 = load %struct.function*, %struct.function** %145, align 8
  %147 = icmp ne %struct.function* %146, null
  br i1 %147, label %148, label %158

; <label>:148:                                    ; preds = %141
  %149 = load %union.tree_node*, %union.tree_node** %14, align 8
  %150 = bitcast %union.tree_node* %149 to %struct.tree_decl*
  %151 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %150, i32 0, i32 19
  %152 = bitcast %union.anon.1* %151 to %struct.function**
  %153 = load %struct.function*, %struct.function** %152, align 8
  %154 = getelementptr inbounds %struct.function, %struct.function* %153, i32 0, i32 44
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

; <label>:157:                                    ; preds = %148
  store i32 1, i32* %36, align 4
  br label %191

; <label>:158:                                    ; preds = %148, %141, %131, %127, %124
  %159 = load %union.tree_node*, %union.tree_node** %14, align 8
  %160 = bitcast %union.tree_node* %159 to %struct.tree_common*
  %161 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = lshr i32 %162, 10
  %164 = and i32 %163, 1
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %190, label %166

; <label>:166:                                    ; preds = %158
  %167 = load %union.tree_node*, %union.tree_node** %14, align 8
  %168 = bitcast %union.tree_node* %167 to %struct.tree_decl*
  %169 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %168, i32 0, i32 5
  %170 = bitcast i48* %169 to i64*
  %171 = load i64, i64* %170, align 8
  %172 = lshr i64 %171, 11
  %173 = and i64 %172, 1
  %174 = trunc i64 %173 to i32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %187

; <label>:176:                                    ; preds = %166
  %177 = load i32, i32* @warn_inline, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

; <label>:179:                                    ; preds = %176
  %180 = load i32, i32* @flag_no_inline, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

; <label>:182:                                    ; preds = %179
  %183 = load i32, i32* @optimize, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %187

; <label>:185:                                    ; preds = %182
  %186 = load %union.tree_node*, %union.tree_node** %14, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %187

; <label>:187:                                    ; preds = %185, %182, %179, %176, %166
  %188 = load %union.tree_node*, %union.tree_node** %14, align 8
  %189 = call i32 @mark_addressable(%union.tree_node* %188)
  br label %190

; <label>:190:                                    ; preds = %187, %158
  br label %191

; <label>:191:                                    ; preds = %190, %157
  %192 = load %union.tree_node*, %union.tree_node** %14, align 8
  %193 = call i32 @flags_from_decl_or_type(%union.tree_node* %192)
  %194 = load i32, i32* %35, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %35, align 4
  br label %207

; <label>:196:                                    ; preds = %119
  %197 = load %union.tree_node*, %union.tree_node** %48, align 8
  %198 = bitcast %union.tree_node* %197 to %struct.tree_common*
  %199 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %198, i32 0, i32 1
  %200 = load %union.tree_node*, %union.tree_node** %199, align 8
  %201 = bitcast %union.tree_node* %200 to %struct.tree_common*
  %202 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %201, i32 0, i32 1
  %203 = load %union.tree_node*, %union.tree_node** %202, align 8
  %204 = call i32 @flags_from_decl_or_type(%union.tree_node* %203)
  %205 = load i32, i32* %35, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %35, align 4
  br label %207

; <label>:207:                                    ; preds = %196, %191
  store i32 0, i32* %33, align 4
  %208 = load i32, i32* %33, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %219

; <label>:210:                                    ; preds = %207
  %211 = load i32, i32* @target_flags, align 4
  %212 = and i32 %211, 2048
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %219, label %214

; <label>:214:                                    ; preds = %210
  %215 = load i32, i32* @target_flags, align 4
  %216 = and i32 %215, 4096
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

; <label>:218:                                    ; preds = %214
  store i32 1, i32* %32, align 4
  br label %219

; <label>:219:                                    ; preds = %218, %214, %210, %207
  %220 = load i32, i32* @warn_aggregate_return, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %273

; <label>:222:                                    ; preds = %219
  %223 = load %union.tree_node*, %union.tree_node** %5, align 8
  %224 = bitcast %union.tree_node* %223 to %struct.tree_common*
  %225 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %224, i32 0, i32 1
  %226 = load %union.tree_node*, %union.tree_node** %225, align 8
  %227 = bitcast %union.tree_node* %226 to %struct.tree_common*
  %228 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = and i32 %229, 255
  %231 = icmp eq i32 %230, 18
  br i1 %231, label %272, label %232

; <label>:232:                                    ; preds = %222
  %233 = load %union.tree_node*, %union.tree_node** %5, align 8
  %234 = bitcast %union.tree_node* %233 to %struct.tree_common*
  %235 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %234, i32 0, i32 1
  %236 = load %union.tree_node*, %union.tree_node** %235, align 8
  %237 = bitcast %union.tree_node* %236 to %struct.tree_common*
  %238 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, 255
  %241 = icmp eq i32 %240, 20
  br i1 %241, label %272, label %242

; <label>:242:                                    ; preds = %232
  %243 = load %union.tree_node*, %union.tree_node** %5, align 8
  %244 = bitcast %union.tree_node* %243 to %struct.tree_common*
  %245 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %244, i32 0, i32 1
  %246 = load %union.tree_node*, %union.tree_node** %245, align 8
  %247 = bitcast %union.tree_node* %246 to %struct.tree_common*
  %248 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = and i32 %249, 255
  %251 = icmp eq i32 %250, 21
  br i1 %251, label %272, label %252

; <label>:252:                                    ; preds = %242
  %253 = load %union.tree_node*, %union.tree_node** %5, align 8
  %254 = bitcast %union.tree_node* %253 to %struct.tree_common*
  %255 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %254, i32 0, i32 1
  %256 = load %union.tree_node*, %union.tree_node** %255, align 8
  %257 = bitcast %union.tree_node* %256 to %struct.tree_common*
  %258 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = and i32 %259, 255
  %261 = icmp eq i32 %260, 22
  br i1 %261, label %272, label %262

; <label>:262:                                    ; preds = %252
  %263 = load %union.tree_node*, %union.tree_node** %5, align 8
  %264 = bitcast %union.tree_node* %263 to %struct.tree_common*
  %265 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %264, i32 0, i32 1
  %266 = load %union.tree_node*, %union.tree_node** %265, align 8
  %267 = bitcast %union.tree_node* %266 to %struct.tree_common*
  %268 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = and i32 %269, 255
  %271 = icmp eq i32 %270, 19
  br i1 %271, label %272, label %273

; <label>:272:                                    ; preds = %262, %252, %242, %232, %222
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %273

; <label>:273:                                    ; preds = %272, %262, %219
  %274 = load %union.tree_node*, %union.tree_node** %5, align 8
  %275 = call i32 @aggregate_value_p(%union.tree_node* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %312

; <label>:277:                                    ; preds = %273
  %278 = load i32, i32* %35, align 4
  %279 = and i32 %278, -4610
  store i32 %279, i32* %35, align 4
  %280 = load %union.tree_node*, %union.tree_node** %5, align 8
  %281 = bitcast %union.tree_node* %280 to %struct.tree_common*
  %282 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %281, i32 0, i32 1
  %283 = load %union.tree_node*, %union.tree_node** %282, align 8
  %284 = call i64 @int_size_in_bytes(%union.tree_node* %283)
  store i64 %284, i64* %22, align 8
  %285 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %286 = icmp ne %struct.rtx_def* %285, null
  br i1 %286, label %287, label %299

; <label>:287:                                    ; preds = %277
  %288 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %289 = bitcast %struct.rtx_def* %288 to i32*
  %290 = load i32, i32* %289, align 8
  %291 = and i32 %290, 65535
  %292 = icmp eq i32 %291, 66
  br i1 %292, label %293, label %299

; <label>:293:                                    ; preds = %287
  %294 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %295 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %294, i32 0, i32 1
  %296 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %295, i64 0, i64 0
  %297 = bitcast %union.rtunion_def* %296 to %struct.rtx_def**
  %298 = load %struct.rtx_def*, %struct.rtx_def** %297, align 8
  store %struct.rtx_def* %298, %struct.rtx_def** %20, align 8
  br label %311

; <label>:299:                                    ; preds = %287, %277
  %300 = load %union.tree_node*, %union.tree_node** %5, align 8
  %301 = bitcast %union.tree_node* %300 to %struct.tree_common*
  %302 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %301, i32 0, i32 1
  %303 = load %union.tree_node*, %union.tree_node** %302, align 8
  %304 = call %struct.rtx_def* @assign_temp(%union.tree_node* %303, i32 1, i32 1, i32 1)
  store %struct.rtx_def* %304, %struct.rtx_def** %52, align 8
  %305 = load %struct.rtx_def*, %struct.rtx_def** %52, align 8
  call void @mark_temp_addr_taken(%struct.rtx_def* %305)
  %306 = load %struct.rtx_def*, %struct.rtx_def** %52, align 8
  %307 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %306, i32 0, i32 1
  %308 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %307, i64 0, i64 0
  %309 = bitcast %union.rtunion_def* %308 to %struct.rtx_def**
  %310 = load %struct.rtx_def*, %struct.rtx_def** %309, align 8
  store %struct.rtx_def* %310, %struct.rtx_def** %20, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %6, align 8
  br label %311

; <label>:311:                                    ; preds = %299, %293
  br label %312

; <label>:312:                                    ; preds = %311, %273
  %313 = load i32, i32* %36, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %331

; <label>:315:                                    ; preds = %312
  %316 = load %union.tree_node*, %union.tree_node** %14, align 8
  %317 = load %union.tree_node*, %union.tree_node** %8, align 8
  %318 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %319 = load i32, i32* %7, align 4
  %320 = load %union.tree_node*, %union.tree_node** %5, align 8
  %321 = bitcast %union.tree_node* %320 to %struct.tree_common*
  %322 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %321, i32 0, i32 1
  %323 = load %union.tree_node*, %union.tree_node** %322, align 8
  %324 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %325 = call %struct.rtx_def* @try_to_integrate(%union.tree_node* %316, %union.tree_node* %317, %struct.rtx_def* %318, i32 %319, %union.tree_node* %323, %struct.rtx_def* %324)
  store %struct.rtx_def* %325, %struct.rtx_def** %53, align 8
  %326 = load %struct.rtx_def*, %struct.rtx_def** %53, align 8
  %327 = icmp ne %struct.rtx_def* %326, inttoptr (i64 -1 to %struct.rtx_def*)
  br i1 %327, label %328, label %330

; <label>:328:                                    ; preds = %315
  %329 = load %struct.rtx_def*, %struct.rtx_def** %53, align 8
  store %struct.rtx_def* %329, %struct.rtx_def** %4, align 8
  br label %2301

; <label>:330:                                    ; preds = %315
  br label %331

; <label>:331:                                    ; preds = %330, %312
  %332 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %333 = sext i32 %332 to i64
  store i64 %333, i64* %50, align 8
  %334 = load %union.tree_node*, %union.tree_node** %5, align 8
  %335 = bitcast %union.tree_node* %334 to %struct.tree_exp*
  %336 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %335, i32 0, i32 2
  %337 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %336, i64 0, i64 0
  %338 = load %union.tree_node*, %union.tree_node** %337, align 8
  %339 = bitcast %union.tree_node* %338 to %struct.tree_common*
  %340 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %339, i32 0, i32 1
  %341 = load %union.tree_node*, %union.tree_node** %340, align 8
  store %union.tree_node* %341, %union.tree_node** %13, align 8
  %342 = load %union.tree_node*, %union.tree_node** %13, align 8
  %343 = bitcast %union.tree_node* %342 to %struct.tree_common*
  %344 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = and i32 %345, 255
  %347 = icmp eq i32 %346, 13
  br i1 %347, label %356, label %348

; <label>:348:                                    ; preds = %331
  %349 = load %union.tree_node*, %union.tree_node** %13, align 8
  %350 = bitcast %union.tree_node* %349 to %struct.tree_common*
  %351 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = and i32 %352, 255
  %354 = icmp eq i32 %353, 15
  br i1 %354, label %356, label %355

; <label>:355:                                    ; preds = %348
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 2299, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_call, i32 0, i32 0)) #8
  unreachable

; <label>:356:                                    ; preds = %348, %331
  %357 = load %union.tree_node*, %union.tree_node** %13, align 8
  %358 = bitcast %union.tree_node* %357 to %struct.tree_common*
  %359 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %358, i32 0, i32 1
  %360 = load %union.tree_node*, %union.tree_node** %359, align 8
  store %union.tree_node* %360, %union.tree_node** %13, align 8
  %361 = load %union.tree_node*, %union.tree_node** %14, align 8
  %362 = load i32, i32* %35, align 4
  %363 = call i32 @special_function_p(%union.tree_node* %361, i32 %362)
  %364 = load i32, i32* %35, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %35, align 4
  %366 = load i32, i32* %35, align 4
  %367 = and i32 %366, 8
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %376

; <label>:369:                                    ; preds = %356
  %370 = load %struct.function*, %struct.function** @cfun, align 8
  %371 = getelementptr inbounds %struct.function, %struct.function* %370, i32 0, i32 56
  %372 = bitcast i24* %371 to i32*
  %373 = load i32, i32* %372, align 8
  %374 = and i32 %373, -65
  %375 = or i32 %374, 64
  store i32 %375, i32* %372, align 8
  br label %376

; <label>:376:                                    ; preds = %369, %356
  %377 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %378 = icmp ne %struct.rtx_def* %377, null
  br i1 %378, label %379, label %416

; <label>:379:                                    ; preds = %376
  %380 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %381 = icmp eq %struct.rtx_def* %380, null
  br i1 %381, label %382, label %416

; <label>:382:                                    ; preds = %379
  %383 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %384 = bitcast %struct.rtx_def* %383 to i32*
  %385 = load i32, i32* %384, align 8
  %386 = and i32 %385, 65535
  %387 = icmp ne i32 %386, 61
  br i1 %387, label %399, label %388

; <label>:388:                                    ; preds = %382
  %389 = load i32, i32* @target_flags, align 4
  %390 = and i32 %389, 4096
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %402

; <label>:392:                                    ; preds = %388
  %393 = load i32, i32* @stack_arg_under_construction, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %402

; <label>:395:                                    ; preds = %392
  %396 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %397 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 9), align 8
  %398 = icmp eq %struct.rtx_def* %396, %397
  br i1 %398, label %399, label %402

; <label>:399:                                    ; preds = %395, %382
  %400 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %401 = call %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def* %400)
  br label %404

; <label>:402:                                    ; preds = %395, %392, %388
  %403 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  br label %404

; <label>:404:                                    ; preds = %402, %399
  %405 = phi %struct.rtx_def* [ %401, %399 ], [ %403, %402 ]
  store %struct.rtx_def* %405, %struct.rtx_def** %54, align 8
  %406 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16
  %407 = load %union.tree_node*, %union.tree_node** %13, align 8
  %408 = bitcast %union.tree_node* %407 to %struct.tree_common*
  %409 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %408, i32 0, i32 1
  %410 = load %union.tree_node*, %union.tree_node** %409, align 8
  %411 = call %union.tree_node* @build_pointer_type(%union.tree_node* %410)
  %412 = load %struct.rtx_def*, %struct.rtx_def** %54, align 8
  %413 = call %union.tree_node* @make_tree(%union.tree_node* %411, %struct.rtx_def* %412)
  %414 = load %union.tree_node*, %union.tree_node** %8, align 8
  %415 = call %union.tree_node* @tree_cons(%union.tree_node* %406, %union.tree_node* %413, %union.tree_node* %414)
  store %union.tree_node* %415, %union.tree_node** %8, align 8
  store i32 1, i32* %21, align 4
  br label %416

; <label>:416:                                    ; preds = %404, %379, %376
  %417 = load %union.tree_node*, %union.tree_node** %8, align 8
  store %union.tree_node* %417, %union.tree_node** %48, align 8
  store i32 0, i32* %24, align 4
  br label %418

; <label>:418:                                    ; preds = %424, %416
  %419 = load %union.tree_node*, %union.tree_node** %48, align 8
  %420 = icmp ne %union.tree_node* %419, null
  br i1 %420, label %421, label %429

; <label>:421:                                    ; preds = %418
  %422 = load i32, i32* %24, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %24, align 4
  br label %424

; <label>:424:                                    ; preds = %421
  %425 = load %union.tree_node*, %union.tree_node** %48, align 8
  %426 = bitcast %union.tree_node* %425 to %struct.tree_common*
  %427 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %426, i32 0, i32 0
  %428 = load %union.tree_node*, %union.tree_node** %427, align 8
  store %union.tree_node* %428, %union.tree_node** %48, align 8
  br label %418

; <label>:429:                                    ; preds = %418
  %430 = load i32, i32* %24, align 4
  store i32 %430, i32* %25, align 4
  %431 = load %union.tree_node*, %union.tree_node** %13, align 8
  call void @init_cumulative_args(%struct.ix86_args* %30, %union.tree_node* %431, %struct.rtx_def* null)
  %432 = load i32, i32* %24, align 4
  %433 = sext i32 %432 to i64
  %434 = mul i64 %433, 168
  %435 = alloca i8, i64 %434, align 16
  %436 = bitcast i8* %435 to %struct.arg_data*
  store %struct.arg_data* %436, %struct.arg_data** %26, align 8
  %437 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %438 = bitcast %struct.arg_data* %437 to i8*
  %439 = load i32, i32* %24, align 4
  %440 = sext i32 %439 to i64
  %441 = mul i64 %440, 168
  call void @llvm.memset.p0i8.i64(i8* %438, i8 0, i64 %441, i32 1, i1 false)
  %442 = load i32, i32* %24, align 4
  %443 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %444 = load i32, i32* %25, align 4
  %445 = load %union.tree_node*, %union.tree_node** %8, align 8
  %446 = load %union.tree_node*, %union.tree_node** %14, align 8
  %447 = load i32, i32* %33, align 4
  call void @initialize_argument_information(i32 %442, %struct.arg_data* %443, %struct.args_size* %27, i32 %444, %union.tree_node* %445, %union.tree_node* %446, %struct.ix86_args* %30, i32 %447, %struct.rtx_def** %43, i32* %44, i32* %32, i32* %35)
  %448 = getelementptr inbounds %struct.args_size, %struct.args_size* %27, i32 0, i32 1
  %449 = load %union.tree_node*, %union.tree_node** %448, align 8
  %450 = icmp ne %union.tree_node* %449, null
  br i1 %450, label %451, label %454

; <label>:451:                                    ; preds = %429
  %452 = load i32, i32* %35, align 4
  %453 = and i32 %452, -4097
  store i32 %453, i32* %35, align 4
  store i32 1, i32* %32, align 4
  br label %454

; <label>:454:                                    ; preds = %451, %429
  %455 = load i32, i32* %32, align 4
  %456 = load i32, i32* %24, align 4
  %457 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %458 = call i32 @finalize_must_preallocate(i32 %455, i32 %456, %struct.arg_data* %457, %struct.args_size* %27)
  store i32 %458, i32* %32, align 4
  %459 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %460 = icmp ne %struct.rtx_def* %459, null
  br i1 %460, label %461, label %486

; <label>:461:                                    ; preds = %454
  %462 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 8), align 16
  %463 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %464 = call i32 @reg_mentioned_p(%struct.rtx_def* %462, %struct.rtx_def* %463)
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %471, label %466

; <label>:466:                                    ; preds = %461
  %467 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 9), align 8
  %468 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %469 = call i32 @reg_mentioned_p(%struct.rtx_def* %467, %struct.rtx_def* %468)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %486

; <label>:471:                                    ; preds = %466, %461
  %472 = getelementptr inbounds %struct.args_size, %struct.args_size* %27, i32 0, i32 1
  %473 = load %union.tree_node*, %union.tree_node** %472, align 8
  %474 = icmp ne %union.tree_node* %473, null
  br i1 %474, label %483, label %475

; <label>:475:                                    ; preds = %471
  %476 = load i32, i32* @target_flags, align 4
  %477 = and i32 %476, 4096
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %486, label %479

; <label>:479:                                    ; preds = %475
  %480 = getelementptr inbounds %struct.args_size, %struct.args_size* %27, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %486

; <label>:483:                                    ; preds = %479, %471
  %484 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %485 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %484)
  store %struct.rtx_def* %485, %struct.rtx_def** %20, align 8
  br label %486

; <label>:486:                                    ; preds = %483, %479, %475, %466, %454
  %487 = load i32, i32* @expand_call.currently_expanding_call, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* @expand_call.currently_expanding_call, align 4
  %489 = icmp ne i32 %487, 0
  br i1 %489, label %503, label %490

; <label>:490:                                    ; preds = %486
  %491 = load i32, i32* @flag_optimize_sibling_calls, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %503

; <label>:493:                                    ; preds = %490
  %494 = load i32, i32* @rtx_equal_function_value_matters, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %503

; <label>:496:                                    ; preds = %493
  %497 = call i32 @any_pending_cleanups(i32 1)
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %503, label %499

; <label>:499:                                    ; preds = %496
  %500 = getelementptr inbounds %struct.args_size, %struct.args_size* %27, i32 0, i32 1
  %501 = load %union.tree_node*, %union.tree_node** %500, align 8
  %502 = icmp ne %union.tree_node* %501, null
  br i1 %502, label %503, label %504

; <label>:503:                                    ; preds = %499, %496, %493, %490, %486
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %504

; <label>:504:                                    ; preds = %503, %499
  %505 = load i32, i32* %17, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %530

; <label>:507:                                    ; preds = %504
  %508 = load %union.tree_node*, %union.tree_node** %5, align 8
  %509 = bitcast %union.tree_node* %508 to %struct.tree_exp*
  %510 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %509, i32 0, i32 2
  %511 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %510, i64 0, i64 0
  %512 = load %union.tree_node*, %union.tree_node** %511, align 8
  %513 = bitcast %union.tree_node* %512 to %struct.tree_common*
  %514 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 8
  %516 = and i32 %515, 255
  %517 = icmp ne i32 %516, 121
  br i1 %517, label %530, label %518

; <label>:518:                                    ; preds = %507
  %519 = load %union.tree_node*, %union.tree_node** %5, align 8
  %520 = bitcast %union.tree_node* %519 to %struct.tree_exp*
  %521 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %520, i32 0, i32 2
  %522 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %521, i64 0, i64 0
  %523 = load %union.tree_node*, %union.tree_node** %522, align 8
  %524 = bitcast %union.tree_node* %523 to %struct.tree_exp*
  %525 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %524, i32 0, i32 2
  %526 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %525, i64 0, i64 0
  %527 = load %union.tree_node*, %union.tree_node** %526, align 8
  %528 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %529 = icmp ne %union.tree_node* %527, %528
  br i1 %529, label %530, label %531

; <label>:530:                                    ; preds = %518, %507, %504
  store i32 0, i32* %17, align 4
  br label %531

; <label>:531:                                    ; preds = %530, %518
  %532 = load i32, i32* %16, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %703

; <label>:534:                                    ; preds = %531
  %535 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %536 = icmp ne %struct.rtx_def* %535, null
  br i1 %536, label %703, label %537

; <label>:537:                                    ; preds = %534
  %538 = load %union.tree_node*, %union.tree_node** %14, align 8
  %539 = icmp eq %union.tree_node* %538, null
  br i1 %539, label %703, label %540

; <label>:540:                                    ; preds = %537
  %541 = load i32, i32* %35, align 4
  %542 = and i32 %541, 96
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %703, label %544

; <label>:544:                                    ; preds = %540
  %545 = load %union.tree_node*, %union.tree_node** %14, align 8
  %546 = bitcast %union.tree_node* %545 to %struct.tree_common*
  %547 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 8
  %549 = lshr i32 %548, 11
  %550 = and i32 %549, 1
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %703, label %552

; <label>:552:                                    ; preds = %544
  %553 = load %union.tree_node*, %union.tree_node** %14, align 8
  %554 = icmp ne %union.tree_node* %553, null
  br i1 %554, label %555, label %703

; <label>:555:                                    ; preds = %552
  %556 = load i32, i32* @flag_pic, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %566

; <label>:558:                                    ; preds = %555
  %559 = load %union.tree_node*, %union.tree_node** %14, align 8
  %560 = bitcast %union.tree_node* %559 to %struct.tree_common*
  %561 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %560, i32 0, i32 2
  %562 = load i32, i32* %561, align 8
  %563 = lshr i32 %562, 19
  %564 = and i32 %563, 1
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %703, label %566

; <label>:566:                                    ; preds = %558, %555
  %567 = load i32, i32* @target_flags, align 4
  %568 = and i32 %567, 32
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %678

; <label>:570:                                    ; preds = %566
  %571 = load %union.tree_node*, %union.tree_node** %14, align 8
  %572 = bitcast %union.tree_node* %571 to %struct.tree_common*
  %573 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %572, i32 0, i32 1
  %574 = load %union.tree_node*, %union.tree_node** %573, align 8
  %575 = bitcast %union.tree_node* %574 to %struct.tree_common*
  %576 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %575, i32 0, i32 1
  %577 = load %union.tree_node*, %union.tree_node** %576, align 8
  %578 = bitcast %union.tree_node* %577 to %struct.tree_type*
  %579 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %578, i32 0, i32 6
  %580 = load i32, i32* %579, align 4
  %581 = lshr i32 %580, 9
  %582 = and i32 %581, 127
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %583
  %585 = load i32, i32* %584, align 4
  %586 = icmp eq i32 %585, 2
  br i1 %586, label %621, label %587

; <label>:587:                                    ; preds = %570
  %588 = load %union.tree_node*, %union.tree_node** %14, align 8
  %589 = bitcast %union.tree_node* %588 to %struct.tree_common*
  %590 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %589, i32 0, i32 1
  %591 = load %union.tree_node*, %union.tree_node** %590, align 8
  %592 = bitcast %union.tree_node* %591 to %struct.tree_common*
  %593 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %592, i32 0, i32 1
  %594 = load %union.tree_node*, %union.tree_node** %593, align 8
  %595 = bitcast %union.tree_node* %594 to %struct.tree_type*
  %596 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %595, i32 0, i32 6
  %597 = load i32, i32* %596, align 4
  %598 = lshr i32 %597, 9
  %599 = and i32 %598, 127
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %600
  %602 = load i32, i32* %601, align 4
  %603 = icmp eq i32 %602, 6
  br i1 %603, label %621, label %604

; <label>:604:                                    ; preds = %587
  %605 = load %union.tree_node*, %union.tree_node** %14, align 8
  %606 = bitcast %union.tree_node* %605 to %struct.tree_common*
  %607 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %606, i32 0, i32 1
  %608 = load %union.tree_node*, %union.tree_node** %607, align 8
  %609 = bitcast %union.tree_node* %608 to %struct.tree_common*
  %610 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %609, i32 0, i32 1
  %611 = load %union.tree_node*, %union.tree_node** %610, align 8
  %612 = bitcast %union.tree_node* %611 to %struct.tree_type*
  %613 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %612, i32 0, i32 6
  %614 = load i32, i32* %613, align 4
  %615 = lshr i32 %614, 9
  %616 = and i32 %615, 127
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %617
  %619 = load i32, i32* %618, align 4
  %620 = icmp eq i32 %619, 8
  br i1 %620, label %621, label %678

; <label>:621:                                    ; preds = %604, %587, %570
  %622 = load %struct.function*, %struct.function** @cfun, align 8
  %623 = getelementptr inbounds %struct.function, %struct.function* %622, i32 0, i32 6
  %624 = load %union.tree_node*, %union.tree_node** %623, align 8
  %625 = bitcast %union.tree_node* %624 to %struct.tree_common*
  %626 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %625, i32 0, i32 1
  %627 = load %union.tree_node*, %union.tree_node** %626, align 8
  %628 = bitcast %union.tree_node* %627 to %struct.tree_common*
  %629 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %628, i32 0, i32 1
  %630 = load %union.tree_node*, %union.tree_node** %629, align 8
  %631 = bitcast %union.tree_node* %630 to %struct.tree_type*
  %632 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %631, i32 0, i32 6
  %633 = load i32, i32* %632, align 4
  %634 = lshr i32 %633, 9
  %635 = and i32 %634, 127
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %636
  %638 = load i32, i32* %637, align 4
  %639 = icmp eq i32 %638, 2
  br i1 %639, label %678, label %640

; <label>:640:                                    ; preds = %621
  %641 = load %struct.function*, %struct.function** @cfun, align 8
  %642 = getelementptr inbounds %struct.function, %struct.function* %641, i32 0, i32 6
  %643 = load %union.tree_node*, %union.tree_node** %642, align 8
  %644 = bitcast %union.tree_node* %643 to %struct.tree_common*
  %645 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %644, i32 0, i32 1
  %646 = load %union.tree_node*, %union.tree_node** %645, align 8
  %647 = bitcast %union.tree_node* %646 to %struct.tree_common*
  %648 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %647, i32 0, i32 1
  %649 = load %union.tree_node*, %union.tree_node** %648, align 8
  %650 = bitcast %union.tree_node* %649 to %struct.tree_type*
  %651 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %650, i32 0, i32 6
  %652 = load i32, i32* %651, align 4
  %653 = lshr i32 %652, 9
  %654 = and i32 %653, 127
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %655
  %657 = load i32, i32* %656, align 4
  %658 = icmp eq i32 %657, 6
  br i1 %658, label %678, label %659

; <label>:659:                                    ; preds = %640
  %660 = load %struct.function*, %struct.function** @cfun, align 8
  %661 = getelementptr inbounds %struct.function, %struct.function* %660, i32 0, i32 6
  %662 = load %union.tree_node*, %union.tree_node** %661, align 8
  %663 = bitcast %union.tree_node* %662 to %struct.tree_common*
  %664 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %663, i32 0, i32 1
  %665 = load %union.tree_node*, %union.tree_node** %664, align 8
  %666 = bitcast %union.tree_node* %665 to %struct.tree_common*
  %667 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %666, i32 0, i32 1
  %668 = load %union.tree_node*, %union.tree_node** %667, align 8
  %669 = bitcast %union.tree_node* %668 to %struct.tree_type*
  %670 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %669, i32 0, i32 6
  %671 = load i32, i32* %670, align 4
  %672 = lshr i32 %671, 9
  %673 = and i32 %672, 127
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %674
  %676 = load i32, i32* %675, align 4
  %677 = icmp eq i32 %676, 8
  br i1 %677, label %678, label %703

; <label>:678:                                    ; preds = %659, %640, %621, %604, %566
  %679 = getelementptr inbounds %struct.args_size, %struct.args_size* %27, i32 0, i32 0
  %680 = load i64, i64* %679, align 8
  %681 = load %struct.function*, %struct.function** @cfun, align 8
  %682 = getelementptr inbounds %struct.function, %struct.function* %681, i32 0, i32 9
  %683 = load i32, i32* %682, align 4
  %684 = sext i32 %683 to i64
  %685 = icmp sgt i64 %680, %684
  br i1 %685, label %703, label %686

; <label>:686:                                    ; preds = %678
  %687 = load %union.tree_node*, %union.tree_node** %14, align 8
  %688 = load %union.tree_node*, %union.tree_node** %13, align 8
  %689 = getelementptr inbounds %struct.args_size, %struct.args_size* %27, i32 0, i32 0
  %690 = load i64, i64* %689, align 8
  %691 = trunc i64 %690 to i32
  %692 = call i32 @ix86_return_pops_args(%union.tree_node* %687, %union.tree_node* %688, i32 %691)
  %693 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %694 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %695 = bitcast %union.tree_node* %694 to %struct.tree_common*
  %696 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %695, i32 0, i32 1
  %697 = load %union.tree_node*, %union.tree_node** %696, align 8
  %698 = load %struct.function*, %struct.function** @cfun, align 8
  %699 = getelementptr inbounds %struct.function, %struct.function* %698, i32 0, i32 9
  %700 = load i32, i32* %699, align 4
  %701 = call i32 @ix86_return_pops_args(%union.tree_node* %693, %union.tree_node* %697, i32 %700)
  %702 = icmp ne i32 %692, %701
  br i1 %702, label %703, label %704

; <label>:703:                                    ; preds = %686, %678, %659, %558, %552, %544, %540, %537, %534, %531
  store i32 0, i32* %16, align 4
  br label %704

; <label>:704:                                    ; preds = %703, %686
  %705 = load i32, i32* %16, align 4
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %710, label %707

; <label>:707:                                    ; preds = %704
  %708 = load i32, i32* %17, align 4
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %800

; <label>:710:                                    ; preds = %707, %704
  store %union.tree_node* null, %union.tree_node** %8, align 8
  %711 = load i32, i32* @target_flags, align 4
  %712 = and i32 %711, 2048
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %720, label %714

; <label>:714:                                    ; preds = %710
  %715 = load i32, i32* @target_flags, align 4
  %716 = and i32 %715, 4096
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %720, label %718

; <label>:718:                                    ; preds = %714
  store i32 1, i32* %56, align 4
  store i32 0, i32* %49, align 4
  %719 = load i32, i32* %24, align 4
  store i32 %719, i32* %55, align 4
  br label %723

; <label>:720:                                    ; preds = %714, %710
  store i32 -1, i32* %56, align 4
  %721 = load i32, i32* %24, align 4
  %722 = sub nsw i32 %721, 1
  store i32 %722, i32* %49, align 4
  store i32 -1, i32* %55, align 4
  br label %723

; <label>:723:                                    ; preds = %720, %718
  br label %724

; <label>:724:                                    ; preds = %791, %723
  %725 = load i32, i32* %49, align 4
  %726 = load i32, i32* %55, align 4
  %727 = icmp ne i32 %725, %726
  br i1 %727, label %728, label %795

; <label>:728:                                    ; preds = %724
  %729 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %730 = load i32, i32* %49, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %729, i64 %731
  %733 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %732, i32 0, i32 0
  %734 = load %union.tree_node*, %union.tree_node** %733, align 8
  %735 = call i32 @unsafe_for_reeval(%union.tree_node* %734)
  switch i32 %735, label %777 [
    i32 0, label %736
    i32 1, label %737
    i32 2, label %750
  ]

; <label>:736:                                    ; preds = %728
  br label %778

; <label>:737:                                    ; preds = %728
  %738 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %739 = load i32, i32* %49, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %738, i64 %740
  %742 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %741, i32 0, i32 0
  %743 = load %union.tree_node*, %union.tree_node** %742, align 8
  %744 = call %union.tree_node* @unsave_expr(%union.tree_node* %743)
  %745 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %746 = load i32, i32* %49, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %745, i64 %747
  %749 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %748, i32 0, i32 0
  store %union.tree_node* %744, %union.tree_node** %749, align 8
  br label %778

; <label>:750:                                    ; preds = %728
  %751 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %752 = load i32, i32* %49, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %751, i64 %753
  %755 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %754, i32 0, i32 0
  %756 = load %union.tree_node*, %union.tree_node** %755, align 8
  %757 = bitcast %union.tree_node* %756 to %struct.tree_common*
  %758 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %757, i32 0, i32 1
  %759 = load %union.tree_node*, %union.tree_node** %758, align 8
  %760 = call %union.tree_node* @build_decl(i32 34, %union.tree_node* null, %union.tree_node* %759)
  store %union.tree_node* %760, %union.tree_node** %57, align 8
  %761 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %762 = load i32, i32* %49, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %761, i64 %763
  %765 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %764, i32 0, i32 0
  %766 = load %union.tree_node*, %union.tree_node** %765, align 8
  %767 = call %struct.rtx_def* @expand_expr(%union.tree_node* %766, %struct.rtx_def* null, i32 0, i32 0)
  %768 = load %union.tree_node*, %union.tree_node** %57, align 8
  %769 = bitcast %union.tree_node* %768 to %struct.tree_decl*
  %770 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %769, i32 0, i32 17
  store %struct.rtx_def* %767, %struct.rtx_def** %770, align 8
  %771 = load %union.tree_node*, %union.tree_node** %57, align 8
  %772 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %773 = load i32, i32* %49, align 4
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %772, i64 %774
  %776 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %775, i32 0, i32 0
  store %union.tree_node* %771, %union.tree_node** %776, align 8
  br label %778

; <label>:777:                                    ; preds = %728
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 2528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_call, i32 0, i32 0)) #8
  unreachable

; <label>:778:                                    ; preds = %750, %737, %736
  %779 = load i32, i32* %17, align 4
  %780 = icmp ne i32 %779, 0
  br i1 %780, label %781, label %790

; <label>:781:                                    ; preds = %778
  %782 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %783 = load i32, i32* %49, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %782, i64 %784
  %786 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %785, i32 0, i32 0
  %787 = load %union.tree_node*, %union.tree_node** %786, align 8
  %788 = load %union.tree_node*, %union.tree_node** %8, align 8
  %789 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %787, %union.tree_node* %788)
  store %union.tree_node* %789, %union.tree_node** %8, align 8
  br label %790

; <label>:790:                                    ; preds = %781, %778
  br label %791

; <label>:791:                                    ; preds = %790
  %792 = load i32, i32* %56, align 4
  %793 = load i32, i32* %49, align 4
  %794 = add nsw i32 %793, %792
  store i32 %794, i32* %49, align 4
  br label %724

; <label>:795:                                    ; preds = %724
  %796 = call i32 @any_pending_cleanups(i32 1)
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %798, label %799

; <label>:798:                                    ; preds = %795
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %799

; <label>:799:                                    ; preds = %798, %795
  br label %800

; <label>:800:                                    ; preds = %799, %707
  %801 = load i32, i32* %17, align 4
  %802 = icmp ne i32 %801, 0
  br i1 %802, label %803, label %836

; <label>:803:                                    ; preds = %800
  %804 = load %struct.function*, %struct.function** @cfun, align 8
  %805 = getelementptr inbounds %struct.function, %struct.function* %804, i32 0, i32 2
  %806 = load %struct.expr_status*, %struct.expr_status** %805, align 8
  %807 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %806, i32 0, i32 0
  %808 = load i32, i32* %807, align 8
  store i32 %808, i32* %58, align 4
  %809 = load %struct.function*, %struct.function** @cfun, align 8
  %810 = getelementptr inbounds %struct.function, %struct.function* %809, i32 0, i32 2
  %811 = load %struct.expr_status*, %struct.expr_status** %810, align 8
  %812 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %811, i32 0, i32 2
  %813 = load i32, i32* %812, align 8
  store i32 %813, i32* %59, align 4
  call void @emit_queue()
  call void @start_sequence()
  call void @expand_start_target_temps()
  %814 = load %union.tree_node*, %union.tree_node** %8, align 8
  %815 = call %struct.rtx_def* @get_last_insn()
  %816 = call i32 @optimize_tail_recursion(%union.tree_node* %814, %struct.rtx_def* %815)
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %818, label %825

; <label>:818:                                    ; preds = %803
  %819 = call i32 @any_pending_cleanups(i32 1)
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %821, label %822

; <label>:821:                                    ; preds = %818
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %824

; <label>:822:                                    ; preds = %818
  %823 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %823, %struct.rtx_def** %10, align 8
  br label %824

; <label>:824:                                    ; preds = %822, %821
  br label %825

; <label>:825:                                    ; preds = %824, %803
  call void @expand_end_target_temps()
  call void @end_sequence()
  %826 = load i32, i32* %58, align 4
  %827 = load %struct.function*, %struct.function** @cfun, align 8
  %828 = getelementptr inbounds %struct.function, %struct.function* %827, i32 0, i32 2
  %829 = load %struct.expr_status*, %struct.expr_status** %828, align 8
  %830 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %829, i32 0, i32 0
  store i32 %826, i32* %830, align 8
  %831 = load i32, i32* %59, align 4
  %832 = load %struct.function*, %struct.function** @cfun, align 8
  %833 = getelementptr inbounds %struct.function, %struct.function* %832, i32 0, i32 2
  %834 = load %struct.expr_status*, %struct.expr_status** %833, align 8
  %835 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %834, i32 0, i32 2
  store i32 %831, i32* %835, align 8
  br label %836

; <label>:836:                                    ; preds = %825, %800
  %837 = load i32, i32* @profile_arc_flag, align 4
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %839, label %849

; <label>:839:                                    ; preds = %836
  %840 = load i32, i32* %35, align 4
  %841 = and i32 %840, 128
  %842 = icmp ne i32 %841, 0
  br i1 %842, label %843, label %849

; <label>:843:                                    ; preds = %839
  %844 = load i32, i32* @target_flags, align 4
  %845 = and i32 %844, 33554432
  %846 = icmp ne i32 %845, 0
  %847 = select i1 %846, i32 5, i32 4
  %848 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %847, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  call void (%struct.rtx_def*, i32, i32, i32, ...) @emit_library_call(%struct.rtx_def* %848, i32 7, i32 0, i32 0)
  br label %849

; <label>:849:                                    ; preds = %843, %839, %836
  %850 = load %struct.function*, %struct.function** @cfun, align 8
  %851 = getelementptr inbounds %struct.function, %struct.function* %850, i32 0, i32 53
  %852 = load i32, i32* %851, align 4
  %853 = sext i32 %852 to i64
  %854 = load i64, i64* %50, align 8
  %855 = icmp slt i64 %853, %854
  br i1 %855, label %856, label %865

; <label>:856:                                    ; preds = %849
  %857 = load %union.tree_node*, %union.tree_node** %14, align 8
  %858 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %859 = icmp ne %union.tree_node* %857, %858
  br i1 %859, label %860, label %865

; <label>:860:                                    ; preds = %856
  %861 = load i64, i64* %50, align 8
  %862 = trunc i64 %861 to i32
  %863 = load %struct.function*, %struct.function** @cfun, align 8
  %864 = getelementptr inbounds %struct.function, %struct.function* %863, i32 0, i32 53
  store i32 %862, i32* %864, align 4
  br label %865

; <label>:865:                                    ; preds = %860, %856, %849
  %866 = load i64, i64* %50, align 8
  %867 = sdiv i64 %866, 8
  store i64 %867, i64* %51, align 8
  %868 = load %struct.function*, %struct.function** @cfun, align 8
  %869 = getelementptr inbounds %struct.function, %struct.function* %868, i32 0, i32 18
  %870 = load i32, i32* %869, align 8
  %871 = add nsw i32 %870, 1
  store i32 %871, i32* %869, align 8
  store i32 0, i32* %18, align 4
  br label %872

; <label>:872:                                    ; preds = %2164, %865
  %873 = load i32, i32* %18, align 4
  %874 = icmp slt i32 %873, 2
  br i1 %874, label %875, label %2167

; <label>:875:                                    ; preds = %872
  store i32 0, i32* %60, align 4
  store i32 0, i32* %61, align 4
  store i32 0, i32* %62, align 4
  %876 = load i32, i32* %18, align 4
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %893

; <label>:878:                                    ; preds = %875
  %879 = load i32, i32* %16, align 4
  %880 = icmp ne i32 %879, 0
  br i1 %880, label %882, label %881

; <label>:881:                                    ; preds = %878
  br label %2164

; <label>:882:                                    ; preds = %878
  call void @emit_queue()
  %883 = load %struct.function*, %struct.function** @cfun, align 8
  %884 = getelementptr inbounds %struct.function, %struct.function* %883, i32 0, i32 2
  %885 = load %struct.expr_status*, %struct.expr_status** %884, align 8
  %886 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 8
  store i32 %887, i32* %61, align 4
  %888 = load %struct.function*, %struct.function** @cfun, align 8
  %889 = getelementptr inbounds %struct.function, %struct.function* %888, i32 0, i32 2
  %890 = load %struct.expr_status*, %struct.expr_status** %889, align 8
  %891 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %890, i32 0, i32 2
  %892 = load i32, i32* %891, align 8
  store i32 %892, i32* %62, align 4
  br label %893

; <label>:893:                                    ; preds = %882, %875
  %894 = load i32, i32* %18, align 4
  %895 = icmp ne i32 %894, 0
  br i1 %895, label %896, label %899

; <label>:896:                                    ; preds = %893
  %897 = load i32, i32* %35, align 4
  %898 = and i32 %897, -257
  store i32 %898, i32* %35, align 4
  br label %902

; <label>:899:                                    ; preds = %893
  %900 = load i32, i32* %35, align 4
  %901 = or i32 %900, 256
  store i32 %901, i32* %35, align 4
  br label %902

; <label>:902:                                    ; preds = %899, %896
  store %struct.rtx_def* null, %struct.rtx_def** %34, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %47, align 8
  call void @start_sequence()
  %903 = load i32, i32* %18, align 4
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %905, label %906

; <label>:905:                                    ; preds = %902
  call void @expand_start_target_temps()
  br label %906

; <label>:906:                                    ; preds = %905, %902
  %907 = load %struct.function*, %struct.function** @cfun, align 8
  %908 = getelementptr inbounds %struct.function, %struct.function* %907, i32 0, i32 2
  %909 = load %struct.expr_status*, %struct.expr_status** %908, align 8
  %910 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %909, i32 0, i32 0
  %911 = load i32, i32* %910, align 8
  %912 = icmp sge i32 %911, 32
  br i1 %912, label %927, label %913

; <label>:913:                                    ; preds = %906
  %914 = load %struct.function*, %struct.function** @cfun, align 8
  %915 = getelementptr inbounds %struct.function, %struct.function* %914, i32 0, i32 2
  %916 = load %struct.expr_status*, %struct.expr_status** %915, align 8
  %917 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %916, i32 0, i32 0
  %918 = load i32, i32* %917, align 8
  %919 = icmp sgt i32 %918, 0
  br i1 %919, label %920, label %924

; <label>:920:                                    ; preds = %913
  %921 = load i32, i32* %35, align 4
  %922 = and i32 %921, 1032
  %923 = icmp ne i32 %922, 0
  br i1 %923, label %927, label %924

; <label>:924:                                    ; preds = %920, %913
  %925 = load i32, i32* %18, align 4
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %927, label %928

; <label>:927:                                    ; preds = %924, %920, %906
  call void @do_pending_stack_adjust()
  br label %928

; <label>:928:                                    ; preds = %927, %924
  %929 = load i32, i32* %18, align 4
  %930 = icmp ne i32 %929, 0
  br i1 %930, label %931, label %942

; <label>:931:                                    ; preds = %928
  %932 = load i32, i32* %35, align 4
  %933 = and i32 %932, 4096
  %934 = icmp ne i32 %933, 0
  br i1 %934, label %935, label %942

; <label>:935:                                    ; preds = %931
  %936 = load %struct.function*, %struct.function** @cfun, align 8
  %937 = getelementptr inbounds %struct.function, %struct.function* %936, i32 0, i32 2
  %938 = load %struct.expr_status*, %struct.expr_status** %937, align 8
  %939 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %938, i32 0, i32 1
  %940 = load i32, i32* %939, align 4
  %941 = add nsw i32 %940, 1
  store i32 %941, i32* %939, align 4
  br label %942

; <label>:942:                                    ; preds = %935, %931, %928
  %943 = load i32, i32* %18, align 4
  %944 = icmp ne i32 %943, 0
  br i1 %944, label %945, label %949

; <label>:945:                                    ; preds = %942
  %946 = load i32, i32* %35, align 4
  %947 = load i32, i32* %24, align 4
  %948 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  call void @precompute_arguments(i32 %946, i32 %947, %struct.arg_data* %948)
  br label %949

; <label>:949:                                    ; preds = %945, %942
  %950 = load i32, i32* %18, align 4
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %952, label %957

; <label>:952:                                    ; preds = %949
  %953 = load i32, i32* %35, align 4
  %954 = and i32 %953, 4100
  %955 = icmp ne i32 %954, 0
  br i1 %955, label %956, label %957

; <label>:956:                                    ; preds = %952
  call void @start_sequence()
  br label %957

; <label>:957:                                    ; preds = %956, %952, %949
  %958 = bitcast %struct.args_size* %28 to i8*
  %959 = bitcast %struct.args_size* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %958, i8* %959, i64 16, i32 8, i1 false)
  %960 = load i32, i32* %33, align 4
  %961 = load i32, i32* %18, align 4
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %963, label %964

; <label>:963:                                    ; preds = %957
  br label %966

; <label>:964:                                    ; preds = %957
  %965 = load i64, i64* %50, align 8
  br label %966

; <label>:966:                                    ; preds = %964, %963
  %967 = phi i64 [ 0, %963 ], [ %965, %964 ]
  %968 = trunc i64 %967 to i32
  %969 = call i32 @compute_argument_block_size(i32 %960, %struct.args_size* %28, i32 %968)
  store i32 %969, i32* %29, align 4
  %970 = load %struct.function*, %struct.function** @cfun, align 8
  %971 = getelementptr inbounds %struct.function, %struct.function* %970, i32 0, i32 2
  %972 = load %struct.expr_status*, %struct.expr_status** %971, align 8
  %973 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %972, i32 0, i32 2
  %974 = load i32, i32* %973, align 8
  %975 = load %struct.function*, %struct.function** @cfun, align 8
  %976 = getelementptr inbounds %struct.function, %struct.function* %975, i32 0, i32 2
  %977 = load %struct.expr_status*, %struct.expr_status** %976, align 8
  %978 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %977, i32 0, i32 0
  %979 = load i32, i32* %978, align 8
  %980 = sub nsw i32 %974, %979
  store i32 %980, i32* %46, align 4
  %981 = load i32, i32* %18, align 4
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %983, label %990

; <label>:983:                                    ; preds = %966
  %984 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 6), align 16
  store %struct.rtx_def* %984, %struct.rtx_def** %34, align 8
  %985 = getelementptr inbounds %struct.args_size, %struct.args_size* %27, i32 0, i32 0
  %986 = load i64, i64* %985, align 8
  %987 = trunc i64 %986 to i32
  %988 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %987)
  store %struct.simple_bitmap_def* %988, %struct.simple_bitmap_def** @stored_args_map, align 8
  %989 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @stored_args_map, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %989)
  br label %1195

; <label>:990:                                    ; preds = %966
  %991 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 1
  %992 = load %union.tree_node*, %union.tree_node** %991, align 8
  %993 = icmp ne %union.tree_node* %992, null
  br i1 %993, label %994, label %1039

; <label>:994:                                    ; preds = %990
  %995 = load %struct.rtx_def*, %struct.rtx_def** %43, align 8
  %996 = icmp eq %struct.rtx_def* %995, null
  br i1 %996, label %997, label %1008

; <label>:997:                                    ; preds = %994
  call void @emit_stack_save(i32 0, %struct.rtx_def** %43, %struct.rtx_def* null)
  %998 = load %struct.function*, %struct.function** @cfun, align 8
  %999 = getelementptr inbounds %struct.function, %struct.function* %998, i32 0, i32 2
  %1000 = load %struct.expr_status*, %struct.expr_status** %999, align 8
  %1001 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1000, i32 0, i32 0
  %1002 = load i32, i32* %1001, align 8
  store i32 %1002, i32* %44, align 4
  %1003 = load %struct.function*, %struct.function** @cfun, align 8
  %1004 = getelementptr inbounds %struct.function, %struct.function* %1003, i32 0, i32 2
  %1005 = load %struct.expr_status*, %struct.expr_status** %1004, align 8
  %1006 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1005, i32 0, i32 0
  store i32 0, i32* %1006, align 8
  %1007 = load i32, i32* @stack_arg_under_construction, align 4
  store i32 %1007, i32* %42, align 4
  store i32 0, i32* @stack_arg_under_construction, align 4
  br label %1008

; <label>:1008:                                   ; preds = %997, %994
  %1009 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 1
  %1010 = load %union.tree_node*, %union.tree_node** %1009, align 8
  %1011 = icmp eq %union.tree_node* %1010, null
  br i1 %1011, label %1012, label %1016

; <label>:1012:                                   ; preds = %1008
  %1013 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 0
  %1014 = load i64, i64* %1013, align 8
  %1015 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %1014)
  br label %1036

; <label>:1016:                                   ; preds = %1008
  %1017 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 1
  %1018 = load %union.tree_node*, %union.tree_node** %1017, align 8
  %1019 = icmp eq %union.tree_node* %1018, null
  br i1 %1019, label %1020, label %1024

; <label>:1020:                                   ; preds = %1016
  %1021 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 0
  %1022 = load i64, i64* %1021, align 8
  %1023 = call %union.tree_node* @size_int_wide(i64 %1022, i32 1)
  br label %1033

; <label>:1024:                                   ; preds = %1016
  %1025 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %1026 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 1
  %1027 = load %union.tree_node*, %union.tree_node** %1026, align 8
  %1028 = call %union.tree_node* @convert(%union.tree_node* %1025, %union.tree_node* %1027)
  %1029 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 0
  %1030 = load i64, i64* %1029, align 8
  %1031 = call %union.tree_node* @size_int_wide(i64 %1030, i32 1)
  %1032 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %1028, %union.tree_node* %1031)
  br label %1033

; <label>:1033:                                   ; preds = %1024, %1020
  %1034 = phi %union.tree_node* [ %1023, %1020 ], [ %1032, %1024 ]
  %1035 = call %struct.rtx_def* @expand_expr(%union.tree_node* %1034, %struct.rtx_def* null, i32 0, i32 0)
  br label %1036

; <label>:1036:                                   ; preds = %1033, %1012
  %1037 = phi %struct.rtx_def* [ %1015, %1012 ], [ %1035, %1033 ]
  %1038 = call %struct.rtx_def* @push_block(%struct.rtx_def* %1037, i32 0, i32 0)
  store %struct.rtx_def* %1038, %struct.rtx_def** %34, align 8
  br label %1194

; <label>:1039:                                   ; preds = %990
  %1040 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 0
  %1041 = load i64, i64* %1040, align 8
  %1042 = trunc i64 %1041 to i32
  store i32 %1042, i32* %66, align 4
  %1043 = load i32, i32* %66, align 4
  %1044 = load %struct.function*, %struct.function** @cfun, align 8
  %1045 = getelementptr inbounds %struct.function, %struct.function* %1044, i32 0, i32 11
  %1046 = load i32, i32* %1045, align 4
  %1047 = icmp sgt i32 %1043, %1046
  br i1 %1047, label %1048, label %1052

; <label>:1048:                                   ; preds = %1039
  %1049 = load i32, i32* %66, align 4
  %1050 = load %struct.function*, %struct.function** @cfun, align 8
  %1051 = getelementptr inbounds %struct.function, %struct.function* %1050, i32 0, i32 11
  store i32 %1049, i32* %1051, align 4
  br label %1052

; <label>:1052:                                   ; preds = %1048, %1039
  %1053 = load i32, i32* %32, align 4
  %1054 = icmp ne i32 %1053, 0
  br i1 %1054, label %1055, label %1193

; <label>:1055:                                   ; preds = %1052
  %1056 = load i32, i32* @target_flags, align 4
  %1057 = and i32 %1056, 4096
  %1058 = icmp ne i32 %1057, 0
  br i1 %1058, label %1059, label %1097

; <label>:1059:                                   ; preds = %1055
  %1060 = load i32, i32* %33, align 4
  %1061 = load i32, i32* %66, align 4
  %1062 = add nsw i32 %1061, %1060
  store i32 %1062, i32* %66, align 4
  %1063 = load i32, i32* %40, align 4
  %1064 = load i32, i32* %66, align 4
  %1065 = icmp sgt i32 %1063, %1064
  br i1 %1065, label %1066, label %1068

; <label>:1066:                                   ; preds = %1059
  %1067 = load i32, i32* %40, align 4
  br label %1070

; <label>:1068:                                   ; preds = %1059
  %1069 = load i32, i32* %66, align 4
  br label %1070

; <label>:1070:                                   ; preds = %1068, %1066
  %1071 = phi i32 [ %1067, %1066 ], [ %1069, %1068 ]
  store i32 %1071, i32* @highest_outgoing_arg_in_use, align 4
  %1072 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = alloca i8, i64 %1073, align 16
  store i8* %1074, i8** @stack_usage_map, align 8
  %1075 = load i32, i32* %40, align 4
  %1076 = icmp ne i32 %1075, 0
  br i1 %1076, label %1077, label %1082

; <label>:1077:                                   ; preds = %1070
  %1078 = load i8*, i8** @stack_usage_map, align 8
  %1079 = load i8*, i8** %41, align 8
  %1080 = load i32, i32* %40, align 4
  %1081 = sext i32 %1080 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1078, i8* %1079, i64 %1081, i32 1, i1 false)
  br label %1082

; <label>:1082:                                   ; preds = %1077, %1070
  %1083 = load i32, i32* %40, align 4
  %1084 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %1085 = icmp ne i32 %1083, %1084
  br i1 %1085, label %1086, label %1095

; <label>:1086:                                   ; preds = %1082
  %1087 = load i8*, i8** @stack_usage_map, align 8
  %1088 = load i32, i32* %40, align 4
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds i8, i8* %1087, i64 %1089
  %1091 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %1092 = load i32, i32* %40, align 4
  %1093 = sub nsw i32 %1091, %1092
  %1094 = sext i32 %1093 to i64
  call void @llvm.memset.p0i8.i64(i8* %1090, i8 0, i64 %1094, i32 1, i1 false)
  br label %1095

; <label>:1095:                                   ; preds = %1086, %1082
  store i32 0, i32* %66, align 4
  %1096 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 9), align 8
  store %struct.rtx_def* %1096, %struct.rtx_def** %34, align 8
  br label %1192

; <label>:1097:                                   ; preds = %1055
  %1098 = load %struct.function*, %struct.function** @cfun, align 8
  %1099 = getelementptr inbounds %struct.function, %struct.function* %1098, i32 0, i32 2
  %1100 = load %struct.expr_status*, %struct.expr_status** %1099, align 8
  %1101 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1100, i32 0, i32 1
  %1102 = load i32, i32* %1101, align 4
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1104, label %1127

; <label>:1104:                                   ; preds = %1097
  %1105 = load i32, i32* %29, align 4
  %1106 = load i64, i64* %51, align 8
  %1107 = trunc i64 %1106 to i32
  %1108 = call i32 @combine_pending_stack_adjustment_and_call(i32 %1105, %struct.args_size* %28, i32 %1107)
  store i32 %1108, i32* %66, align 4
  %1109 = load i32, i32* %29, align 4
  %1110 = load i32, i32* %66, align 4
  %1111 = sub nsw i32 %1109, %1110
  store i32 %1111, i32* %66, align 4
  %1112 = load i32, i32* %66, align 4
  %1113 = icmp slt i32 %1112, 0
  br i1 %1113, label %1114, label %1121

; <label>:1114:                                   ; preds = %1104
  %1115 = load i32, i32* %66, align 4
  %1116 = sub nsw i32 0, %1115
  %1117 = load %struct.function*, %struct.function** @cfun, align 8
  %1118 = getelementptr inbounds %struct.function, %struct.function* %1117, i32 0, i32 2
  %1119 = load %struct.expr_status*, %struct.expr_status** %1118, align 8
  %1120 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1119, i32 0, i32 0
  store i32 %1116, i32* %1120, align 8
  call void @do_pending_stack_adjust()
  store i32 0, i32* %66, align 4
  br label %1126

; <label>:1121:                                   ; preds = %1104
  %1122 = load %struct.function*, %struct.function** @cfun, align 8
  %1123 = getelementptr inbounds %struct.function, %struct.function* %1122, i32 0, i32 2
  %1124 = load %struct.expr_status*, %struct.expr_status** %1123, align 8
  %1125 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1124, i32 0, i32 0
  store i32 0, i32* %1125, align 8
  br label %1126

; <label>:1126:                                   ; preds = %1121, %1114
  br label %1127

; <label>:1127:                                   ; preds = %1126, %1097
  %1128 = load i32, i32* %66, align 4
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1130, label %1132

; <label>:1130:                                   ; preds = %1127
  %1131 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 9), align 8
  store %struct.rtx_def* %1131, %struct.rtx_def** %34, align 8
  br label %1137

; <label>:1132:                                   ; preds = %1127
  %1133 = load i32, i32* %66, align 4
  %1134 = sext i32 %1133 to i64
  %1135 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %1134)
  %1136 = call %struct.rtx_def* @push_block(%struct.rtx_def* %1135, i32 0, i32 0)
  store %struct.rtx_def* %1136, %struct.rtx_def** %34, align 8
  br label %1137

; <label>:1137:                                   ; preds = %1132, %1130
  %1138 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %1139 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %1138)
  store %struct.rtx_def* %1139, %struct.rtx_def** %34, align 8
  %1140 = load i32, i32* @stack_arg_under_construction, align 4
  %1141 = icmp ne i32 %1140, 0
  br i1 %1141, label %1142, label %1171

; <label>:1142:                                   ; preds = %1137
  %1143 = load i32, i32* %33, align 4
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 0
  %1146 = load i64, i64* %1145, align 8
  %1147 = add nsw i64 %1144, %1146
  %1148 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %1147)
  store %struct.rtx_def* %1148, %struct.rtx_def** %67, align 8
  %1149 = load %struct.rtx_def*, %struct.rtx_def** %43, align 8
  %1150 = icmp eq %struct.rtx_def* %1149, null
  br i1 %1150, label %1151, label %1168

; <label>:1151:                                   ; preds = %1142
  call void @emit_stack_save(i32 0, %struct.rtx_def** %43, %struct.rtx_def* null)
  %1152 = load %struct.function*, %struct.function** @cfun, align 8
  %1153 = getelementptr inbounds %struct.function, %struct.function* %1152, i32 0, i32 2
  %1154 = load %struct.expr_status*, %struct.expr_status** %1153, align 8
  %1155 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1154, i32 0, i32 0
  %1156 = load i32, i32* %1155, align 8
  store i32 %1156, i32* %44, align 4
  %1157 = load %struct.function*, %struct.function** @cfun, align 8
  %1158 = getelementptr inbounds %struct.function, %struct.function* %1157, i32 0, i32 2
  %1159 = load %struct.expr_status*, %struct.expr_status** %1158, align 8
  %1160 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1159, i32 0, i32 0
  store i32 0, i32* %1160, align 8
  %1161 = load i32, i32* @stack_arg_under_construction, align 4
  store i32 %1161, i32* %42, align 4
  store i32 0, i32* @stack_arg_under_construction, align 4
  %1162 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %1163 = sext i32 %1162 to i64
  %1164 = alloca i8, i64 %1163, align 16
  store i8* %1164, i8** @stack_usage_map, align 8
  %1165 = load i8*, i8** @stack_usage_map, align 8
  %1166 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %1167 = sext i32 %1166 to i64
  call void @llvm.memset.p0i8.i64(i8* %1165, i8 0, i64 %1167, i32 1, i1 false)
  store i32 0, i32* @highest_outgoing_arg_in_use, align 4
  br label %1168

; <label>:1168:                                   ; preds = %1151, %1142
  %1169 = load %struct.rtx_def*, %struct.rtx_def** %67, align 8
  %1170 = call %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def* %1169, %struct.rtx_def* null, i32 8)
  br label %1171

; <label>:1171:                                   ; preds = %1168, %1137
  store i32 0, i32* %49, align 4
  br label %1172

; <label>:1172:                                   ; preds = %1188, %1171
  %1173 = load i32, i32* %49, align 4
  %1174 = load i32, i32* %24, align 4
  %1175 = icmp slt i32 %1173, %1174
  br i1 %1175, label %1176, label %1191

; <label>:1176:                                   ; preds = %1172
  %1177 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1178 = load i32, i32* %49, align 4
  %1179 = sext i32 %1178 to i64
  %1180 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1177, i64 %1179
  %1181 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1180, i32 0, i32 8
  %1182 = load i32, i32* %1181, align 8
  %1183 = icmp ne i32 %1182, 0
  br i1 %1183, label %1184, label %1187

; <label>:1184:                                   ; preds = %1176
  %1185 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %1186 = call %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def* %1185)
  store %struct.rtx_def* %1186, %struct.rtx_def** %34, align 8
  br label %1191

; <label>:1187:                                   ; preds = %1176
  br label %1188

; <label>:1188:                                   ; preds = %1187
  %1189 = load i32, i32* %49, align 4
  %1190 = add nsw i32 %1189, 1
  store i32 %1190, i32* %49, align 4
  br label %1172

; <label>:1191:                                   ; preds = %1184, %1172
  br label %1192

; <label>:1192:                                   ; preds = %1191, %1095
  br label %1193

; <label>:1193:                                   ; preds = %1192, %1052
  br label %1194

; <label>:1194:                                   ; preds = %1193, %1036
  br label %1195

; <label>:1195:                                   ; preds = %1194, %983
  %1196 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1197 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %1198 = load i32, i32* %24, align 4
  call void @compute_argument_addresses(%struct.arg_data* %1196, %struct.rtx_def* %1197, i32 %1198)
  %1199 = load i32, i32* @target_flags, align 4
  %1200 = and i32 %1199, 2048
  %1201 = icmp ne i32 %1200, 0
  br i1 %1201, label %1254, label %1202

; <label>:1202:                                   ; preds = %1195
  %1203 = load i32, i32* @target_flags, align 4
  %1204 = and i32 %1203, 4096
  %1205 = icmp ne i32 %1204, 0
  br i1 %1205, label %1254, label %1206

; <label>:1206:                                   ; preds = %1202
  %1207 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %1208 = icmp eq %struct.rtx_def* %1207, null
  br i1 %1208, label %1209, label %1254

; <label>:1209:                                   ; preds = %1206
  %1210 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 0
  %1211 = load i64, i64* %1210, align 8
  %1212 = load i32, i32* %29, align 4
  %1213 = sext i32 %1212 to i64
  %1214 = icmp ne i64 %1211, %1213
  br i1 %1214, label %1215, label %1254

; <label>:1215:                                   ; preds = %1209
  %1216 = load %struct.function*, %struct.function** @cfun, align 8
  %1217 = getelementptr inbounds %struct.function, %struct.function* %1216, i32 0, i32 2
  %1218 = load %struct.expr_status*, %struct.expr_status** %1217, align 8
  %1219 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1218, i32 0, i32 0
  %1220 = load i32, i32* %1219, align 8
  %1221 = icmp ne i32 %1220, 0
  br i1 %1221, label %1222, label %1242

; <label>:1222:                                   ; preds = %1215
  %1223 = load i32, i32* %35, align 4
  %1224 = and i32 %1223, 4096
  %1225 = icmp ne i32 %1224, 0
  br i1 %1225, label %1242, label %1226

; <label>:1226:                                   ; preds = %1222
  %1227 = load %struct.function*, %struct.function** @cfun, align 8
  %1228 = getelementptr inbounds %struct.function, %struct.function* %1227, i32 0, i32 2
  %1229 = load %struct.expr_status*, %struct.expr_status** %1228, align 8
  %1230 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1229, i32 0, i32 1
  %1231 = load i32, i32* %1230, align 4
  %1232 = icmp ne i32 %1231, 0
  br i1 %1232, label %1242, label %1233

; <label>:1233:                                   ; preds = %1226
  %1234 = load i32, i32* %29, align 4
  %1235 = load i64, i64* %51, align 8
  %1236 = trunc i64 %1235 to i32
  %1237 = call i32 @combine_pending_stack_adjustment_and_call(i32 %1234, %struct.args_size* %28, i32 %1236)
  %1238 = load %struct.function*, %struct.function** @cfun, align 8
  %1239 = getelementptr inbounds %struct.function, %struct.function* %1238, i32 0, i32 2
  %1240 = load %struct.expr_status*, %struct.expr_status** %1239, align 8
  %1241 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1240, i32 0, i32 0
  store i32 %1237, i32* %1241, align 8
  call void @do_pending_stack_adjust()
  br label %1253

; <label>:1242:                                   ; preds = %1226, %1222, %1215
  %1243 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %1244 = icmp eq %struct.rtx_def* %1243, null
  br i1 %1244, label %1245, label %1252

; <label>:1245:                                   ; preds = %1242
  %1246 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 0
  %1247 = load i64, i64* %1246, align 8
  %1248 = load i32, i32* %29, align 4
  %1249 = sext i32 %1248 to i64
  %1250 = sub nsw i64 %1247, %1249
  %1251 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %1250)
  call void @anti_adjust_stack(%struct.rtx_def* %1251)
  br label %1252

; <label>:1252:                                   ; preds = %1245, %1242
  br label %1253

; <label>:1253:                                   ; preds = %1252, %1233
  br label %1254

; <label>:1254:                                   ; preds = %1253, %1209, %1206, %1202, %1195
  %1255 = load %struct.function*, %struct.function** @cfun, align 8
  %1256 = getelementptr inbounds %struct.function, %struct.function* %1255, i32 0, i32 2
  %1257 = load %struct.expr_status*, %struct.expr_status** %1256, align 8
  %1258 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1257, i32 0, i32 1
  %1259 = load i32, i32* %1258, align 4
  %1260 = add nsw i32 %1259, 1
  store i32 %1260, i32* %1258, align 4
  %1261 = load %union.tree_node*, %union.tree_node** %14, align 8
  %1262 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1263 = call %struct.rtx_def* @rtx_for_function_call(%union.tree_node* %1261, %union.tree_node* %1262)
  store %struct.rtx_def* %1263, %struct.rtx_def** %9, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %19, align 8
  %1264 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1265 = bitcast %union.tree_node* %1264 to %struct.tree_common*
  %1266 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1265, i32 0, i32 1
  %1267 = load %union.tree_node*, %union.tree_node** %1266, align 8
  %1268 = bitcast %union.tree_node* %1267 to %struct.tree_type*
  %1269 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1268, i32 0, i32 6
  %1270 = load i32, i32* %1269, align 4
  %1271 = lshr i32 %1270, 9
  %1272 = and i32 %1271, 127
  %1273 = icmp ne i32 %1272, 0
  br i1 %1273, label %1274, label %1302

; <label>:1274:                                   ; preds = %1254
  %1275 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %1276 = icmp ne %struct.rtx_def* %1275, null
  br i1 %1276, label %1302, label %1277

; <label>:1277:                                   ; preds = %1274
  %1278 = load i32, i32* %23, align 4
  %1279 = icmp ne i32 %1278, 0
  br i1 %1279, label %1280, label %1291

; <label>:1280:                                   ; preds = %1277
  %1281 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1282 = bitcast %union.tree_node* %1281 to %struct.tree_common*
  %1283 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1282, i32 0, i32 1
  %1284 = load %union.tree_node*, %union.tree_node** %1283, align 8
  %1285 = call %union.tree_node* @build_pointer_type(%union.tree_node* %1284)
  %1286 = load %union.tree_node*, %union.tree_node** %14, align 8
  %1287 = load i32, i32* %18, align 4
  %1288 = icmp eq i32 %1287, 0
  %1289 = zext i1 %1288 to i32
  %1290 = call %struct.rtx_def* @hard_function_value(%union.tree_node* %1285, %union.tree_node* %1286, i32 %1289)
  store %struct.rtx_def* %1290, %struct.rtx_def** %19, align 8
  br label %1301

; <label>:1291:                                   ; preds = %1277
  %1292 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1293 = bitcast %union.tree_node* %1292 to %struct.tree_common*
  %1294 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1293, i32 0, i32 1
  %1295 = load %union.tree_node*, %union.tree_node** %1294, align 8
  %1296 = load %union.tree_node*, %union.tree_node** %14, align 8
  %1297 = load i32, i32* %18, align 4
  %1298 = icmp eq i32 %1297, 0
  %1299 = zext i1 %1298 to i32
  %1300 = call %struct.rtx_def* @hard_function_value(%union.tree_node* %1295, %union.tree_node* %1296, i32 %1299)
  store %struct.rtx_def* %1300, %struct.rtx_def** %19, align 8
  br label %1301

; <label>:1301:                                   ; preds = %1291, %1280
  br label %1302

; <label>:1302:                                   ; preds = %1301, %1274, %1254
  %1303 = load i32, i32* %24, align 4
  %1304 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  call void @precompute_register_parameters(i32 %1303, %struct.arg_data* %1304, i32* %31)
  %1305 = load i32, i32* @target_flags, align 4
  %1306 = and i32 %1305, 4096
  %1307 = icmp ne i32 %1306, 0
  br i1 %1307, label %1308, label %1315

; <label>:1308:                                   ; preds = %1302
  %1309 = load i32, i32* %18, align 4
  %1310 = icmp ne i32 %1309, 0
  br i1 %1310, label %1311, label %1315

; <label>:1311:                                   ; preds = %1308
  %1312 = load i32, i32* %33, align 4
  %1313 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %1314 = call %struct.rtx_def* @save_fixed_argument_area(i32 %1312, %struct.rtx_def* %1313, i32* %37, i32* %38)
  store %struct.rtx_def* %1314, %struct.rtx_def** %39, align 8
  br label %1315

; <label>:1315:                                   ; preds = %1311, %1308, %1302
  store i32 0, i32* %49, align 4
  br label %1316

; <label>:1316:                                   ; preds = %1365, %1315
  %1317 = load i32, i32* %49, align 4
  %1318 = load i32, i32* %24, align 4
  %1319 = icmp slt i32 %1317, %1318
  br i1 %1319, label %1320, label %1368

; <label>:1320:                                   ; preds = %1316
  %1321 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1322 = load i32, i32* %49, align 4
  %1323 = sext i32 %1322 to i64
  %1324 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1321, i64 %1323
  %1325 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1324, i32 0, i32 4
  %1326 = load %struct.rtx_def*, %struct.rtx_def** %1325, align 8
  %1327 = icmp eq %struct.rtx_def* %1326, null
  br i1 %1327, label %1336, label %1328

; <label>:1328:                                   ; preds = %1320
  %1329 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1330 = load i32, i32* %49, align 4
  %1331 = sext i32 %1330 to i64
  %1332 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1329, i64 %1331
  %1333 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1332, i32 0, i32 8
  %1334 = load i32, i32* %1333, align 8
  %1335 = icmp ne i32 %1334, 0
  br i1 %1335, label %1336, label %1364

; <label>:1336:                                   ; preds = %1328, %1320
  %1337 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %1337, %struct.rtx_def** %68, align 8
  %1338 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1339 = load i32, i32* %49, align 4
  %1340 = sext i32 %1339 to i64
  %1341 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1338, i64 %1340
  %1342 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %1343 = load i32, i32* %35, align 4
  %1344 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 1
  %1345 = load %union.tree_node*, %union.tree_node** %1344, align 8
  %1346 = icmp ne %union.tree_node* %1345, null
  %1347 = zext i1 %1346 to i32
  %1348 = load i32, i32* %33, align 4
  %1349 = call i32 @store_one_arg(%struct.arg_data* %1341, %struct.rtx_def* %1342, i32 %1343, i32 %1347, i32 %1348)
  %1350 = icmp ne i32 %1349, 0
  br i1 %1350, label %1362, label %1351

; <label>:1351:                                   ; preds = %1336
  %1352 = load i32, i32* %18, align 4
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1354, label %1363

; <label>:1354:                                   ; preds = %1351
  %1355 = load %struct.rtx_def*, %struct.rtx_def** %68, align 8
  %1356 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1357 = load i32, i32* %49, align 4
  %1358 = sext i32 %1357 to i64
  %1359 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1356, i64 %1358
  %1360 = call i32 @check_sibcall_argument_overlap(%struct.rtx_def* %1355, %struct.arg_data* %1359)
  %1361 = icmp ne i32 %1360, 0
  br i1 %1361, label %1362, label %1363

; <label>:1362:                                   ; preds = %1354, %1336
  store i32 1, i32* %60, align 4
  br label %1363

; <label>:1363:                                   ; preds = %1362, %1354, %1351
  br label %1364

; <label>:1364:                                   ; preds = %1363, %1328
  br label %1365

; <label>:1365:                                   ; preds = %1364
  %1366 = load i32, i32* %49, align 4
  %1367 = add nsw i32 %1366, 1
  store i32 %1367, i32* %49, align 4
  br label %1316

; <label>:1368:                                   ; preds = %1316
  %1369 = load i32, i32* %31, align 4
  %1370 = icmp ne i32 %1369, 0
  br i1 %1370, label %1371, label %1425

; <label>:1371:                                   ; preds = %1368
  store i32 0, i32* %49, align 4
  br label %1372

; <label>:1372:                                   ; preds = %1421, %1371
  %1373 = load i32, i32* %49, align 4
  %1374 = load i32, i32* %24, align 4
  %1375 = icmp slt i32 %1373, %1374
  br i1 %1375, label %1376, label %1424

; <label>:1376:                                   ; preds = %1372
  %1377 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1378 = load i32, i32* %49, align 4
  %1379 = sext i32 %1378 to i64
  %1380 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1377, i64 %1379
  %1381 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1380, i32 0, i32 7
  %1382 = load i32, i32* %1381, align 4
  %1383 = icmp ne i32 %1382, 0
  br i1 %1383, label %1384, label %1420

; <label>:1384:                                   ; preds = %1376
  %1385 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1386 = load i32, i32* %49, align 4
  %1387 = sext i32 %1386 to i64
  %1388 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1385, i64 %1387
  %1389 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1388, i32 0, i32 8
  %1390 = load i32, i32* %1389, align 8
  %1391 = icmp ne i32 %1390, 0
  br i1 %1391, label %1420, label %1392

; <label>:1392:                                   ; preds = %1384
  %1393 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %1393, %struct.rtx_def** %69, align 8
  %1394 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1395 = load i32, i32* %49, align 4
  %1396 = sext i32 %1395 to i64
  %1397 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1394, i64 %1396
  %1398 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %1399 = load i32, i32* %35, align 4
  %1400 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 1
  %1401 = load %union.tree_node*, %union.tree_node** %1400, align 8
  %1402 = icmp ne %union.tree_node* %1401, null
  %1403 = zext i1 %1402 to i32
  %1404 = load i32, i32* %33, align 4
  %1405 = call i32 @store_one_arg(%struct.arg_data* %1397, %struct.rtx_def* %1398, i32 %1399, i32 %1403, i32 %1404)
  %1406 = icmp ne i32 %1405, 0
  br i1 %1406, label %1418, label %1407

; <label>:1407:                                   ; preds = %1392
  %1408 = load i32, i32* %18, align 4
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1410, label %1419

; <label>:1410:                                   ; preds = %1407
  %1411 = load %struct.rtx_def*, %struct.rtx_def** %69, align 8
  %1412 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1413 = load i32, i32* %49, align 4
  %1414 = sext i32 %1413 to i64
  %1415 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1412, i64 %1414
  %1416 = call i32 @check_sibcall_argument_overlap(%struct.rtx_def* %1411, %struct.arg_data* %1415)
  %1417 = icmp ne i32 %1416, 0
  br i1 %1417, label %1418, label %1419

; <label>:1418:                                   ; preds = %1410, %1392
  store i32 1, i32* %60, align 4
  br label %1419

; <label>:1419:                                   ; preds = %1418, %1410, %1407
  br label %1420

; <label>:1420:                                   ; preds = %1419, %1384, %1376
  br label %1421

; <label>:1421:                                   ; preds = %1420
  %1422 = load i32, i32* %49, align 4
  %1423 = add nsw i32 %1422, 1
  store i32 %1423, i32* %49, align 4
  br label %1372

; <label>:1424:                                   ; preds = %1372
  br label %1425

; <label>:1425:                                   ; preds = %1424, %1368
  %1426 = load i32, i32* @target_flags, align 4
  %1427 = and i32 %1426, 2048
  %1428 = icmp ne i32 %1427, 0
  br i1 %1428, label %1433, label %1429

; <label>:1429:                                   ; preds = %1425
  %1430 = load i32, i32* @target_flags, align 4
  %1431 = and i32 %1430, 4096
  %1432 = icmp ne i32 %1431, 0
  br i1 %1432, label %1433, label %1443

; <label>:1433:                                   ; preds = %1429, %1425
  %1434 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %1435 = icmp eq %struct.rtx_def* %1434, null
  br i1 %1435, label %1436, label %1443

; <label>:1436:                                   ; preds = %1433
  %1437 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 0
  %1438 = load i64, i64* %1437, align 8
  %1439 = load i32, i32* %29, align 4
  %1440 = sext i32 %1439 to i64
  %1441 = sub nsw i64 %1438, %1440
  %1442 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %1441)
  call void @anti_adjust_stack(%struct.rtx_def* %1442)
  br label %1443

; <label>:1443:                                   ; preds = %1436, %1433, %1429
  %1444 = load i32, i32* %18, align 4
  %1445 = icmp ne i32 %1444, 0
  br i1 %1445, label %1446, label %1470

; <label>:1446:                                   ; preds = %1443
  %1447 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %1448 = icmp ne %struct.rtx_def* %1447, null
  br i1 %1448, label %1449, label %1470

; <label>:1449:                                   ; preds = %1446
  %1450 = load i32, i32* %21, align 4
  %1451 = icmp ne i32 %1450, 0
  br i1 %1451, label %1470, label %1452

; <label>:1452:                                   ; preds = %1449
  %1453 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %1454 = load i32, i32* @target_flags, align 4
  %1455 = and i32 %1454, 33554432
  %1456 = icmp ne i32 %1455, 0
  %1457 = select i1 %1456, i32 5, i32 4
  %1458 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %1459 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %1458, %struct.rtx_def* null)
  %1460 = call %struct.rtx_def* @force_reg(i32 %1457, %struct.rtx_def* %1459)
  %1461 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1453, %struct.rtx_def* %1460)
  %1462 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %1463 = bitcast %struct.rtx_def* %1462 to i32*
  %1464 = load i32, i32* %1463, align 8
  %1465 = and i32 %1464, 65535
  %1466 = icmp eq i32 %1465, 61
  br i1 %1466, label %1467, label %1469

; <label>:1467:                                   ; preds = %1452
  %1468 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  call void @use_reg(%struct.rtx_def** %47, %struct.rtx_def* %1468)
  br label %1469

; <label>:1469:                                   ; preds = %1467, %1452
  br label %1470

; <label>:1470:                                   ; preds = %1469, %1449, %1446, %1443
  %1471 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %1472 = load %union.tree_node*, %union.tree_node** %14, align 8
  %1473 = load i32, i32* %31, align 4
  %1474 = load i32, i32* %18, align 4
  %1475 = icmp eq i32 %1474, 0
  %1476 = zext i1 %1475 to i32
  %1477 = call %struct.rtx_def* @prepare_call_address(%struct.rtx_def* %1471, %union.tree_node* %1472, %struct.rtx_def** %47, i32 %1473, i32 %1476)
  store %struct.rtx_def* %1477, %struct.rtx_def** %9, align 8
  %1478 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1479 = load i32, i32* %24, align 4
  %1480 = load i32, i32* %35, align 4
  call void @load_register_parameters(%struct.arg_data* %1478, i32 %1479, %struct.rtx_def** %47, i32 %1480)
  call void @emit_queue()
  %1481 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %1481, %struct.rtx_def** %64, align 8
  %1482 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 27), align 8
  %1483 = call %struct.rtx_def* @function_arg(%struct.ix86_args* %30, i32 0, %union.tree_node* %1482, i32 1)
  store %struct.rtx_def* %1483, %struct.rtx_def** %65, align 8
  %1484 = load i32, i32* %18, align 4
  %1485 = icmp ne i32 %1484, 0
  br i1 %1485, label %1486, label %1497

; <label>:1486:                                   ; preds = %1470
  %1487 = load %struct.function*, %struct.function** @cfun, align 8
  %1488 = getelementptr inbounds %struct.function, %struct.function* %1487, i32 0, i32 2
  %1489 = load %struct.expr_status*, %struct.expr_status** %1488, align 8
  %1490 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1489, i32 0, i32 2
  %1491 = load i32, i32* %1490, align 8
  %1492 = sext i32 %1491 to i64
  %1493 = load i64, i64* %51, align 8
  %1494 = srem i64 %1492, %1493
  %1495 = icmp ne i64 %1494, 0
  br i1 %1495, label %1496, label %1497

; <label>:1496:                                   ; preds = %1486
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 3049, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_call, i32 0, i32 0)) #8
  unreachable

; <label>:1497:                                   ; preds = %1486, %1470
  %1498 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %1499 = load %union.tree_node*, %union.tree_node** %14, align 8
  %1500 = load %union.tree_node*, %union.tree_node** %13, align 8
  %1501 = load i32, i32* %29, align 4
  %1502 = sext i32 %1501 to i64
  %1503 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 0
  %1504 = load i64, i64* %1503, align 8
  %1505 = load i64, i64* %22, align 8
  %1506 = load %struct.rtx_def*, %struct.rtx_def** %65, align 8
  %1507 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1508 = load i32, i32* %45, align 4
  %1509 = load %struct.rtx_def*, %struct.rtx_def** %47, align 8
  %1510 = load i32, i32* %35, align 4
  call void @emit_call_1(%struct.rtx_def* %1498, %union.tree_node* %1499, %union.tree_node* %1500, i64 %1502, i64 %1504, i64 %1505, %struct.rtx_def* %1506, %struct.rtx_def* %1507, i32 %1508, %struct.rtx_def* %1509, i32 %1510, %struct.ix86_args* %30)
  %1511 = load i32, i32* %18, align 4
  %1512 = icmp ne i32 %1511, 0
  br i1 %1512, label %1513, label %1528

; <label>:1513:                                   ; preds = %1497
  %1514 = load i32, i32* %46, align 4
  %1515 = load %struct.function*, %struct.function** @cfun, align 8
  %1516 = getelementptr inbounds %struct.function, %struct.function* %1515, i32 0, i32 2
  %1517 = load %struct.expr_status*, %struct.expr_status** %1516, align 8
  %1518 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1517, i32 0, i32 2
  %1519 = load i32, i32* %1518, align 8
  %1520 = load %struct.function*, %struct.function** @cfun, align 8
  %1521 = getelementptr inbounds %struct.function, %struct.function* %1520, i32 0, i32 2
  %1522 = load %struct.expr_status*, %struct.expr_status** %1521, align 8
  %1523 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1522, i32 0, i32 0
  %1524 = load i32, i32* %1523, align 8
  %1525 = sub nsw i32 %1519, %1524
  %1526 = icmp ne i32 %1514, %1525
  br i1 %1526, label %1527, label %1528

; <label>:1527:                                   ; preds = %1513
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 3060, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_call, i32 0, i32 0)) #8
  unreachable

; <label>:1528:                                   ; preds = %1513, %1497
  %1529 = load i32, i32* %18, align 4
  %1530 = icmp ne i32 %1529, 0
  br i1 %1530, label %1531, label %1614

; <label>:1531:                                   ; preds = %1528
  %1532 = load i32, i32* %35, align 4
  %1533 = and i32 %1532, 4096
  %1534 = icmp ne i32 %1533, 0
  br i1 %1534, label %1535, label %1614

; <label>:1535:                                   ; preds = %1531
  %1536 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1537 = icmp eq %struct.rtx_def* %1536, null
  br i1 %1537, label %1544, label %1538

; <label>:1538:                                   ; preds = %1535
  %1539 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1540 = bitcast %struct.rtx_def* %1539 to i32*
  %1541 = load i32, i32* %1540, align 8
  %1542 = and i32 %1541, 65535
  %1543 = icmp eq i32 %1542, 39
  br i1 %1543, label %1544, label %1548

; <label>:1544:                                   ; preds = %1538, %1535
  %1545 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %1545, %struct.rtx_def** %70, align 8
  call void @end_sequence()
  %1546 = load %struct.rtx_def*, %struct.rtx_def** %70, align 8
  %1547 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %1546)
  br label %1613

; <label>:1548:                                   ; preds = %1538
  store %struct.rtx_def* null, %struct.rtx_def** %71, align 8
  %1549 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1550 = bitcast %struct.rtx_def* %1549 to i32*
  %1551 = load i32, i32* %1550, align 8
  %1552 = lshr i32 %1551, 16
  %1553 = and i32 %1552, 255
  %1554 = call %struct.rtx_def* @gen_reg_rtx(i32 %1553)
  store %struct.rtx_def* %1554, %struct.rtx_def** %72, align 8
  %1555 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1556 = bitcast %union.tree_node* %1555 to %struct.tree_common*
  %1557 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1556, i32 0, i32 1
  %1558 = load %union.tree_node*, %union.tree_node** %1557, align 8
  %1559 = bitcast %union.tree_node* %1558 to %struct.tree_common*
  %1560 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1559, i32 0, i32 2
  %1561 = load i32, i32* %1560, align 8
  %1562 = and i32 %1561, 255
  %1563 = icmp eq i32 %1562, 13
  br i1 %1563, label %1564, label %1576

; <label>:1564:                                   ; preds = %1548
  %1565 = load %struct.rtx_def*, %struct.rtx_def** %72, align 8
  %1566 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1567 = bitcast %union.tree_node* %1566 to %struct.tree_common*
  %1568 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1567, i32 0, i32 1
  %1569 = load %union.tree_node*, %union.tree_node** %1568, align 8
  %1570 = bitcast %union.tree_node* %1569 to %struct.tree_common*
  %1571 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1570, i32 0, i32 1
  %1572 = load %union.tree_node*, %union.tree_node** %1571, align 8
  %1573 = bitcast %union.tree_node* %1572 to %struct.tree_type*
  %1574 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1573, i32 0, i32 7
  %1575 = load i32, i32* %1574, align 8
  call void @mark_reg_pointer(%struct.rtx_def* %1565, i32 %1575)
  br label %1576

; <label>:1576:                                   ; preds = %1564, %1548
  store i32 0, i32* %49, align 4
  br label %1577

; <label>:1577:                                   ; preds = %1590, %1576
  %1578 = load i32, i32* %49, align 4
  %1579 = load i32, i32* %24, align 4
  %1580 = icmp slt i32 %1578, %1579
  br i1 %1580, label %1581, label %1593

; <label>:1581:                                   ; preds = %1577
  %1582 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %1583 = load i32, i32* %49, align 4
  %1584 = sext i32 %1583 to i64
  %1585 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1582, i64 %1584
  %1586 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1585, i32 0, i32 3
  %1587 = load %struct.rtx_def*, %struct.rtx_def** %1586, align 8
  %1588 = load %struct.rtx_def*, %struct.rtx_def** %71, align 8
  %1589 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %1587, %struct.rtx_def* %1588)
  store %struct.rtx_def* %1589, %struct.rtx_def** %71, align 8
  br label %1590

; <label>:1590:                                   ; preds = %1581
  %1591 = load i32, i32* %49, align 4
  %1592 = add nsw i32 %1591, 1
  store i32 %1592, i32* %49, align 4
  br label %1577

; <label>:1593:                                   ; preds = %1577
  %1594 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %1595 = load %struct.rtx_def*, %struct.rtx_def** %71, align 8
  %1596 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %1594, %struct.rtx_def* %1595)
  store %struct.rtx_def* %1596, %struct.rtx_def** %71, align 8
  %1597 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %1597, %struct.rtx_def** %70, align 8
  call void @end_sequence()
  %1598 = load i32, i32* %35, align 4
  %1599 = and i32 %1598, 512
  %1600 = icmp ne i32 %1599, 0
  br i1 %1600, label %1601, label %1607

; <label>:1601:                                   ; preds = %1593
  %1602 = call %struct.rtx_def* @gen_rtx_fmt_0(i32 62, i32 0)
  %1603 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %1602)
  %1604 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %1603)
  %1605 = load %struct.rtx_def*, %struct.rtx_def** %71, align 8
  %1606 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %1604, %struct.rtx_def* %1605)
  store %struct.rtx_def* %1606, %struct.rtx_def** %71, align 8
  br label %1607

; <label>:1607:                                   ; preds = %1601, %1593
  %1608 = load %struct.rtx_def*, %struct.rtx_def** %70, align 8
  %1609 = load %struct.rtx_def*, %struct.rtx_def** %72, align 8
  %1610 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1611 = load %struct.rtx_def*, %struct.rtx_def** %71, align 8
  call void @emit_libcall_block(%struct.rtx_def* %1608, %struct.rtx_def* %1609, %struct.rtx_def* %1610, %struct.rtx_def* %1611)
  %1612 = load %struct.rtx_def*, %struct.rtx_def** %72, align 8
  store %struct.rtx_def* %1612, %struct.rtx_def** %19, align 8
  br label %1613

; <label>:1613:                                   ; preds = %1607, %1544
  br label %1660

; <label>:1614:                                   ; preds = %1531, %1528
  %1615 = load i32, i32* %18, align 4
  %1616 = icmp ne i32 %1615, 0
  br i1 %1616, label %1617, label %1659

; <label>:1617:                                   ; preds = %1614
  %1618 = load i32, i32* %35, align 4
  %1619 = and i32 %1618, 4
  %1620 = icmp ne i32 %1619, 0
  br i1 %1620, label %1621, label %1659

; <label>:1621:                                   ; preds = %1617
  %1622 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1623 = bitcast %struct.rtx_def* %1622 to i32*
  %1624 = load i32, i32* %1623, align 8
  %1625 = lshr i32 %1624, 16
  %1626 = and i32 %1625, 255
  %1627 = call %struct.rtx_def* @gen_reg_rtx(i32 %1626)
  store %struct.rtx_def* %1627, %struct.rtx_def** %73, align 8
  %1628 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1629 = bitcast %union.tree_node* %1628 to %struct.tree_common*
  %1630 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1629, i32 0, i32 1
  %1631 = load %union.tree_node*, %union.tree_node** %1630, align 8
  %1632 = bitcast %union.tree_node* %1631 to %struct.tree_common*
  %1633 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1632, i32 0, i32 2
  %1634 = load i32, i32* %1633, align 8
  %1635 = and i32 %1634, 255
  %1636 = icmp eq i32 %1635, 13
  br i1 %1636, label %1637, label %1639

; <label>:1637:                                   ; preds = %1621
  %1638 = load %struct.rtx_def*, %struct.rtx_def** %73, align 8
  call void @mark_reg_pointer(%struct.rtx_def* %1638, i32 128)
  br label %1639

; <label>:1639:                                   ; preds = %1637, %1621
  %1640 = load %struct.rtx_def*, %struct.rtx_def** %73, align 8
  %1641 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1642 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1640, %struct.rtx_def* %1641)
  %1643 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %1643, %struct.rtx_def** %74, align 8
  %1644 = load %struct.rtx_def*, %struct.rtx_def** %73, align 8
  %1645 = load %struct.rtx_def*, %struct.rtx_def** %74, align 8
  %1646 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1645, i32 0, i32 1
  %1647 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1646, i64 0, i64 6
  %1648 = bitcast %union.rtunion_def* %1647 to %struct.rtx_def**
  %1649 = load %struct.rtx_def*, %struct.rtx_def** %1648, align 8
  %1650 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 18, %struct.rtx_def* %1644, %struct.rtx_def* %1649)
  %1651 = load %struct.rtx_def*, %struct.rtx_def** %74, align 8
  %1652 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1651, i32 0, i32 1
  %1653 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1652, i64 0, i64 6
  %1654 = bitcast %union.rtunion_def* %1653 to %struct.rtx_def**
  store %struct.rtx_def* %1650, %struct.rtx_def** %1654, align 8
  %1655 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %1655, %struct.rtx_def** %75, align 8
  call void @end_sequence()
  %1656 = load %struct.rtx_def*, %struct.rtx_def** %75, align 8
  %1657 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %1656)
  %1658 = load %struct.rtx_def*, %struct.rtx_def** %73, align 8
  store %struct.rtx_def* %1658, %struct.rtx_def** %19, align 8
  br label %1659

; <label>:1659:                                   ; preds = %1639, %1617, %1614
  br label %1660

; <label>:1660:                                   ; preds = %1659, %1613
  %1661 = load i32, i32* %35, align 4
  %1662 = and i32 %1661, 66
  %1663 = icmp ne i32 %1662, 0
  br i1 %1663, label %1667, label %1664

; <label>:1664:                                   ; preds = %1660
  %1665 = load i32, i32* %18, align 4
  %1666 = icmp eq i32 %1665, 0
  br i1 %1666, label %1667, label %1689

; <label>:1667:                                   ; preds = %1664, %1660
  %1668 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %1668, %struct.rtx_def** %76, align 8
  br label %1669

; <label>:1669:                                   ; preds = %1685, %1667
  %1670 = load %struct.rtx_def*, %struct.rtx_def** %76, align 8
  %1671 = bitcast %struct.rtx_def* %1670 to i32*
  %1672 = load i32, i32* %1671, align 8
  %1673 = and i32 %1672, 65535
  %1674 = icmp ne i32 %1673, 34
  br i1 %1674, label %1675, label %1686

; <label>:1675:                                   ; preds = %1669
  %1676 = load %struct.rtx_def*, %struct.rtx_def** %76, align 8
  %1677 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1676, i32 0, i32 1
  %1678 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1677, i64 0, i64 1
  %1679 = bitcast %union.rtunion_def* %1678 to %struct.rtx_def**
  %1680 = load %struct.rtx_def*, %struct.rtx_def** %1679, align 8
  store %struct.rtx_def* %1680, %struct.rtx_def** %76, align 8
  %1681 = load %struct.rtx_def*, %struct.rtx_def** %76, align 8
  %1682 = load %struct.rtx_def*, %struct.rtx_def** %64, align 8
  %1683 = icmp eq %struct.rtx_def* %1681, %1682
  br i1 %1683, label %1684, label %1685

; <label>:1684:                                   ; preds = %1675
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 3148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_call, i32 0, i32 0)) #8
  unreachable

; <label>:1685:                                   ; preds = %1675
  br label %1669

; <label>:1686:                                   ; preds = %1669
  %1687 = load %struct.rtx_def*, %struct.rtx_def** %76, align 8
  %1688 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %1687)
  br label %1689

; <label>:1689:                                   ; preds = %1686, %1664
  %1690 = load i32, i32* %35, align 4
  %1691 = and i32 %1690, 64
  %1692 = icmp ne i32 %1691, 0
  br i1 %1692, label %1693, label %1700

; <label>:1693:                                   ; preds = %1689
  %1694 = load %struct.function*, %struct.function** @cfun, align 8
  %1695 = getelementptr inbounds %struct.function, %struct.function* %1694, i32 0, i32 56
  %1696 = bitcast i24* %1695 to i32*
  %1697 = load i32, i32* %1696, align 8
  %1698 = and i32 %1697, -33
  %1699 = or i32 %1698, 32
  store i32 %1699, i32* %1696, align 8
  br label %1700

; <label>:1700:                                   ; preds = %1693, %1689
  %1701 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1702 = icmp ne %struct.rtx_def* %1701, null
  br i1 %1702, label %1703, label %1723

; <label>:1703:                                   ; preds = %1700
  %1704 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1705 = bitcast %struct.rtx_def* %1704 to i32*
  %1706 = load i32, i32* %1705, align 8
  %1707 = and i32 %1706, 65535
  %1708 = icmp eq i32 %1707, 66
  br i1 %1708, label %1709, label %1723

; <label>:1709:                                   ; preds = %1703
  %1710 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %1711 = icmp ne %struct.rtx_def* %1710, null
  br i1 %1711, label %1712, label %1723

; <label>:1712:                                   ; preds = %1709
  %1713 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1714 = bitcast %struct.rtx_def* %1713 to i32*
  %1715 = load i32, i32* %1714, align 8
  %1716 = lshr i32 %1715, 26
  %1717 = and i32 %1716, 1
  %1718 = icmp ne i32 %1717, 0
  br i1 %1718, label %1719, label %1723

; <label>:1719:                                   ; preds = %1712
  %1720 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1721 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 0, %struct.rtx_def* %1720)
  %1722 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %1721)
  br label %1723

; <label>:1723:                                   ; preds = %1719, %1712, %1709, %1703, %1700
  %1724 = call i32 @any_pending_cleanups(i32 1)
  %1725 = icmp ne i32 %1724, 0
  br i1 %1725, label %1726, label %1744

; <label>:1726:                                   ; preds = %1723
  %1727 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1728 = icmp ne %struct.rtx_def* %1727, null
  br i1 %1728, label %1729, label %1743

; <label>:1729:                                   ; preds = %1726
  %1730 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1731 = bitcast %struct.rtx_def* %1730 to i32*
  %1732 = load i32, i32* %1731, align 8
  %1733 = and i32 %1732, 65535
  %1734 = icmp eq i32 %1733, 61
  br i1 %1734, label %1735, label %1743

; <label>:1735:                                   ; preds = %1729
  %1736 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1737 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1736, i32 0, i32 1
  %1738 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1737, i64 0, i64 0
  %1739 = bitcast %union.rtunion_def* %1738 to i32*
  %1740 = load i32, i32* %1739, align 8
  %1741 = icmp ult i32 %1740, 53
  br i1 %1741, label %1742, label %1743

; <label>:1742:                                   ; preds = %1735
  store %struct.rtx_def* null, %struct.rtx_def** %6, align 8
  br label %1743

; <label>:1743:                                   ; preds = %1742, %1735, %1729, %1726
  store i32 1, i32* %60, align 4
  br label %1744

; <label>:1744:                                   ; preds = %1743, %1723
  %1745 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1746 = bitcast %union.tree_node* %1745 to %struct.tree_common*
  %1747 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1746, i32 0, i32 1
  %1748 = load %union.tree_node*, %union.tree_node** %1747, align 8
  %1749 = bitcast %union.tree_node* %1748 to %struct.tree_type*
  %1750 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1749, i32 0, i32 6
  %1751 = load i32, i32* %1750, align 4
  %1752 = lshr i32 %1751, 9
  %1753 = and i32 %1752, 127
  %1754 = icmp eq i32 %1753, 0
  br i1 %1754, label %1758, label %1755

; <label>:1755:                                   ; preds = %1744
  %1756 = load i32, i32* %7, align 4
  %1757 = icmp ne i32 %1756, 0
  br i1 %1757, label %1758, label %1760

; <label>:1758:                                   ; preds = %1755, %1744
  %1759 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  store %struct.rtx_def* %1759, %struct.rtx_def** %6, align 8
  br label %1966

; <label>:1760:                                   ; preds = %1755
  %1761 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %1762 = icmp ne %struct.rtx_def* %1761, null
  br i1 %1762, label %1763, label %1797

; <label>:1763:                                   ; preds = %1760
  %1764 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1765 = icmp eq %struct.rtx_def* %1764, null
  br i1 %1765, label %1772, label %1766

; <label>:1766:                                   ; preds = %1763
  %1767 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1768 = bitcast %struct.rtx_def* %1767 to i32*
  %1769 = load i32, i32* %1768, align 8
  %1770 = and i32 %1769, 65535
  %1771 = icmp ne i32 %1770, 66
  br i1 %1771, label %1772, label %1796

; <label>:1772:                                   ; preds = %1766, %1763
  %1773 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1774 = bitcast %union.tree_node* %1773 to %struct.tree_common*
  %1775 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1774, i32 0, i32 1
  %1776 = load %union.tree_node*, %union.tree_node** %1775, align 8
  %1777 = bitcast %union.tree_node* %1776 to %struct.tree_type*
  %1778 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1777, i32 0, i32 6
  %1779 = load i32, i32* %1778, align 4
  %1780 = lshr i32 %1779, 9
  %1781 = and i32 %1780, 127
  %1782 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1783 = bitcast %union.tree_node* %1782 to %struct.tree_common*
  %1784 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1783, i32 0, i32 1
  %1785 = load %union.tree_node*, %union.tree_node** %1784, align 8
  %1786 = bitcast %union.tree_node* %1785 to %struct.tree_type*
  %1787 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1786, i32 0, i32 6
  %1788 = load i32, i32* %1787, align 4
  %1789 = lshr i32 %1788, 9
  %1790 = and i32 %1789, 127
  %1791 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %1792 = call %struct.rtx_def* @memory_address(i32 %1790, %struct.rtx_def* %1791)
  %1793 = call %struct.rtx_def* @gen_rtx_MEM(i32 %1781, %struct.rtx_def* %1792)
  store %struct.rtx_def* %1793, %struct.rtx_def** %6, align 8
  %1794 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1795 = load %union.tree_node*, %union.tree_node** %5, align 8
  call void @set_mem_attributes(%struct.rtx_def* %1794, %union.tree_node* %1795, i32 1)
  br label %1796

; <label>:1796:                                   ; preds = %1772, %1766
  br label %1965

; <label>:1797:                                   ; preds = %1760
  %1798 = load i32, i32* %23, align 4
  %1799 = icmp ne i32 %1798, 0
  br i1 %1799, label %1800, label %1815

; <label>:1800:                                   ; preds = %1797
  %1801 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1802 = bitcast %union.tree_node* %1801 to %struct.tree_common*
  %1803 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1802, i32 0, i32 1
  %1804 = load %union.tree_node*, %union.tree_node** %1803, align 8
  %1805 = bitcast %union.tree_node* %1804 to %struct.tree_type*
  %1806 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1805, i32 0, i32 6
  %1807 = load i32, i32* %1806, align 4
  %1808 = lshr i32 %1807, 9
  %1809 = and i32 %1808, 127
  %1810 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1811 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %1810)
  %1812 = call %struct.rtx_def* @gen_rtx_MEM(i32 %1809, %struct.rtx_def* %1811)
  store %struct.rtx_def* %1812, %struct.rtx_def** %6, align 8
  %1813 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1814 = load %union.tree_node*, %union.tree_node** %5, align 8
  call void @set_mem_attributes(%struct.rtx_def* %1813, %union.tree_node* %1814, i32 1)
  br label %1964

; <label>:1815:                                   ; preds = %1797
  %1816 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1817 = bitcast %struct.rtx_def* %1816 to i32*
  %1818 = load i32, i32* %1817, align 8
  %1819 = and i32 %1818, 65535
  %1820 = icmp eq i32 %1819, 39
  br i1 %1820, label %1821, label %1904

; <label>:1821:                                   ; preds = %1815
  %1822 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1823 = icmp eq %struct.rtx_def* %1822, null
  br i1 %1823, label %1824, label %1889

; <label>:1824:                                   ; preds = %1821
  %1825 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1826 = bitcast %union.tree_node* %1825 to %struct.tree_common*
  %1827 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1826, i32 0, i32 1
  %1828 = load %union.tree_node*, %union.tree_node** %1827, align 8
  %1829 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1830 = bitcast %union.tree_node* %1829 to %struct.tree_common*
  %1831 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1830, i32 0, i32 1
  %1832 = load %union.tree_node*, %union.tree_node** %1831, align 8
  %1833 = bitcast %union.tree_node* %1832 to %struct.tree_common*
  %1834 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1833, i32 0, i32 2
  %1835 = load i32, i32* %1834, align 8
  %1836 = lshr i32 %1835, 12
  %1837 = and i32 %1836, 1
  %1838 = mul nsw i32 %1837, 1
  %1839 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1840 = bitcast %union.tree_node* %1839 to %struct.tree_common*
  %1841 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1840, i32 0, i32 1
  %1842 = load %union.tree_node*, %union.tree_node** %1841, align 8
  %1843 = bitcast %union.tree_node* %1842 to %struct.tree_common*
  %1844 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1843, i32 0, i32 2
  %1845 = load i32, i32* %1844, align 8
  %1846 = lshr i32 %1845, 11
  %1847 = and i32 %1846, 1
  %1848 = mul nsw i32 %1847, 2
  %1849 = or i32 %1838, %1848
  %1850 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1851 = bitcast %union.tree_node* %1850 to %struct.tree_common*
  %1852 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1851, i32 0, i32 1
  %1853 = load %union.tree_node*, %union.tree_node** %1852, align 8
  %1854 = bitcast %union.tree_node* %1853 to %struct.tree_type*
  %1855 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1854, i32 0, i32 6
  %1856 = load i32, i32* %1855, align 4
  %1857 = lshr i32 %1856, 21
  %1858 = and i32 %1857, 1
  %1859 = mul nsw i32 %1858, 4
  %1860 = or i32 %1849, %1859
  %1861 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1862 = bitcast %union.tree_node* %1861 to %struct.tree_common*
  %1863 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1862, i32 0, i32 1
  %1864 = load %union.tree_node*, %union.tree_node** %1863, align 8
  %1865 = bitcast %union.tree_node* %1864 to %struct.tree_common*
  %1866 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1865, i32 0, i32 2
  %1867 = load i32, i32* %1866, align 8
  %1868 = and i32 %1867, 255
  %1869 = icmp eq i32 %1868, 20
  br i1 %1869, label %1870, label %1879

; <label>:1870:                                   ; preds = %1824
  %1871 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1872 = bitcast %union.tree_node* %1871 to %struct.tree_common*
  %1873 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1872, i32 0, i32 1
  %1874 = load %union.tree_node*, %union.tree_node** %1873, align 8
  %1875 = bitcast %union.tree_node* %1874 to %struct.tree_common*
  %1876 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1875, i32 0, i32 1
  %1877 = load %union.tree_node*, %union.tree_node** %1876, align 8
  %1878 = icmp ne %union.tree_node* %1877, null
  br label %1879

; <label>:1879:                                   ; preds = %1870, %1824
  %1880 = phi i1 [ false, %1824 ], [ %1878, %1870 ]
  %1881 = zext i1 %1880 to i32
  %1882 = mul nsw i32 %1881, 8
  %1883 = or i32 %1860, %1882
  %1884 = or i32 %1883, 1
  %1885 = call %union.tree_node* @build_qualified_type(%union.tree_node* %1828, i32 %1884)
  store %union.tree_node* %1885, %union.tree_node** %77, align 8
  %1886 = load %union.tree_node*, %union.tree_node** %77, align 8
  %1887 = call %struct.rtx_def* @assign_temp(%union.tree_node* %1886, i32 0, i32 1, i32 1)
  store %struct.rtx_def* %1887, %struct.rtx_def** %6, align 8
  %1888 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  call void @preserve_temp_slots(%struct.rtx_def* %1888)
  br label %1889

; <label>:1889:                                   ; preds = %1879, %1821
  %1890 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1891 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1892 = call i32 @rtx_equal_p(%struct.rtx_def* %1890, %struct.rtx_def* %1891)
  %1893 = icmp ne i32 %1892, 0
  br i1 %1893, label %1903, label %1894

; <label>:1894:                                   ; preds = %1889
  %1895 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1896 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1897 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1898 = bitcast %union.tree_node* %1897 to %struct.tree_common*
  %1899 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1898, i32 0, i32 1
  %1900 = load %union.tree_node*, %union.tree_node** %1899, align 8
  %1901 = call i64 @int_size_in_bytes(%union.tree_node* %1900)
  %1902 = trunc i64 %1901 to i32
  call void @emit_group_store(%struct.rtx_def* %1895, %struct.rtx_def* %1896, i32 %1902)
  br label %1903

; <label>:1903:                                   ; preds = %1894, %1889
  store i32 1, i32* %60, align 4
  br label %1963

; <label>:1904:                                   ; preds = %1815
  %1905 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1906 = icmp ne %struct.rtx_def* %1905, null
  br i1 %1906, label %1907, label %1939

; <label>:1907:                                   ; preds = %1904
  %1908 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1909 = bitcast %struct.rtx_def* %1908 to i32*
  %1910 = load i32, i32* %1909, align 8
  %1911 = lshr i32 %1910, 16
  %1912 = and i32 %1911, 255
  %1913 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1914 = bitcast %union.tree_node* %1913 to %struct.tree_common*
  %1915 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1914, i32 0, i32 1
  %1916 = load %union.tree_node*, %union.tree_node** %1915, align 8
  %1917 = bitcast %union.tree_node* %1916 to %struct.tree_type*
  %1918 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1917, i32 0, i32 6
  %1919 = load i32, i32* %1918, align 4
  %1920 = lshr i32 %1919, 9
  %1921 = and i32 %1920, 127
  %1922 = icmp eq i32 %1912, %1921
  br i1 %1922, label %1923, label %1939

; <label>:1923:                                   ; preds = %1907
  %1924 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1925 = bitcast %struct.rtx_def* %1924 to i32*
  %1926 = load i32, i32* %1925, align 8
  %1927 = lshr i32 %1926, 16
  %1928 = and i32 %1927, 255
  %1929 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1930 = bitcast %struct.rtx_def* %1929 to i32*
  %1931 = load i32, i32* %1930, align 8
  %1932 = lshr i32 %1931, 16
  %1933 = and i32 %1932, 255
  %1934 = icmp eq i32 %1928, %1933
  br i1 %1934, label %1935, label %1939

; <label>:1935:                                   ; preds = %1923
  %1936 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1937 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1938 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1936, %struct.rtx_def* %1937)
  br label %1962

; <label>:1939:                                   ; preds = %1923, %1907, %1904
  %1940 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1941 = bitcast %union.tree_node* %1940 to %struct.tree_common*
  %1942 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1941, i32 0, i32 1
  %1943 = load %union.tree_node*, %union.tree_node** %1942, align 8
  %1944 = bitcast %union.tree_node* %1943 to %struct.tree_type*
  %1945 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1944, i32 0, i32 6
  %1946 = load i32, i32* %1945, align 4
  %1947 = lshr i32 %1946, 9
  %1948 = and i32 %1947, 127
  %1949 = icmp eq i32 %1948, 51
  br i1 %1949, label %1950, label %1958

; <label>:1950:                                   ; preds = %1939
  %1951 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %1952 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1953 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1954 = bitcast %union.tree_node* %1953 to %struct.tree_common*
  %1955 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1954, i32 0, i32 1
  %1956 = load %union.tree_node*, %union.tree_node** %1955, align 8
  %1957 = call %struct.rtx_def* @copy_blkmode_from_reg(%struct.rtx_def* %1951, %struct.rtx_def* %1952, %union.tree_node* %1956)
  store %struct.rtx_def* %1957, %struct.rtx_def** %6, align 8
  store i32 1, i32* %60, align 4
  br label %1961

; <label>:1958:                                   ; preds = %1939
  %1959 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %1960 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %1959)
  store %struct.rtx_def* %1960, %struct.rtx_def** %6, align 8
  br label %1961

; <label>:1961:                                   ; preds = %1958, %1950
  br label %1962

; <label>:1962:                                   ; preds = %1961, %1935
  br label %1963

; <label>:1963:                                   ; preds = %1962, %1903
  br label %1964

; <label>:1964:                                   ; preds = %1963, %1800
  br label %1965

; <label>:1965:                                   ; preds = %1964, %1796
  br label %1966

; <label>:1966:                                   ; preds = %1965, %1758
  %1967 = load %struct.rtx_def*, %struct.rtx_def** %43, align 8
  %1968 = icmp ne %struct.rtx_def* %1967, null
  br i1 %1968, label %1969, label %1983

; <label>:1969:                                   ; preds = %1966
  %1970 = load i32, i32* %35, align 4
  %1971 = and i32 %1970, 1024
  %1972 = icmp ne i32 %1971, 0
  br i1 %1972, label %1983, label %1973

; <label>:1973:                                   ; preds = %1969
  %1974 = load %struct.rtx_def*, %struct.rtx_def** %43, align 8
  call void @emit_stack_restore(i32 0, %struct.rtx_def* %1974, %struct.rtx_def* null)
  %1975 = load i32, i32* %44, align 4
  %1976 = load %struct.function*, %struct.function** @cfun, align 8
  %1977 = getelementptr inbounds %struct.function, %struct.function* %1976, i32 0, i32 2
  %1978 = load %struct.expr_status*, %struct.expr_status** %1977, align 8
  %1979 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1978, i32 0, i32 0
  store i32 %1975, i32* %1979, align 8
  %1980 = load i32, i32* %42, align 4
  store i32 %1980, i32* @stack_arg_under_construction, align 4
  %1981 = load i32, i32* %40, align 4
  store i32 %1981, i32* @highest_outgoing_arg_in_use, align 4
  %1982 = load i8*, i8** %41, align 8
  store i8* %1982, i8** @stack_usage_map, align 8
  store i32 1, i32* %60, align 4
  br label %2074

; <label>:1983:                                   ; preds = %1969, %1966
  %1984 = load i32, i32* @target_flags, align 4
  %1985 = and i32 %1984, 4096
  %1986 = icmp ne i32 %1985, 0
  br i1 %1986, label %1987, label %2073

; <label>:1987:                                   ; preds = %1983
  %1988 = load i32, i32* %18, align 4
  %1989 = icmp ne i32 %1988, 0
  br i1 %1989, label %1990, label %2073

; <label>:1990:                                   ; preds = %1987
  %1991 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %1992 = icmp ne %struct.rtx_def* %1991, null
  br i1 %1992, label %1993, label %1998

; <label>:1993:                                   ; preds = %1990
  %1994 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %1995 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %1996 = load i32, i32* %38, align 4
  %1997 = load i32, i32* %37, align 4
  call void @restore_fixed_argument_area(%struct.rtx_def* %1994, %struct.rtx_def* %1995, i32 %1996, i32 %1997)
  br label %1998

; <label>:1998:                                   ; preds = %1993, %1990
  store i32 0, i32* %49, align 4
  br label %1999

; <label>:1999:                                   ; preds = %2067, %1998
  %2000 = load i32, i32* %49, align 4
  %2001 = load i32, i32* %24, align 4
  %2002 = icmp slt i32 %2000, %2001
  br i1 %2002, label %2003, label %2070

; <label>:2003:                                   ; preds = %1999
  %2004 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %2005 = load i32, i32* %49, align 4
  %2006 = sext i32 %2005 to i64
  %2007 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2004, i64 %2006
  %2008 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2007, i32 0, i32 14
  %2009 = load %struct.rtx_def*, %struct.rtx_def** %2008, align 8
  %2010 = icmp ne %struct.rtx_def* %2009, null
  br i1 %2010, label %2011, label %2066

; <label>:2011:                                   ; preds = %2003
  %2012 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %2013 = load i32, i32* %49, align 4
  %2014 = sext i32 %2013 to i64
  %2015 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2012, i64 %2014
  %2016 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2015, i32 0, i32 14
  %2017 = load %struct.rtx_def*, %struct.rtx_def** %2016, align 8
  %2018 = bitcast %struct.rtx_def* %2017 to i32*
  %2019 = load i32, i32* %2018, align 8
  %2020 = lshr i32 %2019, 16
  %2021 = and i32 %2020, 255
  store i32 %2021, i32* %78, align 4
  %2022 = load i32, i32* %78, align 4
  %2023 = load i32, i32* %78, align 4
  %2024 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %2025 = load i32, i32* %49, align 4
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2024, i64 %2026
  %2028 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2027, i32 0, i32 13
  %2029 = load %struct.rtx_def*, %struct.rtx_def** %2028, align 8
  %2030 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %2030, i64 0, i64 0
  %2032 = bitcast %union.rtunion_def* %2031 to %struct.rtx_def**
  %2033 = load %struct.rtx_def*, %struct.rtx_def** %2032, align 8
  %2034 = call %struct.rtx_def* @memory_address(i32 %2023, %struct.rtx_def* %2033)
  %2035 = call %struct.rtx_def* @gen_rtx_MEM(i32 %2022, %struct.rtx_def* %2034)
  store %struct.rtx_def* %2035, %struct.rtx_def** %79, align 8
  %2036 = load i32, i32* %78, align 4
  %2037 = icmp ne i32 %2036, 51
  br i1 %2037, label %2038, label %2047

; <label>:2038:                                   ; preds = %2011
  %2039 = load %struct.rtx_def*, %struct.rtx_def** %79, align 8
  %2040 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %2041 = load i32, i32* %49, align 4
  %2042 = sext i32 %2041 to i64
  %2043 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2040, i64 %2042
  %2044 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2043, i32 0, i32 14
  %2045 = load %struct.rtx_def*, %struct.rtx_def** %2044, align 8
  %2046 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %2039, %struct.rtx_def* %2045)
  br label %2065

; <label>:2047:                                   ; preds = %2011
  %2048 = load %struct.rtx_def*, %struct.rtx_def** %79, align 8
  %2049 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %2050 = load i32, i32* %49, align 4
  %2051 = sext i32 %2050 to i64
  %2052 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2049, i64 %2051
  %2053 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2052, i32 0, i32 14
  %2054 = load %struct.rtx_def*, %struct.rtx_def** %2053, align 8
  %2055 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %2054)
  %2056 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %2057 = load i32, i32* %49, align 4
  %2058 = sext i32 %2057 to i64
  %2059 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2056, i64 %2058
  %2060 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2059, i32 0, i32 11
  %2061 = getelementptr inbounds %struct.args_size, %struct.args_size* %2060, i32 0, i32 0
  %2062 = load i64, i64* %2061, align 8
  %2063 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %2062)
  %2064 = call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %2048, %struct.rtx_def* %2055, %struct.rtx_def* %2063)
  br label %2065

; <label>:2065:                                   ; preds = %2047, %2038
  br label %2066

; <label>:2066:                                   ; preds = %2065, %2003
  br label %2067

; <label>:2067:                                   ; preds = %2066
  %2068 = load i32, i32* %49, align 4
  %2069 = add nsw i32 %2068, 1
  store i32 %2069, i32* %49, align 4
  br label %1999

; <label>:2070:                                   ; preds = %1999
  %2071 = load i32, i32* %40, align 4
  store i32 %2071, i32* @highest_outgoing_arg_in_use, align 4
  %2072 = load i8*, i8** %41, align 8
  store i8* %2072, i8** @stack_usage_map, align 8
  br label %2073

; <label>:2073:                                   ; preds = %2070, %1987, %1983
  br label %2074

; <label>:2074:                                   ; preds = %2073, %1973
  %2075 = load i32, i32* %35, align 4
  %2076 = and i32 %2075, 8
  %2077 = icmp ne i32 %2076, 0
  br i1 %2077, label %2078, label %2086

; <label>:2078:                                   ; preds = %2074
  %2079 = load %struct.function*, %struct.function** @cfun, align 8
  %2080 = getelementptr inbounds %struct.function, %struct.function* %2079, i32 0, i32 20
  %2081 = load %struct.rtx_def*, %struct.rtx_def** %2080, align 8
  %2082 = icmp ne %struct.rtx_def* %2081, null
  br i1 %2082, label %2083, label %2086

; <label>:2083:                                   ; preds = %2078
  %2084 = load %struct.function*, %struct.function** @cfun, align 8
  %2085 = getelementptr inbounds %struct.function, %struct.function* %2084, i32 0, i32 22
  call void @emit_stack_save(i32 2, %struct.rtx_def** %2085, %struct.rtx_def* null)
  br label %2086

; <label>:2086:                                   ; preds = %2083, %2078, %2074
  store i32 0, i32* %49, align 4
  br label %2087

; <label>:2087:                                   ; preds = %2108, %2086
  %2088 = load i32, i32* %49, align 4
  %2089 = load i32, i32* %24, align 4
  %2090 = icmp slt i32 %2088, %2089
  br i1 %2090, label %2091, label %2111

; <label>:2091:                                   ; preds = %2087
  %2092 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %2093 = load i32, i32* %49, align 4
  %2094 = sext i32 %2093 to i64
  %2095 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2092, i64 %2094
  %2096 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2095, i32 0, i32 15
  %2097 = load %struct.rtx_def**, %struct.rtx_def*** %2096, align 8
  %2098 = icmp ne %struct.rtx_def** %2097, null
  br i1 %2098, label %2099, label %2107

; <label>:2099:                                   ; preds = %2091
  %2100 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %2101 = load i32, i32* %49, align 4
  %2102 = sext i32 %2101 to i64
  %2103 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2100, i64 %2102
  %2104 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2103, i32 0, i32 15
  %2105 = load %struct.rtx_def**, %struct.rtx_def*** %2104, align 8
  %2106 = bitcast %struct.rtx_def** %2105 to i8*
  call void @free(i8* %2106) #5
  br label %2107

; <label>:2107:                                   ; preds = %2099, %2091
  br label %2108

; <label>:2108:                                   ; preds = %2107
  %2109 = load i32, i32* %49, align 4
  %2110 = add nsw i32 %2109, 1
  store i32 %2110, i32* %49, align 4
  br label %2087

; <label>:2111:                                   ; preds = %2087
  %2112 = load i32, i32* %18, align 4
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2114, label %2115

; <label>:2114:                                   ; preds = %2111
  call void @expand_end_target_temps()
  br label %2115

; <label>:2115:                                   ; preds = %2114, %2111
  %2116 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %2116, %struct.rtx_def** %63, align 8
  call void @end_sequence()
  %2117 = load i32, i32* %18, align 4
  %2118 = icmp eq i32 %2117, 0
  br i1 %2118, label %2119, label %2157

; <label>:2119:                                   ; preds = %2115
  %2120 = load %struct.rtx_def*, %struct.rtx_def** %63, align 8
  store %struct.rtx_def* %2120, %struct.rtx_def** %12, align 8
  %2121 = load i32, i32* %61, align 4
  %2122 = load %struct.function*, %struct.function** @cfun, align 8
  %2123 = getelementptr inbounds %struct.function, %struct.function* %2122, i32 0, i32 2
  %2124 = load %struct.expr_status*, %struct.expr_status** %2123, align 8
  %2125 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %2124, i32 0, i32 0
  store i32 %2121, i32* %2125, align 8
  %2126 = load i32, i32* %62, align 4
  %2127 = load %struct.function*, %struct.function** @cfun, align 8
  %2128 = getelementptr inbounds %struct.function, %struct.function* %2127, i32 0, i32 2
  %2129 = load %struct.expr_status*, %struct.expr_status** %2128, align 8
  %2130 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %2129, i32 0, i32 2
  store i32 %2126, i32* %2130, align 8
  store i32 0, i32* %49, align 4
  br label %2131

; <label>:2131:                                   ; preds = %2151, %2119
  %2132 = load i32, i32* %49, align 4
  %2133 = load i32, i32* %24, align 4
  %2134 = icmp slt i32 %2132, %2133
  br i1 %2134, label %2135, label %2154

; <label>:2135:                                   ; preds = %2131
  %2136 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %2137 = load i32, i32* %49, align 4
  %2138 = sext i32 %2137 to i64
  %2139 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2136, i64 %2138
  %2140 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2139, i32 0, i32 2
  store %struct.rtx_def* null, %struct.rtx_def** %2140, align 8
  %2141 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %2142 = load i32, i32* %49, align 4
  %2143 = sext i32 %2142 to i64
  %2144 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2141, i64 %2143
  %2145 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2144, i32 0, i32 15
  store %struct.rtx_def** null, %struct.rtx_def*** %2145, align 8
  %2146 = load %struct.arg_data*, %struct.arg_data** %26, align 8
  %2147 = load i32, i32* %49, align 4
  %2148 = sext i32 %2147 to i64
  %2149 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2146, i64 %2148
  %2150 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %2149, i32 0, i32 12
  store %struct.rtx_def* null, %struct.rtx_def** %2150, align 8
  br label %2151

; <label>:2151:                                   ; preds = %2135
  %2152 = load i32, i32* %49, align 4
  %2153 = add nsw i32 %2152, 1
  store i32 %2153, i32* %49, align 4
  br label %2131

; <label>:2154:                                   ; preds = %2131
  %2155 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @stored_args_map, align 8
  %2156 = bitcast %struct.simple_bitmap_def* %2155 to i8*
  call void @free(i8* %2156) #5
  br label %2159

; <label>:2157:                                   ; preds = %2115
  %2158 = load %struct.rtx_def*, %struct.rtx_def** %63, align 8
  store %struct.rtx_def* %2158, %struct.rtx_def** %11, align 8
  br label %2159

; <label>:2159:                                   ; preds = %2157, %2154
  %2160 = load i32, i32* %60, align 4
  %2161 = icmp ne i32 %2160, 0
  br i1 %2161, label %2162, label %2163

; <label>:2162:                                   ; preds = %2159
  store %struct.rtx_def* null, %struct.rtx_def** %12, align 8
  br label %2163

; <label>:2163:                                   ; preds = %2162, %2159
  br label %2164

; <label>:2164:                                   ; preds = %2163, %881
  %2165 = load i32, i32* %18, align 4
  %2166 = add nsw i32 %2165, 1
  store i32 %2166, i32* %18, align 4
  br label %872

; <label>:2167:                                   ; preds = %872
  %2168 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  store %struct.rtx_def* %2168, %struct.rtx_def** %15, align 8
  br label %2169

; <label>:2169:                                   ; preds = %2191, %2167
  %2170 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2171 = icmp ne %struct.rtx_def* %2170, null
  br i1 %2171, label %2172, label %2197

; <label>:2172:                                   ; preds = %2169
  %2173 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2174 = bitcast %struct.rtx_def* %2173 to i32*
  %2175 = load i32, i32* %2174, align 8
  %2176 = and i32 %2175, 65535
  %2177 = icmp eq i32 %2176, 34
  br i1 %2177, label %2178, label %2190

; <label>:2178:                                   ; preds = %2172
  %2179 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2179, i32 0, i32 1
  %2181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %2180, i64 0, i64 3
  %2182 = bitcast %union.rtunion_def* %2181 to %struct.rtx_def**
  %2183 = load %struct.rtx_def*, %struct.rtx_def** %2182, align 8
  %2184 = bitcast %struct.rtx_def* %2183 to i32*
  %2185 = load i32, i32* %2184, align 8
  %2186 = and i32 %2185, 65535
  %2187 = icmp eq i32 %2186, 141
  br i1 %2187, label %2188, label %2190

; <label>:2188:                                   ; preds = %2178
  %2189 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  call void @replace_call_placeholder(%struct.rtx_def* %2189, i32 1)
  br label %2190

; <label>:2190:                                   ; preds = %2188, %2178, %2172
  br label %2191

; <label>:2191:                                   ; preds = %2190
  %2192 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2192, i32 0, i32 1
  %2194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %2193, i64 0, i64 2
  %2195 = bitcast %union.rtunion_def* %2194 to %struct.rtx_def**
  %2196 = load %struct.rtx_def*, %struct.rtx_def** %2195, align 8
  store %struct.rtx_def* %2196, %struct.rtx_def** %15, align 8
  br label %2169

; <label>:2197:                                   ; preds = %2169
  %2198 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  store %struct.rtx_def* %2198, %struct.rtx_def** %15, align 8
  br label %2199

; <label>:2199:                                   ; preds = %2221, %2197
  %2200 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2201 = icmp ne %struct.rtx_def* %2200, null
  br i1 %2201, label %2202, label %2227

; <label>:2202:                                   ; preds = %2199
  %2203 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2204 = bitcast %struct.rtx_def* %2203 to i32*
  %2205 = load i32, i32* %2204, align 8
  %2206 = and i32 %2205, 65535
  %2207 = icmp eq i32 %2206, 34
  br i1 %2207, label %2208, label %2220

; <label>:2208:                                   ; preds = %2202
  %2209 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2210 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2209, i32 0, i32 1
  %2211 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %2210, i64 0, i64 3
  %2212 = bitcast %union.rtunion_def* %2211 to %struct.rtx_def**
  %2213 = load %struct.rtx_def*, %struct.rtx_def** %2212, align 8
  %2214 = bitcast %struct.rtx_def* %2213 to i32*
  %2215 = load i32, i32* %2214, align 8
  %2216 = and i32 %2215, 65535
  %2217 = icmp eq i32 %2216, 141
  br i1 %2217, label %2218, label %2220

; <label>:2218:                                   ; preds = %2208
  %2219 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  call void @replace_call_placeholder(%struct.rtx_def* %2219, i32 1)
  br label %2220

; <label>:2220:                                   ; preds = %2218, %2208, %2202
  br label %2221

; <label>:2221:                                   ; preds = %2220
  %2222 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2222, i32 0, i32 1
  %2224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %2223, i64 0, i64 2
  %2225 = bitcast %union.rtunion_def* %2224 to %struct.rtx_def**
  %2226 = load %struct.rtx_def*, %struct.rtx_def** %2225, align 8
  store %struct.rtx_def* %2226, %struct.rtx_def** %15, align 8
  br label %2199

; <label>:2227:                                   ; preds = %2199
  %2228 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  store %struct.rtx_def* %2228, %struct.rtx_def** %15, align 8
  br label %2229

; <label>:2229:                                   ; preds = %2251, %2227
  %2230 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2231 = icmp ne %struct.rtx_def* %2230, null
  br i1 %2231, label %2232, label %2257

; <label>:2232:                                   ; preds = %2229
  %2233 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2234 = bitcast %struct.rtx_def* %2233 to i32*
  %2235 = load i32, i32* %2234, align 8
  %2236 = and i32 %2235, 65535
  %2237 = icmp eq i32 %2236, 34
  br i1 %2237, label %2238, label %2250

; <label>:2238:                                   ; preds = %2232
  %2239 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2240 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2239, i32 0, i32 1
  %2241 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %2240, i64 0, i64 3
  %2242 = bitcast %union.rtunion_def* %2241 to %struct.rtx_def**
  %2243 = load %struct.rtx_def*, %struct.rtx_def** %2242, align 8
  %2244 = bitcast %struct.rtx_def* %2243 to i32*
  %2245 = load i32, i32* %2244, align 8
  %2246 = and i32 %2245, 65535
  %2247 = icmp eq i32 %2246, 141
  br i1 %2247, label %2248, label %2250

; <label>:2248:                                   ; preds = %2238
  %2249 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  call void @replace_call_placeholder(%struct.rtx_def* %2249, i32 1)
  br label %2250

; <label>:2250:                                   ; preds = %2248, %2238, %2232
  br label %2251

; <label>:2251:                                   ; preds = %2250
  %2252 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %2253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2252, i32 0, i32 1
  %2254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %2253, i64 0, i64 2
  %2255 = bitcast %union.rtunion_def* %2254 to %struct.rtx_def**
  %2256 = load %struct.rtx_def*, %struct.rtx_def** %2255, align 8
  store %struct.rtx_def* %2256, %struct.rtx_def** %15, align 8
  br label %2229

; <label>:2257:                                   ; preds = %2229
  %2258 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %2259 = icmp ne %struct.rtx_def* %2258, null
  br i1 %2259, label %2263, label %2260

; <label>:2260:                                   ; preds = %2257
  %2261 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %2262 = icmp ne %struct.rtx_def* %2261, null
  br i1 %2262, label %2263, label %2283

; <label>:2263:                                   ; preds = %2260, %2257
  %2264 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %2265 = icmp ne %struct.rtx_def* %2264, null
  br i1 %2265, label %2266, label %2274

; <label>:2266:                                   ; preds = %2263
  %2267 = load %struct.function*, %struct.function** @cfun, align 8
  %2268 = getelementptr inbounds %struct.function, %struct.function* %2267, i32 0, i32 28
  %2269 = load %struct.rtx_def*, %struct.rtx_def** %2268, align 8
  %2270 = bitcast %struct.rtx_def* %2269 to i32*
  %2271 = load i32, i32* %2270, align 8
  %2272 = and i32 %2271, -268435457
  %2273 = or i32 %2272, 268435456
  store i32 %2273, i32* %2270, align 8
  br label %2274

; <label>:2274:                                   ; preds = %2266, %2263
  %2275 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %2276 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %2277 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %2278 = load %struct.function*, %struct.function** @cfun, align 8
  %2279 = getelementptr inbounds %struct.function, %struct.function* %2278, i32 0, i32 28
  %2280 = load %struct.rtx_def*, %struct.rtx_def** %2279, align 8
  %2281 = call %struct.rtx_def* @gen_rtx_fmt_uuuu(i32 141, i32 0, %struct.rtx_def* %2275, %struct.rtx_def* %2276, %struct.rtx_def* %2277, %struct.rtx_def* %2280)
  %2282 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %2281)
  br label %2286

; <label>:2283:                                   ; preds = %2260
  %2284 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %2285 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %2284)
  br label %2286

; <label>:2286:                                   ; preds = %2283, %2274
  %2287 = load i32, i32* @expand_call.currently_expanding_call, align 4
  %2288 = add nsw i32 %2287, -1
  store i32 %2288, i32* @expand_call.currently_expanding_call, align 4
  %2289 = load i32, i32* %35, align 4
  %2290 = and i32 %2289, 1024
  %2291 = icmp ne i32 %2290, 0
  br i1 %2291, label %2292, label %2299

; <label>:2292:                                   ; preds = %2286
  call void @clear_pending_stack_adjust()
  %2293 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %2294 = call %struct.rtx_def* (i32, i32, ...) @gen_rtx(i32 49, i32 0, %struct.rtx_def* %2293)
  %2295 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %2294)
  %2296 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 8), align 16
  %2297 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %2298 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %2296, %struct.rtx_def* %2297)
  call void @save_stack_pointer()
  br label %2299

; <label>:2299:                                   ; preds = %2292, %2286
  %2300 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  store %struct.rtx_def* %2300, %struct.rtx_def** %4, align 8
  br label %2301

; <label>:2301:                                   ; preds = %2299, %328
  %2302 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  ret %struct.rtx_def* %2302
}

declare %union.tree_node* @get_callee_fndecl(%union.tree_node*) #1

declare void @warning_with_decl(%union.tree_node*, i8*, ...) #1

declare void @warning(i8*, ...) #1

declare i32 @mark_addressable(%union.tree_node*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @flags_from_decl_or_type(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %union.tree_node*, %union.tree_node** %2, align 8
  store %union.tree_node* %5, %union.tree_node** %4, align 8
  %6 = load %union.tree_node*, %union.tree_node** %2, align 8
  %7 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 255
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 100
  br i1 %15, label %16, label %80

; <label>:16:                                     ; preds = %1
  %17 = load %union.tree_node*, %union.tree_node** %2, align 8
  %18 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %18, i32 0, i32 1
  %20 = load %union.tree_node*, %union.tree_node** %19, align 8
  store %union.tree_node* %20, %union.tree_node** %4, align 8
  %21 = load %union.tree_node*, %union.tree_node** %2, align 8
  %22 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 100
  br i1 %30, label %31, label %44

; <label>:31:                                     ; preds = %16
  %32 = load %union.tree_node*, %union.tree_node** %2, align 8
  %33 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %34 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %33, i32 0, i32 5
  %35 = bitcast i48* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = lshr i64 %36, 27
  %38 = and i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %31
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, 4
  store i32 %43, i32* %3, align 4
  br label %44

; <label>:44:                                     ; preds = %41, %31, %16
  %45 = load %union.tree_node*, %union.tree_node** %2, align 8
  %46 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 255
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 100
  br i1 %54, label %55, label %68

; <label>:55:                                     ; preds = %44
  %56 = load %union.tree_node*, %union.tree_node** %2, align 8
  %57 = bitcast %union.tree_node* %56 to %struct.tree_decl*
  %58 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %57, i32 0, i32 5
  %59 = bitcast i48* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = lshr i64 %60, 31
  %62 = and i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %55
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, 4608
  store i32 %67, i32* %3, align 4
  br label %68

; <label>:68:                                     ; preds = %65, %55, %44
  %69 = load %union.tree_node*, %union.tree_node** %2, align 8
  %70 = bitcast %union.tree_node* %69 to %struct.tree_common*
  %71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = lshr i32 %72, 17
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %68
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, 16
  store i32 %78, i32* %3, align 4
  br label %79

; <label>:79:                                     ; preds = %76, %68
  br label %80

; <label>:80:                                     ; preds = %79, %1
  %81 = load %union.tree_node*, %union.tree_node** %2, align 8
  %82 = bitcast %union.tree_node* %81 to %struct.tree_common*
  %83 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = lshr i32 %84, 12
  %86 = and i32 %85, 1
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

; <label>:88:                                     ; preds = %80
  %89 = load %union.tree_node*, %union.tree_node** %2, align 8
  %90 = bitcast %union.tree_node* %89 to %struct.tree_common*
  %91 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = lshr i32 %92, 11
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

; <label>:96:                                     ; preds = %88
  %97 = load i32, i32* %3, align 4
  %98 = or i32 %97, 4097
  store i32 %98, i32* %3, align 4
  br label %99

; <label>:99:                                     ; preds = %96, %88, %80
  %100 = load %union.tree_node*, %union.tree_node** %2, align 8
  %101 = bitcast %union.tree_node* %100 to %struct.tree_common*
  %102 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = lshr i32 %103, 11
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

; <label>:107:                                    ; preds = %99
  %108 = load i32, i32* %3, align 4
  %109 = or i32 %108, 2
  store i32 %109, i32* %3, align 4
  br label %110

; <label>:110:                                    ; preds = %107, %99
  %111 = load %union.tree_node*, %union.tree_node** %4, align 8
  %112 = bitcast %union.tree_node* %111 to %struct.tree_common*
  %113 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 255
  %116 = icmp eq i32 %115, 23
  br i1 %116, label %117, label %130

; <label>:117:                                    ; preds = %110
  %118 = load %union.tree_node*, %union.tree_node** %4, align 8
  %119 = bitcast %union.tree_node* %118 to %struct.tree_type*
  %120 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = lshr i32 %121, 17
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

; <label>:125:                                    ; preds = %117
  %126 = load i32, i32* %3, align 4
  %127 = or i32 %126, 1024
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = and i32 %128, -4610
  store i32 %129, i32* %3, align 4
  br label %130

; <label>:130:                                    ; preds = %125, %117, %110
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare i32 @aggregate_value_p(%union.tree_node*) #1

declare i64 @int_size_in_bytes(%union.tree_node*) #1

declare %struct.rtx_def* @assign_temp(%union.tree_node*, i32, i32, i32) #1

declare void @mark_temp_addr_taken(%struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.rtx_def* @try_to_integrate(%union.tree_node*, %union.tree_node*, %struct.rtx_def*, i32, %union.tree_node*, %struct.rtx_def*) #0 {
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca %union.tree_node*, align 8
  %9 = alloca %union.tree_node*, align 8
  %10 = alloca %struct.rtx_def*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.tree_node*, align 8
  %13 = alloca %struct.rtx_def*, align 8
  %14 = alloca %struct.rtx_def*, align 8
  %15 = alloca %struct.rtx_def*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.rtx_def*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.rtx_def*, align 8
  %20 = alloca %struct.rtx_def*, align 8
  %21 = alloca %struct.rtx_def*, align 8
  %22 = alloca i32, align 4
  store %union.tree_node* %0, %union.tree_node** %8, align 8
  store %union.tree_node* %1, %union.tree_node** %9, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %10, align 8
  store i32 %3, i32* %11, align 4
  store %union.tree_node* %4, %union.tree_node** %12, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %13, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %18, align 4
  %23 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %23, %struct.rtx_def** %15, align 8
  call void @timevar_push(i32 12)
  %24 = load %union.tree_node*, %union.tree_node** %8, align 8
  %25 = load %union.tree_node*, %union.tree_node** %9, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %union.tree_node*, %union.tree_node** %12, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %30 = call %struct.rtx_def* @expand_inline_function(%union.tree_node* %24, %union.tree_node* %25, %struct.rtx_def* %26, i32 %27, %union.tree_node* %28, %struct.rtx_def* %29)
  store %struct.rtx_def* %30, %struct.rtx_def** %14, align 8
  call void @timevar_pop(i32 12)
  %31 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %32 = icmp ne %struct.rtx_def* %31, inttoptr (i64 -1 to %struct.rtx_def*)
  br i1 %32, label %33, label %144

; <label>:33:                                     ; preds = %6
  %34 = load i32, i32* @target_flags, align 4
  %35 = and i32 %34, 4096
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %131

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %18, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %16, align 4
  br label %40

; <label>:40:                                     ; preds = %57, %37
  %41 = load i32, i32* %16, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %60

; <label>:43:                                     ; preds = %40
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %56

; <label>:47:                                     ; preds = %43
  %48 = load i8*, i8** @stack_usage_map, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %47
  br label %60

; <label>:56:                                     ; preds = %47, %43
  br label %57

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %16, align 4
  br label %40

; <label>:60:                                     ; preds = %55, %40
  %61 = load i32, i32* @stack_arg_under_construction, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %16, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %130

; <label>:66:                                     ; preds = %63, %60
  %67 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %68 = icmp ne %struct.rtx_def* %67, null
  br i1 %68, label %69, label %75

; <label>:69:                                     ; preds = %66
  %70 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %71, i64 0, i64 2
  %73 = bitcast %union.rtunion_def* %72 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %73, align 8
  br label %77

; <label>:75:                                     ; preds = %66
  %76 = call %struct.rtx_def* @get_insns()
  br label %77

; <label>:77:                                     ; preds = %75, %69
  %78 = phi %struct.rtx_def* [ %74, %69 ], [ %76, %75 ]
  store %struct.rtx_def* %78, %struct.rtx_def** %19, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %20, align 8
  %79 = load %union.tree_node*, %union.tree_node** %8, align 8
  %80 = bitcast %union.tree_node* %79 to %struct.tree_decl*
  %81 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %80, i32 0, i32 19
  %82 = bitcast %union.anon.1* %81 to %struct.function**
  %83 = load %struct.function*, %struct.function** %82, align 8
  %84 = getelementptr inbounds %struct.function, %struct.function* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %107

; <label>:87:                                     ; preds = %77
  %88 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  store %struct.rtx_def* %88, %struct.rtx_def** %20, align 8
  br label %89

; <label>:89:                                     ; preds = %100, %87
  %90 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %91 = icmp ne %struct.rtx_def* %90, null
  br i1 %91, label %92, label %106

; <label>:92:                                     ; preds = %89
  %93 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 34
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %92
  br label %106

; <label>:99:                                     ; preds = %92
  br label %100

; <label>:100:                                    ; preds = %99
  %101 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %102, i64 0, i64 2
  %104 = bitcast %union.rtunion_def* %103 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %104, align 8
  store %struct.rtx_def* %105, %struct.rtx_def** %20, align 8
  br label %89

; <label>:106:                                    ; preds = %98, %89
  br label %107

; <label>:107:                                    ; preds = %106, %77
  %108 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %109 = icmp ne %struct.rtx_def* %108, null
  br i1 %109, label %110, label %129

; <label>:110:                                    ; preds = %107
  %111 = load %union.tree_node*, %union.tree_node** %8, align 8
  %112 = bitcast %union.tree_node* %111 to %struct.tree_decl*
  %113 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %112, i32 0, i32 19
  %114 = bitcast %union.anon.1* %113 to %struct.function**
  %115 = load %struct.function*, %struct.function** %114, align 8
  %116 = getelementptr inbounds %struct.function, %struct.function* %115, i32 0, i32 11
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %22, align 4
  call void @start_sequence()
  call void @emit_stack_save(i32 0, %struct.rtx_def** %17, %struct.rtx_def* null)
  %120 = load i32, i32* %22, align 4
  %121 = sext i32 %120 to i64
  %122 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %121)
  %123 = call %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def* %122, %struct.rtx_def* null, i32 8)
  %124 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %124, %struct.rtx_def** %21, align 8
  call void @end_sequence()
  %125 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %127 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %125, %struct.rtx_def* %126)
  %128 = load %struct.rtx_def*, %struct.rtx_def** %17, align 8
  call void @emit_stack_restore(i32 0, %struct.rtx_def* %128, %struct.rtx_def* null)
  br label %129

; <label>:129:                                    ; preds = %110, %107
  br label %130

; <label>:130:                                    ; preds = %129, %63
  br label %131

; <label>:131:                                    ; preds = %130, %33
  %132 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %134 = icmp ne %struct.rtx_def* %132, %133
  br i1 %134, label %135, label %142

; <label>:135:                                    ; preds = %131
  %136 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %137 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %138 = call i32 @rtx_equal_p(%struct.rtx_def* %136, %struct.rtx_def* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

; <label>:140:                                    ; preds = %135
  %141 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  store %struct.rtx_def* %141, %struct.rtx_def** %7, align 8
  br label %176

; <label>:142:                                    ; preds = %135, %131
  %143 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  store %struct.rtx_def* %143, %struct.rtx_def** %7, align 8
  br label %176

; <label>:144:                                    ; preds = %6
  %145 = load %union.tree_node*, %union.tree_node** %8, align 8
  %146 = bitcast %union.tree_node* %145 to %struct.tree_decl*
  %147 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %146, i32 0, i32 5
  %148 = bitcast i48* %147 to i64*
  %149 = load i64, i64* %148, align 8
  %150 = lshr i64 %149, 11
  %151 = and i64 %150, 1
  %152 = trunc i64 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %173

; <label>:154:                                    ; preds = %144
  %155 = load i32, i32* @warn_inline, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %173

; <label>:157:                                    ; preds = %154
  %158 = load i32, i32* @flag_no_inline, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %173, label %160

; <label>:160:                                    ; preds = %157
  %161 = load i32, i32* @optimize, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %173

; <label>:163:                                    ; preds = %160
  %164 = load %union.tree_node*, %union.tree_node** %8, align 8
  %165 = bitcast %union.tree_node* %164 to %struct.tree_common*
  %166 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = lshr i32 %167, 10
  %169 = and i32 %168, 1
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

; <label>:171:                                    ; preds = %163
  %172 = load %union.tree_node*, %union.tree_node** %8, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %172, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0))
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %173

; <label>:173:                                    ; preds = %171, %163, %160, %157, %154, %144
  %174 = load %union.tree_node*, %union.tree_node** %8, align 8
  %175 = call i32 @mark_addressable(%union.tree_node* %174)
  store %struct.rtx_def* inttoptr (i64 -1 to %struct.rtx_def*), %struct.rtx_def** %7, align 8
  br label %176

; <label>:176:                                    ; preds = %173, %142, %140
  %177 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  ret %struct.rtx_def* %177
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def*) #1

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @make_tree(%union.tree_node*, %struct.rtx_def*) #1

declare %union.tree_node* @build_pointer_type(%union.tree_node*) #1

declare void @init_cumulative_args(%struct.ix86_args*, %union.tree_node*, %struct.rtx_def*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: noinline nounwind uwtable
define internal void @initialize_argument_information(i32, %struct.arg_data*, %struct.args_size*, i32, %union.tree_node*, %union.tree_node*, %struct.ix86_args*, i32, %struct.rtx_def**, i32*, i32*, i32*) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.arg_data*, align 8
  %15 = alloca %struct.args_size*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.tree_node*, align 8
  %18 = alloca %union.tree_node*, align 8
  %19 = alloca %struct.ix86_args*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.rtx_def**, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.args_size, align 8
  %28 = alloca i32, align 4
  %29 = alloca %union.tree_node*, align 8
  %30 = alloca %union.tree_node*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.rtx_def*, align 8
  %34 = alloca %struct.rtx_def*, align 8
  %35 = alloca %union.tree_node*, align 8
  store i32 %0, i32* %13, align 4
  store %struct.arg_data* %1, %struct.arg_data** %14, align 8
  store %struct.args_size* %2, %struct.args_size** %15, align 8
  store i32 %3, i32* %16, align 4
  store %union.tree_node* %4, %union.tree_node** %17, align 8
  store %union.tree_node* %5, %union.tree_node** %18, align 8
  store %struct.ix86_args* %6, %struct.ix86_args** %19, align 8
  store i32 %7, i32* %20, align 4
  store %struct.rtx_def** %8, %struct.rtx_def*** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %36 = load %struct.args_size*, %struct.args_size** %15, align 8
  %37 = getelementptr inbounds %struct.args_size, %struct.args_size* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.args_size*, %struct.args_size** %15, align 8
  %39 = getelementptr inbounds %struct.args_size, %struct.args_size* %38, i32 0, i32 1
  store %union.tree_node* null, %union.tree_node** %39, align 8
  %40 = load i32, i32* @target_flags, align 4
  %41 = and i32 %40, 2048
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

; <label>:43:                                     ; preds = %12
  %44 = load i32, i32* @target_flags, align 4
  %45 = and i32 %44, 4096
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %28, align 4
  store i32 -1, i32* %25, align 4
  br label %51

; <label>:50:                                     ; preds = %43, %12
  store i32 0, i32* %28, align 4
  store i32 1, i32* %25, align 4
  br label %51

; <label>:51:                                     ; preds = %50, %47
  %52 = load %union.tree_node*, %union.tree_node** %17, align 8
  store %union.tree_node* %52, %union.tree_node** %29, align 8
  store i32 0, i32* %26, align 4
  br label %53

; <label>:53:                                     ; preds = %785, %51
  %54 = load %union.tree_node*, %union.tree_node** %29, align 8
  %55 = icmp ne %union.tree_node* %54, null
  br i1 %55, label %56, label %795

; <label>:56:                                     ; preds = %53
  %57 = load %union.tree_node*, %union.tree_node** %29, align 8
  %58 = bitcast %union.tree_node* %57 to %struct.tree_list*
  %59 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %58, i32 0, i32 2
  %60 = load %union.tree_node*, %union.tree_node** %59, align 8
  %61 = bitcast %union.tree_node* %60 to %struct.tree_common*
  %62 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %61, i32 0, i32 1
  %63 = load %union.tree_node*, %union.tree_node** %62, align 8
  store %union.tree_node* %63, %union.tree_node** %30, align 8
  %64 = load %union.tree_node*, %union.tree_node** %29, align 8
  %65 = bitcast %union.tree_node* %64 to %struct.tree_list*
  %66 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %65, i32 0, i32 2
  %67 = load %union.tree_node*, %union.tree_node** %66, align 8
  %68 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %69 = load i32, i32* %28, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %68, i64 %70
  %72 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %71, i32 0, i32 0
  store %union.tree_node* %67, %union.tree_node** %72, align 8
  %73 = load %union.tree_node*, %union.tree_node** %30, align 8
  %74 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16
  %75 = icmp eq %union.tree_node* %73, %74
  br i1 %75, label %82, label %76

; <label>:76:                                     ; preds = %56
  %77 = load %union.tree_node*, %union.tree_node** %30, align 8
  %78 = bitcast %union.tree_node* %77 to %struct.tree_type*
  %79 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %78, i32 0, i32 2
  %80 = load %union.tree_node*, %union.tree_node** %79, align 8
  %81 = icmp ne %union.tree_node* %80, null
  br i1 %81, label %90, label %82

; <label>:82:                                     ; preds = %76, %56
  %83 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 11), align 8
  %84 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %85 = load i32, i32* %28, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %84, i64 %86
  %88 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %87, i32 0, i32 0
  store %union.tree_node* %83, %union.tree_node** %88, align 8
  %89 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  store %union.tree_node* %89, %union.tree_node** %30, align 8
  br label %90

; <label>:90:                                     ; preds = %82, %76
  %91 = load %union.tree_node*, %union.tree_node** %30, align 8
  %92 = bitcast %union.tree_node* %91 to %struct.tree_common*
  %93 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 255
  %96 = icmp eq i32 %95, 21
  br i1 %96, label %97, label %113

; <label>:97:                                     ; preds = %90
  %98 = load %union.tree_node*, %union.tree_node** %30, align 8
  %99 = bitcast %union.tree_node* %98 to %struct.tree_type*
  %100 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = lshr i32 %101, 19
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

; <label>:105:                                    ; preds = %97
  %106 = load %union.tree_node*, %union.tree_node** %30, align 8
  %107 = bitcast %union.tree_node* %106 to %struct.tree_type*
  %108 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %107, i32 0, i32 1
  %109 = load %union.tree_node*, %union.tree_node** %108, align 8
  %110 = bitcast %union.tree_node* %109 to %struct.tree_common*
  %111 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %110, i32 0, i32 1
  %112 = load %union.tree_node*, %union.tree_node** %111, align 8
  store %union.tree_node* %112, %union.tree_node** %30, align 8
  br label %113

; <label>:113:                                    ; preds = %105, %97, %90
  %114 = load %union.tree_node*, %union.tree_node** %30, align 8
  %115 = bitcast %union.tree_node* %114 to %struct.tree_type*
  %116 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %115, i32 0, i32 2
  %117 = load %union.tree_node*, %union.tree_node** %116, align 8
  %118 = bitcast %union.tree_node* %117 to %struct.tree_common*
  %119 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, 255
  %122 = icmp ne i32 %121, 25
  br i1 %122, label %123, label %130

; <label>:123:                                    ; preds = %113
  %124 = load %union.tree_node*, %union.tree_node** %30, align 8
  %125 = bitcast %union.tree_node* %124 to %struct.tree_type*
  %126 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %125, i32 0, i32 2
  %127 = load %union.tree_node*, %union.tree_node** %126, align 8
  %128 = call i32 @contains_placeholder_p(%union.tree_node* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %138, label %130

; <label>:130:                                    ; preds = %123, %113
  %131 = load %union.tree_node*, %union.tree_node** %30, align 8
  %132 = bitcast %union.tree_node* %131 to %struct.tree_common*
  %133 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = lshr i32 %134, 10
  %136 = and i32 %135, 1
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %393

; <label>:138:                                    ; preds = %130, %123
  %139 = load %struct.function*, %struct.function** @cfun, align 8
  %140 = getelementptr inbounds %struct.function, %struct.function* %139, i32 0, i32 56
  %141 = bitcast i24* %140 to i32*
  %142 = load i32, i32* %141, align 8
  %143 = lshr i32 %142, 12
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %270

; <label>:146:                                    ; preds = %138
  %147 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %148 = load i32, i32* %28, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %147, i64 %149
  %151 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %150, i32 0, i32 0
  %152 = load %union.tree_node*, %union.tree_node** %151, align 8
  %153 = bitcast %union.tree_node* %152 to %struct.tree_common*
  %154 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 255
  %157 = icmp eq i32 %156, 50
  br i1 %157, label %158, label %253

; <label>:158:                                    ; preds = %146
  %159 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %160 = load i32, i32* %28, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %159, i64 %161
  %163 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %162, i32 0, i32 0
  %164 = load %union.tree_node*, %union.tree_node** %163, align 8
  %165 = bitcast %union.tree_node* %164 to %struct.tree_exp*
  %166 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %165, i32 0, i32 2
  %167 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %166, i64 0, i64 1
  %168 = load %union.tree_node*, %union.tree_node** %167, align 8
  %169 = bitcast %union.tree_node* %168 to %struct.tree_common*
  %170 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, 255
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 100
  br i1 %177, label %178, label %253

; <label>:178:                                    ; preds = %158
  %179 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %180 = load i32, i32* %28, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %179, i64 %181
  %183 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %182, i32 0, i32 0
  %184 = load %union.tree_node*, %union.tree_node** %183, align 8
  %185 = bitcast %union.tree_node* %184 to %struct.tree_exp*
  %186 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %185, i32 0, i32 2
  %187 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %186, i64 0, i64 1
  %188 = load %union.tree_node*, %union.tree_node** %187, align 8
  %189 = bitcast %union.tree_node* %188 to %struct.tree_decl*
  %190 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %189, i32 0, i32 17
  %191 = load %struct.rtx_def*, %struct.rtx_def** %190, align 8
  %192 = icmp ne %struct.rtx_def* %191, null
  br i1 %192, label %193, label %207

; <label>:193:                                    ; preds = %178
  %194 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %195 = load i32, i32* %28, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %194, i64 %196
  %198 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %197, i32 0, i32 0
  %199 = load %union.tree_node*, %union.tree_node** %198, align 8
  %200 = bitcast %union.tree_node* %199 to %struct.tree_exp*
  %201 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %200, i32 0, i32 2
  %202 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %201, i64 0, i64 1
  %203 = load %union.tree_node*, %union.tree_node** %202, align 8
  %204 = bitcast %union.tree_node* %203 to %struct.tree_decl*
  %205 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %204, i32 0, i32 17
  %206 = load %struct.rtx_def*, %struct.rtx_def** %205, align 8
  br label %231

; <label>:207:                                    ; preds = %178
  %208 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %209 = load i32, i32* %28, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %208, i64 %210
  %212 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %211, i32 0, i32 0
  %213 = load %union.tree_node*, %union.tree_node** %212, align 8
  %214 = bitcast %union.tree_node* %213 to %struct.tree_exp*
  %215 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %214, i32 0, i32 2
  %216 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %215, i64 0, i64 1
  %217 = load %union.tree_node*, %union.tree_node** %216, align 8
  call void @make_decl_rtl(%union.tree_node* %217, i8* null)
  %218 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %219 = load i32, i32* %28, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %218, i64 %220
  %222 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %221, i32 0, i32 0
  %223 = load %union.tree_node*, %union.tree_node** %222, align 8
  %224 = bitcast %union.tree_node* %223 to %struct.tree_exp*
  %225 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %224, i32 0, i32 2
  %226 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %225, i64 0, i64 1
  %227 = load %union.tree_node*, %union.tree_node** %226, align 8
  %228 = bitcast %union.tree_node* %227 to %struct.tree_decl*
  %229 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %228, i32 0, i32 17
  %230 = load %struct.rtx_def*, %struct.rtx_def** %229, align 8
  br label %231

; <label>:231:                                    ; preds = %207, %193
  %232 = phi %struct.rtx_def* [ %206, %193 ], [ %230, %207 ]
  %233 = bitcast %struct.rtx_def* %232 to i32*
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, 65535
  %236 = icmp eq i32 %235, 61
  br i1 %236, label %253, label %237

; <label>:237:                                    ; preds = %231
  %238 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %239 = load i32, i32* %28, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %238, i64 %240
  %242 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %241, i32 0, i32 0
  %243 = load %union.tree_node*, %union.tree_node** %242, align 8
  %244 = bitcast %union.tree_node* %243 to %struct.tree_exp*
  %245 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %244, i32 0, i32 2
  %246 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %245, i64 0, i64 1
  %247 = load %union.tree_node*, %union.tree_node** %246, align 8
  %248 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %249 = load i32, i32* %28, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %248, i64 %250
  %252 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %251, i32 0, i32 0
  store %union.tree_node* %247, %union.tree_node** %252, align 8
  br label %253

; <label>:253:                                    ; preds = %237, %231, %158, %146
  %254 = load %union.tree_node*, %union.tree_node** %30, align 8
  %255 = call %union.tree_node* @build_pointer_type(%union.tree_node* %254)
  %256 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %257 = load i32, i32* %28, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %256, i64 %258
  %260 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %259, i32 0, i32 0
  %261 = load %union.tree_node*, %union.tree_node** %260, align 8
  %262 = call %union.tree_node* @build1(i32 121, %union.tree_node* %255, %union.tree_node* %261)
  %263 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %264 = load i32, i32* %28, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %263, i64 %265
  %267 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %266, i32 0, i32 0
  store %union.tree_node* %262, %union.tree_node** %267, align 8
  %268 = load %union.tree_node*, %union.tree_node** %30, align 8
  %269 = call %union.tree_node* @build_pointer_type(%union.tree_node* %268)
  store %union.tree_node* %269, %union.tree_node** %30, align 8
  br label %392

; <label>:270:                                    ; preds = %138
  %271 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %272 = load i32, i32* %28, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %271, i64 %273
  %275 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %274, i32 0, i32 0
  %276 = load %union.tree_node*, %union.tree_node** %275, align 8
  %277 = bitcast %union.tree_node* %276 to %struct.tree_common*
  %278 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = and i32 %279, 255
  %281 = icmp eq i32 %280, 50
  br i1 %281, label %282, label %299

; <label>:282:                                    ; preds = %270
  %283 = load %union.tree_node*, %union.tree_node** %30, align 8
  %284 = call %union.tree_node* @build_pointer_type(%union.tree_node* %283)
  %285 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %286 = load i32, i32* %28, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %285, i64 %287
  %289 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %288, i32 0, i32 0
  %290 = load %union.tree_node*, %union.tree_node** %289, align 8
  %291 = call %union.tree_node* @build1(i32 121, %union.tree_node* %284, %union.tree_node* %290)
  %292 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %293 = load i32, i32* %28, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %292, i64 %294
  %296 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %295, i32 0, i32 0
  store %union.tree_node* %291, %union.tree_node** %296, align 8
  %297 = load %union.tree_node*, %union.tree_node** %30, align 8
  %298 = call %union.tree_node* @build_pointer_type(%union.tree_node* %297)
  store %union.tree_node* %298, %union.tree_node** %30, align 8
  br label %391

; <label>:299:                                    ; preds = %270
  %300 = load %union.tree_node*, %union.tree_node** %30, align 8
  %301 = bitcast %union.tree_node* %300 to %struct.tree_type*
  %302 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %301, i32 0, i32 2
  %303 = load %union.tree_node*, %union.tree_node** %302, align 8
  %304 = icmp ne %union.tree_node* %303, null
  br i1 %304, label %305, label %332

; <label>:305:                                    ; preds = %299
  %306 = load %union.tree_node*, %union.tree_node** %30, align 8
  %307 = bitcast %union.tree_node* %306 to %struct.tree_type*
  %308 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %307, i32 0, i32 2
  %309 = load %union.tree_node*, %union.tree_node** %308, align 8
  %310 = bitcast %union.tree_node* %309 to %struct.tree_common*
  %311 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = and i32 %312, 255
  %314 = icmp ne i32 %313, 25
  br i1 %314, label %332, label %315

; <label>:315:                                    ; preds = %305
  %316 = load i32, i32* @flag_stack_check, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %363

; <label>:318:                                    ; preds = %315
  %319 = load %union.tree_node*, %union.tree_node** %30, align 8
  %320 = bitcast %union.tree_node* %319 to %struct.tree_type*
  %321 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %320, i32 0, i32 3
  %322 = load %union.tree_node*, %union.tree_node** %321, align 8
  %323 = load i32, i32* @target_flags, align 4
  %324 = and i32 %323, 33554432
  %325 = icmp ne i32 %324, 0
  %326 = select i1 %325, i32 8, i32 4
  %327 = sub nsw i32 4096, %326
  %328 = sdiv i32 %327, 100
  %329 = sext i32 %328 to i64
  %330 = call i32 @compare_tree_int(%union.tree_node* %322, i64 %329)
  %331 = icmp slt i32 0, %330
  br i1 %331, label %332, label %363

; <label>:332:                                    ; preds = %318, %305, %299
  %333 = load %union.tree_node*, %union.tree_node** %29, align 8
  %334 = bitcast %union.tree_node* %333 to %struct.tree_list*
  %335 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %334, i32 0, i32 2
  %336 = load %union.tree_node*, %union.tree_node** %335, align 8
  %337 = call %struct.rtx_def* @expr_size(%union.tree_node* %336)
  store %struct.rtx_def* %337, %struct.rtx_def** %34, align 8
  %338 = load %struct.rtx_def**, %struct.rtx_def*** %21, align 8
  %339 = load %struct.rtx_def*, %struct.rtx_def** %338, align 8
  %340 = icmp eq %struct.rtx_def* %339, null
  br i1 %340, label %341, label %353

; <label>:341:                                    ; preds = %332
  %342 = load %struct.rtx_def**, %struct.rtx_def*** %21, align 8
  call void @emit_stack_save(i32 0, %struct.rtx_def** %342, %struct.rtx_def* null)
  %343 = load %struct.function*, %struct.function** @cfun, align 8
  %344 = getelementptr inbounds %struct.function, %struct.function* %343, i32 0, i32 2
  %345 = load %struct.expr_status*, %struct.expr_status** %344, align 8
  %346 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32*, i32** %22, align 8
  store i32 %347, i32* %348, align 4
  %349 = load %struct.function*, %struct.function** @cfun, align 8
  %350 = getelementptr inbounds %struct.function, %struct.function* %349, i32 0, i32 2
  %351 = load %struct.expr_status*, %struct.expr_status** %350, align 8
  %352 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %351, i32 0, i32 0
  store i32 0, i32* %352, align 8
  br label %353

; <label>:353:                                    ; preds = %341, %332
  %354 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %355 = load %union.tree_node*, %union.tree_node** %30, align 8
  %356 = bitcast %union.tree_node* %355 to %struct.tree_type*
  %357 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %356, i32 0, i32 7
  %358 = load i32, i32* %357, align 8
  %359 = call %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def* %354, %struct.rtx_def* null, i32 %358)
  %360 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %359)
  store %struct.rtx_def* %360, %struct.rtx_def** %33, align 8
  %361 = load %struct.rtx_def*, %struct.rtx_def** %33, align 8
  %362 = load %union.tree_node*, %union.tree_node** %30, align 8
  call void @set_mem_attributes(%struct.rtx_def* %361, %union.tree_node* %362, i32 1)
  br label %366

; <label>:363:                                    ; preds = %318, %315
  %364 = load %union.tree_node*, %union.tree_node** %30, align 8
  %365 = call %struct.rtx_def* @assign_temp(%union.tree_node* %364, i32 0, i32 1, i32 0)
  store %struct.rtx_def* %365, %struct.rtx_def** %33, align 8
  br label %366

; <label>:366:                                    ; preds = %363, %353
  %367 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %368 = load i32, i32* %28, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %367, i64 %369
  %371 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %370, i32 0, i32 0
  %372 = load %union.tree_node*, %union.tree_node** %371, align 8
  %373 = load %struct.rtx_def*, %struct.rtx_def** %33, align 8
  %374 = call %struct.rtx_def* @store_expr(%union.tree_node* %372, %struct.rtx_def* %373, i32 0)
  %375 = load i32*, i32** %24, align 8
  %376 = load i32, i32* %375, align 4
  %377 = and i32 %376, -4610
  store i32 %377, i32* %375, align 4
  %378 = load %union.tree_node*, %union.tree_node** %30, align 8
  %379 = call %union.tree_node* @build_pointer_type(%union.tree_node* %378)
  %380 = load %union.tree_node*, %union.tree_node** %30, align 8
  %381 = load %struct.rtx_def*, %struct.rtx_def** %33, align 8
  %382 = call %union.tree_node* @make_tree(%union.tree_node* %380, %struct.rtx_def* %381)
  %383 = call %union.tree_node* @build1(i32 121, %union.tree_node* %379, %union.tree_node* %382)
  %384 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %385 = load i32, i32* %28, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %384, i64 %386
  %388 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %387, i32 0, i32 0
  store %union.tree_node* %383, %union.tree_node** %388, align 8
  %389 = load %union.tree_node*, %union.tree_node** %30, align 8
  %390 = call %union.tree_node* @build_pointer_type(%union.tree_node* %389)
  store %union.tree_node* %390, %union.tree_node** %30, align 8
  br label %391

; <label>:391:                                    ; preds = %366, %282
  br label %392

; <label>:392:                                    ; preds = %391, %253
  br label %393

; <label>:393:                                    ; preds = %392, %130
  %394 = load %union.tree_node*, %union.tree_node** %30, align 8
  %395 = bitcast %union.tree_node* %394 to %struct.tree_type*
  %396 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %395, i32 0, i32 6
  %397 = load i32, i32* %396, align 4
  %398 = lshr i32 %397, 9
  %399 = and i32 %398, 127
  store i32 %399, i32* %32, align 4
  %400 = load %union.tree_node*, %union.tree_node** %30, align 8
  %401 = bitcast %union.tree_node* %400 to %struct.tree_common*
  %402 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = lshr i32 %403, 13
  %405 = and i32 %404, 1
  store i32 %405, i32* %31, align 4
  %406 = load i32, i32* %31, align 4
  %407 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %408 = load i32, i32* %28, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %407, i64 %409
  %411 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %410, i32 0, i32 6
  store i32 %406, i32* %411, align 8
  %412 = load i32, i32* %32, align 4
  %413 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %414 = load i32, i32* %28, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %413, i64 %415
  %417 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %416, i32 0, i32 1
  store i32 %412, i32* %417, align 8
  %418 = load %struct.ix86_args*, %struct.ix86_args** %19, align 8
  %419 = load i32, i32* %32, align 4
  %420 = load %union.tree_node*, %union.tree_node** %30, align 8
  %421 = load i32, i32* %26, align 4
  %422 = load i32, i32* %16, align 4
  %423 = icmp slt i32 %421, %422
  %424 = zext i1 %423 to i32
  %425 = call %struct.rtx_def* @function_arg(%struct.ix86_args* %418, i32 %419, %union.tree_node* %420, i32 %424)
  %426 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %427 = load i32, i32* %28, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %426, i64 %428
  %430 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %429, i32 0, i32 4
  store %struct.rtx_def* %425, %struct.rtx_def** %430, align 8
  %431 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %432 = load i32, i32* %28, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %431, i64 %433
  %435 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %434, i32 0, i32 4
  %436 = load %struct.rtx_def*, %struct.rtx_def** %435, align 8
  %437 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %438 = load i32, i32* %28, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %437, i64 %439
  %441 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %440, i32 0, i32 5
  store %struct.rtx_def* %436, %struct.rtx_def** %441, align 8
  %442 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %443 = load i32, i32* %28, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %442, i64 %444
  %446 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %445, i32 0, i32 4
  %447 = load %struct.rtx_def*, %struct.rtx_def** %446, align 8
  %448 = icmp ne %struct.rtx_def* %447, null
  br i1 %448, label %449, label %455

; <label>:449:                                    ; preds = %393
  %450 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %451 = load i32, i32* %28, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %450, i64 %452
  %454 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %453, i32 0, i32 7
  store i32 0, i32* %454, align 4
  br label %455

; <label>:455:                                    ; preds = %449, %393
  %456 = load %union.tree_node*, %union.tree_node** %30, align 8
  %457 = icmp ne %union.tree_node* %456, null
  br i1 %457, label %458, label %511

; <label>:458:                                    ; preds = %455
  %459 = load %union.tree_node*, %union.tree_node** %30, align 8
  %460 = bitcast %union.tree_node* %459 to %struct.tree_type*
  %461 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %460, i32 0, i32 2
  %462 = load %union.tree_node*, %union.tree_node** %461, align 8
  %463 = bitcast %union.tree_node* %462 to %struct.tree_common*
  %464 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = and i32 %465, 255
  %467 = icmp ne i32 %466, 25
  br i1 %467, label %509, label %468

; <label>:468:                                    ; preds = %458
  %469 = load %union.tree_node*, %union.tree_node** %30, align 8
  %470 = bitcast %union.tree_node* %469 to %struct.tree_common*
  %471 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = lshr i32 %472, 10
  %474 = and i32 %473, 1
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %509, label %476

; <label>:476:                                    ; preds = %468
  %477 = load i32, i32* %32, align 4
  %478 = icmp eq i32 %477, 6
  br i1 %478, label %509, label %479

; <label>:479:                                    ; preds = %476
  %480 = load i32, i32* %32, align 4
  %481 = icmp eq i32 %480, 51
  br i1 %481, label %482, label %507

; <label>:482:                                    ; preds = %479
  %483 = load %union.tree_node*, %union.tree_node** %30, align 8
  %484 = icmp ne %union.tree_node* %483, null
  br i1 %484, label %485, label %506

; <label>:485:                                    ; preds = %482
  %486 = load %union.tree_node*, %union.tree_node** %30, align 8
  %487 = bitcast %union.tree_node* %486 to %struct.tree_type*
  %488 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %487, i32 0, i32 2
  %489 = load %union.tree_node*, %union.tree_node** %488, align 8
  %490 = bitcast %union.tree_node* %489 to %struct.tree_common*
  %491 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = and i32 %492, 255
  %494 = icmp eq i32 %493, 25
  br i1 %494, label %495, label %506

; <label>:495:                                    ; preds = %485
  %496 = load %union.tree_node*, %union.tree_node** %30, align 8
  %497 = call i64 @int_size_in_bytes(%union.tree_node* %496)
  %498 = load i32, i32* @target_flags, align 4
  %499 = and i32 %498, 33554432
  %500 = icmp ne i32 %499, 0
  %501 = select i1 %500, i32 64, i32 32
  %502 = sdiv i32 %501, 8
  %503 = sext i32 %502 to i64
  %504 = srem i64 %497, %503
  %505 = icmp eq i64 0, %504
  br i1 %505, label %507, label %506

; <label>:506:                                    ; preds = %495, %485, %482
  br label %507

; <label>:507:                                    ; preds = %506, %495, %479
  %508 = phi i1 [ false, %495 ], [ false, %479 ], [ false, %506 ]
  br label %509

; <label>:509:                                    ; preds = %507, %476, %468, %458
  %510 = phi i1 [ true, %476 ], [ true, %468 ], [ true, %458 ], [ %508, %507 ]
  br label %511

; <label>:511:                                    ; preds = %509, %455
  %512 = phi i1 [ false, %455 ], [ %510, %509 ]
  %513 = zext i1 %512 to i32
  %514 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %515 = load i32, i32* %28, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %514, i64 %516
  %518 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %517, i32 0, i32 8
  store i32 %513, i32* %518, align 8
  %519 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %520 = load i32, i32* %28, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %519, i64 %521
  %523 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %522, i32 0, i32 4
  %524 = load %struct.rtx_def*, %struct.rtx_def** %523, align 8
  %525 = icmp ne %struct.rtx_def* %524, null
  br i1 %525, label %526, label %562

; <label>:526:                                    ; preds = %511
  %527 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %528 = load i32, i32* %28, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %527, i64 %529
  %531 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %530, i32 0, i32 4
  %532 = load %struct.rtx_def*, %struct.rtx_def** %531, align 8
  %533 = bitcast %struct.rtx_def* %532 to i32*
  %534 = load i32, i32* %533, align 8
  %535 = and i32 %534, 65535
  %536 = icmp eq i32 %535, 39
  br i1 %536, label %537, label %562

; <label>:537:                                    ; preds = %526
  %538 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %539 = load i32, i32* %28, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %538, i64 %540
  %542 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %541, i32 0, i32 4
  %543 = load %struct.rtx_def*, %struct.rtx_def** %542, align 8
  %544 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %543, i32 0, i32 1
  %545 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %544, i64 0, i64 0
  %546 = bitcast %union.rtunion_def* %545 to %struct.rtvec_def**
  %547 = load %struct.rtvec_def*, %struct.rtvec_def** %546, align 8
  %548 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %547, i32 0, i32 1
  %549 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %548, i64 0, i64 0
  %550 = load %struct.rtx_def*, %struct.rtx_def** %549, align 8
  %551 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %550, i32 0, i32 1
  %552 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %551, i64 0, i64 0
  %553 = bitcast %union.rtunion_def* %552 to %struct.rtx_def**
  %554 = load %struct.rtx_def*, %struct.rtx_def** %553, align 8
  %555 = icmp eq %struct.rtx_def* %554, null
  br i1 %555, label %556, label %562

; <label>:556:                                    ; preds = %537
  %557 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %558 = load i32, i32* %28, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %557, i64 %559
  %561 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %560, i32 0, i32 8
  store i32 1, i32* %561, align 8
  br label %562

; <label>:562:                                    ; preds = %556, %537, %526, %511
  %563 = load %union.tree_node*, %union.tree_node** %30, align 8
  %564 = bitcast %union.tree_node* %563 to %struct.tree_common*
  %565 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %564, i32 0, i32 2
  %566 = load i32, i32* %565, align 8
  %567 = lshr i32 %566, 10
  %568 = and i32 %567, 1
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %586, label %570

; <label>:570:                                    ; preds = %562
  %571 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %572 = load i32, i32* %28, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %571, i64 %573
  %575 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %574, i32 0, i32 8
  %576 = load i32, i32* %575, align 8
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %588

; <label>:578:                                    ; preds = %570
  %579 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %580 = load i32, i32* %28, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %579, i64 %581
  %583 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %582, i32 0, i32 4
  %584 = load %struct.rtx_def*, %struct.rtx_def** %583, align 8
  %585 = icmp ne %struct.rtx_def* %584, null
  br i1 %585, label %586, label %588

; <label>:586:                                    ; preds = %578, %562
  %587 = load i32*, i32** %23, align 8
  store i32 1, i32* %587, align 4
  br label %588

; <label>:588:                                    ; preds = %586, %578, %570
  %589 = load %union.tree_node*, %union.tree_node** %30, align 8
  %590 = bitcast %union.tree_node* %589 to %struct.tree_common*
  %591 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 8
  %593 = lshr i32 %592, 10
  %594 = and i32 %593, 1
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %600

; <label>:596:                                    ; preds = %588
  %597 = load i32*, i32** %24, align 8
  %598 = load i32, i32* %597, align 4
  %599 = and i32 %598, -4097
  store i32 %599, i32* %597, align 4
  br label %600

; <label>:600:                                    ; preds = %596, %588
  %601 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %602 = load i32, i32* %28, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %601, i64 %603
  %605 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %604, i32 0, i32 4
  %606 = load %struct.rtx_def*, %struct.rtx_def** %605, align 8
  %607 = icmp eq %struct.rtx_def* %606, null
  br i1 %607, label %627, label %608

; <label>:608:                                    ; preds = %600
  %609 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %610 = load i32, i32* %28, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %609, i64 %611
  %613 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %612, i32 0, i32 7
  %614 = load i32, i32* %613, align 4
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %627, label %616

; <label>:616:                                    ; preds = %608
  %617 = load i32, i32* %20, align 4
  %618 = icmp sgt i32 %617, 0
  br i1 %618, label %627, label %619

; <label>:619:                                    ; preds = %616
  %620 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %621 = load i32, i32* %28, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %620, i64 %622
  %624 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %623, i32 0, i32 8
  %625 = load i32, i32* %624, align 8
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %650

; <label>:627:                                    ; preds = %619, %616, %608, %600
  %628 = load i32, i32* %32, align 4
  %629 = load %union.tree_node*, %union.tree_node** %30, align 8
  %630 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %631 = load i32, i32* %28, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %630, i64 %632
  %634 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %633, i32 0, i32 4
  %635 = load %struct.rtx_def*, %struct.rtx_def** %634, align 8
  %636 = icmp ne %struct.rtx_def* %635, null
  %637 = zext i1 %636 to i32
  %638 = load %union.tree_node*, %union.tree_node** %18, align 8
  %639 = load %struct.args_size*, %struct.args_size** %15, align 8
  %640 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %641 = load i32, i32* %28, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %640, i64 %642
  %644 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %643, i32 0, i32 9
  %645 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %646 = load i32, i32* %28, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %645, i64 %647
  %649 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %648, i32 0, i32 11
  call void @locate_and_pad_parm(i32 %628, %union.tree_node* %629, i32 %637, %union.tree_node* %638, %struct.args_size* %639, %struct.args_size* %644, %struct.args_size* %649, %struct.args_size* %27)
  br label %650

; <label>:650:                                    ; preds = %627, %619
  %651 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %652 = load i32, i32* %28, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %651, i64 %653
  %655 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %654, i32 0, i32 10
  %656 = load %struct.args_size*, %struct.args_size** %15, align 8
  %657 = bitcast %struct.args_size* %655 to i8*
  %658 = bitcast %struct.args_size* %656 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %657, i8* %658, i64 16, i32 8, i1 false)
  %659 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %660 = load i32, i32* %28, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %659, i64 %661
  %663 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %662, i32 0, i32 17
  %664 = bitcast %struct.args_size* %663 to i8*
  %665 = bitcast %struct.args_size* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %664, i8* %665, i64 16, i32 8, i1 false)
  %666 = load i32, i32* %20, align 4
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %709

; <label>:668:                                    ; preds = %650
  %669 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %670 = load i32, i32* %28, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %669, i64 %671
  %673 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %672, i32 0, i32 8
  %674 = load i32, i32* %673, align 8
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %709, label %676

; <label>:676:                                    ; preds = %668
  %677 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %678 = load i32, i32* %28, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %677, i64 %679
  %681 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %680, i32 0, i32 7
  %682 = load i32, i32* %681, align 4
  %683 = load i32, i32* @target_flags, align 4
  %684 = and i32 %683, 33554432
  %685 = icmp ne i32 %684, 0
  %686 = select i1 %685, i32 8, i32 4
  %687 = mul nsw i32 %682, %686
  %688 = load i32, i32* @target_flags, align 4
  %689 = and i32 %688, 33554432
  %690 = icmp ne i32 %689, 0
  %691 = select i1 %690, i32 64, i32 32
  %692 = sdiv i32 %691, 8
  %693 = sdiv i32 %687, %692
  %694 = load i32, i32* @target_flags, align 4
  %695 = and i32 %694, 33554432
  %696 = icmp ne i32 %695, 0
  %697 = select i1 %696, i32 64, i32 32
  %698 = sdiv i32 %697, 8
  %699 = mul nsw i32 %693, %698
  %700 = sext i32 %699 to i64
  %701 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %702 = load i32, i32* %28, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %701, i64 %703
  %705 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %704, i32 0, i32 11
  %706 = getelementptr inbounds %struct.args_size, %struct.args_size* %705, i32 0, i32 0
  %707 = load i64, i64* %706, align 8
  %708 = sub nsw i64 %707, %700
  store i64 %708, i64* %706, align 8
  br label %709

; <label>:709:                                    ; preds = %676, %668, %650
  %710 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %711 = load i32, i32* %28, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %710, i64 %712
  %714 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %713, i32 0, i32 11
  %715 = getelementptr inbounds %struct.args_size, %struct.args_size* %714, i32 0, i32 0
  %716 = load i64, i64* %715, align 8
  %717 = load %struct.args_size*, %struct.args_size** %15, align 8
  %718 = getelementptr inbounds %struct.args_size, %struct.args_size* %717, i32 0, i32 0
  %719 = load i64, i64* %718, align 8
  %720 = add nsw i64 %719, %716
  store i64 %720, i64* %718, align 8
  %721 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %722 = load i32, i32* %28, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %721, i64 %723
  %725 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %724, i32 0, i32 11
  %726 = getelementptr inbounds %struct.args_size, %struct.args_size* %725, i32 0, i32 1
  %727 = load %union.tree_node*, %union.tree_node** %726, align 8
  %728 = icmp ne %union.tree_node* %727, null
  br i1 %728, label %729, label %772

; <label>:729:                                    ; preds = %709
  br label %730

; <label>:730:                                    ; preds = %729
  %731 = load %struct.arg_data*, %struct.arg_data** %14, align 8
  %732 = load i32, i32* %28, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %731, i64 %733
  %735 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %734, i32 0, i32 11
  %736 = getelementptr inbounds %struct.args_size, %struct.args_size* %735, i32 0, i32 1
  %737 = load %union.tree_node*, %union.tree_node** %736, align 8
  store %union.tree_node* %737, %union.tree_node** %35, align 8
  %738 = load %union.tree_node*, %union.tree_node** %35, align 8
  %739 = call i32 @host_integerp(%union.tree_node* %738, i32 0)
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %748

; <label>:741:                                    ; preds = %730
  %742 = load %union.tree_node*, %union.tree_node** %35, align 8
  %743 = call i64 @tree_low_cst(%union.tree_node* %742, i32 0)
  %744 = load %struct.args_size*, %struct.args_size** %15, align 8
  %745 = getelementptr inbounds %struct.args_size, %struct.args_size* %744, i32 0, i32 0
  %746 = load i64, i64* %745, align 8
  %747 = add nsw i64 %746, %743
  store i64 %747, i64* %745, align 8
  br label %770

; <label>:748:                                    ; preds = %730
  %749 = load %struct.args_size*, %struct.args_size** %15, align 8
  %750 = getelementptr inbounds %struct.args_size, %struct.args_size* %749, i32 0, i32 1
  %751 = load %union.tree_node*, %union.tree_node** %750, align 8
  %752 = icmp eq %union.tree_node* %751, null
  br i1 %752, label %753, label %759

; <label>:753:                                    ; preds = %748
  %754 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %755 = load %union.tree_node*, %union.tree_node** %35, align 8
  %756 = call %union.tree_node* @convert(%union.tree_node* %754, %union.tree_node* %755)
  %757 = load %struct.args_size*, %struct.args_size** %15, align 8
  %758 = getelementptr inbounds %struct.args_size, %struct.args_size* %757, i32 0, i32 1
  store %union.tree_node* %756, %union.tree_node** %758, align 8
  br label %769

; <label>:759:                                    ; preds = %748
  %760 = load %struct.args_size*, %struct.args_size** %15, align 8
  %761 = getelementptr inbounds %struct.args_size, %struct.args_size* %760, i32 0, i32 1
  %762 = load %union.tree_node*, %union.tree_node** %761, align 8
  %763 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %764 = load %union.tree_node*, %union.tree_node** %35, align 8
  %765 = call %union.tree_node* @convert(%union.tree_node* %763, %union.tree_node* %764)
  %766 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %762, %union.tree_node* %765)
  %767 = load %struct.args_size*, %struct.args_size** %15, align 8
  %768 = getelementptr inbounds %struct.args_size, %struct.args_size* %767, i32 0, i32 1
  store %union.tree_node* %766, %union.tree_node** %768, align 8
  br label %769

; <label>:769:                                    ; preds = %759, %753
  br label %770

; <label>:770:                                    ; preds = %769, %741
  br label %771

; <label>:771:                                    ; preds = %770
  br label %772

; <label>:772:                                    ; preds = %771, %709
  %773 = load %struct.ix86_args*, %struct.ix86_args** %19, align 8
  %774 = load %union.tree_node*, %union.tree_node** %30, align 8
  %775 = bitcast %union.tree_node* %774 to %struct.tree_type*
  %776 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %775, i32 0, i32 6
  %777 = load i32, i32* %776, align 4
  %778 = lshr i32 %777, 9
  %779 = and i32 %778, 127
  %780 = load %union.tree_node*, %union.tree_node** %30, align 8
  %781 = load i32, i32* %26, align 4
  %782 = load i32, i32* %16, align 4
  %783 = icmp slt i32 %781, %782
  %784 = zext i1 %783 to i32
  call void @function_arg_advance(%struct.ix86_args* %773, i32 %779, %union.tree_node* %780, i32 %784)
  br label %785

; <label>:785:                                    ; preds = %772
  %786 = load %union.tree_node*, %union.tree_node** %29, align 8
  %787 = bitcast %union.tree_node* %786 to %struct.tree_common*
  %788 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %787, i32 0, i32 0
  %789 = load %union.tree_node*, %union.tree_node** %788, align 8
  store %union.tree_node* %789, %union.tree_node** %29, align 8
  %790 = load i32, i32* %25, align 4
  %791 = load i32, i32* %28, align 4
  %792 = add nsw i32 %791, %790
  store i32 %792, i32* %28, align 4
  %793 = load i32, i32* %26, align 4
  %794 = add nsw i32 %793, 1
  store i32 %794, i32* %26, align 4
  br label %53

; <label>:795:                                    ; preds = %53
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @finalize_must_preallocate(i32, i32, %struct.arg_data*, %struct.args_size*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg_data*, align 8
  %8 = alloca %struct.args_size*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.arg_data* %2, %struct.arg_data** %7, align 8
  store %struct.args_size* %3, %struct.args_size** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %157, label %14

; <label>:14:                                     ; preds = %4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

; <label>:15:                                     ; preds = %139, %14
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

; <label>:23:                                     ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %142

; <label>:25:                                     ; preds = %23
  %26 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %26, i64 %28
  %30 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %42

; <label>:33:                                     ; preds = %25
  %34 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %34, i64 %36
  %38 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

; <label>:41:                                     ; preds = %33
  store i32 1, i32* %9, align 4
  br label %55

; <label>:42:                                     ; preds = %33, %25
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

; <label>:45:                                     ; preds = %42
  %46 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %46, i64 %48
  %50 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %49, i32 0, i32 4
  %51 = load %struct.rtx_def*, %struct.rtx_def** %50, align 8
  %52 = icmp eq %struct.rtx_def* %51, null
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %45
  store i32 1, i32* %5, align 4
  br label %54

; <label>:54:                                     ; preds = %53, %45, %42
  br label %55

; <label>:55:                                     ; preds = %54, %41
  %56 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %56, i64 %58
  %60 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %59, i32 0, i32 0
  %61 = load %union.tree_node*, %union.tree_node** %60, align 8
  %62 = bitcast %union.tree_node* %61 to %struct.tree_common*
  %63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %62, i32 0, i32 1
  %64 = load %union.tree_node*, %union.tree_node** %63, align 8
  %65 = bitcast %union.tree_node* %64 to %struct.tree_type*
  %66 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = lshr i32 %67, 9
  %69 = and i32 %68, 127
  %70 = icmp eq i32 %69, 51
  br i1 %70, label %71, label %138

; <label>:71:                                     ; preds = %55
  %72 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %72, i64 %74
  %76 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %75, i32 0, i32 0
  %77 = load %union.tree_node*, %union.tree_node** %76, align 8
  %78 = bitcast %union.tree_node* %77 to %struct.tree_common*
  %79 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, 53
  br i1 %82, label %123, label %83

; <label>:83:                                     ; preds = %71
  %84 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %84, i64 %86
  %88 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %87, i32 0, i32 0
  %89 = load %union.tree_node*, %union.tree_node** %88, align 8
  %90 = bitcast %union.tree_node* %89 to %struct.tree_common*
  %91 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 255
  %94 = icmp eq i32 %93, 50
  br i1 %94, label %123, label %95

; <label>:95:                                     ; preds = %83
  %96 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %96, i64 %98
  %100 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %99, i32 0, i32 0
  %101 = load %union.tree_node*, %union.tree_node** %100, align 8
  %102 = bitcast %union.tree_node* %101 to %struct.tree_common*
  %103 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, 255
  %106 = icmp eq i32 %105, 51
  br i1 %106, label %123, label %107

; <label>:107:                                    ; preds = %95
  %108 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %108, i64 %110
  %112 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %111, i32 0, i32 0
  %113 = load %union.tree_node*, %union.tree_node** %112, align 8
  %114 = bitcast %union.tree_node* %113 to %struct.tree_common*
  %115 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %114, i32 0, i32 1
  %116 = load %union.tree_node*, %union.tree_node** %115, align 8
  %117 = bitcast %union.tree_node* %116 to %struct.tree_common*
  %118 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = lshr i32 %119, 10
  %121 = and i32 %120, 1
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

; <label>:123:                                    ; preds = %107, %95, %83, %71
  %124 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %124, i64 %126
  %128 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %127, i32 0, i32 0
  %129 = load %union.tree_node*, %union.tree_node** %128, align 8
  %130 = bitcast %union.tree_node* %129 to %struct.tree_common*
  %131 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %130, i32 0, i32 1
  %132 = load %union.tree_node*, %union.tree_node** %131, align 8
  %133 = call i64 @int_size_in_bytes(%union.tree_node* %132)
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %10, align 4
  br label %138

; <label>:138:                                    ; preds = %123, %107, %55
  br label %139

; <label>:139:                                    ; preds = %138
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %15

; <label>:142:                                    ; preds = %23
  %143 = load i32, i32* %10, align 4
  %144 = mul nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = load %struct.args_size*, %struct.args_size** %8, align 8
  %147 = getelementptr inbounds %struct.args_size, %struct.args_size* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp sge i64 %145, %148
  br i1 %149, label %150, label %156

; <label>:150:                                    ; preds = %142
  %151 = load %struct.args_size*, %struct.args_size** %8, align 8
  %152 = getelementptr inbounds %struct.args_size, %struct.args_size* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %156

; <label>:155:                                    ; preds = %150
  store i32 1, i32* %5, align 4
  br label %156

; <label>:156:                                    ; preds = %155, %150, %142
  br label %157

; <label>:157:                                    ; preds = %156, %4
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @copy_to_reg(%struct.rtx_def*) #1

declare i32 @any_pending_cleanups(i32) #1

declare i32 @ix86_return_pops_args(%union.tree_node*, %union.tree_node*, i32) #1

declare i32 @unsafe_for_reeval(%union.tree_node*) #1

declare %union.tree_node* @unsave_expr(%union.tree_node*) #1

declare %union.tree_node* @build_decl(i32, %union.tree_node*, %union.tree_node*) #1

declare %struct.rtx_def* @expand_expr(%union.tree_node*, %struct.rtx_def*, i32, i32) #1

declare void @emit_queue() #1

declare void @start_sequence() #1

declare void @expand_start_target_temps() #1

declare i32 @optimize_tail_recursion(%union.tree_node*, %struct.rtx_def*) #1

declare %struct.rtx_def* @get_last_insn() #1

declare %struct.rtx_def* @get_insns() #1

declare void @expand_end_target_temps() #1

declare void @end_sequence() #1

; Function Attrs: noinline nounwind uwtable
define void @emit_library_call(%struct.rtx_def*, i32, i32, i32, ...) #0 {
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.rtx_def* %0, %struct.rtx_def** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0
  %17 = call %struct.rtx_def* @emit_library_call_value_1(i32 0, %struct.rtx_def* %12, %struct.rtx_def* null, i32 %13, i32 %14, i32 %15, %struct.__va_list_tag* %16)
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0
  %19 = bitcast %struct.__va_list_tag* %18 to i8*
  call void @llvm.va_end(i8* %19)
  ret void
}

declare %struct.rtx_def* @gen_rtx_fmt_s(i32, i32, i8*) #1

declare void @do_pending_stack_adjust() #1

; Function Attrs: noinline nounwind uwtable
define internal void @precompute_arguments(i32, i32, %struct.arg_data*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.arg_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.arg_data* %2, %struct.arg_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %128, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %131

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 4096
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

; <label>:17:                                     ; preds = %13
  %18 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %18, i64 %20
  %22 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %21, i32 0, i32 0
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8
  %24 = load i32, i32* @target_flags, align 4
  %25 = and i32 %24, 4096
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @calls_function(%union.tree_node* %23, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %127

; <label>:31:                                     ; preds = %17, %13
  %32 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %32, i64 %34
  %36 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %35, i32 0, i32 0
  %37 = load %union.tree_node*, %union.tree_node** %36, align 8
  %38 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %38, i32 0, i32 1
  %40 = load %union.tree_node*, %union.tree_node** %39, align 8
  %41 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = lshr i32 %43, 10
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %31
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 1512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.precompute_arguments, i32 0, i32 0)) #8
  unreachable

; <label>:48:                                     ; preds = %31
  %49 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %49, i64 %51
  %53 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %52, i32 0, i32 0
  %54 = load %union.tree_node*, %union.tree_node** %53, align 8
  %55 = call %struct.rtx_def* @expand_expr(%union.tree_node* %54, %struct.rtx_def* null, i32 0, i32 0)
  %56 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %56, i64 %58
  %60 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %59, i32 0, i32 2
  store %struct.rtx_def* %55, %struct.rtx_def** %60, align 8
  call void @emit_queue()
  %61 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %61, i64 %63
  %65 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %64, i32 0, i32 2
  %66 = load %struct.rtx_def*, %struct.rtx_def** %65, align 8
  %67 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %66, i32 0)
  %68 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %68, i64 %70
  %72 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %71, i32 0, i32 2
  store %struct.rtx_def* %67, %struct.rtx_def** %72, align 8
  %73 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %73, i64 %75
  %77 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %76, i32 0, i32 3
  store %struct.rtx_def* %67, %struct.rtx_def** %77, align 8
  %78 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %78, i64 %80
  %82 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %81, i32 0, i32 0
  %83 = load %union.tree_node*, %union.tree_node** %82, align 8
  %84 = bitcast %union.tree_node* %83 to %struct.tree_common*
  %85 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %84, i32 0, i32 1
  %86 = load %union.tree_node*, %union.tree_node** %85, align 8
  %87 = bitcast %union.tree_node* %86 to %struct.tree_type*
  %88 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = lshr i32 %89, 9
  %91 = and i32 %90, 127
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %93, i64 %95
  %97 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %92, %98
  br i1 %99, label %100, label %126

; <label>:100:                                    ; preds = %48
  %101 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %101, i64 %103
  %105 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %108, i64 %110
  %112 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %111, i32 0, i32 2
  %113 = load %struct.rtx_def*, %struct.rtx_def** %112, align 8
  %114 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %114, i64 %116
  %118 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call %struct.rtx_def* @convert_modes(i32 %106, i32 %107, %struct.rtx_def* %113, i32 %119)
  %121 = load %struct.arg_data*, %struct.arg_data** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %121, i64 %123
  %125 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %124, i32 0, i32 2
  store %struct.rtx_def* %120, %struct.rtx_def** %125, align 8
  br label %126

; <label>:126:                                    ; preds = %100, %48
  br label %127

; <label>:127:                                    ; preds = %126, %17
  br label %128

; <label>:128:                                    ; preds = %127
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %9

; <label>:131:                                    ; preds = %9
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @compute_argument_block_size(i32, %struct.args_size*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.args_size*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.args_size* %1, %struct.args_size** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.args_size*, %struct.args_size** %5, align 8
  %9 = getelementptr inbounds %struct.args_size, %struct.args_size* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @target_flags, align 4
  %13 = and i32 %12, 4096
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @target_flags, align 4
  %18 = and i32 %17, 33554432
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %19, i32 64, i32 32
  %21 = icmp sgt i32 %16, %20
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %15
  %23 = load i32, i32* @target_flags, align 4
  %24 = and i32 %23, 33554432
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %25, i32 64, i32 32
  store i32 %26, i32* %6, align 4
  br label %27

; <label>:27:                                     ; preds = %22, %15, %3
  %28 = load %struct.args_size*, %struct.args_size** %5, align 8
  %29 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %29, align 8
  %31 = icmp ne %union.tree_node* %30, null
  br i1 %31, label %32, label %105

; <label>:32:                                     ; preds = %27
  %33 = load %struct.args_size*, %struct.args_size** %5, align 8
  %34 = getelementptr inbounds %struct.args_size, %struct.args_size* %33, i32 0, i32 1
  %35 = load %union.tree_node*, %union.tree_node** %34, align 8
  %36 = icmp eq %union.tree_node* %35, null
  br i1 %36, label %37, label %42

; <label>:37:                                     ; preds = %32
  %38 = load %struct.args_size*, %struct.args_size** %5, align 8
  %39 = getelementptr inbounds %struct.args_size, %struct.args_size* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call %union.tree_node* @size_int_wide(i64 %40, i32 1)
  br label %53

; <label>:42:                                     ; preds = %32
  %43 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %44 = load %struct.args_size*, %struct.args_size** %5, align 8
  %45 = getelementptr inbounds %struct.args_size, %struct.args_size* %44, i32 0, i32 1
  %46 = load %union.tree_node*, %union.tree_node** %45, align 8
  %47 = call %union.tree_node* @convert(%union.tree_node* %43, %union.tree_node* %46)
  %48 = load %struct.args_size*, %struct.args_size** %5, align 8
  %49 = getelementptr inbounds %struct.args_size, %struct.args_size* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call %union.tree_node* @size_int_wide(i64 %50, i32 1)
  %52 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %47, %union.tree_node* %51)
  br label %53

; <label>:53:                                     ; preds = %42, %37
  %54 = phi %union.tree_node* [ %41, %37 ], [ %52, %42 ]
  %55 = load %struct.args_size*, %struct.args_size** %5, align 8
  %56 = getelementptr inbounds %struct.args_size, %struct.args_size* %55, i32 0, i32 1
  store %union.tree_node* %54, %union.tree_node** %56, align 8
  %57 = load %struct.args_size*, %struct.args_size** %5, align 8
  %58 = getelementptr inbounds %struct.args_size, %struct.args_size* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sdiv i32 %59, 8
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %82

; <label>:63:                                     ; preds = %53
  %64 = load %struct.function*, %struct.function** @cfun, align 8
  %65 = getelementptr inbounds %struct.function, %struct.function* %64, i32 0, i32 2
  %66 = load %struct.expr_status*, %struct.expr_status** %65, align 8
  %67 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %63
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 1425, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.compute_argument_block_size, i32 0, i32 0)) #8
  unreachable

; <label>:74:                                     ; preds = %63
  %75 = load %struct.args_size*, %struct.args_size** %5, align 8
  %76 = getelementptr inbounds %struct.args_size, %struct.args_size* %75, i32 0, i32 1
  %77 = load %union.tree_node*, %union.tree_node** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call %union.tree_node* @round_up(%union.tree_node* %77, i32 %78)
  %80 = load %struct.args_size*, %struct.args_size** %5, align 8
  %81 = getelementptr inbounds %struct.args_size, %struct.args_size* %80, i32 0, i32 1
  store %union.tree_node* %79, %union.tree_node** %81, align 8
  br label %82

; <label>:82:                                     ; preds = %74, %53
  %83 = load i32, i32* %4, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %104

; <label>:85:                                     ; preds = %82
  %86 = load %struct.args_size*, %struct.args_size** %5, align 8
  %87 = getelementptr inbounds %struct.args_size, %struct.args_size* %86, i32 0, i32 1
  %88 = load %union.tree_node*, %union.tree_node** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = call %union.tree_node* @size_int_wide(i64 %90, i32 1)
  %92 = call %union.tree_node* @size_binop(i32 79, %union.tree_node* %88, %union.tree_node* %91)
  %93 = load %struct.args_size*, %struct.args_size** %5, align 8
  %94 = getelementptr inbounds %struct.args_size, %struct.args_size* %93, i32 0, i32 1
  store %union.tree_node* %92, %union.tree_node** %94, align 8
  %95 = load %struct.args_size*, %struct.args_size** %5, align 8
  %96 = getelementptr inbounds %struct.args_size, %struct.args_size* %95, i32 0, i32 1
  %97 = load %union.tree_node*, %union.tree_node** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = call %union.tree_node* @size_int_wide(i64 %99, i32 1)
  %101 = call %union.tree_node* @size_binop(i32 60, %union.tree_node* %97, %union.tree_node* %100)
  %102 = load %struct.args_size*, %struct.args_size** %5, align 8
  %103 = getelementptr inbounds %struct.args_size, %struct.args_size* %102, i32 0, i32 1
  store %union.tree_node* %101, %union.tree_node** %103, align 8
  br label %104

; <label>:104:                                    ; preds = %85, %82
  br label %164

; <label>:105:                                    ; preds = %27
  %106 = load i32, i32* %6, align 4
  %107 = sdiv i32 %106, 8
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %110, label %111

; <label>:110:                                    ; preds = %105
  store i32 1, i32* %6, align 4
  br label %111

; <label>:111:                                    ; preds = %110, %105
  %112 = load %struct.args_size*, %struct.args_size** %5, align 8
  %113 = getelementptr inbounds %struct.args_size, %struct.args_size* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.function*, %struct.function** @cfun, align 8
  %116 = getelementptr inbounds %struct.function, %struct.function* %115, i32 0, i32 2
  %117 = load %struct.expr_status*, %struct.expr_status** %116, align 8
  %118 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %114, %120
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  %125 = sub nsw i64 %124, 1
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = sdiv i64 %125, %127
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %128, %130
  %132 = load %struct.function*, %struct.function** @cfun, align 8
  %133 = getelementptr inbounds %struct.function, %struct.function* %132, i32 0, i32 2
  %134 = load %struct.expr_status*, %struct.expr_status** %133, align 8
  %135 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = sub nsw i64 %131, %137
  %139 = load %struct.args_size*, %struct.args_size** %5, align 8
  %140 = getelementptr inbounds %struct.args_size, %struct.args_size* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load %struct.args_size*, %struct.args_size** %5, align 8
  %142 = getelementptr inbounds %struct.args_size, %struct.args_size* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp sgt i64 %143, %145
  br i1 %146, label %147, label %151

; <label>:147:                                    ; preds = %111
  %148 = load %struct.args_size*, %struct.args_size** %5, align 8
  %149 = getelementptr inbounds %struct.args_size, %struct.args_size* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  br label %154

; <label>:151:                                    ; preds = %111
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  br label %154

; <label>:154:                                    ; preds = %151, %147
  %155 = phi i64 [ %150, %147 ], [ %153, %151 ]
  %156 = load %struct.args_size*, %struct.args_size** %5, align 8
  %157 = getelementptr inbounds %struct.args_size, %struct.args_size* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.args_size*, %struct.args_size** %5, align 8
  %161 = getelementptr inbounds %struct.args_size, %struct.args_size* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %162, %159
  store i64 %163, i64* %161, align 8
  br label %164

; <label>:164:                                    ; preds = %154, %104
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

declare void @emit_stack_save(i32, %struct.rtx_def**, %struct.rtx_def*) #1

declare %struct.rtx_def* @push_block(%struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %union.tree_node* @size_int_wide(i64, i32) #1

declare %union.tree_node* @size_binop(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @combine_pending_stack_adjustment_and_call(i32, %struct.args_size*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.args_size*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.args_size* %1, %struct.args_size** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %10 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 2
  %11 = load %struct.expr_status*, %struct.expr_status** %10, align 8
  %12 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = srem i32 %15, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %21 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 2
  %22 = load %struct.expr_status*, %struct.expr_status** %21, align 8
  %23 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = srem i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %19, %27
  store i64 %28, i64* %8, align 8
  %29 = load %struct.function*, %struct.function** @cfun, align 8
  %30 = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 2
  %31 = load %struct.expr_status*, %struct.expr_status** %30, align 8
  %32 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %52

; <label>:37:                                     ; preds = %3
  %38 = load i64, i64* %8, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %8, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load i64, i64* %7, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %7, align 8
  br label %51

; <label>:47:                                     ; preds = %37
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %51

; <label>:51:                                     ; preds = %47, %40
  br label %52

; <label>:52:                                     ; preds = %51, %3
  %53 = load %struct.function*, %struct.function** @cfun, align 8
  %54 = getelementptr inbounds %struct.function, %struct.function* %53, i32 0, i32 2
  %55 = load %struct.expr_status*, %struct.expr_status** %54, align 8
  %56 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %7, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load %struct.args_size*, %struct.args_size** %5, align 8
  %65 = getelementptr inbounds %struct.args_size, %struct.args_size* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %7, align 8
  %67 = trunc i64 %66 to i32
  ret i32 %67
}

declare %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def*, %struct.rtx_def*, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal void @compute_argument_addresses(%struct.arg_data*, %struct.rtx_def*, i32) #0 {
  %4 = alloca %struct.arg_data*, align 8
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtx_def*, align 8
  %11 = alloca %struct.rtx_def*, align 8
  %12 = alloca %struct.rtx_def*, align 8
  store %struct.arg_data* %0, %struct.arg_data** %4, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %14 = icmp ne %struct.rtx_def* %13, null
  br i1 %14, label %15, label %303

; <label>:15:                                     ; preds = %3
  %16 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 75
  br i1 %21, label %22, label %38

; <label>:22:                                     ; preds = %15
  %23 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %24, i64 0, i64 0
  %26 = bitcast %union.rtunion_def* %25 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %7, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %29, i64 0, i64 1
  %31 = bitcast %union.rtunion_def* %30 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %33, i64 0, i64 0
  %35 = bitcast %union.rtunion_def* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  br label %38

; <label>:38:                                     ; preds = %22, %15
  store i32 0, i32* %8, align 4
  br label %39

; <label>:39:                                     ; preds = %299, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %302

; <label>:43:                                     ; preds = %39
  %44 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %44, i64 %46
  %48 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.args_size, %struct.args_size* %48, i32 0, i32 1
  %50 = load %union.tree_node*, %union.tree_node** %49, align 8
  %51 = icmp eq %union.tree_node* %50, null
  br i1 %51, label %52, label %61

; <label>:52:                                     ; preds = %43
  %53 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %53, i64 %55
  %57 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %56, i32 0, i32 9
  %58 = getelementptr inbounds %struct.args_size, %struct.args_size* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %59)
  br label %101

; <label>:61:                                     ; preds = %43
  %62 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %62, i64 %64
  %66 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %65, i32 0, i32 9
  %67 = getelementptr inbounds %struct.args_size, %struct.args_size* %66, i32 0, i32 1
  %68 = load %union.tree_node*, %union.tree_node** %67, align 8
  %69 = icmp eq %union.tree_node* %68, null
  br i1 %69, label %70, label %79

; <label>:70:                                     ; preds = %61
  %71 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %71, i64 %73
  %75 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %74, i32 0, i32 9
  %76 = getelementptr inbounds %struct.args_size, %struct.args_size* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call %union.tree_node* @size_int_wide(i64 %77, i32 1)
  br label %98

; <label>:79:                                     ; preds = %61
  %80 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %81 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %81, i64 %83
  %85 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %84, i32 0, i32 9
  %86 = getelementptr inbounds %struct.args_size, %struct.args_size* %85, i32 0, i32 1
  %87 = load %union.tree_node*, %union.tree_node** %86, align 8
  %88 = call %union.tree_node* @convert(%union.tree_node* %80, %union.tree_node* %87)
  %89 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %89, i64 %91
  %93 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %92, i32 0, i32 9
  %94 = getelementptr inbounds %struct.args_size, %struct.args_size* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call %union.tree_node* @size_int_wide(i64 %95, i32 1)
  %97 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %88, %union.tree_node* %96)
  br label %98

; <label>:98:                                     ; preds = %79, %70
  %99 = phi %union.tree_node* [ %78, %70 ], [ %97, %79 ]
  %100 = call %struct.rtx_def* @expand_expr(%union.tree_node* %99, %struct.rtx_def* null, i32 0, i32 0)
  br label %101

; <label>:101:                                    ; preds = %98, %52
  %102 = phi %struct.rtx_def* [ %60, %52 ], [ %100, %98 ]
  store %struct.rtx_def* %102, %struct.rtx_def** %10, align 8
  %103 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %103, i64 %105
  %107 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %106, i32 0, i32 10
  %108 = getelementptr inbounds %struct.args_size, %struct.args_size* %107, i32 0, i32 1
  %109 = load %union.tree_node*, %union.tree_node** %108, align 8
  %110 = icmp eq %union.tree_node* %109, null
  br i1 %110, label %111, label %120

; <label>:111:                                    ; preds = %101
  %112 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %112, i64 %114
  %116 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %115, i32 0, i32 10
  %117 = getelementptr inbounds %struct.args_size, %struct.args_size* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %118)
  br label %160

; <label>:120:                                    ; preds = %101
  %121 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %121, i64 %123
  %125 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %124, i32 0, i32 10
  %126 = getelementptr inbounds %struct.args_size, %struct.args_size* %125, i32 0, i32 1
  %127 = load %union.tree_node*, %union.tree_node** %126, align 8
  %128 = icmp eq %union.tree_node* %127, null
  br i1 %128, label %129, label %138

; <label>:129:                                    ; preds = %120
  %130 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %130, i64 %132
  %134 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %133, i32 0, i32 10
  %135 = getelementptr inbounds %struct.args_size, %struct.args_size* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call %union.tree_node* @size_int_wide(i64 %136, i32 1)
  br label %157

; <label>:138:                                    ; preds = %120
  %139 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %140 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %140, i64 %142
  %144 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %143, i32 0, i32 10
  %145 = getelementptr inbounds %struct.args_size, %struct.args_size* %144, i32 0, i32 1
  %146 = load %union.tree_node*, %union.tree_node** %145, align 8
  %147 = call %union.tree_node* @convert(%union.tree_node* %139, %union.tree_node* %146)
  %148 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %148, i64 %150
  %152 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %151, i32 0, i32 10
  %153 = getelementptr inbounds %struct.args_size, %struct.args_size* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call %union.tree_node* @size_int_wide(i64 %154, i32 1)
  %156 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %147, %union.tree_node* %155)
  br label %157

; <label>:157:                                    ; preds = %138, %129
  %158 = phi %union.tree_node* [ %137, %129 ], [ %156, %138 ]
  %159 = call %struct.rtx_def* @expand_expr(%union.tree_node* %158, %struct.rtx_def* null, i32 0, i32 0)
  br label %160

; <label>:160:                                    ; preds = %157, %111
  %161 = phi %struct.rtx_def* [ %119, %111 ], [ %159, %157 ]
  store %struct.rtx_def* %161, %struct.rtx_def** %11, align 8
  %162 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %162, i64 %164
  %166 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

; <label>:169:                                    ; preds = %160
  %170 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %170, i64 %172
  %174 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %173, i32 0, i32 4
  %175 = load %struct.rtx_def*, %struct.rtx_def** %174, align 8
  %176 = icmp ne %struct.rtx_def* %175, null
  br i1 %176, label %177, label %178

; <label>:177:                                    ; preds = %169
  br label %299

; <label>:178:                                    ; preds = %169, %160
  %179 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %180 = bitcast %struct.rtx_def* %179 to i32*
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, 65535
  %183 = icmp eq i32 %182, 54
  br i1 %183, label %184, label %192

; <label>:184:                                    ; preds = %178
  %185 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %186 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %186, i32 0, i32 1
  %188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %187, i64 0, i64 0
  %189 = bitcast %union.rtunion_def* %188 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %185, i64 %190)
  store %struct.rtx_def* %191, %struct.rtx_def** %12, align 8
  br label %200

; <label>:192:                                    ; preds = %178
  %193 = load i32, i32* @target_flags, align 4
  %194 = and i32 %193, 33554432
  %195 = icmp ne i32 %194, 0
  %196 = select i1 %195, i32 5, i32 4
  %197 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %198 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %199 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %196, %struct.rtx_def* %197, %struct.rtx_def* %198)
  store %struct.rtx_def* %199, %struct.rtx_def** %12, align 8
  br label %200

; <label>:200:                                    ; preds = %192, %184
  %201 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %201, i64 %203)
  store %struct.rtx_def* %204, %struct.rtx_def** %12, align 8
  %205 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %205, i64 %207
  %209 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %212 = call %struct.rtx_def* @gen_rtx_MEM(i32 %210, %struct.rtx_def* %211)
  %213 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %213, i64 %215
  %217 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %216, i32 0, i32 12
  store %struct.rtx_def* %212, %struct.rtx_def** %217, align 8
  %218 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %218, i64 %220
  %222 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %221, i32 0, i32 12
  %223 = load %struct.rtx_def*, %struct.rtx_def** %222, align 8
  %224 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %224, i64 %226
  %228 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %227, i32 0, i32 0
  %229 = load %union.tree_node*, %union.tree_node** %228, align 8
  %230 = bitcast %union.tree_node* %229 to %struct.tree_common*
  %231 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %230, i32 0, i32 1
  %232 = load %union.tree_node*, %union.tree_node** %231, align 8
  call void @set_mem_attributes(%struct.rtx_def* %223, %union.tree_node* %232, i32 1)
  %233 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %234 = bitcast %struct.rtx_def* %233 to i32*
  %235 = load i32, i32* %234, align 8
  %236 = and i32 %235, 65535
  %237 = icmp eq i32 %236, 54
  br i1 %237, label %238, label %246

; <label>:238:                                    ; preds = %200
  %239 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %240 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %240, i32 0, i32 1
  %242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %241, i64 0, i64 0
  %243 = bitcast %union.rtunion_def* %242 to i64*
  %244 = load i64, i64* %243, align 8
  %245 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %239, i64 %244)
  store %struct.rtx_def* %245, %struct.rtx_def** %12, align 8
  br label %254

; <label>:246:                                    ; preds = %200
  %247 = load i32, i32* @target_flags, align 4
  %248 = and i32 %247, 33554432
  %249 = icmp ne i32 %248, 0
  %250 = select i1 %249, i32 5, i32 4
  %251 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %252 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %253 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %250, %struct.rtx_def* %251, %struct.rtx_def* %252)
  store %struct.rtx_def* %253, %struct.rtx_def** %12, align 8
  br label %254

; <label>:254:                                    ; preds = %246, %238
  %255 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %255, i64 %257)
  store %struct.rtx_def* %258, %struct.rtx_def** %12, align 8
  %259 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %259, i64 %261
  %263 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %266 = call %struct.rtx_def* @gen_rtx_MEM(i32 %264, %struct.rtx_def* %265)
  %267 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %267, i64 %269
  %271 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %270, i32 0, i32 13
  store %struct.rtx_def* %266, %struct.rtx_def** %271, align 8
  %272 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %272, i64 %274
  %276 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %275, i32 0, i32 13
  %277 = load %struct.rtx_def*, %struct.rtx_def** %276, align 8
  %278 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %278, i64 %280
  %282 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %281, i32 0, i32 0
  %283 = load %union.tree_node*, %union.tree_node** %282, align 8
  %284 = bitcast %union.tree_node* %283 to %struct.tree_common*
  %285 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %284, i32 0, i32 1
  %286 = load %union.tree_node*, %union.tree_node** %285, align 8
  call void @set_mem_attributes(%struct.rtx_def* %277, %union.tree_node* %286, i32 1)
  %287 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %287, i64 %289
  %291 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %290, i32 0, i32 12
  %292 = load %struct.rtx_def*, %struct.rtx_def** %291, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %292, i64 0)
  %293 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %294 = load i32, i32* %8, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %293, i64 %295
  %297 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %296, i32 0, i32 13
  %298 = load %struct.rtx_def*, %struct.rtx_def** %297, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %298, i64 0)
  br label %299

; <label>:299:                                    ; preds = %254, %177
  %300 = load i32, i32* %8, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %8, align 4
  br label %39

; <label>:302:                                    ; preds = %39
  br label %303

; <label>:303:                                    ; preds = %302, %3
  ret void
}

declare void @anti_adjust_stack(%struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.rtx_def* @rtx_for_function_call(%union.tree_node*, %union.tree_node*) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca %union.tree_node*, align 8
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  store %union.tree_node* %1, %union.tree_node** %4, align 8
  %7 = load %union.tree_node*, %union.tree_node** %3, align 8
  %8 = icmp ne %union.tree_node* %7, null
  br i1 %8, label %9, label %48

; <label>:9:                                      ; preds = %2
  %10 = load %union.tree_node*, %union.tree_node** %3, align 8
  %11 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

; <label>:17:                                     ; preds = %9
  %18 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @assemble_external(%union.tree_node* %18)
  %19 = load %union.tree_node*, %union.tree_node** %3, align 8
  %20 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, -65537
  %24 = or i32 %23, 65536
  store i32 %24, i32* %21, align 8
  br label %25

; <label>:25:                                     ; preds = %17, %9
  %26 = load %union.tree_node*, %union.tree_node** %3, align 8
  %27 = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %28 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %27, i32 0, i32 17
  %29 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %30 = icmp ne %struct.rtx_def* %29, null
  br i1 %30, label %31, label %36

; <label>:31:                                     ; preds = %25
  %32 = load %union.tree_node*, %union.tree_node** %3, align 8
  %33 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %34 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %33, i32 0, i32 17
  %35 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  br label %42

; <label>:36:                                     ; preds = %25
  %37 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @make_decl_rtl(%union.tree_node* %37, i8* null)
  %38 = load %union.tree_node*, %union.tree_node** %3, align 8
  %39 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %40 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %39, i32 0, i32 17
  %41 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  br label %42

; <label>:42:                                     ; preds = %36, %31
  %43 = phi %struct.rtx_def* [ %35, %31 ], [ %41, %36 ]
  %44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %44, i64 0, i64 0
  %46 = bitcast %union.rtunion_def* %45 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %46, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %5, align 8
  br label %55

; <label>:48:                                     ; preds = %2
  call void @push_temp_slots()
  %49 = load %union.tree_node*, %union.tree_node** %4, align 8
  %50 = bitcast %union.tree_node* %49 to %struct.tree_exp*
  %51 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %50, i32 0, i32 2
  %52 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %51, i64 0, i64 0
  %53 = load %union.tree_node*, %union.tree_node** %52, align 8
  %54 = call %struct.rtx_def* @expand_expr(%union.tree_node* %53, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %54, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %6, align 8
  call void @pop_temp_slots()
  call void @emit_queue()
  br label %55

; <label>:55:                                     ; preds = %48, %42
  %56 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  ret %struct.rtx_def* %56
}

declare %struct.rtx_def* @hard_function_value(%union.tree_node*, %union.tree_node*, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal void @precompute_register_parameters(i32, %struct.arg_data*, i32*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arg_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.arg_data* %1, %struct.arg_data** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %200, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %203

; <label>:13:                                     ; preds = %9
  %14 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %14, i64 %16
  %18 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %17, i32 0, i32 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %20 = icmp ne %struct.rtx_def* %19, null
  br i1 %20, label %21, label %199

; <label>:21:                                     ; preds = %13
  %22 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %22, i64 %24
  %26 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %199, label %29

; <label>:29:                                     ; preds = %21
  %30 = load i32*, i32** %6, align 8
  store i32 1, i32* %30, align 4
  %31 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %31, i64 %33
  %35 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %34, i32 0, i32 2
  %36 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %37 = icmp eq %struct.rtx_def* %36, null
  br i1 %37, label %38, label %57

; <label>:38:                                     ; preds = %29
  call void @push_temp_slots()
  %39 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %39, i64 %41
  %43 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %42, i32 0, i32 0
  %44 = load %union.tree_node*, %union.tree_node** %43, align 8
  %45 = call %struct.rtx_def* @expand_expr(%union.tree_node* %44, %struct.rtx_def* null, i32 0, i32 0)
  %46 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %46, i64 %48
  %50 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %49, i32 0, i32 2
  store %struct.rtx_def* %45, %struct.rtx_def** %50, align 8
  %51 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %51, i64 %53
  %55 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %54, i32 0, i32 2
  %56 = load %struct.rtx_def*, %struct.rtx_def** %55, align 8
  call void @preserve_temp_slots(%struct.rtx_def* %56)
  call void @pop_temp_slots()
  call void @emit_queue()
  br label %57

; <label>:57:                                     ; preds = %38, %29
  %58 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %58, i64 %60
  %62 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %64, i64 %66
  %68 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %67, i32 0, i32 0
  %69 = load %union.tree_node*, %union.tree_node** %68, align 8
  %70 = bitcast %union.tree_node* %69 to %struct.tree_common*
  %71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %70, i32 0, i32 1
  %72 = load %union.tree_node*, %union.tree_node** %71, align 8
  %73 = bitcast %union.tree_node* %72 to %struct.tree_type*
  %74 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = lshr i32 %75, 9
  %77 = and i32 %76, 127
  %78 = icmp ne i32 %63, %77
  br i1 %78, label %79, label %118

; <label>:79:                                     ; preds = %57
  %80 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %80, i64 %82
  %84 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %86, i64 %88
  %90 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %89, i32 0, i32 0
  %91 = load %union.tree_node*, %union.tree_node** %90, align 8
  %92 = bitcast %union.tree_node* %91 to %struct.tree_common*
  %93 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %92, i32 0, i32 1
  %94 = load %union.tree_node*, %union.tree_node** %93, align 8
  %95 = bitcast %union.tree_node* %94 to %struct.tree_type*
  %96 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = lshr i32 %97, 9
  %99 = and i32 %98, 127
  %100 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %100, i64 %102
  %104 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %103, i32 0, i32 2
  %105 = load %struct.rtx_def*, %struct.rtx_def** %104, align 8
  %106 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %106, i64 %108
  %110 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.rtx_def* @convert_modes(i32 %85, i32 %99, %struct.rtx_def* %105, i32 %111)
  %113 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %113, i64 %115
  %117 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %116, i32 0, i32 2
  store %struct.rtx_def* %112, %struct.rtx_def** %117, align 8
  br label %118

; <label>:118:                                    ; preds = %79, %57
  %119 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %119, i64 %121
  %123 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %122, i32 0, i32 2
  %124 = load %struct.rtx_def*, %struct.rtx_def** %123, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 61
  br i1 %128, label %198, label %129

; <label>:129:                                    ; preds = %118
  %130 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %130, i64 %132
  %134 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %133, i32 0, i32 2
  %135 = load %struct.rtx_def*, %struct.rtx_def** %134, align 8
  %136 = bitcast %struct.rtx_def* %135 to i32*
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 63
  br i1 %139, label %140, label %155

; <label>:140:                                    ; preds = %129
  %141 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %141, i64 %143
  %145 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %144, i32 0, i32 2
  %146 = load %struct.rtx_def*, %struct.rtx_def** %145, align 8
  %147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %147, i64 0, i64 0
  %149 = bitcast %union.rtunion_def* %148 to %struct.rtx_def**
  %150 = load %struct.rtx_def*, %struct.rtx_def** %149, align 8
  %151 = bitcast %struct.rtx_def* %150 to i32*
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 61
  br i1 %154, label %198, label %155

; <label>:155:                                    ; preds = %140, %129
  %156 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %156, i64 %158
  %160 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 51
  br i1 %162, label %163, label %198

; <label>:163:                                    ; preds = %155
  %164 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %164, i64 %166
  %168 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %167, i32 0, i32 2
  %169 = load %struct.rtx_def*, %struct.rtx_def** %168, align 8
  %170 = call i32 @rtx_cost(%struct.rtx_def* %169, i32 47)
  %171 = icmp sgt i32 %170, 4
  br i1 %171, label %172, label %198

; <label>:172:                                    ; preds = %163
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

; <label>:176:                                    ; preds = %172
  %177 = call i32 @preserve_subexpressions_p()
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %198

; <label>:179:                                    ; preds = %176, %172
  %180 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %180, i64 %182
  %184 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %186, i64 %188
  %190 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %189, i32 0, i32 2
  %191 = load %struct.rtx_def*, %struct.rtx_def** %190, align 8
  %192 = call %struct.rtx_def* @copy_to_mode_reg(i32 %185, %struct.rtx_def* %191)
  %193 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %193, i64 %195
  %197 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %196, i32 0, i32 2
  store %struct.rtx_def* %192, %struct.rtx_def** %197, align 8
  br label %198

; <label>:198:                                    ; preds = %179, %176, %163, %155, %140, %118
  br label %199

; <label>:199:                                    ; preds = %198, %21, %13
  br label %200

; <label>:200:                                    ; preds = %199
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %9

; <label>:203:                                    ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.rtx_def* @save_fixed_argument_area(i32, %struct.rtx_def*, i32*, i32*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtx_def*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtx_def*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.rtx_def* %1, %struct.rtx_def** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %10, align 8
  store i32 0, i32* %9, align 4
  br label %14

; <label>:14:                                     ; preds = %41, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %44

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %30, label %22

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** @stack_usage_map, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %22, %18
  br label %41

; <label>:31:                                     ; preds = %22
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %38

; <label>:38:                                     ; preds = %35, %31
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  br label %41

; <label>:41:                                     ; preds = %38, %30
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %14

; <label>:44:                                     ; preds = %14
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %126

; <label>:48:                                     ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %50, %52
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %55, 8
  %57 = call i32 @mode_for_size(i32 %56, i32 1, i32 1)
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i32, i32* @target_flags, align 4
  %66 = and i32 %65, 33554432
  %67 = icmp ne i32 %66, 0
  %68 = select i1 %67, i32 8, i32 4
  %69 = sdiv i32 128, %68
  %70 = icmp slt i32 %64, %69
  br i1 %70, label %71, label %77

; <label>:71:                                     ; preds = %48
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  br label %83

; <label>:77:                                     ; preds = %48
  %78 = load i32, i32* @target_flags, align 4
  %79 = and i32 %78, 33554432
  %80 = icmp ne i32 %79, 0
  %81 = select i1 %80, i32 8, i32 4
  %82 = sdiv i32 128, %81
  br label %83

; <label>:83:                                     ; preds = %77, %71
  %84 = phi i32 [ %76, %71 ], [ %82, %77 ]
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %59, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %83
  store i32 51, i32* %12, align 4
  br label %89

; <label>:89:                                     ; preds = %88, %83
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %92, i64 %95)
  %97 = call %struct.rtx_def* @memory_address(i32 %91, %struct.rtx_def* %96)
  %98 = call %struct.rtx_def* @gen_rtx_MEM(i32 %90, %struct.rtx_def* %97)
  store %struct.rtx_def* %98, %struct.rtx_def** %13, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %100 = load i32, i32* @target_flags, align 4
  %101 = and i32 %100, 33554432
  %102 = icmp ne i32 %101, 0
  %103 = select i1 %102, i32 64, i32 32
  call void @set_mem_align(%struct.rtx_def* %99, i32 %103)
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %104, 51
  br i1 %105, label %106, label %119

; <label>:106:                                    ; preds = %89
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = call %struct.rtx_def* @assign_stack_temp(i32 51, i64 %108, i32 0)
  store %struct.rtx_def* %109, %struct.rtx_def** %10, align 8
  %110 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %111 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %110)
  %112 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* @target_flags, align 4
  %116 = and i32 %115, 33554432
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, i32 64, i32 32
  call void @move_by_pieces(%struct.rtx_def* %111, %struct.rtx_def* %112, i64 %114, i32 %118)
  br label %125

; <label>:119:                                    ; preds = %89
  %120 = load i32, i32* %12, align 4
  %121 = call %struct.rtx_def* @gen_reg_rtx(i32 %120)
  store %struct.rtx_def* %121, %struct.rtx_def** %10, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %124 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %122, %struct.rtx_def* %123)
  br label %125

; <label>:125:                                    ; preds = %119, %106
  br label %126

; <label>:126:                                    ; preds = %125, %44
  %127 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  ret %struct.rtx_def* %127
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @store_one_arg(%struct.arg_data*, %struct.rtx_def*, i32, i32, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.arg_data*, align 8
  %8 = alloca %struct.rtx_def*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.tree_node*, align 8
  %13 = alloca %struct.rtx_def*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.rtx_def*, align 8
  %22 = alloca %union.tree_node*, align 8
  %23 = alloca %union.tree_node*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.rtx_def*, align 8
  %27 = alloca %struct.rtx_def*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.rtx_def*, align 8
  store %struct.arg_data* %0, %struct.arg_data** %7, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %30 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %31 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %30, i32 0, i32 0
  %32 = load %union.tree_node*, %union.tree_node** %31, align 8
  store %union.tree_node* %32, %union.tree_node** %12, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %33 = load %union.tree_node*, %union.tree_node** %12, align 8
  %34 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %35 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %5
  store i32 1, i32* %6, align 4
  br label %1063

; <label>:40:                                     ; preds = %5
  call void @push_temp_slots()
  %41 = load i32, i32* @target_flags, align 4
  %42 = and i32 %41, 4096
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %251

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 256
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %251, label %48

; <label>:48:                                     ; preds = %44
  %49 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %50 = icmp ne %struct.rtx_def* %49, null
  br i1 %50, label %51, label %224

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %224, label %54

; <label>:54:                                     ; preds = %51
  %55 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %56 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %55, i32 0, i32 12
  %57 = load %struct.rtx_def*, %struct.rtx_def** %56, align 8
  %58 = icmp ne %struct.rtx_def* %57, null
  br i1 %58, label %59, label %224

; <label>:59:                                     ; preds = %54
  %60 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %61 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %60, i32 0, i32 13
  %62 = load %struct.rtx_def*, %struct.rtx_def** %61, align 8
  %63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %63, i64 0, i64 0
  %65 = bitcast %union.rtunion_def* %64 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %65, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 75
  br i1 %70, label %71, label %88

; <label>:71:                                     ; preds = %59
  %72 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %73 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %72, i32 0, i32 13
  %74 = load %struct.rtx_def*, %struct.rtx_def** %73, align 8
  %75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %75, i64 0, i64 0
  %77 = bitcast %union.rtunion_def* %76 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %77, align 8
  %79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %79, i64 0, i64 1
  %81 = bitcast %union.rtunion_def* %80 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %81, align 8
  %83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %83, i64 0, i64 0
  %85 = bitcast %union.rtunion_def* %84 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %17, align 4
  br label %89

; <label>:88:                                     ; preds = %59
  store i32 0, i32* %17, align 4
  br label %89

; <label>:89:                                     ; preds = %88, %71
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %93 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %92, i32 0, i32 11
  %94 = getelementptr inbounds %struct.args_size, %struct.args_size* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %91, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %16, align 4
  br label %99

; <label>:99:                                     ; preds = %117, %89
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %120

; <label>:103:                                    ; preds = %99
  %104 = load i8*, i8** @stack_usage_map, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

; <label>:111:                                    ; preds = %103
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %116

; <label>:115:                                    ; preds = %111
  br label %120

; <label>:116:                                    ; preds = %111, %103
  br label %117

; <label>:117:                                    ; preds = %116
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %99

; <label>:120:                                    ; preds = %115, %99
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %223

; <label>:124:                                    ; preds = %120
  %125 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %126 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %125, i32 0, i32 11
  %127 = getelementptr inbounds %struct.args_size, %struct.args_size* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = mul nsw i64 %128, 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @mode_for_size(i32 %130, i32 1, i32 1)
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %135 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %134, i32 0, i32 13
  %136 = load %struct.rtx_def*, %struct.rtx_def** %135, align 8
  %137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %137, i64 0, i64 0
  %139 = bitcast %union.rtunion_def* %138 to %struct.rtx_def**
  %140 = load %struct.rtx_def*, %struct.rtx_def** %139, align 8
  %141 = call %struct.rtx_def* @memory_address(i32 %133, %struct.rtx_def* %140)
  %142 = call %struct.rtx_def* @gen_rtx_MEM(i32 %132, %struct.rtx_def* %141)
  store %struct.rtx_def* %142, %struct.rtx_def** %21, align 8
  %143 = load i32, i32* %20, align 4
  %144 = icmp eq i32 %143, 51
  br i1 %144, label %145, label %212

; <label>:145:                                    ; preds = %124
  %146 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %147 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %146, i32 0, i32 0
  %148 = load %union.tree_node*, %union.tree_node** %147, align 8
  %149 = bitcast %union.tree_node* %148 to %struct.tree_common*
  %150 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %149, i32 0, i32 1
  %151 = load %union.tree_node*, %union.tree_node** %150, align 8
  store %union.tree_node* %151, %union.tree_node** %22, align 8
  %152 = load %union.tree_node*, %union.tree_node** %22, align 8
  %153 = load %union.tree_node*, %union.tree_node** %22, align 8
  %154 = bitcast %union.tree_node* %153 to %struct.tree_common*
  %155 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = lshr i32 %156, 12
  %158 = and i32 %157, 1
  %159 = mul nsw i32 %158, 1
  %160 = load %union.tree_node*, %union.tree_node** %22, align 8
  %161 = bitcast %union.tree_node* %160 to %struct.tree_common*
  %162 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = lshr i32 %163, 11
  %165 = and i32 %164, 1
  %166 = mul nsw i32 %165, 2
  %167 = or i32 %159, %166
  %168 = load %union.tree_node*, %union.tree_node** %22, align 8
  %169 = bitcast %union.tree_node* %168 to %struct.tree_type*
  %170 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = lshr i32 %171, 21
  %173 = and i32 %172, 1
  %174 = mul nsw i32 %173, 4
  %175 = or i32 %167, %174
  %176 = load %union.tree_node*, %union.tree_node** %22, align 8
  %177 = bitcast %union.tree_node* %176 to %struct.tree_common*
  %178 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, 255
  %181 = icmp eq i32 %180, 20
  br i1 %181, label %182, label %188

; <label>:182:                                    ; preds = %145
  %183 = load %union.tree_node*, %union.tree_node** %22, align 8
  %184 = bitcast %union.tree_node* %183 to %struct.tree_common*
  %185 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %184, i32 0, i32 1
  %186 = load %union.tree_node*, %union.tree_node** %185, align 8
  %187 = icmp ne %union.tree_node* %186, null
  br label %188

; <label>:188:                                    ; preds = %182, %145
  %189 = phi i1 [ false, %145 ], [ %187, %182 ]
  %190 = zext i1 %189 to i32
  %191 = mul nsw i32 %190, 8
  %192 = or i32 %175, %191
  %193 = or i32 %192, 1
  %194 = call %union.tree_node* @build_qualified_type(%union.tree_node* %152, i32 %193)
  store %union.tree_node* %194, %union.tree_node** %23, align 8
  %195 = load %union.tree_node*, %union.tree_node** %23, align 8
  %196 = call %struct.rtx_def* @assign_temp(%union.tree_node* %195, i32 0, i32 1, i32 1)
  %197 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %198 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %197, i32 0, i32 14
  store %struct.rtx_def* %196, %struct.rtx_def** %198, align 8
  %199 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %200 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %199, i32 0, i32 14
  %201 = load %struct.rtx_def*, %struct.rtx_def** %200, align 8
  call void @preserve_temp_slots(%struct.rtx_def* %201)
  %202 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %203 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %202, i32 0, i32 14
  %204 = load %struct.rtx_def*, %struct.rtx_def** %203, align 8
  %205 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %204)
  %206 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %207 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %208 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %207, i32 0, i32 0
  %209 = load %union.tree_node*, %union.tree_node** %208, align 8
  %210 = call %struct.rtx_def* @expr_size(%union.tree_node* %209)
  %211 = call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %205, %struct.rtx_def* %206, %struct.rtx_def* %210)
  br label %222

; <label>:212:                                    ; preds = %124
  %213 = load i32, i32* %20, align 4
  %214 = call %struct.rtx_def* @gen_reg_rtx(i32 %213)
  %215 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %216 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %215, i32 0, i32 14
  store %struct.rtx_def* %214, %struct.rtx_def** %216, align 8
  %217 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %218 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %217, i32 0, i32 14
  %219 = load %struct.rtx_def*, %struct.rtx_def** %218, align 8
  %220 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %221 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %219, %struct.rtx_def* %220)
  br label %222

; <label>:222:                                    ; preds = %212, %188
  br label %223

; <label>:223:                                    ; preds = %222, %120
  br label %224

; <label>:224:                                    ; preds = %223, %54, %51, %48
  %225 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %226 = icmp ne %struct.rtx_def* %225, null
  br i1 %226, label %227, label %250

; <label>:227:                                    ; preds = %224
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %250, label %230

; <label>:230:                                    ; preds = %227
  %231 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %232 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %231, i32 0, i32 12
  %233 = load %struct.rtx_def*, %struct.rtx_def** %232, align 8
  %234 = icmp ne %struct.rtx_def* %233, null
  br i1 %234, label %235, label %250

; <label>:235:                                    ; preds = %230
  %236 = load i32, i32* %17, align 4
  store i32 %236, i32* %16, align 4
  br label %237

; <label>:237:                                    ; preds = %246, %235
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* %18, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %249

; <label>:241:                                    ; preds = %237
  %242 = load i8*, i8** @stack_usage_map, align 8
  %243 = load i32, i32* %16, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  store i8 1, i8* %245, align 1
  br label %246

; <label>:246:                                    ; preds = %241
  %247 = load i32, i32* %16, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %16, align 4
  br label %237

; <label>:249:                                    ; preds = %237
  br label %250

; <label>:250:                                    ; preds = %249, %230, %227, %224
  br label %251

; <label>:251:                                    ; preds = %250, %44, %40
  %252 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %253 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %272, label %256

; <label>:256:                                    ; preds = %251
  %257 = load i32, i32* %9, align 4
  %258 = and i32 %257, 256
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

; <label>:260:                                    ; preds = %256
  %261 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %262 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %261, i32 0, i32 5
  %263 = load %struct.rtx_def*, %struct.rtx_def** %262, align 8
  store %struct.rtx_def* %263, %struct.rtx_def** %13, align 8
  br label %268

; <label>:264:                                    ; preds = %256
  %265 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %266 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %265, i32 0, i32 4
  %267 = load %struct.rtx_def*, %struct.rtx_def** %266, align 8
  store %struct.rtx_def* %267, %struct.rtx_def** %13, align 8
  br label %268

; <label>:268:                                    ; preds = %264, %260
  %269 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %270 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %14, align 4
  br label %272

; <label>:272:                                    ; preds = %268, %251
  %273 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %274 = icmp ne %struct.rtx_def* %273, null
  br i1 %274, label %275, label %279

; <label>:275:                                    ; preds = %272
  %276 = load i32, i32* %14, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %279

; <label>:278:                                    ; preds = %275
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 4370, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.store_one_arg, i32 0, i32 0)) #8
  unreachable

; <label>:279:                                    ; preds = %275, %272
  %280 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %281 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %280, i32 0, i32 16
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

; <label>:284:                                    ; preds = %279
  store %struct.rtx_def* null, %struct.rtx_def** %13, align 8
  br label %285

; <label>:285:                                    ; preds = %284, %279
  %286 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %287 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %286, i32 0, i32 2
  %288 = load %struct.rtx_def*, %struct.rtx_def** %287, align 8
  %289 = icmp eq %struct.rtx_def* %288, null
  br i1 %289, label %290, label %370

; <label>:290:                                    ; preds = %285
  %291 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %292 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

; <label>:295:                                    ; preds = %290
  %296 = load i32, i32* @stack_arg_under_construction, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* @stack_arg_under_construction, align 4
  br label %298

; <label>:298:                                    ; preds = %295, %290
  %299 = load %union.tree_node*, %union.tree_node** %12, align 8
  %300 = load i32, i32* %14, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %316, label %302

; <label>:302:                                    ; preds = %298
  %303 = load %union.tree_node*, %union.tree_node** %12, align 8
  %304 = bitcast %union.tree_node* %303 to %struct.tree_common*
  %305 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %304, i32 0, i32 1
  %306 = load %union.tree_node*, %union.tree_node** %305, align 8
  %307 = bitcast %union.tree_node* %306 to %struct.tree_type*
  %308 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 4
  %310 = lshr i32 %309, 9
  %311 = and i32 %310, 127
  %312 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %313 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = icmp ne i32 %311, %314
  br i1 %315, label %316, label %317

; <label>:316:                                    ; preds = %302, %298
  br label %321

; <label>:317:                                    ; preds = %302
  %318 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %319 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %318, i32 0, i32 12
  %320 = load %struct.rtx_def*, %struct.rtx_def** %319, align 8
  br label %321

; <label>:321:                                    ; preds = %317, %316
  %322 = phi %struct.rtx_def* [ null, %316 ], [ %320, %317 ]
  %323 = call %struct.rtx_def* @expand_expr(%union.tree_node* %299, %struct.rtx_def* %322, i32 0, i32 0)
  %324 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %325 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %324, i32 0, i32 2
  store %struct.rtx_def* %323, %struct.rtx_def** %325, align 8
  %326 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %327 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = load %union.tree_node*, %union.tree_node** %12, align 8
  %330 = bitcast %union.tree_node* %329 to %struct.tree_common*
  %331 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %330, i32 0, i32 1
  %332 = load %union.tree_node*, %union.tree_node** %331, align 8
  %333 = bitcast %union.tree_node* %332 to %struct.tree_type*
  %334 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 4
  %336 = lshr i32 %335, 9
  %337 = and i32 %336, 127
  %338 = icmp ne i32 %328, %337
  br i1 %338, label %339, label %361

; <label>:339:                                    ; preds = %321
  %340 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %341 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = load %union.tree_node*, %union.tree_node** %12, align 8
  %344 = bitcast %union.tree_node* %343 to %struct.tree_common*
  %345 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %344, i32 0, i32 1
  %346 = load %union.tree_node*, %union.tree_node** %345, align 8
  %347 = bitcast %union.tree_node* %346 to %struct.tree_type*
  %348 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %347, i32 0, i32 6
  %349 = load i32, i32* %348, align 4
  %350 = lshr i32 %349, 9
  %351 = and i32 %350, 127
  %352 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %353 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %352, i32 0, i32 2
  %354 = load %struct.rtx_def*, %struct.rtx_def** %353, align 8
  %355 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %356 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 8
  %358 = call %struct.rtx_def* @convert_modes(i32 %342, i32 %351, %struct.rtx_def* %354, i32 %357)
  %359 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %360 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %359, i32 0, i32 2
  store %struct.rtx_def* %358, %struct.rtx_def** %360, align 8
  br label %361

; <label>:361:                                    ; preds = %339, %321
  %362 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %363 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %362, i32 0, i32 8
  %364 = load i32, i32* %363, align 8
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %369

; <label>:366:                                    ; preds = %361
  %367 = load i32, i32* @stack_arg_under_construction, align 4
  %368 = add nsw i32 %367, -1
  store i32 %368, i32* @stack_arg_under_construction, align 4
  br label %369

; <label>:369:                                    ; preds = %366, %361
  br label %370

; <label>:370:                                    ; preds = %369, %285
  %371 = load i32, i32* %9, align 4
  %372 = and i32 %371, 8
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

; <label>:374:                                    ; preds = %370
  call void @do_pending_stack_adjust()
  br label %375

; <label>:375:                                    ; preds = %374, %370
  %376 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %377 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %376, i32 0, i32 2
  %378 = load %struct.rtx_def*, %struct.rtx_def** %377, align 8
  %379 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %380 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %379, i32 0, i32 12
  %381 = load %struct.rtx_def*, %struct.rtx_def** %380, align 8
  %382 = icmp eq %struct.rtx_def* %378, %381
  br i1 %382, label %383, label %384

; <label>:383:                                    ; preds = %375
  br label %1055

; <label>:384:                                    ; preds = %375
  %385 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %386 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 8
  %388 = icmp ne i32 %387, 51
  br i1 %388, label %389, label %539

; <label>:389:                                    ; preds = %384
  %390 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %391 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %393
  %395 = load i8, i8* %394, align 1
  %396 = zext i8 %395 to i32
  store i32 %396, i32* %24, align 4
  %397 = load i32, i32* @target_flags, align 4
  %398 = and i32 %397, 33554432
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %404

; <label>:400:                                    ; preds = %389
  %401 = load i32, i32* %24, align 4
  %402 = add nsw i32 %401, 7
  %403 = and i32 %402, -8
  br label %408

; <label>:404:                                    ; preds = %389
  %405 = load i32, i32* %24, align 4
  %406 = add nsw i32 %405, 1
  %407 = and i32 %406, -2
  br label %408

; <label>:408:                                    ; preds = %404, %400
  %409 = phi i32 [ %403, %400 ], [ %407, %404 ]
  store i32 %409, i32* %24, align 4
  %410 = load i32, i32* %24, align 4
  store i32 %410, i32* %15, align 4
  %411 = load i32, i32* %24, align 4
  %412 = load i32, i32* @target_flags, align 4
  %413 = and i32 %412, 33554432
  %414 = icmp ne i32 %413, 0
  %415 = select i1 %414, i32 64, i32 32
  %416 = sdiv i32 %415, 8
  %417 = add nsw i32 %411, %416
  %418 = sub nsw i32 %417, 1
  %419 = load i32, i32* @target_flags, align 4
  %420 = and i32 %419, 33554432
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, i32 64, i32 32
  %423 = sdiv i32 %422, 8
  %424 = sdiv i32 %418, %423
  %425 = load i32, i32* @target_flags, align 4
  %426 = and i32 %425, 33554432
  %427 = icmp ne i32 %426, 0
  %428 = select i1 %427, i32 64, i32 32
  %429 = sdiv i32 %428, 8
  %430 = mul nsw i32 %424, %429
  store i32 %430, i32* %15, align 4
  %431 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %432 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %431, i32 0, i32 2
  %433 = load %struct.rtx_def*, %struct.rtx_def** %432, align 8
  %434 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %435 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 8
  %437 = load %union.tree_node*, %union.tree_node** %12, align 8
  %438 = bitcast %union.tree_node* %437 to %struct.tree_common*
  %439 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %438, i32 0, i32 1
  %440 = load %union.tree_node*, %union.tree_node** %439, align 8
  %441 = load i32, i32* %14, align 4
  %442 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %443 = load i32, i32* %15, align 4
  %444 = load i32, i32* %24, align 4
  %445 = sub nsw i32 %443, %444
  %446 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %447 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %448 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %447, i32 0, i32 9
  %449 = getelementptr inbounds %struct.args_size, %struct.args_size* %448, i32 0, i32 1
  %450 = load %union.tree_node*, %union.tree_node** %449, align 8
  %451 = icmp eq %union.tree_node* %450, null
  br i1 %451, label %452, label %458

; <label>:452:                                    ; preds = %408
  %453 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %454 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %453, i32 0, i32 9
  %455 = getelementptr inbounds %struct.args_size, %struct.args_size* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %456)
  br label %486

; <label>:458:                                    ; preds = %408
  %459 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %460 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %459, i32 0, i32 9
  %461 = getelementptr inbounds %struct.args_size, %struct.args_size* %460, i32 0, i32 1
  %462 = load %union.tree_node*, %union.tree_node** %461, align 8
  %463 = icmp eq %union.tree_node* %462, null
  br i1 %463, label %464, label %470

; <label>:464:                                    ; preds = %458
  %465 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %466 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %465, i32 0, i32 9
  %467 = getelementptr inbounds %struct.args_size, %struct.args_size* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = call %union.tree_node* @size_int_wide(i64 %468, i32 1)
  br label %483

; <label>:470:                                    ; preds = %458
  %471 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %472 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %473 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %472, i32 0, i32 9
  %474 = getelementptr inbounds %struct.args_size, %struct.args_size* %473, i32 0, i32 1
  %475 = load %union.tree_node*, %union.tree_node** %474, align 8
  %476 = call %union.tree_node* @convert(%union.tree_node* %471, %union.tree_node* %475)
  %477 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %478 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %477, i32 0, i32 9
  %479 = getelementptr inbounds %struct.args_size, %struct.args_size* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = call %union.tree_node* @size_int_wide(i64 %480, i32 1)
  %482 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %476, %union.tree_node* %481)
  br label %483

; <label>:483:                                    ; preds = %470, %464
  %484 = phi %union.tree_node* [ %469, %464 ], [ %482, %470 ]
  %485 = call %struct.rtx_def* @expand_expr(%union.tree_node* %484, %struct.rtx_def* null, i32 0, i32 0)
  br label %486

; <label>:486:                                    ; preds = %483, %452
  %487 = phi %struct.rtx_def* [ %457, %452 ], [ %485, %483 ]
  %488 = load i32, i32* %11, align 4
  %489 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %490 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %489, i32 0, i32 17
  %491 = getelementptr inbounds %struct.args_size, %struct.args_size* %490, i32 0, i32 1
  %492 = load %union.tree_node*, %union.tree_node** %491, align 8
  %493 = icmp eq %union.tree_node* %492, null
  br i1 %493, label %494, label %500

; <label>:494:                                    ; preds = %486
  %495 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %496 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %495, i32 0, i32 17
  %497 = getelementptr inbounds %struct.args_size, %struct.args_size* %496, i32 0, i32 0
  %498 = load i64, i64* %497, align 8
  %499 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %498)
  br label %528

; <label>:500:                                    ; preds = %486
  %501 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %502 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %501, i32 0, i32 17
  %503 = getelementptr inbounds %struct.args_size, %struct.args_size* %502, i32 0, i32 1
  %504 = load %union.tree_node*, %union.tree_node** %503, align 8
  %505 = icmp eq %union.tree_node* %504, null
  br i1 %505, label %506, label %512

; <label>:506:                                    ; preds = %500
  %507 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %508 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %507, i32 0, i32 17
  %509 = getelementptr inbounds %struct.args_size, %struct.args_size* %508, i32 0, i32 0
  %510 = load i64, i64* %509, align 8
  %511 = call %union.tree_node* @size_int_wide(i64 %510, i32 1)
  br label %525

; <label>:512:                                    ; preds = %500
  %513 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %514 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %515 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %514, i32 0, i32 17
  %516 = getelementptr inbounds %struct.args_size, %struct.args_size* %515, i32 0, i32 1
  %517 = load %union.tree_node*, %union.tree_node** %516, align 8
  %518 = call %union.tree_node* @convert(%union.tree_node* %513, %union.tree_node* %517)
  %519 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %520 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %519, i32 0, i32 17
  %521 = getelementptr inbounds %struct.args_size, %struct.args_size* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = call %union.tree_node* @size_int_wide(i64 %522, i32 1)
  %524 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %518, %union.tree_node* %523)
  br label %525

; <label>:525:                                    ; preds = %512, %506
  %526 = phi %union.tree_node* [ %511, %506 ], [ %524, %512 ]
  %527 = call %struct.rtx_def* @expand_expr(%union.tree_node* %526, %struct.rtx_def* null, i32 0, i32 0)
  br label %528

; <label>:528:                                    ; preds = %525, %494
  %529 = phi %struct.rtx_def* [ %499, %494 ], [ %527, %525 ]
  call void @emit_push_insn(%struct.rtx_def* %433, i32 %436, %union.tree_node* %440, %struct.rtx_def* null, i32 0, i32 %441, %struct.rtx_def* %442, i32 %445, %struct.rtx_def* %446, %struct.rtx_def* %487, i32 %488, %struct.rtx_def* %529)
  %530 = load i32, i32* %14, align 4
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %538

; <label>:532:                                    ; preds = %528
  %533 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %534 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %533, i32 0, i32 12
  %535 = load %struct.rtx_def*, %struct.rtx_def** %534, align 8
  %536 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %537 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %536, i32 0, i32 2
  store %struct.rtx_def* %535, %struct.rtx_def** %537, align 8
  br label %538

; <label>:538:                                    ; preds = %532, %528
  br label %1054

; <label>:539:                                    ; preds = %384
  %540 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %541 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %540, i32 0, i32 11
  %542 = getelementptr inbounds %struct.args_size, %struct.args_size* %541, i32 0, i32 1
  %543 = load %union.tree_node*, %union.tree_node** %542, align 8
  %544 = icmp ne %union.tree_node* %543, null
  br i1 %544, label %545, label %587

; <label>:545:                                    ; preds = %539
  store i32 0, i32* %25, align 4
  %546 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %547 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %546, i32 0, i32 11
  %548 = getelementptr inbounds %struct.args_size, %struct.args_size* %547, i32 0, i32 1
  %549 = load %union.tree_node*, %union.tree_node** %548, align 8
  %550 = icmp eq %union.tree_node* %549, null
  br i1 %550, label %551, label %557

; <label>:551:                                    ; preds = %545
  %552 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %553 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %552, i32 0, i32 11
  %554 = getelementptr inbounds %struct.args_size, %struct.args_size* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 8
  %556 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %555)
  br label %585

; <label>:557:                                    ; preds = %545
  %558 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %559 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %558, i32 0, i32 11
  %560 = getelementptr inbounds %struct.args_size, %struct.args_size* %559, i32 0, i32 1
  %561 = load %union.tree_node*, %union.tree_node** %560, align 8
  %562 = icmp eq %union.tree_node* %561, null
  br i1 %562, label %563, label %569

; <label>:563:                                    ; preds = %557
  %564 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %565 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %564, i32 0, i32 11
  %566 = getelementptr inbounds %struct.args_size, %struct.args_size* %565, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = call %union.tree_node* @size_int_wide(i64 %567, i32 1)
  br label %582

; <label>:569:                                    ; preds = %557
  %570 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %571 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %572 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %571, i32 0, i32 11
  %573 = getelementptr inbounds %struct.args_size, %struct.args_size* %572, i32 0, i32 1
  %574 = load %union.tree_node*, %union.tree_node** %573, align 8
  %575 = call %union.tree_node* @convert(%union.tree_node* %570, %union.tree_node* %574)
  %576 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %577 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %576, i32 0, i32 11
  %578 = getelementptr inbounds %struct.args_size, %struct.args_size* %577, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  %580 = call %union.tree_node* @size_int_wide(i64 %579, i32 1)
  %581 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %575, %union.tree_node* %580)
  br label %582

; <label>:582:                                    ; preds = %569, %563
  %583 = phi %union.tree_node* [ %568, %563 ], [ %581, %569 ]
  %584 = call %struct.rtx_def* @expand_expr(%union.tree_node* %583, %struct.rtx_def* null, i32 0, i32 0)
  br label %585

; <label>:585:                                    ; preds = %582, %551
  %586 = phi %struct.rtx_def* [ %556, %551 ], [ %584, %582 ]
  store %struct.rtx_def* %586, %struct.rtx_def** %26, align 8
  br label %609

; <label>:587:                                    ; preds = %539
  %588 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %589 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %588, i32 0, i32 11
  %590 = getelementptr inbounds %struct.args_size, %struct.args_size* %589, i32 0, i32 0
  %591 = load i64, i64* %590, align 8
  %592 = load %union.tree_node*, %union.tree_node** %12, align 8
  %593 = bitcast %union.tree_node* %592 to %struct.tree_common*
  %594 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %593, i32 0, i32 1
  %595 = load %union.tree_node*, %union.tree_node** %594, align 8
  %596 = call i64 @int_size_in_bytes(%union.tree_node* %595)
  %597 = sub nsw i64 %591, %596
  %598 = load i32, i32* %14, align 4
  %599 = load i32, i32* @target_flags, align 4
  %600 = and i32 %599, 33554432
  %601 = icmp ne i32 %600, 0
  %602 = select i1 %601, i32 8, i32 4
  %603 = mul nsw i32 %598, %602
  %604 = sext i32 %603 to i64
  %605 = add nsw i64 %597, %604
  %606 = trunc i64 %605 to i32
  store i32 %606, i32* %25, align 4
  %607 = load %union.tree_node*, %union.tree_node** %12, align 8
  %608 = call %struct.rtx_def* @expr_size(%union.tree_node* %607)
  store %struct.rtx_def* %608, %struct.rtx_def** %26, align 8
  br label %609

; <label>:609:                                    ; preds = %587, %585
  %610 = load i32, i32* %9, align 4
  %611 = and i32 %610, 256
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %761

; <label>:613:                                    ; preds = %609
  %614 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %615 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %614, i32 0, i32 2
  %616 = load %struct.rtx_def*, %struct.rtx_def** %615, align 8
  %617 = bitcast %struct.rtx_def* %616 to i32*
  %618 = load i32, i32* %617, align 8
  %619 = and i32 %618, 65535
  %620 = icmp eq i32 %619, 66
  br i1 %620, label %621, label %761

; <label>:621:                                    ; preds = %613
  %622 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %623 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %622, i32 0, i32 2
  %624 = load %struct.rtx_def*, %struct.rtx_def** %623, align 8
  store %struct.rtx_def* %624, %struct.rtx_def** %27, align 8
  store i32 0, i32* %28, align 4
  %625 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %626 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %625, i32 0, i32 1
  %627 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %626, i64 0, i64 0
  %628 = bitcast %union.rtunion_def* %627 to %struct.rtx_def**
  %629 = load %struct.rtx_def*, %struct.rtx_def** %628, align 8
  %630 = load %struct.function*, %struct.function** @cfun, align 8
  %631 = getelementptr inbounds %struct.function, %struct.function* %630, i32 0, i32 15
  %632 = load %struct.rtx_def*, %struct.rtx_def** %631, align 8
  %633 = icmp eq %struct.rtx_def* %629, %632
  br i1 %633, label %672, label %634

; <label>:634:                                    ; preds = %621
  %635 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %636 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %635, i32 0, i32 1
  %637 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %636, i64 0, i64 0
  %638 = bitcast %union.rtunion_def* %637 to %struct.rtx_def**
  %639 = load %struct.rtx_def*, %struct.rtx_def** %638, align 8
  %640 = bitcast %struct.rtx_def* %639 to i32*
  %641 = load i32, i32* %640, align 8
  %642 = and i32 %641, 65535
  %643 = icmp eq i32 %642, 75
  br i1 %643, label %644, label %760

; <label>:644:                                    ; preds = %634
  %645 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %646 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %645, i32 0, i32 1
  %647 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %646, i64 0, i64 0
  %648 = bitcast %union.rtunion_def* %647 to %struct.rtx_def**
  %649 = load %struct.rtx_def*, %struct.rtx_def** %648, align 8
  %650 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %649, i32 0, i32 1
  %651 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %650, i64 0, i64 0
  %652 = bitcast %union.rtunion_def* %651 to %struct.rtx_def**
  %653 = load %struct.rtx_def*, %struct.rtx_def** %652, align 8
  %654 = load %struct.function*, %struct.function** @cfun, align 8
  %655 = getelementptr inbounds %struct.function, %struct.function* %654, i32 0, i32 15
  %656 = load %struct.rtx_def*, %struct.rtx_def** %655, align 8
  %657 = icmp eq %struct.rtx_def* %653, %656
  br i1 %657, label %658, label %760

; <label>:658:                                    ; preds = %644
  %659 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %660 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %659, i32 0, i32 1
  %661 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %660, i64 0, i64 0
  %662 = bitcast %union.rtunion_def* %661 to %struct.rtx_def**
  %663 = load %struct.rtx_def*, %struct.rtx_def** %662, align 8
  %664 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %663, i32 0, i32 1
  %665 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %664, i64 0, i64 1
  %666 = bitcast %union.rtunion_def* %665 to %struct.rtx_def**
  %667 = load %struct.rtx_def*, %struct.rtx_def** %666, align 8
  %668 = bitcast %struct.rtx_def* %667 to i32*
  %669 = load i32, i32* %668, align 8
  %670 = and i32 %669, 65535
  %671 = icmp eq i32 %670, 54
  br i1 %671, label %672, label %760

; <label>:672:                                    ; preds = %658, %621
  %673 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %674 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %673, i32 0, i32 1
  %675 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %674, i64 0, i64 0
  %676 = bitcast %union.rtunion_def* %675 to %struct.rtx_def**
  %677 = load %struct.rtx_def*, %struct.rtx_def** %676, align 8
  %678 = load %struct.function*, %struct.function** @cfun, align 8
  %679 = getelementptr inbounds %struct.function, %struct.function* %678, i32 0, i32 15
  %680 = load %struct.rtx_def*, %struct.rtx_def** %679, align 8
  %681 = icmp ne %struct.rtx_def* %677, %680
  br i1 %681, label %682, label %697

; <label>:682:                                    ; preds = %672
  %683 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %684 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %683, i32 0, i32 1
  %685 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %684, i64 0, i64 0
  %686 = bitcast %union.rtunion_def* %685 to %struct.rtx_def**
  %687 = load %struct.rtx_def*, %struct.rtx_def** %686, align 8
  %688 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %687, i32 0, i32 1
  %689 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %688, i64 0, i64 1
  %690 = bitcast %union.rtunion_def* %689 to %struct.rtx_def**
  %691 = load %struct.rtx_def*, %struct.rtx_def** %690, align 8
  %692 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %691, i32 0, i32 1
  %693 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %692, i64 0, i64 0
  %694 = bitcast %union.rtunion_def* %693 to i64*
  %695 = load i64, i64* %694, align 8
  %696 = trunc i64 %695 to i32
  store i32 %696, i32* %28, align 4
  br label %697

; <label>:697:                                    ; preds = %682, %672
  %698 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %699 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %698, i32 0, i32 9
  %700 = getelementptr inbounds %struct.args_size, %struct.args_size* %699, i32 0, i32 1
  %701 = load %union.tree_node*, %union.tree_node** %700, align 8
  %702 = icmp ne %union.tree_node* %701, null
  br i1 %702, label %709, label %703

; <label>:703:                                    ; preds = %697
  %704 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %705 = bitcast %struct.rtx_def* %704 to i32*
  %706 = load i32, i32* %705, align 8
  %707 = and i32 %706, 65535
  %708 = icmp ne i32 %707, 54
  br i1 %708, label %709, label %710

; <label>:709:                                    ; preds = %703, %697
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 4515, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.store_one_arg, i32 0, i32 0)) #8
  unreachable

; <label>:710:                                    ; preds = %703
  %711 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %712 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %711, i32 0, i32 9
  %713 = getelementptr inbounds %struct.args_size, %struct.args_size* %712, i32 0, i32 0
  %714 = load i64, i64* %713, align 8
  %715 = load i32, i32* %28, align 4
  %716 = sext i32 %715 to i64
  %717 = icmp sgt i64 %714, %716
  br i1 %717, label %718, label %734

; <label>:718:                                    ; preds = %710
  %719 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %720 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %719, i32 0, i32 9
  %721 = getelementptr inbounds %struct.args_size, %struct.args_size* %720, i32 0, i32 0
  %722 = load i64, i64* %721, align 8
  %723 = load i32, i32* %28, align 4
  %724 = sext i32 %723 to i64
  %725 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %726 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %725, i32 0, i32 1
  %727 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %726, i64 0, i64 0
  %728 = bitcast %union.rtunion_def* %727 to i64*
  %729 = load i64, i64* %728, align 8
  %730 = add nsw i64 %724, %729
  %731 = icmp slt i64 %722, %730
  br i1 %731, label %732, label %733

; <label>:732:                                    ; preds = %718
  store i32 1, i32* %19, align 4
  br label %733

; <label>:733:                                    ; preds = %732, %718
  br label %759

; <label>:734:                                    ; preds = %710
  %735 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %736 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %735, i32 0, i32 9
  %737 = getelementptr inbounds %struct.args_size, %struct.args_size* %736, i32 0, i32 0
  %738 = load i64, i64* %737, align 8
  %739 = load i32, i32* %28, align 4
  %740 = sext i32 %739 to i64
  %741 = icmp slt i64 %738, %740
  br i1 %741, label %742, label %758

; <label>:742:                                    ; preds = %734
  %743 = load i32, i32* %28, align 4
  %744 = sext i32 %743 to i64
  %745 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %746 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %745, i32 0, i32 9
  %747 = getelementptr inbounds %struct.args_size, %struct.args_size* %746, i32 0, i32 0
  %748 = load i64, i64* %747, align 8
  %749 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %750 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %749, i32 0, i32 1
  %751 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %750, i64 0, i64 0
  %752 = bitcast %union.rtunion_def* %751 to i64*
  %753 = load i64, i64* %752, align 8
  %754 = add nsw i64 %748, %753
  %755 = icmp slt i64 %744, %754
  br i1 %755, label %756, label %757

; <label>:756:                                    ; preds = %742
  store i32 1, i32* %19, align 4
  br label %757

; <label>:757:                                    ; preds = %756, %742
  br label %758

; <label>:758:                                    ; preds = %757, %734
  br label %759

; <label>:759:                                    ; preds = %758, %733
  br label %760

; <label>:760:                                    ; preds = %759, %658, %644, %634
  br label %761

; <label>:761:                                    ; preds = %760, %613, %609
  %762 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %763 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %762, i32 0, i32 4
  %764 = load %struct.rtx_def*, %struct.rtx_def** %763, align 8
  %765 = icmp ne %struct.rtx_def* %764, null
  br i1 %765, label %766, label %939

; <label>:766:                                    ; preds = %761
  %767 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %768 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %767, i32 0, i32 8
  %769 = load i32, i32* %768, align 8
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %939

; <label>:771:                                    ; preds = %766
  %772 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %773 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %772, i32 0, i32 9
  %774 = getelementptr inbounds %struct.args_size, %struct.args_size* %773, i32 0, i32 0
  %775 = load i64, i64* %774, align 8
  %776 = load i32, i32* %11, align 4
  %777 = sext i32 %776 to i64
  %778 = icmp slt i64 %775, %777
  br i1 %778, label %779, label %786

; <label>:779:                                    ; preds = %771
  %780 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %781 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %780, i32 0, i32 9
  %782 = getelementptr inbounds %struct.args_size, %struct.args_size* %781, i32 0, i32 1
  %783 = load %union.tree_node*, %union.tree_node** %782, align 8
  %784 = icmp ne %union.tree_node* %783, null
  br i1 %784, label %785, label %786

; <label>:785:                                    ; preds = %779
  call void (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i32 0, i32 0))
  br label %938

; <label>:786:                                    ; preds = %779, %771
  %787 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %788 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %787, i32 0, i32 9
  %789 = getelementptr inbounds %struct.args_size, %struct.args_size* %788, i32 0, i32 0
  %790 = load i64, i64* %789, align 8
  %791 = load i32, i32* %11, align 4
  %792 = sext i32 %791 to i64
  %793 = icmp slt i64 %790, %792
  br i1 %793, label %794, label %801

; <label>:794:                                    ; preds = %786
  %795 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %796 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %795, i32 0, i32 11
  %797 = getelementptr inbounds %struct.args_size, %struct.args_size* %796, i32 0, i32 1
  %798 = load %union.tree_node*, %union.tree_node** %797, align 8
  %799 = icmp ne %union.tree_node* %798, null
  br i1 %799, label %800, label %801

; <label>:800:                                    ; preds = %794
  call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0))
  br label %937

; <label>:801:                                    ; preds = %794, %786
  %802 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %803 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %802, i32 0, i32 9
  %804 = getelementptr inbounds %struct.args_size, %struct.args_size* %803, i32 0, i32 0
  %805 = load i64, i64* %804, align 8
  %806 = load i32, i32* %11, align 4
  %807 = sext i32 %806 to i64
  %808 = icmp slt i64 %805, %807
  br i1 %808, label %809, label %936

; <label>:809:                                    ; preds = %801
  %810 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %811 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %810, i32 0, i32 9
  %812 = getelementptr inbounds %struct.args_size, %struct.args_size* %811, i32 0, i32 0
  %813 = load i64, i64* %812, align 8
  %814 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %815 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %814, i32 0, i32 11
  %816 = getelementptr inbounds %struct.args_size, %struct.args_size* %815, i32 0, i32 0
  %817 = load i64, i64* %816, align 8
  %818 = add nsw i64 %813, %817
  %819 = load i32, i32* %11, align 4
  %820 = sext i32 %819 to i64
  %821 = icmp sgt i64 %818, %820
  br i1 %821, label %822, label %936

; <label>:822:                                    ; preds = %809
  %823 = load i32, i32* %11, align 4
  %824 = sext i32 %823 to i64
  %825 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %826 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %825, i32 0, i32 9
  %827 = getelementptr inbounds %struct.args_size, %struct.args_size* %826, i32 0, i32 0
  %828 = load i64, i64* %827, align 8
  %829 = sub nsw i64 %824, %828
  %830 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %829)
  store %struct.rtx_def* %830, %struct.rtx_def** %29, align 8
  %831 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %832 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %831, i32 0, i32 2
  %833 = load %struct.rtx_def*, %struct.rtx_def** %832, align 8
  %834 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %835 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %834, i32 0, i32 1
  %836 = load i32, i32* %835, align 8
  %837 = load %union.tree_node*, %union.tree_node** %12, align 8
  %838 = bitcast %union.tree_node* %837 to %struct.tree_common*
  %839 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %838, i32 0, i32 1
  %840 = load %union.tree_node*, %union.tree_node** %839, align 8
  %841 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %842 = load %union.tree_node*, %union.tree_node** %12, align 8
  %843 = bitcast %union.tree_node* %842 to %struct.tree_common*
  %844 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %843, i32 0, i32 1
  %845 = load %union.tree_node*, %union.tree_node** %844, align 8
  %846 = bitcast %union.tree_node* %845 to %struct.tree_type*
  %847 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %846, i32 0, i32 7
  %848 = load i32, i32* %847, align 8
  %849 = load i32, i32* %14, align 4
  %850 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %851 = load i32, i32* %25, align 4
  %852 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %853 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %854 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %853, i32 0, i32 9
  %855 = getelementptr inbounds %struct.args_size, %struct.args_size* %854, i32 0, i32 1
  %856 = load %union.tree_node*, %union.tree_node** %855, align 8
  %857 = icmp eq %union.tree_node* %856, null
  br i1 %857, label %858, label %864

; <label>:858:                                    ; preds = %822
  %859 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %860 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %859, i32 0, i32 9
  %861 = getelementptr inbounds %struct.args_size, %struct.args_size* %860, i32 0, i32 0
  %862 = load i64, i64* %861, align 8
  %863 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %862)
  br label %892

; <label>:864:                                    ; preds = %822
  %865 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %866 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %865, i32 0, i32 9
  %867 = getelementptr inbounds %struct.args_size, %struct.args_size* %866, i32 0, i32 1
  %868 = load %union.tree_node*, %union.tree_node** %867, align 8
  %869 = icmp eq %union.tree_node* %868, null
  br i1 %869, label %870, label %876

; <label>:870:                                    ; preds = %864
  %871 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %872 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %871, i32 0, i32 9
  %873 = getelementptr inbounds %struct.args_size, %struct.args_size* %872, i32 0, i32 0
  %874 = load i64, i64* %873, align 8
  %875 = call %union.tree_node* @size_int_wide(i64 %874, i32 1)
  br label %889

; <label>:876:                                    ; preds = %864
  %877 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %878 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %879 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %878, i32 0, i32 9
  %880 = getelementptr inbounds %struct.args_size, %struct.args_size* %879, i32 0, i32 1
  %881 = load %union.tree_node*, %union.tree_node** %880, align 8
  %882 = call %union.tree_node* @convert(%union.tree_node* %877, %union.tree_node* %881)
  %883 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %884 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %883, i32 0, i32 9
  %885 = getelementptr inbounds %struct.args_size, %struct.args_size* %884, i32 0, i32 0
  %886 = load i64, i64* %885, align 8
  %887 = call %union.tree_node* @size_int_wide(i64 %886, i32 1)
  %888 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %882, %union.tree_node* %887)
  br label %889

; <label>:889:                                    ; preds = %876, %870
  %890 = phi %union.tree_node* [ %875, %870 ], [ %888, %876 ]
  %891 = call %struct.rtx_def* @expand_expr(%union.tree_node* %890, %struct.rtx_def* null, i32 0, i32 0)
  br label %892

; <label>:892:                                    ; preds = %889, %858
  %893 = phi %struct.rtx_def* [ %863, %858 ], [ %891, %889 ]
  %894 = load i32, i32* %11, align 4
  %895 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %896 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %895, i32 0, i32 17
  %897 = getelementptr inbounds %struct.args_size, %struct.args_size* %896, i32 0, i32 1
  %898 = load %union.tree_node*, %union.tree_node** %897, align 8
  %899 = icmp eq %union.tree_node* %898, null
  br i1 %899, label %900, label %906

; <label>:900:                                    ; preds = %892
  %901 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %902 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %901, i32 0, i32 17
  %903 = getelementptr inbounds %struct.args_size, %struct.args_size* %902, i32 0, i32 0
  %904 = load i64, i64* %903, align 8
  %905 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %904)
  br label %934

; <label>:906:                                    ; preds = %892
  %907 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %908 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %907, i32 0, i32 17
  %909 = getelementptr inbounds %struct.args_size, %struct.args_size* %908, i32 0, i32 1
  %910 = load %union.tree_node*, %union.tree_node** %909, align 8
  %911 = icmp eq %union.tree_node* %910, null
  br i1 %911, label %912, label %918

; <label>:912:                                    ; preds = %906
  %913 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %914 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %913, i32 0, i32 17
  %915 = getelementptr inbounds %struct.args_size, %struct.args_size* %914, i32 0, i32 0
  %916 = load i64, i64* %915, align 8
  %917 = call %union.tree_node* @size_int_wide(i64 %916, i32 1)
  br label %931

; <label>:918:                                    ; preds = %906
  %919 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %920 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %921 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %920, i32 0, i32 17
  %922 = getelementptr inbounds %struct.args_size, %struct.args_size* %921, i32 0, i32 1
  %923 = load %union.tree_node*, %union.tree_node** %922, align 8
  %924 = call %union.tree_node* @convert(%union.tree_node* %919, %union.tree_node* %923)
  %925 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %926 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %925, i32 0, i32 17
  %927 = getelementptr inbounds %struct.args_size, %struct.args_size* %926, i32 0, i32 0
  %928 = load i64, i64* %927, align 8
  %929 = call %union.tree_node* @size_int_wide(i64 %928, i32 1)
  %930 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %924, %union.tree_node* %929)
  br label %931

; <label>:931:                                    ; preds = %918, %912
  %932 = phi %union.tree_node* [ %917, %912 ], [ %930, %918 ]
  %933 = call %struct.rtx_def* @expand_expr(%union.tree_node* %932, %struct.rtx_def* null, i32 0, i32 0)
  br label %934

; <label>:934:                                    ; preds = %931, %900
  %935 = phi %struct.rtx_def* [ %905, %900 ], [ %933, %931 ]
  call void @emit_push_insn(%struct.rtx_def* %833, i32 %836, %union.tree_node* %840, %struct.rtx_def* %841, i32 %848, i32 %849, %struct.rtx_def* %850, i32 %851, %struct.rtx_def* %852, %struct.rtx_def* %893, i32 %894, %struct.rtx_def* %935)
  br label %936

; <label>:936:                                    ; preds = %934, %809, %801
  br label %937

; <label>:937:                                    ; preds = %936, %800
  br label %938

; <label>:938:                                    ; preds = %937, %785
  br label %939

; <label>:939:                                    ; preds = %938, %766, %761
  %940 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %941 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %940, i32 0, i32 2
  %942 = load %struct.rtx_def*, %struct.rtx_def** %941, align 8
  %943 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %944 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %943, i32 0, i32 1
  %945 = load i32, i32* %944, align 8
  %946 = load %union.tree_node*, %union.tree_node** %12, align 8
  %947 = bitcast %union.tree_node* %946 to %struct.tree_common*
  %948 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %947, i32 0, i32 1
  %949 = load %union.tree_node*, %union.tree_node** %948, align 8
  %950 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %951 = load %union.tree_node*, %union.tree_node** %12, align 8
  %952 = bitcast %union.tree_node* %951 to %struct.tree_common*
  %953 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %952, i32 0, i32 1
  %954 = load %union.tree_node*, %union.tree_node** %953, align 8
  %955 = bitcast %union.tree_node* %954 to %struct.tree_type*
  %956 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %955, i32 0, i32 7
  %957 = load i32, i32* %956, align 8
  %958 = load i32, i32* %14, align 4
  %959 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %960 = load i32, i32* %25, align 4
  %961 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %962 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %963 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %962, i32 0, i32 9
  %964 = getelementptr inbounds %struct.args_size, %struct.args_size* %963, i32 0, i32 1
  %965 = load %union.tree_node*, %union.tree_node** %964, align 8
  %966 = icmp eq %union.tree_node* %965, null
  br i1 %966, label %967, label %973

; <label>:967:                                    ; preds = %939
  %968 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %969 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %968, i32 0, i32 9
  %970 = getelementptr inbounds %struct.args_size, %struct.args_size* %969, i32 0, i32 0
  %971 = load i64, i64* %970, align 8
  %972 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %971)
  br label %1001

; <label>:973:                                    ; preds = %939
  %974 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %975 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %974, i32 0, i32 9
  %976 = getelementptr inbounds %struct.args_size, %struct.args_size* %975, i32 0, i32 1
  %977 = load %union.tree_node*, %union.tree_node** %976, align 8
  %978 = icmp eq %union.tree_node* %977, null
  br i1 %978, label %979, label %985

; <label>:979:                                    ; preds = %973
  %980 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %981 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %980, i32 0, i32 9
  %982 = getelementptr inbounds %struct.args_size, %struct.args_size* %981, i32 0, i32 0
  %983 = load i64, i64* %982, align 8
  %984 = call %union.tree_node* @size_int_wide(i64 %983, i32 1)
  br label %998

; <label>:985:                                    ; preds = %973
  %986 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %987 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %988 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %987, i32 0, i32 9
  %989 = getelementptr inbounds %struct.args_size, %struct.args_size* %988, i32 0, i32 1
  %990 = load %union.tree_node*, %union.tree_node** %989, align 8
  %991 = call %union.tree_node* @convert(%union.tree_node* %986, %union.tree_node* %990)
  %992 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %993 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %992, i32 0, i32 9
  %994 = getelementptr inbounds %struct.args_size, %struct.args_size* %993, i32 0, i32 0
  %995 = load i64, i64* %994, align 8
  %996 = call %union.tree_node* @size_int_wide(i64 %995, i32 1)
  %997 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %991, %union.tree_node* %996)
  br label %998

; <label>:998:                                    ; preds = %985, %979
  %999 = phi %union.tree_node* [ %984, %979 ], [ %997, %985 ]
  %1000 = call %struct.rtx_def* @expand_expr(%union.tree_node* %999, %struct.rtx_def* null, i32 0, i32 0)
  br label %1001

; <label>:1001:                                   ; preds = %998, %967
  %1002 = phi %struct.rtx_def* [ %972, %967 ], [ %1000, %998 ]
  %1003 = load i32, i32* %11, align 4
  %1004 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %1005 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1004, i32 0, i32 17
  %1006 = getelementptr inbounds %struct.args_size, %struct.args_size* %1005, i32 0, i32 1
  %1007 = load %union.tree_node*, %union.tree_node** %1006, align 8
  %1008 = icmp eq %union.tree_node* %1007, null
  br i1 %1008, label %1009, label %1015

; <label>:1009:                                   ; preds = %1001
  %1010 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %1011 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1010, i32 0, i32 17
  %1012 = getelementptr inbounds %struct.args_size, %struct.args_size* %1011, i32 0, i32 0
  %1013 = load i64, i64* %1012, align 8
  %1014 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %1013)
  br label %1043

; <label>:1015:                                   ; preds = %1001
  %1016 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %1017 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1016, i32 0, i32 17
  %1018 = getelementptr inbounds %struct.args_size, %struct.args_size* %1017, i32 0, i32 1
  %1019 = load %union.tree_node*, %union.tree_node** %1018, align 8
  %1020 = icmp eq %union.tree_node* %1019, null
  br i1 %1020, label %1021, label %1027

; <label>:1021:                                   ; preds = %1015
  %1022 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %1023 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1022, i32 0, i32 17
  %1024 = getelementptr inbounds %struct.args_size, %struct.args_size* %1023, i32 0, i32 0
  %1025 = load i64, i64* %1024, align 8
  %1026 = call %union.tree_node* @size_int_wide(i64 %1025, i32 1)
  br label %1040

; <label>:1027:                                   ; preds = %1015
  %1028 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %1029 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %1030 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1029, i32 0, i32 17
  %1031 = getelementptr inbounds %struct.args_size, %struct.args_size* %1030, i32 0, i32 1
  %1032 = load %union.tree_node*, %union.tree_node** %1031, align 8
  %1033 = call %union.tree_node* @convert(%union.tree_node* %1028, %union.tree_node* %1032)
  %1034 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %1035 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1034, i32 0, i32 17
  %1036 = getelementptr inbounds %struct.args_size, %struct.args_size* %1035, i32 0, i32 0
  %1037 = load i64, i64* %1036, align 8
  %1038 = call %union.tree_node* @size_int_wide(i64 %1037, i32 1)
  %1039 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %1033, %union.tree_node* %1038)
  br label %1040

; <label>:1040:                                   ; preds = %1027, %1021
  %1041 = phi %union.tree_node* [ %1026, %1021 ], [ %1039, %1027 ]
  %1042 = call %struct.rtx_def* @expand_expr(%union.tree_node* %1041, %struct.rtx_def* null, i32 0, i32 0)
  br label %1043

; <label>:1043:                                   ; preds = %1040, %1009
  %1044 = phi %struct.rtx_def* [ %1014, %1009 ], [ %1042, %1040 ]
  call void @emit_push_insn(%struct.rtx_def* %942, i32 %945, %union.tree_node* %949, %struct.rtx_def* %950, i32 %957, i32 %958, %struct.rtx_def* %959, i32 %960, %struct.rtx_def* %961, %struct.rtx_def* %1002, i32 %1003, %struct.rtx_def* %1044)
  %1045 = load i32, i32* %14, align 4
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1047, label %1053

; <label>:1047:                                   ; preds = %1043
  %1048 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %1049 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1048, i32 0, i32 13
  %1050 = load %struct.rtx_def*, %struct.rtx_def** %1049, align 8
  %1051 = load %struct.arg_data*, %struct.arg_data** %7, align 8
  %1052 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %1051, i32 0, i32 2
  store %struct.rtx_def* %1050, %struct.rtx_def** %1052, align 8
  br label %1053

; <label>:1053:                                   ; preds = %1047, %1043
  br label %1054

; <label>:1054:                                   ; preds = %1053, %538
  br label %1055

; <label>:1055:                                   ; preds = %1054, %383
  %1056 = load %struct.function*, %struct.function** @cfun, align 8
  %1057 = getelementptr inbounds %struct.function, %struct.function* %1056, i32 0, i32 2
  %1058 = load %struct.expr_status*, %struct.expr_status** %1057, align 8
  %1059 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1058, i32 0, i32 1
  %1060 = load i32, i32* %1059, align 4
  %1061 = add nsw i32 %1060, 1
  store i32 %1061, i32* %1059, align 4
  call void @emit_queue()
  call void @preserve_temp_slots(%struct.rtx_def* null)
  call void @free_temp_slots()
  call void @pop_temp_slots()
  %1062 = load i32, i32* %19, align 4
  store i32 %1062, i32* %6, align 4
  br label %1063

; <label>:1063:                                   ; preds = %1055, %39
  %1064 = load i32, i32* %6, align 4
  ret i32 %1064
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_sibcall_argument_overlap(%struct.rtx_def*, %struct.arg_data*) #0 {
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca %struct.arg_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %3, align 8
  store %struct.arg_data* %1, %struct.arg_data** %4, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %8 = icmp eq %struct.rtx_def* %7, null
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %2
  %10 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %10, %struct.rtx_def** %3, align 8
  br label %17

; <label>:11:                                     ; preds = %2
  %12 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %13, i64 0, i64 2
  %15 = bitcast %union.rtunion_def* %14 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %3, align 8
  br label %17

; <label>:17:                                     ; preds = %11, %9
  br label %18

; <label>:18:                                     ; preds = %41, %17
  %19 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %20 = icmp ne %struct.rtx_def* %19, null
  br i1 %20, label %21, label %47

; <label>:21:                                     ; preds = %18
  %22 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 65535
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 105
  br i1 %30, label %31, label %40

; <label>:31:                                     ; preds = %21
  %32 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %33, i64 0, i64 3
  %35 = bitcast %union.rtunion_def* %34 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %37 = call i32 @check_sibcall_argument_overlap_1(%struct.rtx_def* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %31
  br label %47

; <label>:40:                                     ; preds = %31, %21
  br label %41

; <label>:41:                                     ; preds = %40
  %42 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %43, i64 0, i64 2
  %45 = bitcast %union.rtunion_def* %44 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %45, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %3, align 8
  br label %18

; <label>:47:                                     ; preds = %39, %18
  %48 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %49 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %48, i32 0, i32 10
  %50 = getelementptr inbounds %struct.args_size, %struct.args_size* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.arg_data*, %struct.arg_data** %4, align 8
  %56 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %55, i32 0, i32 11
  %57 = getelementptr inbounds %struct.args_size, %struct.args_size* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %54, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  br label %61

; <label>:61:                                     ; preds = %78, %47
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %81

; <label>:65:                                     ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = urem i32 %66, 64
  %68 = zext i32 %67 to i64
  %69 = shl i64 1, %68
  %70 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @stored_args_map, align 8
  %71 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %70, i32 0, i32 3
  %72 = load i32, i32* %5, align 4
  %73 = udiv i32 %72, 64
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [1 x i64], [1 x i64]* %71, i64 0, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %69
  store i64 %77, i64* %75, align 8
  br label %78

; <label>:78:                                     ; preds = %65
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %61

; <label>:81:                                     ; preds = %61
  %82 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %83 = icmp ne %struct.rtx_def* %82, null
  %84 = zext i1 %83 to i32
  ret i32 %84
}

declare %struct.rtx_def* @force_reg(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @force_operand(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @load_register_parameters(%struct.arg_data*, i32, %struct.rtx_def**, i32) #0 {
  %5 = alloca %struct.arg_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtx_def**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtx_def*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.arg_data* %0, %struct.arg_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rtx_def** %2, %struct.rtx_def*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

; <label>:14:                                     ; preds = %243, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %246

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 256
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %18
  %23 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %23, i64 %25
  %27 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %26, i32 0, i32 5
  %28 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  br label %36

; <label>:29:                                     ; preds = %18
  %30 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %30, i64 %32
  %34 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %33, i32 0, i32 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  br label %36

; <label>:36:                                     ; preds = %29, %22
  %37 = phi %struct.rtx_def* [ %28, %22 ], [ %35, %29 ]
  store %struct.rtx_def* %37, %struct.rtx_def** %11, align 8
  %38 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %38, i64 %40
  %42 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %45 = icmp ne %struct.rtx_def* %44, null
  br i1 %45, label %46, label %242

; <label>:46:                                     ; preds = %36
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  br label %95

; <label>:52:                                     ; preds = %46
  %53 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %53, i64 %55
  %57 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %56, i32 0, i32 0
  %58 = load %union.tree_node*, %union.tree_node** %57, align 8
  %59 = bitcast %union.tree_node* %58 to %struct.tree_common*
  %60 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %59, i32 0, i32 1
  %61 = load %union.tree_node*, %union.tree_node** %60, align 8
  %62 = bitcast %union.tree_node* %61 to %struct.tree_type*
  %63 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = lshr i32 %64, 9
  %66 = and i32 %65, 127
  %67 = icmp eq i32 %66, 51
  br i1 %67, label %68, label %92

; <label>:68:                                     ; preds = %52
  %69 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %69, i64 %71
  %73 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %72, i32 0, i32 0
  %74 = load %union.tree_node*, %union.tree_node** %73, align 8
  %75 = bitcast %union.tree_node* %74 to %struct.tree_common*
  %76 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %75, i32 0, i32 1
  %77 = load %union.tree_node*, %union.tree_node** %76, align 8
  %78 = call i64 @int_size_in_bytes(%union.tree_node* %77)
  %79 = load i32, i32* @target_flags, align 4
  %80 = and i32 %79, 33554432
  %81 = icmp ne i32 %80, 0
  %82 = select i1 %81, i32 8, i32 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %78, %84
  %86 = load i32, i32* @target_flags, align 4
  %87 = and i32 %86, 33554432
  %88 = icmp ne i32 %87, 0
  %89 = select i1 %88, i32 8, i32 4
  %90 = sext i32 %89 to i64
  %91 = sdiv i64 %85, %90
  br label %93

; <label>:92:                                     ; preds = %52
  br label %93

; <label>:93:                                     ; preds = %92, %68
  %94 = phi i64 [ %91, %68 ], [ -1, %92 ]
  br label %95

; <label>:95:                                     ; preds = %93, %49
  %96 = phi i64 [ %51, %49 ], [ %94, %93 ]
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %13, align 4
  %98 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 39
  br i1 %102, label %103, label %122

; <label>:103:                                    ; preds = %95
  %104 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %105 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %105, i64 %107
  %109 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %108, i32 0, i32 2
  %110 = load %struct.rtx_def*, %struct.rtx_def** %109, align 8
  %111 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %111, i64 %113
  %115 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %114, i32 0, i32 0
  %116 = load %union.tree_node*, %union.tree_node** %115, align 8
  %117 = bitcast %union.tree_node* %116 to %struct.tree_common*
  %118 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %117, i32 0, i32 1
  %119 = load %union.tree_node*, %union.tree_node** %118, align 8
  %120 = call i64 @int_size_in_bytes(%union.tree_node* %119)
  %121 = trunc i64 %120 to i32
  call void @emit_group_load(%struct.rtx_def* %104, %struct.rtx_def* %110, i32 %121)
  br label %211

; <label>:122:                                    ; preds = %95
  %123 = load i32, i32* %13, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %134

; <label>:125:                                    ; preds = %122
  %126 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %127 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %127, i64 %129
  %131 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %130, i32 0, i32 2
  %132 = load %struct.rtx_def*, %struct.rtx_def** %131, align 8
  %133 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %126, %struct.rtx_def* %132)
  br label %210

; <label>:134:                                    ; preds = %122
  %135 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %135, i64 %137
  %139 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %138, i32 0, i32 16
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %177

; <label>:142:                                    ; preds = %134
  store i32 0, i32* %10, align 4
  br label %143

; <label>:143:                                    ; preds = %173, %142
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %145, i64 %147
  %149 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %148, i32 0, i32 16
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %144, %150
  br i1 %151, label %152, label %176

; <label>:152:                                    ; preds = %143
  %153 = load i32, i32* @word_mode, align 4
  %154 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %155, i64 0, i64 0
  %157 = bitcast %union.rtunion_def* %156 to i32*
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = add i32 %158, %159
  %161 = call %struct.rtx_def* @gen_rtx_REG(i32 %153, i32 %160)
  %162 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %162, i64 %164
  %166 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %165, i32 0, i32 15
  %167 = load %struct.rtx_def**, %struct.rtx_def*** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %167, i64 %169
  %171 = load %struct.rtx_def*, %struct.rtx_def** %170, align 8
  %172 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %161, %struct.rtx_def* %171)
  br label %173

; <label>:173:                                    ; preds = %152
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %143

; <label>:176:                                    ; preds = %143
  br label %209

; <label>:177:                                    ; preds = %134
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %188, label %180

; <label>:180:                                    ; preds = %177
  %181 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %181, i64 %183
  %185 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %208

; <label>:188:                                    ; preds = %180, %177
  %189 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %189, i32 0, i32 1
  %191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %190, i64 0, i64 0
  %192 = bitcast %union.rtunion_def* %191 to i32*
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %194, i64 %196
  %198 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %197, i32 0, i32 2
  %199 = load %struct.rtx_def*, %struct.rtx_def** %198, align 8
  %200 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %199)
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.arg_data*, %struct.arg_data** %5, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %202, i64 %204
  %206 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  call void @move_block_to_reg(i32 %193, %struct.rtx_def* %200, i32 %201, i32 %207)
  br label %208

; <label>:208:                                    ; preds = %188, %180
  br label %209

; <label>:209:                                    ; preds = %208, %176
  br label %210

; <label>:210:                                    ; preds = %209, %125
  br label %211

; <label>:211:                                    ; preds = %210, %103
  %212 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %213 = bitcast %struct.rtx_def* %212 to i32*
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 39
  br i1 %216, label %217, label %220

; <label>:217:                                    ; preds = %211
  %218 = load %struct.rtx_def**, %struct.rtx_def*** %7, align 8
  %219 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  call void @use_group_regs(%struct.rtx_def** %218, %struct.rtx_def* %219)
  br label %241

; <label>:220:                                    ; preds = %211
  %221 = load i32, i32* %13, align 4
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %223, label %226

; <label>:223:                                    ; preds = %220
  %224 = load %struct.rtx_def**, %struct.rtx_def*** %7, align 8
  %225 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  call void @use_reg(%struct.rtx_def** %224, %struct.rtx_def* %225)
  br label %240

; <label>:226:                                    ; preds = %220
  %227 = load %struct.rtx_def**, %struct.rtx_def*** %7, align 8
  %228 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %228, i32 0, i32 1
  %230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %229, i64 0, i64 0
  %231 = bitcast %union.rtunion_def* %230 to i32*
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %13, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %236

; <label>:235:                                    ; preds = %226
  br label %238

; <label>:236:                                    ; preds = %226
  %237 = load i32, i32* %13, align 4
  br label %238

; <label>:238:                                    ; preds = %236, %235
  %239 = phi i32 [ 1, %235 ], [ %237, %236 ]
  call void @use_regs(%struct.rtx_def** %227, i32 %232, i32 %239)
  br label %240

; <label>:240:                                    ; preds = %238, %223
  br label %241

; <label>:241:                                    ; preds = %240, %217
  br label %242

; <label>:242:                                    ; preds = %241, %36
  br label %243

; <label>:243:                                    ; preds = %242
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %9, align 4
  br label %14

; <label>:246:                                    ; preds = %14
  ret void
}

declare %struct.rtx_def* @function_arg(%struct.ix86_args*, i32, %union.tree_node*, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal void @emit_call_1(%struct.rtx_def*, %union.tree_node*, %union.tree_node*, i64, i64, i64, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, %struct.ix86_args*) #0 {
  %13 = alloca %struct.rtx_def*, align 8
  %14 = alloca %union.tree_node*, align 8
  %15 = alloca %union.tree_node*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.rtx_def*, align 8
  %20 = alloca %struct.rtx_def*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.rtx_def*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.ix86_args*, align 8
  %25 = alloca %struct.rtx_def*, align 8
  %26 = alloca %struct.rtx_def*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.rtx_def*, align 8
  %30 = alloca %struct.rtx_def*, align 8
  %31 = alloca %struct.rtx_def*, align 8
  %32 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %13, align 8
  store %union.tree_node* %1, %union.tree_node** %14, align 8
  store %union.tree_node* %2, %union.tree_node** %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %19, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %20, align 8
  store i32 %8, i32* %21, align 4
  store %struct.rtx_def* %9, %struct.rtx_def** %22, align 8
  store i32 %10, i32* %23, align 4
  store %struct.ix86_args* %11, %struct.ix86_args** %24, align 8
  %33 = load i64, i64* %17, align 8
  %34 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %33)
  store %struct.rtx_def* %34, %struct.rtx_def** %25, align 8
  store i32 0, i32* %27, align 4
  %35 = load %union.tree_node*, %union.tree_node** %14, align 8
  %36 = load %union.tree_node*, %union.tree_node** %15, align 8
  %37 = load i64, i64* %16, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @ix86_return_pops_args(%union.tree_node* %35, %union.tree_node* %36, i32 %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %28, align 8
  %41 = load i64, i64* %18, align 8
  %42 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %41)
  store %struct.rtx_def* %42, %struct.rtx_def** %29, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp ne i32 %46, 68
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %12
  %49 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %50 = call %struct.rtx_def* @memory_address(i32 2, %struct.rtx_def* %49)
  store %struct.rtx_def* %50, %struct.rtx_def** %13, align 8
  br label %51

; <label>:51:                                     ; preds = %48, %12
  %52 = load i32, i32* @target_flags, align 4
  %53 = and i32 %52, 33554432
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %89, label %55

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* @target_flags, align 4
  %57 = and i32 %56, 33554432
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %89, label %59

; <label>:59:                                     ; preds = %55
  %60 = load i64, i64* %28, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %89

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %23, align 4
  %64 = and i32 %63, 1024
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %89, label %66

; <label>:66:                                     ; preds = %62
  %67 = load i64, i64* %28, align 8
  %68 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %67)
  store %struct.rtx_def* %68, %struct.rtx_def** %30, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %70 = icmp ne %struct.rtx_def* %69, null
  br i1 %70, label %71, label %79

; <label>:71:                                     ; preds = %66
  %72 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %74 = call %struct.rtx_def* @gen_rtx_MEM(i32 2, %struct.rtx_def* %73)
  %75 = load %struct.rtx_def*, %struct.rtx_def** %25, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %78 = call %struct.rtx_def* @gen_call_value_pop(%struct.rtx_def* %72, %struct.rtx_def* %74, %struct.rtx_def* %75, %struct.rtx_def* %76, %struct.rtx_def* %77)
  store %struct.rtx_def* %78, %struct.rtx_def** %31, align 8
  br label %86

; <label>:79:                                     ; preds = %66
  %80 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %81 = call %struct.rtx_def* @gen_rtx_MEM(i32 2, %struct.rtx_def* %80)
  %82 = load %struct.rtx_def*, %struct.rtx_def** %25, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %85 = call %struct.rtx_def* @gen_call_pop(%struct.rtx_def* %81, %struct.rtx_def* %82, %struct.rtx_def* %83, %struct.rtx_def* %84)
  store %struct.rtx_def* %85, %struct.rtx_def** %31, align 8
  br label %86

; <label>:86:                                     ; preds = %79, %71
  %87 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %88 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %87)
  store i32 1, i32* %27, align 4
  br label %108

; <label>:89:                                     ; preds = %62, %59, %55, %51
  %90 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %91 = icmp ne %struct.rtx_def* %90, null
  br i1 %91, label %92, label %100

; <label>:92:                                     ; preds = %89
  %93 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %95 = call %struct.rtx_def* @gen_rtx_MEM(i32 2, %struct.rtx_def* %94)
  %96 = load %struct.rtx_def*, %struct.rtx_def** %25, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %98 = call %struct.rtx_def* @gen_call_value(%struct.rtx_def* %93, %struct.rtx_def* %95, %struct.rtx_def* %96, %struct.rtx_def* %97)
  %99 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %98)
  br label %107

; <label>:100:                                    ; preds = %89
  %101 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %102 = call %struct.rtx_def* @gen_rtx_MEM(i32 2, %struct.rtx_def* %101)
  %103 = load %struct.rtx_def*, %struct.rtx_def** %25, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %105 = call %struct.rtx_def* @gen_call(%struct.rtx_def* %102, %struct.rtx_def* %103, %struct.rtx_def* %104)
  %106 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %105)
  br label %107

; <label>:107:                                    ; preds = %100, %92
  br label %108

; <label>:108:                                    ; preds = %107, %86
  %109 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %109, %struct.rtx_def** %26, align 8
  br label %110

; <label>:110:                                    ; preds = %122, %108
  %111 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %112 = icmp ne %struct.rtx_def* %111, null
  br i1 %112, label %113, label %119

; <label>:113:                                    ; preds = %110
  %114 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, 65535
  %118 = icmp ne i32 %117, 34
  br label %119

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i1 [ false, %110 ], [ %118, %113 ]
  br i1 %120, label %121, label %128

; <label>:121:                                    ; preds = %119
  br label %122

; <label>:122:                                    ; preds = %121
  %123 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %124, i64 0, i64 1
  %126 = bitcast %union.rtunion_def* %125 to %struct.rtx_def**
  %127 = load %struct.rtx_def*, %struct.rtx_def** %126, align 8
  store %struct.rtx_def* %127, %struct.rtx_def** %26, align 8
  br label %110

; <label>:128:                                    ; preds = %119
  %129 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %130 = icmp ne %struct.rtx_def* %129, null
  br i1 %130, label %132, label %131

; <label>:131:                                    ; preds = %128
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 580, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.emit_call_1, i32 0, i32 0)) #8
  unreachable

; <label>:132:                                    ; preds = %128
  %133 = load i32, i32* %23, align 4
  %134 = and i32 %133, 512
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

; <label>:136:                                    ; preds = %132
  %137 = call %struct.rtx_def* @gen_rtx_fmt_0(i32 62, i32 0)
  %138 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %137)
  %139 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %138)
  %140 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %141 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %139, %struct.rtx_def* %140)
  store %struct.rtx_def* %141, %struct.rtx_def** %22, align 8
  br label %142

; <label>:142:                                    ; preds = %136, %132
  %143 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %144, i64 0, i64 7
  %146 = bitcast %union.rtunion_def* %145 to %struct.rtx_def**
  %147 = load %struct.rtx_def*, %struct.rtx_def** %146, align 8
  %148 = icmp ne %struct.rtx_def* %147, null
  br i1 %148, label %149, label %175

; <label>:149:                                    ; preds = %142
  %150 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %151, i64 0, i64 7
  %153 = bitcast %union.rtunion_def* %152 to %struct.rtx_def**
  %154 = load %struct.rtx_def*, %struct.rtx_def** %153, align 8
  store %struct.rtx_def* %154, %struct.rtx_def** %32, align 8
  br label %155

; <label>:155:                                    ; preds = %163, %149
  %156 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %157, i64 0, i64 1
  %159 = bitcast %union.rtunion_def* %158 to %struct.rtx_def**
  %160 = load %struct.rtx_def*, %struct.rtx_def** %159, align 8
  %161 = icmp ne %struct.rtx_def* %160, null
  br i1 %161, label %162, label %169

; <label>:162:                                    ; preds = %155
  br label %163

; <label>:163:                                    ; preds = %162
  %164 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %165 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %164, i32 0, i32 1
  %166 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %165, i64 0, i64 1
  %167 = bitcast %union.rtunion_def* %166 to %struct.rtx_def**
  %168 = load %struct.rtx_def*, %struct.rtx_def** %167, align 8
  store %struct.rtx_def* %168, %struct.rtx_def** %32, align 8
  br label %155

; <label>:169:                                    ; preds = %155
  %170 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %171 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %172, i64 0, i64 1
  %174 = bitcast %union.rtunion_def* %173 to %struct.rtx_def**
  store %struct.rtx_def* %170, %struct.rtx_def** %174, align 8
  br label %181

; <label>:175:                                    ; preds = %142
  %176 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %177 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %177, i32 0, i32 1
  %179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %178, i64 0, i64 7
  %180 = bitcast %union.rtunion_def* %179 to %struct.rtx_def**
  store %struct.rtx_def* %176, %struct.rtx_def** %180, align 8
  br label %181

; <label>:181:                                    ; preds = %175, %169
  %182 = load i32, i32* %23, align 4
  %183 = and i32 %182, 513
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

; <label>:185:                                    ; preds = %181
  %186 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %187 = bitcast %struct.rtx_def* %186 to i32*
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, -67108865
  %190 = or i32 %189, 67108864
  store i32 %190, i32* %187, align 8
  br label %191

; <label>:191:                                    ; preds = %185, %181
  %192 = load i32, i32* %23, align 4
  %193 = and i32 %192, 16
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %207

; <label>:195:                                    ; preds = %191
  %196 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %197 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %198, i64 0, i64 6
  %200 = bitcast %union.rtunion_def* %199 to %struct.rtx_def**
  %201 = load %struct.rtx_def*, %struct.rtx_def** %200, align 8
  %202 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 23, %struct.rtx_def* %196, %struct.rtx_def* %201)
  %203 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %204 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %203, i32 0, i32 1
  %205 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %204, i64 0, i64 6
  %206 = bitcast %union.rtunion_def* %205 to %struct.rtx_def**
  store %struct.rtx_def* %202, %struct.rtx_def** %206, align 8
  br label %207

; <label>:207:                                    ; preds = %195, %191
  %208 = load i32, i32* %23, align 4
  %209 = and i32 %208, 2
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %223

; <label>:211:                                    ; preds = %207
  %212 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %213 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %214 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %213, i32 0, i32 1
  %215 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %214, i64 0, i64 6
  %216 = bitcast %union.rtunion_def* %215 to %struct.rtx_def**
  %217 = load %struct.rtx_def*, %struct.rtx_def** %216, align 8
  %218 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 26, %struct.rtx_def* %212, %struct.rtx_def* %217)
  %219 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %220 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %219, i32 0, i32 1
  %221 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %220, i64 0, i64 6
  %222 = bitcast %union.rtunion_def* %221 to %struct.rtx_def**
  store %struct.rtx_def* %218, %struct.rtx_def** %222, align 8
  br label %223

; <label>:223:                                    ; preds = %211, %207
  %224 = load i32, i32* %23, align 4
  %225 = and i32 %224, 2048
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %239

; <label>:227:                                    ; preds = %223
  %228 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %229 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %230 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %229, i32 0, i32 1
  %231 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %230, i64 0, i64 6
  %232 = bitcast %union.rtunion_def* %231 to %struct.rtx_def**
  %233 = load %struct.rtx_def*, %struct.rtx_def** %232, align 8
  %234 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 29, %struct.rtx_def* %228, %struct.rtx_def* %233)
  %235 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %236 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %235, i32 0, i32 1
  %237 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %236, i64 0, i64 6
  %238 = bitcast %union.rtunion_def* %237 to %struct.rtx_def**
  store %struct.rtx_def* %234, %struct.rtx_def** %238, align 8
  br label %239

; <label>:239:                                    ; preds = %227, %223
  %240 = load i32, i32* %23, align 4
  %241 = and i32 %240, 32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %261

; <label>:243:                                    ; preds = %239
  %244 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %245 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %246 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %245, i32 0, i32 1
  %247 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %246, i64 0, i64 6
  %248 = bitcast %union.rtunion_def* %247 to %struct.rtx_def**
  %249 = load %struct.rtx_def*, %struct.rtx_def** %248, align 8
  %250 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 28, %struct.rtx_def* %244, %struct.rtx_def* %249)
  %251 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %252 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %251, i32 0, i32 1
  %253 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %252, i64 0, i64 6
  %254 = bitcast %union.rtunion_def* %253 to %struct.rtx_def**
  store %struct.rtx_def* %250, %struct.rtx_def** %254, align 8
  %255 = load %struct.function*, %struct.function** @cfun, align 8
  %256 = getelementptr inbounds %struct.function, %struct.function* %255, i32 0, i32 56
  %257 = bitcast i24* %256 to i32*
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, -17
  %260 = or i32 %259, 16
  store i32 %260, i32* %257, align 8
  br label %261

; <label>:261:                                    ; preds = %243, %239
  %262 = load i32, i32* %23, align 4
  %263 = and i32 %262, 256
  %264 = icmp ne i32 %263, 0
  %265 = zext i1 %264 to i32
  %266 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %267 = bitcast %struct.rtx_def* %266 to i32*
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %265, 1
  %270 = shl i32 %269, 24
  %271 = and i32 %268, -16777217
  %272 = or i32 %271, %270
  store i32 %272, i32* %267, align 8
  %273 = load i32, i32* %21, align 4
  %274 = load %struct.function*, %struct.function** @cfun, align 8
  %275 = getelementptr inbounds %struct.function, %struct.function* %274, i32 0, i32 2
  %276 = load %struct.expr_status*, %struct.expr_status** %275, align 8
  %277 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %276, i32 0, i32 1
  store i32 %273, i32* %277, align 4
  %278 = load i64, i64* %28, align 8
  %279 = icmp sgt i64 %278, 0
  br i1 %279, label %280, label %311

; <label>:280:                                    ; preds = %261
  %281 = load i32, i32* %27, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %296, label %283

; <label>:283:                                    ; preds = %280
  %284 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %285 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 0, %struct.rtx_def* %284)
  %286 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %287 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %286, i32 0, i32 1
  %288 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %287, i64 0, i64 7
  %289 = bitcast %union.rtunion_def* %288 to %struct.rtx_def**
  %290 = load %struct.rtx_def*, %struct.rtx_def** %289, align 8
  %291 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %285, %struct.rtx_def* %290)
  %292 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %292, i32 0, i32 1
  %294 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %293, i64 0, i64 7
  %295 = bitcast %union.rtunion_def* %294 to %struct.rtx_def**
  store %struct.rtx_def* %291, %struct.rtx_def** %295, align 8
  br label %296

; <label>:296:                                    ; preds = %283, %280
  %297 = load i64, i64* %28, align 8
  %298 = load i64, i64* %17, align 8
  %299 = sub nsw i64 %298, %297
  store i64 %299, i64* %17, align 8
  %300 = load i64, i64* %17, align 8
  %301 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %300)
  store %struct.rtx_def* %301, %struct.rtx_def** %25, align 8
  %302 = load i64, i64* %28, align 8
  %303 = load %struct.function*, %struct.function** @cfun, align 8
  %304 = getelementptr inbounds %struct.function, %struct.function* %303, i32 0, i32 2
  %305 = load %struct.expr_status*, %struct.expr_status** %304, align 8
  %306 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %307 to i64
  %309 = sub nsw i64 %308, %302
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %306, align 8
  br label %311

; <label>:311:                                    ; preds = %296, %261
  %312 = load i32, i32* @target_flags, align 4
  %313 = and i32 %312, 4096
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %361, label %315

; <label>:315:                                    ; preds = %311
  %316 = load i64, i64* %17, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %360

; <label>:318:                                    ; preds = %315
  %319 = load i32, i32* %23, align 4
  %320 = and i32 %319, 1024
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %332

; <label>:322:                                    ; preds = %318
  %323 = load i64, i64* %17, align 8
  %324 = load %struct.function*, %struct.function** @cfun, align 8
  %325 = getelementptr inbounds %struct.function, %struct.function* %324, i32 0, i32 2
  %326 = load %struct.expr_status*, %struct.expr_status** %325, align 8
  %327 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = sext i32 %328 to i64
  %330 = sub nsw i64 %329, %323
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %327, align 8
  br label %359

; <label>:332:                                    ; preds = %318
  %333 = load i32, i32* @flag_defer_pop, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %356

; <label>:335:                                    ; preds = %332
  %336 = load %struct.function*, %struct.function** @cfun, align 8
  %337 = getelementptr inbounds %struct.function, %struct.function* %336, i32 0, i32 2
  %338 = load %struct.expr_status*, %struct.expr_status** %337, align 8
  %339 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %356

; <label>:342:                                    ; preds = %335
  %343 = load i32, i32* %23, align 4
  %344 = and i32 %343, 513
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %356, label %346

; <label>:346:                                    ; preds = %342
  %347 = load i64, i64* %17, align 8
  %348 = load %struct.function*, %struct.function** @cfun, align 8
  %349 = getelementptr inbounds %struct.function, %struct.function* %348, i32 0, i32 2
  %350 = load %struct.expr_status*, %struct.expr_status** %349, align 8
  %351 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = sext i32 %352 to i64
  %354 = add nsw i64 %353, %347
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %351, align 8
  br label %358

; <label>:356:                                    ; preds = %342, %335, %332
  %357 = load %struct.rtx_def*, %struct.rtx_def** %25, align 8
  call void @adjust_stack(%struct.rtx_def* %357)
  br label %358

; <label>:358:                                    ; preds = %356, %346
  br label %359

; <label>:359:                                    ; preds = %358, %322
  br label %360

; <label>:360:                                    ; preds = %359, %315
  br label %368

; <label>:361:                                    ; preds = %311
  %362 = load i64, i64* %28, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %367

; <label>:364:                                    ; preds = %361
  %365 = load i64, i64* %28, align 8
  %366 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %365)
  call void @anti_adjust_stack(%struct.rtx_def* %366)
  br label %367

; <label>:367:                                    ; preds = %364, %361
  br label %368

; <label>:368:                                    ; preds = %367, %360
  ret void
}

declare %struct.rtx_def* @emit_insns(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare void @mark_reg_pointer(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_0(i32, i32) #1

declare void @emit_libcall_block(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier_after(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare void @set_mem_attributes(%struct.rtx_def*, %union.tree_node*, i32) #1

declare %union.tree_node* @build_qualified_type(%union.tree_node*, i32) #1

declare void @preserve_temp_slots(%struct.rtx_def*) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @emit_group_store(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @copy_blkmode_from_reg(%struct.rtx_def*, %struct.rtx_def*, %union.tree_node*) #1

declare void @emit_stack_restore(i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @restore_fixed_argument_area(%struct.rtx_def*, %struct.rtx_def*, i32, i32) #0 {
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %18, i64 %20)
  %22 = call %struct.rtx_def* @memory_address(i32 %17, %struct.rtx_def* %21)
  %23 = call %struct.rtx_def* @gen_rtx_MEM(i32 %16, %struct.rtx_def* %22)
  store %struct.rtx_def* %23, %struct.rtx_def** %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 51
  br i1 %25, label %26, label %30

; <label>:26:                                     ; preds = %4
  %27 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %29 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %27, %struct.rtx_def* %28)
  br label %43

; <label>:30:                                     ; preds = %4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %33 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %34, %35
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* @target_flags, align 4
  %40 = and i32 %39, 33554432
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %41, i32 64, i32 32
  call void @move_by_pieces(%struct.rtx_def* %31, %struct.rtx_def* %33, i64 %38, i32 %42)
  br label %43

; <label>:43:                                     ; preds = %30, %26
  ret void
}

declare %struct.rtx_def* @emit_block_move(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @validize_mem(%struct.rtx_def*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @replace_call_placeholder(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @emit_call_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_uuuu(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @clear_pending_stack_adjust() #1

declare %struct.rtx_def* @gen_rtx(i32, i32, ...) #1

declare void @save_stack_pointer() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noinline nounwind uwtable
define internal %struct.rtx_def* @emit_library_call_value_1(i32, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, %struct.__va_list_tag*) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca %struct.rtx_def*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.__va_list_tag*, align 8
  %15 = alloca %struct.args_size, align 8
  %16 = alloca %struct.args_size, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.rtx_def*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.args_size, align 8
  %22 = alloca %struct.rtx_def*, align 8
  %23 = alloca %struct.ix86_args, align 4
  %24 = alloca %struct.arg*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.rtx_def*, align 8
  %27 = alloca %struct.rtx_def*, align 8
  %28 = alloca %struct.rtx_def*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.rtx_def*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.rtx_def*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca %struct.rtx_def*, align 8
  %41 = alloca %struct.rtx_def*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca %struct.rtx_def*, align 8
  %46 = alloca i32, align 4
  %47 = alloca %struct.rtx_def*, align 8
  %48 = alloca %struct.rtx_def*, align 8
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca %struct.rtx_def*, align 8
  %55 = alloca %struct.rtx_def*, align 8
  %56 = alloca %struct.rtx_def*, align 8
  %57 = alloca i32, align 4
  %58 = alloca %struct.rtx_def*, align 8
  %59 = alloca %struct.rtx_def*, align 8
  %60 = alloca %struct.rtx_def*, align 8
  %61 = alloca %struct.rtx_def*, align 8
  %62 = alloca %struct.rtx_def*, align 8
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca %struct.rtx_def*, align 8
  %66 = alloca i32, align 4
  %67 = alloca %struct.rtx_def*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.rtx_def* %1, %struct.rtx_def** %9, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.__va_list_tag* %6, %struct.__va_list_tag** %14, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %22, align 8
  %68 = load %struct.function*, %struct.function** @cfun, align 8
  %69 = getelementptr inbounds %struct.function, %struct.function* %68, i32 0, i32 2
  %70 = load %struct.expr_status*, %struct.expr_status** %69, align 8
  %71 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %25, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %26, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %27, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %32, align 4
  store i32 -1, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %37, align 8
  %73 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  store i32 %73, i32* %38, align 4
  %74 = load i8*, i8** @stack_usage_map, align 8
  store i8* %74, i8** %39, align 8
  store i32 0, i32* %32, align 4
  store i32 16, i32* %31, align 4
  %75 = load i32, i32* %11, align 4
  switch i32 %75, label %95 [
    i32 0, label %76
    i32 1, label %77
    i32 2, label %80
    i32 3, label %83
    i32 4, label %86
    i32 5, label %89
    i32 6, label %92
    i32 7, label %93
    i32 8, label %94
  ]

; <label>:76:                                     ; preds = %7
  br label %95

; <label>:77:                                     ; preds = %7
  %78 = load i32, i32* %31, align 4
  %79 = or i32 %78, 1
  store i32 %79, i32* %31, align 4
  br label %95

; <label>:80:                                     ; preds = %7
  %81 = load i32, i32* %31, align 4
  %82 = or i32 %81, 512
  store i32 %82, i32* %31, align 4
  br label %95

; <label>:83:                                     ; preds = %7
  %84 = load i32, i32* %31, align 4
  %85 = or i32 %84, 4097
  store i32 %85, i32* %31, align 4
  br label %95

; <label>:86:                                     ; preds = %7
  %87 = load i32, i32* %31, align 4
  %88 = or i32 %87, 4608
  store i32 %88, i32* %31, align 4
  br label %95

; <label>:89:                                     ; preds = %7
  %90 = load i32, i32* %31, align 4
  %91 = or i32 %90, 2
  store i32 %91, i32* %31, align 4
  br label %95

; <label>:92:                                     ; preds = %7
  store i32 2, i32* %31, align 4
  br label %95

; <label>:93:                                     ; preds = %7
  store i32 2048, i32* %31, align 4
  br label %95

; <label>:94:                                     ; preds = %7
  store i32 32, i32* %31, align 4
  br label %95

; <label>:95:                                     ; preds = %94, %93, %92, %89, %86, %83, %80, %77, %76, %7
  %96 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  store %struct.rtx_def* %96, %struct.rtx_def** %18, align 8
  %97 = load %struct.function*, %struct.function** @cfun, align 8
  %98 = getelementptr inbounds %struct.function, %struct.function* %97, i32 0, i32 53
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %106

; <label>:102:                                    ; preds = %95
  %103 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %104 = load %struct.function*, %struct.function** @cfun, align 8
  %105 = getelementptr inbounds %struct.function, %struct.function* %104, i32 0, i32 53
  store i32 %103, i32* %105, align 4
  br label %106

; <label>:106:                                    ; preds = %102, %95
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %137

; <label>:109:                                    ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = call %union.tree_node* @type_for_mode(i32 %110, i32 0)
  %112 = call i32 @aggregate_value_p(%union.tree_node* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %137

; <label>:114:                                    ; preds = %109
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  store i32 %119, i32* %30, align 4
  %120 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %121 = icmp ne %struct.rtx_def* %120, null
  br i1 %121, label %122, label %130

; <label>:122:                                    ; preds = %114
  %123 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 66
  br i1 %127, label %128, label %130

; <label>:128:                                    ; preds = %122
  %129 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %27, align 8
  br label %134

; <label>:130:                                    ; preds = %122, %114
  %131 = load i32, i32* %12, align 4
  %132 = call %union.tree_node* @type_for_mode(i32 %131, i32 0)
  %133 = call %struct.rtx_def* @assign_temp(%union.tree_node* %132, i32 0, i32 1, i32 1)
  store %struct.rtx_def* %133, %struct.rtx_def** %27, align 8
  br label %134

; <label>:134:                                    ; preds = %130, %128
  %135 = load i32, i32* %31, align 4
  %136 = and i32 %135, -4610
  store i32 %136, i32* %31, align 4
  br label %137

; <label>:137:                                    ; preds = %134, %109, %106
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 72
  %142 = alloca i8, i64 %141, align 16
  %143 = bitcast i8* %142 to %struct.arg*
  store %struct.arg* %143, %struct.arg** %24, align 8
  %144 = load %struct.arg*, %struct.arg** %24, align 8
  %145 = bitcast %struct.arg* %144 to i8*
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 72
  call void @llvm.memset.p0i8.i64(i8* %145, i8 0, i64 %149, i32 1, i1 false)
  %150 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  call void @init_cumulative_args(%struct.ix86_args* %23, %union.tree_node* null, %struct.rtx_def* %150)
  %151 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  store i64 0, i64* %151, align 8
  %152 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 1
  store %union.tree_node* null, %union.tree_node** %152, align 8
  store i32 0, i32* %20, align 4
  %153 = load i32, i32* %31, align 4
  %154 = and i32 %153, 4096
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

; <label>:156:                                    ; preds = %137
  call void @start_sequence()
  br label %157

; <label>:157:                                    ; preds = %156, %137
  call void @push_temp_slots()
  %158 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %159 = icmp ne %struct.rtx_def* %158, null
  br i1 %159, label %160, label %325

; <label>:160:                                    ; preds = %157
  %161 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %162 = icmp eq %struct.rtx_def* %161, null
  br i1 %162, label %163, label %325

; <label>:163:                                    ; preds = %160
  %164 = load i32, i32* %29, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %325, label %166

; <label>:166:                                    ; preds = %163
  %167 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %168, i64 0, i64 0
  %170 = bitcast %union.rtunion_def* %169 to %struct.rtx_def**
  %171 = load %struct.rtx_def*, %struct.rtx_def** %170, align 8
  store %struct.rtx_def* %171, %struct.rtx_def** %40, align 8
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  %174 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %175 = bitcast %struct.rtx_def* %174 to i32*
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, 65535
  %178 = icmp ne i32 %177, 61
  br i1 %178, label %179, label %236

; <label>:179:                                    ; preds = %166
  %180 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %181 = bitcast %struct.rtx_def* %180 to i32*
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, 65535
  %184 = icmp ne i32 %183, 66
  br i1 %184, label %185, label %236

; <label>:185:                                    ; preds = %179
  %186 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %187 = bitcast %struct.rtx_def* %186 to i32*
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, 65535
  %190 = icmp eq i32 %189, 67
  br i1 %190, label %236, label %191

; <label>:191:                                    ; preds = %185
  %192 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %193 = bitcast %struct.rtx_def* %192 to i32*
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, 65535
  %196 = icmp eq i32 %195, 68
  br i1 %196, label %236, label %197

; <label>:197:                                    ; preds = %191
  %198 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %199 = bitcast %struct.rtx_def* %198 to i32*
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, 65535
  %202 = icmp eq i32 %201, 54
  br i1 %202, label %236, label %203

; <label>:203:                                    ; preds = %197
  %204 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %205 = bitcast %struct.rtx_def* %204 to i32*
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, 65535
  %208 = icmp eq i32 %207, 55
  br i1 %208, label %236, label %209

; <label>:209:                                    ; preds = %203
  %210 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %211 = bitcast %struct.rtx_def* %210 to i32*
  %212 = load i32, i32* %211, align 8
  %213 = and i32 %212, 65535
  %214 = icmp eq i32 %213, 58
  br i1 %214, label %236, label %215

; <label>:215:                                    ; preds = %209
  %216 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %217 = bitcast %struct.rtx_def* %216 to i32*
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %218, 65535
  %220 = icmp eq i32 %219, 134
  br i1 %220, label %236, label %221

; <label>:221:                                    ; preds = %215
  %222 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %223 = bitcast %struct.rtx_def* %222 to i32*
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 56
  br i1 %226, label %236, label %227

; <label>:227:                                    ; preds = %221
  %228 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %229 = bitcast %struct.rtx_def* %228 to i32*
  %230 = load i32, i32* %229, align 8
  %231 = and i32 %230, 65535
  %232 = icmp eq i32 %231, 140
  br i1 %232, label %236, label %233

; <label>:233:                                    ; preds = %227
  %234 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %235 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %234, %struct.rtx_def* null)
  store %struct.rtx_def* %235, %struct.rtx_def** %40, align 8
  br label %236

; <label>:236:                                    ; preds = %233, %227, %221, %215, %209, %203, %197, %191, %185, %179, %166
  %237 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %238 = load %struct.arg*, %struct.arg** %24, align 8
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.arg, %struct.arg* %238, i64 %240
  %242 = getelementptr inbounds %struct.arg, %struct.arg* %241, i32 0, i32 0
  store %struct.rtx_def* %237, %struct.rtx_def** %242, align 8
  %243 = load i32, i32* @target_flags, align 4
  %244 = and i32 %243, 33554432
  %245 = icmp ne i32 %244, 0
  %246 = select i1 %245, i32 5, i32 4
  %247 = load %struct.arg*, %struct.arg** %24, align 8
  %248 = load i32, i32* %20, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.arg, %struct.arg* %247, i64 %249
  %251 = getelementptr inbounds %struct.arg, %struct.arg* %250, i32 0, i32 1
  store i32 %246, i32* %251, align 8
  %252 = load %struct.arg*, %struct.arg** %24, align 8
  %253 = load i32, i32* %20, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.arg, %struct.arg* %252, i64 %254
  %256 = getelementptr inbounds %struct.arg, %struct.arg* %255, i32 0, i32 3
  store i32 0, i32* %256, align 8
  %257 = load i32, i32* @target_flags, align 4
  %258 = and i32 %257, 33554432
  %259 = icmp ne i32 %258, 0
  %260 = select i1 %259, i32 5, i32 4
  %261 = call %struct.rtx_def* @function_arg(%struct.ix86_args* %23, i32 %260, %union.tree_node* null, i32 1)
  %262 = load %struct.arg*, %struct.arg** %24, align 8
  %263 = load i32, i32* %20, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.arg, %struct.arg* %262, i64 %264
  %266 = getelementptr inbounds %struct.arg, %struct.arg* %265, i32 0, i32 2
  store %struct.rtx_def* %261, %struct.rtx_def** %266, align 8
  %267 = load i32, i32* @target_flags, align 4
  %268 = and i32 %267, 33554432
  %269 = icmp ne i32 %268, 0
  %270 = select i1 %269, i32 5, i32 4
  %271 = load %struct.arg*, %struct.arg** %24, align 8
  %272 = load i32, i32* %20, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.arg, %struct.arg* %271, i64 %273
  %275 = getelementptr inbounds %struct.arg, %struct.arg* %274, i32 0, i32 2
  %276 = load %struct.rtx_def*, %struct.rtx_def** %275, align 8
  %277 = icmp ne %struct.rtx_def* %276, null
  %278 = zext i1 %277 to i32
  %279 = load %struct.arg*, %struct.arg** %24, align 8
  %280 = load i32, i32* %20, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.arg, %struct.arg* %279, i64 %281
  %283 = getelementptr inbounds %struct.arg, %struct.arg* %282, i32 0, i32 4
  %284 = load %struct.arg*, %struct.arg** %24, align 8
  %285 = load i32, i32* %20, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.arg, %struct.arg* %284, i64 %286
  %288 = getelementptr inbounds %struct.arg, %struct.arg* %287, i32 0, i32 5
  call void @locate_and_pad_parm(i32 %270, %union.tree_node* null, i32 %278, %union.tree_node* null, %struct.args_size* %15, %struct.args_size* %283, %struct.args_size* %288, %struct.args_size* %21)
  %289 = load %struct.arg*, %struct.arg** %24, align 8
  %290 = load i32, i32* %20, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.arg, %struct.arg* %289, i64 %291
  %293 = getelementptr inbounds %struct.arg, %struct.arg* %292, i32 0, i32 2
  %294 = load %struct.rtx_def*, %struct.rtx_def** %293, align 8
  %295 = icmp eq %struct.rtx_def* %294, null
  br i1 %295, label %307, label %296

; <label>:296:                                    ; preds = %236
  %297 = load %struct.arg*, %struct.arg** %24, align 8
  %298 = load i32, i32* %20, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.arg, %struct.arg* %297, i64 %299
  %301 = getelementptr inbounds %struct.arg, %struct.arg* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %307, label %304

; <label>:304:                                    ; preds = %296
  %305 = load i32, i32* %32, align 4
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %318

; <label>:307:                                    ; preds = %304, %296, %236
  %308 = load %struct.arg*, %struct.arg** %24, align 8
  %309 = load i32, i32* %20, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.arg, %struct.arg* %308, i64 %310
  %312 = getelementptr inbounds %struct.arg, %struct.arg* %311, i32 0, i32 5
  %313 = getelementptr inbounds %struct.args_size, %struct.args_size* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = add nsw i64 %316, %314
  store i64 %317, i64* %315, align 8
  br label %318

; <label>:318:                                    ; preds = %307, %304
  %319 = load i32, i32* @target_flags, align 4
  %320 = and i32 %319, 33554432
  %321 = icmp ne i32 %320, 0
  %322 = select i1 %321, i32 5, i32 4
  call void @function_arg_advance(%struct.ix86_args* %23, i32 %322, %union.tree_node* null, i32 1)
  %323 = load i32, i32* %20, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %20, align 4
  br label %325

; <label>:325:                                    ; preds = %318, %163, %160, %157
  br label %326

; <label>:326:                                    ; preds = %565, %325
  %327 = load i32, i32* %20, align 4
  %328 = load i32, i32* %13, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %568

; <label>:330:                                    ; preds = %326
  %331 = load %struct.__va_list_tag*, %struct.__va_list_tag** %14, align 8
  %332 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = icmp ule i32 %333, 40
  br i1 %334, label %335, label %341

; <label>:335:                                    ; preds = %330
  %336 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %331, i32 0, i32 3
  %337 = load i8*, i8** %336, align 8
  %338 = getelementptr i8, i8* %337, i32 %333
  %339 = bitcast i8* %338 to %struct.rtx_def**
  %340 = add i32 %333, 8
  store i32 %340, i32* %332, align 8
  br label %346

; <label>:341:                                    ; preds = %330
  %342 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %331, i32 0, i32 2
  %343 = load i8*, i8** %342, align 8
  %344 = bitcast i8* %343 to %struct.rtx_def**
  %345 = getelementptr i8, i8* %343, i32 8
  store i8* %345, i8** %342, align 8
  br label %346

; <label>:346:                                    ; preds = %341, %335
  %347 = phi %struct.rtx_def** [ %339, %335 ], [ %344, %341 ]
  %348 = load %struct.rtx_def*, %struct.rtx_def** %347, align 8
  store %struct.rtx_def* %348, %struct.rtx_def** %41, align 8
  %349 = load %struct.__va_list_tag*, %struct.__va_list_tag** %14, align 8
  %350 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp ule i32 %351, 40
  br i1 %352, label %353, label %359

; <label>:353:                                    ; preds = %346
  %354 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %349, i32 0, i32 3
  %355 = load i8*, i8** %354, align 8
  %356 = getelementptr i8, i8* %355, i32 %351
  %357 = bitcast i8* %356 to i32*
  %358 = add i32 %351, 8
  store i32 %358, i32* %350, align 8
  br label %364

; <label>:359:                                    ; preds = %346
  %360 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %349, i32 0, i32 2
  %361 = load i8*, i8** %360, align 8
  %362 = bitcast i8* %361 to i32*
  %363 = getelementptr i8, i8* %361, i32 8
  store i8* %363, i8** %360, align 8
  br label %364

; <label>:364:                                    ; preds = %359, %353
  %365 = phi i32* [ %357, %353 ], [ %362, %359 ]
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %42, align 4
  %367 = load i32, i32* %42, align 4
  %368 = icmp eq i32 %367, 51
  br i1 %368, label %384, label %369

; <label>:369:                                    ; preds = %364
  %370 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %371 = bitcast %struct.rtx_def* %370 to i32*
  %372 = load i32, i32* %371, align 8
  %373 = lshr i32 %372, 16
  %374 = and i32 %373, 255
  %375 = load i32, i32* %42, align 4
  %376 = icmp ne i32 %374, %375
  br i1 %376, label %377, label %385

; <label>:377:                                    ; preds = %369
  %378 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %379 = bitcast %struct.rtx_def* %378 to i32*
  %380 = load i32, i32* %379, align 8
  %381 = lshr i32 %380, 16
  %382 = and i32 %381, 255
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

; <label>:384:                                    ; preds = %377, %364
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 3641, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.emit_library_call_value_1, i32 0, i32 0)) #8
  unreachable

; <label>:385:                                    ; preds = %377, %369
  %386 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %387 = bitcast %struct.rtx_def* %386 to i32*
  %388 = load i32, i32* %387, align 8
  %389 = and i32 %388, 65535
  %390 = icmp ne i32 %389, 61
  br i1 %390, label %391, label %448

; <label>:391:                                    ; preds = %385
  %392 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %393 = bitcast %struct.rtx_def* %392 to i32*
  %394 = load i32, i32* %393, align 8
  %395 = and i32 %394, 65535
  %396 = icmp ne i32 %395, 66
  br i1 %396, label %397, label %448

; <label>:397:                                    ; preds = %391
  %398 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %399 = bitcast %struct.rtx_def* %398 to i32*
  %400 = load i32, i32* %399, align 8
  %401 = and i32 %400, 65535
  %402 = icmp eq i32 %401, 67
  br i1 %402, label %448, label %403

; <label>:403:                                    ; preds = %397
  %404 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %405 = bitcast %struct.rtx_def* %404 to i32*
  %406 = load i32, i32* %405, align 8
  %407 = and i32 %406, 65535
  %408 = icmp eq i32 %407, 68
  br i1 %408, label %448, label %409

; <label>:409:                                    ; preds = %403
  %410 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %411 = bitcast %struct.rtx_def* %410 to i32*
  %412 = load i32, i32* %411, align 8
  %413 = and i32 %412, 65535
  %414 = icmp eq i32 %413, 54
  br i1 %414, label %448, label %415

; <label>:415:                                    ; preds = %409
  %416 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %417 = bitcast %struct.rtx_def* %416 to i32*
  %418 = load i32, i32* %417, align 8
  %419 = and i32 %418, 65535
  %420 = icmp eq i32 %419, 55
  br i1 %420, label %448, label %421

; <label>:421:                                    ; preds = %415
  %422 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %423 = bitcast %struct.rtx_def* %422 to i32*
  %424 = load i32, i32* %423, align 8
  %425 = and i32 %424, 65535
  %426 = icmp eq i32 %425, 58
  br i1 %426, label %448, label %427

; <label>:427:                                    ; preds = %421
  %428 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %429 = bitcast %struct.rtx_def* %428 to i32*
  %430 = load i32, i32* %429, align 8
  %431 = and i32 %430, 65535
  %432 = icmp eq i32 %431, 134
  br i1 %432, label %448, label %433

; <label>:433:                                    ; preds = %427
  %434 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %435 = bitcast %struct.rtx_def* %434 to i32*
  %436 = load i32, i32* %435, align 8
  %437 = and i32 %436, 65535
  %438 = icmp eq i32 %437, 56
  br i1 %438, label %448, label %439

; <label>:439:                                    ; preds = %433
  %440 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %441 = bitcast %struct.rtx_def* %440 to i32*
  %442 = load i32, i32* %441, align 8
  %443 = and i32 %442, 65535
  %444 = icmp eq i32 %443, 140
  br i1 %444, label %448, label %445

; <label>:445:                                    ; preds = %439
  %446 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %447 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %446, %struct.rtx_def* null)
  store %struct.rtx_def* %447, %struct.rtx_def** %41, align 8
  br label %448

; <label>:448:                                    ; preds = %445, %439, %433, %427, %421, %415, %409, %403, %397, %391, %385
  %449 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %450 = load %struct.arg*, %struct.arg** %24, align 8
  %451 = load i32, i32* %20, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.arg, %struct.arg* %450, i64 %452
  %454 = getelementptr inbounds %struct.arg, %struct.arg* %453, i32 0, i32 0
  store %struct.rtx_def* %449, %struct.rtx_def** %454, align 8
  %455 = load i32, i32* %42, align 4
  %456 = load %struct.arg*, %struct.arg** %24, align 8
  %457 = load i32, i32* %20, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.arg, %struct.arg* %456, i64 %458
  %460 = getelementptr inbounds %struct.arg, %struct.arg* %459, i32 0, i32 1
  store i32 %455, i32* %460, align 8
  %461 = load i32, i32* %42, align 4
  %462 = call %struct.rtx_def* @function_arg(%struct.ix86_args* %23, i32 %461, %union.tree_node* null, i32 1)
  %463 = load %struct.arg*, %struct.arg** %24, align 8
  %464 = load i32, i32* %20, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.arg, %struct.arg* %463, i64 %465
  %467 = getelementptr inbounds %struct.arg, %struct.arg* %466, i32 0, i32 2
  store %struct.rtx_def* %462, %struct.rtx_def** %467, align 8
  %468 = load %struct.arg*, %struct.arg** %24, align 8
  %469 = load i32, i32* %20, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds %struct.arg, %struct.arg* %468, i64 %470
  %472 = getelementptr inbounds %struct.arg, %struct.arg* %471, i32 0, i32 3
  store i32 0, i32* %472, align 8
  %473 = load i32, i32* %42, align 4
  %474 = load %struct.arg*, %struct.arg** %24, align 8
  %475 = load i32, i32* %20, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.arg, %struct.arg* %474, i64 %476
  %478 = getelementptr inbounds %struct.arg, %struct.arg* %477, i32 0, i32 2
  %479 = load %struct.rtx_def*, %struct.rtx_def** %478, align 8
  %480 = icmp ne %struct.rtx_def* %479, null
  %481 = zext i1 %480 to i32
  %482 = load %struct.arg*, %struct.arg** %24, align 8
  %483 = load i32, i32* %20, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.arg, %struct.arg* %482, i64 %484
  %486 = getelementptr inbounds %struct.arg, %struct.arg* %485, i32 0, i32 4
  %487 = load %struct.arg*, %struct.arg** %24, align 8
  %488 = load i32, i32* %20, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.arg, %struct.arg* %487, i64 %489
  %491 = getelementptr inbounds %struct.arg, %struct.arg* %490, i32 0, i32 5
  call void @locate_and_pad_parm(i32 %473, %union.tree_node* null, i32 %481, %union.tree_node* null, %struct.args_size* %15, %struct.args_size* %486, %struct.args_size* %491, %struct.args_size* %21)
  %492 = load %struct.arg*, %struct.arg** %24, align 8
  %493 = load i32, i32* %20, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.arg, %struct.arg* %492, i64 %494
  %496 = getelementptr inbounds %struct.arg, %struct.arg* %495, i32 0, i32 5
  %497 = getelementptr inbounds %struct.args_size, %struct.args_size* %496, i32 0, i32 1
  %498 = load %union.tree_node*, %union.tree_node** %497, align 8
  %499 = icmp ne %union.tree_node* %498, null
  br i1 %499, label %500, label %501

; <label>:500:                                    ; preds = %448
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 3724, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.emit_library_call_value_1, i32 0, i32 0)) #8
  unreachable

; <label>:501:                                    ; preds = %448
  %502 = load i32, i32* %32, align 4
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %533

; <label>:504:                                    ; preds = %501
  %505 = load %struct.arg*, %struct.arg** %24, align 8
  %506 = load i32, i32* %20, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.arg, %struct.arg* %505, i64 %507
  %509 = getelementptr inbounds %struct.arg, %struct.arg* %508, i32 0, i32 3
  %510 = load i32, i32* %509, align 8
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %533

; <label>:512:                                    ; preds = %504
  %513 = load %struct.arg*, %struct.arg** %24, align 8
  %514 = load i32, i32* %20, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.arg, %struct.arg* %513, i64 %515
  %517 = getelementptr inbounds %struct.arg, %struct.arg* %516, i32 0, i32 3
  %518 = load i32, i32* %517, align 8
  %519 = load i32, i32* @target_flags, align 4
  %520 = and i32 %519, 33554432
  %521 = icmp ne i32 %520, 0
  %522 = select i1 %521, i32 8, i32 4
  %523 = mul nsw i32 %518, %522
  %524 = sext i32 %523 to i64
  %525 = load %struct.arg*, %struct.arg** %24, align 8
  %526 = load i32, i32* %20, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.arg, %struct.arg* %525, i64 %527
  %529 = getelementptr inbounds %struct.arg, %struct.arg* %528, i32 0, i32 5
  %530 = getelementptr inbounds %struct.args_size, %struct.args_size* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = sub nsw i64 %531, %524
  store i64 %532, i64* %530, align 8
  br label %533

; <label>:533:                                    ; preds = %512, %504, %501
  %534 = load %struct.arg*, %struct.arg** %24, align 8
  %535 = load i32, i32* %20, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.arg, %struct.arg* %534, i64 %536
  %538 = getelementptr inbounds %struct.arg, %struct.arg* %537, i32 0, i32 2
  %539 = load %struct.rtx_def*, %struct.rtx_def** %538, align 8
  %540 = icmp eq %struct.rtx_def* %539, null
  br i1 %540, label %552, label %541

; <label>:541:                                    ; preds = %533
  %542 = load %struct.arg*, %struct.arg** %24, align 8
  %543 = load i32, i32* %20, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.arg, %struct.arg* %542, i64 %544
  %546 = getelementptr inbounds %struct.arg, %struct.arg* %545, i32 0, i32 3
  %547 = load i32, i32* %546, align 8
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %552, label %549

; <label>:549:                                    ; preds = %541
  %550 = load i32, i32* %32, align 4
  %551 = icmp sgt i32 %550, 0
  br i1 %551, label %552, label %563

; <label>:552:                                    ; preds = %549, %541, %533
  %553 = load %struct.arg*, %struct.arg** %24, align 8
  %554 = load i32, i32* %20, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.arg, %struct.arg* %553, i64 %555
  %557 = getelementptr inbounds %struct.arg, %struct.arg* %556, i32 0, i32 5
  %558 = getelementptr inbounds %struct.args_size, %struct.args_size* %557, i32 0, i32 0
  %559 = load i64, i64* %558, align 8
  %560 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = add nsw i64 %561, %559
  store i64 %562, i64* %560, align 8
  br label %563

; <label>:563:                                    ; preds = %552, %549
  %564 = load i32, i32* %42, align 4
  call void @function_arg_advance(%struct.ix86_args* %23, i32 %564, %union.tree_node* null, i32 1)
  br label %565

; <label>:565:                                    ; preds = %563
  %566 = load i32, i32* %20, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %20, align 4
  br label %326

; <label>:568:                                    ; preds = %326
  %569 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  call void @assemble_external_libcall(%struct.rtx_def* %569)
  %570 = bitcast %struct.args_size* %16 to i8*
  %571 = bitcast %struct.args_size* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %570, i8* %571, i64 16, i32 8, i1 false)
  %572 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = load %struct.function*, %struct.function** @cfun, align 8
  %575 = getelementptr inbounds %struct.function, %struct.function* %574, i32 0, i32 2
  %576 = load %struct.expr_status*, %struct.expr_status** %575, align 8
  %577 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %576, i32 0, i32 2
  %578 = load i32, i32* %577, align 8
  %579 = sext i32 %578 to i64
  %580 = add nsw i64 %573, %579
  %581 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %582 = sdiv i32 %581, 8
  %583 = sext i32 %582 to i64
  %584 = add nsw i64 %580, %583
  %585 = sub nsw i64 %584, 1
  %586 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %587 = sdiv i32 %586, 8
  %588 = sext i32 %587 to i64
  %589 = sdiv i64 %585, %588
  %590 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %591 = sdiv i32 %590, 8
  %592 = sext i32 %591 to i64
  %593 = mul nsw i64 %589, %592
  %594 = load %struct.function*, %struct.function** @cfun, align 8
  %595 = getelementptr inbounds %struct.function, %struct.function* %594, i32 0, i32 2
  %596 = load %struct.expr_status*, %struct.expr_status** %595, align 8
  %597 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %596, i32 0, i32 2
  %598 = load i32, i32* %597, align 8
  %599 = sext i32 %598 to i64
  %600 = sub nsw i64 %593, %599
  %601 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  store i64 %600, i64* %601, align 8
  %602 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %603 = load i64, i64* %602, align 8
  %604 = load i32, i32* %32, align 4
  %605 = sext i32 %604 to i64
  %606 = icmp sgt i64 %603, %605
  br i1 %606, label %607, label %610

; <label>:607:                                    ; preds = %568
  %608 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %609 = load i64, i64* %608, align 8
  br label %613

; <label>:610:                                    ; preds = %568
  %611 = load i32, i32* %32, align 4
  %612 = sext i32 %611 to i64
  br label %613

; <label>:613:                                    ; preds = %610, %607
  %614 = phi i64 [ %609, %607 ], [ %612, %610 ]
  %615 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  store i64 %614, i64* %615, align 8
  %616 = load i32, i32* %32, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %619 = load i64, i64* %618, align 8
  %620 = sub nsw i64 %619, %617
  store i64 %620, i64* %618, align 8
  %621 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %622 = load i64, i64* %621, align 8
  %623 = load %struct.function*, %struct.function** @cfun, align 8
  %624 = getelementptr inbounds %struct.function, %struct.function* %623, i32 0, i32 11
  %625 = load i32, i32* %624, align 4
  %626 = sext i32 %625 to i64
  %627 = icmp sgt i64 %622, %626
  br i1 %627, label %628, label %634

; <label>:628:                                    ; preds = %613
  %629 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %630 = load i64, i64* %629, align 8
  %631 = trunc i64 %630 to i32
  %632 = load %struct.function*, %struct.function** @cfun, align 8
  %633 = getelementptr inbounds %struct.function, %struct.function* %632, i32 0, i32 11
  store i32 %631, i32* %633, align 4
  br label %634

; <label>:634:                                    ; preds = %628, %613
  %635 = load i32, i32* @target_flags, align 4
  %636 = and i32 %635, 4096
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %686

; <label>:638:                                    ; preds = %634
  %639 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %640 = load i64, i64* %639, align 8
  %641 = trunc i64 %640 to i32
  store i32 %641, i32* %33, align 4
  %642 = load i32, i32* %32, align 4
  %643 = load i32, i32* %33, align 4
  %644 = add nsw i32 %643, %642
  store i32 %644, i32* %33, align 4
  %645 = load i32, i32* %38, align 4
  %646 = load i32, i32* %33, align 4
  %647 = icmp sgt i32 %645, %646
  br i1 %647, label %648, label %650

; <label>:648:                                    ; preds = %638
  %649 = load i32, i32* %38, align 4
  br label %652

; <label>:650:                                    ; preds = %638
  %651 = load i32, i32* %33, align 4
  br label %652

; <label>:652:                                    ; preds = %650, %648
  %653 = phi i32 [ %649, %648 ], [ %651, %650 ]
  store i32 %653, i32* @highest_outgoing_arg_in_use, align 4
  %654 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %655 = sext i32 %654 to i64
  %656 = alloca i8, i64 %655, align 16
  store i8* %656, i8** @stack_usage_map, align 8
  %657 = load i32, i32* %38, align 4
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %659, label %664

; <label>:659:                                    ; preds = %652
  %660 = load i8*, i8** @stack_usage_map, align 8
  %661 = load i8*, i8** %39, align 8
  %662 = load i32, i32* %38, align 4
  %663 = sext i32 %662 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %660, i8* %661, i64 %663, i32 1, i1 false)
  br label %664

; <label>:664:                                    ; preds = %659, %652
  %665 = load i32, i32* %38, align 4
  %666 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %667 = icmp ne i32 %665, %666
  br i1 %667, label %668, label %677

; <label>:668:                                    ; preds = %664
  %669 = load i8*, i8** @stack_usage_map, align 8
  %670 = load i32, i32* %38, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i8, i8* %669, i64 %671
  %673 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %674 = load i32, i32* %38, align 4
  %675 = sub nsw i32 %673, %674
  %676 = sext i32 %675 to i64
  call void @llvm.memset.p0i8.i64(i8* %672, i8 0, i64 %676, i32 1, i1 false)
  br label %677

; <label>:677:                                    ; preds = %668, %664
  store i32 0, i32* %33, align 4
  %678 = load i32, i32* @virtuals_instantiated, align 4
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %683

; <label>:680:                                    ; preds = %677
  %681 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %682 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %681, i64 0)
  store %struct.rtx_def* %682, %struct.rtx_def** %22, align 8
  br label %685

; <label>:683:                                    ; preds = %677
  %684 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 9), align 8
  store %struct.rtx_def* %684, %struct.rtx_def** %22, align 8
  br label %685

; <label>:685:                                    ; preds = %683, %680
  br label %700

; <label>:686:                                    ; preds = %634
  %687 = load i32, i32* @target_flags, align 4
  %688 = and i32 %687, 2048
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %694, label %690

; <label>:690:                                    ; preds = %686
  %691 = load i32, i32* @target_flags, align 4
  %692 = and i32 %691, 4096
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %694, label %699

; <label>:694:                                    ; preds = %690, %686
  %695 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %696 = load i64, i64* %695, align 8
  %697 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %696)
  %698 = call %struct.rtx_def* @push_block(%struct.rtx_def* %697, i32 0, i32 0)
  store %struct.rtx_def* %698, %struct.rtx_def** %22, align 8
  br label %699

; <label>:699:                                    ; preds = %694, %690
  br label %700

; <label>:700:                                    ; preds = %699, %685
  %701 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %702 = icmp eq %struct.rtx_def* %701, null
  br i1 %702, label %703, label %718

; <label>:703:                                    ; preds = %700
  %704 = load i32, i32* @target_flags, align 4
  %705 = and i32 %704, 2048
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %718, label %707

; <label>:707:                                    ; preds = %703
  %708 = load i32, i32* @target_flags, align 4
  %709 = and i32 %708, 4096
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %718, label %711

; <label>:711:                                    ; preds = %707
  %712 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %713 = load i64, i64* %712, align 8
  %714 = getelementptr inbounds %struct.args_size, %struct.args_size* %16, i32 0, i32 0
  %715 = load i64, i64* %714, align 8
  %716 = sub nsw i64 %713, %715
  %717 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %716)
  call void @anti_adjust_stack(%struct.rtx_def* %717)
  br label %718

; <label>:718:                                    ; preds = %711, %707, %703, %700
  %719 = load i32, i32* @target_flags, align 4
  %720 = and i32 %719, 2048
  %721 = icmp ne i32 %720, 0
  br i1 %721, label %729, label %722

; <label>:722:                                    ; preds = %718
  %723 = load i32, i32* @target_flags, align 4
  %724 = and i32 %723, 4096
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %729, label %726

; <label>:726:                                    ; preds = %722
  store i32 -1, i32* %19, align 4
  %727 = load i32, i32* %13, align 4
  %728 = sub nsw i32 %727, 1
  store i32 %728, i32* %17, align 4
  br label %730

; <label>:729:                                    ; preds = %722, %718
  store i32 1, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %730

; <label>:730:                                    ; preds = %729, %726
  %731 = load i32, i32* @target_flags, align 4
  %732 = and i32 %731, 4096
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %838

; <label>:734:                                    ; preds = %730
  store i32 0, i32* %20, align 4
  br label %735

; <label>:735:                                    ; preds = %759, %734
  %736 = load i32, i32* %20, align 4
  %737 = load i32, i32* %32, align 4
  %738 = icmp slt i32 %736, %737
  br i1 %738, label %739, label %762

; <label>:739:                                    ; preds = %735
  %740 = load i32, i32* %20, align 4
  %741 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %742 = icmp sge i32 %740, %741
  br i1 %742, label %751, label %743

; <label>:743:                                    ; preds = %739
  %744 = load i8*, i8** @stack_usage_map, align 8
  %745 = load i32, i32* %20, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds i8, i8* %744, i64 %746
  %748 = load i8, i8* %747, align 1
  %749 = sext i8 %748 to i32
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %751, label %752

; <label>:751:                                    ; preds = %743, %739
  br label %759

; <label>:752:                                    ; preds = %743
  %753 = load i32, i32* %35, align 4
  %754 = icmp eq i32 %753, -1
  br i1 %754, label %755, label %757

; <label>:755:                                    ; preds = %752
  %756 = load i32, i32* %20, align 4
  store i32 %756, i32* %35, align 4
  br label %757

; <label>:757:                                    ; preds = %755, %752
  %758 = load i32, i32* %20, align 4
  store i32 %758, i32* %36, align 4
  br label %759

; <label>:759:                                    ; preds = %757, %751
  %760 = load i32, i32* %20, align 4
  %761 = add nsw i32 %760, 1
  store i32 %761, i32* %20, align 4
  br label %735

; <label>:762:                                    ; preds = %735
  %763 = load i32, i32* %35, align 4
  %764 = icmp sge i32 %763, 0
  br i1 %764, label %765, label %837

; <label>:765:                                    ; preds = %762
  %766 = load i32, i32* %36, align 4
  %767 = load i32, i32* %35, align 4
  %768 = sub nsw i32 %766, %767
  %769 = add nsw i32 %768, 1
  store i32 %769, i32* %43, align 4
  %770 = load i32, i32* %43, align 4
  %771 = mul nsw i32 %770, 8
  %772 = call i32 @mode_for_size(i32 %771, i32 1, i32 1)
  store i32 %772, i32* %44, align 4
  %773 = load i32, i32* %35, align 4
  %774 = load i32, i32* %44, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %775
  %777 = load i8, i8* %776, align 1
  %778 = zext i8 %777 to i32
  %779 = load i32, i32* @target_flags, align 4
  %780 = and i32 %779, 33554432
  %781 = icmp ne i32 %780, 0
  %782 = select i1 %781, i32 8, i32 4
  %783 = sdiv i32 128, %782
  %784 = icmp slt i32 %778, %783
  br i1 %784, label %785, label %791

; <label>:785:                                    ; preds = %765
  %786 = load i32, i32* %44, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %787
  %789 = load i8, i8* %788, align 1
  %790 = zext i8 %789 to i32
  br label %797

; <label>:791:                                    ; preds = %765
  %792 = load i32, i32* @target_flags, align 4
  %793 = and i32 %792, 33554432
  %794 = icmp ne i32 %793, 0
  %795 = select i1 %794, i32 8, i32 4
  %796 = sdiv i32 128, %795
  br label %797

; <label>:797:                                    ; preds = %791, %785
  %798 = phi i32 [ %790, %785 ], [ %796, %791 ]
  %799 = sub nsw i32 %798, 1
  %800 = and i32 %773, %799
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %802, label %803

; <label>:802:                                    ; preds = %797
  store i32 51, i32* %44, align 4
  br label %803

; <label>:803:                                    ; preds = %802, %797
  %804 = load i32, i32* %44, align 4
  %805 = load i32, i32* %44, align 4
  %806 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %807 = load i32, i32* %35, align 4
  %808 = sext i32 %807 to i64
  %809 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %806, i64 %808)
  %810 = call %struct.rtx_def* @memory_address(i32 %805, %struct.rtx_def* %809)
  %811 = call %struct.rtx_def* @gen_rtx_MEM(i32 %804, %struct.rtx_def* %810)
  store %struct.rtx_def* %811, %struct.rtx_def** %45, align 8
  %812 = load i32, i32* %44, align 4
  %813 = icmp eq i32 %812, 51
  br i1 %813, label %814, label %830

; <label>:814:                                    ; preds = %803
  %815 = load i32, i32* %43, align 4
  %816 = sext i32 %815 to i64
  %817 = call %struct.rtx_def* @assign_stack_temp(i32 51, i64 %816, i32 0)
  store %struct.rtx_def* %817, %struct.rtx_def** %37, align 8
  %818 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %819 = load i32, i32* @target_flags, align 4
  %820 = and i32 %819, 33554432
  %821 = icmp ne i32 %820, 0
  %822 = select i1 %821, i32 64, i32 32
  call void @set_mem_align(%struct.rtx_def* %818, i32 %822)
  %823 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %824 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %823)
  %825 = load %struct.rtx_def*, %struct.rtx_def** %45, align 8
  %826 = load i32, i32* %43, align 4
  %827 = sext i32 %826 to i64
  %828 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %827)
  %829 = call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %824, %struct.rtx_def* %825, %struct.rtx_def* %828)
  br label %836

; <label>:830:                                    ; preds = %803
  %831 = load i32, i32* %44, align 4
  %832 = call %struct.rtx_def* @gen_reg_rtx(i32 %831)
  store %struct.rtx_def* %832, %struct.rtx_def** %37, align 8
  %833 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %834 = load %struct.rtx_def*, %struct.rtx_def** %45, align 8
  %835 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %833, %struct.rtx_def* %834)
  br label %836

; <label>:836:                                    ; preds = %830, %814
  br label %837

; <label>:837:                                    ; preds = %836, %762
  br label %838

; <label>:838:                                    ; preds = %837, %730
  store i32 0, i32* %20, align 4
  br label %839

; <label>:839:                                    ; preds = %1033, %838
  %840 = load i32, i32* %20, align 4
  %841 = load i32, i32* %13, align 4
  %842 = icmp slt i32 %840, %841
  br i1 %842, label %843, label %1039

; <label>:843:                                    ; preds = %839
  %844 = load %struct.arg*, %struct.arg** %24, align 8
  %845 = load i32, i32* %17, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds %struct.arg, %struct.arg* %844, i64 %846
  %848 = getelementptr inbounds %struct.arg, %struct.arg* %847, i32 0, i32 1
  %849 = load i32, i32* %848, align 8
  store i32 %849, i32* %46, align 4
  %850 = load %struct.arg*, %struct.arg** %24, align 8
  %851 = load i32, i32* %17, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds %struct.arg, %struct.arg* %850, i64 %852
  %854 = getelementptr inbounds %struct.arg, %struct.arg* %853, i32 0, i32 0
  %855 = load %struct.rtx_def*, %struct.rtx_def** %854, align 8
  store %struct.rtx_def* %855, %struct.rtx_def** %47, align 8
  %856 = load %struct.arg*, %struct.arg** %24, align 8
  %857 = load i32, i32* %17, align 4
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds %struct.arg, %struct.arg* %856, i64 %858
  %860 = getelementptr inbounds %struct.arg, %struct.arg* %859, i32 0, i32 2
  %861 = load %struct.rtx_def*, %struct.rtx_def** %860, align 8
  store %struct.rtx_def* %861, %struct.rtx_def** %48, align 8
  %862 = load %struct.arg*, %struct.arg** %24, align 8
  %863 = load i32, i32* %17, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds %struct.arg, %struct.arg* %862, i64 %864
  %866 = getelementptr inbounds %struct.arg, %struct.arg* %865, i32 0, i32 3
  %867 = load i32, i32* %866, align 8
  store i32 %867, i32* %49, align 4
  store i32 0, i32* %50, align 4
  store i32 0, i32* %51, align 4
  %868 = load %struct.rtx_def*, %struct.rtx_def** %48, align 8
  %869 = icmp ne %struct.rtx_def* %868, null
  br i1 %869, label %870, label %873

; <label>:870:                                    ; preds = %843
  %871 = load i32, i32* %49, align 4
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %1032, label %873

; <label>:873:                                    ; preds = %870, %843
  %874 = load i32, i32* @target_flags, align 4
  %875 = and i32 %874, 4096
  %876 = icmp ne i32 %875, 0
  br i1 %876, label %877, label %963

; <label>:877:                                    ; preds = %873
  %878 = load %struct.arg*, %struct.arg** %24, align 8
  %879 = load i32, i32* %17, align 4
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds %struct.arg, %struct.arg* %878, i64 %880
  %882 = getelementptr inbounds %struct.arg, %struct.arg* %881, i32 0, i32 4
  %883 = getelementptr inbounds %struct.args_size, %struct.args_size* %882, i32 0, i32 0
  %884 = load i64, i64* %883, align 8
  %885 = trunc i64 %884 to i32
  store i32 %885, i32* %50, align 4
  %886 = load i32, i32* %50, align 4
  %887 = sext i32 %886 to i64
  %888 = load %struct.arg*, %struct.arg** %24, align 8
  %889 = load i32, i32* %17, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds %struct.arg, %struct.arg* %888, i64 %890
  %892 = getelementptr inbounds %struct.arg, %struct.arg* %891, i32 0, i32 5
  %893 = getelementptr inbounds %struct.args_size, %struct.args_size* %892, i32 0, i32 0
  %894 = load i64, i64* %893, align 8
  %895 = add nsw i64 %887, %894
  %896 = trunc i64 %895 to i32
  store i32 %896, i32* %51, align 4
  %897 = load i32, i32* %50, align 4
  store i32 %897, i32* %52, align 4
  br label %898

; <label>:898:                                    ; preds = %916, %877
  %899 = load i32, i32* %52, align 4
  %900 = load i32, i32* %51, align 4
  %901 = icmp slt i32 %899, %900
  br i1 %901, label %902, label %919

; <label>:902:                                    ; preds = %898
  %903 = load i8*, i8** @stack_usage_map, align 8
  %904 = load i32, i32* %52, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds i8, i8* %903, i64 %905
  %907 = load i8, i8* %906, align 1
  %908 = sext i8 %907 to i32
  %909 = icmp ne i32 %908, 0
  br i1 %909, label %910, label %915

; <label>:910:                                    ; preds = %902
  %911 = load i32, i32* %52, align 4
  %912 = load i32, i32* %32, align 4
  %913 = icmp sgt i32 %911, %912
  br i1 %913, label %914, label %915

; <label>:914:                                    ; preds = %910
  br label %919

; <label>:915:                                    ; preds = %910, %902
  br label %916

; <label>:916:                                    ; preds = %915
  %917 = load i32, i32* %52, align 4
  %918 = add nsw i32 %917, 1
  store i32 %918, i32* %52, align 4
  br label %898

; <label>:919:                                    ; preds = %914, %898
  %920 = load i32, i32* %52, align 4
  %921 = load i32, i32* %51, align 4
  %922 = icmp ne i32 %920, %921
  br i1 %922, label %923, label %962

; <label>:923:                                    ; preds = %919
  %924 = load %struct.arg*, %struct.arg** %24, align 8
  %925 = load i32, i32* %17, align 4
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds %struct.arg, %struct.arg* %924, i64 %926
  %928 = getelementptr inbounds %struct.arg, %struct.arg* %927, i32 0, i32 5
  %929 = getelementptr inbounds %struct.args_size, %struct.args_size* %928, i32 0, i32 0
  %930 = load i64, i64* %929, align 8
  %931 = mul nsw i64 %930, 8
  %932 = trunc i64 %931 to i32
  %933 = call i32 @mode_for_size(i32 %932, i32 1, i32 1)
  store i32 %933, i32* %53, align 4
  %934 = load i32, i32* %53, align 4
  %935 = load i32, i32* %53, align 4
  %936 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %937 = load %struct.arg*, %struct.arg** %24, align 8
  %938 = load i32, i32* %17, align 4
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds %struct.arg, %struct.arg* %937, i64 %939
  %941 = getelementptr inbounds %struct.arg, %struct.arg* %940, i32 0, i32 4
  %942 = getelementptr inbounds %struct.args_size, %struct.args_size* %941, i32 0, i32 0
  %943 = load i64, i64* %942, align 8
  %944 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %936, i64 %943)
  %945 = call %struct.rtx_def* @memory_address(i32 %935, %struct.rtx_def* %944)
  %946 = call %struct.rtx_def* @gen_rtx_MEM(i32 %934, %struct.rtx_def* %945)
  store %struct.rtx_def* %946, %struct.rtx_def** %54, align 8
  %947 = load i32, i32* %53, align 4
  %948 = call %struct.rtx_def* @gen_reg_rtx(i32 %947)
  %949 = load %struct.arg*, %struct.arg** %24, align 8
  %950 = load i32, i32* %17, align 4
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds %struct.arg, %struct.arg* %949, i64 %951
  %953 = getelementptr inbounds %struct.arg, %struct.arg* %952, i32 0, i32 6
  store %struct.rtx_def* %948, %struct.rtx_def** %953, align 8
  %954 = load %struct.arg*, %struct.arg** %24, align 8
  %955 = load i32, i32* %17, align 4
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds %struct.arg, %struct.arg* %954, i64 %956
  %958 = getelementptr inbounds %struct.arg, %struct.arg* %957, i32 0, i32 6
  %959 = load %struct.rtx_def*, %struct.rtx_def** %958, align 8
  %960 = load %struct.rtx_def*, %struct.rtx_def** %54, align 8
  %961 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %959, %struct.rtx_def* %960)
  br label %962

; <label>:962:                                    ; preds = %923, %919
  br label %963

; <label>:963:                                    ; preds = %962, %873
  %964 = load %struct.rtx_def*, %struct.rtx_def** %47, align 8
  %965 = load i32, i32* %46, align 4
  %966 = load i32, i32* %49, align 4
  %967 = load %struct.rtx_def*, %struct.rtx_def** %48, align 8
  %968 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %969 = load %struct.arg*, %struct.arg** %24, align 8
  %970 = load i32, i32* %17, align 4
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds %struct.arg, %struct.arg* %969, i64 %971
  %973 = getelementptr inbounds %struct.arg, %struct.arg* %972, i32 0, i32 4
  %974 = getelementptr inbounds %struct.args_size, %struct.args_size* %973, i32 0, i32 0
  %975 = load i64, i64* %974, align 8
  %976 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %975)
  %977 = load i32, i32* %32, align 4
  %978 = getelementptr inbounds %struct.args_size, %struct.args_size* %21, i32 0, i32 1
  %979 = load %union.tree_node*, %union.tree_node** %978, align 8
  %980 = icmp eq %union.tree_node* %979, null
  br i1 %980, label %981, label %985

; <label>:981:                                    ; preds = %963
  %982 = getelementptr inbounds %struct.args_size, %struct.args_size* %21, i32 0, i32 0
  %983 = load i64, i64* %982, align 8
  %984 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %983)
  br label %1005

; <label>:985:                                    ; preds = %963
  %986 = getelementptr inbounds %struct.args_size, %struct.args_size* %21, i32 0, i32 1
  %987 = load %union.tree_node*, %union.tree_node** %986, align 8
  %988 = icmp eq %union.tree_node* %987, null
  br i1 %988, label %989, label %993

; <label>:989:                                    ; preds = %985
  %990 = getelementptr inbounds %struct.args_size, %struct.args_size* %21, i32 0, i32 0
  %991 = load i64, i64* %990, align 8
  %992 = call %union.tree_node* @size_int_wide(i64 %991, i32 1)
  br label %1002

; <label>:993:                                    ; preds = %985
  %994 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i64 0, i64 1), align 8
  %995 = getelementptr inbounds %struct.args_size, %struct.args_size* %21, i32 0, i32 1
  %996 = load %union.tree_node*, %union.tree_node** %995, align 8
  %997 = call %union.tree_node* @convert(%union.tree_node* %994, %union.tree_node* %996)
  %998 = getelementptr inbounds %struct.args_size, %struct.args_size* %21, i32 0, i32 0
  %999 = load i64, i64* %998, align 8
  %1000 = call %union.tree_node* @size_int_wide(i64 %999, i32 1)
  %1001 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %997, %union.tree_node* %1000)
  br label %1002

; <label>:1002:                                   ; preds = %993, %989
  %1003 = phi %union.tree_node* [ %992, %989 ], [ %1001, %993 ]
  %1004 = call %struct.rtx_def* @expand_expr(%union.tree_node* %1003, %struct.rtx_def* null, i32 0, i32 0)
  br label %1005

; <label>:1005:                                   ; preds = %1002, %981
  %1006 = phi %struct.rtx_def* [ %984, %981 ], [ %1004, %1002 ]
  call void @emit_push_insn(%struct.rtx_def* %964, i32 %965, %union.tree_node* null, %struct.rtx_def* null, i32 0, i32 %966, %struct.rtx_def* %967, i32 0, %struct.rtx_def* %968, %struct.rtx_def* %976, i32 %977, %struct.rtx_def* %1006)
  %1007 = load i32, i32* @target_flags, align 4
  %1008 = and i32 %1007, 4096
  %1009 = icmp ne i32 %1008, 0
  br i1 %1009, label %1010, label %1025

; <label>:1010:                                   ; preds = %1005
  %1011 = load i32, i32* %50, align 4
  store i32 %1011, i32* %52, align 4
  br label %1012

; <label>:1012:                                   ; preds = %1021, %1010
  %1013 = load i32, i32* %52, align 4
  %1014 = load i32, i32* %51, align 4
  %1015 = icmp slt i32 %1013, %1014
  br i1 %1015, label %1016, label %1024

; <label>:1016:                                   ; preds = %1012
  %1017 = load i8*, i8** @stack_usage_map, align 8
  %1018 = load i32, i32* %52, align 4
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds i8, i8* %1017, i64 %1019
  store i8 1, i8* %1020, align 1
  br label %1021

; <label>:1021:                                   ; preds = %1016
  %1022 = load i32, i32* %52, align 4
  %1023 = add nsw i32 %1022, 1
  store i32 %1023, i32* %52, align 4
  br label %1012

; <label>:1024:                                   ; preds = %1012
  br label %1025

; <label>:1025:                                   ; preds = %1024, %1005
  %1026 = load %struct.function*, %struct.function** @cfun, align 8
  %1027 = getelementptr inbounds %struct.function, %struct.function* %1026, i32 0, i32 2
  %1028 = load %struct.expr_status*, %struct.expr_status** %1027, align 8
  %1029 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1028, i32 0, i32 1
  %1030 = load i32, i32* %1029, align 4
  %1031 = add nsw i32 %1030, 1
  store i32 %1031, i32* %1029, align 4
  br label %1032

; <label>:1032:                                   ; preds = %1025, %870
  br label %1033

; <label>:1033:                                   ; preds = %1032
  %1034 = load i32, i32* %20, align 4
  %1035 = add nsw i32 %1034, 1
  store i32 %1035, i32* %20, align 4
  %1036 = load i32, i32* %19, align 4
  %1037 = load i32, i32* %17, align 4
  %1038 = add nsw i32 %1037, %1036
  store i32 %1038, i32* %17, align 4
  br label %839

; <label>:1039:                                   ; preds = %839
  %1040 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %1041 = icmp eq %struct.rtx_def* %1040, null
  br i1 %1041, label %1042, label %1057

; <label>:1042:                                   ; preds = %1039
  %1043 = load i32, i32* @target_flags, align 4
  %1044 = and i32 %1043, 2048
  %1045 = icmp ne i32 %1044, 0
  br i1 %1045, label %1050, label %1046

; <label>:1046:                                   ; preds = %1042
  %1047 = load i32, i32* @target_flags, align 4
  %1048 = and i32 %1047, 4096
  %1049 = icmp ne i32 %1048, 0
  br i1 %1049, label %1050, label %1057

; <label>:1050:                                   ; preds = %1046, %1042
  %1051 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %1052 = load i64, i64* %1051, align 8
  %1053 = getelementptr inbounds %struct.args_size, %struct.args_size* %16, i32 0, i32 0
  %1054 = load i64, i64* %1053, align 8
  %1055 = sub nsw i64 %1052, %1054
  %1056 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %1055)
  call void @anti_adjust_stack(%struct.rtx_def* %1056)
  br label %1057

; <label>:1057:                                   ; preds = %1050, %1046, %1039
  %1058 = load i32, i32* @target_flags, align 4
  %1059 = and i32 %1058, 2048
  %1060 = icmp ne i32 %1059, 0
  br i1 %1060, label %1068, label %1061

; <label>:1061:                                   ; preds = %1057
  %1062 = load i32, i32* @target_flags, align 4
  %1063 = and i32 %1062, 4096
  %1064 = icmp ne i32 %1063, 0
  br i1 %1064, label %1068, label %1065

; <label>:1065:                                   ; preds = %1061
  %1066 = load i32, i32* %13, align 4
  %1067 = sub nsw i32 %1066, 1
  store i32 %1067, i32* %17, align 4
  br label %1069

; <label>:1068:                                   ; preds = %1061, %1057
  store i32 0, i32* %17, align 4
  br label %1069

; <label>:1069:                                   ; preds = %1068, %1065
  %1070 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %1071 = call %struct.rtx_def* @prepare_call_address(%struct.rtx_def* %1070, %union.tree_node* null, %struct.rtx_def** %26, i32 0, i32 0)
  store %struct.rtx_def* %1071, %struct.rtx_def** %18, align 8
  store i32 0, i32* %20, align 4
  br label %1072

; <label>:1072:                                   ; preds = %1133, %1069
  %1073 = load i32, i32* %20, align 4
  %1074 = load i32, i32* %13, align 4
  %1075 = icmp slt i32 %1073, %1074
  br i1 %1075, label %1076, label %1139

; <label>:1076:                                   ; preds = %1072
  %1077 = load %struct.arg*, %struct.arg** %24, align 8
  %1078 = load i32, i32* %17, align 4
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds %struct.arg, %struct.arg* %1077, i64 %1079
  %1081 = getelementptr inbounds %struct.arg, %struct.arg* %1080, i32 0, i32 0
  %1082 = load %struct.rtx_def*, %struct.rtx_def** %1081, align 8
  store %struct.rtx_def* %1082, %struct.rtx_def** %55, align 8
  %1083 = load %struct.arg*, %struct.arg** %24, align 8
  %1084 = load i32, i32* %17, align 4
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds %struct.arg, %struct.arg* %1083, i64 %1085
  %1087 = getelementptr inbounds %struct.arg, %struct.arg* %1086, i32 0, i32 2
  %1088 = load %struct.rtx_def*, %struct.rtx_def** %1087, align 8
  store %struct.rtx_def* %1088, %struct.rtx_def** %56, align 8
  %1089 = load %struct.arg*, %struct.arg** %24, align 8
  %1090 = load i32, i32* %17, align 4
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds %struct.arg, %struct.arg* %1089, i64 %1091
  %1093 = getelementptr inbounds %struct.arg, %struct.arg* %1092, i32 0, i32 3
  %1094 = load i32, i32* %1093, align 8
  store i32 %1094, i32* %57, align 4
  %1095 = load %struct.rtx_def*, %struct.rtx_def** %56, align 8
  %1096 = icmp ne %struct.rtx_def* %1095, null
  br i1 %1096, label %1097, label %1115

; <label>:1097:                                   ; preds = %1076
  %1098 = load %struct.rtx_def*, %struct.rtx_def** %56, align 8
  %1099 = bitcast %struct.rtx_def* %1098 to i32*
  %1100 = load i32, i32* %1099, align 8
  %1101 = and i32 %1100, 65535
  %1102 = icmp eq i32 %1101, 39
  br i1 %1102, label %1103, label %1115

; <label>:1103:                                   ; preds = %1097
  %1104 = load %struct.rtx_def*, %struct.rtx_def** %56, align 8
  %1105 = load %struct.rtx_def*, %struct.rtx_def** %55, align 8
  %1106 = load %struct.rtx_def*, %struct.rtx_def** %55, align 8
  %1107 = bitcast %struct.rtx_def* %1106 to i32*
  %1108 = load i32, i32* %1107, align 8
  %1109 = lshr i32 %1108, 16
  %1110 = and i32 %1109, 255
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %1111
  %1113 = load i8, i8* %1112, align 1
  %1114 = zext i8 %1113 to i32
  call void @emit_group_load(%struct.rtx_def* %1104, %struct.rtx_def* %1105, i32 %1114)
  br label %1126

; <label>:1115:                                   ; preds = %1097, %1076
  %1116 = load %struct.rtx_def*, %struct.rtx_def** %56, align 8
  %1117 = icmp ne %struct.rtx_def* %1116, null
  br i1 %1117, label %1118, label %1125

; <label>:1118:                                   ; preds = %1115
  %1119 = load i32, i32* %57, align 4
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1121, label %1125

; <label>:1121:                                   ; preds = %1118
  %1122 = load %struct.rtx_def*, %struct.rtx_def** %56, align 8
  %1123 = load %struct.rtx_def*, %struct.rtx_def** %55, align 8
  %1124 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1122, %struct.rtx_def* %1123)
  br label %1125

; <label>:1125:                                   ; preds = %1121, %1118, %1115
  br label %1126

; <label>:1126:                                   ; preds = %1125, %1103
  %1127 = load %struct.function*, %struct.function** @cfun, align 8
  %1128 = getelementptr inbounds %struct.function, %struct.function* %1127, i32 0, i32 2
  %1129 = load %struct.expr_status*, %struct.expr_status** %1128, align 8
  %1130 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1129, i32 0, i32 1
  %1131 = load i32, i32* %1130, align 4
  %1132 = add nsw i32 %1131, 1
  store i32 %1132, i32* %1130, align 4
  br label %1133

; <label>:1133:                                   ; preds = %1126
  %1134 = load i32, i32* %20, align 4
  %1135 = add nsw i32 %1134, 1
  store i32 %1135, i32* %20, align 4
  %1136 = load i32, i32* %19, align 4
  %1137 = load i32, i32* %17, align 4
  %1138 = add nsw i32 %1137, %1136
  store i32 %1138, i32* %17, align 4
  br label %1072

; <label>:1139:                                   ; preds = %1072
  store i32 0, i32* %20, align 4
  br label %1140

; <label>:1140:                                   ; preds = %1168, %1139
  %1141 = load i32, i32* %20, align 4
  %1142 = load i32, i32* %13, align 4
  %1143 = icmp slt i32 %1141, %1142
  br i1 %1143, label %1144, label %1171

; <label>:1144:                                   ; preds = %1140
  %1145 = load %struct.arg*, %struct.arg** %24, align 8
  %1146 = load i32, i32* %20, align 4
  %1147 = sext i32 %1146 to i64
  %1148 = getelementptr inbounds %struct.arg, %struct.arg* %1145, i64 %1147
  %1149 = getelementptr inbounds %struct.arg, %struct.arg* %1148, i32 0, i32 2
  %1150 = load %struct.rtx_def*, %struct.rtx_def** %1149, align 8
  store %struct.rtx_def* %1150, %struct.rtx_def** %58, align 8
  %1151 = load %struct.rtx_def*, %struct.rtx_def** %58, align 8
  %1152 = icmp ne %struct.rtx_def* %1151, null
  br i1 %1152, label %1153, label %1161

; <label>:1153:                                   ; preds = %1144
  %1154 = load %struct.rtx_def*, %struct.rtx_def** %58, align 8
  %1155 = bitcast %struct.rtx_def* %1154 to i32*
  %1156 = load i32, i32* %1155, align 8
  %1157 = and i32 %1156, 65535
  %1158 = icmp eq i32 %1157, 39
  br i1 %1158, label %1159, label %1161

; <label>:1159:                                   ; preds = %1153
  %1160 = load %struct.rtx_def*, %struct.rtx_def** %58, align 8
  call void @use_group_regs(%struct.rtx_def** %26, %struct.rtx_def* %1160)
  br label %1167

; <label>:1161:                                   ; preds = %1153, %1144
  %1162 = load %struct.rtx_def*, %struct.rtx_def** %58, align 8
  %1163 = icmp ne %struct.rtx_def* %1162, null
  br i1 %1163, label %1164, label %1166

; <label>:1164:                                   ; preds = %1161
  %1165 = load %struct.rtx_def*, %struct.rtx_def** %58, align 8
  call void @use_reg(%struct.rtx_def** %26, %struct.rtx_def* %1165)
  br label %1166

; <label>:1166:                                   ; preds = %1164, %1161
  br label %1167

; <label>:1167:                                   ; preds = %1166, %1159
  br label %1168

; <label>:1168:                                   ; preds = %1167
  %1169 = load i32, i32* %20, align 4
  %1170 = add nsw i32 %1169, 1
  store i32 %1170, i32* %20, align 4
  br label %1140

; <label>:1171:                                   ; preds = %1140
  %1172 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %1173 = icmp ne %struct.rtx_def* %1172, null
  br i1 %1173, label %1174, label %1202

; <label>:1174:                                   ; preds = %1171
  %1175 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %1176 = icmp ne %struct.rtx_def* %1175, null
  br i1 %1176, label %1177, label %1202

; <label>:1177:                                   ; preds = %1174
  %1178 = load i32, i32* %29, align 4
  %1179 = icmp ne i32 %1178, 0
  br i1 %1179, label %1202, label %1180

; <label>:1180:                                   ; preds = %1177
  %1181 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %1182 = load i32, i32* @target_flags, align 4
  %1183 = and i32 %1182, 33554432
  %1184 = icmp ne i32 %1183, 0
  %1185 = select i1 %1184, i32 5, i32 4
  %1186 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %1187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1186, i32 0, i32 1
  %1188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1187, i64 0, i64 0
  %1189 = bitcast %union.rtunion_def* %1188 to %struct.rtx_def**
  %1190 = load %struct.rtx_def*, %struct.rtx_def** %1189, align 8
  %1191 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %1190, %struct.rtx_def* null)
  %1192 = call %struct.rtx_def* @force_reg(i32 %1185, %struct.rtx_def* %1191)
  %1193 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1181, %struct.rtx_def* %1192)
  %1194 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %1195 = bitcast %struct.rtx_def* %1194 to i32*
  %1196 = load i32, i32* %1195, align 8
  %1197 = and i32 %1196, 65535
  %1198 = icmp eq i32 %1197, 61
  br i1 %1198, label %1199, label %1201

; <label>:1199:                                   ; preds = %1180
  %1200 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  call void @use_reg(%struct.rtx_def** %26, %struct.rtx_def* %1200)
  br label %1201

; <label>:1201:                                   ; preds = %1199, %1180
  br label %1202

; <label>:1202:                                   ; preds = %1201, %1177, %1174, %1171
  %1203 = load %struct.function*, %struct.function** @cfun, align 8
  %1204 = getelementptr inbounds %struct.function, %struct.function* %1203, i32 0, i32 2
  %1205 = load %struct.expr_status*, %struct.expr_status** %1204, align 8
  %1206 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1205, i32 0, i32 1
  %1207 = load i32, i32* %1206, align 4
  %1208 = add nsw i32 %1207, 1
  store i32 %1208, i32* %1206, align 4
  %1209 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %1210 = icmp eq %struct.rtx_def* %1209, null
  br i1 %1210, label %1211, label %1217

; <label>:1211:                                   ; preds = %1202
  %1212 = load i32, i32* %12, align 4
  %1213 = icmp ne i32 %1212, 0
  br i1 %1213, label %1214, label %1217

; <label>:1214:                                   ; preds = %1211
  %1215 = load i32, i32* %12, align 4
  %1216 = call %struct.rtx_def* @hard_libcall_value(i32 %1215)
  br label %1218

; <label>:1217:                                   ; preds = %1211, %1202
  br label %1218

; <label>:1218:                                   ; preds = %1217, %1214
  %1219 = phi %struct.rtx_def* [ %1216, %1214 ], [ null, %1217 ]
  store %struct.rtx_def* %1219, %struct.rtx_def** %28, align 8
  %1220 = load %struct.function*, %struct.function** @cfun, align 8
  %1221 = getelementptr inbounds %struct.function, %struct.function* %1220, i32 0, i32 2
  %1222 = load %struct.expr_status*, %struct.expr_status** %1221, align 8
  %1223 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1222, i32 0, i32 2
  %1224 = load i32, i32* %1223, align 8
  %1225 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %1226 = sdiv i32 %1225, 8
  %1227 = sub nsw i32 %1226, 1
  %1228 = and i32 %1224, %1227
  %1229 = icmp ne i32 %1228, 0
  br i1 %1229, label %1230, label %1231

; <label>:1230:                                   ; preds = %1218
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 4032, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.emit_library_call_value_1, i32 0, i32 0)) #8
  unreachable

; <label>:1231:                                   ; preds = %1218
  %1232 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %1232, %struct.rtx_def** %34, align 8
  %1233 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %1234 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %1235 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1234, i32 0, i32 1
  %1236 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1235, i64 0, i64 0
  %1237 = bitcast %union.rtunion_def* %1236 to i8**
  %1238 = load i8*, i8** %1237, align 8
  %1239 = call %union.tree_node* @get_identifier(i8* %1238)
  %1240 = load i32, i32* %12, align 4
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1242, label %1244

; <label>:1242:                                   ; preds = %1231
  %1243 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 27), align 8
  br label %1247

; <label>:1244:                                   ; preds = %1231
  %1245 = load i32, i32* %12, align 4
  %1246 = call %union.tree_node* @type_for_mode(i32 %1245, i32 0)
  br label %1247

; <label>:1247:                                   ; preds = %1244, %1242
  %1248 = phi %union.tree_node* [ %1243, %1242 ], [ %1246, %1244 ]
  %1249 = call %union.tree_node* @build_function_type(%union.tree_node* %1248, %union.tree_node* null)
  %1250 = getelementptr inbounds %struct.args_size, %struct.args_size* %16, i32 0, i32 0
  %1251 = load i64, i64* %1250, align 8
  %1252 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %1253 = load i64, i64* %1252, align 8
  %1254 = load i32, i32* %30, align 4
  %1255 = sext i32 %1254 to i64
  %1256 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 27), align 8
  %1257 = call %struct.rtx_def* @function_arg(%struct.ix86_args* %23, i32 0, %union.tree_node* %1256, i32 1)
  %1258 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1259 = load i32, i32* %25, align 4
  %1260 = add nsw i32 %1259, 1
  %1261 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %1262 = load i32, i32* %31, align 4
  call void @emit_call_1(%struct.rtx_def* %1233, %union.tree_node* %1239, %union.tree_node* %1249, i64 %1251, i64 %1253, i64 %1255, %struct.rtx_def* %1257, %struct.rtx_def* %1258, i32 %1260, %struct.rtx_def* %1261, i32 %1262, %struct.ix86_args* %23)
  %1263 = load i32, i32* %31, align 4
  %1264 = and i32 %1263, 66
  %1265 = icmp ne i32 %1264, 0
  br i1 %1265, label %1266, label %1288

; <label>:1266:                                   ; preds = %1247
  %1267 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %1267, %struct.rtx_def** %59, align 8
  br label %1268

; <label>:1268:                                   ; preds = %1284, %1266
  %1269 = load %struct.rtx_def*, %struct.rtx_def** %59, align 8
  %1270 = bitcast %struct.rtx_def* %1269 to i32*
  %1271 = load i32, i32* %1270, align 8
  %1272 = and i32 %1271, 65535
  %1273 = icmp ne i32 %1272, 34
  br i1 %1273, label %1274, label %1285

; <label>:1274:                                   ; preds = %1268
  %1275 = load %struct.rtx_def*, %struct.rtx_def** %59, align 8
  %1276 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1275, i32 0, i32 1
  %1277 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1276, i64 0, i64 1
  %1278 = bitcast %union.rtunion_def* %1277 to %struct.rtx_def**
  %1279 = load %struct.rtx_def*, %struct.rtx_def** %1278, align 8
  store %struct.rtx_def* %1279, %struct.rtx_def** %59, align 8
  %1280 = load %struct.rtx_def*, %struct.rtx_def** %59, align 8
  %1281 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %1282 = icmp eq %struct.rtx_def* %1280, %1281
  br i1 %1282, label %1283, label %1284

; <label>:1283:                                   ; preds = %1274
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 4069, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.emit_library_call_value_1, i32 0, i32 0)) #8
  unreachable

; <label>:1284:                                   ; preds = %1274
  br label %1268

; <label>:1285:                                   ; preds = %1268
  %1286 = load %struct.rtx_def*, %struct.rtx_def** %59, align 8
  %1287 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %1286)
  br label %1288

; <label>:1288:                                   ; preds = %1285, %1247
  %1289 = load %struct.function*, %struct.function** @cfun, align 8
  %1290 = getelementptr inbounds %struct.function, %struct.function* %1289, i32 0, i32 2
  %1291 = load %struct.expr_status*, %struct.expr_status** %1290, align 8
  %1292 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1291, i32 0, i32 1
  %1293 = load i32, i32* %1292, align 4
  %1294 = sub nsw i32 %1293, 1
  store i32 %1294, i32* %1292, align 4
  %1295 = load i32, i32* %31, align 4
  %1296 = and i32 %1295, 4096
  %1297 = icmp ne i32 %1296, 0
  br i1 %1297, label %1298, label %1355

; <label>:1298:                                   ; preds = %1288
  %1299 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1300 = icmp eq %struct.rtx_def* %1299, null
  br i1 %1300, label %1307, label %1301

; <label>:1301:                                   ; preds = %1298
  %1302 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1303 = bitcast %struct.rtx_def* %1302 to i32*
  %1304 = load i32, i32* %1303, align 8
  %1305 = and i32 %1304, 65535
  %1306 = icmp eq i32 %1305, 39
  br i1 %1306, label %1307, label %1311

; <label>:1307:                                   ; preds = %1301, %1298
  %1308 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %1308, %struct.rtx_def** %60, align 8
  call void @end_sequence()
  %1309 = load %struct.rtx_def*, %struct.rtx_def** %60, align 8
  %1310 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %1309)
  br label %1354

; <label>:1311:                                   ; preds = %1301
  store %struct.rtx_def* null, %struct.rtx_def** %61, align 8
  %1312 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1313 = bitcast %struct.rtx_def* %1312 to i32*
  %1314 = load i32, i32* %1313, align 8
  %1315 = lshr i32 %1314, 16
  %1316 = and i32 %1315, 255
  %1317 = call %struct.rtx_def* @gen_reg_rtx(i32 %1316)
  store %struct.rtx_def* %1317, %struct.rtx_def** %62, align 8
  store i32 0, i32* %63, align 4
  br label %1318

; <label>:1318:                                   ; preds = %1331, %1311
  %1319 = load i32, i32* %63, align 4
  %1320 = load i32, i32* %13, align 4
  %1321 = icmp slt i32 %1319, %1320
  br i1 %1321, label %1322, label %1334

; <label>:1322:                                   ; preds = %1318
  %1323 = load %struct.arg*, %struct.arg** %24, align 8
  %1324 = load i32, i32* %63, align 4
  %1325 = sext i32 %1324 to i64
  %1326 = getelementptr inbounds %struct.arg, %struct.arg* %1323, i64 %1325
  %1327 = getelementptr inbounds %struct.arg, %struct.arg* %1326, i32 0, i32 0
  %1328 = load %struct.rtx_def*, %struct.rtx_def** %1327, align 8
  %1329 = load %struct.rtx_def*, %struct.rtx_def** %61, align 8
  %1330 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %1328, %struct.rtx_def* %1329)
  store %struct.rtx_def* %1330, %struct.rtx_def** %61, align 8
  br label %1331

; <label>:1331:                                   ; preds = %1322
  %1332 = load i32, i32* %63, align 4
  %1333 = add nsw i32 %1332, 1
  store i32 %1333, i32* %63, align 4
  br label %1318

; <label>:1334:                                   ; preds = %1318
  %1335 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %1336 = load %struct.rtx_def*, %struct.rtx_def** %61, align 8
  %1337 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %1335, %struct.rtx_def* %1336)
  store %struct.rtx_def* %1337, %struct.rtx_def** %61, align 8
  %1338 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %1338, %struct.rtx_def** %60, align 8
  call void @end_sequence()
  %1339 = load i32, i32* %31, align 4
  %1340 = and i32 %1339, 512
  %1341 = icmp ne i32 %1340, 0
  br i1 %1341, label %1342, label %1348

; <label>:1342:                                   ; preds = %1334
  %1343 = call %struct.rtx_def* @gen_rtx_fmt_0(i32 62, i32 0)
  %1344 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %1343)
  %1345 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %1344)
  %1346 = load %struct.rtx_def*, %struct.rtx_def** %61, align 8
  %1347 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %1345, %struct.rtx_def* %1346)
  store %struct.rtx_def* %1347, %struct.rtx_def** %61, align 8
  br label %1348

; <label>:1348:                                   ; preds = %1342, %1334
  %1349 = load %struct.rtx_def*, %struct.rtx_def** %60, align 8
  %1350 = load %struct.rtx_def*, %struct.rtx_def** %62, align 8
  %1351 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1352 = load %struct.rtx_def*, %struct.rtx_def** %61, align 8
  call void @emit_libcall_block(%struct.rtx_def* %1349, %struct.rtx_def* %1350, %struct.rtx_def* %1351, %struct.rtx_def* %1352)
  %1353 = load %struct.rtx_def*, %struct.rtx_def** %62, align 8
  store %struct.rtx_def* %1353, %struct.rtx_def** %28, align 8
  br label %1354

; <label>:1354:                                   ; preds = %1348, %1307
  br label %1355

; <label>:1355:                                   ; preds = %1354, %1288
  call void @pop_temp_slots()
  %1356 = load i32, i32* %12, align 4
  %1357 = icmp ne i32 %1356, 0
  br i1 %1357, label %1358, label %1391

; <label>:1358:                                   ; preds = %1355
  %1359 = load i32, i32* %8, align 4
  %1360 = icmp ne i32 %1359, 0
  br i1 %1360, label %1361, label %1391

; <label>:1361:                                   ; preds = %1358
  %1362 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %1363 = icmp ne %struct.rtx_def* %1362, null
  br i1 %1363, label %1364, label %1378

; <label>:1364:                                   ; preds = %1361
  %1365 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %1366 = icmp eq %struct.rtx_def* %1365, null
  br i1 %1366, label %1367, label %1369

; <label>:1367:                                   ; preds = %1364
  %1368 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  store %struct.rtx_def* %1368, %struct.rtx_def** %10, align 8
  br label %1369

; <label>:1369:                                   ; preds = %1367, %1364
  %1370 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %1371 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %1372 = icmp ne %struct.rtx_def* %1370, %1371
  br i1 %1372, label %1373, label %1377

; <label>:1373:                                   ; preds = %1369
  %1374 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %1375 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %1376 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1374, %struct.rtx_def* %1375)
  br label %1377

; <label>:1377:                                   ; preds = %1373, %1369
  br label %1390

; <label>:1378:                                   ; preds = %1361
  %1379 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %1380 = icmp ne %struct.rtx_def* %1379, null
  br i1 %1380, label %1381, label %1386

; <label>:1381:                                   ; preds = %1378
  %1382 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %1383 = load i32, i32* %12, align 4
  %1384 = call %struct.rtx_def* @hard_libcall_value(i32 %1383)
  %1385 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1382, %struct.rtx_def* %1384)
  br label %1389

; <label>:1386:                                   ; preds = %1378
  %1387 = load i32, i32* %12, align 4
  %1388 = call %struct.rtx_def* @hard_libcall_value(i32 %1387)
  store %struct.rtx_def* %1388, %struct.rtx_def** %10, align 8
  br label %1389

; <label>:1389:                                   ; preds = %1386, %1381
  br label %1390

; <label>:1390:                                   ; preds = %1389, %1377
  br label %1391

; <label>:1391:                                   ; preds = %1390, %1358, %1355
  %1392 = load i32, i32* @target_flags, align 4
  %1393 = and i32 %1392, 4096
  %1394 = icmp ne i32 %1393, 0
  br i1 %1394, label %1395, label %1487

; <label>:1395:                                   ; preds = %1391
  %1396 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %1397 = icmp ne %struct.rtx_def* %1396, null
  br i1 %1397, label %1398, label %1435

; <label>:1398:                                   ; preds = %1395
  %1399 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %1400 = bitcast %struct.rtx_def* %1399 to i32*
  %1401 = load i32, i32* %1400, align 8
  %1402 = lshr i32 %1401, 16
  %1403 = and i32 %1402, 255
  store i32 %1403, i32* %64, align 4
  %1404 = load i32, i32* %64, align 4
  %1405 = load i32, i32* %64, align 4
  %1406 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %1407 = load i32, i32* %35, align 4
  %1408 = sext i32 %1407 to i64
  %1409 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %1406, i64 %1408)
  %1410 = call %struct.rtx_def* @memory_address(i32 %1405, %struct.rtx_def* %1409)
  %1411 = call %struct.rtx_def* @gen_rtx_MEM(i32 %1404, %struct.rtx_def* %1410)
  store %struct.rtx_def* %1411, %struct.rtx_def** %65, align 8
  %1412 = load %struct.rtx_def*, %struct.rtx_def** %65, align 8
  %1413 = load i32, i32* @target_flags, align 4
  %1414 = and i32 %1413, 33554432
  %1415 = icmp ne i32 %1414, 0
  %1416 = select i1 %1415, i32 64, i32 32
  call void @set_mem_align(%struct.rtx_def* %1412, i32 %1416)
  %1417 = load i32, i32* %64, align 4
  %1418 = icmp ne i32 %1417, 51
  br i1 %1418, label %1419, label %1423

; <label>:1419:                                   ; preds = %1398
  %1420 = load %struct.rtx_def*, %struct.rtx_def** %65, align 8
  %1421 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %1422 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1420, %struct.rtx_def* %1421)
  br label %1434

; <label>:1423:                                   ; preds = %1398
  %1424 = load %struct.rtx_def*, %struct.rtx_def** %65, align 8
  %1425 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %1426 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %1425)
  %1427 = load i32, i32* %36, align 4
  %1428 = load i32, i32* %35, align 4
  %1429 = sub nsw i32 %1427, %1428
  %1430 = add nsw i32 %1429, 1
  %1431 = sext i32 %1430 to i64
  %1432 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %1431)
  %1433 = call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %1424, %struct.rtx_def* %1426, %struct.rtx_def* %1432)
  br label %1434

; <label>:1434:                                   ; preds = %1423, %1419
  br label %1435

; <label>:1435:                                   ; preds = %1434, %1395
  store i32 0, i32* %20, align 4
  br label %1436

; <label>:1436:                                   ; preds = %1481, %1435
  %1437 = load i32, i32* %20, align 4
  %1438 = load i32, i32* %13, align 4
  %1439 = icmp slt i32 %1437, %1438
  br i1 %1439, label %1440, label %1484

; <label>:1440:                                   ; preds = %1436
  %1441 = load %struct.arg*, %struct.arg** %24, align 8
  %1442 = load i32, i32* %20, align 4
  %1443 = sext i32 %1442 to i64
  %1444 = getelementptr inbounds %struct.arg, %struct.arg* %1441, i64 %1443
  %1445 = getelementptr inbounds %struct.arg, %struct.arg* %1444, i32 0, i32 6
  %1446 = load %struct.rtx_def*, %struct.rtx_def** %1445, align 8
  %1447 = icmp ne %struct.rtx_def* %1446, null
  br i1 %1447, label %1448, label %1480

; <label>:1448:                                   ; preds = %1440
  %1449 = load %struct.arg*, %struct.arg** %24, align 8
  %1450 = load i32, i32* %20, align 4
  %1451 = sext i32 %1450 to i64
  %1452 = getelementptr inbounds %struct.arg, %struct.arg* %1449, i64 %1451
  %1453 = getelementptr inbounds %struct.arg, %struct.arg* %1452, i32 0, i32 6
  %1454 = load %struct.rtx_def*, %struct.rtx_def** %1453, align 8
  %1455 = bitcast %struct.rtx_def* %1454 to i32*
  %1456 = load i32, i32* %1455, align 8
  %1457 = lshr i32 %1456, 16
  %1458 = and i32 %1457, 255
  store i32 %1458, i32* %66, align 4
  %1459 = load i32, i32* %66, align 4
  %1460 = load i32, i32* %66, align 4
  %1461 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %1462 = load %struct.arg*, %struct.arg** %24, align 8
  %1463 = load i32, i32* %20, align 4
  %1464 = sext i32 %1463 to i64
  %1465 = getelementptr inbounds %struct.arg, %struct.arg* %1462, i64 %1464
  %1466 = getelementptr inbounds %struct.arg, %struct.arg* %1465, i32 0, i32 4
  %1467 = getelementptr inbounds %struct.args_size, %struct.args_size* %1466, i32 0, i32 0
  %1468 = load i64, i64* %1467, align 8
  %1469 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %1461, i64 %1468)
  %1470 = call %struct.rtx_def* @memory_address(i32 %1460, %struct.rtx_def* %1469)
  %1471 = call %struct.rtx_def* @gen_rtx_MEM(i32 %1459, %struct.rtx_def* %1470)
  store %struct.rtx_def* %1471, %struct.rtx_def** %67, align 8
  %1472 = load %struct.rtx_def*, %struct.rtx_def** %67, align 8
  %1473 = load %struct.arg*, %struct.arg** %24, align 8
  %1474 = load i32, i32* %20, align 4
  %1475 = sext i32 %1474 to i64
  %1476 = getelementptr inbounds %struct.arg, %struct.arg* %1473, i64 %1475
  %1477 = getelementptr inbounds %struct.arg, %struct.arg* %1476, i32 0, i32 6
  %1478 = load %struct.rtx_def*, %struct.rtx_def** %1477, align 8
  %1479 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1472, %struct.rtx_def* %1478)
  br label %1480

; <label>:1480:                                   ; preds = %1448, %1440
  br label %1481

; <label>:1481:                                   ; preds = %1480
  %1482 = load i32, i32* %20, align 4
  %1483 = add nsw i32 %1482, 1
  store i32 %1483, i32* %20, align 4
  br label %1436

; <label>:1484:                                   ; preds = %1436
  %1485 = load i32, i32* %38, align 4
  store i32 %1485, i32* @highest_outgoing_arg_in_use, align 4
  %1486 = load i8*, i8** %39, align 8
  store i8* %1486, i8** @stack_usage_map, align 8
  br label %1487

; <label>:1487:                                   ; preds = %1484, %1391
  %1488 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  ret %struct.rtx_def* %1488
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noinline nounwind uwtable
define %struct.rtx_def* @emit_library_call_value(%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, ...) #0 {
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtx_def*, align 8
  %12 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.rtx_def* %0, %struct.rtx_def** %6, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i32 0, i32 0
  %14 = bitcast %struct.__va_list_tag* %13 to i8*
  call void @llvm.va_start(i8* %14)
  %15 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i32 0, i32 0
  %21 = call %struct.rtx_def* @emit_library_call_value_1(i32 1, %struct.rtx_def* %15, %struct.rtx_def* %16, i32 %17, i32 %18, i32 %19, %struct.__va_list_tag* %20)
  store %struct.rtx_def* %21, %struct.rtx_def** %11, align 8
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i32 0, i32 0
  %23 = bitcast %struct.__va_list_tag* %22 to i8*
  call void @llvm.va_end(i8* %23)
  %24 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  ret %struct.rtx_def* %24
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare void @timevar_push(i32) #1

declare %struct.rtx_def* @expand_inline_function(%union.tree_node*, %union.tree_node*, %struct.rtx_def*, i32, %union.tree_node*, %struct.rtx_def*) #1

declare void @timevar_pop(i32) #1

declare %struct.rtx_def* @emit_insns_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @contains_placeholder_p(%union.tree_node*) #1

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

declare %union.tree_node* @build1(i32, %union.tree_node*, %union.tree_node*) #1

declare i32 @compare_tree_int(%union.tree_node*, i64) #1

declare %struct.rtx_def* @expr_size(%union.tree_node*) #1

declare %struct.rtx_def* @store_expr(%union.tree_node*, %struct.rtx_def*, i32) #1

declare void @locate_and_pad_parm(i32, %union.tree_node*, i32, %union.tree_node*, %struct.args_size*, %struct.args_size*, %struct.args_size*, %struct.args_size*) #1

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare void @function_arg_advance(%struct.ix86_args*, i32, %union.tree_node*, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @calls_function(%union.tree_node*, i32) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  store i32 %1, i32* %4, align 4
  store %union.tree_node* null, %union.tree_node** @calls_function_save_exprs, align 8
  %6 = load %union.tree_node*, %union.tree_node** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @calls_function_1(%union.tree_node* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  store %union.tree_node* null, %union.tree_node** @calls_function_save_exprs, align 8
  %9 = load i32, i32* %5, align 4
  ret i32 %9
}

declare %struct.rtx_def* @convert_modes(i32, i32, %struct.rtx_def*, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @calls_function_1(%union.tree_node*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.tree_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.tree_node*, align 8
  %11 = alloca %union.tree_node*, align 8
  %12 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %union.tree_node*, %union.tree_node** %4, align 8
  %14 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 255
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @first_rtl_op(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 147
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %2
  store i32 1, i32* %3, align 4
  br label %296

; <label>:28:                                     ; preds = %2
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %245 [
    i32 53, label %30
    i32 46, label %113
    i32 118, label %138
    i32 4, label %175
    i32 2, label %225
  ]

; <label>:30:                                     ; preds = %28
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  store i32 1, i32* %3, align 4
  br label %296

; <label>:34:                                     ; preds = %30
  %35 = load %union.tree_node*, %union.tree_node** %4, align 8
  %36 = bitcast %union.tree_node* %35 to %struct.tree_exp*
  %37 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %36, i32 0, i32 2
  %38 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %37, i64 0, i64 0
  %39 = load %union.tree_node*, %union.tree_node** %38, align 8
  %40 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %40, i32 0, i32 1
  %42 = load %union.tree_node*, %union.tree_node** %41, align 8
  %43 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %44 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %43, i32 0, i32 1
  %45 = load %union.tree_node*, %union.tree_node** %44, align 8
  %46 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 23
  br i1 %50, label %51, label %70

; <label>:51:                                     ; preds = %34
  %52 = load %union.tree_node*, %union.tree_node** %4, align 8
  %53 = bitcast %union.tree_node* %52 to %struct.tree_exp*
  %54 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %53, i32 0, i32 2
  %55 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %54, i64 0, i64 0
  %56 = load %union.tree_node*, %union.tree_node** %55, align 8
  %57 = bitcast %union.tree_node* %56 to %struct.tree_common*
  %58 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %57, i32 0, i32 1
  %59 = load %union.tree_node*, %union.tree_node** %58, align 8
  %60 = bitcast %union.tree_node* %59 to %struct.tree_common*
  %61 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %60, i32 0, i32 1
  %62 = load %union.tree_node*, %union.tree_node** %61, align 8
  %63 = bitcast %union.tree_node* %62 to %struct.tree_type*
  %64 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = lshr i32 %65, 17
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %51
  store i32 1, i32* %3, align 4
  br label %296

; <label>:70:                                     ; preds = %51, %34
  %71 = load %union.tree_node*, %union.tree_node** %4, align 8
  %72 = bitcast %union.tree_node* %71 to %struct.tree_exp*
  %73 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %72, i32 0, i32 2
  %74 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %73, i64 0, i64 0
  %75 = load %union.tree_node*, %union.tree_node** %74, align 8
  %76 = bitcast %union.tree_node* %75 to %struct.tree_common*
  %77 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %79, 121
  br i1 %80, label %81, label %110

; <label>:81:                                     ; preds = %70
  %82 = load %union.tree_node*, %union.tree_node** %4, align 8
  %83 = bitcast %union.tree_node* %82 to %struct.tree_exp*
  %84 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %83, i32 0, i32 2
  %85 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %84, i64 0, i64 0
  %86 = load %union.tree_node*, %union.tree_node** %85, align 8
  %87 = bitcast %union.tree_node* %86 to %struct.tree_exp*
  %88 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %87, i32 0, i32 2
  %89 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %88, i64 0, i64 0
  %90 = load %union.tree_node*, %union.tree_node** %89, align 8
  %91 = bitcast %union.tree_node* %90 to %struct.tree_common*
  %92 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 255
  %95 = icmp eq i32 %94, 30
  br i1 %95, label %96, label %110

; <label>:96:                                     ; preds = %81
  %97 = load %union.tree_node*, %union.tree_node** %4, align 8
  %98 = bitcast %union.tree_node* %97 to %struct.tree_exp*
  %99 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %98, i32 0, i32 2
  %100 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %99, i64 0, i64 0
  %101 = load %union.tree_node*, %union.tree_node** %100, align 8
  %102 = bitcast %union.tree_node* %101 to %struct.tree_exp*
  %103 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %102, i32 0, i32 2
  %104 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %103, i64 0, i64 0
  %105 = load %union.tree_node*, %union.tree_node** %104, align 8
  %106 = call i32 @special_function_p(%union.tree_node* %105, i32 0)
  %107 = and i32 %106, 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

; <label>:109:                                    ; preds = %96
  store i32 1, i32* %3, align 4
  br label %296

; <label>:110:                                    ; preds = %96, %81, %70
  br label %111

; <label>:111:                                    ; preds = %110
  br label %112

; <label>:112:                                    ; preds = %111
  br label %246

; <label>:113:                                    ; preds = %28
  %114 = load %union.tree_node*, %union.tree_node** %4, align 8
  %115 = bitcast %union.tree_node* %114 to %struct.tree_exp*
  %116 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %115, i32 0, i32 2
  %117 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %116, i64 0, i64 1
  %118 = load %union.tree_node*, %union.tree_node** %117, align 8
  store %union.tree_node* %118, %union.tree_node** %10, align 8
  br label %119

; <label>:119:                                    ; preds = %132, %113
  %120 = load %union.tree_node*, %union.tree_node** %10, align 8
  %121 = icmp ne %union.tree_node* %120, null
  br i1 %121, label %122, label %137

; <label>:122:                                    ; preds = %119
  %123 = load %union.tree_node*, %union.tree_node** %10, align 8
  %124 = bitcast %union.tree_node* %123 to %struct.tree_list*
  %125 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %124, i32 0, i32 2
  %126 = load %union.tree_node*, %union.tree_node** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @calls_function_1(%union.tree_node* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

; <label>:130:                                    ; preds = %122
  store i32 1, i32* %3, align 4
  br label %296

; <label>:131:                                    ; preds = %122
  br label %132

; <label>:132:                                    ; preds = %131
  %133 = load %union.tree_node*, %union.tree_node** %10, align 8
  %134 = bitcast %union.tree_node* %133 to %struct.tree_common*
  %135 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %134, i32 0, i32 0
  %136 = load %union.tree_node*, %union.tree_node** %135, align 8
  store %union.tree_node* %136, %union.tree_node** %10, align 8
  br label %119

; <label>:137:                                    ; preds = %119
  store i32 0, i32* %3, align 4
  br label %296

; <label>:138:                                    ; preds = %28
  %139 = load %union.tree_node*, %union.tree_node** %4, align 8
  %140 = bitcast %union.tree_node* %139 to %struct.tree_exp*
  %141 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %140, i32 0, i32 2
  %142 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %141, i64 0, i64 2
  %143 = bitcast %union.tree_node** %142 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %143, align 8
  %145 = icmp ne %struct.rtx_def* %144, null
  br i1 %145, label %146, label %147

; <label>:146:                                    ; preds = %138
  store i32 0, i32* %3, align 4
  br label %296

; <label>:147:                                    ; preds = %138
  %148 = load %union.tree_node*, %union.tree_node** %4, align 8
  %149 = load %union.tree_node*, %union.tree_node** @calls_function_save_exprs, align 8
  %150 = call %union.tree_node* @value_member(%union.tree_node* %148, %union.tree_node* %149)
  %151 = icmp ne %union.tree_node* %150, null
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %147
  store i32 0, i32* %3, align 4
  br label %296

; <label>:153:                                    ; preds = %147
  %154 = load %union.tree_node*, %union.tree_node** %4, align 8
  %155 = load %union.tree_node*, %union.tree_node** @calls_function_save_exprs, align 8
  %156 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %154, %union.tree_node* %155)
  store %union.tree_node* %156, %union.tree_node** @calls_function_save_exprs, align 8
  %157 = load %union.tree_node*, %union.tree_node** %4, align 8
  %158 = bitcast %union.tree_node* %157 to %struct.tree_exp*
  %159 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %158, i32 0, i32 2
  %160 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %159, i64 0, i64 0
  %161 = load %union.tree_node*, %union.tree_node** %160, align 8
  %162 = icmp ne %union.tree_node* %161, null
  br i1 %162, label %163, label %172

; <label>:163:                                    ; preds = %153
  %164 = load %union.tree_node*, %union.tree_node** %4, align 8
  %165 = bitcast %union.tree_node* %164 to %struct.tree_exp*
  %166 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %165, i32 0, i32 2
  %167 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %166, i64 0, i64 0
  %168 = load %union.tree_node*, %union.tree_node** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @calls_function_1(%union.tree_node* %168, i32 %169)
  %171 = icmp ne i32 %170, 0
  br label %172

; <label>:172:                                    ; preds = %163, %153
  %173 = phi i1 [ false, %153 ], [ %171, %163 ]
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %3, align 4
  br label %296

; <label>:175:                                    ; preds = %28
  %176 = load %union.tree_node*, %union.tree_node** %4, align 8
  %177 = bitcast %union.tree_node* %176 to %struct.tree_block*
  %178 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %177, i32 0, i32 2
  %179 = load %union.tree_node*, %union.tree_node** %178, align 8
  store %union.tree_node* %179, %union.tree_node** %11, align 8
  br label %180

; <label>:180:                                    ; preds = %199, %175
  %181 = load %union.tree_node*, %union.tree_node** %11, align 8
  %182 = icmp ne %union.tree_node* %181, null
  br i1 %182, label %183, label %204

; <label>:183:                                    ; preds = %180
  %184 = load %union.tree_node*, %union.tree_node** %11, align 8
  %185 = bitcast %union.tree_node* %184 to %struct.tree_decl*
  %186 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %185, i32 0, i32 12
  %187 = load %union.tree_node*, %union.tree_node** %186, align 8
  %188 = icmp ne %union.tree_node* %187, null
  br i1 %188, label %189, label %198

; <label>:189:                                    ; preds = %183
  %190 = load %union.tree_node*, %union.tree_node** %11, align 8
  %191 = bitcast %union.tree_node* %190 to %struct.tree_decl*
  %192 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %191, i32 0, i32 12
  %193 = load %union.tree_node*, %union.tree_node** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @calls_function_1(%union.tree_node* %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

; <label>:197:                                    ; preds = %189
  store i32 1, i32* %3, align 4
  br label %296

; <label>:198:                                    ; preds = %189, %183
  br label %199

; <label>:199:                                    ; preds = %198
  %200 = load %union.tree_node*, %union.tree_node** %11, align 8
  %201 = bitcast %union.tree_node* %200 to %struct.tree_common*
  %202 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %201, i32 0, i32 0
  %203 = load %union.tree_node*, %union.tree_node** %202, align 8
  store %union.tree_node* %203, %union.tree_node** %11, align 8
  br label %180

; <label>:204:                                    ; preds = %180
  %205 = load %union.tree_node*, %union.tree_node** %4, align 8
  %206 = bitcast %union.tree_node* %205 to %struct.tree_block*
  %207 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %206, i32 0, i32 3
  %208 = load %union.tree_node*, %union.tree_node** %207, align 8
  store %union.tree_node* %208, %union.tree_node** %12, align 8
  br label %209

; <label>:209:                                    ; preds = %219, %204
  %210 = load %union.tree_node*, %union.tree_node** %12, align 8
  %211 = icmp ne %union.tree_node* %210, null
  br i1 %211, label %212, label %224

; <label>:212:                                    ; preds = %209
  %213 = load %union.tree_node*, %union.tree_node** %12, align 8
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @calls_function_1(%union.tree_node* %213, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

; <label>:217:                                    ; preds = %212
  store i32 1, i32* %3, align 4
  br label %296

; <label>:218:                                    ; preds = %212
  br label %219

; <label>:219:                                    ; preds = %218
  %220 = load %union.tree_node*, %union.tree_node** %12, align 8
  %221 = bitcast %union.tree_node* %220 to %struct.tree_common*
  %222 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %221, i32 0, i32 0
  %223 = load %union.tree_node*, %union.tree_node** %222, align 8
  store %union.tree_node* %223, %union.tree_node** %12, align 8
  br label %209

; <label>:224:                                    ; preds = %209
  store i32 0, i32* %3, align 4
  br label %296

; <label>:225:                                    ; preds = %28
  br label %226

; <label>:226:                                    ; preds = %239, %225
  %227 = load %union.tree_node*, %union.tree_node** %4, align 8
  %228 = icmp ne %union.tree_node* %227, null
  br i1 %228, label %229, label %244

; <label>:229:                                    ; preds = %226
  %230 = load %union.tree_node*, %union.tree_node** %4, align 8
  %231 = bitcast %union.tree_node* %230 to %struct.tree_list*
  %232 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %231, i32 0, i32 2
  %233 = load %union.tree_node*, %union.tree_node** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @calls_function_1(%union.tree_node* %233, i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

; <label>:237:                                    ; preds = %229
  store i32 1, i32* %3, align 4
  br label %296

; <label>:238:                                    ; preds = %229
  br label %239

; <label>:239:                                    ; preds = %238
  %240 = load %union.tree_node*, %union.tree_node** %4, align 8
  %241 = bitcast %union.tree_node* %240 to %struct.tree_common*
  %242 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %241, i32 0, i32 0
  %243 = load %union.tree_node*, %union.tree_node** %242, align 8
  store %union.tree_node* %243, %union.tree_node** %4, align 8
  br label %226

; <label>:244:                                    ; preds = %226
  store i32 0, i32* %3, align 4
  br label %296

; <label>:245:                                    ; preds = %28
  br label %246

; <label>:246:                                    ; preds = %245, %112
  %247 = load i32, i32* %8, align 4
  %248 = icmp eq i32 %247, 60
  br i1 %248, label %265, label %249

; <label>:249:                                    ; preds = %246
  %250 = load i32, i32* %8, align 4
  %251 = icmp eq i32 %250, 49
  br i1 %251, label %265, label %252

; <label>:252:                                    ; preds = %249
  %253 = load i32, i32* %8, align 4
  %254 = icmp eq i32 %253, 50
  br i1 %254, label %265, label %255

; <label>:255:                                    ; preds = %252
  %256 = load i32, i32* %8, align 4
  %257 = icmp eq i32 %256, 101
  br i1 %257, label %265, label %258

; <label>:258:                                    ; preds = %255
  %259 = load i32, i32* %8, align 4
  %260 = icmp ne i32 %259, 114
  br i1 %260, label %261, label %265

; <label>:261:                                    ; preds = %258
  %262 = load i32, i32* %8, align 4
  %263 = icmp ne i32 %262, 98
  br i1 %263, label %264, label %265

; <label>:264:                                    ; preds = %261
  store i32 0, i32* %3, align 4
  br label %296

; <label>:265:                                    ; preds = %261, %258, %255, %252, %249, %246
  store i32 0, i32* %6, align 4
  br label %266

; <label>:266:                                    ; preds = %292, %265
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* %9, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %295

; <label>:270:                                    ; preds = %266
  %271 = load %union.tree_node*, %union.tree_node** %4, align 8
  %272 = bitcast %union.tree_node* %271 to %struct.tree_exp*
  %273 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %272, i32 0, i32 2
  %274 = load i32, i32* %6, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %273, i64 0, i64 %275
  %277 = load %union.tree_node*, %union.tree_node** %276, align 8
  %278 = icmp ne %union.tree_node* %277, null
  br i1 %278, label %279, label %291

; <label>:279:                                    ; preds = %270
  %280 = load %union.tree_node*, %union.tree_node** %4, align 8
  %281 = bitcast %union.tree_node* %280 to %struct.tree_exp*
  %282 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %281, i32 0, i32 2
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %282, i64 0, i64 %284
  %286 = load %union.tree_node*, %union.tree_node** %285, align 8
  %287 = load i32, i32* %5, align 4
  %288 = call i32 @calls_function_1(%union.tree_node* %286, i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

; <label>:290:                                    ; preds = %279
  store i32 1, i32* %3, align 4
  br label %296

; <label>:291:                                    ; preds = %279, %270
  br label %292

; <label>:292:                                    ; preds = %291
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %6, align 4
  br label %266

; <label>:295:                                    ; preds = %266
  store i32 0, i32* %3, align 4
  br label %296

; <label>:296:                                    ; preds = %295, %290, %264, %244, %237, %224, %217, %197, %172, %152, %146, %137, %130, %109, %69, %33, %27
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare i32 @first_rtl_op(i32) #1

declare %union.tree_node* @value_member(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @round_up(%union.tree_node*, i32) #1

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

declare void @set_mem_alias_set(%struct.rtx_def*, i64) #1

declare void @assemble_external(%union.tree_node*) #1

declare void @push_temp_slots() #1

declare void @pop_temp_slots() #1

declare i32 @rtx_cost(%struct.rtx_def*, i32) #1

declare i32 @preserve_subexpressions_p() #1

declare %struct.rtx_def* @copy_to_mode_reg(i32, %struct.rtx_def*) #1

declare i32 @mode_for_size(i32, i32, i32) #1

declare void @set_mem_align(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @assign_stack_temp(i32, i64, i32) #1

declare void @move_by_pieces(%struct.rtx_def*, %struct.rtx_def*, i64, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_sibcall_argument_overlap_1(%struct.rtx_def*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %3, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %10 = icmp eq %struct.rtx_def* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store i32 0, i32* %2, align 4
  br label %207

; <label>:12:                                     ; preds = %1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 65535
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 66
  br i1 %18, label %19, label %130

; <label>:19:                                     ; preds = %12
  %20 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %21, i64 0, i64 0
  %23 = bitcast %union.rtunion_def* %22 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %23, align 8
  %25 = load %struct.function*, %struct.function** @cfun, align 8
  %26 = getelementptr inbounds %struct.function, %struct.function* %25, i32 0, i32 15
  %27 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %28 = icmp eq %struct.rtx_def* %24, %27
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %19
  store i32 0, i32* %5, align 4
  br label %85

; <label>:30:                                     ; preds = %19
  %31 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %32, i64 0, i64 0
  %34 = bitcast %union.rtunion_def* %33 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 75
  br i1 %39, label %40, label %83

; <label>:40:                                     ; preds = %30
  %41 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %42, i64 0, i64 0
  %44 = bitcast %union.rtunion_def* %43 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %44, align 8
  %46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %46, i64 0, i64 0
  %48 = bitcast %union.rtunion_def* %47 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %48, align 8
  %50 = load %struct.function*, %struct.function** @cfun, align 8
  %51 = getelementptr inbounds %struct.function, %struct.function* %50, i32 0, i32 15
  %52 = load %struct.rtx_def*, %struct.rtx_def** %51, align 8
  %53 = icmp eq %struct.rtx_def* %49, %52
  br i1 %53, label %54, label %83

; <label>:54:                                     ; preds = %40
  %55 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %56, i64 0, i64 0
  %58 = bitcast %union.rtunion_def* %57 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %58, align 8
  %60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %60, i64 0, i64 1
  %62 = bitcast %union.rtunion_def* %61 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %62, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 54
  br i1 %67, label %68, label %83

; <label>:68:                                     ; preds = %54
  %69 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %70, i64 0, i64 0
  %72 = bitcast %union.rtunion_def* %71 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %72, align 8
  %74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %74, i64 0, i64 1
  %76 = bitcast %union.rtunion_def* %75 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %76, align 8
  %78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %78, i64 0, i64 0
  %80 = bitcast %union.rtunion_def* %79 to i64*
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %5, align 4
  br label %84

; <label>:83:                                     ; preds = %54, %40, %30
  store i32 0, i32* %2, align 4
  br label %207

; <label>:84:                                     ; preds = %68
  br label %85

; <label>:85:                                     ; preds = %84, %29
  store i32 0, i32* %7, align 4
  br label %86

; <label>:86:                                     ; preds = %126, %85
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %90 = load i32, i32* %89, align 8
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ult i32 %87, %96
  br i1 %97, label %98, label %129

; <label>:98:                                     ; preds = %86
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %99, %100
  %102 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @stored_args_map, align 8
  %103 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ult i32 %101, %104
  br i1 %105, label %106, label %125

; <label>:106:                                    ; preds = %98
  %107 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @stored_args_map, align 8
  %108 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %107, i32 0, i32 3
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add i32 %109, %110
  %112 = udiv i32 %111, 64
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [1 x i64], [1 x i64]* %108, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %116, %117
  %119 = urem i32 %118, 64
  %120 = zext i32 %119 to i64
  %121 = lshr i64 %115, %120
  %122 = and i64 %121, 1
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %106
  store i32 1, i32* %2, align 4
  br label %207

; <label>:125:                                    ; preds = %106, %98
  br label %126

; <label>:126:                                    ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %86

; <label>:129:                                    ; preds = %86
  store i32 0, i32* %2, align 4
  br label %207

; <label>:130:                                    ; preds = %12
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i64 0, i64 %132
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %135

; <label>:135:                                    ; preds = %201, %130
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp slt i32 %136, %141
  br i1 %142, label %143, label %206

; <label>:143:                                    ; preds = %135
  %144 = load i8*, i8** %8, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 101
  br i1 %147, label %148, label %160

; <label>:148:                                    ; preds = %143
  %149 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %150, i64 0, i64 %152
  %154 = bitcast %union.rtunion_def* %153 to %struct.rtx_def**
  %155 = load %struct.rtx_def*, %struct.rtx_def** %154, align 8
  %156 = call i32 @check_sibcall_argument_overlap_1(%struct.rtx_def* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

; <label>:158:                                    ; preds = %148
  store i32 1, i32* %2, align 4
  br label %207

; <label>:159:                                    ; preds = %148
  br label %200

; <label>:160:                                    ; preds = %143
  %161 = load i8*, i8** %8, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 69
  br i1 %164, label %165, label %199

; <label>:165:                                    ; preds = %160
  store i32 0, i32* %6, align 4
  br label %166

; <label>:166:                                    ; preds = %195, %165
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %169 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %168, i32 0, i32 1
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %169, i64 0, i64 %171
  %173 = bitcast %union.rtunion_def* %172 to %struct.rtvec_def**
  %174 = load %struct.rtvec_def*, %struct.rtvec_def** %173, align 8
  %175 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %167, %176
  br i1 %177, label %178, label %198

; <label>:178:                                    ; preds = %166
  %179 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %180, i64 0, i64 %182
  %184 = bitcast %union.rtunion_def* %183 to %struct.rtvec_def**
  %185 = load %struct.rtvec_def*, %struct.rtvec_def** %184, align 8
  %186 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %185, i32 0, i32 1
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %186, i64 0, i64 %188
  %190 = load %struct.rtx_def*, %struct.rtx_def** %189, align 8
  %191 = call i32 @check_sibcall_argument_overlap_1(%struct.rtx_def* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

; <label>:193:                                    ; preds = %178
  store i32 1, i32* %2, align 4
  br label %207

; <label>:194:                                    ; preds = %178
  br label %195

; <label>:195:                                    ; preds = %194
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %166

; <label>:198:                                    ; preds = %166
  br label %199

; <label>:199:                                    ; preds = %198, %160
  br label %200

; <label>:200:                                    ; preds = %199, %159
  br label %201

; <label>:201:                                    ; preds = %200
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %5, align 4
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %8, align 8
  br label %135

; <label>:206:                                    ; preds = %135
  store i32 0, i32* %2, align 4
  br label %207

; <label>:207:                                    ; preds = %206, %193, %158, %129, %124, %83, %11
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare void @emit_group_load(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare void @move_block_to_reg(i32, %struct.rtx_def*, i32, i32) #1

declare void @use_group_regs(%struct.rtx_def**, %struct.rtx_def*) #1

declare void @use_regs(%struct.rtx_def**, i32, i32) #1

declare %struct.rtx_def* @gen_call_value_pop(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_call_pop(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_call_value(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_call(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @adjust_stack(%struct.rtx_def*) #1

declare %union.tree_node* @type_for_mode(i32, i32) #1

declare void @assemble_external_libcall(%struct.rtx_def*) #1

declare void @emit_push_insn(%struct.rtx_def*, i32, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @hard_libcall_value(i32) #1

declare %union.tree_node* @get_identifier(i8*) #1

declare %union.tree_node* @build_function_type(%union.tree_node*, %union.tree_node*) #1

declare void @error(i8*, ...) #1

declare void @free_temp_slots() #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}