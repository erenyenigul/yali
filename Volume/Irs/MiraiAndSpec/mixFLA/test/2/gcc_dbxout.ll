; ModuleID = 'host/ir_O0/gcc_dbxout.ll'
source_filename = "dbxout.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i1 (%union.tree_node*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void ()*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)* }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.typeinfo = type { i32, i32, i32 }
%struct.dbx_file = type { %struct.dbx_file*, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks = type { i8*, i64, void ()*, i32 (i32, i8**)*, void ()*, i8* (i8*)*, void ()*, void ()*, i64 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (%struct.rtx_def*, %union.tree_node*)*, i32 (%union.tree_node*)*, i8, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (i32)*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_tree_dump }
%struct.lang_hooks_for_tree_inlining = type { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, i32 (%union.tree_node**)*, i32 (%union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_tree_dump = type { i32 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }

@dbx_debug_hooks = global %struct.gcc_debug_hooks { void (i8*)* @dbxout_init, void (i8*)* @dbxout_finish, void (i32, i8*)* @debug_nothing_int_charstar, void (i32, i8*)* @debug_nothing_int_charstar, void (i32, i8*)* @dbxout_start_source_file, void (i32)* @dbxout_end_source_file, void (i32, i32)* @dbxout_begin_block, void (i32, i32)* @dbxout_end_block, i1 (%union.tree_node*)* @debug_true_tree, void (i32, i8*)* @dbxout_source_line, void (i32, i8*)* @dbxout_source_line, void (i32)* @debug_nothing_int, void ()* @debug_nothing_void, void (%union.tree_node*)* @dbxout_begin_function, void (i32)* @debug_nothing_int, void (%union.tree_node*)* @dbxout_function_decl, void (%union.tree_node*)* @dbxout_global_decl, void (%union.tree_node*)* @debug_nothing_tree, void (%union.tree_node*)* @debug_nothing_tree, void (%struct.rtx_def*)* @debug_nothing_rtx }, align 8
@current_sym_code = internal global i32 0, align 4
@current_sym_value = internal global i32 0, align 4
@current_sym_addr = internal global %struct.rtx_def* null, align 8
@current_sym_nchars = internal global i32 0, align 4
@current_function_decl = external global %union.tree_node*, align 8
@asmfile = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s\22%s:%c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\09.stabs\09\00", align 1
@lang_set_decl_assembler_name = external global void (%union.tree_node*)*, align 8
@global_trees = external global [51 x %union.tree_node*], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c",%s,%s\00", align 1
@use_gnu_debug_info_extensions = external global i32, align 4
@have_used_extensions = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"%s\22%s:T\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s\22%s:\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s\22 :T\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"dbxout.c\00", align 1
@__FUNCTION__.dbxout_symbol = private unnamed_addr constant [14 x i8] c"dbxout_symbol\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s\22%s:c=i\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"\22,0x%x,0,0,0\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%s\22(anon):%c\00", align 1
@target_flags = external global i32, align 4
@dbx64_register_map = external constant [53 x i32], align 16
@svr4_dbx_register_map = external constant [53 x i32], align 16
@.str.11 = private unnamed_addr constant [7 x i8] c"(anon)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%s\22%s:v\00", align 1
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@typevec = common global %struct.typeinfo* null, align 8
@asm_out_file = external global %struct._IO_FILE*, align 8
@typevec_len = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Ltext\00", align 1
@cwd = internal global i8* null, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c",%d,0,0,\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c".%s%u:\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"%s\22%s\22,%d,0,0,0\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"gcc2_compiled.\00", align 1
@lastfile = internal global i8* null, align 8
@next_type_number = internal global i32 0, align 4
@current_file = internal global %struct.dbx_file* null, align 8
@next_file_number = internal global i32 0, align 4
@integer_types = external global [11 x %union.tree_node*], align 16
@.str.21 = private unnamed_addr constant [11 x i8] c",%d,0,0,0\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"%s%d,0,0,0\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"\09.stabn\09\00", align 1
@dbxout_source_line.sym_lineno = internal global i32 1, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"LM\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"\09.stabn 68,0,%d,\00", align 1
@source_label_number = internal global i32 1, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"LBB\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"LBE\00", align 1
@targetm = external global %struct.gcc_target, align 8
@current_function_func_begin_label = external global %union.tree_node*, align 8
@debug_info_level = external global i32, align 4
@.str.28 = private unnamed_addr constant [18 x i8] c"%s\22%s:C1\22,%d,0,0,\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%s%d,0,0,\00", align 1
@dbxout_function_end.scope_labelno = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"Lscope\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"%s\22\22,%d,0,0,\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"\09.text\0A\09.stabs \22\22,%d,0,0,%LLetext\0A%LLetext:\0A\00", align 1
@dbxout_type.anonymous_type_number = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c";0;127;\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"@s%d;\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c";0;\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"@s\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c";-20;\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c";0;%d;\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c";-16;\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"eFalse:0,True:1,;\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"real:\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c",0,%d;\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"imag:\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c",%d,%d;;\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"@S;\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c";@S;S\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c";0;-1;\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"xs\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"xu\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"$$%d\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"!%d,\00", align 1
@lang_hooks = external constant %struct.lang_hooks, align 8
@.str.59 = private unnamed_addr constant [8 x i8] c"GNU C++\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"xe\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@__FUNCTION__.dbxout_type = private unnamed_addr constant [12 x i8] c"dbxout_type\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"(%d,%d)\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c";0\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c";-1;\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%o%01o\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"%01o\00", align 1
@__FUNCTION__.dbxout_type_name = private unnamed_addr constant [17 x i8] c"dbxout_type_name\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c":%s;\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c",0,0;\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"%s::\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c":%s;%c%c%c\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"$real\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"$imag\00", align 1
@tree_code_type = external global [256 x i8], align 16
@.str.75 = private unnamed_addr constant [9 x i8] c"%s\22%s%s:\00", align 1
@.str.76 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"\22,%d,0,%d,\00", align 1

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_init(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca %union.tree_node*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call %union.tree_node* @getdecls()
  store %union.tree_node* %5, %union.tree_node** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** @asmfile, align 8
  store i32 100, i32* @typevec_len, align 4
  %7 = load i32, i32* @typevec_len, align 4
  %8 = sext i32 %7 to i64
  %9 = call noalias i8* @xcalloc(i64 %8, i64 12)
  %10 = bitcast i8* %9 to %struct.typeinfo*
  store %struct.typeinfo* %10, %struct.typeinfo** @typevec, align 8
  br label %11

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0) #6
  br label %14

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %54

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** @cwd, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %39, label %20

; <label>:20:                                     ; preds = %17
  %21 = call i8* @getpwd()
  store i8* %21, i8** @cwd, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %39

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** @cwd, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** @cwd, align 8
  %29 = load i8*, i8** @cwd, align 8
  %30 = call i64 @strlen(i8* %29) #7
  %31 = sub i64 %30, 1
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 47
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %27, %23
  %37 = load i8*, i8** @cwd, align 8
  %38 = call noalias i8* (i8*, ...) @concat(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* null)
  store i8* %38, i8** @cwd, align 8
  br label %39

; <label>:39:                                     ; preds = %36, %27, %20, %17
  %40 = load i8*, i8** @cwd, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %53

; <label>:42:                                     ; preds = %39
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %46 = load i8*, i8** @cwd, align 8
  call void @output_quoted_string(%struct._IO_FILE* %45, i8* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 100)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %49, i8* %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %52 = call i32 @fputc(i32 10, %struct._IO_FILE* %51)
  br label %53

; <label>:53:                                     ; preds = %42, %39
  br label %54

; <label>:54:                                     ; preds = %53, %14
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %58 = load i8*, i8** %2, align 8
  call void @output_quoted_string(%struct._IO_FILE* %57, i8* %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 100)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %62 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %61, i8* %62)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %64 = call i32 @fputc(i32 10, %struct._IO_FILE* %63)
  call void @text_section()
  br label %65

; <label>:65:                                     ; preds = %54
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0)
  br label %68

; <label>:68:                                     ; preds = %65
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 60)
  %71 = load i8*, i8** %2, align 8
  store i8* %71, i8** @lastfile, align 8
  store i32 1, i32* @next_type_number, align 4
  %72 = call noalias i8* @xmalloc(i64 16)
  %73 = bitcast i8* %72 to %struct.dbx_file*
  store %struct.dbx_file* %73, %struct.dbx_file** @current_file, align 8
  %74 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %75 = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %74, i32 0, i32 0
  store %struct.dbx_file* null, %struct.dbx_file** %75, align 8
  %76 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %77 = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %79 = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %78, i32 0, i32 2
  store i32 1, i32* %79, align 4
  store i32 1, i32* @next_file_number, align 4
  %80 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  %81 = bitcast %union.tree_node* %80 to %struct.tree_type*
  %82 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %81, i32 0, i32 11
  %83 = load %union.tree_node*, %union.tree_node** %82, align 8
  %84 = call i32 @dbxout_symbol(%union.tree_node* %83, i32 0)
  %85 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16
  %86 = bitcast %union.tree_node* %85 to %struct.tree_type*
  %87 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %86, i32 0, i32 11
  %88 = load %union.tree_node*, %union.tree_node** %87, align 8
  %89 = call i32 @dbxout_symbol(%union.tree_node* %88, i32 0)
  %90 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @dbxout_typedefs(%union.tree_node* %90)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_finish(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  call void (%struct._IO_FILE*, i8*, ...) @asm_fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i32 0, i32 0), i32 100)
  ret void
}

declare void @debug_nothing_int_charstar(i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_start_source_file(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dbx_file*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call noalias i8* @xmalloc(i64 16)
  %7 = bitcast i8* %6 to %struct.dbx_file*
  store %struct.dbx_file* %7, %struct.dbx_file** %5, align 8
  %8 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %9 = load %struct.dbx_file*, %struct.dbx_file** %5, align 8
  %10 = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %9, i32 0, i32 0
  store %struct.dbx_file* %8, %struct.dbx_file** %10, align 8
  %11 = load i32, i32* @next_file_number, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @next_file_number, align 4
  %13 = load %struct.dbx_file*, %struct.dbx_file** %5, align 8
  %14 = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load %struct.dbx_file*, %struct.dbx_file** %5, align 8
  %16 = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %15, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = load %struct.dbx_file*, %struct.dbx_file** %5, align 8
  store %struct.dbx_file* %17, %struct.dbx_file** @current_file, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %21 = load i8*, i8** %4, align 8
  call void @output_quoted_string(%struct._IO_FILE* %20, i8* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 130)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_end_source_file(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dbx_file*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 162)
  %6 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %7 = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %6, i32 0, i32 0
  %8 = load %struct.dbx_file*, %struct.dbx_file** %7, align 8
  store %struct.dbx_file* %8, %struct.dbx_file** %3, align 8
  %9 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %10 = bitcast %struct.dbx_file* %9 to i8*
  call void @free(i8* %10) #6
  %11 = load %struct.dbx_file*, %struct.dbx_file** %3, align 8
  store %struct.dbx_file* %11, %struct.dbx_file** @current_file, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_begin_block(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 %7)
  br label %9

; <label>:9:                                      ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_end_block(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 %7)
  br label %9

; <label>:9:                                      ; preds = %5
  ret void
}

declare zeroext i1 @debug_true_tree(%union.tree_node*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_source_line(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %7 = load i8*, i8** %4, align 8
  call void @dbxout_source_file(%struct._IO_FILE* %6, i8* %7)
  br label %8

; <label>:8:                                      ; preds = %2
  br label %9

; <label>:9:                                      ; preds = %8
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0
  %11 = load i32, i32* @dbxout_source_line.sym_lineno, align 4
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 %11) #6
  br label %13

; <label>:13:                                     ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i32 %15)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %17, i8* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %20 = call i32 @putc(i32 45, %struct._IO_FILE* %19)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %22 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %23 = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %24 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %23, i32 0, i32 17
  %25 = load %struct.rtx_def*, %struct.rtx_def** %24, align 8
  %26 = icmp ne %struct.rtx_def* %25, null
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %13
  %28 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %29 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %30 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %29, i32 0, i32 17
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  br label %38

; <label>:32:                                     ; preds = %13
  %33 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @make_decl_rtl(%union.tree_node* %33, i8* null)
  %34 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %35 = bitcast %union.tree_node* %34 to %struct.tree_decl*
  %36 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %35, i32 0, i32 17
  %37 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  br label %38

; <label>:38:                                     ; preds = %32, %27
  %39 = phi %struct.rtx_def* [ %31, %27 ], [ %37, %32 ]
  %40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %40, i64 0, i64 0
  %42 = bitcast %union.rtunion_def* %41 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %42, align 8
  %44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %44, i64 0, i64 0
  %46 = bitcast %union.rtunion_def* %45 to i8**
  %47 = load i8*, i8** %46, align 8
  call void @assemble_name(%struct._IO_FILE* %21, i8* %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %49 = call i32 @putc(i32 10, %struct._IO_FILE* %48)
  br label %50

; <label>:50:                                     ; preds = %38
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %52 = load i32, i32* @dbxout_source_line.sym_lineno, align 4
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 %52)
  br label %54

; <label>:54:                                     ; preds = %50
  %55 = load i32, i32* @dbxout_source_line.sym_lineno, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @dbxout_source_line.sym_lineno, align 4
  br label %57

; <label>:57:                                     ; preds = %54
  ret void
}

declare void @debug_nothing_int(i32) #1

declare void @debug_nothing_void() #1

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_begin_function(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %4 = call i32 @dbxout_symbol(%union.tree_node* %3, i32 0)
  %5 = load %union.tree_node*, %union.tree_node** %2, align 8
  %6 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %7 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %6, i32 0, i32 10
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8
  call void @dbxout_parms(%union.tree_node* %8)
  %9 = load %union.tree_node*, %union.tree_node** %2, align 8
  %10 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %11 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %10, i32 0, i32 11
  %12 = load %union.tree_node*, %union.tree_node** %11, align 8
  %13 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %14 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %13, i32 0, i32 8
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8
  %16 = icmp ne %union.tree_node* %15, null
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %1
  %18 = load %union.tree_node*, %union.tree_node** %2, align 8
  %19 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %20 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %19, i32 0, i32 11
  %21 = load %union.tree_node*, %union.tree_node** %20, align 8
  %22 = call i32 @dbxout_symbol(%union.tree_node* %21, i32 1)
  br label %23

; <label>:23:                                     ; preds = %17, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_function_decl(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %4 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %5 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %4, i32 0, i32 12
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8
  %7 = load %union.tree_node*, %union.tree_node** %2, align 8
  %8 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %9 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %8, i32 0, i32 10
  %10 = load %union.tree_node*, %union.tree_node** %9, align 8
  call void @dbxout_block(%union.tree_node* %6, i32 0, %union.tree_node* %10)
  %11 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %1
  %14 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 13), align 8
  %15 = trunc i8 %14 to i1
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call void @dbxout_function_end()
  br label %17

; <label>:17:                                     ; preds = %16, %13, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_global_decl(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %4 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 34
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %1
  %10 = load %union.tree_node*, %union.tree_node** %2, align 8
  %11 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %12 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %11, i32 0, i32 5
  %13 = bitcast i48* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = lshr i64 %14, 8
  %16 = and i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

; <label>:19:                                     ; preds = %9
  %20 = load %union.tree_node*, %union.tree_node** %2, align 8
  %21 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %22 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %21, i32 0, i32 17
  %23 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %24 = icmp ne %struct.rtx_def* %23, null
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %19
  %26 = load %union.tree_node*, %union.tree_node** %2, align 8
  %27 = call i32 @dbxout_symbol(%union.tree_node* %26, i32 0)
  br label %28

; <label>:28:                                     ; preds = %25, %19, %9, %1
  ret void
}

declare void @debug_nothing_tree(%union.tree_node*) #1

declare void @debug_nothing_rtx(%struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @dbxout_symbol(%union.tree_node*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.tree_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.tree_node*, align 8
  %7 = alloca %union.tree_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.tree_node*, align 8
  %12 = alloca %union.tree_node*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %union.tree_node* %0, %union.tree_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %union.tree_node*, %union.tree_node** %4, align 8
  %16 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %16, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %17, align 8
  store %union.tree_node* %18, %union.tree_node** %6, align 8
  store %union.tree_node* null, %union.tree_node** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* @current_sym_code, align 4
  store i32 0, i32* @current_sym_value, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %19 = load %union.tree_node*, %union.tree_node** %4, align 8
  %20 = bitcast %union.tree_node* %19 to %struct.tree_decl*
  %21 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %20, i32 0, i32 8
  %22 = load %union.tree_node*, %union.tree_node** %21, align 8
  %23 = icmp eq %union.tree_node* %22, null
  br i1 %23, label %24, label %31

; <label>:24:                                     ; preds = %2
  %25 = load %union.tree_node*, %union.tree_node** %4, align 8
  %26 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 255
  %30 = icmp ne i32 %29, 33
  br i1 %30, label %41, label %31

; <label>:31:                                     ; preds = %24, %2
  %32 = load %union.tree_node*, %union.tree_node** %4, align 8
  %33 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %34 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %33, i32 0, i32 5
  %35 = bitcast i48* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = lshr i64 %36, 14
  %38 = and i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %31, %24
  store i32 0, i32* %3, align 4
  br label %723

; <label>:42:                                     ; preds = %31
  %43 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @dbxout_prepare_symbol(%union.tree_node* %43)
  %44 = load %union.tree_node*, %union.tree_node** %4, align 8
  %45 = bitcast %union.tree_node* %44 to %struct.tree_decl*
  %46 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %45, i32 0, i32 8
  %47 = load %union.tree_node*, %union.tree_node** %46, align 8
  %48 = icmp ne %union.tree_node* %47, null
  br i1 %48, label %49, label %59

; <label>:49:                                     ; preds = %42
  %50 = load %union.tree_node*, %union.tree_node** %4, align 8
  %51 = bitcast %union.tree_node* %50 to %struct.tree_decl*
  %52 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %51, i32 0, i32 8
  %53 = load %union.tree_node*, %union.tree_node** %52, align 8
  %54 = bitcast %union.tree_node* %53 to %struct.tree_identifier*
  %55 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 2, %57
  store i32 %58, i32* @current_sym_nchars, align 4
  br label %59

; <label>:59:                                     ; preds = %49, %42
  %60 = load %union.tree_node*, %union.tree_node** %4, align 8
  %61 = bitcast %union.tree_node* %60 to %struct.tree_common*
  %62 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 255
  switch i32 %64, label %720 [
    i32 32, label %65
    i32 30, label %66
    i32 33, label %253
    i32 35, label %540
    i32 36, label %541
    i32 34, label %541
  ]

; <label>:65:                                     ; preds = %59
  br label %721

; <label>:66:                                     ; preds = %59
  %67 = load %union.tree_node*, %union.tree_node** %4, align 8
  %68 = bitcast %union.tree_node* %67 to %struct.tree_decl*
  %69 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %68, i32 0, i32 17
  %70 = load %struct.rtx_def*, %struct.rtx_def** %69, align 8
  %71 = icmp ne %struct.rtx_def* %70, null
  br i1 %71, label %72, label %77

; <label>:72:                                     ; preds = %66
  %73 = load %union.tree_node*, %union.tree_node** %4, align 8
  %74 = bitcast %union.tree_node* %73 to %struct.tree_decl*
  %75 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %74, i32 0, i32 17
  %76 = load %struct.rtx_def*, %struct.rtx_def** %75, align 8
  br label %83

; <label>:77:                                     ; preds = %66
  %78 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @make_decl_rtl(%union.tree_node* %78, i8* null)
  %79 = load %union.tree_node*, %union.tree_node** %4, align 8
  %80 = bitcast %union.tree_node* %79 to %struct.tree_decl*
  %81 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %80, i32 0, i32 17
  %82 = load %struct.rtx_def*, %struct.rtx_def** %81, align 8
  br label %83

; <label>:83:                                     ; preds = %77, %72
  %84 = phi %struct.rtx_def* [ %76, %72 ], [ %82, %77 ]
  %85 = icmp eq %struct.rtx_def* %84, null
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %83
  store i32 0, i32* %3, align 4
  br label %723

; <label>:87:                                     ; preds = %83
  %88 = load %union.tree_node*, %union.tree_node** %4, align 8
  %89 = bitcast %union.tree_node* %88 to %struct.tree_decl*
  %90 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %89, i32 0, i32 5
  %91 = bitcast i48* %90 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = lshr i64 %92, 8
  %94 = and i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %87
  br label %721

; <label>:98:                                     ; preds = %87
  %99 = load %union.tree_node*, %union.tree_node** %4, align 8
  %100 = call %union.tree_node* @decl_function_context(%union.tree_node* %99)
  store %union.tree_node* %100, %union.tree_node** %7, align 8
  %101 = load %union.tree_node*, %union.tree_node** %7, align 8
  %102 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %103 = icmp eq %union.tree_node* %101, %102
  br i1 %103, label %104, label %105

; <label>:104:                                    ; preds = %98
  br label %721

; <label>:105:                                    ; preds = %98
  %106 = load %union.tree_node*, %union.tree_node** %4, align 8
  %107 = bitcast %union.tree_node* %106 to %struct.tree_decl*
  %108 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %107, i32 0, i32 17
  %109 = load %struct.rtx_def*, %struct.rtx_def** %108, align 8
  %110 = icmp ne %struct.rtx_def* %109, null
  br i1 %110, label %111, label %116

; <label>:111:                                    ; preds = %105
  %112 = load %union.tree_node*, %union.tree_node** %4, align 8
  %113 = bitcast %union.tree_node* %112 to %struct.tree_decl*
  %114 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %113, i32 0, i32 17
  %115 = load %struct.rtx_def*, %struct.rtx_def** %114, align 8
  br label %122

; <label>:116:                                    ; preds = %105
  %117 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @make_decl_rtl(%union.tree_node* %117, i8* null)
  %118 = load %union.tree_node*, %union.tree_node** %4, align 8
  %119 = bitcast %union.tree_node* %118 to %struct.tree_decl*
  %120 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %119, i32 0, i32 17
  %121 = load %struct.rtx_def*, %struct.rtx_def** %120, align 8
  br label %122

; <label>:122:                                    ; preds = %116, %111
  %123 = phi %struct.rtx_def* [ %115, %111 ], [ %121, %116 ]
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, 65535
  %127 = icmp ne i32 %126, 66
  br i1 %127, label %155, label %128

; <label>:128:                                    ; preds = %122
  %129 = load %union.tree_node*, %union.tree_node** %4, align 8
  %130 = bitcast %union.tree_node* %129 to %struct.tree_decl*
  %131 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %130, i32 0, i32 17
  %132 = load %struct.rtx_def*, %struct.rtx_def** %131, align 8
  %133 = icmp ne %struct.rtx_def* %132, null
  br i1 %133, label %134, label %139

; <label>:134:                                    ; preds = %128
  %135 = load %union.tree_node*, %union.tree_node** %4, align 8
  %136 = bitcast %union.tree_node* %135 to %struct.tree_decl*
  %137 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %136, i32 0, i32 17
  %138 = load %struct.rtx_def*, %struct.rtx_def** %137, align 8
  br label %145

; <label>:139:                                    ; preds = %128
  %140 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @make_decl_rtl(%union.tree_node* %140, i8* null)
  %141 = load %union.tree_node*, %union.tree_node** %4, align 8
  %142 = bitcast %union.tree_node* %141 to %struct.tree_decl*
  %143 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %142, i32 0, i32 17
  %144 = load %struct.rtx_def*, %struct.rtx_def** %143, align 8
  br label %145

; <label>:145:                                    ; preds = %139, %134
  %146 = phi %struct.rtx_def* [ %138, %134 ], [ %144, %139 ]
  %147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %147, i64 0, i64 0
  %149 = bitcast %union.rtunion_def* %148 to %struct.rtx_def**
  %150 = load %struct.rtx_def*, %struct.rtx_def** %149, align 8
  %151 = bitcast %struct.rtx_def* %150 to i32*
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, 65535
  %154 = icmp ne i32 %153, 68
  br i1 %154, label %155, label %156

; <label>:155:                                    ; preds = %145, %122
  br label %721

; <label>:156:                                    ; preds = %145
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %158 = load %union.tree_node*, %union.tree_node** %4, align 8
  %159 = bitcast %union.tree_node* %158 to %struct.tree_decl*
  %160 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %159, i32 0, i32 14
  %161 = load %union.tree_node*, %union.tree_node** %160, align 8
  %162 = icmp ne %union.tree_node* %161, null
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %156
  br label %167

; <label>:164:                                    ; preds = %156
  %165 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %166 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void %165(%union.tree_node* %166)
  br label %167

; <label>:167:                                    ; preds = %164, %163
  %168 = load %union.tree_node*, %union.tree_node** %4, align 8
  %169 = bitcast %union.tree_node* %168 to %struct.tree_decl*
  %170 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %169, i32 0, i32 14
  %171 = load %union.tree_node*, %union.tree_node** %170, align 8
  %172 = bitcast %union.tree_node* %171 to %struct.tree_identifier*
  %173 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = load %union.tree_node*, %union.tree_node** %4, align 8
  %177 = bitcast %union.tree_node* %176 to %struct.tree_common*
  %178 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = lshr i32 %179, 19
  %181 = and i32 %180, 1
  %182 = icmp ne i32 %181, 0
  %183 = select i1 %182, i32 70, i32 102
  %184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %175, i32 %183)
  store i32 1, i32* %8, align 4
  store i32 36, i32* @current_sym_code, align 4
  %185 = load %union.tree_node*, %union.tree_node** %4, align 8
  %186 = bitcast %union.tree_node* %185 to %struct.tree_decl*
  %187 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %186, i32 0, i32 17
  %188 = load %struct.rtx_def*, %struct.rtx_def** %187, align 8
  %189 = icmp ne %struct.rtx_def* %188, null
  br i1 %189, label %190, label %195

; <label>:190:                                    ; preds = %167
  %191 = load %union.tree_node*, %union.tree_node** %4, align 8
  %192 = bitcast %union.tree_node* %191 to %struct.tree_decl*
  %193 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %192, i32 0, i32 17
  %194 = load %struct.rtx_def*, %struct.rtx_def** %193, align 8
  br label %201

; <label>:195:                                    ; preds = %167
  %196 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @make_decl_rtl(%union.tree_node* %196, i8* null)
  %197 = load %union.tree_node*, %union.tree_node** %4, align 8
  %198 = bitcast %union.tree_node* %197 to %struct.tree_decl*
  %199 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %198, i32 0, i32 17
  %200 = load %struct.rtx_def*, %struct.rtx_def** %199, align 8
  br label %201

; <label>:201:                                    ; preds = %195, %190
  %202 = phi %struct.rtx_def* [ %194, %190 ], [ %200, %195 ]
  %203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %203, i64 0, i64 0
  %205 = bitcast %union.rtunion_def* %204 to %struct.rtx_def**
  %206 = load %struct.rtx_def*, %struct.rtx_def** %205, align 8
  store %struct.rtx_def* %206, %struct.rtx_def** @current_sym_addr, align 8
  %207 = load %union.tree_node*, %union.tree_node** %6, align 8
  %208 = bitcast %union.tree_node* %207 to %struct.tree_common*
  %209 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %208, i32 0, i32 1
  %210 = load %union.tree_node*, %union.tree_node** %209, align 8
  %211 = icmp ne %union.tree_node* %210, null
  br i1 %211, label %212, label %217

; <label>:212:                                    ; preds = %201
  %213 = load %union.tree_node*, %union.tree_node** %6, align 8
  %214 = bitcast %union.tree_node* %213 to %struct.tree_common*
  %215 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %214, i32 0, i32 1
  %216 = load %union.tree_node*, %union.tree_node** %215, align 8
  call void @dbxout_type(%union.tree_node* %216, i32 0)
  br label %219

; <label>:217:                                    ; preds = %201
  %218 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 27), align 8
  call void @dbxout_type(%union.tree_node* %218, i32 0)
  br label %219

; <label>:219:                                    ; preds = %217, %212
  %220 = load %union.tree_node*, %union.tree_node** %7, align 8
  %221 = icmp ne %union.tree_node* %220, null
  br i1 %221, label %222, label %251

; <label>:222:                                    ; preds = %219
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %224 = load %union.tree_node*, %union.tree_node** %4, align 8
  %225 = bitcast %union.tree_node* %224 to %struct.tree_decl*
  %226 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %225, i32 0, i32 14
  %227 = load %union.tree_node*, %union.tree_node** %226, align 8
  %228 = icmp ne %union.tree_node* %227, null
  br i1 %228, label %229, label %230

; <label>:229:                                    ; preds = %222
  br label %233

; <label>:230:                                    ; preds = %222
  %231 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %232 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void %231(%union.tree_node* %232)
  br label %233

; <label>:233:                                    ; preds = %230, %229
  %234 = load %union.tree_node*, %union.tree_node** %4, align 8
  %235 = bitcast %union.tree_node* %234 to %struct.tree_decl*
  %236 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %235, i32 0, i32 14
  %237 = load %union.tree_node*, %union.tree_node** %236, align 8
  %238 = bitcast %union.tree_node* %237 to %struct.tree_identifier*
  %239 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = load %union.tree_node*, %union.tree_node** %7, align 8
  %243 = bitcast %union.tree_node* %242 to %struct.tree_decl*
  %244 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %243, i32 0, i32 8
  %245 = load %union.tree_node*, %union.tree_node** %244, align 8
  %246 = bitcast %union.tree_node* %245 to %struct.tree_identifier*
  %247 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %247, i32 0, i32 1
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %241, i8* %249)
  br label %251

; <label>:251:                                    ; preds = %233, %219
  %252 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %252)
  br label %721

; <label>:253:                                    ; preds = %59
  %254 = load %union.tree_node*, %union.tree_node** %4, align 8
  %255 = bitcast %union.tree_node* %254 to %struct.tree_common*
  %256 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = lshr i32 %257, 14
  %259 = and i32 %258, 1
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %271, label %261

; <label>:261:                                    ; preds = %253
  %262 = load %union.tree_node*, %union.tree_node** %4, align 8
  %263 = bitcast %union.tree_node* %262 to %struct.tree_decl*
  %264 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %263, i32 0, i32 5
  %265 = bitcast i48* %264 to i64*
  %266 = load i64, i64* %265, align 8
  %267 = lshr i64 %266, 8
  %268 = and i64 %267, 1
  %269 = trunc i64 %268 to i32
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

; <label>:271:                                    ; preds = %261, %253
  store i32 0, i32* %3, align 4
  br label %723

; <label>:272:                                    ; preds = %261
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %273 = load %union.tree_node*, %union.tree_node** %4, align 8
  %274 = bitcast %union.tree_node* %273 to %struct.tree_decl*
  %275 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %274, i32 0, i32 8
  %276 = load %union.tree_node*, %union.tree_node** %275, align 8
  %277 = icmp ne %union.tree_node* %276, null
  br i1 %277, label %278, label %443

; <label>:278:                                    ; preds = %272
  store i32 0, i32* %9, align 4
  %279 = load %union.tree_node*, %union.tree_node** %6, align 8
  %280 = bitcast %union.tree_node* %279 to %struct.tree_common*
  %281 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = and i32 %282, 255
  %284 = icmp eq i32 %283, 20
  br i1 %284, label %299, label %285

; <label>:285:                                    ; preds = %278
  %286 = load %union.tree_node*, %union.tree_node** %6, align 8
  %287 = bitcast %union.tree_node* %286 to %struct.tree_common*
  %288 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = and i32 %289, 255
  %291 = icmp eq i32 %290, 21
  br i1 %291, label %299, label %292

; <label>:292:                                    ; preds = %285
  %293 = load %union.tree_node*, %union.tree_node** %6, align 8
  %294 = bitcast %union.tree_node* %293 to %struct.tree_common*
  %295 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = and i32 %296, 255
  %298 = icmp eq i32 %297, 22
  br i1 %298, label %299, label %371

; <label>:299:                                    ; preds = %292, %285, %278
  %300 = load %union.tree_node*, %union.tree_node** %6, align 8
  %301 = bitcast %union.tree_node* %300 to %struct.tree_type*
  %302 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %301, i32 0, i32 11
  %303 = load %union.tree_node*, %union.tree_node** %302, align 8
  %304 = load %union.tree_node*, %union.tree_node** %4, align 8
  %305 = icmp eq %union.tree_node* %303, %304
  br i1 %305, label %306, label %371

; <label>:306:                                    ; preds = %299
  %307 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

; <label>:309:                                    ; preds = %306
  %310 = load i32, i32* @have_used_extensions, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %371, label %312

; <label>:312:                                    ; preds = %309, %306
  %313 = load %union.tree_node*, %union.tree_node** %6, align 8
  %314 = bitcast %union.tree_node* %313 to %struct.tree_type*
  %315 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %314, i32 0, i32 11
  %316 = load %union.tree_node*, %union.tree_node** %315, align 8
  %317 = bitcast %union.tree_node* %316 to %struct.tree_common*
  %318 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = lshr i32 %319, 14
  %321 = and i32 %320, 1
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %371, label %323

; <label>:323:                                    ; preds = %312
  %324 = load %union.tree_node*, %union.tree_node** %4, align 8
  %325 = bitcast %union.tree_node* %324 to %struct.tree_decl*
  %326 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %325, i32 0, i32 5
  %327 = bitcast i48* %326 to i64*
  %328 = load i64, i64* %327, align 8
  %329 = lshr i64 %328, 22
  %330 = and i64 %329, 1
  %331 = trunc i64 %330 to i32
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %371

; <label>:333:                                    ; preds = %323
  %334 = load %union.tree_node*, %union.tree_node** %6, align 8
  %335 = bitcast %union.tree_node* %334 to %struct.tree_type*
  %336 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %335, i32 0, i32 2
  %337 = load %union.tree_node*, %union.tree_node** %336, align 8
  %338 = call i32 @host_integerp(%union.tree_node* %337, i32 1)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %371

; <label>:340:                                    ; preds = %333
  %341 = load %union.tree_node*, %union.tree_node** %6, align 8
  %342 = bitcast %union.tree_node* %341 to %struct.tree_type*
  %343 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %342, i32 0, i32 11
  %344 = load %union.tree_node*, %union.tree_node** %343, align 8
  store %union.tree_node* %344, %union.tree_node** %11, align 8
  %345 = load %union.tree_node*, %union.tree_node** %11, align 8
  %346 = bitcast %union.tree_node* %345 to %struct.tree_common*
  %347 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = and i32 %348, 255
  %350 = icmp eq i32 %349, 33
  br i1 %350, label %351, label %356

; <label>:351:                                    ; preds = %340
  %352 = load %union.tree_node*, %union.tree_node** %11, align 8
  %353 = bitcast %union.tree_node* %352 to %struct.tree_decl*
  %354 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %353, i32 0, i32 8
  %355 = load %union.tree_node*, %union.tree_node** %354, align 8
  store %union.tree_node* %355, %union.tree_node** %11, align 8
  br label %356

; <label>:356:                                    ; preds = %351, %340
  store i32 128, i32* @current_sym_code, align 4
  store i32 0, i32* @current_sym_value, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %357 = load %union.tree_node*, %union.tree_node** %11, align 8
  %358 = bitcast %union.tree_node* %357 to %struct.tree_identifier*
  %359 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = add i32 2, %361
  store i32 %362, i32* @current_sym_nchars, align 4
  %363 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %364 = load %union.tree_node*, %union.tree_node** %11, align 8
  %365 = bitcast %union.tree_node* %364 to %struct.tree_identifier*
  %366 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %366, i32 0, i32 1
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %363, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %368)
  %370 = load %union.tree_node*, %union.tree_node** %6, align 8
  call void @dbxout_type(%union.tree_node* %370, i32 1)
  call void @dbxout_finish_symbol(%union.tree_node* null)
  br label %371

; <label>:371:                                    ; preds = %356, %333, %323, %312, %309, %299, %292
  %372 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %373 = load %union.tree_node*, %union.tree_node** %4, align 8
  %374 = bitcast %union.tree_node* %373 to %struct.tree_decl*
  %375 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %374, i32 0, i32 8
  %376 = load %union.tree_node*, %union.tree_node** %375, align 8
  %377 = bitcast %union.tree_node* %376 to %struct.tree_identifier*
  %378 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %378, i32 0, i32 1
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %372, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %380)
  %382 = load %union.tree_node*, %union.tree_node** %6, align 8
  %383 = bitcast %union.tree_node* %382 to %struct.tree_common*
  %384 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = and i32 %385, 255
  %387 = icmp eq i32 %386, 20
  br i1 %387, label %402, label %388

; <label>:388:                                    ; preds = %371
  %389 = load %union.tree_node*, %union.tree_node** %6, align 8
  %390 = bitcast %union.tree_node* %389 to %struct.tree_common*
  %391 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = and i32 %392, 255
  %394 = icmp eq i32 %393, 21
  br i1 %394, label %402, label %395

; <label>:395:                                    ; preds = %388
  %396 = load %union.tree_node*, %union.tree_node** %6, align 8
  %397 = bitcast %union.tree_node* %396 to %struct.tree_common*
  %398 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = and i32 %399, 255
  %401 = icmp eq i32 %400, 22
  br i1 %401, label %402, label %438

; <label>:402:                                    ; preds = %395, %388, %371
  %403 = load %union.tree_node*, %union.tree_node** %6, align 8
  %404 = bitcast %union.tree_node* %403 to %struct.tree_type*
  %405 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %404, i32 0, i32 11
  %406 = load %union.tree_node*, %union.tree_node** %405, align 8
  %407 = load %union.tree_node*, %union.tree_node** %4, align 8
  %408 = icmp eq %union.tree_node* %406, %407
  br i1 %408, label %409, label %438

; <label>:409:                                    ; preds = %402
  %410 = load %union.tree_node*, %union.tree_node** %4, align 8
  %411 = bitcast %union.tree_node* %410 to %struct.tree_decl*
  %412 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %411, i32 0, i32 5
  %413 = bitcast i48* %412 to i64*
  %414 = load i64, i64* %413, align 8
  %415 = lshr i64 %414, 22
  %416 = and i64 %415, 1
  %417 = trunc i64 %416 to i32
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %438

; <label>:419:                                    ; preds = %409
  %420 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %437

; <label>:422:                                    ; preds = %419
  %423 = load i32, i32* @have_used_extensions, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %437

; <label>:425:                                    ; preds = %422
  %426 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %427 = call i32 @putc(i32 84, %struct._IO_FILE* %426)
  %428 = load %union.tree_node*, %union.tree_node** %6, align 8
  %429 = bitcast %union.tree_node* %428 to %struct.tree_type*
  %430 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %429, i32 0, i32 11
  %431 = load %union.tree_node*, %union.tree_node** %430, align 8
  %432 = bitcast %union.tree_node* %431 to %struct.tree_common*
  %433 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 8
  %435 = and i32 %434, -16385
  %436 = or i32 %435, 16384
  store i32 %436, i32* %433, align 8
  br label %437

; <label>:437:                                    ; preds = %425, %422, %419
  br label %438

; <label>:438:                                    ; preds = %437, %409, %402, %395
  %439 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %440 = call i32 @putc(i32 116, %struct._IO_FILE* %439)
  store i32 128, i32* @current_sym_code, align 4
  %441 = load %union.tree_node*, %union.tree_node** %6, align 8
  call void @dbxout_type(%union.tree_node* %441, i32 1)
  %442 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %442)
  store i32 1, i32* %10, align 4
  br label %443

; <label>:443:                                    ; preds = %438, %272
  %444 = load i32, i32* %9, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %519

; <label>:446:                                    ; preds = %443
  %447 = load %union.tree_node*, %union.tree_node** %6, align 8
  %448 = bitcast %union.tree_node* %447 to %struct.tree_type*
  %449 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %448, i32 0, i32 11
  %450 = load %union.tree_node*, %union.tree_node** %449, align 8
  %451 = icmp ne %union.tree_node* %450, null
  br i1 %451, label %452, label %519

; <label>:452:                                    ; preds = %446
  %453 = load %union.tree_node*, %union.tree_node** %6, align 8
  %454 = bitcast %union.tree_node* %453 to %struct.tree_type*
  %455 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %454, i32 0, i32 11
  %456 = load %union.tree_node*, %union.tree_node** %455, align 8
  %457 = bitcast %union.tree_node* %456 to %struct.tree_common*
  %458 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  %460 = and i32 %459, 255
  %461 = icmp eq i32 %460, 1
  br i1 %461, label %471, label %462

; <label>:462:                                    ; preds = %452
  %463 = load %union.tree_node*, %union.tree_node** %6, align 8
  %464 = bitcast %union.tree_node* %463 to %struct.tree_type*
  %465 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %464, i32 0, i32 11
  %466 = load %union.tree_node*, %union.tree_node** %465, align 8
  %467 = bitcast %union.tree_node* %466 to %struct.tree_decl*
  %468 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %467, i32 0, i32 8
  %469 = load %union.tree_node*, %union.tree_node** %468, align 8
  %470 = icmp ne %union.tree_node* %469, null
  br i1 %470, label %471, label %519

; <label>:471:                                    ; preds = %462, %452
  %472 = load %union.tree_node*, %union.tree_node** %6, align 8
  %473 = bitcast %union.tree_node* %472 to %struct.tree_type*
  %474 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %473, i32 0, i32 2
  %475 = load %union.tree_node*, %union.tree_node** %474, align 8
  %476 = icmp ne %union.tree_node* %475, null
  br i1 %476, label %477, label %519

; <label>:477:                                    ; preds = %471
  %478 = load %union.tree_node*, %union.tree_node** %6, align 8
  %479 = bitcast %union.tree_node* %478 to %struct.tree_type*
  %480 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %479, i32 0, i32 11
  %481 = load %union.tree_node*, %union.tree_node** %480, align 8
  %482 = bitcast %union.tree_node* %481 to %struct.tree_common*
  %483 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %482, i32 0, i32 2
  %484 = load i32, i32* %483, align 8
  %485 = lshr i32 %484, 14
  %486 = and i32 %485, 1
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %519, label %488

; <label>:488:                                    ; preds = %477
  %489 = load %union.tree_node*, %union.tree_node** %6, align 8
  %490 = bitcast %union.tree_node* %489 to %struct.tree_type*
  %491 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %490, i32 0, i32 11
  %492 = load %union.tree_node*, %union.tree_node** %491, align 8
  store %union.tree_node* %492, %union.tree_node** %12, align 8
  %493 = load %union.tree_node*, %union.tree_node** %12, align 8
  %494 = bitcast %union.tree_node* %493 to %struct.tree_common*
  %495 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 8
  %497 = and i32 %496, 255
  %498 = icmp eq i32 %497, 33
  br i1 %498, label %499, label %504

; <label>:499:                                    ; preds = %488
  %500 = load %union.tree_node*, %union.tree_node** %12, align 8
  %501 = bitcast %union.tree_node* %500 to %struct.tree_decl*
  %502 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %501, i32 0, i32 8
  %503 = load %union.tree_node*, %union.tree_node** %502, align 8
  store %union.tree_node* %503, %union.tree_node** %12, align 8
  br label %504

; <label>:504:                                    ; preds = %499, %488
  store i32 128, i32* @current_sym_code, align 4
  store i32 0, i32* @current_sym_value, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %505 = load %union.tree_node*, %union.tree_node** %12, align 8
  %506 = bitcast %union.tree_node* %505 to %struct.tree_identifier*
  %507 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = add i32 2, %509
  store i32 %510, i32* @current_sym_nchars, align 4
  %511 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %512 = load %union.tree_node*, %union.tree_node** %12, align 8
  %513 = bitcast %union.tree_node* %512 to %struct.tree_identifier*
  %514 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %514, i32 0, i32 1
  %516 = load i8*, i8** %515, align 8
  %517 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %511, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %516)
  %518 = load %union.tree_node*, %union.tree_node** %6, align 8
  call void @dbxout_type(%union.tree_node* %518, i32 1)
  call void @dbxout_finish_symbol(%union.tree_node* null)
  store i32 1, i32* %10, align 4
  br label %519

; <label>:519:                                    ; preds = %504, %477, %471, %462, %446, %443
  %520 = load i32, i32* %10, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %533, label %522

; <label>:522:                                    ; preds = %519
  %523 = load %union.tree_node*, %union.tree_node** %6, align 8
  %524 = bitcast %union.tree_node* %523 to %struct.tree_common*
  %525 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %524, i32 0, i32 2
  %526 = load i32, i32* %525, align 8
  %527 = and i32 %526, 255
  %528 = icmp eq i32 %527, 10
  br i1 %528, label %529, label %533

; <label>:529:                                    ; preds = %522
  store i32 128, i32* @current_sym_code, align 4
  store i32 0, i32* @current_sym_value, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  store i32 2, i32* @current_sym_nchars, align 4
  %530 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %531 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %530, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %532 = load %union.tree_node*, %union.tree_node** %6, align 8
  call void @dbxout_type(%union.tree_node* %532, i32 1)
  call void @dbxout_finish_symbol(%union.tree_node* null)
  br label %533

; <label>:533:                                    ; preds = %529, %522, %519
  %534 = load %union.tree_node*, %union.tree_node** %4, align 8
  %535 = bitcast %union.tree_node* %534 to %struct.tree_common*
  %536 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %535, i32 0, i32 2
  %537 = load i32, i32* %536, align 8
  %538 = and i32 %537, -16385
  %539 = or i32 %538, 16384
  store i32 %539, i32* %536, align 8
  br label %721

; <label>:540:                                    ; preds = %59
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 2058, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.dbxout_symbol, i32 0, i32 0)) #8
  unreachable

; <label>:541:                                    ; preds = %59, %59
  %542 = load %union.tree_node*, %union.tree_node** %4, align 8
  %543 = bitcast %union.tree_node* %542 to %struct.tree_decl*
  %544 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %543, i32 0, i32 17
  %545 = load %struct.rtx_def*, %struct.rtx_def** %544, align 8
  %546 = icmp ne %struct.rtx_def* %545, null
  br i1 %546, label %548, label %547

; <label>:547:                                    ; preds = %541
  store i32 0, i32* %3, align 4
  br label %723

; <label>:548:                                    ; preds = %541
  %549 = load %union.tree_node*, %union.tree_node** %4, align 8
  %550 = bitcast %union.tree_node* %549 to %struct.tree_decl*
  %551 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %550, i32 0, i32 5
  %552 = bitcast i48* %551 to i64*
  %553 = load i64, i64* %552, align 8
  %554 = lshr i64 %553, 8
  %555 = and i64 %554, 1
  %556 = trunc i64 %555 to i32
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %559

; <label>:558:                                    ; preds = %548
  br label %721

; <label>:559:                                    ; preds = %548
  %560 = load %union.tree_node*, %union.tree_node** %4, align 8
  %561 = bitcast %union.tree_node* %560 to %struct.tree_common*
  %562 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %561, i32 0, i32 2
  %563 = load i32, i32* %562, align 8
  %564 = lshr i32 %563, 18
  %565 = and i32 %564, 1
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %676

; <label>:567:                                    ; preds = %559
  %568 = load %union.tree_node*, %union.tree_node** %4, align 8
  %569 = bitcast %union.tree_node* %568 to %struct.tree_common*
  %570 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %569, i32 0, i32 2
  %571 = load i32, i32* %570, align 8
  %572 = lshr i32 %571, 12
  %573 = and i32 %572, 1
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %676

; <label>:575:                                    ; preds = %567
  %576 = load %union.tree_node*, %union.tree_node** %4, align 8
  %577 = bitcast %union.tree_node* %576 to %struct.tree_decl*
  %578 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %577, i32 0, i32 12
  %579 = load %union.tree_node*, %union.tree_node** %578, align 8
  %580 = icmp ne %union.tree_node* %579, null
  br i1 %580, label %581, label %676

; <label>:581:                                    ; preds = %575
  %582 = load %union.tree_node*, %union.tree_node** %4, align 8
  %583 = bitcast %union.tree_node* %582 to %struct.tree_decl*
  %584 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %583, i32 0, i32 12
  %585 = load %union.tree_node*, %union.tree_node** %584, align 8
  %586 = call i32 @host_integerp(%union.tree_node* %585, i32 0)
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %676

; <label>:588:                                    ; preds = %581
  %589 = load %union.tree_node*, %union.tree_node** %4, align 8
  %590 = bitcast %union.tree_node* %589 to %struct.tree_common*
  %591 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 8
  %593 = lshr i32 %592, 14
  %594 = and i32 %593, 1
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %676, label %596

; <label>:596:                                    ; preds = %588
  %597 = load %union.tree_node*, %union.tree_node** %4, align 8
  %598 = bitcast %union.tree_node* %597 to %struct.tree_decl*
  %599 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %598, i32 0, i32 9
  %600 = load %union.tree_node*, %union.tree_node** %599, align 8
  %601 = icmp eq %union.tree_node* %600, null
  br i1 %601, label %612, label %602

; <label>:602:                                    ; preds = %596
  %603 = load %union.tree_node*, %union.tree_node** %4, align 8
  %604 = bitcast %union.tree_node* %603 to %struct.tree_decl*
  %605 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %604, i32 0, i32 9
  %606 = load %union.tree_node*, %union.tree_node** %605, align 8
  %607 = bitcast %union.tree_node* %606 to %struct.tree_common*
  %608 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %607, i32 0, i32 2
  %609 = load i32, i32* %608, align 8
  %610 = and i32 %609, 255
  %611 = icmp eq i32 %610, 4
  br i1 %611, label %612, label %676

; <label>:612:                                    ; preds = %602, %596
  %613 = load %union.tree_node*, %union.tree_node** %4, align 8
  %614 = bitcast %union.tree_node* %613 to %struct.tree_common*
  %615 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %614, i32 0, i32 2
  %616 = load i32, i32* %615, align 8
  %617 = lshr i32 %616, 19
  %618 = and i32 %617, 1
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %675

; <label>:620:                                    ; preds = %612
  %621 = load %union.tree_node*, %union.tree_node** %4, align 8
  %622 = bitcast %union.tree_node* %621 to %struct.tree_decl*
  %623 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %622, i32 0, i32 8
  %624 = load %union.tree_node*, %union.tree_node** %623, align 8
  %625 = bitcast %union.tree_node* %624 to %struct.tree_identifier*
  %626 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %625, i32 0, i32 1
  %627 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %626, i32 0, i32 1
  %628 = load i8*, i8** %627, align 8
  store i8* %628, i8** %13, align 8
  %629 = load %union.tree_node*, %union.tree_node** %4, align 8
  %630 = bitcast %union.tree_node* %629 to %struct.tree_common*
  %631 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %630, i32 0, i32 1
  %632 = load %union.tree_node*, %union.tree_node** %631, align 8
  %633 = bitcast %union.tree_node* %632 to %struct.tree_common*
  %634 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %633, i32 0, i32 2
  %635 = load i32, i32* %634, align 8
  %636 = and i32 %635, 255
  %637 = icmp eq i32 %636, 6
  br i1 %637, label %648, label %638

; <label>:638:                                    ; preds = %620
  %639 = load %union.tree_node*, %union.tree_node** %4, align 8
  %640 = bitcast %union.tree_node* %639 to %struct.tree_common*
  %641 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %640, i32 0, i32 1
  %642 = load %union.tree_node*, %union.tree_node** %641, align 8
  %643 = bitcast %union.tree_node* %642 to %struct.tree_common*
  %644 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %643, i32 0, i32 2
  %645 = load i32, i32* %644, align 8
  %646 = and i32 %645, 255
  %647 = icmp eq i32 %646, 10
  br i1 %647, label %648, label %662

; <label>:648:                                    ; preds = %638, %620
  %649 = load %union.tree_node*, %union.tree_node** %4, align 8
  %650 = bitcast %union.tree_node* %649 to %struct.tree_decl*
  %651 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %650, i32 0, i32 12
  %652 = load %union.tree_node*, %union.tree_node** %651, align 8
  %653 = call i64 @tree_low_cst(%union.tree_node* %652, i32 0)
  store i64 %653, i64* %14, align 8
  %654 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %655 = load i8*, i8** %13, align 8
  %656 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %654, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %655)
  %657 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %658 = load i64, i64* %14, align 8
  %659 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %657, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 %658)
  %660 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %661 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %660, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 128)
  store i32 1, i32* %3, align 4
  br label %723

; <label>:662:                                    ; preds = %638
  %663 = load %union.tree_node*, %union.tree_node** %4, align 8
  %664 = bitcast %union.tree_node* %663 to %struct.tree_common*
  %665 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %664, i32 0, i32 1
  %666 = load %union.tree_node*, %union.tree_node** %665, align 8
  %667 = bitcast %union.tree_node* %666 to %struct.tree_common*
  %668 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %667, i32 0, i32 2
  %669 = load i32, i32* %668, align 8
  %670 = and i32 %669, 255
  %671 = icmp eq i32 %670, 7
  br i1 %671, label %672, label %673

; <label>:672:                                    ; preds = %662
  br label %673

; <label>:673:                                    ; preds = %672, %662
  br label %674

; <label>:674:                                    ; preds = %673
  br label %721

; <label>:675:                                    ; preds = %612
  br label %676

; <label>:676:                                    ; preds = %675, %602, %588, %581, %575, %567, %559
  %677 = load %union.tree_node*, %union.tree_node** %4, align 8
  %678 = bitcast %union.tree_node* %677 to %struct.tree_decl*
  %679 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %678, i32 0, i32 17
  %680 = load %struct.rtx_def*, %struct.rtx_def** %679, align 8
  %681 = icmp ne %struct.rtx_def* %680, null
  br i1 %681, label %682, label %687

; <label>:682:                                    ; preds = %676
  %683 = load %union.tree_node*, %union.tree_node** %4, align 8
  %684 = bitcast %union.tree_node* %683 to %struct.tree_decl*
  %685 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %684, i32 0, i32 17
  %686 = load %struct.rtx_def*, %struct.rtx_def** %685, align 8
  br label %693

; <label>:687:                                    ; preds = %676
  %688 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @make_decl_rtl(%union.tree_node* %688, i8* null)
  %689 = load %union.tree_node*, %union.tree_node** %4, align 8
  %690 = bitcast %union.tree_node* %689 to %struct.tree_decl*
  %691 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %690, i32 0, i32 17
  %692 = load %struct.rtx_def*, %struct.rtx_def** %691, align 8
  br label %693

; <label>:693:                                    ; preds = %687, %682
  %694 = phi %struct.rtx_def* [ %686, %682 ], [ %692, %687 ]
  %695 = call %struct.rtx_def* @eliminate_regs(%struct.rtx_def* %694, i32 0, %struct.rtx_def* null)
  %696 = load %union.tree_node*, %union.tree_node** %4, align 8
  %697 = bitcast %union.tree_node* %696 to %struct.tree_decl*
  %698 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %697, i32 0, i32 17
  store %struct.rtx_def* %695, %struct.rtx_def** %698, align 8
  %699 = load %union.tree_node*, %union.tree_node** %4, align 8
  %700 = load %union.tree_node*, %union.tree_node** %6, align 8
  %701 = load %union.tree_node*, %union.tree_node** %4, align 8
  %702 = bitcast %union.tree_node* %701 to %struct.tree_decl*
  %703 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %702, i32 0, i32 17
  %704 = load %struct.rtx_def*, %struct.rtx_def** %703, align 8
  %705 = icmp ne %struct.rtx_def* %704, null
  br i1 %705, label %706, label %711

; <label>:706:                                    ; preds = %693
  %707 = load %union.tree_node*, %union.tree_node** %4, align 8
  %708 = bitcast %union.tree_node* %707 to %struct.tree_decl*
  %709 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %708, i32 0, i32 17
  %710 = load %struct.rtx_def*, %struct.rtx_def** %709, align 8
  br label %717

; <label>:711:                                    ; preds = %693
  %712 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void @make_decl_rtl(%union.tree_node* %712, i8* null)
  %713 = load %union.tree_node*, %union.tree_node** %4, align 8
  %714 = bitcast %union.tree_node* %713 to %struct.tree_decl*
  %715 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %714, i32 0, i32 17
  %716 = load %struct.rtx_def*, %struct.rtx_def** %715, align 8
  br label %717

; <label>:717:                                    ; preds = %711, %706
  %718 = phi %struct.rtx_def* [ %710, %706 ], [ %716, %711 ]
  %719 = call i32 @dbxout_symbol_location(%union.tree_node* %699, %union.tree_node* %700, i8* null, %struct.rtx_def* %718)
  store i32 %719, i32* %8, align 4
  br label %721

; <label>:720:                                    ; preds = %59
  br label %721

; <label>:721:                                    ; preds = %720, %717, %674, %558, %533, %251, %155, %104, %97, %65
  %722 = load i32, i32* %8, align 4
  store i32 %722, i32* %3, align 4
  br label %723

; <label>:723:                                    ; preds = %721, %648, %547, %271, %86, %41
  %724 = load i32, i32* %3, align 4
  ret i32 %724
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_prepare_symbol(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  ret void
}

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

declare %union.tree_node* @decl_function_context(%union.tree_node*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_type(%union.tree_node*, i32) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.tree_node*, align 8
  %6 = alloca %union.tree_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %union.tree_node*, %union.tree_node** %3, align 8
  %11 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %2
  %17 = load %union.tree_node*, %union.tree_node** %3, align 8
  %18 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %19 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %18, i32 0, i32 1
  %20 = load %union.tree_node*, %union.tree_node** %19, align 8
  store %union.tree_node* %20, %union.tree_node** %3, align 8
  br label %21

; <label>:21:                                     ; preds = %16, %2
  %22 = load %union.tree_node*, %union.tree_node** %3, align 8
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16
  %24 = icmp eq %union.tree_node* %22, %23
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %21
  %26 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  store %union.tree_node* %26, %union.tree_node** %3, align 8
  br label %58

; <label>:27:                                     ; preds = %21
  %28 = load %union.tree_node*, %union.tree_node** %3, align 8
  %29 = bitcast %union.tree_node* %28 to %struct.tree_type*
  %30 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %29, i32 0, i32 11
  %31 = load %union.tree_node*, %union.tree_node** %30, align 8
  %32 = icmp ne %union.tree_node* %31, null
  br i1 %32, label %33, label %57

; <label>:33:                                     ; preds = %27
  %34 = load %union.tree_node*, %union.tree_node** %3, align 8
  %35 = bitcast %union.tree_node* %34 to %struct.tree_type*
  %36 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %35, i32 0, i32 11
  %37 = load %union.tree_node*, %union.tree_node** %36, align 8
  %38 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 33
  br i1 %42, label %43, label %57

; <label>:43:                                     ; preds = %33
  %44 = load %union.tree_node*, %union.tree_node** %3, align 8
  %45 = bitcast %union.tree_node* %44 to %struct.tree_type*
  %46 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %45, i32 0, i32 11
  %47 = load %union.tree_node*, %union.tree_node** %46, align 8
  %48 = bitcast %union.tree_node* %47 to %struct.tree_decl*
  %49 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %48, i32 0, i32 5
  %50 = bitcast i48* %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = lshr i64 %51, 8
  %53 = and i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %43
  store i32 0, i32* %4, align 4
  br label %57

; <label>:57:                                     ; preds = %56, %43, %33, %27
  br label %58

; <label>:58:                                     ; preds = %57, %25
  %59 = load %union.tree_node*, %union.tree_node** %3, align 8
  %60 = bitcast %union.tree_node* %59 to %struct.tree_type*
  %61 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %60, i32 0, i32 11
  %62 = load %union.tree_node*, %union.tree_node** %61, align 8
  %63 = icmp ne %union.tree_node* %62, null
  br i1 %63, label %64, label %91

; <label>:64:                                     ; preds = %58
  %65 = load %union.tree_node*, %union.tree_node** %3, align 8
  %66 = bitcast %union.tree_node* %65 to %struct.tree_type*
  %67 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %66, i32 0, i32 11
  %68 = load %union.tree_node*, %union.tree_node** %67, align 8
  %69 = bitcast %union.tree_node* %68 to %struct.tree_common*
  %70 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 255
  %73 = icmp eq i32 %72, 33
  br i1 %73, label %74, label %91

; <label>:74:                                     ; preds = %64
  %75 = load %union.tree_node*, %union.tree_node** %3, align 8
  %76 = bitcast %union.tree_node* %75 to %struct.tree_type*
  %77 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %76, i32 0, i32 11
  %78 = load %union.tree_node*, %union.tree_node** %77, align 8
  %79 = bitcast %union.tree_node* %78 to %struct.tree_decl*
  %80 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %79, i32 0, i32 11
  %81 = load %union.tree_node*, %union.tree_node** %80, align 8
  %82 = icmp ne %union.tree_node* %81, null
  br i1 %82, label %83, label %91

; <label>:83:                                     ; preds = %74
  %84 = load %union.tree_node*, %union.tree_node** %3, align 8
  %85 = bitcast %union.tree_node* %84 to %struct.tree_type*
  %86 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %85, i32 0, i32 11
  %87 = load %union.tree_node*, %union.tree_node** %86, align 8
  %88 = bitcast %union.tree_node* %87 to %struct.tree_common*
  %89 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %88, i32 0, i32 1
  %90 = load %union.tree_node*, %union.tree_node** %89, align 8
  store %union.tree_node* %90, %union.tree_node** %6, align 8
  br label %96

; <label>:91:                                     ; preds = %74, %64, %58
  %92 = load %union.tree_node*, %union.tree_node** %3, align 8
  %93 = bitcast %union.tree_node* %92 to %struct.tree_type*
  %94 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %93, i32 0, i32 15
  %95 = load %union.tree_node*, %union.tree_node** %94, align 8
  store %union.tree_node* %95, %union.tree_node** %6, align 8
  br label %96

; <label>:96:                                     ; preds = %91, %83
  %97 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

; <label>:99:                                     ; preds = %96
  %100 = load %union.tree_node*, %union.tree_node** %6, align 8
  store %union.tree_node* %100, %union.tree_node** %3, align 8
  br label %101

; <label>:101:                                    ; preds = %99, %96
  %102 = load %union.tree_node*, %union.tree_node** %3, align 8
  %103 = bitcast %union.tree_node* %102 to %struct.tree_type*
  %104 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %103, i32 0, i32 10
  %105 = bitcast %union.anon.2* %104 to i32*
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %163

; <label>:108:                                    ; preds = %101
  %109 = load i32, i32* @next_type_number, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* @next_type_number, align 4
  %111 = load %union.tree_node*, %union.tree_node** %3, align 8
  %112 = bitcast %union.tree_node* %111 to %struct.tree_type*
  %113 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %112, i32 0, i32 10
  %114 = bitcast %union.anon.2* %113 to i32*
  store i32 %109, i32* %114, align 8
  %115 = load i32, i32* @next_type_number, align 4
  %116 = load i32, i32* @typevec_len, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %137

; <label>:118:                                    ; preds = %108
  %119 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %120 = bitcast %struct.typeinfo* %119 to i8*
  %121 = load i32, i32* @typevec_len, align 4
  %122 = mul nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 12
  %125 = call i8* @xrealloc(i8* %120, i64 %124)
  %126 = bitcast i8* %125 to %struct.typeinfo*
  store %struct.typeinfo* %126, %struct.typeinfo** @typevec, align 8
  %127 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %128 = load i32, i32* @typevec_len, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %127, i64 %129
  %131 = bitcast %struct.typeinfo* %130 to i8*
  %132 = load i32, i32* @typevec_len, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 12
  call void @llvm.memset.p0i8.i64(i8* %131, i8 0, i64 %134, i32 1, i1 false)
  %135 = load i32, i32* @typevec_len, align 4
  %136 = mul nsw i32 %135, 2
  store i32 %136, i32* @typevec_len, align 4
  br label %137

; <label>:137:                                    ; preds = %118, %108
  %138 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %139 = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %142 = load %union.tree_node*, %union.tree_node** %3, align 8
  %143 = bitcast %union.tree_node* %142 to %struct.tree_type*
  %144 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %143, i32 0, i32 10
  %145 = bitcast %union.anon.2* %144 to i32*
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %141, i64 %147
  %149 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %148, i32 0, i32 1
  store i32 %140, i32* %149, align 4
  %150 = load %struct.dbx_file*, %struct.dbx_file** @current_file, align 8
  %151 = getelementptr inbounds %struct.dbx_file, %struct.dbx_file* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %155 = load %union.tree_node*, %union.tree_node** %3, align 8
  %156 = bitcast %union.tree_node* %155 to %struct.tree_type*
  %157 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %156, i32 0, i32 10
  %158 = bitcast %union.anon.2* %157 to i32*
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %154, i64 %160
  %162 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %161, i32 0, i32 2
  store i32 %152, i32* %162, align 4
  br label %163

; <label>:163:                                    ; preds = %137, %101
  %164 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @dbxout_type_index(%union.tree_node* %164)
  %165 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %166 = load %union.tree_node*, %union.tree_node** %3, align 8
  %167 = bitcast %union.tree_node* %166 to %struct.tree_type*
  %168 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %167, i32 0, i32 10
  %169 = bitcast %union.anon.2* %168 to i32*
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %165, i64 %171
  %173 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  switch i32 %174, label %195 [
    i32 0, label %175
    i32 1, label %176
    i32 2, label %194
  ]

; <label>:175:                                    ; preds = %163
  br label %195

; <label>:176:                                    ; preds = %163
  %177 = load i32, i32* %4, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %192

; <label>:179:                                    ; preds = %176
  %180 = load %union.tree_node*, %union.tree_node** %3, align 8
  %181 = bitcast %union.tree_node* %180 to %struct.tree_type*
  %182 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %181, i32 0, i32 2
  %183 = load %union.tree_node*, %union.tree_node** %182, align 8
  %184 = icmp ne %union.tree_node* %183, null
  br i1 %184, label %185, label %192

; <label>:185:                                    ; preds = %179
  %186 = load %union.tree_node*, %union.tree_node** %3, align 8
  %187 = bitcast %union.tree_node* %186 to %struct.tree_type*
  %188 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %187, i32 0, i32 2
  %189 = load %union.tree_node*, %union.tree_node** %188, align 8
  %190 = call i32 @host_integerp(%union.tree_node* %189, i32 1)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

; <label>:192:                                    ; preds = %185, %179, %176
  br label %1404

; <label>:193:                                    ; preds = %185
  br label %195

; <label>:194:                                    ; preds = %163
  br label %1404

; <label>:195:                                    ; preds = %193, %175, %163
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  %198 = load i32, i32* @current_sym_nchars, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* @current_sym_nchars, align 4
  %200 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %201 = load %union.tree_node*, %union.tree_node** %3, align 8
  %202 = bitcast %union.tree_node* %201 to %struct.tree_type*
  %203 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %202, i32 0, i32 10
  %204 = bitcast %union.anon.2* %203 to i32*
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %200, i64 %206
  %208 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %207, i32 0, i32 0
  store i32 2, i32* %208, align 4
  %209 = load %union.tree_node*, %union.tree_node** %3, align 8
  %210 = bitcast %union.tree_node* %209 to %struct.tree_common*
  %211 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = lshr i32 %212, 12
  %214 = and i32 %213, 1
  %215 = load %union.tree_node*, %union.tree_node** %6, align 8
  %216 = bitcast %union.tree_node* %215 to %struct.tree_common*
  %217 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = lshr i32 %218, 12
  %220 = and i32 %219, 1
  %221 = icmp sgt i32 %214, %220
  br i1 %221, label %222, label %238

; <label>:222:                                    ; preds = %195
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %224 = call i32 @putc(i32 107, %struct._IO_FILE* %223)
  %225 = load i32, i32* @current_sym_nchars, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* @current_sym_nchars, align 4
  %227 = load %union.tree_node*, %union.tree_node** %3, align 8
  %228 = load %union.tree_node*, %union.tree_node** %3, align 8
  %229 = bitcast %union.tree_node* %228 to %struct.tree_common*
  %230 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = lshr i32 %231, 11
  %233 = and i32 %232, 1
  %234 = icmp ne i32 %233, 0
  %235 = select i1 %234, i32 2, i32 0
  %236 = or i32 0, %235
  %237 = call %union.tree_node* @build_qualified_type(%union.tree_node* %227, i32 %236)
  call void @dbxout_type(%union.tree_node* %237, i32 0)
  br label %1404

; <label>:238:                                    ; preds = %195
  %239 = load %union.tree_node*, %union.tree_node** %3, align 8
  %240 = bitcast %union.tree_node* %239 to %struct.tree_common*
  %241 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = lshr i32 %242, 11
  %244 = and i32 %243, 1
  %245 = load %union.tree_node*, %union.tree_node** %6, align 8
  %246 = bitcast %union.tree_node* %245 to %struct.tree_common*
  %247 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = lshr i32 %248, 11
  %250 = and i32 %249, 1
  %251 = icmp sgt i32 %244, %250
  br i1 %251, label %252, label %267

; <label>:252:                                    ; preds = %238
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %254 = call i32 @putc(i32 66, %struct._IO_FILE* %253)
  %255 = load i32, i32* @current_sym_nchars, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* @current_sym_nchars, align 4
  %257 = load %union.tree_node*, %union.tree_node** %3, align 8
  %258 = load %union.tree_node*, %union.tree_node** %3, align 8
  %259 = bitcast %union.tree_node* %258 to %struct.tree_common*
  %260 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = lshr i32 %261, 12
  %263 = and i32 %262, 1
  %264 = icmp ne i32 %263, 0
  %265 = select i1 %264, i32 1, i32 0
  %266 = call %union.tree_node* @build_qualified_type(%union.tree_node* %257, i32 %265)
  call void @dbxout_type(%union.tree_node* %266, i32 0)
  br label %1404

; <label>:267:                                    ; preds = %238
  %268 = load %union.tree_node*, %union.tree_node** %6, align 8
  %269 = load %union.tree_node*, %union.tree_node** %3, align 8
  %270 = bitcast %union.tree_node* %269 to %struct.tree_type*
  %271 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %270, i32 0, i32 15
  %272 = load %union.tree_node*, %union.tree_node** %271, align 8
  %273 = icmp ne %union.tree_node* %268, %272
  br i1 %273, label %274, label %282

; <label>:274:                                    ; preds = %267
  %275 = load %union.tree_node*, %union.tree_node** %3, align 8
  %276 = bitcast %union.tree_node* %275 to %struct.tree_type*
  %277 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %276, i32 0, i32 11
  %278 = load %union.tree_node*, %union.tree_node** %277, align 8
  %279 = bitcast %union.tree_node* %278 to %struct.tree_decl*
  %280 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %279, i32 0, i32 11
  %281 = load %union.tree_node*, %union.tree_node** %280, align 8
  call void @dbxout_type(%union.tree_node* %281, i32 0)
  br label %1404

; <label>:282:                                    ; preds = %267
  br label %283

; <label>:283:                                    ; preds = %282
  br label %284

; <label>:284:                                    ; preds = %283
  %285 = load %union.tree_node*, %union.tree_node** %3, align 8
  %286 = bitcast %union.tree_node* %285 to %struct.tree_common*
  %287 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = and i32 %288, 255
  switch i32 %289, label %1403 [
    i32 5, label %290
    i32 24, label %290
    i32 6, label %292
    i32 7, label %502
    i32 12, label %518
    i32 11, label %552
    i32 17, label %573
    i32 8, label %582
    i32 19, label %668
    i32 18, label %705
    i32 20, label %776
    i32 21, label %776
    i32 22, label %776
    i32 10, label %1119
    i32 13, label %1312
    i32 16, label %1321
    i32 14, label %1355
    i32 15, label %1378
    i32 23, label %1394
  ]

; <label>:290:                                    ; preds = %284, %284
  %291 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @dbxout_type_index(%union.tree_node* %291)
  br label %1404

; <label>:292:                                    ; preds = %284
  %293 = load %union.tree_node*, %union.tree_node** %3, align 8
  %294 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16
  %295 = icmp eq %union.tree_node* %293, %294
  br i1 %295, label %296, label %314

; <label>:296:                                    ; preds = %292
  %297 = load %union.tree_node*, %union.tree_node** %3, align 8
  %298 = bitcast %union.tree_node* %297 to %struct.tree_common*
  %299 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = lshr i32 %300, 13
  %302 = and i32 %301, 1
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %314, label %304

; <label>:304:                                    ; preds = %296
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %306 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %305, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %307 = load i32, i32* @current_sym_nchars, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* @current_sym_nchars, align 4
  %309 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @dbxout_type_index(%union.tree_node* %309)
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %311 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %310, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0))
  %312 = load i32, i32* @current_sym_nchars, align 4
  %313 = add nsw i32 %312, 7
  store i32 %313, i32* @current_sym_nchars, align 4
  br label %501

; <label>:314:                                    ; preds = %296, %292
  %315 = load %union.tree_node*, %union.tree_node** %3, align 8
  %316 = bitcast %union.tree_node* %315 to %struct.tree_common*
  %317 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %316, i32 0, i32 1
  %318 = load %union.tree_node*, %union.tree_node** %317, align 8
  %319 = icmp ne %union.tree_node* %318, null
  br i1 %319, label %320, label %357

; <label>:320:                                    ; preds = %314
  %321 = load %union.tree_node*, %union.tree_node** %3, align 8
  %322 = bitcast %union.tree_node* %321 to %struct.tree_common*
  %323 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %322, i32 0, i32 1
  %324 = load %union.tree_node*, %union.tree_node** %323, align 8
  %325 = bitcast %union.tree_node* %324 to %struct.tree_common*
  %326 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = and i32 %327, 255
  %329 = icmp eq i32 %328, 6
  br i1 %329, label %330, label %357

; <label>:330:                                    ; preds = %320
  %331 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %355

; <label>:333:                                    ; preds = %330
  %334 = load %union.tree_node*, %union.tree_node** %3, align 8
  %335 = bitcast %union.tree_node* %334 to %struct.tree_type*
  %336 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 4
  %338 = and i32 %337, 511
  %339 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  %340 = bitcast %union.tree_node* %339 to %struct.tree_type*
  %341 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 4
  %343 = and i32 %342, 511
  %344 = icmp ne i32 %338, %343
  br i1 %344, label %345, label %355

; <label>:345:                                    ; preds = %333
  store i32 1, i32* @have_used_extensions, align 4
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %347 = load %union.tree_node*, %union.tree_node** %3, align 8
  %348 = bitcast %union.tree_node* %347 to %struct.tree_type*
  %349 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %348, i32 0, i32 6
  %350 = load i32, i32* %349, align 4
  %351 = and i32 %350, 511
  %352 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %346, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %351)
  %353 = load i32, i32* @current_sym_nchars, align 4
  %354 = add nsw i32 %353, 5
  store i32 %354, i32* @current_sym_nchars, align 4
  br label %355

; <label>:355:                                    ; preds = %345, %333, %330
  %356 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @dbxout_range_type(%union.tree_node* %356)
  br label %500

; <label>:357:                                    ; preds = %320, %314
  %358 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %382

; <label>:360:                                    ; preds = %357
  %361 = load %union.tree_node*, %union.tree_node** %3, align 8
  %362 = bitcast %union.tree_node* %361 to %struct.tree_type*
  %363 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %362, i32 0, i32 6
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %364, 511
  %366 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  %367 = bitcast %union.tree_node* %366 to %struct.tree_type*
  %368 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %367, i32 0, i32 6
  %369 = load i32, i32* %368, align 4
  %370 = and i32 %369, 511
  %371 = icmp ne i32 %365, %370
  br i1 %371, label %372, label %382

; <label>:372:                                    ; preds = %360
  store i32 1, i32* @have_used_extensions, align 4
  %373 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %374 = load %union.tree_node*, %union.tree_node** %3, align 8
  %375 = bitcast %union.tree_node* %374 to %struct.tree_type*
  %376 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 4
  %378 = and i32 %377, 511
  %379 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %373, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %378)
  %380 = load i32, i32* @current_sym_nchars, align 4
  %381 = add nsw i32 %380, 5
  store i32 %381, i32* @current_sym_nchars, align 4
  br label %382

; <label>:382:                                    ; preds = %372, %360, %357
  %383 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %497

; <label>:385:                                    ; preds = %382
  %386 = load %union.tree_node*, %union.tree_node** %3, align 8
  %387 = bitcast %union.tree_node* %386 to %struct.tree_type*
  %388 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %387, i32 0, i32 12
  %389 = load %union.tree_node*, %union.tree_node** %388, align 8
  %390 = icmp ne %union.tree_node* %389, null
  br i1 %390, label %391, label %497

; <label>:391:                                    ; preds = %385
  %392 = load %union.tree_node*, %union.tree_node** %3, align 8
  %393 = bitcast %union.tree_node* %392 to %struct.tree_type*
  %394 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %393, i32 0, i32 12
  %395 = load %union.tree_node*, %union.tree_node** %394, align 8
  %396 = bitcast %union.tree_node* %395 to %struct.tree_common*
  %397 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = and i32 %398, 255
  %400 = icmp eq i32 %399, 25
  br i1 %400, label %401, label %497

; <label>:401:                                    ; preds = %391
  %402 = load %union.tree_node*, %union.tree_node** %3, align 8
  %403 = bitcast %union.tree_node* %402 to %struct.tree_type*
  %404 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %403, i32 0, i32 13
  %405 = load %union.tree_node*, %union.tree_node** %404, align 8
  %406 = icmp ne %union.tree_node* %405, null
  br i1 %406, label %407, label %497

; <label>:407:                                    ; preds = %401
  %408 = load %union.tree_node*, %union.tree_node** %3, align 8
  %409 = bitcast %union.tree_node* %408 to %struct.tree_type*
  %410 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %409, i32 0, i32 13
  %411 = load %union.tree_node*, %union.tree_node** %410, align 8
  %412 = bitcast %union.tree_node* %411 to %struct.tree_common*
  %413 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = and i32 %414, 255
  %416 = icmp eq i32 %415, 25
  br i1 %416, label %417, label %497

; <label>:417:                                    ; preds = %407
  %418 = load %union.tree_node*, %union.tree_node** %3, align 8
  %419 = bitcast %union.tree_node* %418 to %struct.tree_type*
  %420 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %419, i32 0, i32 6
  %421 = load i32, i32* %420, align 4
  %422 = and i32 %421, 511
  %423 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  %424 = bitcast %union.tree_node* %423 to %struct.tree_type*
  %425 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %424, i32 0, i32 6
  %426 = load i32, i32* %425, align 4
  %427 = and i32 %426, 511
  %428 = icmp sgt i32 %422, %427
  br i1 %428, label %471, label %429

; <label>:429:                                    ; preds = %417
  %430 = load %union.tree_node*, %union.tree_node** %3, align 8
  %431 = bitcast %union.tree_node* %430 to %struct.tree_type*
  %432 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %431, i32 0, i32 6
  %433 = load i32, i32* %432, align 4
  %434 = and i32 %433, 511
  %435 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  %436 = bitcast %union.tree_node* %435 to %struct.tree_type*
  %437 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %436, i32 0, i32 6
  %438 = load i32, i32* %437, align 4
  %439 = and i32 %438, 511
  %440 = icmp eq i32 %434, %439
  br i1 %440, label %441, label %449

; <label>:441:                                    ; preds = %429
  %442 = load %union.tree_node*, %union.tree_node** %3, align 8
  %443 = bitcast %union.tree_node* %442 to %struct.tree_common*
  %444 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = lshr i32 %445, 13
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %471, label %449

; <label>:449:                                    ; preds = %441, %429
  %450 = load %union.tree_node*, %union.tree_node** %3, align 8
  %451 = bitcast %union.tree_node* %450 to %struct.tree_type*
  %452 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %451, i32 0, i32 6
  %453 = load i32, i32* %452, align 4
  %454 = and i32 %453, 511
  %455 = icmp sgt i32 %454, 64
  br i1 %455, label %471, label %456

; <label>:456:                                    ; preds = %449
  %457 = load %union.tree_node*, %union.tree_node** %3, align 8
  %458 = bitcast %union.tree_node* %457 to %struct.tree_type*
  %459 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %458, i32 0, i32 6
  %460 = load i32, i32* %459, align 4
  %461 = and i32 %460, 511
  %462 = icmp eq i32 %461, 64
  br i1 %462, label %463, label %497

; <label>:463:                                    ; preds = %456
  %464 = load %union.tree_node*, %union.tree_node** %3, align 8
  %465 = bitcast %union.tree_node* %464 to %struct.tree_common*
  %466 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = lshr i32 %467, 13
  %469 = and i32 %468, 1
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %497

; <label>:471:                                    ; preds = %463, %449, %441, %417
  %472 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %473 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %472, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %474 = load i32, i32* @current_sym_nchars, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* @current_sym_nchars, align 4
  %476 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @dbxout_type_index(%union.tree_node* %476)
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %478 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %477, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  %479 = load i32, i32* @current_sym_nchars, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* @current_sym_nchars, align 4
  %481 = load %union.tree_node*, %union.tree_node** %3, align 8
  %482 = bitcast %union.tree_node* %481 to %struct.tree_type*
  %483 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %482, i32 0, i32 12
  %484 = load %union.tree_node*, %union.tree_node** %483, align 8
  call void @print_int_cst_octal(%union.tree_node* %484)
  %485 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %486 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %485, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  %487 = load i32, i32* @current_sym_nchars, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* @current_sym_nchars, align 4
  %489 = load %union.tree_node*, %union.tree_node** %3, align 8
  %490 = bitcast %union.tree_node* %489 to %struct.tree_type*
  %491 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %490, i32 0, i32 13
  %492 = load %union.tree_node*, %union.tree_node** %491, align 8
  call void @print_int_cst_octal(%union.tree_node* %492)
  %493 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %494 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %493, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  %495 = load i32, i32* @current_sym_nchars, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* @current_sym_nchars, align 4
  br label %499

; <label>:497:                                    ; preds = %463, %456, %407, %401, %391, %385, %382
  %498 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @dbxout_range_type(%union.tree_node* %498)
  br label %499

; <label>:499:                                    ; preds = %497, %471
  br label %500

; <label>:500:                                    ; preds = %499, %355
  br label %501

; <label>:501:                                    ; preds = %500, %304
  br label %1404

; <label>:502:                                    ; preds = %284
  %503 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %504 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %503, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %505 = load i32, i32* @current_sym_nchars, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* @current_sym_nchars, align 4
  %507 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  call void @dbxout_type_index(%union.tree_node* %507)
  %508 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %509 = call i32 @putc(i32 59, %struct._IO_FILE* %508)
  %510 = load i32, i32* @current_sym_nchars, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* @current_sym_nchars, align 4
  %512 = load %union.tree_node*, %union.tree_node** %3, align 8
  %513 = call i64 @int_size_in_bytes(%union.tree_node* %512)
  call void @print_wide_int(i64 %513)
  %514 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %515 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %514)
  %516 = load i32, i32* @current_sym_nchars, align 4
  %517 = add nsw i32 %516, 3
  store i32 %517, i32* @current_sym_nchars, align 4
  br label %1404

; <label>:518:                                    ; preds = %284
  %519 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %533

; <label>:521:                                    ; preds = %518
  store i32 1, i32* @have_used_extensions, align 4
  %522 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %523 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %522)
  %524 = load i32, i32* @current_sym_nchars, align 4
  %525 = add nsw i32 %524, 2
  store i32 %525, i32* @current_sym_nchars, align 4
  %526 = load %union.tree_node*, %union.tree_node** %3, align 8
  %527 = call i64 @int_size_in_bytes(%union.tree_node* %526)
  %528 = mul nsw i64 8, %527
  call void @print_wide_int(i64 %528)
  %529 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %530 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), %struct._IO_FILE* %529)
  %531 = load i32, i32* @current_sym_nchars, align 4
  %532 = add nsw i32 %531, 4
  store i32 %532, i32* @current_sym_nchars, align 4
  br label %551

; <label>:533:                                    ; preds = %518
  %534 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %535 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %534, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %536 = load i32, i32* @current_sym_nchars, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* @current_sym_nchars, align 4
  %538 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16
  call void @dbxout_type_index(%union.tree_node* %538)
  %539 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %540 = load %union.tree_node*, %union.tree_node** %3, align 8
  %541 = bitcast %union.tree_node* %540 to %struct.tree_common*
  %542 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 8
  %544 = lshr i32 %543, 13
  %545 = and i32 %544, 1
  %546 = icmp ne i32 %545, 0
  %547 = select i1 %546, i32 255, i32 127
  %548 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %539, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %547)
  %549 = load i32, i32* @current_sym_nchars, align 4
  %550 = add nsw i32 %549, 7
  store i32 %550, i32* @current_sym_nchars, align 4
  br label %551

; <label>:551:                                    ; preds = %533, %521
  br label %1404

; <label>:552:                                    ; preds = %284
  %553 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %567

; <label>:555:                                    ; preds = %552
  store i32 1, i32* @have_used_extensions, align 4
  %556 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %557 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %556)
  %558 = load i32, i32* @current_sym_nchars, align 4
  %559 = add nsw i32 %558, 2
  store i32 %559, i32* @current_sym_nchars, align 4
  %560 = load %union.tree_node*, %union.tree_node** %3, align 8
  %561 = call i64 @int_size_in_bytes(%union.tree_node* %560)
  %562 = mul nsw i64 8, %561
  call void @print_wide_int(i64 %562)
  %563 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %564 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), %struct._IO_FILE* %563)
  %565 = load i32, i32* @current_sym_nchars, align 4
  %566 = add nsw i32 %565, 4
  store i32 %566, i32* @current_sym_nchars, align 4
  br label %572

; <label>:567:                                    ; preds = %552
  %568 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %569 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %568, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0))
  %570 = load i32, i32* @current_sym_nchars, align 4
  %571 = add nsw i32 %570, 17
  store i32 %571, i32* @current_sym_nchars, align 4
  br label %572

; <label>:572:                                    ; preds = %567, %555
  br label %1404

; <label>:573:                                    ; preds = %284
  %574 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %575 = call i32 @putc(i32 100, %struct._IO_FILE* %574)
  %576 = load i32, i32* @current_sym_nchars, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* @current_sym_nchars, align 4
  %578 = load %union.tree_node*, %union.tree_node** %3, align 8
  %579 = bitcast %union.tree_node* %578 to %struct.tree_common*
  %580 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %579, i32 0, i32 1
  %581 = load %union.tree_node*, %union.tree_node** %580, align 8
  call void @dbxout_type(%union.tree_node* %581, i32 0)
  br label %1404

; <label>:582:                                    ; preds = %284
  %583 = load %union.tree_node*, %union.tree_node** %3, align 8
  %584 = bitcast %union.tree_node* %583 to %struct.tree_common*
  %585 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %584, i32 0, i32 1
  %586 = load %union.tree_node*, %union.tree_node** %585, align 8
  %587 = bitcast %union.tree_node* %586 to %struct.tree_common*
  %588 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %587, i32 0, i32 2
  %589 = load i32, i32* %588, align 8
  %590 = and i32 %589, 255
  %591 = icmp eq i32 %590, 7
  br i1 %591, label %592, label %612

; <label>:592:                                    ; preds = %582
  %593 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %594 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %593, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %595 = load i32, i32* @current_sym_nchars, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* @current_sym_nchars, align 4
  %597 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @dbxout_type_index(%union.tree_node* %597)
  %598 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %599 = call i32 @putc(i32 59, %struct._IO_FILE* %598)
  %600 = load i32, i32* @current_sym_nchars, align 4
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* @current_sym_nchars, align 4
  %602 = load %union.tree_node*, %union.tree_node** %3, align 8
  %603 = bitcast %union.tree_node* %602 to %struct.tree_common*
  %604 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %603, i32 0, i32 1
  %605 = load %union.tree_node*, %union.tree_node** %604, align 8
  %606 = call i64 @int_size_in_bytes(%union.tree_node* %605)
  %607 = mul nsw i64 2, %606
  call void @print_wide_int(i64 %607)
  %608 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %609 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %608)
  %610 = load i32, i32* @current_sym_nchars, align 4
  %611 = add nsw i32 %610, 3
  store i32 %611, i32* @current_sym_nchars, align 4
  br label %667

; <label>:612:                                    ; preds = %582
  %613 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %614 = call i32 @putc(i32 115, %struct._IO_FILE* %613)
  %615 = load i32, i32* @current_sym_nchars, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* @current_sym_nchars, align 4
  %617 = load %union.tree_node*, %union.tree_node** %3, align 8
  %618 = call i64 @int_size_in_bytes(%union.tree_node* %617)
  call void @print_wide_int(i64 %618)
  %619 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %620 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %619, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  %621 = load i32, i32* @current_sym_nchars, align 4
  %622 = add nsw i32 %621, 5
  store i32 %622, i32* @current_sym_nchars, align 4
  %623 = load %union.tree_node*, %union.tree_node** %3, align 8
  %624 = bitcast %union.tree_node* %623 to %struct.tree_common*
  %625 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %624, i32 0, i32 1
  %626 = load %union.tree_node*, %union.tree_node** %625, align 8
  call void @dbxout_type(%union.tree_node* %626, i32 0)
  %627 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %628 = load %union.tree_node*, %union.tree_node** %3, align 8
  %629 = bitcast %union.tree_node* %628 to %struct.tree_common*
  %630 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %629, i32 0, i32 1
  %631 = load %union.tree_node*, %union.tree_node** %630, align 8
  %632 = bitcast %union.tree_node* %631 to %struct.tree_type*
  %633 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %632, i32 0, i32 6
  %634 = load i32, i32* %633, align 4
  %635 = and i32 %634, 511
  %636 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %627, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %635)
  %637 = load i32, i32* @current_sym_nchars, align 4
  %638 = add nsw i32 %637, 7
  store i32 %638, i32* @current_sym_nchars, align 4
  %639 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %640 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %639, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0))
  %641 = load i32, i32* @current_sym_nchars, align 4
  %642 = add nsw i32 %641, 5
  store i32 %642, i32* @current_sym_nchars, align 4
  %643 = load %union.tree_node*, %union.tree_node** %3, align 8
  %644 = bitcast %union.tree_node* %643 to %struct.tree_common*
  %645 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %644, i32 0, i32 1
  %646 = load %union.tree_node*, %union.tree_node** %645, align 8
  call void @dbxout_type(%union.tree_node* %646, i32 0)
  %647 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %648 = load %union.tree_node*, %union.tree_node** %3, align 8
  %649 = bitcast %union.tree_node* %648 to %struct.tree_common*
  %650 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %649, i32 0, i32 1
  %651 = load %union.tree_node*, %union.tree_node** %650, align 8
  %652 = bitcast %union.tree_node* %651 to %struct.tree_type*
  %653 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %652, i32 0, i32 6
  %654 = load i32, i32* %653, align 4
  %655 = and i32 %654, 511
  %656 = load %union.tree_node*, %union.tree_node** %3, align 8
  %657 = bitcast %union.tree_node* %656 to %struct.tree_common*
  %658 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %657, i32 0, i32 1
  %659 = load %union.tree_node*, %union.tree_node** %658, align 8
  %660 = bitcast %union.tree_node* %659 to %struct.tree_type*
  %661 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %660, i32 0, i32 6
  %662 = load i32, i32* %661, align 4
  %663 = and i32 %662, 511
  %664 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %647, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %655, i32 %663)
  %665 = load i32, i32* @current_sym_nchars, align 4
  %666 = add nsw i32 %665, 10
  store i32 %666, i32* @current_sym_nchars, align 4
  br label %667

; <label>:667:                                    ; preds = %612, %592
  br label %1404

; <label>:668:                                    ; preds = %284
  %669 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %696

; <label>:671:                                    ; preds = %668
  store i32 1, i32* @have_used_extensions, align 4
  %672 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %673 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %672)
  %674 = load i32, i32* @current_sym_nchars, align 4
  %675 = add nsw i32 %674, 2
  store i32 %675, i32* @current_sym_nchars, align 4
  %676 = load %union.tree_node*, %union.tree_node** %3, align 8
  %677 = call i64 @int_size_in_bytes(%union.tree_node* %676)
  %678 = mul nsw i64 8, %677
  call void @print_wide_int(i64 %678)
  %679 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %680 = call i32 @putc(i32 59, %struct._IO_FILE* %679)
  %681 = load i32, i32* @current_sym_nchars, align 4
  %682 = add nsw i32 %681, 1
  store i32 %682, i32* @current_sym_nchars, align 4
  %683 = load %union.tree_node*, %union.tree_node** %3, align 8
  %684 = bitcast %union.tree_node* %683 to %struct.tree_type*
  %685 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %684, i32 0, i32 6
  %686 = load i32, i32* %685, align 4
  %687 = lshr i32 %686, 16
  %688 = and i32 %687, 1
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %695

; <label>:690:                                    ; preds = %671
  %691 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %692 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %691, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0))
  %693 = load i32, i32* @current_sym_nchars, align 4
  %694 = add nsw i32 %693, 3
  store i32 %694, i32* @current_sym_nchars, align 4
  br label %695

; <label>:695:                                    ; preds = %690, %671
  br label %696

; <label>:696:                                    ; preds = %695, %668
  %697 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %698 = call i32 @putc(i32 83, %struct._IO_FILE* %697)
  %699 = load i32, i32* @current_sym_nchars, align 4
  %700 = add nsw i32 %699, 1
  store i32 %700, i32* @current_sym_nchars, align 4
  %701 = load %union.tree_node*, %union.tree_node** %3, align 8
  %702 = bitcast %union.tree_node* %701 to %struct.tree_type*
  %703 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %702, i32 0, i32 1
  %704 = load %union.tree_node*, %union.tree_node** %703, align 8
  call void @dbxout_type(%union.tree_node* %704, i32 0)
  br label %1404

; <label>:705:                                    ; preds = %284
  %706 = load %union.tree_node*, %union.tree_node** %3, align 8
  %707 = bitcast %union.tree_node* %706 to %struct.tree_type*
  %708 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %707, i32 0, i32 6
  %709 = load i32, i32* %708, align 4
  %710 = lshr i32 %709, 20
  %711 = and i32 %710, 1
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %732

; <label>:713:                                    ; preds = %705
  %714 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %732

; <label>:716:                                    ; preds = %713
  store i32 1, i32* @have_used_extensions, align 4
  %717 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %718 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %717)
  %719 = load i32, i32* @current_sym_nchars, align 4
  %720 = add nsw i32 %719, 2
  store i32 %720, i32* @current_sym_nchars, align 4
  %721 = load %union.tree_node*, %union.tree_node** %3, align 8
  %722 = call i64 @int_size_in_bytes(%union.tree_node* %721)
  %723 = mul nsw i64 8, %722
  call void @print_wide_int(i64 %723)
  %724 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %725 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %724, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0))
  %726 = load i32, i32* @current_sym_nchars, align 4
  %727 = add nsw i32 %726, 5
  store i32 %727, i32* @current_sym_nchars, align 4
  %728 = load %union.tree_node*, %union.tree_node** %3, align 8
  %729 = bitcast %union.tree_node* %728 to %struct.tree_type*
  %730 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %729, i32 0, i32 1
  %731 = load %union.tree_node*, %union.tree_node** %730, align 8
  call void @dbxout_type(%union.tree_node* %731, i32 0)
  br label %1404

; <label>:732:                                    ; preds = %713, %705
  %733 = load %union.tree_node*, %union.tree_node** %3, align 8
  %734 = bitcast %union.tree_node* %733 to %struct.tree_type*
  %735 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %734, i32 0, i32 6
  %736 = load i32, i32* %735, align 4
  %737 = lshr i32 %736, 16
  %738 = and i32 %737, 1
  %739 = icmp ne i32 %738, 0
  br i1 %739, label %740, label %748

; <label>:740:                                    ; preds = %732
  %741 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %742 = icmp ne i32 %741, 0
  br i1 %742, label %743, label %748

; <label>:743:                                    ; preds = %740
  store i32 1, i32* @have_used_extensions, align 4
  %744 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %745 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %744, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0))
  %746 = load i32, i32* @current_sym_nchars, align 4
  %747 = add nsw i32 %746, 3
  store i32 %747, i32* @current_sym_nchars, align 4
  br label %748

; <label>:748:                                    ; preds = %743, %740, %732
  %749 = load %union.tree_node*, %union.tree_node** %3, align 8
  %750 = bitcast %union.tree_node* %749 to %struct.tree_type*
  %751 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %750, i32 0, i32 1
  %752 = load %union.tree_node*, %union.tree_node** %751, align 8
  store %union.tree_node* %752, %union.tree_node** %5, align 8
  %753 = load %union.tree_node*, %union.tree_node** %5, align 8
  %754 = icmp eq %union.tree_node* %753, null
  br i1 %754, label %755, label %765

; <label>:755:                                    ; preds = %748
  %756 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %757 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %756, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  %758 = load i32, i32* @current_sym_nchars, align 4
  %759 = add nsw i32 %758, 2
  store i32 %759, i32* @current_sym_nchars, align 4
  %760 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  call void @dbxout_type_index(%union.tree_node* %760)
  %761 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %762 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %761, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0))
  %763 = load i32, i32* @current_sym_nchars, align 4
  %764 = add nsw i32 %763, 6
  store i32 %764, i32* @current_sym_nchars, align 4
  br label %771

; <label>:765:                                    ; preds = %748
  %766 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %767 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %766, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0))
  %768 = load i32, i32* @current_sym_nchars, align 4
  %769 = add nsw i32 %768, 1
  store i32 %769, i32* @current_sym_nchars, align 4
  %770 = load %union.tree_node*, %union.tree_node** %5, align 8
  call void @dbxout_range_type(%union.tree_node* %770)
  br label %771

; <label>:771:                                    ; preds = %765, %755
  %772 = load %union.tree_node*, %union.tree_node** %3, align 8
  %773 = bitcast %union.tree_node* %772 to %struct.tree_common*
  %774 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %773, i32 0, i32 1
  %775 = load %union.tree_node*, %union.tree_node** %774, align 8
  call void @dbxout_type(%union.tree_node* %775, i32 0)
  br label %1404

; <label>:776:                                    ; preds = %284, %284, %284
  store i32 0, i32* %8, align 4
  %777 = load %union.tree_node*, %union.tree_node** %3, align 8
  %778 = bitcast %union.tree_node* %777 to %struct.tree_type*
  %779 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %778, i32 0, i32 16
  %780 = load %union.tree_node*, %union.tree_node** %779, align 8
  %781 = icmp ne %union.tree_node* %780, null
  br i1 %781, label %782, label %814

; <label>:782:                                    ; preds = %776
  %783 = load %union.tree_node*, %union.tree_node** %3, align 8
  %784 = bitcast %union.tree_node* %783 to %struct.tree_type*
  %785 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %784, i32 0, i32 16
  %786 = load %union.tree_node*, %union.tree_node** %785, align 8
  %787 = bitcast %union.tree_node* %786 to %struct.tree_common*
  %788 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %787, i32 0, i32 2
  %789 = load i32, i32* %788, align 8
  %790 = and i32 %789, 255
  %791 = icmp eq i32 %790, 3
  br i1 %791, label %792, label %814

; <label>:792:                                    ; preds = %782
  %793 = load %union.tree_node*, %union.tree_node** %3, align 8
  %794 = bitcast %union.tree_node* %793 to %struct.tree_type*
  %795 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %794, i32 0, i32 16
  %796 = load %union.tree_node*, %union.tree_node** %795, align 8
  %797 = bitcast %union.tree_node* %796 to %struct.tree_vec*
  %798 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %797, i32 0, i32 2
  %799 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %798, i64 0, i64 4
  %800 = load %union.tree_node*, %union.tree_node** %799, align 8
  %801 = icmp ne %union.tree_node* %800, null
  br i1 %801, label %802, label %814

; <label>:802:                                    ; preds = %792
  %803 = load %union.tree_node*, %union.tree_node** %3, align 8
  %804 = bitcast %union.tree_node* %803 to %struct.tree_type*
  %805 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %804, i32 0, i32 16
  %806 = load %union.tree_node*, %union.tree_node** %805, align 8
  %807 = bitcast %union.tree_node* %806 to %struct.tree_vec*
  %808 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %807, i32 0, i32 2
  %809 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %808, i64 0, i64 4
  %810 = load %union.tree_node*, %union.tree_node** %809, align 8
  %811 = bitcast %union.tree_node* %810 to %struct.tree_vec*
  %812 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %811, i32 0, i32 1
  %813 = load i32, i32* %812, align 8
  store i32 %813, i32* %8, align 4
  br label %814

; <label>:814:                                    ; preds = %802, %792, %782, %776
  %815 = load %union.tree_node*, %union.tree_node** %3, align 8
  %816 = bitcast %union.tree_node* %815 to %struct.tree_type*
  %817 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %816, i32 0, i32 11
  %818 = load %union.tree_node*, %union.tree_node** %817, align 8
  %819 = icmp ne %union.tree_node* %818, null
  br i1 %819, label %820, label %846

; <label>:820:                                    ; preds = %814
  %821 = load %union.tree_node*, %union.tree_node** %3, align 8
  %822 = bitcast %union.tree_node* %821 to %struct.tree_type*
  %823 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %822, i32 0, i32 11
  %824 = load %union.tree_node*, %union.tree_node** %823, align 8
  %825 = bitcast %union.tree_node* %824 to %struct.tree_common*
  %826 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %825, i32 0, i32 2
  %827 = load i32, i32* %826, align 8
  %828 = and i32 %827, 255
  %829 = icmp eq i32 %828, 33
  br i1 %829, label %830, label %843

; <label>:830:                                    ; preds = %820
  %831 = load %union.tree_node*, %union.tree_node** %3, align 8
  %832 = bitcast %union.tree_node* %831 to %struct.tree_type*
  %833 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %832, i32 0, i32 11
  %834 = load %union.tree_node*, %union.tree_node** %833, align 8
  %835 = bitcast %union.tree_node* %834 to %struct.tree_decl*
  %836 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %835, i32 0, i32 5
  %837 = bitcast i48* %836 to i64*
  %838 = load i64, i64* %837, align 8
  %839 = lshr i64 %838, 14
  %840 = and i64 %839, 1
  %841 = trunc i64 %840 to i32
  %842 = icmp ne i32 %841, 0
  br i1 %842, label %846, label %843

; <label>:843:                                    ; preds = %830, %820
  %844 = load i32, i32* %4, align 4
  %845 = icmp ne i32 %844, 0
  br i1 %845, label %846, label %859

; <label>:846:                                    ; preds = %843, %830, %814
  %847 = load %union.tree_node*, %union.tree_node** %3, align 8
  %848 = bitcast %union.tree_node* %847 to %struct.tree_type*
  %849 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %848, i32 0, i32 2
  %850 = load %union.tree_node*, %union.tree_node** %849, align 8
  %851 = icmp ne %union.tree_node* %850, null
  br i1 %851, label %852, label %859

; <label>:852:                                    ; preds = %846
  %853 = load %union.tree_node*, %union.tree_node** %3, align 8
  %854 = bitcast %union.tree_node* %853 to %struct.tree_type*
  %855 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %854, i32 0, i32 2
  %856 = load %union.tree_node*, %union.tree_node** %855, align 8
  %857 = call i32 @host_integerp(%union.tree_node* %856, i32 1)
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %899, label %859

; <label>:859:                                    ; preds = %852, %846, %843
  %860 = load %union.tree_node*, %union.tree_node** %3, align 8
  %861 = bitcast %union.tree_node* %860 to %struct.tree_common*
  %862 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %861, i32 0, i32 2
  %863 = load i32, i32* %862, align 8
  %864 = and i32 %863, 255
  %865 = icmp eq i32 %864, 20
  %866 = select i1 %865, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0)
  %867 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %868 = call i32 @fputs(i8* %866, %struct._IO_FILE* %867)
  %869 = load i32, i32* @current_sym_nchars, align 4
  %870 = add nsw i32 %869, 2
  store i32 %870, i32* @current_sym_nchars, align 4
  %871 = load %union.tree_node*, %union.tree_node** %3, align 8
  %872 = bitcast %union.tree_node* %871 to %struct.tree_type*
  %873 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %872, i32 0, i32 11
  %874 = load %union.tree_node*, %union.tree_node** %873, align 8
  %875 = icmp ne %union.tree_node* %874, null
  br i1 %875, label %876, label %878

; <label>:876:                                    ; preds = %859
  %877 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @dbxout_type_name(%union.tree_node* %877)
  br label %885

; <label>:878:                                    ; preds = %859
  %879 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %880 = load i32, i32* @dbxout_type.anonymous_type_number, align 4
  %881 = add nsw i32 %880, 1
  store i32 %881, i32* @dbxout_type.anonymous_type_number, align 4
  %882 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %879, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 %880)
  %883 = load i32, i32* @current_sym_nchars, align 4
  %884 = add nsw i32 %883, 5
  store i32 %884, i32* @current_sym_nchars, align 4
  br label %885

; <label>:885:                                    ; preds = %878, %876
  %886 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %887 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %886, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0))
  %888 = load i32, i32* @current_sym_nchars, align 4
  %889 = add nsw i32 %888, 1
  store i32 %889, i32* @current_sym_nchars, align 4
  %890 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %891 = load %union.tree_node*, %union.tree_node** %3, align 8
  %892 = bitcast %union.tree_node* %891 to %struct.tree_type*
  %893 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %892, i32 0, i32 10
  %894 = bitcast %union.anon.2* %893 to i32*
  %895 = load i32, i32* %894, align 8
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %890, i64 %896
  %898 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %897, i32 0, i32 0
  store i32 1, i32* %898, align 4
  br label %1404

; <label>:899:                                    ; preds = %852
  %900 = load %union.tree_node*, %union.tree_node** %3, align 8
  %901 = bitcast %union.tree_node* %900 to %struct.tree_common*
  %902 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %901, i32 0, i32 2
  %903 = load i32, i32* %902, align 8
  %904 = and i32 %903, 255
  %905 = icmp eq i32 %904, 20
  %906 = select i1 %905, i32 115, i32 117
  %907 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %908 = call i32 @putc(i32 %906, %struct._IO_FILE* %907)
  %909 = load i32, i32* @current_sym_nchars, align 4
  %910 = add nsw i32 %909, 1
  store i32 %910, i32* @current_sym_nchars, align 4
  %911 = load %union.tree_node*, %union.tree_node** %3, align 8
  %912 = call i64 @int_size_in_bytes(%union.tree_node* %911)
  call void @print_wide_int(i64 %912)
  %913 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %914 = icmp ne i32 %913, 0
  br i1 %914, label %915, label %925

; <label>:915:                                    ; preds = %899
  %916 = load i32, i32* %8, align 4
  %917 = icmp ne i32 %916, 0
  br i1 %917, label %918, label %924

; <label>:918:                                    ; preds = %915
  store i32 1, i32* @have_used_extensions, align 4
  %919 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %920 = load i32, i32* %8, align 4
  %921 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %919, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 %920)
  %922 = load i32, i32* @current_sym_nchars, align 4
  %923 = add nsw i32 %922, 8
  store i32 %923, i32* @current_sym_nchars, align 4
  br label %924

; <label>:924:                                    ; preds = %918, %915
  br label %925

; <label>:925:                                    ; preds = %924, %899
  store i32 0, i32* %7, align 4
  br label %926

; <label>:926:                                    ; preds = %1056, %925
  %927 = load i32, i32* %7, align 4
  %928 = load i32, i32* %8, align 4
  %929 = icmp slt i32 %927, %928
  br i1 %929, label %930, label %1059

; <label>:930:                                    ; preds = %926
  %931 = load %union.tree_node*, %union.tree_node** %3, align 8
  %932 = bitcast %union.tree_node* %931 to %struct.tree_type*
  %933 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %932, i32 0, i32 16
  %934 = load %union.tree_node*, %union.tree_node** %933, align 8
  %935 = bitcast %union.tree_node* %934 to %struct.tree_vec*
  %936 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %935, i32 0, i32 2
  %937 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %936, i64 0, i64 4
  %938 = load %union.tree_node*, %union.tree_node** %937, align 8
  %939 = bitcast %union.tree_node* %938 to %struct.tree_vec*
  %940 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %939, i32 0, i32 2
  %941 = load i32, i32* %7, align 4
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %940, i64 0, i64 %942
  %944 = load %union.tree_node*, %union.tree_node** %943, align 8
  store %union.tree_node* %944, %union.tree_node** %9, align 8
  %945 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %946 = icmp ne i32 %945, 0
  br i1 %946, label %947, label %1010

; <label>:947:                                    ; preds = %930
  store i32 1, i32* @have_used_extensions, align 4
  %948 = load %union.tree_node*, %union.tree_node** %9, align 8
  %949 = bitcast %union.tree_node* %948 to %struct.tree_common*
  %950 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %949, i32 0, i32 2
  %951 = load i32, i32* %950, align 8
  %952 = lshr i32 %951, 18
  %953 = and i32 %952, 1
  %954 = icmp ne i32 %953, 0
  %955 = select i1 %954, i32 49, i32 48
  %956 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %957 = call i32 @putc(i32 %955, %struct._IO_FILE* %956)
  %958 = load %union.tree_node*, %union.tree_node** %9, align 8
  %959 = bitcast %union.tree_node* %958 to %struct.tree_common*
  %960 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %959, i32 0, i32 2
  %961 = load i32, i32* %960, align 8
  %962 = lshr i32 %961, 19
  %963 = and i32 %962, 1
  %964 = icmp ne i32 %963, 0
  %965 = select i1 %964, i32 50, i32 48
  %966 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %967 = call i32 @putc(i32 %965, %struct._IO_FILE* %966)
  %968 = load i32, i32* @current_sym_nchars, align 4
  %969 = add nsw i32 %968, 2
  store i32 %969, i32* @current_sym_nchars, align 4
  %970 = load %union.tree_node*, %union.tree_node** %9, align 8
  %971 = bitcast %union.tree_node* %970 to %struct.tree_common*
  %972 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %971, i32 0, i32 2
  %973 = load i32, i32* %972, align 8
  %974 = lshr i32 %973, 18
  %975 = and i32 %974, 1
  %976 = icmp ne i32 %975, 0
  br i1 %976, label %977, label %989

; <label>:977:                                    ; preds = %947
  %978 = load i8*, i8** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 0), align 8
  %979 = call i32 @strcmp(i8* %978, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0)) #7
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %989

; <label>:981:                                    ; preds = %977
  %982 = load %union.tree_node*, %union.tree_node** %9, align 8
  %983 = bitcast %union.tree_node* %982 to %struct.tree_vec*
  %984 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %983, i32 0, i32 2
  %985 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %984, i64 0, i64 5
  %986 = load %union.tree_node*, %union.tree_node** %985, align 8
  %987 = call i64 @tree_low_cst(%union.tree_node* %986, i32 0)
  %988 = mul nsw i64 %987, 8
  call void @print_wide_int(i64 %988)
  br label %997

; <label>:989:                                    ; preds = %977, %947
  %990 = load %union.tree_node*, %union.tree_node** %9, align 8
  %991 = bitcast %union.tree_node* %990 to %struct.tree_vec*
  %992 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %991, i32 0, i32 2
  %993 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %992, i64 0, i64 1
  %994 = load %union.tree_node*, %union.tree_node** %993, align 8
  %995 = call i64 @tree_low_cst(%union.tree_node* %994, i32 0)
  %996 = mul nsw i64 %995, 8
  call void @print_wide_int(i64 %996)
  br label %997

; <label>:997:                                    ; preds = %989, %981
  %998 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %999 = call i32 @putc(i32 44, %struct._IO_FILE* %998)
  %1000 = load i32, i32* @current_sym_nchars, align 4
  %1001 = add nsw i32 %1000, 1
  store i32 %1001, i32* @current_sym_nchars, align 4
  %1002 = load %union.tree_node*, %union.tree_node** %9, align 8
  %1003 = bitcast %union.tree_node* %1002 to %struct.tree_common*
  %1004 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1003, i32 0, i32 1
  %1005 = load %union.tree_node*, %union.tree_node** %1004, align 8
  call void @dbxout_type(%union.tree_node* %1005, i32 0)
  %1006 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1007 = call i32 @putc(i32 59, %struct._IO_FILE* %1006)
  %1008 = load i32, i32* @current_sym_nchars, align 4
  %1009 = add nsw i32 %1008, 1
  store i32 %1009, i32* @current_sym_nchars, align 4
  br label %1055

; <label>:1010:                                   ; preds = %930
  %1011 = load %union.tree_node*, %union.tree_node** %9, align 8
  %1012 = bitcast %union.tree_node* %1011 to %struct.tree_common*
  %1013 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1012, i32 0, i32 1
  %1014 = load %union.tree_node*, %union.tree_node** %1013, align 8
  call void @dbxout_type_name(%union.tree_node* %1014)
  %1015 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1016 = call i32 @putc(i32 58, %struct._IO_FILE* %1015)
  %1017 = load i32, i32* @current_sym_nchars, align 4
  %1018 = add nsw i32 %1017, 1
  store i32 %1018, i32* @current_sym_nchars, align 4
  %1019 = load %union.tree_node*, %union.tree_node** %9, align 8
  %1020 = bitcast %union.tree_node* %1019 to %struct.tree_common*
  %1021 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1020, i32 0, i32 1
  %1022 = load %union.tree_node*, %union.tree_node** %1021, align 8
  %1023 = load i32, i32* %4, align 4
  call void @dbxout_type(%union.tree_node* %1022, i32 %1023)
  %1024 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1025 = call i32 @putc(i32 44, %struct._IO_FILE* %1024)
  %1026 = load i32, i32* @current_sym_nchars, align 4
  %1027 = add nsw i32 %1026, 1
  store i32 %1027, i32* @current_sym_nchars, align 4
  %1028 = load %union.tree_node*, %union.tree_node** %9, align 8
  %1029 = bitcast %union.tree_node* %1028 to %struct.tree_vec*
  %1030 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %1029, i32 0, i32 2
  %1031 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %1030, i64 0, i64 1
  %1032 = load %union.tree_node*, %union.tree_node** %1031, align 8
  %1033 = call i64 @tree_low_cst(%union.tree_node* %1032, i32 0)
  %1034 = mul nsw i64 %1033, 8
  call void @print_wide_int(i64 %1034)
  %1035 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1036 = call i32 @putc(i32 44, %struct._IO_FILE* %1035)
  %1037 = load i32, i32* @current_sym_nchars, align 4
  %1038 = add nsw i32 %1037, 1
  store i32 %1038, i32* @current_sym_nchars, align 4
  %1039 = load %union.tree_node*, %union.tree_node** %9, align 8
  %1040 = bitcast %union.tree_node* %1039 to %struct.tree_common*
  %1041 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1040, i32 0, i32 1
  %1042 = load %union.tree_node*, %union.tree_node** %1041, align 8
  %1043 = bitcast %union.tree_node* %1042 to %struct.tree_type*
  %1044 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1043, i32 0, i32 11
  %1045 = load %union.tree_node*, %union.tree_node** %1044, align 8
  %1046 = bitcast %union.tree_node* %1045 to %struct.tree_decl*
  %1047 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1046, i32 0, i32 4
  %1048 = load %union.tree_node*, %union.tree_node** %1047, align 8
  %1049 = call i64 @tree_low_cst(%union.tree_node* %1048, i32 0)
  %1050 = mul nsw i64 %1049, 8
  call void @print_wide_int(i64 %1050)
  %1051 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1052 = call i32 @putc(i32 59, %struct._IO_FILE* %1051)
  %1053 = load i32, i32* @current_sym_nchars, align 4
  %1054 = add nsw i32 %1053, 1
  store i32 %1054, i32* @current_sym_nchars, align 4
  br label %1055

; <label>:1055:                                   ; preds = %1010, %997
  br label %1056

; <label>:1056:                                   ; preds = %1055
  %1057 = load i32, i32* %7, align 4
  %1058 = add nsw i32 %1057, 1
  store i32 %1058, i32* %7, align 4
  br label %926

; <label>:1059:                                   ; preds = %926
  %1060 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @dbxout_type_fields(%union.tree_node* %1060)
  %1061 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %1062 = icmp ne i32 %1061, 0
  br i1 %1062, label %1063, label %1071

; <label>:1063:                                   ; preds = %1059
  %1064 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1065 = bitcast %union.tree_node* %1064 to %struct.tree_type*
  %1066 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1065, i32 0, i32 13
  %1067 = load %union.tree_node*, %union.tree_node** %1066, align 8
  %1068 = icmp ne %union.tree_node* %1067, null
  br i1 %1068, label %1069, label %1071

; <label>:1069:                                   ; preds = %1063
  store i32 1, i32* @have_used_extensions, align 4
  %1070 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @dbxout_type_methods(%union.tree_node* %1070)
  br label %1071

; <label>:1071:                                   ; preds = %1069, %1063, %1059
  %1072 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1073 = call i32 @putc(i32 59, %struct._IO_FILE* %1072)
  %1074 = load i32, i32* @current_sym_nchars, align 4
  %1075 = add nsw i32 %1074, 1
  store i32 %1075, i32* @current_sym_nchars, align 4
  %1076 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %1077 = icmp ne i32 %1076, 0
  br i1 %1077, label %1078, label %1118

; <label>:1078:                                   ; preds = %1071
  %1079 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1080 = bitcast %union.tree_node* %1079 to %struct.tree_common*
  %1081 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1080, i32 0, i32 2
  %1082 = load i32, i32* %1081, align 8
  %1083 = and i32 %1082, 255
  %1084 = icmp eq i32 %1083, 20
  br i1 %1084, label %1085, label %1118

; <label>:1085:                                   ; preds = %1078
  %1086 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1087 = bitcast %union.tree_node* %1086 to %struct.tree_type*
  %1088 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1087, i32 0, i32 12
  %1089 = load %union.tree_node*, %union.tree_node** %1088, align 8
  %1090 = icmp ne %union.tree_node* %1089, null
  br i1 %1090, label %1091, label %1118

; <label>:1091:                                   ; preds = %1085
  store i32 1, i32* @have_used_extensions, align 4
  %1092 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1093 = call i32 @putc(i32 126, %struct._IO_FILE* %1092)
  %1094 = load i32, i32* @current_sym_nchars, align 4
  %1095 = add nsw i32 %1094, 1
  store i32 %1095, i32* @current_sym_nchars, align 4
  %1096 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1097 = bitcast %union.tree_node* %1096 to %struct.tree_type*
  %1098 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1097, i32 0, i32 12
  %1099 = load %union.tree_node*, %union.tree_node** %1098, align 8
  %1100 = icmp ne %union.tree_node* %1099, null
  br i1 %1100, label %1101, label %1113

; <label>:1101:                                   ; preds = %1091
  %1102 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1103 = call i32 @putc(i32 37, %struct._IO_FILE* %1102)
  %1104 = load i32, i32* @current_sym_nchars, align 4
  %1105 = add nsw i32 %1104, 1
  store i32 %1105, i32* @current_sym_nchars, align 4
  %1106 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1107 = bitcast %union.tree_node* %1106 to %struct.tree_type*
  %1108 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1107, i32 0, i32 12
  %1109 = load %union.tree_node*, %union.tree_node** %1108, align 8
  %1110 = bitcast %union.tree_node* %1109 to %struct.tree_decl*
  %1111 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1110, i32 0, i32 22
  %1112 = load %union.tree_node*, %union.tree_node** %1111, align 8
  call void @dbxout_type(%union.tree_node* %1112, i32 0)
  br label %1113

; <label>:1113:                                   ; preds = %1101, %1091
  %1114 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1115 = call i32 @putc(i32 59, %struct._IO_FILE* %1114)
  %1116 = load i32, i32* @current_sym_nchars, align 4
  %1117 = add nsw i32 %1116, 1
  store i32 %1117, i32* @current_sym_nchars, align 4
  br label %1118

; <label>:1118:                                   ; preds = %1113, %1085, %1078, %1071
  br label %1404

; <label>:1119:                                   ; preds = %284
  %1120 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1121 = bitcast %union.tree_node* %1120 to %struct.tree_type*
  %1122 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1121, i32 0, i32 11
  %1123 = load %union.tree_node*, %union.tree_node** %1122, align 8
  %1124 = icmp ne %union.tree_node* %1123, null
  br i1 %1124, label %1125, label %1151

; <label>:1125:                                   ; preds = %1119
  %1126 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1127 = bitcast %union.tree_node* %1126 to %struct.tree_type*
  %1128 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1127, i32 0, i32 11
  %1129 = load %union.tree_node*, %union.tree_node** %1128, align 8
  %1130 = bitcast %union.tree_node* %1129 to %struct.tree_common*
  %1131 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1130, i32 0, i32 2
  %1132 = load i32, i32* %1131, align 8
  %1133 = and i32 %1132, 255
  %1134 = icmp eq i32 %1133, 33
  br i1 %1134, label %1135, label %1148

; <label>:1135:                                   ; preds = %1125
  %1136 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1137 = bitcast %union.tree_node* %1136 to %struct.tree_type*
  %1138 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1137, i32 0, i32 11
  %1139 = load %union.tree_node*, %union.tree_node** %1138, align 8
  %1140 = bitcast %union.tree_node* %1139 to %struct.tree_decl*
  %1141 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1140, i32 0, i32 5
  %1142 = bitcast i48* %1141 to i64*
  %1143 = load i64, i64* %1142, align 8
  %1144 = lshr i64 %1143, 14
  %1145 = and i64 %1144, 1
  %1146 = trunc i64 %1145 to i32
  %1147 = icmp ne i32 %1146, 0
  br i1 %1147, label %1151, label %1148

; <label>:1148:                                   ; preds = %1135, %1125
  %1149 = load i32, i32* %4, align 4
  %1150 = icmp ne i32 %1149, 0
  br i1 %1150, label %1151, label %1157

; <label>:1151:                                   ; preds = %1148, %1135, %1119
  %1152 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1153 = bitcast %union.tree_node* %1152 to %struct.tree_type*
  %1154 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1153, i32 0, i32 2
  %1155 = load %union.tree_node*, %union.tree_node** %1154, align 8
  %1156 = icmp ne %union.tree_node* %1155, null
  br i1 %1156, label %1176, label %1157

; <label>:1157:                                   ; preds = %1151, %1148
  %1158 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0))
  %1160 = load i32, i32* @current_sym_nchars, align 4
  %1161 = add nsw i32 %1160, 2
  store i32 %1161, i32* @current_sym_nchars, align 4
  %1162 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void @dbxout_type_name(%union.tree_node* %1162)
  %1163 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %1164 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1165 = bitcast %union.tree_node* %1164 to %struct.tree_type*
  %1166 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1165, i32 0, i32 10
  %1167 = bitcast %union.anon.2* %1166 to i32*
  %1168 = load i32, i32* %1167, align 8
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %1163, i64 %1169
  %1171 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %1170, i32 0, i32 0
  store i32 1, i32* %1171, align 4
  %1172 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1173 = call i32 @putc(i32 58, %struct._IO_FILE* %1172)
  %1174 = load i32, i32* @current_sym_nchars, align 4
  %1175 = add nsw i32 %1174, 1
  store i32 %1175, i32* @current_sym_nchars, align 4
  br label %1404

; <label>:1176:                                   ; preds = %1151
  %1177 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %1178 = icmp ne i32 %1177, 0
  br i1 %1178, label %1179, label %1201

; <label>:1179:                                   ; preds = %1176
  %1180 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1181 = bitcast %union.tree_node* %1180 to %struct.tree_type*
  %1182 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1181, i32 0, i32 6
  %1183 = load i32, i32* %1182, align 4
  %1184 = and i32 %1183, 511
  %1185 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  %1186 = bitcast %union.tree_node* %1185 to %struct.tree_type*
  %1187 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1186, i32 0, i32 6
  %1188 = load i32, i32* %1187, align 4
  %1189 = and i32 %1188, 511
  %1190 = icmp ne i32 %1184, %1189
  br i1 %1190, label %1191, label %1201

; <label>:1191:                                   ; preds = %1179
  %1192 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1193 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1194 = bitcast %union.tree_node* %1193 to %struct.tree_type*
  %1195 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1194, i32 0, i32 6
  %1196 = load i32, i32* %1195, align 4
  %1197 = and i32 %1196, 511
  %1198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %1197)
  %1199 = load i32, i32* @current_sym_nchars, align 4
  %1200 = add nsw i32 %1199, 5
  store i32 %1200, i32* @current_sym_nchars, align 4
  br label %1201

; <label>:1201:                                   ; preds = %1191, %1179, %1176
  %1202 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1203 = call i32 @putc(i32 101, %struct._IO_FILE* %1202)
  %1204 = load i32, i32* @current_sym_nchars, align 4
  %1205 = add nsw i32 %1204, 1
  store i32 %1205, i32* @current_sym_nchars, align 4
  %1206 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1207 = bitcast %union.tree_node* %1206 to %struct.tree_type*
  %1208 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1207, i32 0, i32 1
  %1209 = load %union.tree_node*, %union.tree_node** %1208, align 8
  store %union.tree_node* %1209, %union.tree_node** %5, align 8
  br label %1210

; <label>:1210:                                   ; preds = %1302, %1201
  %1211 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1212 = icmp ne %union.tree_node* %1211, null
  br i1 %1212, label %1213, label %1307

; <label>:1213:                                   ; preds = %1210
  %1214 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1215 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1216 = bitcast %union.tree_node* %1215 to %struct.tree_list*
  %1217 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %1216, i32 0, i32 1
  %1218 = load %union.tree_node*, %union.tree_node** %1217, align 8
  %1219 = bitcast %union.tree_node* %1218 to %struct.tree_identifier*
  %1220 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %1219, i32 0, i32 1
  %1221 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %1220, i32 0, i32 1
  %1222 = load i8*, i8** %1221, align 8
  %1223 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* %1222)
  %1224 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1225 = bitcast %union.tree_node* %1224 to %struct.tree_list*
  %1226 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %1225, i32 0, i32 1
  %1227 = load %union.tree_node*, %union.tree_node** %1226, align 8
  %1228 = bitcast %union.tree_node* %1227 to %struct.tree_identifier*
  %1229 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %1228, i32 0, i32 1
  %1230 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %1229, i32 0, i32 0
  %1231 = load i32, i32* %1230, align 8
  %1232 = add i32 %1231, 1
  %1233 = load i32, i32* @current_sym_nchars, align 4
  %1234 = add i32 %1233, %1232
  store i32 %1234, i32* @current_sym_nchars, align 4
  %1235 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1236 = bitcast %union.tree_node* %1235 to %struct.tree_list*
  %1237 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %1236, i32 0, i32 2
  %1238 = load %union.tree_node*, %union.tree_node** %1237, align 8
  %1239 = bitcast %union.tree_node* %1238 to %struct.tree_int_cst*
  %1240 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %1239, i32 0, i32 2
  %1241 = getelementptr inbounds %struct.anon, %struct.anon* %1240, i32 0, i32 1
  %1242 = load i64, i64* %1241, align 8
  %1243 = icmp eq i64 %1242, 0
  br i1 %1243, label %1244, label %1253

; <label>:1244:                                   ; preds = %1213
  %1245 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1246 = bitcast %union.tree_node* %1245 to %struct.tree_list*
  %1247 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %1246, i32 0, i32 2
  %1248 = load %union.tree_node*, %union.tree_node** %1247, align 8
  %1249 = bitcast %union.tree_node* %1248 to %struct.tree_int_cst*
  %1250 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %1249, i32 0, i32 2
  %1251 = getelementptr inbounds %struct.anon, %struct.anon* %1250, i32 0, i32 0
  %1252 = load i64, i64* %1251, align 8
  call void @print_wide_int(i64 %1252)
  br label %1288

; <label>:1253:                                   ; preds = %1213
  %1254 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1255 = bitcast %union.tree_node* %1254 to %struct.tree_list*
  %1256 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %1255, i32 0, i32 2
  %1257 = load %union.tree_node*, %union.tree_node** %1256, align 8
  %1258 = bitcast %union.tree_node* %1257 to %struct.tree_int_cst*
  %1259 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %1258, i32 0, i32 2
  %1260 = getelementptr inbounds %struct.anon, %struct.anon* %1259, i32 0, i32 1
  %1261 = load i64, i64* %1260, align 8
  %1262 = icmp eq i64 %1261, -1
  br i1 %1262, label %1263, label %1282

; <label>:1263:                                   ; preds = %1253
  %1264 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1265 = bitcast %union.tree_node* %1264 to %struct.tree_list*
  %1266 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %1265, i32 0, i32 2
  %1267 = load %union.tree_node*, %union.tree_node** %1266, align 8
  %1268 = bitcast %union.tree_node* %1267 to %struct.tree_int_cst*
  %1269 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %1268, i32 0, i32 2
  %1270 = getelementptr inbounds %struct.anon, %struct.anon* %1269, i32 0, i32 0
  %1271 = load i64, i64* %1270, align 8
  %1272 = icmp slt i64 %1271, 0
  br i1 %1272, label %1273, label %1282

; <label>:1273:                                   ; preds = %1263
  %1274 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1275 = bitcast %union.tree_node* %1274 to %struct.tree_list*
  %1276 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %1275, i32 0, i32 2
  %1277 = load %union.tree_node*, %union.tree_node** %1276, align 8
  %1278 = bitcast %union.tree_node* %1277 to %struct.tree_int_cst*
  %1279 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %1278, i32 0, i32 2
  %1280 = getelementptr inbounds %struct.anon, %struct.anon* %1279, i32 0, i32 0
  %1281 = load i64, i64* %1280, align 8
  call void @print_wide_int(i64 %1281)
  br label %1287

; <label>:1282:                                   ; preds = %1263, %1253
  %1283 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1284 = bitcast %union.tree_node* %1283 to %struct.tree_list*
  %1285 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %1284, i32 0, i32 2
  %1286 = load %union.tree_node*, %union.tree_node** %1285, align 8
  call void @print_int_cst_octal(%union.tree_node* %1286)
  br label %1287

; <label>:1287:                                   ; preds = %1282, %1273
  br label %1288

; <label>:1288:                                   ; preds = %1287, %1244
  %1289 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1290 = call i32 @putc(i32 44, %struct._IO_FILE* %1289)
  %1291 = load i32, i32* @current_sym_nchars, align 4
  %1292 = add nsw i32 %1291, 1
  store i32 %1292, i32* @current_sym_nchars, align 4
  %1293 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1294 = bitcast %union.tree_node* %1293 to %struct.tree_common*
  %1295 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1294, i32 0, i32 0
  %1296 = load %union.tree_node*, %union.tree_node** %1295, align 8
  %1297 = icmp ne %union.tree_node* %1296, null
  br i1 %1297, label %1298, label %1301

; <label>:1298:                                   ; preds = %1288
  br label %1299

; <label>:1299:                                   ; preds = %1298
  br label %1300

; <label>:1300:                                   ; preds = %1299
  br label %1301

; <label>:1301:                                   ; preds = %1300, %1288
  br label %1302

; <label>:1302:                                   ; preds = %1301
  %1303 = load %union.tree_node*, %union.tree_node** %5, align 8
  %1304 = bitcast %union.tree_node* %1303 to %struct.tree_common*
  %1305 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1304, i32 0, i32 0
  %1306 = load %union.tree_node*, %union.tree_node** %1305, align 8
  store %union.tree_node* %1306, %union.tree_node** %5, align 8
  br label %1210

; <label>:1307:                                   ; preds = %1210
  %1308 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1309 = call i32 @putc(i32 59, %struct._IO_FILE* %1308)
  %1310 = load i32, i32* @current_sym_nchars, align 4
  %1311 = add nsw i32 %1310, 1
  store i32 %1311, i32* @current_sym_nchars, align 4
  br label %1404

; <label>:1312:                                   ; preds = %284
  %1313 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1314 = call i32 @putc(i32 42, %struct._IO_FILE* %1313)
  %1315 = load i32, i32* @current_sym_nchars, align 4
  %1316 = add nsw i32 %1315, 1
  store i32 %1316, i32* @current_sym_nchars, align 4
  %1317 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1318 = bitcast %union.tree_node* %1317 to %struct.tree_common*
  %1319 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1318, i32 0, i32 1
  %1320 = load %union.tree_node*, %union.tree_node** %1319, align 8
  call void @dbxout_type(%union.tree_node* %1320, i32 0)
  br label %1404

; <label>:1321:                                   ; preds = %284
  %1322 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %1323 = icmp ne i32 %1322, 0
  br i1 %1323, label %1324, label %1349

; <label>:1324:                                   ; preds = %1321
  store i32 1, i32* @have_used_extensions, align 4
  %1325 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1326 = call i32 @putc(i32 35, %struct._IO_FILE* %1325)
  %1327 = load i32, i32* @current_sym_nchars, align 4
  %1328 = add nsw i32 %1327, 1
  store i32 %1328, i32* @current_sym_nchars, align 4
  %1329 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1330 = bitcast %union.tree_node* %1329 to %struct.tree_type*
  %1331 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1330, i32 0, i32 13
  %1332 = load %union.tree_node*, %union.tree_node** %1331, align 8
  call void @dbxout_type(%union.tree_node* %1332, i32 0)
  %1333 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1334 = call i32 @putc(i32 44, %struct._IO_FILE* %1333)
  %1335 = load i32, i32* @current_sym_nchars, align 4
  %1336 = add nsw i32 %1335, 1
  store i32 %1336, i32* @current_sym_nchars, align 4
  %1337 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1338 = bitcast %union.tree_node* %1337 to %struct.tree_common*
  %1339 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1338, i32 0, i32 1
  %1340 = load %union.tree_node*, %union.tree_node** %1339, align 8
  call void @dbxout_type(%union.tree_node* %1340, i32 0)
  %1341 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1342 = bitcast %union.tree_node* %1341 to %struct.tree_type*
  %1343 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1342, i32 0, i32 1
  %1344 = load %union.tree_node*, %union.tree_node** %1343, align 8
  call void @dbxout_args(%union.tree_node* %1344)
  %1345 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1346 = call i32 @putc(i32 59, %struct._IO_FILE* %1345)
  %1347 = load i32, i32* @current_sym_nchars, align 4
  %1348 = add nsw i32 %1347, 1
  store i32 %1348, i32* @current_sym_nchars, align 4
  br label %1354

; <label>:1349:                                   ; preds = %1321
  %1350 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1351 = bitcast %union.tree_node* %1350 to %struct.tree_common*
  %1352 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1351, i32 0, i32 1
  %1353 = load %union.tree_node*, %union.tree_node** %1352, align 8
  call void @dbxout_type(%union.tree_node* %1353, i32 0)
  br label %1354

; <label>:1354:                                   ; preds = %1349, %1324
  br label %1404

; <label>:1355:                                   ; preds = %284
  %1356 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %1357 = icmp ne i32 %1356, 0
  br i1 %1357, label %1358, label %1375

; <label>:1358:                                   ; preds = %1355
  store i32 1, i32* @have_used_extensions, align 4
  %1359 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1360 = call i32 @putc(i32 64, %struct._IO_FILE* %1359)
  %1361 = load i32, i32* @current_sym_nchars, align 4
  %1362 = add nsw i32 %1361, 1
  store i32 %1362, i32* @current_sym_nchars, align 4
  %1363 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1364 = bitcast %union.tree_node* %1363 to %struct.tree_type*
  %1365 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1364, i32 0, i32 13
  %1366 = load %union.tree_node*, %union.tree_node** %1365, align 8
  call void @dbxout_type(%union.tree_node* %1366, i32 0)
  %1367 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1368 = call i32 @putc(i32 44, %struct._IO_FILE* %1367)
  %1369 = load i32, i32* @current_sym_nchars, align 4
  %1370 = add nsw i32 %1369, 1
  store i32 %1370, i32* @current_sym_nchars, align 4
  %1371 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1372 = bitcast %union.tree_node* %1371 to %struct.tree_common*
  %1373 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1372, i32 0, i32 1
  %1374 = load %union.tree_node*, %union.tree_node** %1373, align 8
  call void @dbxout_type(%union.tree_node* %1374, i32 0)
  br label %1377

; <label>:1375:                                   ; preds = %1355
  %1376 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  call void @dbxout_type(%union.tree_node* %1376, i32 0)
  br label %1377

; <label>:1377:                                   ; preds = %1375, %1358
  br label %1404

; <label>:1378:                                   ; preds = %284
  %1379 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %1380 = icmp ne i32 %1379, 0
  br i1 %1380, label %1381, label %1382

; <label>:1381:                                   ; preds = %1378
  store i32 1, i32* @have_used_extensions, align 4
  br label %1382

; <label>:1382:                                   ; preds = %1381, %1378
  %1383 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %1384 = icmp ne i32 %1383, 0
  %1385 = select i1 %1384, i32 38, i32 42
  %1386 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1387 = call i32 @putc(i32 %1385, %struct._IO_FILE* %1386)
  %1388 = load i32, i32* @current_sym_nchars, align 4
  %1389 = add nsw i32 %1388, 1
  store i32 %1389, i32* @current_sym_nchars, align 4
  %1390 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1391 = bitcast %union.tree_node* %1390 to %struct.tree_common*
  %1392 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1391, i32 0, i32 1
  %1393 = load %union.tree_node*, %union.tree_node** %1392, align 8
  call void @dbxout_type(%union.tree_node* %1393, i32 0)
  br label %1404

; <label>:1394:                                   ; preds = %284
  %1395 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1396 = call i32 @putc(i32 102, %struct._IO_FILE* %1395)
  %1397 = load i32, i32* @current_sym_nchars, align 4
  %1398 = add nsw i32 %1397, 1
  store i32 %1398, i32* @current_sym_nchars, align 4
  %1399 = load %union.tree_node*, %union.tree_node** %3, align 8
  %1400 = bitcast %union.tree_node* %1399 to %struct.tree_common*
  %1401 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1400, i32 0, i32 1
  %1402 = load %union.tree_node*, %union.tree_node** %1401, align 8
  call void @dbxout_type(%union.tree_node* %1402, i32 0)
  br label %1404

; <label>:1403:                                   ; preds = %284
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1720, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.dbxout_type, i32 0, i32 0)) #8
  unreachable

; <label>:1404:                                   ; preds = %1394, %1382, %1377, %1354, %1312, %1307, %1157, %1118, %885, %771, %716, %696, %667, %573, %572, %551, %502, %501, %290, %274, %252, %222, %194, %192
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_finish_symbol(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca i32, align 4
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %14

; <label>:6:                                      ; preds = %1
  %7 = load %union.tree_node*, %union.tree_node** %2, align 8
  %8 = icmp ne %union.tree_node* %7, null
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %6
  %10 = load %union.tree_node*, %union.tree_node** %2, align 8
  %11 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %12 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  br label %14

; <label>:14:                                     ; preds = %9, %6, %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %16 = load i32, i32* @current_sym_code, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i32 %16, i32 %17)
  %19 = load %struct.rtx_def*, %struct.rtx_def** @current_sym_addr, align 8
  %20 = icmp ne %struct.rtx_def* %19, null
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** @current_sym_addr, align 8
  call void @output_addr_const(%struct._IO_FILE* %22, %struct.rtx_def* %23)
  br label %28

; <label>:24:                                     ; preds = %14
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %26 = load i32, i32* @current_sym_value, align 4
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 %26)
  br label %28

; <label>:28:                                     ; preds = %24, %21
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %30 = call i32 @putc(i32 10, %struct._IO_FILE* %29)
  ret void
}

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare i32 @putc(i32, %struct._IO_FILE*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare %struct.rtx_def* @eliminate_regs(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @dbxout_symbol_location(%union.tree_node*, %union.tree_node*, i8*, %struct.rtx_def*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.tree_node*, align 8
  %7 = alloca %union.tree_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtx_def*, align 8
  %13 = alloca %struct.rtx_def*, align 8
  %14 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %6, align 8
  store %union.tree_node* %1, %union.tree_node** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 63
  br i1 %19, label %20, label %51

; <label>:20:                                     ; preds = %4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %12, align 8
  br label %22

; <label>:22:                                     ; preds = %28, %20
  %23 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 63
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %22
  %29 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %30, i64 0, i64 0
  %32 = bitcast %union.rtunion_def* %31 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %12, align 8
  br label %22

; <label>:34:                                     ; preds = %22
  %35 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 61
  br i1 %39, label %40, label %49

; <label>:40:                                     ; preds = %34
  %41 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %42, i64 0, i64 0
  %44 = bitcast %union.rtunion_def* %43 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = icmp uge i32 %45, 53
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %40
  store i32 0, i32* %5, align 4
  br label %517

; <label>:48:                                     ; preds = %40
  br label %49

; <label>:49:                                     ; preds = %48, %34
  %50 = call %struct.rtx_def* @alter_subreg(%struct.rtx_def** %9)
  store %struct.rtx_def* %50, %struct.rtx_def** %9, align 8
  br label %51

; <label>:51:                                     ; preds = %49, %4
  %52 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 61
  br i1 %56, label %57, label %67

; <label>:57:                                     ; preds = %51
  %58 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %59, i64 0, i64 0
  %61 = bitcast %union.rtunion_def* %60 to i32*
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp sge i32 %63, 53
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %57
  store i32 0, i32* %5, align 4
  br label %517

; <label>:66:                                     ; preds = %57
  br label %67

; <label>:67:                                     ; preds = %66, %51
  %68 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 66
  br i1 %72, label %73, label %164

; <label>:73:                                     ; preds = %67
  %74 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %75, i64 0, i64 0
  %77 = bitcast %union.rtunion_def* %76 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %77, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 68
  br i1 %82, label %83, label %164

; <label>:83:                                     ; preds = %73
  %84 = load %union.tree_node*, %union.tree_node** %6, align 8
  %85 = bitcast %union.tree_node* %84 to %struct.tree_common*
  %86 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = lshr i32 %87, 19
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

; <label>:91:                                     ; preds = %83
  store i32 71, i32* %10, align 4
  store i32 32, i32* @current_sym_code, align 4
  br label %163

; <label>:92:                                     ; preds = %83
  %93 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %94, i64 0, i64 0
  %96 = bitcast %union.rtunion_def* %95 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %96, align 8
  store %struct.rtx_def* %97, %struct.rtx_def** @current_sym_addr, align 8
  %98 = load %union.tree_node*, %union.tree_node** %6, align 8
  %99 = call %union.tree_node* @decl_function_context(%union.tree_node* %98)
  %100 = icmp ne %union.tree_node* %99, null
  %101 = select i1 %100, i32 86, i32 83
  store i32 %101, i32* %10, align 4
  %102 = load %union.tree_node*, %union.tree_node** %6, align 8
  %103 = bitcast %union.tree_node* %102 to %struct.tree_decl*
  %104 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %103, i32 0, i32 12
  %105 = load %union.tree_node*, %union.tree_node** %104, align 8
  %106 = icmp eq %union.tree_node* %105, null
  br i1 %106, label %118, label %107

; <label>:107:                                    ; preds = %92
  %108 = load i8*, i8** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 0), align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0)) #7
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

; <label>:111:                                    ; preds = %107
  %112 = load %union.tree_node*, %union.tree_node** %6, align 8
  %113 = bitcast %union.tree_node* %112 to %struct.tree_decl*
  %114 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %113, i32 0, i32 12
  %115 = load %union.tree_node*, %union.tree_node** %114, align 8
  %116 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16
  %117 = icmp eq %union.tree_node* %115, %116
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %111, %92
  store i32 40, i32* @current_sym_code, align 4
  br label %162

; <label>:119:                                    ; preds = %111, %107
  %120 = load %union.tree_node*, %union.tree_node** %6, align 8
  %121 = bitcast %union.tree_node* %120 to %struct.tree_decl*
  %122 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %121, i32 0, i32 5
  %123 = bitcast i48* %122 to i64*
  %124 = load i64, i64* %123, align 8
  %125 = lshr i64 %124, 12
  %126 = and i64 %125, 1
  %127 = trunc i64 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

; <label>:129:                                    ; preds = %119
  store i32 36, i32* @current_sym_code, align 4
  br label %161

; <label>:130:                                    ; preds = %119
  %131 = load %struct.rtx_def*, %struct.rtx_def** @current_sym_addr, align 8
  %132 = bitcast %struct.rtx_def* %131 to i32*
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 68
  br i1 %135, label %136, label %160

; <label>:136:                                    ; preds = %130
  %137 = load %struct.rtx_def*, %struct.rtx_def** @current_sym_addr, align 8
  %138 = bitcast %struct.rtx_def* %137 to i32*
  %139 = load i32, i32* %138, align 8
  %140 = lshr i32 %139, 26
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

; <label>:143:                                    ; preds = %136
  %144 = load %struct.rtx_def*, %struct.rtx_def** @current_sym_addr, align 8
  %145 = call %struct.rtx_def* @get_pool_constant(%struct.rtx_def* %144)
  store %struct.rtx_def* %145, %struct.rtx_def** %13, align 8
  %146 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %147 = bitcast %struct.rtx_def* %146 to i32*
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, 68
  br i1 %150, label %157, label %151

; <label>:151:                                    ; preds = %143
  %152 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, 65535
  %156 = icmp eq i32 %155, 67
  br i1 %156, label %157, label %159

; <label>:157:                                    ; preds = %151, %143
  %158 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  store %struct.rtx_def* %158, %struct.rtx_def** @current_sym_addr, align 8
  br label %159

; <label>:159:                                    ; preds = %157, %151
  br label %160

; <label>:160:                                    ; preds = %159, %136, %130
  store i32 38, i32* @current_sym_code, align 4
  br label %161

; <label>:161:                                    ; preds = %160, %129
  br label %162

; <label>:162:                                    ; preds = %161, %118
  br label %163

; <label>:163:                                    ; preds = %162, %91
  br label %511

; <label>:164:                                    ; preds = %73, %67
  %165 = load i32, i32* %11, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %183

; <label>:167:                                    ; preds = %164
  store i32 114, i32* %10, align 4
  store i32 64, i32* @current_sym_code, align 4
  %168 = load i32, i32* @target_flags, align 4
  %169 = and i32 %168, 33554432
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

; <label>:171:                                    ; preds = %167
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [53 x i32], [53 x i32]* @dbx64_register_map, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  br label %181

; <label>:176:                                    ; preds = %167
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [53 x i32], [53 x i32]* @svr4_dbx_register_map, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  br label %181

; <label>:181:                                    ; preds = %176, %171
  %182 = phi i32 [ %175, %171 ], [ %180, %176 ]
  store i32 %182, i32* @current_sym_value, align 4
  br label %510

; <label>:183:                                    ; preds = %164
  %184 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %185 = bitcast %struct.rtx_def* %184 to i32*
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 66
  br i1 %188, label %189, label %341

; <label>:189:                                    ; preds = %183
  %190 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %190, i32 0, i32 1
  %192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %191, i64 0, i64 0
  %193 = bitcast %union.rtunion_def* %192 to %struct.rtx_def**
  %194 = load %struct.rtx_def*, %struct.rtx_def** %193, align 8
  %195 = bitcast %struct.rtx_def* %194 to i32*
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 66
  br i1 %198, label %242, label %199

; <label>:199:                                    ; preds = %189
  %200 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %200, i32 0, i32 1
  %202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %201, i64 0, i64 0
  %203 = bitcast %union.rtunion_def* %202 to %struct.rtx_def**
  %204 = load %struct.rtx_def*, %struct.rtx_def** %203, align 8
  %205 = bitcast %struct.rtx_def* %204 to i32*
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, 65535
  %208 = icmp eq i32 %207, 61
  br i1 %208, label %209, label %341

; <label>:209:                                    ; preds = %199
  %210 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %211 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %212 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %211, i64 0, i64 0
  %213 = bitcast %union.rtunion_def* %212 to %struct.rtx_def**
  %214 = load %struct.rtx_def*, %struct.rtx_def** %213, align 8
  %215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %214, i32 0, i32 1
  %216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %215, i64 0, i64 0
  %217 = bitcast %union.rtunion_def* %216 to i32*
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 6
  br i1 %219, label %220, label %341

; <label>:220:                                    ; preds = %209
  %221 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %222 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %221, i32 0, i32 1
  %223 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %222, i64 0, i64 0
  %224 = bitcast %union.rtunion_def* %223 to %struct.rtx_def**
  %225 = load %struct.rtx_def*, %struct.rtx_def** %224, align 8
  %226 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %225, i32 0, i32 1
  %227 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %226, i64 0, i64 0
  %228 = bitcast %union.rtunion_def* %227 to i32*
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 7
  br i1 %230, label %231, label %341

; <label>:231:                                    ; preds = %220
  %232 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %232, i32 0, i32 1
  %234 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %233, i64 0, i64 0
  %235 = bitcast %union.rtunion_def* %234 to %struct.rtx_def**
  %236 = load %struct.rtx_def*, %struct.rtx_def** %235, align 8
  %237 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %236, i32 0, i32 1
  %238 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %237, i64 0, i64 0
  %239 = bitcast %union.rtunion_def* %238 to i32*
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 16
  br i1 %241, label %242, label %341

; <label>:242:                                    ; preds = %231, %189
  %243 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %243, i32 0, i32 1
  %245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %244, i64 0, i64 0
  %246 = bitcast %union.rtunion_def* %245 to %struct.rtx_def**
  %247 = load %struct.rtx_def*, %struct.rtx_def** %246, align 8
  %248 = bitcast %struct.rtx_def* %247 to i32*
  %249 = load i32, i32* %248, align 8
  %250 = and i32 %249, 65535
  %251 = icmp eq i32 %250, 61
  br i1 %251, label %252, label %296

; <label>:252:                                    ; preds = %242
  store i32 114, i32* %10, align 4
  store i32 64, i32* @current_sym_code, align 4
  %253 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %254 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %253, i32 0, i32 1
  %255 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %254, i64 0, i64 0
  %256 = bitcast %union.rtunion_def* %255 to %struct.rtx_def**
  %257 = load %struct.rtx_def*, %struct.rtx_def** %256, align 8
  %258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %258, i64 0, i64 0
  %260 = bitcast %union.rtunion_def* %259 to i32*
  %261 = load i32, i32* %260, align 8
  %262 = icmp uge i32 %261, 53
  br i1 %262, label %263, label %264

; <label>:263:                                    ; preds = %252
  store i32 0, i32* %5, align 4
  br label %517

; <label>:264:                                    ; preds = %252
  %265 = load i32, i32* @target_flags, align 4
  %266 = and i32 %265, 33554432
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %281

; <label>:268:                                    ; preds = %264
  %269 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %270 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %269, i32 0, i32 1
  %271 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %270, i64 0, i64 0
  %272 = bitcast %union.rtunion_def* %271 to %struct.rtx_def**
  %273 = load %struct.rtx_def*, %struct.rtx_def** %272, align 8
  %274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %273, i32 0, i32 1
  %275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %274, i64 0, i64 0
  %276 = bitcast %union.rtunion_def* %275 to i32*
  %277 = load i32, i32* %276, align 8
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds [53 x i32], [53 x i32]* @dbx64_register_map, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  br label %294

; <label>:281:                                    ; preds = %264
  %282 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %282, i32 0, i32 1
  %284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %283, i64 0, i64 0
  %285 = bitcast %union.rtunion_def* %284 to %struct.rtx_def**
  %286 = load %struct.rtx_def*, %struct.rtx_def** %285, align 8
  %287 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %286, i32 0, i32 1
  %288 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %287, i64 0, i64 0
  %289 = bitcast %union.rtunion_def* %288 to i32*
  %290 = load i32, i32* %289, align 8
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds [53 x i32], [53 x i32]* @svr4_dbx_register_map, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  br label %294

; <label>:294:                                    ; preds = %281, %268
  %295 = phi i32 [ %280, %268 ], [ %293, %281 ]
  store i32 %295, i32* @current_sym_value, align 4
  br label %332

; <label>:296:                                    ; preds = %242
  store i32 128, i32* @current_sym_code, align 4
  %297 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %298 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %297, i32 0, i32 1
  %299 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %298, i64 0, i64 0
  %300 = bitcast %union.rtunion_def* %299 to %struct.rtx_def**
  %301 = load %struct.rtx_def*, %struct.rtx_def** %300, align 8
  %302 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %303 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %302, i64 0, i64 0
  %304 = bitcast %union.rtunion_def* %303 to %struct.rtx_def**
  %305 = load %struct.rtx_def*, %struct.rtx_def** %304, align 8
  %306 = bitcast %struct.rtx_def* %305 to i32*
  %307 = load i32, i32* %306, align 8
  %308 = and i32 %307, 65535
  %309 = icmp eq i32 %308, 75
  br i1 %309, label %310, label %328

; <label>:310:                                    ; preds = %296
  %311 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %312 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %311, i32 0, i32 1
  %313 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %312, i64 0, i64 0
  %314 = bitcast %union.rtunion_def* %313 to %struct.rtx_def**
  %315 = load %struct.rtx_def*, %struct.rtx_def** %314, align 8
  %316 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %315, i32 0, i32 1
  %317 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %316, i64 0, i64 0
  %318 = bitcast %union.rtunion_def* %317 to %struct.rtx_def**
  %319 = load %struct.rtx_def*, %struct.rtx_def** %318, align 8
  %320 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %319, i32 0, i32 1
  %321 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %320, i64 0, i64 1
  %322 = bitcast %union.rtunion_def* %321 to %struct.rtx_def**
  %323 = load %struct.rtx_def*, %struct.rtx_def** %322, align 8
  %324 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %323, i32 0, i32 1
  %325 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %324, i64 0, i64 0
  %326 = bitcast %union.rtunion_def* %325 to i64*
  %327 = load i64, i64* %326, align 8
  br label %329

; <label>:328:                                    ; preds = %296
  br label %329

; <label>:329:                                    ; preds = %328, %310
  %330 = phi i64 [ %327, %310 ], [ 0, %328 ]
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* @current_sym_value, align 4
  br label %332

; <label>:332:                                    ; preds = %329, %294
  %333 = call %union.tree_node* @make_node(i32 13)
  store %union.tree_node* %333, %union.tree_node** %7, align 8
  %334 = load %union.tree_node*, %union.tree_node** %6, align 8
  %335 = bitcast %union.tree_node* %334 to %struct.tree_common*
  %336 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %335, i32 0, i32 1
  %337 = load %union.tree_node*, %union.tree_node** %336, align 8
  %338 = load %union.tree_node*, %union.tree_node** %7, align 8
  %339 = bitcast %union.tree_node* %338 to %struct.tree_common*
  %340 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %339, i32 0, i32 1
  store %union.tree_node* %337, %union.tree_node** %340, align 8
  br label %509

; <label>:341:                                    ; preds = %231, %220, %209, %199, %183
  %342 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %343 = bitcast %struct.rtx_def* %342 to i32*
  %344 = load i32, i32* %343, align 8
  %345 = and i32 %344, 65535
  %346 = icmp eq i32 %345, 66
  br i1 %346, label %347, label %385

; <label>:347:                                    ; preds = %341
  %348 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %349 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %348, i32 0, i32 1
  %350 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %349, i64 0, i64 0
  %351 = bitcast %union.rtunion_def* %350 to %struct.rtx_def**
  %352 = load %struct.rtx_def*, %struct.rtx_def** %351, align 8
  %353 = bitcast %struct.rtx_def* %352 to i32*
  %354 = load i32, i32* %353, align 8
  %355 = and i32 %354, 65535
  %356 = icmp eq i32 %355, 61
  br i1 %356, label %357, label %385

; <label>:357:                                    ; preds = %347
  store i32 128, i32* @current_sym_code, align 4
  %358 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %359 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %358, i32 0, i32 1
  %360 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %359, i64 0, i64 0
  %361 = bitcast %union.rtunion_def* %360 to %struct.rtx_def**
  %362 = load %struct.rtx_def*, %struct.rtx_def** %361, align 8
  %363 = bitcast %struct.rtx_def* %362 to i32*
  %364 = load i32, i32* %363, align 8
  %365 = and i32 %364, 65535
  %366 = icmp eq i32 %365, 75
  br i1 %366, label %367, label %381

; <label>:367:                                    ; preds = %357
  %368 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %368, i32 0, i32 1
  %370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %369, i64 0, i64 0
  %371 = bitcast %union.rtunion_def* %370 to %struct.rtx_def**
  %372 = load %struct.rtx_def*, %struct.rtx_def** %371, align 8
  %373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %372, i32 0, i32 1
  %374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %373, i64 0, i64 1
  %375 = bitcast %union.rtunion_def* %374 to %struct.rtx_def**
  %376 = load %struct.rtx_def*, %struct.rtx_def** %375, align 8
  %377 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %376, i32 0, i32 1
  %378 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %377, i64 0, i64 0
  %379 = bitcast %union.rtunion_def* %378 to i64*
  %380 = load i64, i64* %379, align 8
  br label %382

; <label>:381:                                    ; preds = %357
  br label %382

; <label>:382:                                    ; preds = %381, %367
  %383 = phi i64 [ %380, %367 ], [ 0, %381 ]
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* @current_sym_value, align 4
  br label %508

; <label>:385:                                    ; preds = %347, %341
  %386 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %387 = bitcast %struct.rtx_def* %386 to i32*
  %388 = load i32, i32* %387, align 8
  %389 = and i32 %388, 65535
  %390 = icmp eq i32 %389, 66
  br i1 %390, label %391, label %443

; <label>:391:                                    ; preds = %385
  %392 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %393 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %392, i32 0, i32 1
  %394 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %393, i64 0, i64 0
  %395 = bitcast %union.rtunion_def* %394 to %struct.rtx_def**
  %396 = load %struct.rtx_def*, %struct.rtx_def** %395, align 8
  %397 = bitcast %struct.rtx_def* %396 to i32*
  %398 = load i32, i32* %397, align 8
  %399 = and i32 %398, 65535
  %400 = icmp eq i32 %399, 75
  br i1 %400, label %401, label %443

; <label>:401:                                    ; preds = %391
  %402 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %403 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %402, i32 0, i32 1
  %404 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %403, i64 0, i64 0
  %405 = bitcast %union.rtunion_def* %404 to %struct.rtx_def**
  %406 = load %struct.rtx_def*, %struct.rtx_def** %405, align 8
  %407 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %406, i32 0, i32 1
  %408 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %407, i64 0, i64 1
  %409 = bitcast %union.rtunion_def* %408 to %struct.rtx_def**
  %410 = load %struct.rtx_def*, %struct.rtx_def** %409, align 8
  %411 = bitcast %struct.rtx_def* %410 to i32*
  %412 = load i32, i32* %411, align 8
  %413 = and i32 %412, 65535
  %414 = icmp eq i32 %413, 54
  br i1 %414, label %415, label %443

; <label>:415:                                    ; preds = %401
  store i32 128, i32* @current_sym_code, align 4
  %416 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %417 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %416, i32 0, i32 1
  %418 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %417, i64 0, i64 0
  %419 = bitcast %union.rtunion_def* %418 to %struct.rtx_def**
  %420 = load %struct.rtx_def*, %struct.rtx_def** %419, align 8
  %421 = bitcast %struct.rtx_def* %420 to i32*
  %422 = load i32, i32* %421, align 8
  %423 = and i32 %422, 65535
  %424 = icmp eq i32 %423, 75
  br i1 %424, label %425, label %439

; <label>:425:                                    ; preds = %415
  %426 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %427 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %426, i32 0, i32 1
  %428 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %427, i64 0, i64 0
  %429 = bitcast %union.rtunion_def* %428 to %struct.rtx_def**
  %430 = load %struct.rtx_def*, %struct.rtx_def** %429, align 8
  %431 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %430, i32 0, i32 1
  %432 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %431, i64 0, i64 1
  %433 = bitcast %union.rtunion_def* %432 to %struct.rtx_def**
  %434 = load %struct.rtx_def*, %struct.rtx_def** %433, align 8
  %435 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %434, i32 0, i32 1
  %436 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %435, i64 0, i64 0
  %437 = bitcast %union.rtunion_def* %436 to i64*
  %438 = load i64, i64* %437, align 8
  br label %440

; <label>:439:                                    ; preds = %415
  br label %440

; <label>:440:                                    ; preds = %439, %425
  %441 = phi i64 [ %438, %425 ], [ 0, %439 ]
  %442 = trunc i64 %441 to i32
  store i32 %442, i32* @current_sym_value, align 4
  br label %507

; <label>:443:                                    ; preds = %401, %391, %385
  %444 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %445 = bitcast %struct.rtx_def* %444 to i32*
  %446 = load i32, i32* %445, align 8
  %447 = and i32 %446, 65535
  %448 = icmp eq i32 %447, 66
  br i1 %448, label %449, label %469

; <label>:449:                                    ; preds = %443
  %450 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %451 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %450, i32 0, i32 1
  %452 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %451, i64 0, i64 0
  %453 = bitcast %union.rtunion_def* %452 to %struct.rtx_def**
  %454 = load %struct.rtx_def*, %struct.rtx_def** %453, align 8
  %455 = bitcast %struct.rtx_def* %454 to i32*
  %456 = load i32, i32* %455, align 8
  %457 = and i32 %456, 65535
  %458 = icmp eq i32 %457, 58
  br i1 %458, label %459, label %469

; <label>:459:                                    ; preds = %449
  store i32 40, i32* @current_sym_code, align 4
  store i32 86, i32* %10, align 4
  %460 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %461 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %460, i32 0, i32 1
  %462 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %461, i64 0, i64 0
  %463 = bitcast %union.rtunion_def* %462 to %struct.rtx_def**
  %464 = load %struct.rtx_def*, %struct.rtx_def** %463, align 8
  %465 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %464, i32 0, i32 1
  %466 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %465, i64 0, i64 0
  %467 = bitcast %union.rtunion_def* %466 to %struct.rtx_def**
  %468 = load %struct.rtx_def*, %struct.rtx_def** %467, align 8
  store %struct.rtx_def* %468, %struct.rtx_def** @current_sym_addr, align 8
  br label %506

; <label>:469:                                    ; preds = %449, %443
  %470 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %471 = bitcast %struct.rtx_def* %470 to i32*
  %472 = load i32, i32* %471, align 8
  %473 = and i32 %472, 65535
  %474 = icmp eq i32 %473, 65
  br i1 %474, label %475, label %505

; <label>:475:                                    ; preds = %469
  %476 = load %union.tree_node*, %union.tree_node** %7, align 8
  %477 = bitcast %union.tree_node* %476 to %struct.tree_common*
  %478 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 8
  %480 = and i32 %479, 255
  %481 = icmp ne i32 %480, 8
  br i1 %481, label %482, label %483

; <label>:482:                                    ; preds = %475
  store i32 0, i32* %5, align 4
  br label %517

; <label>:483:                                    ; preds = %475
  %484 = load %union.tree_node*, %union.tree_node** %7, align 8
  %485 = bitcast %union.tree_node* %484 to %struct.tree_common*
  %486 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %485, i32 0, i32 1
  %487 = load %union.tree_node*, %union.tree_node** %486, align 8
  store %union.tree_node* %487, %union.tree_node** %14, align 8
  %488 = load %union.tree_node*, %union.tree_node** %6, align 8
  %489 = load %union.tree_node*, %union.tree_node** %14, align 8
  %490 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %491 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %490, i32 0, i32 1
  %492 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %491, i64 0, i64 0
  %493 = bitcast %union.rtunion_def* %492 to %struct.rtx_def**
  %494 = load %struct.rtx_def*, %struct.rtx_def** %493, align 8
  %495 = call i32 @dbxout_symbol_location(%union.tree_node* %488, %union.tree_node* %489, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), %struct.rtx_def* %494)
  store i32 0, i32* @current_sym_code, align 4
  store i32 0, i32* @current_sym_value, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %496 = load %union.tree_node*, %union.tree_node** %6, align 8
  call void @dbxout_prepare_symbol(%union.tree_node* %496)
  %497 = load %union.tree_node*, %union.tree_node** %6, align 8
  %498 = load %union.tree_node*, %union.tree_node** %14, align 8
  %499 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %500 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %499, i32 0, i32 1
  %501 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %500, i64 0, i64 1
  %502 = bitcast %union.rtunion_def* %501 to %struct.rtx_def**
  %503 = load %struct.rtx_def*, %struct.rtx_def** %502, align 8
  %504 = call i32 @dbxout_symbol_location(%union.tree_node* %497, %union.tree_node* %498, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), %struct.rtx_def* %503)
  store i32 1, i32* %5, align 4
  br label %517

; <label>:505:                                    ; preds = %469
  store i32 0, i32* %5, align 4
  br label %517

; <label>:506:                                    ; preds = %459
  br label %507

; <label>:507:                                    ; preds = %506, %440
  br label %508

; <label>:508:                                    ; preds = %507, %382
  br label %509

; <label>:509:                                    ; preds = %508, %332
  br label %510

; <label>:510:                                    ; preds = %509, %181
  br label %511

; <label>:511:                                    ; preds = %510, %163
  %512 = load %union.tree_node*, %union.tree_node** %6, align 8
  %513 = load i8*, i8** %8, align 8
  %514 = load i32, i32* %10, align 4
  call void @dbxout_symbol_name(%union.tree_node* %512, i8* %513, i32 %514)
  %515 = load %union.tree_node*, %union.tree_node** %7, align 8
  call void @dbxout_type(%union.tree_node* %515, i32 0)
  %516 = load %union.tree_node*, %union.tree_node** %6, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %516)
  store i32 1, i32* %5, align 4
  br label %517

; <label>:517:                                    ; preds = %511, %505, %483, %482, %263, %65, %47
  %518 = load i32, i32* %5, align 4
  ret i32 %518
}

; Function Attrs: noinline nounwind uwtable
define i32 @dbxout_syms(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca i32, align 4
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %7, %1
  %5 = load %union.tree_node*, %union.tree_node** %2, align 8
  %6 = icmp ne %union.tree_node* %5, null
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %4
  %8 = load %union.tree_node*, %union.tree_node** %2, align 8
  %9 = call i32 @dbxout_symbol(%union.tree_node* %8, i32 1)
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %union.tree_node*, %union.tree_node** %2, align 8
  %13 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %13, i32 0, i32 0
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8
  store %union.tree_node* %15, %union.tree_node** %2, align 8
  br label %4

; <label>:16:                                     ; preds = %4
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define void @dbxout_parms(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %union.tree_node*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  br label %9

; <label>:9:                                      ; preds = %1038, %1
  %10 = load %union.tree_node*, %union.tree_node** %2, align 8
  %11 = icmp ne %union.tree_node* %10, null
  br i1 %11, label %12, label %1043

; <label>:12:                                     ; preds = %9
  %13 = load %union.tree_node*, %union.tree_node** %2, align 8
  %14 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %15 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %14, i32 0, i32 8
  %16 = load %union.tree_node*, %union.tree_node** %15, align 8
  %17 = icmp ne %union.tree_node* %16, null
  br i1 %17, label %18, label %1037

; <label>:18:                                     ; preds = %12
  %19 = load %union.tree_node*, %union.tree_node** %2, align 8
  %20 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %20, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %21, align 8
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16
  %24 = icmp ne %union.tree_node* %22, %23
  br i1 %24, label %25, label %1037

; <label>:25:                                     ; preds = %18
  %26 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @dbxout_prepare_symbol(%union.tree_node* %26)
  %27 = load %union.tree_node*, %union.tree_node** %2, align 8
  %28 = bitcast %union.tree_node* %27 to %struct.tree_decl*
  %29 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %28, i32 0, i32 19
  %30 = bitcast %union.anon.1* %29 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %32 = call %struct.rtx_def* @eliminate_regs(%struct.rtx_def* %31, i32 0, %struct.rtx_def* null)
  %33 = load %union.tree_node*, %union.tree_node** %2, align 8
  %34 = bitcast %union.tree_node* %33 to %struct.tree_decl*
  %35 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %34, i32 0, i32 19
  %36 = bitcast %union.anon.1* %35 to %struct.rtx_def**
  store %struct.rtx_def* %32, %struct.rtx_def** %36, align 8
  %37 = load %union.tree_node*, %union.tree_node** %2, align 8
  %38 = bitcast %union.tree_node* %37 to %struct.tree_decl*
  %39 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %38, i32 0, i32 17
  %40 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %41 = icmp ne %struct.rtx_def* %40, null
  br i1 %41, label %42, label %47

; <label>:42:                                     ; preds = %25
  %43 = load %union.tree_node*, %union.tree_node** %2, align 8
  %44 = bitcast %union.tree_node* %43 to %struct.tree_decl*
  %45 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %44, i32 0, i32 17
  %46 = load %struct.rtx_def*, %struct.rtx_def** %45, align 8
  br label %53

; <label>:47:                                     ; preds = %25
  %48 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %48, i8* null)
  %49 = load %union.tree_node*, %union.tree_node** %2, align 8
  %50 = bitcast %union.tree_node* %49 to %struct.tree_decl*
  %51 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %50, i32 0, i32 17
  %52 = load %struct.rtx_def*, %struct.rtx_def** %51, align 8
  br label %53

; <label>:53:                                     ; preds = %47, %42
  %54 = phi %struct.rtx_def* [ %46, %42 ], [ %52, %47 ]
  %55 = call %struct.rtx_def* @eliminate_regs(%struct.rtx_def* %54, i32 0, %struct.rtx_def* null)
  %56 = load %union.tree_node*, %union.tree_node** %2, align 8
  %57 = bitcast %union.tree_node* %56 to %struct.tree_decl*
  %58 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %57, i32 0, i32 17
  store %struct.rtx_def* %55, %struct.rtx_def** %58, align 8
  %59 = load %union.tree_node*, %union.tree_node** %2, align 8
  %60 = bitcast %union.tree_node* %59 to %struct.tree_decl*
  %61 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %60, i32 0, i32 19
  %62 = bitcast %union.anon.1* %61 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %62, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 66
  br i1 %67, label %68, label %141

; <label>:68:                                     ; preds = %53
  %69 = load %union.tree_node*, %union.tree_node** %2, align 8
  %70 = bitcast %union.tree_node* %69 to %struct.tree_decl*
  %71 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %70, i32 0, i32 19
  %72 = bitcast %union.anon.1* %71 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %72, align 8
  %74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %74, i64 0, i64 0
  %76 = bitcast %union.rtunion_def* %75 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %76, align 8
  store %struct.rtx_def* %77, %struct.rtx_def** %3, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 75
  br i1 %82, label %83, label %104

; <label>:83:                                     ; preds = %68
  %84 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %85, i64 0, i64 1
  %87 = bitcast %union.rtunion_def* %86 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %87, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, 65535
  %92 = icmp eq i32 %91, 54
  br i1 %92, label %93, label %104

; <label>:93:                                     ; preds = %83
  %94 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %95, i64 0, i64 1
  %97 = bitcast %union.rtunion_def* %96 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %97, align 8
  %99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %99, i64 0, i64 0
  %101 = bitcast %union.rtunion_def* %100 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* @current_sym_value, align 4
  br label %105

; <label>:104:                                    ; preds = %83, %68
  store i32 0, i32* @current_sym_value, align 4
  br label %105

; <label>:105:                                    ; preds = %104, %93
  store i32 160, i32* @current_sym_code, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %106 = load %union.tree_node*, %union.tree_node** %2, align 8
  %107 = bitcast %union.tree_node* %106 to %struct.tree_decl*
  %108 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %107, i32 0, i32 8
  %109 = load %union.tree_node*, %union.tree_node** %108, align 8
  %110 = icmp ne %union.tree_node* %109, null
  br i1 %110, label %111, label %131

; <label>:111:                                    ; preds = %105
  %112 = load %union.tree_node*, %union.tree_node** %2, align 8
  %113 = bitcast %union.tree_node* %112 to %struct.tree_decl*
  %114 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %113, i32 0, i32 8
  %115 = load %union.tree_node*, %union.tree_node** %114, align 8
  %116 = bitcast %union.tree_node* %115 to %struct.tree_identifier*
  %117 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add i32 2, %119
  store i32 %120, i32* @current_sym_nchars, align 4
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %122 = load %union.tree_node*, %union.tree_node** %2, align 8
  %123 = bitcast %union.tree_node* %122 to %struct.tree_decl*
  %124 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %123, i32 0, i32 8
  %125 = load %union.tree_node*, %union.tree_node** %124, align 8
  %126 = bitcast %union.tree_node* %125 to %struct.tree_identifier*
  %127 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %129, i32 112)
  br label %134

; <label>:131:                                    ; preds = %105
  store i32 8, i32* @current_sym_nchars, align 4
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 112)
  br label %134

; <label>:134:                                    ; preds = %131, %111
  %135 = load %union.tree_node*, %union.tree_node** %2, align 8
  %136 = bitcast %union.tree_node* %135 to %struct.tree_decl*
  %137 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %136, i32 0, i32 12
  %138 = load %union.tree_node*, %union.tree_node** %137, align 8
  call void @dbxout_type(%union.tree_node* %138, i32 0)
  %139 = load i32, i32* @current_sym_value, align 4
  store i32 %139, i32* @current_sym_value, align 4
  %140 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %140)
  br label %1036

; <label>:141:                                    ; preds = %53
  %142 = load %union.tree_node*, %union.tree_node** %2, align 8
  %143 = bitcast %union.tree_node* %142 to %struct.tree_decl*
  %144 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %143, i32 0, i32 17
  %145 = load %struct.rtx_def*, %struct.rtx_def** %144, align 8
  %146 = icmp ne %struct.rtx_def* %145, null
  br i1 %146, label %147, label %152

; <label>:147:                                    ; preds = %141
  %148 = load %union.tree_node*, %union.tree_node** %2, align 8
  %149 = bitcast %union.tree_node* %148 to %struct.tree_decl*
  %150 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %149, i32 0, i32 17
  %151 = load %struct.rtx_def*, %struct.rtx_def** %150, align 8
  br label %158

; <label>:152:                                    ; preds = %141
  %153 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %153, i8* null)
  %154 = load %union.tree_node*, %union.tree_node** %2, align 8
  %155 = bitcast %union.tree_node* %154 to %struct.tree_decl*
  %156 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %155, i32 0, i32 17
  %157 = load %struct.rtx_def*, %struct.rtx_def** %156, align 8
  br label %158

; <label>:158:                                    ; preds = %152, %147
  %159 = phi %struct.rtx_def* [ %151, %147 ], [ %157, %152 ]
  %160 = bitcast %struct.rtx_def* %159 to i32*
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 61
  br i1 %163, label %164, label %280

; <label>:164:                                    ; preds = %158
  store i32 64, i32* @current_sym_code, align 4
  store i8 80, i8* %5, align 1
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %165 = load %union.tree_node*, %union.tree_node** %2, align 8
  %166 = bitcast %union.tree_node* %165 to %struct.tree_decl*
  %167 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %166, i32 0, i32 17
  %168 = load %struct.rtx_def*, %struct.rtx_def** %167, align 8
  %169 = icmp ne %struct.rtx_def* %168, null
  br i1 %169, label %170, label %175

; <label>:170:                                    ; preds = %164
  %171 = load %union.tree_node*, %union.tree_node** %2, align 8
  %172 = bitcast %union.tree_node* %171 to %struct.tree_decl*
  %173 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %172, i32 0, i32 17
  %174 = load %struct.rtx_def*, %struct.rtx_def** %173, align 8
  br label %181

; <label>:175:                                    ; preds = %164
  %176 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %176, i8* null)
  %177 = load %union.tree_node*, %union.tree_node** %2, align 8
  %178 = bitcast %union.tree_node* %177 to %struct.tree_decl*
  %179 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %178, i32 0, i32 17
  %180 = load %struct.rtx_def*, %struct.rtx_def** %179, align 8
  br label %181

; <label>:181:                                    ; preds = %175, %170
  %182 = phi %struct.rtx_def* [ %174, %170 ], [ %180, %175 ]
  %183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %183, i64 0, i64 0
  %185 = bitcast %union.rtunion_def* %184 to i32*
  %186 = load i32, i32* %185, align 8
  %187 = icmp ult i32 %186, 53
  br i1 %187, label %188, label %211

; <label>:188:                                    ; preds = %181
  %189 = load %union.tree_node*, %union.tree_node** %2, align 8
  %190 = bitcast %union.tree_node* %189 to %struct.tree_decl*
  %191 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %190, i32 0, i32 17
  %192 = load %struct.rtx_def*, %struct.rtx_def** %191, align 8
  %193 = icmp ne %struct.rtx_def* %192, null
  br i1 %193, label %194, label %199

; <label>:194:                                    ; preds = %188
  %195 = load %union.tree_node*, %union.tree_node** %2, align 8
  %196 = bitcast %union.tree_node* %195 to %struct.tree_decl*
  %197 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %196, i32 0, i32 17
  %198 = load %struct.rtx_def*, %struct.rtx_def** %197, align 8
  br label %205

; <label>:199:                                    ; preds = %188
  %200 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %200, i8* null)
  %201 = load %union.tree_node*, %union.tree_node** %2, align 8
  %202 = bitcast %union.tree_node* %201 to %struct.tree_decl*
  %203 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %202, i32 0, i32 17
  %204 = load %struct.rtx_def*, %struct.rtx_def** %203, align 8
  br label %205

; <label>:205:                                    ; preds = %199, %194
  %206 = phi %struct.rtx_def* [ %198, %194 ], [ %204, %199 ]
  store %struct.rtx_def* %206, %struct.rtx_def** %4, align 8
  %207 = load %union.tree_node*, %union.tree_node** %2, align 8
  %208 = bitcast %union.tree_node* %207 to %struct.tree_common*
  %209 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %208, i32 0, i32 1
  %210 = load %union.tree_node*, %union.tree_node** %209, align 8
  store %union.tree_node* %210, %union.tree_node** %6, align 8
  br label %221

; <label>:211:                                    ; preds = %181
  %212 = load %union.tree_node*, %union.tree_node** %2, align 8
  %213 = bitcast %union.tree_node* %212 to %struct.tree_decl*
  %214 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %213, i32 0, i32 19
  %215 = bitcast %union.anon.1* %214 to %struct.rtx_def**
  %216 = load %struct.rtx_def*, %struct.rtx_def** %215, align 8
  store %struct.rtx_def* %216, %struct.rtx_def** %4, align 8
  %217 = load %union.tree_node*, %union.tree_node** %2, align 8
  %218 = bitcast %union.tree_node* %217 to %struct.tree_common*
  %219 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %218, i32 0, i32 1
  %220 = load %union.tree_node*, %union.tree_node** %219, align 8
  store %union.tree_node* %220, %union.tree_node** %6, align 8
  br label %221

; <label>:221:                                    ; preds = %211, %205
  %222 = load i32, i32* @target_flags, align 4
  %223 = and i32 %222, 33554432
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

; <label>:225:                                    ; preds = %221
  %226 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %226, i32 0, i32 1
  %228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %227, i64 0, i64 0
  %229 = bitcast %union.rtunion_def* %228 to i32*
  %230 = load i32, i32* %229, align 8
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [53 x i32], [53 x i32]* @dbx64_register_map, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  br label %243

; <label>:234:                                    ; preds = %221
  %235 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %236 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %235, i32 0, i32 1
  %237 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %236, i64 0, i64 0
  %238 = bitcast %union.rtunion_def* %237 to i32*
  %239 = load i32, i32* %238, align 8
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds [53 x i32], [53 x i32]* @svr4_dbx_register_map, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  br label %243

; <label>:243:                                    ; preds = %234, %225
  %244 = phi i32 [ %233, %225 ], [ %242, %234 ]
  store i32 %244, i32* @current_sym_value, align 4
  %245 = load %union.tree_node*, %union.tree_node** %2, align 8
  %246 = bitcast %union.tree_node* %245 to %struct.tree_decl*
  %247 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %246, i32 0, i32 8
  %248 = load %union.tree_node*, %union.tree_node** %247, align 8
  %249 = icmp ne %union.tree_node* %248, null
  br i1 %249, label %250, label %272

; <label>:250:                                    ; preds = %243
  %251 = load %union.tree_node*, %union.tree_node** %2, align 8
  %252 = bitcast %union.tree_node* %251 to %struct.tree_decl*
  %253 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %252, i32 0, i32 8
  %254 = load %union.tree_node*, %union.tree_node** %253, align 8
  %255 = bitcast %union.tree_node* %254 to %struct.tree_identifier*
  %256 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = add i32 2, %258
  store i32 %259, i32* @current_sym_nchars, align 4
  %260 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %261 = load %union.tree_node*, %union.tree_node** %2, align 8
  %262 = bitcast %union.tree_node* %261 to %struct.tree_decl*
  %263 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %262, i32 0, i32 8
  %264 = load %union.tree_node*, %union.tree_node** %263, align 8
  %265 = bitcast %union.tree_node* %264 to %struct.tree_identifier*
  %266 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = load i8, i8* %5, align 1
  %270 = sext i8 %269 to i32
  %271 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %260, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %268, i32 %270)
  br label %277

; <label>:272:                                    ; preds = %243
  store i32 8, i32* @current_sym_nchars, align 4
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %274 = load i8, i8* %5, align 1
  %275 = sext i8 %274 to i32
  %276 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %273, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %275)
  br label %277

; <label>:277:                                    ; preds = %272, %250
  %278 = load %union.tree_node*, %union.tree_node** %6, align 8
  call void @dbxout_type(%union.tree_node* %278, i32 0)
  %279 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %279)
  br label %1035

; <label>:280:                                    ; preds = %158
  %281 = load %union.tree_node*, %union.tree_node** %2, align 8
  %282 = bitcast %union.tree_node* %281 to %struct.tree_decl*
  %283 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %282, i32 0, i32 17
  %284 = load %struct.rtx_def*, %struct.rtx_def** %283, align 8
  %285 = icmp ne %struct.rtx_def* %284, null
  br i1 %285, label %286, label %291

; <label>:286:                                    ; preds = %280
  %287 = load %union.tree_node*, %union.tree_node** %2, align 8
  %288 = bitcast %union.tree_node* %287 to %struct.tree_decl*
  %289 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %288, i32 0, i32 17
  %290 = load %struct.rtx_def*, %struct.rtx_def** %289, align 8
  br label %297

; <label>:291:                                    ; preds = %280
  %292 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %292, i8* null)
  %293 = load %union.tree_node*, %union.tree_node** %2, align 8
  %294 = bitcast %union.tree_node* %293 to %struct.tree_decl*
  %295 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %294, i32 0, i32 17
  %296 = load %struct.rtx_def*, %struct.rtx_def** %295, align 8
  br label %297

; <label>:297:                                    ; preds = %291, %286
  %298 = phi %struct.rtx_def* [ %290, %286 ], [ %296, %291 ]
  %299 = bitcast %struct.rtx_def* %298 to i32*
  %300 = load i32, i32* %299, align 8
  %301 = and i32 %300, 65535
  %302 = icmp eq i32 %301, 66
  br i1 %302, label %303, label %525

; <label>:303:                                    ; preds = %297
  %304 = load %union.tree_node*, %union.tree_node** %2, align 8
  %305 = bitcast %union.tree_node* %304 to %struct.tree_decl*
  %306 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %305, i32 0, i32 17
  %307 = load %struct.rtx_def*, %struct.rtx_def** %306, align 8
  %308 = icmp ne %struct.rtx_def* %307, null
  br i1 %308, label %309, label %314

; <label>:309:                                    ; preds = %303
  %310 = load %union.tree_node*, %union.tree_node** %2, align 8
  %311 = bitcast %union.tree_node* %310 to %struct.tree_decl*
  %312 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %311, i32 0, i32 17
  %313 = load %struct.rtx_def*, %struct.rtx_def** %312, align 8
  br label %320

; <label>:314:                                    ; preds = %303
  %315 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %315, i8* null)
  %316 = load %union.tree_node*, %union.tree_node** %2, align 8
  %317 = bitcast %union.tree_node* %316 to %struct.tree_decl*
  %318 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %317, i32 0, i32 17
  %319 = load %struct.rtx_def*, %struct.rtx_def** %318, align 8
  br label %320

; <label>:320:                                    ; preds = %314, %309
  %321 = phi %struct.rtx_def* [ %313, %309 ], [ %319, %314 ]
  %322 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %321, i32 0, i32 1
  %323 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %322, i64 0, i64 0
  %324 = bitcast %union.rtunion_def* %323 to %struct.rtx_def**
  %325 = load %struct.rtx_def*, %struct.rtx_def** %324, align 8
  %326 = bitcast %struct.rtx_def* %325 to i32*
  %327 = load i32, i32* %326, align 8
  %328 = and i32 %327, 65535
  %329 = icmp eq i32 %328, 61
  br i1 %329, label %330, label %525

; <label>:330:                                    ; preds = %320
  %331 = load %union.tree_node*, %union.tree_node** %2, align 8
  %332 = bitcast %union.tree_node* %331 to %struct.tree_decl*
  %333 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %332, i32 0, i32 17
  %334 = load %struct.rtx_def*, %struct.rtx_def** %333, align 8
  %335 = icmp ne %struct.rtx_def* %334, null
  br i1 %335, label %336, label %341

; <label>:336:                                    ; preds = %330
  %337 = load %union.tree_node*, %union.tree_node** %2, align 8
  %338 = bitcast %union.tree_node* %337 to %struct.tree_decl*
  %339 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %338, i32 0, i32 17
  %340 = load %struct.rtx_def*, %struct.rtx_def** %339, align 8
  br label %347

; <label>:341:                                    ; preds = %330
  %342 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %342, i8* null)
  %343 = load %union.tree_node*, %union.tree_node** %2, align 8
  %344 = bitcast %union.tree_node* %343 to %struct.tree_decl*
  %345 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %344, i32 0, i32 17
  %346 = load %struct.rtx_def*, %struct.rtx_def** %345, align 8
  br label %347

; <label>:347:                                    ; preds = %341, %336
  %348 = phi %struct.rtx_def* [ %340, %336 ], [ %346, %341 ]
  %349 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %348, i32 0, i32 1
  %350 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %349, i64 0, i64 0
  %351 = bitcast %union.rtunion_def* %350 to %struct.rtx_def**
  %352 = load %struct.rtx_def*, %struct.rtx_def** %351, align 8
  %353 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %352, i32 0, i32 1
  %354 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %353, i64 0, i64 0
  %355 = bitcast %union.rtunion_def* %354 to i32*
  %356 = load i32, i32* %355, align 8
  %357 = icmp ne i32 %356, 6
  br i1 %357, label %358, label %525

; <label>:358:                                    ; preds = %347
  %359 = load %union.tree_node*, %union.tree_node** %2, align 8
  %360 = bitcast %union.tree_node* %359 to %struct.tree_decl*
  %361 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %360, i32 0, i32 17
  %362 = load %struct.rtx_def*, %struct.rtx_def** %361, align 8
  %363 = icmp ne %struct.rtx_def* %362, null
  br i1 %363, label %364, label %369

; <label>:364:                                    ; preds = %358
  %365 = load %union.tree_node*, %union.tree_node** %2, align 8
  %366 = bitcast %union.tree_node* %365 to %struct.tree_decl*
  %367 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %366, i32 0, i32 17
  %368 = load %struct.rtx_def*, %struct.rtx_def** %367, align 8
  br label %375

; <label>:369:                                    ; preds = %358
  %370 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %370, i8* null)
  %371 = load %union.tree_node*, %union.tree_node** %2, align 8
  %372 = bitcast %union.tree_node* %371 to %struct.tree_decl*
  %373 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %372, i32 0, i32 17
  %374 = load %struct.rtx_def*, %struct.rtx_def** %373, align 8
  br label %375

; <label>:375:                                    ; preds = %369, %364
  %376 = phi %struct.rtx_def* [ %368, %364 ], [ %374, %369 ]
  %377 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %376, i32 0, i32 1
  %378 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %377, i64 0, i64 0
  %379 = bitcast %union.rtunion_def* %378 to %struct.rtx_def**
  %380 = load %struct.rtx_def*, %struct.rtx_def** %379, align 8
  %381 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %380, i32 0, i32 1
  %382 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %381, i64 0, i64 0
  %383 = bitcast %union.rtunion_def* %382 to i32*
  %384 = load i32, i32* %383, align 8
  %385 = icmp ne i32 %384, 7
  br i1 %385, label %386, label %525

; <label>:386:                                    ; preds = %375
  %387 = load %union.tree_node*, %union.tree_node** %2, align 8
  %388 = bitcast %union.tree_node* %387 to %struct.tree_decl*
  %389 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %388, i32 0, i32 17
  %390 = load %struct.rtx_def*, %struct.rtx_def** %389, align 8
  %391 = icmp ne %struct.rtx_def* %390, null
  br i1 %391, label %392, label %397

; <label>:392:                                    ; preds = %386
  %393 = load %union.tree_node*, %union.tree_node** %2, align 8
  %394 = bitcast %union.tree_node* %393 to %struct.tree_decl*
  %395 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %394, i32 0, i32 17
  %396 = load %struct.rtx_def*, %struct.rtx_def** %395, align 8
  br label %403

; <label>:397:                                    ; preds = %386
  %398 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %398, i8* null)
  %399 = load %union.tree_node*, %union.tree_node** %2, align 8
  %400 = bitcast %union.tree_node* %399 to %struct.tree_decl*
  %401 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %400, i32 0, i32 17
  %402 = load %struct.rtx_def*, %struct.rtx_def** %401, align 8
  br label %403

; <label>:403:                                    ; preds = %397, %392
  %404 = phi %struct.rtx_def* [ %396, %392 ], [ %402, %397 ]
  %405 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %404, i32 0, i32 1
  %406 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %405, i64 0, i64 0
  %407 = bitcast %union.rtunion_def* %406 to %struct.rtx_def**
  %408 = load %struct.rtx_def*, %struct.rtx_def** %407, align 8
  %409 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %408, i32 0, i32 1
  %410 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %409, i64 0, i64 0
  %411 = bitcast %union.rtunion_def* %410 to i32*
  %412 = load i32, i32* %411, align 8
  %413 = icmp ne i32 %412, 16
  br i1 %413, label %414, label %525

; <label>:414:                                    ; preds = %403
  store i32 64, i32* @current_sym_code, align 4
  %415 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %418

; <label>:417:                                    ; preds = %414
  store i8 97, i8* %7, align 1
  br label %419

; <label>:418:                                    ; preds = %414
  store i8 80, i8* %7, align 1
  br label %419

; <label>:419:                                    ; preds = %418, %417
  %420 = load %union.tree_node*, %union.tree_node** %2, align 8
  %421 = bitcast %union.tree_node* %420 to %struct.tree_decl*
  %422 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %421, i32 0, i32 17
  %423 = load %struct.rtx_def*, %struct.rtx_def** %422, align 8
  %424 = icmp ne %struct.rtx_def* %423, null
  br i1 %424, label %425, label %430

; <label>:425:                                    ; preds = %419
  %426 = load %union.tree_node*, %union.tree_node** %2, align 8
  %427 = bitcast %union.tree_node* %426 to %struct.tree_decl*
  %428 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %427, i32 0, i32 17
  %429 = load %struct.rtx_def*, %struct.rtx_def** %428, align 8
  br label %436

; <label>:430:                                    ; preds = %419
  %431 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %431, i8* null)
  %432 = load %union.tree_node*, %union.tree_node** %2, align 8
  %433 = bitcast %union.tree_node* %432 to %struct.tree_decl*
  %434 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %433, i32 0, i32 17
  %435 = load %struct.rtx_def*, %struct.rtx_def** %434, align 8
  br label %436

; <label>:436:                                    ; preds = %430, %425
  %437 = phi %struct.rtx_def* [ %429, %425 ], [ %435, %430 ]
  %438 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %437, i32 0, i32 1
  %439 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %438, i64 0, i64 0
  %440 = bitcast %union.rtunion_def* %439 to %struct.rtx_def**
  %441 = load %struct.rtx_def*, %struct.rtx_def** %440, align 8
  %442 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %441, i32 0, i32 1
  %443 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %442, i64 0, i64 0
  %444 = bitcast %union.rtunion_def* %443 to i32*
  %445 = load i32, i32* %444, align 8
  %446 = icmp ult i32 %445, 53
  br i1 %446, label %447, label %474

; <label>:447:                                    ; preds = %436
  %448 = load %union.tree_node*, %union.tree_node** %2, align 8
  %449 = bitcast %union.tree_node* %448 to %struct.tree_decl*
  %450 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %449, i32 0, i32 17
  %451 = load %struct.rtx_def*, %struct.rtx_def** %450, align 8
  %452 = icmp ne %struct.rtx_def* %451, null
  br i1 %452, label %453, label %458

; <label>:453:                                    ; preds = %447
  %454 = load %union.tree_node*, %union.tree_node** %2, align 8
  %455 = bitcast %union.tree_node* %454 to %struct.tree_decl*
  %456 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %455, i32 0, i32 17
  %457 = load %struct.rtx_def*, %struct.rtx_def** %456, align 8
  br label %464

; <label>:458:                                    ; preds = %447
  %459 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %459, i8* null)
  %460 = load %union.tree_node*, %union.tree_node** %2, align 8
  %461 = bitcast %union.tree_node* %460 to %struct.tree_decl*
  %462 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %461, i32 0, i32 17
  %463 = load %struct.rtx_def*, %struct.rtx_def** %462, align 8
  br label %464

; <label>:464:                                    ; preds = %458, %453
  %465 = phi %struct.rtx_def* [ %457, %453 ], [ %463, %458 ]
  %466 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %465, i32 0, i32 1
  %467 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %466, i64 0, i64 0
  %468 = bitcast %union.rtunion_def* %467 to %struct.rtx_def**
  %469 = load %struct.rtx_def*, %struct.rtx_def** %468, align 8
  %470 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %469, i32 0, i32 1
  %471 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %470, i64 0, i64 0
  %472 = bitcast %union.rtunion_def* %471 to i32*
  %473 = load i32, i32* %472, align 8
  store i32 %473, i32* @current_sym_value, align 4
  br label %484

; <label>:474:                                    ; preds = %436
  %475 = load %union.tree_node*, %union.tree_node** %2, align 8
  %476 = bitcast %union.tree_node* %475 to %struct.tree_decl*
  %477 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %476, i32 0, i32 19
  %478 = bitcast %union.anon.1* %477 to %struct.rtx_def**
  %479 = load %struct.rtx_def*, %struct.rtx_def** %478, align 8
  %480 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %479, i32 0, i32 1
  %481 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %480, i64 0, i64 0
  %482 = bitcast %union.rtunion_def* %481 to i32*
  %483 = load i32, i32* %482, align 8
  store i32 %483, i32* @current_sym_value, align 4
  br label %484

; <label>:484:                                    ; preds = %474, %464
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %485 = load %union.tree_node*, %union.tree_node** %2, align 8
  %486 = bitcast %union.tree_node* %485 to %struct.tree_decl*
  %487 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %486, i32 0, i32 8
  %488 = load %union.tree_node*, %union.tree_node** %487, align 8
  %489 = icmp ne %union.tree_node* %488, null
  br i1 %489, label %490, label %514

; <label>:490:                                    ; preds = %484
  %491 = load %union.tree_node*, %union.tree_node** %2, align 8
  %492 = bitcast %union.tree_node* %491 to %struct.tree_decl*
  %493 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %492, i32 0, i32 8
  %494 = load %union.tree_node*, %union.tree_node** %493, align 8
  %495 = bitcast %union.tree_node* %494 to %struct.tree_identifier*
  %496 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %495, i32 0, i32 1
  %497 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %496, i32 0, i32 1
  %498 = load i8*, i8** %497, align 8
  %499 = call i64 @strlen(i8* %498) #7
  %500 = add i64 2, %499
  %501 = trunc i64 %500 to i32
  store i32 %501, i32* @current_sym_nchars, align 4
  %502 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %503 = load %union.tree_node*, %union.tree_node** %2, align 8
  %504 = bitcast %union.tree_node* %503 to %struct.tree_decl*
  %505 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %504, i32 0, i32 8
  %506 = load %union.tree_node*, %union.tree_node** %505, align 8
  %507 = bitcast %union.tree_node* %506 to %struct.tree_identifier*
  %508 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %508, i32 0, i32 1
  %510 = load i8*, i8** %509, align 8
  %511 = load i8, i8* %7, align 1
  %512 = sext i8 %511 to i32
  %513 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %502, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %510, i32 %512)
  br label %519

; <label>:514:                                    ; preds = %484
  store i32 8, i32* @current_sym_nchars, align 4
  %515 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %516 = load i8, i8* %7, align 1
  %517 = sext i8 %516 to i32
  %518 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %515, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %517)
  br label %519

; <label>:519:                                    ; preds = %514, %490
  %520 = load %union.tree_node*, %union.tree_node** %2, align 8
  %521 = bitcast %union.tree_node* %520 to %struct.tree_common*
  %522 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %521, i32 0, i32 1
  %523 = load %union.tree_node*, %union.tree_node** %522, align 8
  call void @dbxout_type(%union.tree_node* %523, i32 0)
  %524 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %524)
  br label %1034

; <label>:525:                                    ; preds = %403, %375, %347, %320, %297
  %526 = load %union.tree_node*, %union.tree_node** %2, align 8
  %527 = bitcast %union.tree_node* %526 to %struct.tree_decl*
  %528 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %527, i32 0, i32 17
  %529 = load %struct.rtx_def*, %struct.rtx_def** %528, align 8
  %530 = icmp ne %struct.rtx_def* %529, null
  br i1 %530, label %531, label %536

; <label>:531:                                    ; preds = %525
  %532 = load %union.tree_node*, %union.tree_node** %2, align 8
  %533 = bitcast %union.tree_node* %532 to %struct.tree_decl*
  %534 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %533, i32 0, i32 17
  %535 = load %struct.rtx_def*, %struct.rtx_def** %534, align 8
  br label %542

; <label>:536:                                    ; preds = %525
  %537 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %537, i8* null)
  %538 = load %union.tree_node*, %union.tree_node** %2, align 8
  %539 = bitcast %union.tree_node* %538 to %struct.tree_decl*
  %540 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %539, i32 0, i32 17
  %541 = load %struct.rtx_def*, %struct.rtx_def** %540, align 8
  br label %542

; <label>:542:                                    ; preds = %536, %531
  %543 = phi %struct.rtx_def* [ %535, %531 ], [ %541, %536 ]
  %544 = bitcast %struct.rtx_def* %543 to i32*
  %545 = load i32, i32* %544, align 8
  %546 = and i32 %545, 65535
  %547 = icmp eq i32 %546, 66
  br i1 %547, label %548, label %670

; <label>:548:                                    ; preds = %542
  %549 = load %union.tree_node*, %union.tree_node** %2, align 8
  %550 = bitcast %union.tree_node* %549 to %struct.tree_decl*
  %551 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %550, i32 0, i32 17
  %552 = load %struct.rtx_def*, %struct.rtx_def** %551, align 8
  %553 = icmp ne %struct.rtx_def* %552, null
  br i1 %553, label %554, label %559

; <label>:554:                                    ; preds = %548
  %555 = load %union.tree_node*, %union.tree_node** %2, align 8
  %556 = bitcast %union.tree_node* %555 to %struct.tree_decl*
  %557 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %556, i32 0, i32 17
  %558 = load %struct.rtx_def*, %struct.rtx_def** %557, align 8
  br label %565

; <label>:559:                                    ; preds = %548
  %560 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %560, i8* null)
  %561 = load %union.tree_node*, %union.tree_node** %2, align 8
  %562 = bitcast %union.tree_node* %561 to %struct.tree_decl*
  %563 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %562, i32 0, i32 17
  %564 = load %struct.rtx_def*, %struct.rtx_def** %563, align 8
  br label %565

; <label>:565:                                    ; preds = %559, %554
  %566 = phi %struct.rtx_def* [ %558, %554 ], [ %564, %559 ]
  %567 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %566, i32 0, i32 1
  %568 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %567, i64 0, i64 0
  %569 = bitcast %union.rtunion_def* %568 to %struct.rtx_def**
  %570 = load %struct.rtx_def*, %struct.rtx_def** %569, align 8
  %571 = bitcast %struct.rtx_def* %570 to i32*
  %572 = load i32, i32* %571, align 8
  %573 = and i32 %572, 65535
  %574 = icmp eq i32 %573, 66
  br i1 %574, label %575, label %670

; <label>:575:                                    ; preds = %565
  %576 = load %union.tree_node*, %union.tree_node** %2, align 8
  %577 = bitcast %union.tree_node* %576 to %struct.tree_decl*
  %578 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %577, i32 0, i32 8
  %579 = load %union.tree_node*, %union.tree_node** %578, align 8
  %580 = icmp ne %union.tree_node* %579, null
  br i1 %580, label %581, label %590

; <label>:581:                                    ; preds = %575
  %582 = load %union.tree_node*, %union.tree_node** %2, align 8
  %583 = bitcast %union.tree_node* %582 to %struct.tree_decl*
  %584 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %583, i32 0, i32 8
  %585 = load %union.tree_node*, %union.tree_node** %584, align 8
  %586 = bitcast %union.tree_node* %585 to %struct.tree_identifier*
  %587 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %586, i32 0, i32 1
  %588 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %587, i32 0, i32 1
  %589 = load i8*, i8** %588, align 8
  br label %591

; <label>:590:                                    ; preds = %575
  br label %591

; <label>:591:                                    ; preds = %590, %581
  %592 = phi i8* [ %589, %581 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %590 ]
  store i8* %592, i8** %8, align 8
  %593 = load %union.tree_node*, %union.tree_node** %2, align 8
  %594 = bitcast %union.tree_node* %593 to %struct.tree_decl*
  %595 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %594, i32 0, i32 17
  %596 = load %struct.rtx_def*, %struct.rtx_def** %595, align 8
  %597 = icmp ne %struct.rtx_def* %596, null
  br i1 %597, label %598, label %603

; <label>:598:                                    ; preds = %591
  %599 = load %union.tree_node*, %union.tree_node** %2, align 8
  %600 = bitcast %union.tree_node* %599 to %struct.tree_decl*
  %601 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %600, i32 0, i32 17
  %602 = load %struct.rtx_def*, %struct.rtx_def** %601, align 8
  br label %609

; <label>:603:                                    ; preds = %591
  %604 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %604, i8* null)
  %605 = load %union.tree_node*, %union.tree_node** %2, align 8
  %606 = bitcast %union.tree_node* %605 to %struct.tree_decl*
  %607 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %606, i32 0, i32 17
  %608 = load %struct.rtx_def*, %struct.rtx_def** %607, align 8
  br label %609

; <label>:609:                                    ; preds = %603, %598
  %610 = phi %struct.rtx_def* [ %602, %598 ], [ %608, %603 ]
  %611 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %610, i32 0, i32 1
  %612 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %611, i64 0, i64 0
  %613 = bitcast %union.rtunion_def* %612 to %struct.rtx_def**
  %614 = load %struct.rtx_def*, %struct.rtx_def** %613, align 8
  %615 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %614, i32 0, i32 1
  %616 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %615, i64 0, i64 0
  %617 = bitcast %union.rtunion_def* %616 to %struct.rtx_def**
  %618 = load %struct.rtx_def*, %struct.rtx_def** %617, align 8
  %619 = bitcast %struct.rtx_def* %618 to i32*
  %620 = load i32, i32* %619, align 8
  %621 = and i32 %620, 65535
  %622 = icmp eq i32 %621, 61
  br i1 %622, label %623, label %624

; <label>:623:                                    ; preds = %609
  store i32 0, i32* @current_sym_value, align 4
  br label %660

; <label>:624:                                    ; preds = %609
  %625 = load %union.tree_node*, %union.tree_node** %2, align 8
  %626 = bitcast %union.tree_node* %625 to %struct.tree_decl*
  %627 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %626, i32 0, i32 17
  %628 = load %struct.rtx_def*, %struct.rtx_def** %627, align 8
  %629 = icmp ne %struct.rtx_def* %628, null
  br i1 %629, label %630, label %635

; <label>:630:                                    ; preds = %624
  %631 = load %union.tree_node*, %union.tree_node** %2, align 8
  %632 = bitcast %union.tree_node* %631 to %struct.tree_decl*
  %633 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %632, i32 0, i32 17
  %634 = load %struct.rtx_def*, %struct.rtx_def** %633, align 8
  br label %641

; <label>:635:                                    ; preds = %624
  %636 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %636, i8* null)
  %637 = load %union.tree_node*, %union.tree_node** %2, align 8
  %638 = bitcast %union.tree_node* %637 to %struct.tree_decl*
  %639 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %638, i32 0, i32 17
  %640 = load %struct.rtx_def*, %struct.rtx_def** %639, align 8
  br label %641

; <label>:641:                                    ; preds = %635, %630
  %642 = phi %struct.rtx_def* [ %634, %630 ], [ %640, %635 ]
  %643 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %642, i32 0, i32 1
  %644 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %643, i64 0, i64 0
  %645 = bitcast %union.rtunion_def* %644 to %struct.rtx_def**
  %646 = load %struct.rtx_def*, %struct.rtx_def** %645, align 8
  %647 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %646, i32 0, i32 1
  %648 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %647, i64 0, i64 0
  %649 = bitcast %union.rtunion_def* %648 to %struct.rtx_def**
  %650 = load %struct.rtx_def*, %struct.rtx_def** %649, align 8
  %651 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %650, i32 0, i32 1
  %652 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %651, i64 0, i64 1
  %653 = bitcast %union.rtunion_def* %652 to %struct.rtx_def**
  %654 = load %struct.rtx_def*, %struct.rtx_def** %653, align 8
  %655 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %654, i32 0, i32 1
  %656 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %655, i64 0, i64 0
  %657 = bitcast %union.rtunion_def* %656 to i64*
  %658 = load i64, i64* %657, align 8
  %659 = trunc i64 %658 to i32
  store i32 %659, i32* @current_sym_value, align 4
  br label %660

; <label>:660:                                    ; preds = %641, %623
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %661 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %662 = load i8*, i8** %8, align 8
  %663 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %661, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %662)
  %664 = load i32, i32* @current_sym_value, align 4
  store i32 %664, i32* @current_sym_value, align 4
  %665 = load %union.tree_node*, %union.tree_node** %2, align 8
  %666 = bitcast %union.tree_node* %665 to %struct.tree_common*
  %667 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %666, i32 0, i32 1
  %668 = load %union.tree_node*, %union.tree_node** %667, align 8
  call void @dbxout_type(%union.tree_node* %668, i32 0)
  %669 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %669)
  br label %1033

; <label>:670:                                    ; preds = %565, %542
  %671 = load %union.tree_node*, %union.tree_node** %2, align 8
  %672 = bitcast %union.tree_node* %671 to %struct.tree_decl*
  %673 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %672, i32 0, i32 17
  %674 = load %struct.rtx_def*, %struct.rtx_def** %673, align 8
  %675 = icmp ne %struct.rtx_def* %674, null
  br i1 %675, label %676, label %681

; <label>:676:                                    ; preds = %670
  %677 = load %union.tree_node*, %union.tree_node** %2, align 8
  %678 = bitcast %union.tree_node* %677 to %struct.tree_decl*
  %679 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %678, i32 0, i32 17
  %680 = load %struct.rtx_def*, %struct.rtx_def** %679, align 8
  br label %687

; <label>:681:                                    ; preds = %670
  %682 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %682, i8* null)
  %683 = load %union.tree_node*, %union.tree_node** %2, align 8
  %684 = bitcast %union.tree_node* %683 to %struct.tree_decl*
  %685 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %684, i32 0, i32 17
  %686 = load %struct.rtx_def*, %struct.rtx_def** %685, align 8
  br label %687

; <label>:687:                                    ; preds = %681, %676
  %688 = phi %struct.rtx_def* [ %680, %676 ], [ %686, %681 ]
  %689 = bitcast %struct.rtx_def* %688 to i32*
  %690 = load i32, i32* %689, align 8
  %691 = and i32 %690, 65535
  %692 = icmp eq i32 %691, 66
  br i1 %692, label %693, label %1032

; <label>:693:                                    ; preds = %687
  %694 = load %union.tree_node*, %union.tree_node** %2, align 8
  %695 = bitcast %union.tree_node* %694 to %struct.tree_decl*
  %696 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %695, i32 0, i32 17
  %697 = load %struct.rtx_def*, %struct.rtx_def** %696, align 8
  %698 = icmp ne %struct.rtx_def* %697, null
  br i1 %698, label %699, label %704

; <label>:699:                                    ; preds = %693
  %700 = load %union.tree_node*, %union.tree_node** %2, align 8
  %701 = bitcast %union.tree_node* %700 to %struct.tree_decl*
  %702 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %701, i32 0, i32 17
  %703 = load %struct.rtx_def*, %struct.rtx_def** %702, align 8
  br label %710

; <label>:704:                                    ; preds = %693
  %705 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %705, i8* null)
  %706 = load %union.tree_node*, %union.tree_node** %2, align 8
  %707 = bitcast %union.tree_node* %706 to %struct.tree_decl*
  %708 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %707, i32 0, i32 17
  %709 = load %struct.rtx_def*, %struct.rtx_def** %708, align 8
  br label %710

; <label>:710:                                    ; preds = %704, %699
  %711 = phi %struct.rtx_def* [ %703, %699 ], [ %709, %704 ]
  %712 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %711, i32 0, i32 1
  %713 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %712, i64 0, i64 0
  %714 = bitcast %union.rtunion_def* %713 to %struct.rtx_def**
  %715 = load %struct.rtx_def*, %struct.rtx_def** %714, align 8
  %716 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %717 = icmp ne %struct.rtx_def* %715, %716
  br i1 %717, label %718, label %1032

; <label>:718:                                    ; preds = %710
  %719 = load %union.tree_node*, %union.tree_node** %2, align 8
  %720 = bitcast %union.tree_node* %719 to %struct.tree_decl*
  %721 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %720, i32 0, i32 17
  %722 = load %struct.rtx_def*, %struct.rtx_def** %721, align 8
  %723 = icmp ne %struct.rtx_def* %722, null
  br i1 %723, label %724, label %729

; <label>:724:                                    ; preds = %718
  %725 = load %union.tree_node*, %union.tree_node** %2, align 8
  %726 = bitcast %union.tree_node* %725 to %struct.tree_decl*
  %727 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %726, i32 0, i32 17
  %728 = load %struct.rtx_def*, %struct.rtx_def** %727, align 8
  br label %735

; <label>:729:                                    ; preds = %718
  %730 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %730, i8* null)
  %731 = load %union.tree_node*, %union.tree_node** %2, align 8
  %732 = bitcast %union.tree_node* %731 to %struct.tree_decl*
  %733 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %732, i32 0, i32 17
  %734 = load %struct.rtx_def*, %struct.rtx_def** %733, align 8
  br label %735

; <label>:735:                                    ; preds = %729, %724
  %736 = phi %struct.rtx_def* [ %728, %724 ], [ %734, %729 ]
  %737 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %736, i32 0, i32 1
  %738 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %737, i64 0, i64 0
  %739 = bitcast %union.rtunion_def* %738 to %struct.rtx_def**
  %740 = load %struct.rtx_def*, %struct.rtx_def** %739, align 8
  %741 = bitcast %struct.rtx_def* %740 to i32*
  %742 = load i32, i32* %741, align 8
  %743 = and i32 %742, 65535
  %744 = icmp eq i32 %743, 67
  br i1 %744, label %1032, label %745

; <label>:745:                                    ; preds = %735
  %746 = load %union.tree_node*, %union.tree_node** %2, align 8
  %747 = bitcast %union.tree_node* %746 to %struct.tree_decl*
  %748 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %747, i32 0, i32 17
  %749 = load %struct.rtx_def*, %struct.rtx_def** %748, align 8
  %750 = icmp ne %struct.rtx_def* %749, null
  br i1 %750, label %751, label %756

; <label>:751:                                    ; preds = %745
  %752 = load %union.tree_node*, %union.tree_node** %2, align 8
  %753 = bitcast %union.tree_node* %752 to %struct.tree_decl*
  %754 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %753, i32 0, i32 17
  %755 = load %struct.rtx_def*, %struct.rtx_def** %754, align 8
  br label %762

; <label>:756:                                    ; preds = %745
  %757 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %757, i8* null)
  %758 = load %union.tree_node*, %union.tree_node** %2, align 8
  %759 = bitcast %union.tree_node* %758 to %struct.tree_decl*
  %760 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %759, i32 0, i32 17
  %761 = load %struct.rtx_def*, %struct.rtx_def** %760, align 8
  br label %762

; <label>:762:                                    ; preds = %756, %751
  %763 = phi %struct.rtx_def* [ %755, %751 ], [ %761, %756 ]
  %764 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %763, i32 0, i32 1
  %765 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %764, i64 0, i64 0
  %766 = bitcast %union.rtunion_def* %765 to %struct.rtx_def**
  %767 = load %struct.rtx_def*, %struct.rtx_def** %766, align 8
  %768 = bitcast %struct.rtx_def* %767 to i32*
  %769 = load i32, i32* %768, align 8
  %770 = and i32 %769, 65535
  %771 = icmp eq i32 %770, 68
  br i1 %771, label %1032, label %772

; <label>:772:                                    ; preds = %762
  %773 = load %union.tree_node*, %union.tree_node** %2, align 8
  %774 = bitcast %union.tree_node* %773 to %struct.tree_decl*
  %775 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %774, i32 0, i32 17
  %776 = load %struct.rtx_def*, %struct.rtx_def** %775, align 8
  %777 = icmp ne %struct.rtx_def* %776, null
  br i1 %777, label %778, label %783

; <label>:778:                                    ; preds = %772
  %779 = load %union.tree_node*, %union.tree_node** %2, align 8
  %780 = bitcast %union.tree_node* %779 to %struct.tree_decl*
  %781 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %780, i32 0, i32 17
  %782 = load %struct.rtx_def*, %struct.rtx_def** %781, align 8
  br label %789

; <label>:783:                                    ; preds = %772
  %784 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %784, i8* null)
  %785 = load %union.tree_node*, %union.tree_node** %2, align 8
  %786 = bitcast %union.tree_node* %785 to %struct.tree_decl*
  %787 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %786, i32 0, i32 17
  %788 = load %struct.rtx_def*, %struct.rtx_def** %787, align 8
  br label %789

; <label>:789:                                    ; preds = %783, %778
  %790 = phi %struct.rtx_def* [ %782, %778 ], [ %788, %783 ]
  %791 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %790, i32 0, i32 1
  %792 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %791, i64 0, i64 0
  %793 = bitcast %union.rtunion_def* %792 to %struct.rtx_def**
  %794 = load %struct.rtx_def*, %struct.rtx_def** %793, align 8
  %795 = bitcast %struct.rtx_def* %794 to i32*
  %796 = load i32, i32* %795, align 8
  %797 = and i32 %796, 65535
  %798 = icmp eq i32 %797, 54
  br i1 %798, label %1032, label %799

; <label>:799:                                    ; preds = %789
  %800 = load %union.tree_node*, %union.tree_node** %2, align 8
  %801 = bitcast %union.tree_node* %800 to %struct.tree_decl*
  %802 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %801, i32 0, i32 17
  %803 = load %struct.rtx_def*, %struct.rtx_def** %802, align 8
  %804 = icmp ne %struct.rtx_def* %803, null
  br i1 %804, label %805, label %810

; <label>:805:                                    ; preds = %799
  %806 = load %union.tree_node*, %union.tree_node** %2, align 8
  %807 = bitcast %union.tree_node* %806 to %struct.tree_decl*
  %808 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %807, i32 0, i32 17
  %809 = load %struct.rtx_def*, %struct.rtx_def** %808, align 8
  br label %816

; <label>:810:                                    ; preds = %799
  %811 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %811, i8* null)
  %812 = load %union.tree_node*, %union.tree_node** %2, align 8
  %813 = bitcast %union.tree_node* %812 to %struct.tree_decl*
  %814 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %813, i32 0, i32 17
  %815 = load %struct.rtx_def*, %struct.rtx_def** %814, align 8
  br label %816

; <label>:816:                                    ; preds = %810, %805
  %817 = phi %struct.rtx_def* [ %809, %805 ], [ %815, %810 ]
  %818 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %817, i32 0, i32 1
  %819 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %818, i64 0, i64 0
  %820 = bitcast %union.rtunion_def* %819 to %struct.rtx_def**
  %821 = load %struct.rtx_def*, %struct.rtx_def** %820, align 8
  %822 = bitcast %struct.rtx_def* %821 to i32*
  %823 = load i32, i32* %822, align 8
  %824 = and i32 %823, 65535
  %825 = icmp eq i32 %824, 55
  br i1 %825, label %1032, label %826

; <label>:826:                                    ; preds = %816
  %827 = load %union.tree_node*, %union.tree_node** %2, align 8
  %828 = bitcast %union.tree_node* %827 to %struct.tree_decl*
  %829 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %828, i32 0, i32 17
  %830 = load %struct.rtx_def*, %struct.rtx_def** %829, align 8
  %831 = icmp ne %struct.rtx_def* %830, null
  br i1 %831, label %832, label %837

; <label>:832:                                    ; preds = %826
  %833 = load %union.tree_node*, %union.tree_node** %2, align 8
  %834 = bitcast %union.tree_node* %833 to %struct.tree_decl*
  %835 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %834, i32 0, i32 17
  %836 = load %struct.rtx_def*, %struct.rtx_def** %835, align 8
  br label %843

; <label>:837:                                    ; preds = %826
  %838 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %838, i8* null)
  %839 = load %union.tree_node*, %union.tree_node** %2, align 8
  %840 = bitcast %union.tree_node* %839 to %struct.tree_decl*
  %841 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %840, i32 0, i32 17
  %842 = load %struct.rtx_def*, %struct.rtx_def** %841, align 8
  br label %843

; <label>:843:                                    ; preds = %837, %832
  %844 = phi %struct.rtx_def* [ %836, %832 ], [ %842, %837 ]
  %845 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %844, i32 0, i32 1
  %846 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %845, i64 0, i64 0
  %847 = bitcast %union.rtunion_def* %846 to %struct.rtx_def**
  %848 = load %struct.rtx_def*, %struct.rtx_def** %847, align 8
  %849 = bitcast %struct.rtx_def* %848 to i32*
  %850 = load i32, i32* %849, align 8
  %851 = and i32 %850, 65535
  %852 = icmp eq i32 %851, 58
  br i1 %852, label %1032, label %853

; <label>:853:                                    ; preds = %843
  %854 = load %union.tree_node*, %union.tree_node** %2, align 8
  %855 = bitcast %union.tree_node* %854 to %struct.tree_decl*
  %856 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %855, i32 0, i32 17
  %857 = load %struct.rtx_def*, %struct.rtx_def** %856, align 8
  %858 = icmp ne %struct.rtx_def* %857, null
  br i1 %858, label %859, label %864

; <label>:859:                                    ; preds = %853
  %860 = load %union.tree_node*, %union.tree_node** %2, align 8
  %861 = bitcast %union.tree_node* %860 to %struct.tree_decl*
  %862 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %861, i32 0, i32 17
  %863 = load %struct.rtx_def*, %struct.rtx_def** %862, align 8
  br label %870

; <label>:864:                                    ; preds = %853
  %865 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %865, i8* null)
  %866 = load %union.tree_node*, %union.tree_node** %2, align 8
  %867 = bitcast %union.tree_node* %866 to %struct.tree_decl*
  %868 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %867, i32 0, i32 17
  %869 = load %struct.rtx_def*, %struct.rtx_def** %868, align 8
  br label %870

; <label>:870:                                    ; preds = %864, %859
  %871 = phi %struct.rtx_def* [ %863, %859 ], [ %869, %864 ]
  %872 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %871, i32 0, i32 1
  %873 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %872, i64 0, i64 0
  %874 = bitcast %union.rtunion_def* %873 to %struct.rtx_def**
  %875 = load %struct.rtx_def*, %struct.rtx_def** %874, align 8
  %876 = bitcast %struct.rtx_def* %875 to i32*
  %877 = load i32, i32* %876, align 8
  %878 = and i32 %877, 65535
  %879 = icmp eq i32 %878, 134
  br i1 %879, label %1032, label %880

; <label>:880:                                    ; preds = %870
  %881 = load %union.tree_node*, %union.tree_node** %2, align 8
  %882 = bitcast %union.tree_node* %881 to %struct.tree_decl*
  %883 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %882, i32 0, i32 17
  %884 = load %struct.rtx_def*, %struct.rtx_def** %883, align 8
  %885 = icmp ne %struct.rtx_def* %884, null
  br i1 %885, label %886, label %891

; <label>:886:                                    ; preds = %880
  %887 = load %union.tree_node*, %union.tree_node** %2, align 8
  %888 = bitcast %union.tree_node* %887 to %struct.tree_decl*
  %889 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %888, i32 0, i32 17
  %890 = load %struct.rtx_def*, %struct.rtx_def** %889, align 8
  br label %897

; <label>:891:                                    ; preds = %880
  %892 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %892, i8* null)
  %893 = load %union.tree_node*, %union.tree_node** %2, align 8
  %894 = bitcast %union.tree_node* %893 to %struct.tree_decl*
  %895 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %894, i32 0, i32 17
  %896 = load %struct.rtx_def*, %struct.rtx_def** %895, align 8
  br label %897

; <label>:897:                                    ; preds = %891, %886
  %898 = phi %struct.rtx_def* [ %890, %886 ], [ %896, %891 ]
  %899 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %898, i32 0, i32 1
  %900 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %899, i64 0, i64 0
  %901 = bitcast %union.rtunion_def* %900 to %struct.rtx_def**
  %902 = load %struct.rtx_def*, %struct.rtx_def** %901, align 8
  %903 = bitcast %struct.rtx_def* %902 to i32*
  %904 = load i32, i32* %903, align 8
  %905 = and i32 %904, 65535
  %906 = icmp eq i32 %905, 56
  br i1 %906, label %1032, label %907

; <label>:907:                                    ; preds = %897
  %908 = load %union.tree_node*, %union.tree_node** %2, align 8
  %909 = bitcast %union.tree_node* %908 to %struct.tree_decl*
  %910 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %909, i32 0, i32 17
  %911 = load %struct.rtx_def*, %struct.rtx_def** %910, align 8
  %912 = icmp ne %struct.rtx_def* %911, null
  br i1 %912, label %913, label %918

; <label>:913:                                    ; preds = %907
  %914 = load %union.tree_node*, %union.tree_node** %2, align 8
  %915 = bitcast %union.tree_node* %914 to %struct.tree_decl*
  %916 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %915, i32 0, i32 17
  %917 = load %struct.rtx_def*, %struct.rtx_def** %916, align 8
  br label %924

; <label>:918:                                    ; preds = %907
  %919 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %919, i8* null)
  %920 = load %union.tree_node*, %union.tree_node** %2, align 8
  %921 = bitcast %union.tree_node* %920 to %struct.tree_decl*
  %922 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %921, i32 0, i32 17
  %923 = load %struct.rtx_def*, %struct.rtx_def** %922, align 8
  br label %924

; <label>:924:                                    ; preds = %918, %913
  %925 = phi %struct.rtx_def* [ %917, %913 ], [ %923, %918 ]
  %926 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %925, i32 0, i32 1
  %927 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %926, i64 0, i64 0
  %928 = bitcast %union.rtunion_def* %927 to %struct.rtx_def**
  %929 = load %struct.rtx_def*, %struct.rtx_def** %928, align 8
  %930 = bitcast %struct.rtx_def* %929 to i32*
  %931 = load i32, i32* %930, align 8
  %932 = and i32 %931, 65535
  %933 = icmp eq i32 %932, 140
  br i1 %933, label %1032, label %934

; <label>:934:                                    ; preds = %924
  store i32 160, i32* @current_sym_code, align 4
  %935 = load %union.tree_node*, %union.tree_node** %2, align 8
  %936 = bitcast %union.tree_node* %935 to %struct.tree_decl*
  %937 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %936, i32 0, i32 17
  %938 = load %struct.rtx_def*, %struct.rtx_def** %937, align 8
  %939 = icmp ne %struct.rtx_def* %938, null
  br i1 %939, label %940, label %945

; <label>:940:                                    ; preds = %934
  %941 = load %union.tree_node*, %union.tree_node** %2, align 8
  %942 = bitcast %union.tree_node* %941 to %struct.tree_decl*
  %943 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %942, i32 0, i32 17
  %944 = load %struct.rtx_def*, %struct.rtx_def** %943, align 8
  br label %951

; <label>:945:                                    ; preds = %934
  %946 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %946, i8* null)
  %947 = load %union.tree_node*, %union.tree_node** %2, align 8
  %948 = bitcast %union.tree_node* %947 to %struct.tree_decl*
  %949 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %948, i32 0, i32 17
  %950 = load %struct.rtx_def*, %struct.rtx_def** %949, align 8
  br label %951

; <label>:951:                                    ; preds = %945, %940
  %952 = phi %struct.rtx_def* [ %944, %940 ], [ %950, %945 ]
  %953 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %952, i32 0, i32 1
  %954 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %953, i64 0, i64 0
  %955 = bitcast %union.rtunion_def* %954 to %struct.rtx_def**
  %956 = load %struct.rtx_def*, %struct.rtx_def** %955, align 8
  %957 = bitcast %struct.rtx_def* %956 to i32*
  %958 = load i32, i32* %957, align 8
  %959 = and i32 %958, 65535
  %960 = icmp eq i32 %959, 61
  br i1 %960, label %961, label %962

; <label>:961:                                    ; preds = %951
  store i32 0, i32* @current_sym_value, align 4
  br label %994

; <label>:962:                                    ; preds = %951
  %963 = load %union.tree_node*, %union.tree_node** %2, align 8
  %964 = bitcast %union.tree_node* %963 to %struct.tree_decl*
  %965 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %964, i32 0, i32 17
  %966 = load %struct.rtx_def*, %struct.rtx_def** %965, align 8
  %967 = icmp ne %struct.rtx_def* %966, null
  br i1 %967, label %968, label %973

; <label>:968:                                    ; preds = %962
  %969 = load %union.tree_node*, %union.tree_node** %2, align 8
  %970 = bitcast %union.tree_node* %969 to %struct.tree_decl*
  %971 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %970, i32 0, i32 17
  %972 = load %struct.rtx_def*, %struct.rtx_def** %971, align 8
  br label %979

; <label>:973:                                    ; preds = %962
  %974 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %974, i8* null)
  %975 = load %union.tree_node*, %union.tree_node** %2, align 8
  %976 = bitcast %union.tree_node* %975 to %struct.tree_decl*
  %977 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %976, i32 0, i32 17
  %978 = load %struct.rtx_def*, %struct.rtx_def** %977, align 8
  br label %979

; <label>:979:                                    ; preds = %973, %968
  %980 = phi %struct.rtx_def* [ %972, %968 ], [ %978, %973 ]
  %981 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %980, i32 0, i32 1
  %982 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %981, i64 0, i64 0
  %983 = bitcast %union.rtunion_def* %982 to %struct.rtx_def**
  %984 = load %struct.rtx_def*, %struct.rtx_def** %983, align 8
  %985 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %984, i32 0, i32 1
  %986 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %985, i64 0, i64 1
  %987 = bitcast %union.rtunion_def* %986 to %struct.rtx_def**
  %988 = load %struct.rtx_def*, %struct.rtx_def** %987, align 8
  %989 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %988, i32 0, i32 1
  %990 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %989, i64 0, i64 0
  %991 = bitcast %union.rtunion_def* %990 to i64*
  %992 = load i64, i64* %991, align 8
  %993 = trunc i64 %992 to i32
  store i32 %993, i32* @current_sym_value, align 4
  br label %994

; <label>:994:                                    ; preds = %979, %961
  store %struct.rtx_def* null, %struct.rtx_def** @current_sym_addr, align 8
  %995 = load %union.tree_node*, %union.tree_node** %2, align 8
  %996 = bitcast %union.tree_node* %995 to %struct.tree_decl*
  %997 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %996, i32 0, i32 8
  %998 = load %union.tree_node*, %union.tree_node** %997, align 8
  %999 = icmp ne %union.tree_node* %998, null
  br i1 %999, label %1000, label %1022

; <label>:1000:                                   ; preds = %994
  %1001 = load %union.tree_node*, %union.tree_node** %2, align 8
  %1002 = bitcast %union.tree_node* %1001 to %struct.tree_decl*
  %1003 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1002, i32 0, i32 8
  %1004 = load %union.tree_node*, %union.tree_node** %1003, align 8
  %1005 = bitcast %union.tree_node* %1004 to %struct.tree_identifier*
  %1006 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %1005, i32 0, i32 1
  %1007 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %1006, i32 0, i32 1
  %1008 = load i8*, i8** %1007, align 8
  %1009 = call i64 @strlen(i8* %1008) #7
  %1010 = add i64 2, %1009
  %1011 = trunc i64 %1010 to i32
  store i32 %1011, i32* @current_sym_nchars, align 4
  %1012 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1013 = load %union.tree_node*, %union.tree_node** %2, align 8
  %1014 = bitcast %union.tree_node* %1013 to %struct.tree_decl*
  %1015 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %1014, i32 0, i32 8
  %1016 = load %union.tree_node*, %union.tree_node** %1015, align 8
  %1017 = bitcast %union.tree_node* %1016 to %struct.tree_identifier*
  %1018 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %1017, i32 0, i32 1
  %1019 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %1018, i32 0, i32 1
  %1020 = load i8*, i8** %1019, align 8
  %1021 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1012, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %1020, i32 112)
  br label %1025

; <label>:1022:                                   ; preds = %994
  store i32 8, i32* @current_sym_nchars, align 4
  %1023 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %1024 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1023, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 112)
  br label %1025

; <label>:1025:                                   ; preds = %1022, %1000
  %1026 = load i32, i32* @current_sym_value, align 4
  store i32 %1026, i32* @current_sym_value, align 4
  %1027 = load %union.tree_node*, %union.tree_node** %2, align 8
  %1028 = bitcast %union.tree_node* %1027 to %struct.tree_common*
  %1029 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1028, i32 0, i32 1
  %1030 = load %union.tree_node*, %union.tree_node** %1029, align 8
  call void @dbxout_type(%union.tree_node* %1030, i32 0)
  %1031 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @dbxout_finish_symbol(%union.tree_node* %1031)
  br label %1032

; <label>:1032:                                   ; preds = %1025, %924, %897, %870, %843, %816, %789, %762, %735, %710, %687
  br label %1033

; <label>:1033:                                   ; preds = %1032, %660
  br label %1034

; <label>:1034:                                   ; preds = %1033, %519
  br label %1035

; <label>:1035:                                   ; preds = %1034, %277
  br label %1036

; <label>:1036:                                   ; preds = %1035, %134
  br label %1037

; <label>:1037:                                   ; preds = %1036, %18, %12
  br label %1038

; <label>:1038:                                   ; preds = %1037
  %1039 = load %union.tree_node*, %union.tree_node** %2, align 8
  %1040 = bitcast %union.tree_node* %1039 to %struct.tree_common*
  %1041 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1040, i32 0, i32 0
  %1042 = load %union.tree_node*, %union.tree_node** %1041, align 8
  store %union.tree_node* %1042, %union.tree_node** %2, align 8
  br label %9

; <label>:1043:                                   ; preds = %9
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind uwtable
define void @dbxout_reg_parms(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %221, %1
  %4 = load %union.tree_node*, %union.tree_node** %2, align 8
  %5 = icmp ne %union.tree_node* %4, null
  br i1 %5, label %6, label %226

; <label>:6:                                      ; preds = %3
  %7 = load %union.tree_node*, %union.tree_node** %2, align 8
  %8 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %9 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %8, i32 0, i32 8
  %10 = load %union.tree_node*, %union.tree_node** %9, align 8
  %11 = icmp ne %union.tree_node* %10, null
  br i1 %11, label %12, label %220

; <label>:12:                                     ; preds = %6
  %13 = load %union.tree_node*, %union.tree_node** %2, align 8
  %14 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %15 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %14, i32 0, i32 19
  %16 = bitcast %union.anon.1* %15 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 66
  br i1 %21, label %22, label %220

; <label>:22:                                     ; preds = %12
  %23 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @dbxout_prepare_symbol(%union.tree_node* %23)
  %24 = load %union.tree_node*, %union.tree_node** %2, align 8
  %25 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %26 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %25, i32 0, i32 17
  %27 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %28 = icmp ne %struct.rtx_def* %27, null
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %22
  %30 = load %union.tree_node*, %union.tree_node** %2, align 8
  %31 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %32 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %31, i32 0, i32 17
  %33 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  br label %40

; <label>:34:                                     ; preds = %22
  %35 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %35, i8* null)
  %36 = load %union.tree_node*, %union.tree_node** %2, align 8
  %37 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %38 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %37, i32 0, i32 17
  %39 = load %struct.rtx_def*, %struct.rtx_def** %38, align 8
  br label %40

; <label>:40:                                     ; preds = %34, %29
  %41 = phi %struct.rtx_def* [ %33, %29 ], [ %39, %34 ]
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 61
  br i1 %45, label %46, label %95

; <label>:46:                                     ; preds = %40
  %47 = load %union.tree_node*, %union.tree_node** %2, align 8
  %48 = bitcast %union.tree_node* %47 to %struct.tree_decl*
  %49 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %48, i32 0, i32 17
  %50 = load %struct.rtx_def*, %struct.rtx_def** %49, align 8
  %51 = icmp ne %struct.rtx_def* %50, null
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %46
  %53 = load %union.tree_node*, %union.tree_node** %2, align 8
  %54 = bitcast %union.tree_node* %53 to %struct.tree_decl*
  %55 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %54, i32 0, i32 17
  %56 = load %struct.rtx_def*, %struct.rtx_def** %55, align 8
  br label %63

; <label>:57:                                     ; preds = %46
  %58 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %58, i8* null)
  %59 = load %union.tree_node*, %union.tree_node** %2, align 8
  %60 = bitcast %union.tree_node* %59 to %struct.tree_decl*
  %61 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %60, i32 0, i32 17
  %62 = load %struct.rtx_def*, %struct.rtx_def** %61, align 8
  br label %63

; <label>:63:                                     ; preds = %57, %52
  %64 = phi %struct.rtx_def* [ %56, %52 ], [ %62, %57 ]
  %65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %65, i64 0, i64 0
  %67 = bitcast %union.rtunion_def* %66 to i32*
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %68, 53
  br i1 %69, label %70, label %95

; <label>:70:                                     ; preds = %63
  %71 = load %union.tree_node*, %union.tree_node** %2, align 8
  %72 = load %union.tree_node*, %union.tree_node** %2, align 8
  %73 = bitcast %union.tree_node* %72 to %struct.tree_common*
  %74 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %73, i32 0, i32 1
  %75 = load %union.tree_node*, %union.tree_node** %74, align 8
  %76 = load %union.tree_node*, %union.tree_node** %2, align 8
  %77 = bitcast %union.tree_node* %76 to %struct.tree_decl*
  %78 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %77, i32 0, i32 17
  %79 = load %struct.rtx_def*, %struct.rtx_def** %78, align 8
  %80 = icmp ne %struct.rtx_def* %79, null
  br i1 %80, label %81, label %86

; <label>:81:                                     ; preds = %70
  %82 = load %union.tree_node*, %union.tree_node** %2, align 8
  %83 = bitcast %union.tree_node* %82 to %struct.tree_decl*
  %84 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %83, i32 0, i32 17
  %85 = load %struct.rtx_def*, %struct.rtx_def** %84, align 8
  br label %92

; <label>:86:                                     ; preds = %70
  %87 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %87, i8* null)
  %88 = load %union.tree_node*, %union.tree_node** %2, align 8
  %89 = bitcast %union.tree_node* %88 to %struct.tree_decl*
  %90 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %89, i32 0, i32 17
  %91 = load %struct.rtx_def*, %struct.rtx_def** %90, align 8
  br label %92

; <label>:92:                                     ; preds = %86, %81
  %93 = phi %struct.rtx_def* [ %85, %81 ], [ %91, %86 ]
  %94 = call i32 @dbxout_symbol_location(%union.tree_node* %71, %union.tree_node* %75, i8* null, %struct.rtx_def* %93)
  br label %219

; <label>:95:                                     ; preds = %63, %40
  %96 = load %union.tree_node*, %union.tree_node** %2, align 8
  %97 = bitcast %union.tree_node* %96 to %struct.tree_decl*
  %98 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %97, i32 0, i32 17
  %99 = load %struct.rtx_def*, %struct.rtx_def** %98, align 8
  %100 = icmp ne %struct.rtx_def* %99, null
  br i1 %100, label %101, label %106

; <label>:101:                                    ; preds = %95
  %102 = load %union.tree_node*, %union.tree_node** %2, align 8
  %103 = bitcast %union.tree_node* %102 to %struct.tree_decl*
  %104 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %103, i32 0, i32 17
  %105 = load %struct.rtx_def*, %struct.rtx_def** %104, align 8
  br label %112

; <label>:106:                                    ; preds = %95
  %107 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %107, i8* null)
  %108 = load %union.tree_node*, %union.tree_node** %2, align 8
  %109 = bitcast %union.tree_node* %108 to %struct.tree_decl*
  %110 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %109, i32 0, i32 17
  %111 = load %struct.rtx_def*, %struct.rtx_def** %110, align 8
  br label %112

; <label>:112:                                    ; preds = %106, %101
  %113 = phi %struct.rtx_def* [ %105, %101 ], [ %111, %106 ]
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 65
  br i1 %117, label %118, label %143

; <label>:118:                                    ; preds = %112
  %119 = load %union.tree_node*, %union.tree_node** %2, align 8
  %120 = load %union.tree_node*, %union.tree_node** %2, align 8
  %121 = bitcast %union.tree_node* %120 to %struct.tree_common*
  %122 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %121, i32 0, i32 1
  %123 = load %union.tree_node*, %union.tree_node** %122, align 8
  %124 = load %union.tree_node*, %union.tree_node** %2, align 8
  %125 = bitcast %union.tree_node* %124 to %struct.tree_decl*
  %126 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %125, i32 0, i32 17
  %127 = load %struct.rtx_def*, %struct.rtx_def** %126, align 8
  %128 = icmp ne %struct.rtx_def* %127, null
  br i1 %128, label %129, label %134

; <label>:129:                                    ; preds = %118
  %130 = load %union.tree_node*, %union.tree_node** %2, align 8
  %131 = bitcast %union.tree_node* %130 to %struct.tree_decl*
  %132 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %131, i32 0, i32 17
  %133 = load %struct.rtx_def*, %struct.rtx_def** %132, align 8
  br label %140

; <label>:134:                                    ; preds = %118
  %135 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %135, i8* null)
  %136 = load %union.tree_node*, %union.tree_node** %2, align 8
  %137 = bitcast %union.tree_node* %136 to %struct.tree_decl*
  %138 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %137, i32 0, i32 17
  %139 = load %struct.rtx_def*, %struct.rtx_def** %138, align 8
  br label %140

; <label>:140:                                    ; preds = %134, %129
  %141 = phi %struct.rtx_def* [ %133, %129 ], [ %139, %134 ]
  %142 = call i32 @dbxout_symbol_location(%union.tree_node* %119, %union.tree_node* %123, i8* null, %struct.rtx_def* %141)
  br label %218

; <label>:143:                                    ; preds = %112
  %144 = load %union.tree_node*, %union.tree_node** %2, align 8
  %145 = bitcast %union.tree_node* %144 to %struct.tree_decl*
  %146 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %145, i32 0, i32 17
  %147 = load %struct.rtx_def*, %struct.rtx_def** %146, align 8
  %148 = icmp ne %struct.rtx_def* %147, null
  br i1 %148, label %149, label %154

; <label>:149:                                    ; preds = %143
  %150 = load %union.tree_node*, %union.tree_node** %2, align 8
  %151 = bitcast %union.tree_node* %150 to %struct.tree_decl*
  %152 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %151, i32 0, i32 17
  %153 = load %struct.rtx_def*, %struct.rtx_def** %152, align 8
  br label %160

; <label>:154:                                    ; preds = %143
  %155 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %155, i8* null)
  %156 = load %union.tree_node*, %union.tree_node** %2, align 8
  %157 = bitcast %union.tree_node* %156 to %struct.tree_decl*
  %158 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %157, i32 0, i32 17
  %159 = load %struct.rtx_def*, %struct.rtx_def** %158, align 8
  br label %160

; <label>:160:                                    ; preds = %154, %149
  %161 = phi %struct.rtx_def* [ %153, %149 ], [ %159, %154 ]
  %162 = bitcast %struct.rtx_def* %161 to i32*
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 66
  br i1 %165, label %166, label %217

; <label>:166:                                    ; preds = %160
  %167 = load %union.tree_node*, %union.tree_node** %2, align 8
  %168 = bitcast %union.tree_node* %167 to %struct.tree_decl*
  %169 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %168, i32 0, i32 17
  %170 = load %struct.rtx_def*, %struct.rtx_def** %169, align 8
  %171 = icmp ne %struct.rtx_def* %170, null
  br i1 %171, label %172, label %177

; <label>:172:                                    ; preds = %166
  %173 = load %union.tree_node*, %union.tree_node** %2, align 8
  %174 = bitcast %union.tree_node* %173 to %struct.tree_decl*
  %175 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %174, i32 0, i32 17
  %176 = load %struct.rtx_def*, %struct.rtx_def** %175, align 8
  br label %183

; <label>:177:                                    ; preds = %166
  %178 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %178, i8* null)
  %179 = load %union.tree_node*, %union.tree_node** %2, align 8
  %180 = bitcast %union.tree_node* %179 to %struct.tree_decl*
  %181 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %180, i32 0, i32 17
  %182 = load %struct.rtx_def*, %struct.rtx_def** %181, align 8
  br label %183

; <label>:183:                                    ; preds = %177, %172
  %184 = phi %struct.rtx_def* [ %176, %172 ], [ %182, %177 ]
  %185 = load %union.tree_node*, %union.tree_node** %2, align 8
  %186 = bitcast %union.tree_node* %185 to %struct.tree_decl*
  %187 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %186, i32 0, i32 19
  %188 = bitcast %union.anon.1* %187 to %struct.rtx_def**
  %189 = load %struct.rtx_def*, %struct.rtx_def** %188, align 8
  %190 = call i32 @rtx_equal_p(%struct.rtx_def* %184, %struct.rtx_def* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %217, label %192

; <label>:192:                                    ; preds = %183
  %193 = load %union.tree_node*, %union.tree_node** %2, align 8
  %194 = load %union.tree_node*, %union.tree_node** %2, align 8
  %195 = bitcast %union.tree_node* %194 to %struct.tree_common*
  %196 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %195, i32 0, i32 1
  %197 = load %union.tree_node*, %union.tree_node** %196, align 8
  %198 = load %union.tree_node*, %union.tree_node** %2, align 8
  %199 = bitcast %union.tree_node* %198 to %struct.tree_decl*
  %200 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %199, i32 0, i32 17
  %201 = load %struct.rtx_def*, %struct.rtx_def** %200, align 8
  %202 = icmp ne %struct.rtx_def* %201, null
  br i1 %202, label %203, label %208

; <label>:203:                                    ; preds = %192
  %204 = load %union.tree_node*, %union.tree_node** %2, align 8
  %205 = bitcast %union.tree_node* %204 to %struct.tree_decl*
  %206 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %205, i32 0, i32 17
  %207 = load %struct.rtx_def*, %struct.rtx_def** %206, align 8
  br label %214

; <label>:208:                                    ; preds = %192
  %209 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @make_decl_rtl(%union.tree_node* %209, i8* null)
  %210 = load %union.tree_node*, %union.tree_node** %2, align 8
  %211 = bitcast %union.tree_node* %210 to %struct.tree_decl*
  %212 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %211, i32 0, i32 17
  %213 = load %struct.rtx_def*, %struct.rtx_def** %212, align 8
  br label %214

; <label>:214:                                    ; preds = %208, %203
  %215 = phi %struct.rtx_def* [ %207, %203 ], [ %213, %208 ]
  %216 = call i32 @dbxout_symbol_location(%union.tree_node* %193, %union.tree_node* %197, i8* null, %struct.rtx_def* %215)
  br label %217

; <label>:217:                                    ; preds = %214, %183, %160
  br label %218

; <label>:218:                                    ; preds = %217, %140
  br label %219

; <label>:219:                                    ; preds = %218, %92
  br label %220

; <label>:220:                                    ; preds = %219, %12, %6
  br label %221

; <label>:221:                                    ; preds = %220
  %222 = load %union.tree_node*, %union.tree_node** %2, align 8
  %223 = bitcast %union.tree_node* %222 to %struct.tree_common*
  %224 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %223, i32 0, i32 0
  %225 = load %union.tree_node*, %union.tree_node** %224, align 8
  store %union.tree_node* %225, %union.tree_node** %2, align 8
  br label %3

; <label>:226:                                    ; preds = %3
  ret void
}

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %union.tree_node* @getdecls() #1

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

declare i8* @getpwd() #1

declare noalias i8* @concat(i8*, ...) #1

declare void @output_quoted_string(%struct._IO_FILE*, i8*) #1

declare void @assemble_name(%struct._IO_FILE*, i8*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare void @text_section() #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_typedefs(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %4 = load %union.tree_node*, %union.tree_node** %2, align 8
  %5 = icmp ne %union.tree_node* %4, null
  br i1 %5, label %6, label %62

; <label>:6:                                      ; preds = %1
  %7 = load %union.tree_node*, %union.tree_node** %2, align 8
  %8 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %8, i32 0, i32 0
  %10 = load %union.tree_node*, %union.tree_node** %9, align 8
  call void @dbxout_typedefs(%union.tree_node* %10)
  %11 = load %union.tree_node*, %union.tree_node** %2, align 8
  %12 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 33
  br i1 %16, label %17, label %61

; <label>:17:                                     ; preds = %6
  %18 = load %union.tree_node*, %union.tree_node** %2, align 8
  %19 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %19, i32 0, i32 1
  %21 = load %union.tree_node*, %union.tree_node** %20, align 8
  store %union.tree_node* %21, %union.tree_node** %3, align 8
  %22 = load %union.tree_node*, %union.tree_node** %3, align 8
  %23 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %24 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %23, i32 0, i32 11
  %25 = load %union.tree_node*, %union.tree_node** %24, align 8
  %26 = icmp ne %union.tree_node* %25, null
  br i1 %26, label %27, label %60

; <label>:27:                                     ; preds = %17
  %28 = load %union.tree_node*, %union.tree_node** %3, align 8
  %29 = bitcast %union.tree_node* %28 to %struct.tree_type*
  %30 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %29, i32 0, i32 11
  %31 = load %union.tree_node*, %union.tree_node** %30, align 8
  %32 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 33
  br i1 %36, label %37, label %60

; <label>:37:                                     ; preds = %27
  %38 = load %union.tree_node*, %union.tree_node** %3, align 8
  %39 = bitcast %union.tree_node* %38 to %struct.tree_type*
  %40 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %39, i32 0, i32 2
  %41 = load %union.tree_node*, %union.tree_node** %40, align 8
  %42 = icmp ne %union.tree_node* %41, null
  br i1 %42, label %43, label %60

; <label>:43:                                     ; preds = %37
  %44 = load %union.tree_node*, %union.tree_node** %3, align 8
  %45 = bitcast %union.tree_node* %44 to %struct.tree_type*
  %46 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %45, i32 0, i32 11
  %47 = load %union.tree_node*, %union.tree_node** %46, align 8
  %48 = bitcast %union.tree_node* %47 to %struct.tree_common*
  %49 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = lshr i32 %50, 14
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

; <label>:54:                                     ; preds = %43
  %55 = load %union.tree_node*, %union.tree_node** %3, align 8
  %56 = bitcast %union.tree_node* %55 to %struct.tree_type*
  %57 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %56, i32 0, i32 11
  %58 = load %union.tree_node*, %union.tree_node** %57, align 8
  %59 = call i32 @dbxout_symbol(%union.tree_node* %58, i32 0)
  br label %60

; <label>:60:                                     ; preds = %54, %43, %37, %27, %17
  br label %61

; <label>:61:                                     ; preds = %60, %6
  br label %62

; <label>:62:                                     ; preds = %61, %1
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_source_file(%struct._IO_FILE*, i8*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %51

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** @lastfile, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** @lastfile, align 8
  %14 = call i32 @strcmp(i8* %12, i8* %13) #7
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %51

; <label>:16:                                     ; preds = %11, %8
  br label %17

; <label>:17:                                     ; preds = %16
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 0
  %19 = load i32, i32* @source_label_number, align 4
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %19) #6
  br label %21

; <label>:21:                                     ; preds = %17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %25 = load i8*, i8** %4, align 8
  call void @output_quoted_string(%struct._IO_FILE* %24, i8* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 132)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %28, i8* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %31 = call i32 @fputc(i32 10, %struct._IO_FILE* %30)
  %32 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %33 = icmp ne %union.tree_node* %32, null
  br i1 %33, label %34, label %41

; <label>:34:                                     ; preds = %21
  %35 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %36 = bitcast %union.tree_node* %35 to %struct.tree_decl*
  %37 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %36, i32 0, i32 15
  %38 = load %union.tree_node*, %union.tree_node** %37, align 8
  %39 = icmp ne %union.tree_node* %38, null
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %34
  br label %42

; <label>:41:                                     ; preds = %34, %21
  call void @text_section()
  br label %42

; <label>:42:                                     ; preds = %41, %40
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %45 = load i32, i32* @source_label_number, align 4
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %45)
  br label %47

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* @source_label_number, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @source_label_number, align 4
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** @lastfile, align 8
  br label %51

; <label>:51:                                     ; preds = %47, %11, %2
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_block(%union.tree_node*, i32, %union.tree_node*) #0 {
  %4 = alloca %union.tree_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.tree_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [20 x i8], align 16
  %11 = alloca %union.tree_node*, align 8
  %12 = alloca [20 x i8], align 16
  store %union.tree_node* %0, %union.tree_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.tree_node* %2, %union.tree_node** %6, align 8
  store i32 -1, i32* %7, align 4
  %13 = load %union.tree_node*, %union.tree_node** @current_function_func_begin_label, align 8
  %14 = icmp ne %union.tree_node* %13, null
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %3
  %16 = load %union.tree_node*, %union.tree_node** @current_function_func_begin_label, align 8
  %17 = bitcast %union.tree_node* %16 to %struct.tree_identifier*
  %18 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  br label %48

; <label>:21:                                     ; preds = %3
  %22 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %23 = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %24 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %23, i32 0, i32 17
  %25 = load %struct.rtx_def*, %struct.rtx_def** %24, align 8
  %26 = icmp ne %struct.rtx_def* %25, null
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %21
  %28 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %29 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %30 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %29, i32 0, i32 17
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  br label %38

; <label>:32:                                     ; preds = %21
  %33 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @make_decl_rtl(%union.tree_node* %33, i8* null)
  %34 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %35 = bitcast %union.tree_node* %34 to %struct.tree_decl*
  %36 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %35, i32 0, i32 17
  %37 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  br label %38

; <label>:38:                                     ; preds = %32, %27
  %39 = phi %struct.rtx_def* [ %31, %27 ], [ %37, %32 ]
  %40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %40, i64 0, i64 0
  %42 = bitcast %union.rtunion_def* %41 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %42, align 8
  %44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %44, i64 0, i64 0
  %46 = bitcast %union.rtunion_def* %45 to i8**
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %8, align 8
  br label %48

; <label>:48:                                     ; preds = %38, %15
  br label %49

; <label>:49:                                     ; preds = %176, %48
  %50 = load %union.tree_node*, %union.tree_node** %4, align 8
  %51 = icmp ne %union.tree_node* %50, null
  br i1 %51, label %52, label %181

; <label>:52:                                     ; preds = %49
  %53 = load %union.tree_node*, %union.tree_node** %4, align 8
  %54 = bitcast %union.tree_node* %53 to %struct.tree_common*
  %55 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %176

; <label>:60:                                     ; preds = %52
  %61 = load %union.tree_node*, %union.tree_node** %4, align 8
  %62 = bitcast %union.tree_node* %61 to %struct.tree_common*
  %63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = lshr i32 %64, 14
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %176

; <label>:68:                                     ; preds = %60
  store i32 0, i32* %9, align 4
  %69 = load i32, i32* @debug_info_level, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %74, label %71

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

; <label>:74:                                     ; preds = %71, %68
  %75 = load %union.tree_node*, %union.tree_node** %4, align 8
  %76 = bitcast %union.tree_node* %75 to %struct.tree_block*
  %77 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %76, i32 0, i32 2
  %78 = load %union.tree_node*, %union.tree_node** %77, align 8
  %79 = call i32 @dbxout_syms(%union.tree_node* %78)
  store i32 %79, i32* %9, align 4
  br label %80

; <label>:80:                                     ; preds = %74, %71
  %81 = load %union.tree_node*, %union.tree_node** %6, align 8
  %82 = icmp ne %union.tree_node* %81, null
  br i1 %82, label %83, label %85

; <label>:83:                                     ; preds = %80
  %84 = load %union.tree_node*, %union.tree_node** %6, align 8
  call void @dbxout_reg_parms(%union.tree_node* %84)
  br label %85

; <label>:85:                                     ; preds = %83, %80
  %86 = load i32, i32* %5, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %147

; <label>:88:                                     ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %147

; <label>:91:                                     ; preds = %88
  %92 = load %union.tree_node*, %union.tree_node** %4, align 8
  %93 = bitcast %union.tree_node* %92 to %struct.tree_block*
  %94 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = lshr i32 %95, 2
  store i32 %96, i32* %7, align 4
  br label %97

; <label>:97:                                     ; preds = %91
  %98 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i32 0, i32 0
  %99 = load i32, i32* %7, align 4
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 %99) #6
  br label %101

; <label>:101:                                    ; preds = %97
  %102 = load %union.tree_node*, %union.tree_node** %4, align 8
  %103 = bitcast %union.tree_node* %102 to %struct.tree_block*
  %104 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %136

; <label>:108:                                    ; preds = %101
  %109 = load %union.tree_node*, %union.tree_node** %4, align 8
  %110 = bitcast %union.tree_node* %109 to %struct.tree_block*
  %111 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %110, i32 0, i32 2
  %112 = load %union.tree_node*, %union.tree_node** %111, align 8
  store %union.tree_node* %112, %union.tree_node** %11, align 8
  br label %113

; <label>:113:                                    ; preds = %116, %108
  %114 = load %union.tree_node*, %union.tree_node** %11, align 8
  %115 = icmp ne %union.tree_node* %114, null
  br i1 %115, label %116, label %135

; <label>:116:                                    ; preds = %113
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %118 = load %union.tree_node*, %union.tree_node** %11, align 8
  %119 = bitcast %union.tree_node* %118 to %struct.tree_decl*
  %120 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %119, i32 0, i32 8
  %121 = load %union.tree_node*, %union.tree_node** %120, align 8
  %122 = bitcast %union.tree_node* %121 to %struct.tree_identifier*
  %123 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %125, i32 84)
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %128 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %127, i8* %128)
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %131 = load %union.tree_node*, %union.tree_node** %11, align 8
  %132 = bitcast %union.tree_node* %131 to %struct.tree_common*
  %133 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %132, i32 0, i32 0
  %134 = load %union.tree_node*, %union.tree_node** %133, align 8
  store %union.tree_node* %134, %union.tree_node** %11, align 8
  br label %113

; <label>:135:                                    ; preds = %113
  br label %136

; <label>:136:                                    ; preds = %135, %101
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 192)
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %140 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %139, i8* %140)
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %142 = call i32 @putc(i32 45, %struct._IO_FILE* %141)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %144 = load i8*, i8** %8, align 8
  call void @assemble_name(%struct._IO_FILE* %143, i8* %144)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  br label %147

; <label>:147:                                    ; preds = %136, %88, %85
  %148 = load %union.tree_node*, %union.tree_node** %4, align 8
  %149 = bitcast %union.tree_node* %148 to %struct.tree_block*
  %150 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %149, i32 0, i32 3
  %151 = load %union.tree_node*, %union.tree_node** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  call void @dbxout_block(%union.tree_node* %151, i32 %153, %union.tree_node* null)
  %154 = load i32, i32* %5, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %175

; <label>:156:                                    ; preds = %147
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %175

; <label>:159:                                    ; preds = %156
  br label %160

; <label>:160:                                    ; preds = %159
  %161 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i32 0, i32 0
  %162 = load i32, i32* %7, align 4
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 %162) #6
  br label %164

; <label>:164:                                    ; preds = %160
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 224)
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %168 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %167, i8* %168)
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %170 = call i32 @putc(i32 45, %struct._IO_FILE* %169)
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %172 = load i8*, i8** %8, align 8
  call void @assemble_name(%struct._IO_FILE* %171, i8* %172)
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  br label %175

; <label>:175:                                    ; preds = %164, %156, %147
  br label %176

; <label>:176:                                    ; preds = %175, %60, %52
  %177 = load %union.tree_node*, %union.tree_node** %4, align 8
  %178 = bitcast %union.tree_node* %177 to %struct.tree_common*
  %179 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %178, i32 0, i32 0
  %180 = load %union.tree_node*, %union.tree_node** %179, align 8
  store %union.tree_node* %180, %union.tree_node** %4, align 8
  br label %49

; <label>:181:                                    ; preds = %49
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_function_end() #0 {
  %1 = alloca [100 x i8], align 16
  br label %2

; <label>:2:                                      ; preds = %0
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 0
  %4 = load i32, i32* @dbxout_function_end.scope_labelno, align 4
  %5 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %4) #6
  br label %6

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %9 = load i32, i32* @dbxout_function_end.scope_labelno, align 4
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %9)
  br label %11

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* @dbxout_function_end.scope_labelno, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @dbxout_function_end.scope_labelno, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 36)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %16, i8* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %19 = call i32 @putc(i32 45, %struct._IO_FILE* %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %21 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %22 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %23 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %22, i32 0, i32 17
  %24 = load %struct.rtx_def*, %struct.rtx_def** %23, align 8
  %25 = icmp ne %struct.rtx_def* %24, null
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %11
  %27 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %28 = bitcast %union.tree_node* %27 to %struct.tree_decl*
  %29 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %28, i32 0, i32 17
  %30 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  br label %37

; <label>:31:                                     ; preds = %11
  %32 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @make_decl_rtl(%union.tree_node* %32, i8* null)
  %33 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %34 = bitcast %union.tree_node* %33 to %struct.tree_decl*
  %35 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %34, i32 0, i32 17
  %36 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  br label %37

; <label>:37:                                     ; preds = %31, %26
  %38 = phi %struct.rtx_def* [ %30, %26 ], [ %36, %31 ]
  %39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %39, i64 0, i64 0
  %41 = bitcast %union.rtunion_def* %40 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %43, i64 0, i64 0
  %45 = bitcast %union.rtunion_def* %44 to i8**
  %46 = load i8*, i8** %45, align 8
  call void @assemble_name(%struct._IO_FILE* %20, i8* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  ret void
}

declare void @asm_fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_type_index(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca %struct.typeinfo*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %4 = load %struct.typeinfo*, %struct.typeinfo** @typevec, align 8
  %5 = load %union.tree_node*, %union.tree_node** %2, align 8
  %6 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %7 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %6, i32 0, i32 10
  %8 = bitcast %union.anon.2* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %4, i64 %10
  store %struct.typeinfo* %11, %struct.typeinfo** %3, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %13 = load %struct.typeinfo*, %struct.typeinfo** %3, align 8
  %14 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.typeinfo*, %struct.typeinfo** %3, align 8
  %17 = getelementptr inbounds %struct.typeinfo, %struct.typeinfo* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i32 %15, i32 %18)
  %20 = load i32, i32* @current_sym_nchars, align 4
  %21 = add nsw i32 %20, 9
  store i32 %21, i32* @current_sym_nchars, align 4
  ret void
}

declare %union.tree_node* @build_qualified_type(%union.tree_node*, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_range_type(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %5 = load %union.tree_node*, %union.tree_node** %2, align 8
  %6 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %6, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8
  %9 = icmp ne %union.tree_node* %8, null
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %1
  %11 = load %union.tree_node*, %union.tree_node** %2, align 8
  %12 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %12, i32 0, i32 1
  %14 = load %union.tree_node*, %union.tree_node** %13, align 8
  call void @dbxout_type(%union.tree_node* %14, i32 0)
  br label %37

; <label>:15:                                     ; preds = %1
  %16 = load %union.tree_node*, %union.tree_node** %2, align 8
  %17 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %18 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 255
  %21 = icmp ne i32 %20, 6
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %15
  %23 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @dbxout_type(%union.tree_node* %23, i32 0)
  br label %36

; <label>:24:                                     ; preds = %15
  %25 = load %union.tree_node*, %union.tree_node** %2, align 8
  %26 = bitcast %union.tree_node* %25 to %struct.tree_type*
  %27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %26, i32 0, i32 10
  %28 = bitcast %union.anon.2* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %24
  %32 = load %union.tree_node*, %union.tree_node** %2, align 8
  call void @dbxout_type_index(%union.tree_node* %32)
  br label %35

; <label>:33:                                     ; preds = %24
  %34 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8
  call void @dbxout_type_index(%union.tree_node* %34)
  br label %35

; <label>:35:                                     ; preds = %33, %31
  br label %36

; <label>:36:                                     ; preds = %35, %22
  br label %37

; <label>:37:                                     ; preds = %36, %10
  %38 = load %union.tree_node*, %union.tree_node** %2, align 8
  %39 = bitcast %union.tree_node* %38 to %struct.tree_type*
  %40 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %39, i32 0, i32 12
  %41 = load %union.tree_node*, %union.tree_node** %40, align 8
  %42 = icmp ne %union.tree_node* %41, null
  br i1 %42, label %43, label %60

; <label>:43:                                     ; preds = %37
  %44 = load %union.tree_node*, %union.tree_node** %2, align 8
  %45 = bitcast %union.tree_node* %44 to %struct.tree_type*
  %46 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %45, i32 0, i32 12
  %47 = load %union.tree_node*, %union.tree_node** %46, align 8
  %48 = call i32 @host_integerp(%union.tree_node* %47, i32 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

; <label>:50:                                     ; preds = %43
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %52 = call i32 @putc(i32 59, %struct._IO_FILE* %51)
  %53 = load i32, i32* @current_sym_nchars, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @current_sym_nchars, align 4
  %55 = load %union.tree_node*, %union.tree_node** %2, align 8
  %56 = bitcast %union.tree_node* %55 to %struct.tree_type*
  %57 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %56, i32 0, i32 12
  %58 = load %union.tree_node*, %union.tree_node** %57, align 8
  %59 = call i64 @tree_low_cst(%union.tree_node* %58, i32 0)
  call void @print_wide_int(i64 %59)
  br label %65

; <label>:60:                                     ; preds = %43, %37
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0))
  %63 = load i32, i32* @current_sym_nchars, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* @current_sym_nchars, align 4
  br label %65

; <label>:65:                                     ; preds = %60, %50
  %66 = load %union.tree_node*, %union.tree_node** %2, align 8
  %67 = bitcast %union.tree_node* %66 to %struct.tree_type*
  %68 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %67, i32 0, i32 13
  %69 = load %union.tree_node*, %union.tree_node** %68, align 8
  %70 = icmp ne %union.tree_node* %69, null
  br i1 %70, label %71, label %92

; <label>:71:                                     ; preds = %65
  %72 = load %union.tree_node*, %union.tree_node** %2, align 8
  %73 = bitcast %union.tree_node* %72 to %struct.tree_type*
  %74 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %73, i32 0, i32 13
  %75 = load %union.tree_node*, %union.tree_node** %74, align 8
  %76 = call i32 @host_integerp(%union.tree_node* %75, i32 0)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

; <label>:78:                                     ; preds = %71
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %80 = call i32 @putc(i32 59, %struct._IO_FILE* %79)
  %81 = load i32, i32* @current_sym_nchars, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @current_sym_nchars, align 4
  %83 = load %union.tree_node*, %union.tree_node** %2, align 8
  %84 = bitcast %union.tree_node* %83 to %struct.tree_type*
  %85 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %84, i32 0, i32 13
  %86 = load %union.tree_node*, %union.tree_node** %85, align 8
  %87 = call i64 @tree_low_cst(%union.tree_node* %86, i32 0)
  call void @print_wide_int(i64 %87)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %89 = call i32 @putc(i32 59, %struct._IO_FILE* %88)
  %90 = load i32, i32* @current_sym_nchars, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @current_sym_nchars, align 4
  br label %97

; <label>:92:                                     ; preds = %71, %65
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0))
  %95 = load i32, i32* @current_sym_nchars, align 4
  %96 = add nsw i32 %95, 4
  store i32 %96, i32* @current_sym_nchars, align 4
  br label %97

; <label>:97:                                     ; preds = %92, %78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_int_cst_octal(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %10 = load %union.tree_node*, %union.tree_node** %2, align 8
  %11 = bitcast %union.tree_node* %10 to %struct.tree_int_cst*
  %12 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  %15 = load %union.tree_node*, %union.tree_node** %2, align 8
  %16 = bitcast %union.tree_node* %15 to %struct.tree_int_cst*
  %17 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  store i32 2, i32* %5, align 4
  %20 = load %union.tree_node*, %union.tree_node** %2, align 8
  %21 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %21, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8
  %24 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %25 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 511
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %1
  br label %55

; <label>:31:                                     ; preds = %1
  %32 = load i32, i32* %6, align 4
  %33 = icmp ugt i32 %32, 64
  br i1 %33, label %34, label %42

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = sub i32 %35, 64
  %37 = zext i32 %36 to i64
  %38 = shl i64 1, %37
  %39 = sub nsw i64 %38, 1
  %40 = load i64, i64* %3, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %3, align 8
  br label %54

; <label>:42:                                     ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 64
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  store i64 0, i64* %3, align 8
  br label %53

; <label>:46:                                     ; preds = %42
  store i64 0, i64* %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = shl i64 1, %48
  %50 = sub nsw i64 %49, 1
  %51 = load i64, i64* %4, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %4, align 8
  br label %53

; <label>:53:                                     ; preds = %46, %45
  br label %54

; <label>:54:                                     ; preds = %53, %34
  br label %55

; <label>:55:                                     ; preds = %54, %30
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0))
  %58 = load i32, i32* @current_sym_nchars, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @current_sym_nchars, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %55
  %63 = load i64, i64* %3, align 8
  call void @print_octal(i64 %63, i32 21)
  %64 = load i64, i64* %4, align 8
  call void @print_octal(i64 %64, i32 21)
  br label %94

; <label>:65:                                     ; preds = %55
  %66 = load i64, i64* %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = lshr i64 %66, %68
  store i64 %69, i64* %7, align 8
  %70 = load i64, i64* %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = shl i64 1, %72
  %74 = sub nsw i64 %73, 1
  %75 = and i64 %70, %74
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 3, %76
  %78 = zext i32 %77 to i64
  %79 = shl i64 %75, %78
  %80 = load i64, i64* %4, align 8
  %81 = lshr i64 %80, 63
  %82 = or i64 %79, %81
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %4, align 8
  %84 = and i64 %83, 9223372036854775807
  store i64 %84, i64* %9, align 8
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %86 = load i64, i64* %7, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i64, i64* %8, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %87, i32 %89)
  %91 = load i32, i32* @current_sym_nchars, align 4
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* @current_sym_nchars, align 4
  %93 = load i64, i64* %9, align 8
  call void @print_octal(i64 %93, i32 21)
  br label %94

; <label>:94:                                     ; preds = %65, %62
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_wide_int(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i64 %5)
  %7 = load i64, i64* %2, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* %2, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %2, align 8
  br label %14

; <label>:14:                                     ; preds = %9, %1
  br label %15

; <label>:15:                                     ; preds = %18, %14
  %16 = load i64, i64* %2, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %15
  %19 = load i64, i64* %2, align 8
  %20 = sdiv i64 %19, 10
  store i64 %20, i64* %2, align 8
  br label %15

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @current_sym_nchars, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* @current_sym_nchars, align 4
  ret void
}

declare i64 @int_size_in_bytes(%union.tree_node*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_type_name(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %4 = load %union.tree_node*, %union.tree_node** %2, align 8
  %5 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %6 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %5, i32 0, i32 11
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8
  %8 = icmp eq %union.tree_node* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1815, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.dbxout_type_name, i32 0, i32 0)) #8
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = load %union.tree_node*, %union.tree_node** %2, align 8
  %12 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %13 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %12, i32 0, i32 11
  %14 = load %union.tree_node*, %union.tree_node** %13, align 8
  %15 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %10
  %21 = load %union.tree_node*, %union.tree_node** %2, align 8
  %22 = bitcast %union.tree_node* %21 to %struct.tree_type*
  %23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %22, i32 0, i32 11
  %24 = load %union.tree_node*, %union.tree_node** %23, align 8
  store %union.tree_node* %24, %union.tree_node** %3, align 8
  br label %45

; <label>:25:                                     ; preds = %10
  %26 = load %union.tree_node*, %union.tree_node** %2, align 8
  %27 = bitcast %union.tree_node* %26 to %struct.tree_type*
  %28 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %27, i32 0, i32 11
  %29 = load %union.tree_node*, %union.tree_node** %28, align 8
  %30 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 33
  br i1 %34, label %35, label %43

; <label>:35:                                     ; preds = %25
  %36 = load %union.tree_node*, %union.tree_node** %2, align 8
  %37 = bitcast %union.tree_node* %36 to %struct.tree_type*
  %38 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %37, i32 0, i32 11
  %39 = load %union.tree_node*, %union.tree_node** %38, align 8
  %40 = bitcast %union.tree_node* %39 to %struct.tree_decl*
  %41 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %40, i32 0, i32 8
  %42 = load %union.tree_node*, %union.tree_node** %41, align 8
  store %union.tree_node* %42, %union.tree_node** %3, align 8
  br label %44

; <label>:43:                                     ; preds = %25
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 1825, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.dbxout_type_name, i32 0, i32 0)) #8
  unreachable

; <label>:44:                                     ; preds = %35
  br label %45

; <label>:45:                                     ; preds = %44, %20
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %47 = load %union.tree_node*, %union.tree_node** %3, align 8
  %48 = bitcast %union.tree_node* %47 to %struct.tree_identifier*
  %49 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* %51)
  %53 = load %union.tree_node*, %union.tree_node** %3, align 8
  %54 = bitcast %union.tree_node* %53 to %struct.tree_identifier*
  %55 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @current_sym_nchars, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* @current_sym_nchars, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_type_fields(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %5 = load %union.tree_node*, %union.tree_node** %2, align 8
  %6 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %7 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %6, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8
  store %union.tree_node* %8, %union.tree_node** %3, align 8
  br label %9

; <label>:9:                                      ; preds = %254, %1
  %10 = load %union.tree_node*, %union.tree_node** %3, align 8
  %11 = icmp ne %union.tree_node* %10, null
  br i1 %11, label %12, label %259

; <label>:12:                                     ; preds = %9
  %13 = load %union.tree_node*, %union.tree_node** %3, align 8
  %14 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 33
  br i1 %18, label %54, label %19

; <label>:19:                                     ; preds = %12
  %20 = load %union.tree_node*, %union.tree_node** %3, align 8
  %21 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 255
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %44

; <label>:26:                                     ; preds = %19
  %27 = load %union.tree_node*, %union.tree_node** %3, align 8
  %28 = call %union.tree_node* @bit_position(%union.tree_node* %27)
  %29 = call i32 @host_integerp(%union.tree_node* %28, i32 0)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

; <label>:31:                                     ; preds = %26
  %32 = load %union.tree_node*, %union.tree_node** %3, align 8
  %33 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %34 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %33, i32 0, i32 4
  %35 = load %union.tree_node*, %union.tree_node** %34, align 8
  %36 = icmp ne %union.tree_node* %35, null
  br i1 %36, label %37, label %54

; <label>:37:                                     ; preds = %31
  %38 = load %union.tree_node*, %union.tree_node** %3, align 8
  %39 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %40 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %39, i32 0, i32 4
  %41 = load %union.tree_node*, %union.tree_node** %40, align 8
  %42 = call i32 @host_integerp(%union.tree_node* %41, i32 1)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

; <label>:44:                                     ; preds = %37, %19
  %45 = load %union.tree_node*, %union.tree_node** %3, align 8
  %46 = bitcast %union.tree_node* %45 to %struct.tree_decl*
  %47 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %46, i32 0, i32 5
  %48 = bitcast i48* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = lshr i64 %49, 14
  %51 = and i64 %50, 1
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %44, %37, %31, %26, %12
  br label %254

; <label>:55:                                     ; preds = %44
  %56 = load %union.tree_node*, %union.tree_node** %3, align 8
  %57 = bitcast %union.tree_node* %56 to %struct.tree_common*
  %58 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 255
  %61 = icmp ne i32 %60, 32
  br i1 %61, label %62, label %252

; <label>:62:                                     ; preds = %55
  %63 = load %union.tree_node*, %union.tree_node** %3, align 8
  %64 = load %union.tree_node*, %union.tree_node** %2, align 8
  %65 = bitcast %union.tree_node* %64 to %struct.tree_type*
  %66 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %65, i32 0, i32 1
  %67 = load %union.tree_node*, %union.tree_node** %66, align 8
  %68 = icmp ne %union.tree_node* %63, %67
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %62
  br label %70

; <label>:70:                                     ; preds = %69
  br label %71

; <label>:71:                                     ; preds = %70
  br label %72

; <label>:72:                                     ; preds = %71, %62
  %73 = load %union.tree_node*, %union.tree_node** %3, align 8
  %74 = bitcast %union.tree_node* %73 to %struct.tree_decl*
  %75 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %74, i32 0, i32 8
  %76 = load %union.tree_node*, %union.tree_node** %75, align 8
  %77 = icmp ne %union.tree_node* %76, null
  br i1 %77, label %78, label %100

; <label>:78:                                     ; preds = %72
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %80 = load %union.tree_node*, %union.tree_node** %3, align 8
  %81 = bitcast %union.tree_node* %80 to %struct.tree_decl*
  %82 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %81, i32 0, i32 8
  %83 = load %union.tree_node*, %union.tree_node** %82, align 8
  %84 = bitcast %union.tree_node* %83 to %struct.tree_identifier*
  %85 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8* %87)
  %89 = load %union.tree_node*, %union.tree_node** %3, align 8
  %90 = bitcast %union.tree_node* %89 to %struct.tree_decl*
  %91 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %90, i32 0, i32 8
  %92 = load %union.tree_node*, %union.tree_node** %91, align 8
  %93 = bitcast %union.tree_node* %92 to %struct.tree_identifier*
  %94 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add i32 2, %96
  %98 = load i32, i32* @current_sym_nchars, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* @current_sym_nchars, align 4
  br label %105

; <label>:100:                                    ; preds = %72
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0))
  %103 = load i32, i32* @current_sym_nchars, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @current_sym_nchars, align 4
  br label %105

; <label>:105:                                    ; preds = %100, %78
  %106 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %157

; <label>:108:                                    ; preds = %105
  %109 = load %union.tree_node*, %union.tree_node** %3, align 8
  %110 = bitcast %union.tree_node* %109 to %struct.tree_common*
  %111 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = lshr i32 %112, 20
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %131, label %116

; <label>:116:                                    ; preds = %108
  %117 = load %union.tree_node*, %union.tree_node** %3, align 8
  %118 = bitcast %union.tree_node* %117 to %struct.tree_common*
  %119 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = lshr i32 %120, 21
  %122 = and i32 %121, 1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %131, label %124

; <label>:124:                                    ; preds = %116
  %125 = load %union.tree_node*, %union.tree_node** %3, align 8
  %126 = bitcast %union.tree_node* %125 to %struct.tree_common*
  %127 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 255
  %130 = icmp ne i32 %129, 37
  br i1 %130, label %131, label %157

; <label>:131:                                    ; preds = %124, %116, %108
  store i32 1, i32* @have_used_extensions, align 4
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %133 = call i32 @putc(i32 47, %struct._IO_FILE* %132)
  %134 = load %union.tree_node*, %union.tree_node** %3, align 8
  %135 = bitcast %union.tree_node* %134 to %struct.tree_common*
  %136 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = lshr i32 %137, 20
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %131
  br label %151

; <label>:142:                                    ; preds = %131
  %143 = load %union.tree_node*, %union.tree_node** %3, align 8
  %144 = bitcast %union.tree_node* %143 to %struct.tree_common*
  %145 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = lshr i32 %146, 21
  %148 = and i32 %147, 1
  %149 = icmp ne i32 %148, 0
  %150 = select i1 %149, i32 49, i32 50
  br label %151

; <label>:151:                                    ; preds = %142, %141
  %152 = phi i32 [ 48, %141 ], [ %150, %142 ]
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %154 = call i32 @putc(i32 %152, %struct._IO_FILE* %153)
  %155 = load i32, i32* @current_sym_nchars, align 4
  %156 = add nsw i32 %155, 2
  store i32 %156, i32* @current_sym_nchars, align 4
  br label %157

; <label>:157:                                    ; preds = %151, %124, %105
  %158 = load %union.tree_node*, %union.tree_node** %3, align 8
  %159 = bitcast %union.tree_node* %158 to %struct.tree_common*
  %160 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, 255
  %163 = icmp eq i32 %162, 37
  br i1 %163, label %164, label %175

; <label>:164:                                    ; preds = %157
  %165 = load %union.tree_node*, %union.tree_node** %3, align 8
  %166 = bitcast %union.tree_node* %165 to %struct.tree_decl*
  %167 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %166, i32 0, i32 11
  %168 = load %union.tree_node*, %union.tree_node** %167, align 8
  %169 = icmp ne %union.tree_node* %168, null
  br i1 %169, label %170, label %175

; <label>:170:                                    ; preds = %164
  %171 = load %union.tree_node*, %union.tree_node** %3, align 8
  %172 = bitcast %union.tree_node* %171 to %struct.tree_decl*
  %173 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %172, i32 0, i32 11
  %174 = load %union.tree_node*, %union.tree_node** %173, align 8
  br label %180

; <label>:175:                                    ; preds = %164, %157
  %176 = load %union.tree_node*, %union.tree_node** %3, align 8
  %177 = bitcast %union.tree_node* %176 to %struct.tree_common*
  %178 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %177, i32 0, i32 1
  %179 = load %union.tree_node*, %union.tree_node** %178, align 8
  br label %180

; <label>:180:                                    ; preds = %175, %170
  %181 = phi %union.tree_node* [ %174, %170 ], [ %179, %175 ]
  call void @dbxout_type(%union.tree_node* %181, i32 0)
  %182 = load %union.tree_node*, %union.tree_node** %3, align 8
  %183 = bitcast %union.tree_node* %182 to %struct.tree_common*
  %184 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, 255
  %187 = icmp eq i32 %186, 34
  br i1 %187, label %188, label %235

; <label>:188:                                    ; preds = %180
  %189 = load %union.tree_node*, %union.tree_node** %3, align 8
  %190 = bitcast %union.tree_node* %189 to %struct.tree_common*
  %191 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = lshr i32 %192, 18
  %194 = and i32 %193, 1
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %229

; <label>:196:                                    ; preds = %188
  %197 = load i32, i32* @use_gnu_debug_info_extensions, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %229

; <label>:199:                                    ; preds = %196
  %200 = load %union.tree_node*, %union.tree_node** %3, align 8
  %201 = bitcast %union.tree_node* %200 to %struct.tree_decl*
  %202 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %201, i32 0, i32 14
  %203 = load %union.tree_node*, %union.tree_node** %202, align 8
  %204 = icmp ne %union.tree_node* %203, null
  br i1 %204, label %205, label %206

; <label>:205:                                    ; preds = %199
  br label %209

; <label>:206:                                    ; preds = %199
  %207 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %208 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void %207(%union.tree_node* %208)
  br label %209

; <label>:209:                                    ; preds = %206, %205
  %210 = load %union.tree_node*, %union.tree_node** %3, align 8
  %211 = bitcast %union.tree_node* %210 to %struct.tree_decl*
  %212 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %211, i32 0, i32 14
  %213 = load %union.tree_node*, %union.tree_node** %212, align 8
  store %union.tree_node* %213, %union.tree_node** %4, align 8
  store i32 1, i32* @have_used_extensions, align 4
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %215 = load %union.tree_node*, %union.tree_node** %4, align 8
  %216 = bitcast %union.tree_node* %215 to %struct.tree_identifier*
  %217 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8* %219)
  %221 = load %union.tree_node*, %union.tree_node** %4, align 8
  %222 = bitcast %union.tree_node* %221 to %struct.tree_identifier*
  %223 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = add i32 %225, 2
  %227 = load i32, i32* @current_sym_nchars, align 4
  %228 = add i32 %227, %226
  store i32 %228, i32* @current_sym_nchars, align 4
  br label %234

; <label>:229:                                    ; preds = %196, %188
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0))
  %232 = load i32, i32* @current_sym_nchars, align 4
  %233 = add nsw i32 %232, 5
  store i32 %233, i32* @current_sym_nchars, align 4
  br label %234

; <label>:234:                                    ; preds = %229, %209
  br label %251

; <label>:235:                                    ; preds = %180
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %237 = call i32 @putc(i32 44, %struct._IO_FILE* %236)
  %238 = load %union.tree_node*, %union.tree_node** %3, align 8
  %239 = call i64 @int_bit_position(%union.tree_node* %238)
  call void @print_wide_int(i64 %239)
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %241 = call i32 @putc(i32 44, %struct._IO_FILE* %240)
  %242 = load %union.tree_node*, %union.tree_node** %3, align 8
  %243 = bitcast %union.tree_node* %242 to %struct.tree_decl*
  %244 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %243, i32 0, i32 4
  %245 = load %union.tree_node*, %union.tree_node** %244, align 8
  %246 = call i64 @tree_low_cst(%union.tree_node* %245, i32 1)
  call void @print_wide_int(i64 %246)
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %248 = call i32 @putc(i32 59, %struct._IO_FILE* %247)
  %249 = load i32, i32* @current_sym_nchars, align 4
  %250 = add nsw i32 %249, 3
  store i32 %250, i32* @current_sym_nchars, align 4
  br label %251

; <label>:251:                                    ; preds = %235, %234
  br label %252

; <label>:252:                                    ; preds = %251, %55
  br label %253

; <label>:253:                                    ; preds = %252
  br label %254

; <label>:254:                                    ; preds = %253, %54
  %255 = load %union.tree_node*, %union.tree_node** %3, align 8
  %256 = bitcast %union.tree_node* %255 to %struct.tree_common*
  %257 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %256, i32 0, i32 0
  %258 = load %union.tree_node*, %union.tree_node** %257, align 8
  store %union.tree_node* %258, %union.tree_node** %3, align 8
  br label %9

; <label>:259:                                    ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_type_methods(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca %union.tree_node*, align 8
  %5 = alloca %union.tree_node*, align 8
  %6 = alloca %union.tree_node*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  %12 = load %union.tree_node*, %union.tree_node** %2, align 8
  %13 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %13, i32 0, i32 13
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8
  store %union.tree_node* %15, %union.tree_node** %3, align 8
  %16 = load %union.tree_node*, %union.tree_node** %3, align 8
  %17 = icmp eq %union.tree_node* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %1
  br label %182

; <label>:19:                                     ; preds = %1
  %20 = load %union.tree_node*, %union.tree_node** %2, align 8
  %21 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %22 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %21, i32 0, i32 11
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8
  %24 = bitcast %union.tree_node* %23 to %struct.tree_decl*
  %25 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %24, i32 0, i32 8
  %26 = load %union.tree_node*, %union.tree_node** %25, align 8
  store %union.tree_node* %26, %union.tree_node** %4, align 8
  %27 = load %union.tree_node*, %union.tree_node** %4, align 8
  %28 = bitcast %union.tree_node* %27 to %struct.tree_identifier*
  %29 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 %33) #6
  %35 = load %union.tree_node*, %union.tree_node** %3, align 8
  %36 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %37 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 255
  %40 = icmp ne i32 %39, 3
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %19
  %42 = load %union.tree_node*, %union.tree_node** %3, align 8
  store %union.tree_node* %42, %union.tree_node** %5, align 8
  br label %63

; <label>:43:                                     ; preds = %19
  %44 = load %union.tree_node*, %union.tree_node** %3, align 8
  %45 = bitcast %union.tree_node* %44 to %struct.tree_vec*
  %46 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %45, i32 0, i32 2
  %47 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %46, i64 0, i64 0
  %48 = load %union.tree_node*, %union.tree_node** %47, align 8
  %49 = icmp ne %union.tree_node* %48, null
  br i1 %49, label %50, label %56

; <label>:50:                                     ; preds = %43
  %51 = load %union.tree_node*, %union.tree_node** %3, align 8
  %52 = bitcast %union.tree_node* %51 to %struct.tree_vec*
  %53 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %52, i32 0, i32 2
  %54 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %53, i64 0, i64 0
  %55 = load %union.tree_node*, %union.tree_node** %54, align 8
  store %union.tree_node* %55, %union.tree_node** %5, align 8
  br label %62

; <label>:56:                                     ; preds = %43
  %57 = load %union.tree_node*, %union.tree_node** %3, align 8
  %58 = bitcast %union.tree_node* %57 to %struct.tree_vec*
  %59 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %58, i32 0, i32 2
  %60 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %59, i64 0, i64 1
  %61 = load %union.tree_node*, %union.tree_node** %60, align 8
  store %union.tree_node* %61, %union.tree_node** %5, align 8
  br label %62

; <label>:62:                                     ; preds = %56, %50
  br label %63

; <label>:63:                                     ; preds = %62, %41
  br label %64

; <label>:64:                                     ; preds = %181, %63
  %65 = load %union.tree_node*, %union.tree_node** %5, align 8
  %66 = icmp ne %union.tree_node* %65, null
  br i1 %66, label %67, label %182

; <label>:67:                                     ; preds = %64
  store i32 1, i32* %9, align 4
  store %union.tree_node* null, %union.tree_node** %6, align 8
  br label %68

; <label>:68:                                     ; preds = %168, %67
  %69 = load %union.tree_node*, %union.tree_node** %5, align 8
  %70 = icmp ne %union.tree_node* %69, null
  br i1 %70, label %71, label %86

; <label>:71:                                     ; preds = %68
  %72 = load %union.tree_node*, %union.tree_node** %6, align 8
  %73 = icmp eq %union.tree_node* %72, null
  br i1 %73, label %84, label %74

; <label>:74:                                     ; preds = %71
  %75 = load %union.tree_node*, %union.tree_node** %5, align 8
  %76 = bitcast %union.tree_node* %75 to %struct.tree_decl*
  %77 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %76, i32 0, i32 8
  %78 = load %union.tree_node*, %union.tree_node** %77, align 8
  %79 = load %union.tree_node*, %union.tree_node** %6, align 8
  %80 = bitcast %union.tree_node* %79 to %struct.tree_decl*
  %81 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %80, i32 0, i32 8
  %82 = load %union.tree_node*, %union.tree_node** %81, align 8
  %83 = icmp eq %union.tree_node* %78, %82
  br label %84

; <label>:84:                                     ; preds = %74, %71
  %85 = phi i1 [ true, %71 ], [ %83, %74 ]
  br label %86

; <label>:86:                                     ; preds = %84, %68
  %87 = phi i1 [ false, %68 ], [ %85, %84 ]
  br i1 %87, label %88, label %173

; <label>:88:                                     ; preds = %86
  %89 = load %union.tree_node*, %union.tree_node** %5, align 8
  %90 = bitcast %union.tree_node* %89 to %struct.tree_common*
  %91 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 255
  %94 = icmp ne i32 %93, 30
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %88
  br label %168

; <label>:96:                                     ; preds = %88
  %97 = load %union.tree_node*, %union.tree_node** %5, align 8
  %98 = bitcast %union.tree_node* %97 to %struct.tree_decl*
  %99 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %98, i32 0, i32 14
  %100 = load %union.tree_node*, %union.tree_node** %99, align 8
  %101 = icmp ne %union.tree_node* %100, null
  br i1 %101, label %102, label %103

; <label>:102:                                    ; preds = %96
  br label %106

; <label>:103:                                    ; preds = %96
  %104 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %105 = load %union.tree_node*, %union.tree_node** %5, align 8
  call void %104(%union.tree_node* %105)
  br label %106

; <label>:106:                                    ; preds = %103, %102
  %107 = load %union.tree_node*, %union.tree_node** %5, align 8
  %108 = bitcast %union.tree_node* %107 to %struct.tree_decl*
  %109 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %108, i32 0, i32 14
  %110 = load %union.tree_node*, %union.tree_node** %109, align 8
  %111 = bitcast %union.tree_node* %110 to %struct.tree_identifier*
  %112 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %10, align 8
  br label %115

; <label>:115:                                    ; preds = %106
  br label %116

; <label>:116:                                    ; preds = %115
  %117 = load %union.tree_node*, %union.tree_node** %5, align 8
  store %union.tree_node* %117, %union.tree_node** %6, align 8
  %118 = load %union.tree_node*, %union.tree_node** %5, align 8
  %119 = bitcast %union.tree_node* %118 to %struct.tree_decl*
  %120 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %119, i32 0, i32 5
  %121 = bitcast i48* %120 to i64*
  %122 = load i64, i64* %121, align 8
  %123 = lshr i64 %122, 14
  %124 = and i64 %123, 1
  %125 = trunc i64 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %137, label %127

; <label>:127:                                    ; preds = %116
  %128 = load %union.tree_node*, %union.tree_node** %5, align 8
  %129 = bitcast %union.tree_node* %128 to %struct.tree_decl*
  %130 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %129, i32 0, i32 5
  %131 = bitcast i48* %130 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = lshr i64 %132, 15
  %134 = and i64 %133, 1
  %135 = trunc i64 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

; <label>:137:                                    ; preds = %127, %116
  br label %168

; <label>:138:                                    ; preds = %127
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %161

; <label>:141:                                    ; preds = %138
  %142 = load %union.tree_node*, %union.tree_node** %5, align 8
  %143 = bitcast %union.tree_node* %142 to %struct.tree_decl*
  %144 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %143, i32 0, i32 8
  %145 = load %union.tree_node*, %union.tree_node** %144, align 8
  store %union.tree_node* %145, %union.tree_node** %11, align 8
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %147 = load %union.tree_node*, %union.tree_node** %11, align 8
  %148 = bitcast %union.tree_node* %147 to %struct.tree_identifier*
  %149 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* %151)
  %153 = load %union.tree_node*, %union.tree_node** %11, align 8
  %154 = bitcast %union.tree_node* %153 to %struct.tree_identifier*
  %155 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add i32 %157, 2
  %159 = load i32, i32* @current_sym_nchars, align 4
  %160 = add i32 %159, %158
  store i32 %160, i32* @current_sym_nchars, align 4
  store i32 0, i32* %9, align 4
  br label %161

; <label>:161:                                    ; preds = %141, %138
  %162 = load %union.tree_node*, %union.tree_node** %5, align 8
  %163 = bitcast %union.tree_node* %162 to %struct.tree_common*
  %164 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %163, i32 0, i32 1
  %165 = load %union.tree_node*, %union.tree_node** %164, align 8
  call void @dbxout_type(%union.tree_node* %165, i32 0)
  %166 = load %union.tree_node*, %union.tree_node** %5, align 8
  %167 = load i8*, i8** %10, align 8
  call void @dbxout_type_method_1(%union.tree_node* %166, i8* %167)
  br label %168

; <label>:168:                                    ; preds = %161, %137, %95
  %169 = load %union.tree_node*, %union.tree_node** %5, align 8
  %170 = bitcast %union.tree_node* %169 to %struct.tree_common*
  %171 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %170, i32 0, i32 0
  %172 = load %union.tree_node*, %union.tree_node** %171, align 8
  store %union.tree_node* %172, %union.tree_node** %5, align 8
  br label %68

; <label>:173:                                    ; preds = %86
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %181, label %176

; <label>:176:                                    ; preds = %173
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %178 = call i32 @putc(i32 59, %struct._IO_FILE* %177)
  %179 = load i32, i32* @current_sym_nchars, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* @current_sym_nchars, align 4
  br label %181

; <label>:181:                                    ; preds = %176, %173
  br label %64

; <label>:182:                                    ; preds = %64, %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_args(%union.tree_node*) #0 {
  %2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %6, %1
  %4 = load %union.tree_node*, %union.tree_node** %2, align 8
  %5 = icmp ne %union.tree_node* %4, null
  br i1 %5, label %6, label %19

; <label>:6:                                      ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %8 = call i32 @putc(i32 44, %struct._IO_FILE* %7)
  %9 = load %union.tree_node*, %union.tree_node** %2, align 8
  %10 = bitcast %union.tree_node* %9 to %struct.tree_list*
  %11 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %10, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %11, align 8
  call void @dbxout_type(%union.tree_node* %12, i32 0)
  %13 = load i32, i32* @current_sym_nchars, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @current_sym_nchars, align 4
  %15 = load %union.tree_node*, %union.tree_node** %2, align 8
  %16 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %16, i32 0, i32 0
  %18 = load %union.tree_node*, %union.tree_node** %17, align 8
  store %union.tree_node* %18, %union.tree_node** %2, align 8
  br label %3

; <label>:19:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_octal(i64, i32) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %21, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %24

; <label>:11:                                     ; preds = %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 3, %14
  %16 = zext i32 %15 to i64
  %17 = lshr i64 %13, %16
  %18 = and i64 %17, 7
  %19 = trunc i64 %18 to i32
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 %19)
  br label %21

; <label>:21:                                     ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %5, align 4
  br label %8

; <label>:24:                                     ; preds = %8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @current_sym_nchars, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* @current_sym_nchars, align 4
  ret void
}

declare %union.tree_node* @bit_position(%union.tree_node*) #1

declare i64 @int_bit_position(%union.tree_node*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_type_method_1(%union.tree_node*, i8*) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %union.tree_node*, align 8
  store %union.tree_node* %0, %union.tree_node** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8 65, i8* %5, align 1
  %8 = load %union.tree_node*, %union.tree_node** %3, align 8
  %9 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %9, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8
  %12 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  store i8 63, i8* %6, align 1
  br label %69

; <label>:18:                                     ; preds = %2
  %19 = load %union.tree_node*, %union.tree_node** %3, align 8
  %20 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %20, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %21, align 8
  %23 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %24 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %23, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %24, align 8
  %26 = bitcast %union.tree_node* %25 to %struct.tree_list*
  %27 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %26, i32 0, i32 2
  %28 = load %union.tree_node*, %union.tree_node** %27, align 8
  store %union.tree_node* %28, %union.tree_node** %7, align 8
  %29 = load %union.tree_node*, %union.tree_node** %7, align 8
  %30 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %30, i32 0, i32 1
  %32 = load %union.tree_node*, %union.tree_node** %31, align 8
  %33 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %34 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = lshr i32 %35, 12
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

; <label>:39:                                     ; preds = %18
  %40 = load i8, i8* %5, align 1
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 %41, 1
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %5, align 1
  br label %44

; <label>:44:                                     ; preds = %39, %18
  %45 = load %union.tree_node*, %union.tree_node** %7, align 8
  %46 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %46, i32 0, i32 1
  %48 = load %union.tree_node*, %union.tree_node** %47, align 8
  %49 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %50 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = lshr i32 %51, 11
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

; <label>:55:                                     ; preds = %44
  %56 = load i8, i8* %5, align 1
  %57 = sext i8 %56 to i32
  %58 = add nsw i32 %57, 2
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %5, align 1
  br label %60

; <label>:60:                                     ; preds = %55, %44
  %61 = load %union.tree_node*, %union.tree_node** %3, align 8
  %62 = bitcast %union.tree_node* %61 to %struct.tree_decl*
  %63 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %62, i32 0, i32 22
  %64 = load %union.tree_node*, %union.tree_node** %63, align 8
  %65 = icmp ne %union.tree_node* %64, null
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %60
  store i8 42, i8* %6, align 1
  br label %68

; <label>:67:                                     ; preds = %60
  store i8 46, i8* %6, align 1
  br label %68

; <label>:68:                                     ; preds = %67, %66
  br label %69

; <label>:69:                                     ; preds = %68, %17
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load %union.tree_node*, %union.tree_node** %3, align 8
  %73 = bitcast %union.tree_node* %72 to %struct.tree_common*
  %74 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = lshr i32 %75, 20
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %69
  br label %89

; <label>:80:                                     ; preds = %69
  %81 = load %union.tree_node*, %union.tree_node** %3, align 8
  %82 = bitcast %union.tree_node* %81 to %struct.tree_common*
  %83 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = lshr i32 %84, 21
  %86 = and i32 %85, 1
  %87 = icmp ne i32 %86, 0
  %88 = select i1 %87, i32 49, i32 50
  br label %89

; <label>:89:                                     ; preds = %80, %79
  %90 = phi i32 [ 48, %79 ], [ %88, %80 ]
  %91 = load i8, i8* %5, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8, i8* %6, align 1
  %94 = sext i8 %93 to i32
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* %71, i32 %90, i32 %92, i32 %94)
  %96 = load %union.tree_node*, %union.tree_node** %3, align 8
  %97 = bitcast %union.tree_node* %96 to %struct.tree_decl*
  %98 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %97, i32 0, i32 14
  %99 = load %union.tree_node*, %union.tree_node** %98, align 8
  %100 = icmp ne %union.tree_node* %99, null
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %89
  br label %105

; <label>:102:                                    ; preds = %89
  %103 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %104 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void %103(%union.tree_node* %104)
  br label %105

; <label>:105:                                    ; preds = %102, %101
  %106 = load %union.tree_node*, %union.tree_node** %3, align 8
  %107 = bitcast %union.tree_node* %106 to %struct.tree_decl*
  %108 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %107, i32 0, i32 14
  %109 = load %union.tree_node*, %union.tree_node** %108, align 8
  %110 = bitcast %union.tree_node* %109 to %struct.tree_identifier*
  %111 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add i32 %113, 6
  %115 = zext i32 %114 to i64
  %116 = load i8*, i8** %4, align 8
  %117 = load %union.tree_node*, %union.tree_node** %3, align 8
  %118 = bitcast %union.tree_node* %117 to %struct.tree_decl*
  %119 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %118, i32 0, i32 14
  %120 = load %union.tree_node*, %union.tree_node** %119, align 8
  %121 = icmp ne %union.tree_node* %120, null
  br i1 %121, label %122, label %123

; <label>:122:                                    ; preds = %105
  br label %126

; <label>:123:                                    ; preds = %105
  %124 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %125 = load %union.tree_node*, %union.tree_node** %3, align 8
  call void %124(%union.tree_node* %125)
  br label %126

; <label>:126:                                    ; preds = %123, %122
  %127 = load %union.tree_node*, %union.tree_node** %3, align 8
  %128 = bitcast %union.tree_node* %127 to %struct.tree_decl*
  %129 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %128, i32 0, i32 14
  %130 = load %union.tree_node*, %union.tree_node** %129, align 8
  %131 = bitcast %union.tree_node* %130 to %struct.tree_identifier*
  %132 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %116 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sub nsw i64 %115, %137
  %139 = load i32, i32* @current_sym_nchars, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* @current_sym_nchars, align 4
  %143 = load %union.tree_node*, %union.tree_node** %3, align 8
  %144 = bitcast %union.tree_node* %143 to %struct.tree_decl*
  %145 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %144, i32 0, i32 22
  %146 = load %union.tree_node*, %union.tree_node** %145, align 8
  %147 = icmp ne %union.tree_node* %146, null
  br i1 %147, label %148, label %173

; <label>:148:                                    ; preds = %126
  %149 = load %union.tree_node*, %union.tree_node** %3, align 8
  %150 = bitcast %union.tree_node* %149 to %struct.tree_decl*
  %151 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %150, i32 0, i32 22
  %152 = load %union.tree_node*, %union.tree_node** %151, align 8
  %153 = call i32 @host_integerp(%union.tree_node* %152, i32 0)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %173

; <label>:155:                                    ; preds = %148
  %156 = load %union.tree_node*, %union.tree_node** %3, align 8
  %157 = bitcast %union.tree_node* %156 to %struct.tree_decl*
  %158 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %157, i32 0, i32 22
  %159 = load %union.tree_node*, %union.tree_node** %158, align 8
  %160 = call i64 @tree_low_cst(%union.tree_node* %159, i32 0)
  call void @print_wide_int(i64 %160)
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %162 = call i32 @putc(i32 59, %struct._IO_FILE* %161)
  %163 = load i32, i32* @current_sym_nchars, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* @current_sym_nchars, align 4
  %165 = load %union.tree_node*, %union.tree_node** %3, align 8
  %166 = bitcast %union.tree_node* %165 to %struct.tree_decl*
  %167 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %166, i32 0, i32 9
  %168 = load %union.tree_node*, %union.tree_node** %167, align 8
  call void @dbxout_type(%union.tree_node* %168, i32 0)
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  %171 = load i32, i32* @current_sym_nchars, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @current_sym_nchars, align 4
  br label %173

; <label>:173:                                    ; preds = %155, %148, %126
  ret void
}

declare %struct.rtx_def* @alter_subreg(%struct.rtx_def**) #1

declare %struct.rtx_def* @get_pool_constant(%struct.rtx_def*) #1

declare %union.tree_node* @make_node(i32) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dbxout_symbol_name(%union.tree_node*, i8*, i32) #0 {
  %4 = alloca %union.tree_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %union.tree_node* %0, %union.tree_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %union.tree_node*, %union.tree_node** %4, align 8
  %9 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %10 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %9, i32 0, i32 9
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8
  %12 = icmp ne %union.tree_node* %11, null
  br i1 %12, label %13, label %46

; <label>:13:                                     ; preds = %3
  %14 = load %union.tree_node*, %union.tree_node** %4, align 8
  %15 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %16 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %15, i32 0, i32 9
  %17 = load %union.tree_node*, %union.tree_node** %16, align 8
  %18 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 255
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 116
  br i1 %26, label %27, label %46

; <label>:27:                                     ; preds = %13
  %28 = load %union.tree_node*, %union.tree_node** %4, align 8
  %29 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %30 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %29, i32 0, i32 14
  %31 = load %union.tree_node*, %union.tree_node** %30, align 8
  %32 = icmp ne %union.tree_node* %31, null
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  br label %37

; <label>:34:                                     ; preds = %27
  %35 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %36 = load %union.tree_node*, %union.tree_node** %4, align 8
  call void %35(%union.tree_node* %36)
  br label %37

; <label>:37:                                     ; preds = %34, %33
  %38 = load %union.tree_node*, %union.tree_node** %4, align 8
  %39 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %40 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %39, i32 0, i32 14
  %41 = load %union.tree_node*, %union.tree_node** %40, align 8
  %42 = bitcast %union.tree_node* %41 to %struct.tree_identifier*
  %43 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %7, align 8
  br label %55

; <label>:46:                                     ; preds = %13, %3
  %47 = load %union.tree_node*, %union.tree_node** %4, align 8
  %48 = bitcast %union.tree_node* %47 to %struct.tree_decl*
  %49 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %48, i32 0, i32 8
  %50 = load %union.tree_node*, %union.tree_node** %49, align 8
  %51 = bitcast %union.tree_node* %50 to %struct.tree_identifier*
  %52 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %7, align 8
  br label %55

; <label>:55:                                     ; preds = %46, %37
  %56 = load i8*, i8** %7, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %55
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8** %7, align 8
  br label %59

; <label>:59:                                     ; preds = %58, %55
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %59
  %65 = load i8*, i8** %5, align 8
  br label %67

; <label>:66:                                     ; preds = %59
  br label %67

; <label>:67:                                     ; preds = %66, %64
  %68 = phi i8* [ %65, %64 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.76, i32 0, i32 0), %66 ]
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %61, i8* %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

; <label>:72:                                     ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @asmfile, align 8
  %75 = call i32 @putc(i32 %73, %struct._IO_FILE* %74)
  br label %76

; <label>:76:                                     ; preds = %72, %67
  ret void
}

declare void @output_addr_const(%struct._IO_FILE*, %struct.rtx_def*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
