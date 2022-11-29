; ModuleID = 'host/ir_O0/gcc_final.ll'
source_filename = "final.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.label_alignment = type { i16, i16 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
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
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i1 (%union.tree_node*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void ()*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)* }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.insn_data = type { i8*, i8*, %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.insn_operand_data*, i8, i8, i8, i8 }
%struct.insn_operand_data = type { i32 (%struct.rtx_def*, i32)*, i8*, i16, i8, i8 }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [4 x %struct.rtx_def**], [4 x i8], i8, i8, i8, %struct.rtx_def* }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.realvaluetype = type { [3 x i64] }
%union.real_extract = type { %struct.realvaluetype }
%struct.mem_attrs = type { i64, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32 }

@app_on = internal global i32 0, align 4
@final_sequence = common global %struct.rtx_def* null, align 8
@ix86_asm_dialect = external global i32, align 4
@dialect_number = internal global i32 0, align 4
@profile_arc_flag = external global i32, align 4
@target_flags = external global i32, align 4
@count_instrumented_edges = external global i32, align 4
@.str = private unnamed_addr constant [8 x i8] c"final.c\00", align 1
@__FUNCTION__.end_final = private unnamed_addr constant [10 x i8] c"end_final\00", align 1
@asm_out_file = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"\09.align %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".%s%u:\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"LPBX\00", align 1
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c".da\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\09.local\09\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\09.comm\09\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c",%u,%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"/APP\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"/NO_APP\0A\00", align 1
@uid_shuid = internal global i32* null, align 8
@insn_lengths = internal global i32* null, align 8
@insn_lengths_max_uid = internal global i32 0, align 4
@insn_addresses_ = common global %struct.varray_head_tag* null, align 8
@uid_align = internal global %struct.rtx_def** null, align 8
@label_align = internal global %struct.label_alignment* null, align 8
@min_labelno = internal global i32 0, align 4
@insn_current_address = common global i32 0, align 4
@insn_last_address = common global i32 0, align 4
@length_unit_log = external global i32, align 4
@max_labelno = internal global i32 0, align 4
@optimize = external global i32, align 4
@optimize_size = external global i32, align 4
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@align_labels_log = external global i32, align 4
@align_labels_max_skip = external global i32, align 4
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@align_jumps_log = external global i32, align 4
@align_jumps_max_skip = external global i32, align 4
@align_loops_log = external global i32, align 4
@align_loops_max_skip = external global i32, align 4
@__FUNCTION__.shorten_branches = private unnamed_addr constant [17 x i8] c"shorten_branches\00", align 1
@rtx_class = external constant [153 x i8], align 16
@flag_pic = external global i32, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"insn_addresses\00", align 1
@mode_size = external constant [59 x i8], align 16
@insn_current_align = common global i32 0, align 4
@block_depth = internal global i32 0, align 4
@this_is_asm_operands = internal global %struct.rtx_def* null, align 8
@last_linenum = internal global i32 0, align 4
@high_function_linenum = internal global i32 0, align 4
@high_block_linenum = internal global i32 0, align 4
@debug_hooks = external global %struct.gcc_debug_hooks*, align 8
@last_filename = internal global i8* null, align 8
@write_symbols = external global i32, align 4
@current_function_decl = external global %union.tree_node*, align 8
@targetm = external global %struct.gcc_target, align 8
@last_ignored_compare = internal global %struct.rtx_def* null, align 8
@new_block = internal global i32 1, align 4
@line_note_exists = internal global i8* null, align 8
@insn_data = external constant [0 x %struct.insn_data], align 8
@which_alternative = external global i32, align 4
@__FUNCTION__.get_insn_template = private unnamed_addr constant [18 x i8] c"get_insn_template\00", align 1
@recog_data = external global %struct.recog_data, align 8
@insn_counter = internal global i32 0, align 4
@flag_debug_asm = external global i32, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"\09%s basic block %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LEHB\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"LEHE\00", align 1
@debug_info_level = external global i32, align 4
@__FUNCTION__.final_scan_insn = private unnamed_addr constant [16 x i8] c"final_scan_insn\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"\09.p2align %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"\09.p2align %d,,%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@insn_noperands = internal global i32 0, align 4
@flag_dump_rtl_in_asm = external global i32, align 4
@print_rtx_head = external global i8*, align 8
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@debug_insn = internal global %struct.rtx_def* null, align 8
@current_output_insn = common global %struct.rtx_def* null, align 8
@.str.25 = private unnamed_addr constant [21 x i8] c"could not split insn\00", align 1
@__FUNCTION__.alter_subreg = private unnamed_addr constant [13 x i8] c"alter_subreg\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"invalid `asm': \00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"output_operand: \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@flag_verbose_asm = external global i32, align 4
@flag_print_asm_name = external global i32, align 4
@.str.29 = private unnamed_addr constant [37 x i8] c"nested assembly dialect alternatives\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"unterminated assembly dialect alternative\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_sch_istable = external constant [256 x i16], align 16
@.str.32 = private unnamed_addr constant [39 x i8] c"operand number missing after %%-letter\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"operand number out of range\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"invalid %%-code\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"`%%l' operand isn't a label\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"0x%lx%016lx\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"floating constant misused\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"invalid expression as operand\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"%%\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c".\00", align 1
@user_label_prefix = external global i8*, align 8
@__FUNCTION__.asm_fprintf = private unnamed_addr constant [12 x i8] c"asm_fprintf\00", align 1
@mode_class = external constant [59 x i32], align 16
@cfun = external global %struct.function*, align 8
@__FUNCTION__.final_forward_branch_p = private unnamed_addr constant [23 x i8] c"final_forward_branch_p\00", align 1
@regs_ever_live = common global [53 x i8] zeroinitializer, align 16
@frame_pointer_needed = common global i32 0, align 4
@.str.45 = private unnamed_addr constant [16 x i8] c"\09push{l}\09%%e%s\0A\00", align 1
@reg_names = external global [53 x i8*], align 16
@.str.46 = private unnamed_addr constant [19 x i8] c"\09call\09*mcount@PLT\0A\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"\09call\09*mcount@GOT(%%ebx)\0A\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"\09call\09mcount\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"\09pop{l}\09%%e%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"%c%s %s\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"\09%s %d\09%s\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"\09[length = %d]\00", align 1
@__FUNCTION__.output_operand = private unnamed_addr constant [15 x i8] c"output_operand\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @init_final(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* @app_on, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @final_sequence, align 8
  %3 = load i32, i32* @ix86_asm_dialect, align 4
  store i32 %3, i32* @dialect_number, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @end_final(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i32, i32* @profile_arc_flag, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %207

; <label>:16:                                     ; preds = %1
  %17 = call i32 @exact_log2_wide(i64 16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @target_flags, align 4
  %19 = and i32 %18, 33554432
  %20 = icmp ne i32 %19, 0
  %21 = select i1 %20, i32 64, i32 32
  %22 = sdiv i32 %21, 8
  store i32 %22, i32* %7, align 4
  store i32 8, i32* %8, align 4
  %23 = load i32, i32* @target_flags, align 4
  %24 = and i32 %23, 33554432
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %25, i32 64, i32 32
  %27 = sdiv i32 %26, 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @target_flags, align 4
  %29 = and i32 %28, 33554432
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %30, i32 64, i32 32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @count_instrumented_edges, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 15
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %38, 16
  %40 = mul nsw i32 %39, 16
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %16
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 267, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.end_final, i32 0, i32 0)) #7
  unreachable

; <label>:45:                                     ; preds = %16
  call void @data_section()
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %45
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %50 = load i32, i32* %4, align 4
  %51 = shl i32 1, %50
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %51)
  br label %53

; <label>:53:                                     ; preds = %48, %45
  br label %54

; <label>:54:                                     ; preds = %53
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0)
  br label %57

; <label>:57:                                     ; preds = %54
  %58 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call zeroext i1 @assemble_integer(%struct.rtx_def* %58, i32 %59, i32 %60, i32 1)
  br label %62

; <label>:62:                                     ; preds = %57
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i32 0, i32 0
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 1) #6
  br label %65

; <label>:65:                                     ; preds = %62
  %66 = load i32, i32* @target_flags, align 4
  %67 = and i32 %66, 33554432
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %68, i32 5, i32 4
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i32 0, i32 0
  %71 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %69, i8* %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call zeroext i1 @assemble_integer(%struct.rtx_def* %71, i32 %72, i32 %73, i32 1)
  br label %75

; <label>:75:                                     ; preds = %65
  %76 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i32 0, i32 0
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 2) #6
  br label %78

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* @target_flags, align 4
  %80 = and i32 %79, 33554432
  %81 = icmp ne i32 %80, 0
  %82 = select i1 %81, i32 5, i32 4
  %83 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i32 0, i32 0
  %84 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %82, i8* %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call zeroext i1 @assemble_integer(%struct.rtx_def* %84, i32 %85, i32 %86, i32 1)
  %88 = load i32, i32* @count_instrumented_edges, align 4
  %89 = sext i32 %88 to i64
  %90 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %89)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call zeroext i1 @assemble_integer(%struct.rtx_def* %90, i32 %91, i32 %92, i32 1)
  %94 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call zeroext i1 @assemble_integer(%struct.rtx_def* %94, i32 %95, i32 %96, i32 1)
  %98 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call zeroext i1 @assemble_integer(%struct.rtx_def* %98, i32 %99, i32 %100, i32 1)
  %102 = load i32, i32* @target_flags, align 4
  %103 = and i32 %102, 33554432
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %104, i32 8, i32 4
  %106 = mul nsw i32 11, %105
  %107 = sext i32 %106 to i64
  %108 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call zeroext i1 @assemble_integer(%struct.rtx_def* %108, i32 %109, i32 %110, i32 1)
  %112 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call zeroext i1 @assemble_integer(%struct.rtx_def* %112, i32 %113, i32 %114, i32 1)
  %116 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call zeroext i1 @assemble_integer(%struct.rtx_def* %116, i32 %117, i32 %118, i32 1)
  %120 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call zeroext i1 @assemble_integer(%struct.rtx_def* %120, i32 %121, i32 %122, i32 1)
  %124 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %125 = load i32, i32* @target_flags, align 4
  %126 = and i32 %125, 33554432
  %127 = icmp ne i32 %126, 0
  %128 = select i1 %127, i32 8, i32 4
  %129 = load i32, i32* %10, align 4
  %130 = call zeroext i1 @assemble_integer(%struct.rtx_def* %124, i32 %128, i32 %129, i32 1)
  br label %131

; <label>:131:                                    ; preds = %78
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 1)
  br label %134

; <label>:134:                                    ; preds = %131
  %135 = call i8* @getpwd()
  store i8* %135, i8** %11, align 8
  %136 = load i8*, i8** %2, align 8
  %137 = call i64 @strlen(i8* %136) #8
  %138 = load i8*, i8** %11, align 8
  %139 = call i64 @strlen(i8* %138) #8
  %140 = add i64 %137, %139
  %141 = add i64 %140, 1
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 4
  %145 = sext i32 %144 to i64
  %146 = alloca i8, i64 %145, align 16
  store i8* %146, i8** %13, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = call i8* @strcpy(i8* %147, i8* %148) #6
  %150 = load i8*, i8** %13, align 8
  %151 = call i8* @strcat(i8* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #6
  %152 = load i8*, i8** %13, align 8
  %153 = load i8*, i8** %2, align 8
  %154 = call i8* @strcat(i8* %152, i8* %153) #6
  %155 = load i8*, i8** %13, align 8
  %156 = load i32, i32* %12, align 4
  call void @strip_off_ending(i8* %155, i32 %156)
  %157 = load i8*, i8** %13, align 8
  %158 = call i8* @strcat(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #6
  %159 = load i8*, i8** %13, align 8
  %160 = load i8*, i8** %13, align 8
  %161 = call i64 @strlen(i8* %160) #8
  %162 = add i64 %161, 1
  %163 = trunc i64 %162 to i32
  call void @assemble_string(i8* %159, i32 %163)
  %164 = load i32, i32* %5, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %184

; <label>:166:                                    ; preds = %134
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

; <label>:169:                                    ; preds = %166
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %171 = load i32, i32* %4, align 4
  %172 = shl i32 1, %171
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %172)
  br label %174

; <label>:174:                                    ; preds = %169, %166
  br label %175

; <label>:175:                                    ; preds = %174
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 2)
  br label %178

; <label>:178:                                    ; preds = %175
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

; <label>:181:                                    ; preds = %178
  %182 = load i32, i32* %5, align 4
  call void @assemble_zeros(i32 %182)
  br label %183

; <label>:183:                                    ; preds = %181, %178
  br label %206

; <label>:184:                                    ; preds = %134
  br label %185

; <label>:185:                                    ; preds = %184
  %186 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i32 0, i32 0
  %187 = call i32 (i8*, i8*, ...) @sprintf(i8* %186, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 2) #6
  br label %188

; <label>:188:                                    ; preds = %185
  br label %189

; <label>:189:                                    ; preds = %188
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %193 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %192, i8* %193)
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %195 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %196

; <label>:196:                                    ; preds = %189
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %200 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %199, i8* %200)
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %202, i32 16)
  br label %204

; <label>:204:                                    ; preds = %196
  br label %205

; <label>:205:                                    ; preds = %204
  br label %206

; <label>:206:                                    ; preds = %205, %183
  br label %207

; <label>:207:                                    ; preds = %206, %1
  ret void
}

declare i32 @exact_log2_wide(i64) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare void @data_section() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare zeroext i1 @assemble_integer(%struct.rtx_def*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare %struct.rtx_def* @gen_rtx_fmt_s(i32, i32, i8*) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare i8* @getpwd() #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare void @strip_off_ending(i8*, i32) #1

declare void @assemble_string(i8*, i32) #1

declare void @assemble_zeros(i32) #1

declare void @assemble_name(%struct._IO_FILE*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @default_function_pro_epilogue(%struct._IO_FILE*, i64) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i64 %1, i64* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @no_asm_to_stream(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @app_enable() #0 {
  %1 = load i32, i32* @app_on, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %5 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %4)
  store i32 1, i32* @app_on, align 4
  br label %6

; <label>:6:                                      ; preds = %3, %0
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define void @app_disable() #0 {
  %1 = load i32, i32* @app_on, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %5 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %4)
  store i32 0, i32* @app_on, align 4
  br label %6

; <label>:6:                                      ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @init_insn_lengths() #0 {
  %1 = load i32*, i32** @uid_shuid, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = load i32*, i32** @uid_shuid, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #6
  store i32* null, i32** @uid_shuid, align 8
  br label %6

; <label>:6:                                      ; preds = %3, %0
  %7 = load i32*, i32** @insn_lengths, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %6
  %10 = load i32*, i32** @insn_lengths, align 8
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* %11) #6
  store i32* null, i32** @insn_lengths, align 8
  store i32 0, i32* @insn_lengths_max_uid, align 4
  br label %12

; <label>:12:                                     ; preds = %9, %6
  br label %13

; <label>:13:                                     ; preds = %12
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %15 = icmp ne %struct.varray_head_tag* %14, null
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %13
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %18 = bitcast %struct.varray_head_tag* %17 to i8*
  call void @free(i8* %18) #6
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @insn_addresses_, align 8
  br label %19

; <label>:19:                                     ; preds = %16, %13
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %22 = icmp ne %struct.rtx_def** %21, null
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %20
  %24 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %25 = bitcast %struct.rtx_def** %24 to i8*
  call void @free(i8* %25) #6
  store %struct.rtx_def** null, %struct.rtx_def*** @uid_align, align 8
  br label %26

; <label>:26:                                     ; preds = %23, %20
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind uwtable
define i32 @get_attr_length(%struct.rtx_def*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @insn_lengths_max_uid, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %9, i64 0, i64 0
  %11 = bitcast %union.rtunion_def* %10 to i32*
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %7, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %1
  %15 = load i32*, i32** @insn_lengths, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %17, i64 0, i64 0
  %19 = bitcast %union.rtunion_def* %18 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %15, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %2, align 4
  br label %134

; <label>:24:                                     ; preds = %1
  %25 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 65535
  switch i32 %28, label %130 [
    i32 37, label %29
    i32 35, label %29
    i32 36, label %29
    i32 34, label %30
    i32 33, label %33
    i32 32, label %55
  ]

; <label>:29:                                     ; preds = %24, %24, %24
  store i32 0, i32* %2, align 4
  br label %134

; <label>:30:                                     ; preds = %24
  %31 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %32 = call i32 @insn_default_length(%struct.rtx_def* %31)
  store i32 %32, i32* %6, align 4
  br label %131

; <label>:33:                                     ; preds = %24
  %34 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %35, i64 0, i64 3
  %37 = bitcast %union.rtunion_def* %36 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %4, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 44
  br i1 %43, label %50, label %44

; <label>:44:                                     ; preds = %33
  %45 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %44, %33
  br label %54

; <label>:51:                                     ; preds = %44
  %52 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %53 = call i32 @insn_default_length(%struct.rtx_def* %52)
  store i32 %53, i32* %6, align 4
  br label %54

; <label>:54:                                     ; preds = %51, %50
  br label %131

; <label>:55:                                     ; preds = %24
  %56 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %57, i64 0, i64 3
  %59 = bitcast %union.rtunion_def* %58 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %59, align 8
  store %struct.rtx_def* %60, %struct.rtx_def** %4, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 48
  br i1 %65, label %72, label %66

; <label>:66:                                     ; preds = %55
  %67 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 49
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %66, %55
  store i32 0, i32* %2, align 4
  br label %134

; <label>:73:                                     ; preds = %66
  %74 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 40
  br i1 %78, label %83, label %79

; <label>:79:                                     ; preds = %73
  %80 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %81 = call i32 @asm_noperands(%struct.rtx_def* %80)
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %89

; <label>:83:                                     ; preds = %79, %73
  %84 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %85 = call i32 @asm_insn_count(%struct.rtx_def* %84)
  %86 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %87 = call i32 @insn_default_length(%struct.rtx_def* %86)
  %88 = mul nsw i32 %85, %87
  store i32 %88, i32* %6, align 4
  br label %128

; <label>:89:                                     ; preds = %79
  %90 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %91 = bitcast %struct.rtx_def* %90 to i32*
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 24
  br i1 %94, label %95, label %124

; <label>:95:                                     ; preds = %89
  store i32 0, i32* %5, align 4
  br label %96

; <label>:96:                                     ; preds = %120, %95
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %99, i64 0, i64 0
  %101 = bitcast %union.rtunion_def* %100 to %struct.rtvec_def**
  %102 = load %struct.rtvec_def*, %struct.rtvec_def** %101, align 8
  %103 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %97, %104
  br i1 %105, label %106, label %123

; <label>:106:                                    ; preds = %96
  %107 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %108, i64 0, i64 0
  %110 = bitcast %union.rtunion_def* %109 to %struct.rtvec_def**
  %111 = load %struct.rtvec_def*, %struct.rtvec_def** %110, align 8
  %112 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %111, i32 0, i32 1
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %112, i64 0, i64 %114
  %116 = load %struct.rtx_def*, %struct.rtx_def** %115, align 8
  %117 = call i32 @get_attr_length(%struct.rtx_def* %116)
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %120

; <label>:120:                                    ; preds = %106
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %96

; <label>:123:                                    ; preds = %96
  br label %127

; <label>:124:                                    ; preds = %89
  %125 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %126 = call i32 @insn_default_length(%struct.rtx_def* %125)
  store i32 %126, i32* %6, align 4
  br label %127

; <label>:127:                                    ; preds = %124, %123
  br label %128

; <label>:128:                                    ; preds = %127, %83
  br label %129

; <label>:129:                                    ; preds = %128
  br label %131

; <label>:130:                                    ; preds = %24
  br label %131

; <label>:131:                                    ; preds = %130, %129, %54, %30
  br label %132

; <label>:132:                                    ; preds = %131
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %134

; <label>:134:                                    ; preds = %132, %72, %29, %14
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare i32 @insn_default_length(%struct.rtx_def*) #1

declare i32 @asm_noperands(%struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @asm_insn_count(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 40
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %12, i64 0, i64 0
  %14 = bitcast %union.rtunion_def* %13 to i8**
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %3, align 8
  br label %19

; <label>:16:                                     ; preds = %1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %18 = call i8* @decode_asm_operands(%struct.rtx_def* %17, %struct.rtx_def** null, %struct.rtx_def*** null, i8** null, i32* null)
  store i8* %18, i8** %3, align 8
  br label %19

; <label>:19:                                     ; preds = %16, %10
  br label %20

; <label>:20:                                     ; preds = %38, %19
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %41

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 59
  br i1 %28, label %34, label %29

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %29, %24
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %37

; <label>:37:                                     ; preds = %34, %29
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  br label %20

; <label>:41:                                     ; preds = %20
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define i32 @label_to_alignment(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  %3 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %5, i64 0, i64 5
  %7 = bitcast %union.rtunion_def* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @min_labelno, align 4
  %10 = sub nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %3, i64 %11
  %13 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define i32 @insn_current_reference_address(%struct.rtx_def*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %3, align 8
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %8 = icmp ne %struct.varray_head_tag* %7, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

; <label>:10:                                     ; preds = %1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %12, i64 0, i64 1
  %14 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %16, i64 0, i64 2
  %18 = bitcast %union.rtunion_def* %17 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %5, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %21, i64 0, i64 0
  %23 = bitcast %union.rtunion_def* %22 to i32*
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp ne i32 %28, 33
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %10
  %31 = load i32, i32* @insn_current_address, align 4
  store i32 %31, i32* %2, align 4
  br label %77

; <label>:32:                                     ; preds = %10
  %33 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %34, i64 0, i64 7
  %36 = bitcast %union.rtunion_def* %35 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %4, align 8
  %38 = load i32*, i32** @uid_shuid, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %40, i64 0, i64 0
  %42 = bitcast %union.rtunion_def* %41 to i32*
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %38, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** @uid_shuid, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %49, i64 0, i64 0
  %51 = bitcast %union.rtunion_def* %50 to i32*
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %46, %55
  br i1 %56, label %57, label %70

; <label>:57:                                     ; preds = %32
  %58 = load i32, i32* @insn_last_address, align 4
  %59 = load i32*, i32** @insn_lengths, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %58, %63
  %65 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %67 = load i32, i32* @length_unit_log, align 4
  %68 = call i32 @align_fuzz(%struct.rtx_def* %65, %struct.rtx_def* %66, i32 %67, i32 -1)
  %69 = sub nsw i32 %64, %68
  store i32 %69, i32* %2, align 4
  br label %77

; <label>:70:                                     ; preds = %32
  %71 = load i32, i32* @insn_current_address, align 4
  %72 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %74 = load i32, i32* @length_unit_log, align 4
  %75 = call i32 @align_fuzz(%struct.rtx_def* %72, %struct.rtx_def* %73, i32 %74, i32 -1)
  %76 = add nsw i32 %71, %75
  store i32 %76, i32* %2, align 4
  br label %77

; <label>:77:                                     ; preds = %70, %57, %30, %9
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @align_fuzz(%struct.rtx_def*, %struct.rtx_def*, i32, i32) #0 {
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtx_def*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %17, i64 0, i64 0
  %19 = bitcast %union.rtunion_def* %18 to i32*
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** @uid_shuid, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %25, i64 0, i64 0
  %27 = bitcast %union.rtunion_def* %26 to i32*
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %23, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %32 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %32, i64 %34
  %36 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  store %struct.rtx_def* %36, %struct.rtx_def** %10, align 8
  br label %37

; <label>:37:                                     ; preds = %99, %4
  %38 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %39 = icmp ne %struct.rtx_def* %38, null
  br i1 %39, label %40, label %105

; <label>:40:                                     ; preds = %37
  %41 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %42, i64 0, i64 0
  %44 = bitcast %union.rtunion_def* %43 to i32*
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  %46 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %47 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %46, i32 0, i32 4
  %48 = bitcast %union.varray_data_tag* %47 to [1 x i32]*
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1 x i32], [1 x i32]* %48, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @insn_lengths, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %52, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32*, i32** @uid_shuid, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %40
  br label %105

; <label>:67:                                     ; preds = %40
  %68 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %70, i64 0, i64 5
  %72 = bitcast %union.rtunion_def* %71 to i32*
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @min_labelno, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %68, i64 %76
  %78 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %77, i32 0, i32 0
  %79 = load i16, i16* %78, align 2
  %80 = sext i16 %79 to i32
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = shl i32 1, %81
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %67
  br label %99

; <label>:87:                                     ; preds = %67
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 0, %88
  %90 = load i32, i32* %8, align 4
  %91 = xor i32 %89, %90
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 %92, %93
  %95 = and i32 %91, %94
  %96 = load i32, i32* %13, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %11, align 4
  br label %99

; <label>:99:                                     ; preds = %87, %86
  %100 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %100, i64 %102
  %104 = load %struct.rtx_def*, %struct.rtx_def** %103, align 8
  store %struct.rtx_def* %104, %struct.rtx_def** %10, align 8
  br label %37

; <label>:105:                                    ; preds = %66, %37
  %106 = load i32, i32* %13, align 4
  ret i32 %106
}

; Function Attrs: noinline nounwind uwtable
define void @compute_alignments() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.basic_block_def*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.edge_def*, align 8
  %11 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %12 = icmp ne %struct.label_alignment* %11, null
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %0
  %14 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %15 = bitcast %struct.label_alignment* %14 to i8*
  call void @free(i8* %15) #6
  store %struct.label_alignment* null, %struct.label_alignment** @label_align, align 8
  br label %16

; <label>:16:                                     ; preds = %13, %0
  %17 = call i32 @max_label_num()
  store i32 %17, i32* @max_labelno, align 4
  %18 = call i32 @get_first_label_num()
  store i32 %18, i32* @min_labelno, align 4
  %19 = load i32, i32* @max_labelno, align 4
  %20 = load i32, i32* @min_labelno, align 4
  %21 = sub nsw i32 %19, %20
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = call noalias i8* @xcalloc(i64 %23, i64 4)
  %25 = bitcast i8* %24 to %struct.label_alignment*
  store %struct.label_alignment* %25, %struct.label_alignment** @label_align, align 8
  %26 = load i32, i32* @optimize, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %16
  %29 = load i32, i32* @optimize_size, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28, %16
  br label %199

; <label>:32:                                     ; preds = %28
  store i32 0, i32* %1, align 4
  br label %33

; <label>:33:                                     ; preds = %196, %32
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @n_basic_blocks, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %199

; <label>:37:                                     ; preds = %33
  %38 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %39 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %38, i32 0, i32 4
  %40 = bitcast %union.varray_data_tag* %39 to [1 x %struct.basic_block_def*]*
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %40, i64 0, i64 %42
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %43, align 8
  store %struct.basic_block_def* %44, %struct.basic_block_def** %5, align 8
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %5, align 8
  %46 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 0
  %47 = load %struct.rtx_def*, %struct.rtx_def** %46, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %48 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp ne i32 %51, 36
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %37
  br label %196

; <label>:54:                                     ; preds = %37
  %55 = load i32, i32* @align_labels_log, align 4
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @align_labels_max_skip, align 4
  store i32 %56, i32* %3, align 4
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %5, align 8
  %58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %57, i32 0, i32 4
  %59 = load %struct.edge_def*, %struct.edge_def** %58, align 8
  store %struct.edge_def* %59, %struct.edge_def** %10, align 8
  br label %60

; <label>:60:                                     ; preds = %98, %54
  %61 = load %struct.edge_def*, %struct.edge_def** %10, align 8
  %62 = icmp ne %struct.edge_def* %61, null
  br i1 %62, label %63, label %102

; <label>:63:                                     ; preds = %60
  %64 = load %struct.edge_def*, %struct.edge_def** %10, align 8
  %65 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

; <label>:69:                                     ; preds = %63
  store i32 1, i32* %9, align 4
  %70 = load %struct.edge_def*, %struct.edge_def** %10, align 8
  %71 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %70, i32 0, i32 2
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %71, align 8
  %73 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %72, i32 0, i32 14
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.edge_def*, %struct.edge_def** %10, align 8
  %76 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = add nsw i32 %78, 5000
  %80 = sdiv i32 %79, 10000
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %97

; <label>:83:                                     ; preds = %63
  %84 = load %struct.edge_def*, %struct.edge_def** %10, align 8
  %85 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %84, i32 0, i32 2
  %86 = load %struct.basic_block_def*, %struct.basic_block_def** %85, align 8
  %87 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %86, i32 0, i32 14
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.edge_def*, %struct.edge_def** %10, align 8
  %90 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = add nsw i32 %92, 5000
  %94 = sdiv i32 %93, 10000
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

; <label>:97:                                     ; preds = %83, %69
  br label %98

; <label>:98:                                     ; preds = %97
  %99 = load %struct.edge_def*, %struct.edge_def** %10, align 8
  %100 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %99, i32 0, i32 0
  %101 = load %struct.edge_def*, %struct.edge_def** %100, align 8
  store %struct.edge_def* %101, %struct.edge_def** %10, align 8
  br label %60

; <label>:102:                                    ; preds = %60
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %147, label %105

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %106, 1000
  br i1 %107, label %138, label %108

; <label>:108:                                    ; preds = %105
  %109 = load %struct.basic_block_def*, %struct.basic_block_def** %5, align 8
  %110 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %109, i32 0, i32 14
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %113 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %112, i32 0, i32 4
  %114 = bitcast %union.varray_data_tag* %113 to [1 x %struct.basic_block_def*]*
  %115 = load i32, i32* %1, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %114, i64 0, i64 %117
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %118, align 8
  %120 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %119, i32 0, i32 14
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %121, 10
  %123 = icmp sgt i32 %111, %122
  br i1 %123, label %124, label %147

; <label>:124:                                    ; preds = %108
  %125 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %126 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %125, i32 0, i32 4
  %127 = bitcast %union.varray_data_tag* %126 to [1 x %struct.basic_block_def*]*
  %128 = load i32, i32* %1, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %127, i64 0, i64 %130
  %132 = load %struct.basic_block_def*, %struct.basic_block_def** %131, align 8
  %133 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %132, i32 0, i32 14
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i64 0, i64 0, i32 14), align 8
  %136 = sdiv i32 %135, 2
  %137 = icmp sle i32 %134, %136
  br i1 %137, label %138, label %147

; <label>:138:                                    ; preds = %124, %105
  %139 = load i32, i32* @align_jumps_log, align 4
  store i32 %139, i32* %2, align 4
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* %2, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %146

; <label>:143:                                    ; preds = %138
  %144 = load i32, i32* %2, align 4
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* @align_jumps_max_skip, align 4
  store i32 %145, i32* %3, align 4
  br label %146

; <label>:146:                                    ; preds = %143, %138
  br label %147

; <label>:147:                                    ; preds = %146, %124, %108, %102
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %169

; <label>:150:                                    ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %151, %152
  %154 = icmp sgt i32 %153, 1000
  br i1 %154, label %155, label %169

; <label>:155:                                    ; preds = %150
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %7, align 4
  %158 = mul nsw i32 %157, 5
  %159 = icmp sgt i32 %156, %158
  br i1 %159, label %160, label %169

; <label>:160:                                    ; preds = %155
  %161 = load i32, i32* @align_loops_log, align 4
  store i32 %161, i32* %2, align 4
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* %2, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %168

; <label>:165:                                    ; preds = %160
  %166 = load i32, i32* %2, align 4
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* @align_loops_max_skip, align 4
  store i32 %167, i32* %3, align 4
  br label %168

; <label>:168:                                    ; preds = %165, %160
  br label %169

; <label>:169:                                    ; preds = %168, %155, %150, %147
  %170 = load i32, i32* %4, align 4
  %171 = trunc i32 %170 to i16
  %172 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %173 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %174, i64 0, i64 5
  %176 = bitcast %union.rtunion_def* %175 to i32*
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @min_labelno, align 4
  %179 = sub nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %172, i64 %180
  %182 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %181, i32 0, i32 0
  store i16 %171, i16* %182, align 2
  %183 = load i32, i32* %3, align 4
  %184 = trunc i32 %183 to i16
  %185 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %186 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %186, i32 0, i32 1
  %188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %187, i64 0, i64 5
  %189 = bitcast %union.rtunion_def* %188 to i32*
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @min_labelno, align 4
  %192 = sub nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %185, i64 %193
  %195 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %194, i32 0, i32 1
  store i16 %184, i16* %195, align 2
  br label %196

; <label>:196:                                    ; preds = %169, %53
  %197 = load i32, i32* %1, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %1, align 4
  br label %33

; <label>:199:                                    ; preds = %33, %31
  ret void
}

declare i32 @max_label_num() #1

declare i32 @get_first_label_num() #1

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define void @shorten_branches(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtx_def*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.rtx_def*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [16 x %struct.rtx_def*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.rtx_def*, align 8
  %19 = alloca %struct.rtx_def*, align 8
  %20 = alloca %struct.rtx_def*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.rtx_def*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.rtx_def*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.rtx_def*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  store i32 1, i32* %9, align 4
  %43 = call i32 @get_max_uid()
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = call noalias i8* @xmalloc(i64 %46)
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** @uid_shuid, align 8
  %49 = load i32, i32* @max_labelno, align 4
  %50 = call i32 @max_label_num()
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %85

; <label>:52:                                     ; preds = %1
  %53 = load i32, i32* @max_labelno, align 4
  store i32 %53, i32* %14, align 4
  %54 = call i32 @max_label_num()
  store i32 %54, i32* @max_labelno, align 4
  %55 = load i32, i32* @max_labelno, align 4
  %56 = load i32, i32* @min_labelno, align 4
  %57 = sub nsw i32 %55, %56
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @min_labelno, align 4
  %61 = sub nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %16, align 4
  %63 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %64 = bitcast %struct.label_alignment* %63 to i8*
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = call i8* @xrealloc(i8* %64, i64 %67)
  %69 = bitcast i8* %68 to %struct.label_alignment*
  store %struct.label_alignment* %69, %struct.label_alignment** @label_align, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %52
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 928, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.shorten_branches, i32 0, i32 0)) #7
  unreachable

; <label>:74:                                     ; preds = %52
  %75 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %75, i64 %77
  %79 = bitcast %struct.label_alignment* %78 to i8*
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %16, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  call void @llvm.memset.p0i8.i64(i8* %79, i8 0, i64 %84, i32 2, i1 false)
  br label %85

; <label>:85:                                     ; preds = %74, %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %86 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %86, %struct.rtx_def** %3, align 8
  store i32 1, i32* %5, align 4
  br label %87

; <label>:87:                                     ; preds = %282, %85
  %88 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %89 = icmp ne %struct.rtx_def* %88, null
  br i1 %89, label %90, label %288

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  %93 = load i32*, i32** @uid_shuid, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %95, i64 0, i64 0
  %97 = bitcast %union.rtunion_def* %96 to i32*
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %93, i64 %99
  store i32 %91, i32* %100, align 4
  %101 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 65535
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 105
  br i1 %109, label %110, label %111

; <label>:110:                                    ; preds = %90
  br label %281

; <label>:111:                                    ; preds = %90
  %112 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 36
  br i1 %116, label %117, label %234

; <label>:117:                                    ; preds = %111
  %118 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %119 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %120, i64 0, i64 5
  %122 = bitcast %union.rtunion_def* %121 to i32*
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @min_labelno, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %118, i64 %126
  %128 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %127, i32 0, i32 0
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %149

; <label>:134:                                    ; preds = %117
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %6, align 4
  %136 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %137 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %138, i64 0, i64 5
  %140 = bitcast %union.rtunion_def* %139 to i32*
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @min_labelno, align 4
  %143 = sub nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %136, i64 %144
  %146 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %145, i32 0, i32 1
  %147 = load i16, i16* %146, align 2
  %148 = sext i16 %147 to i32
  store i32 %148, i32* %7, align 4
  br label %149

; <label>:149:                                    ; preds = %134, %117
  %150 = load i32, i32* @align_labels_log, align 4
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %157

; <label>:154:                                    ; preds = %149
  %155 = load i32, i32* %17, align 4
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* @align_labels_max_skip, align 4
  store i32 %156, i32* %7, align 4
  br label %157

; <label>:157:                                    ; preds = %154, %149
  %158 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %159, i64 0, i64 2
  %161 = bitcast %union.rtunion_def* %160 to %struct.rtx_def**
  %162 = load %struct.rtx_def*, %struct.rtx_def** %161, align 8
  store %struct.rtx_def* %162, %struct.rtx_def** %18, align 8
  %163 = load i32, i32* @target_flags, align 4
  %164 = and i32 %163, 33554432
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %207, label %166

; <label>:166:                                    ; preds = %157
  %167 = load i32, i32* @flag_pic, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %207

; <label>:169:                                    ; preds = %166
  %170 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %171 = icmp ne %struct.rtx_def* %170, null
  br i1 %171, label %172, label %206

; <label>:172:                                    ; preds = %169
  %173 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %174 = bitcast %struct.rtx_def* %173 to i32*
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, 65535
  %177 = icmp eq i32 %176, 33
  br i1 %177, label %178, label %206

; <label>:178:                                    ; preds = %172
  %179 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %180, i64 0, i64 3
  %182 = bitcast %union.rtunion_def* %181 to %struct.rtx_def**
  %183 = load %struct.rtx_def*, %struct.rtx_def** %182, align 8
  store %struct.rtx_def* %183, %struct.rtx_def** %19, align 8
  %184 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %185 = bitcast %struct.rtx_def* %184 to i32*
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 44
  br i1 %188, label %195, label %189

; <label>:189:                                    ; preds = %178
  %190 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %191 = bitcast %struct.rtx_def* %190 to i32*
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, 65535
  %194 = icmp eq i32 %193, 45
  br i1 %194, label %195, label %205

; <label>:195:                                    ; preds = %189, %178
  %196 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %197 = call i32 @final_addr_vec_align(%struct.rtx_def* %196)
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %17, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %204

; <label>:201:                                    ; preds = %195
  %202 = load i32, i32* %17, align 4
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* @align_labels_max_skip, align 4
  store i32 %203, i32* %7, align 4
  br label %204

; <label>:204:                                    ; preds = %201, %195
  br label %205

; <label>:205:                                    ; preds = %204, %189
  br label %206

; <label>:206:                                    ; preds = %205, %172, %169
  br label %207

; <label>:207:                                    ; preds = %206, %166, %157
  %208 = load i32, i32* %6, align 4
  %209 = trunc i32 %208 to i16
  %210 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %212, i64 0, i64 5
  %214 = bitcast %union.rtunion_def* %213 to i32*
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @min_labelno, align 4
  %217 = sub nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %210, i64 %218
  %220 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %219, i32 0, i32 0
  store i16 %209, i16* %220, align 2
  %221 = load i32, i32* %7, align 4
  %222 = trunc i32 %221 to i16
  %223 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %224 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %225 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %226 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %225, i64 0, i64 5
  %227 = bitcast %union.rtunion_def* %226 to i32*
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @min_labelno, align 4
  %230 = sub nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %223, i64 %231
  %233 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %232, i32 0, i32 1
  store i16 %222, i16* %233, align 2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %280

; <label>:234:                                    ; preds = %111
  %235 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %236 = bitcast %struct.rtx_def* %235 to i32*
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 35
  br i1 %239, label %240, label %279

; <label>:240:                                    ; preds = %234
  %241 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  store %struct.rtx_def* %241, %struct.rtx_def** %20, align 8
  br label %242

; <label>:242:                                    ; preds = %272, %240
  %243 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %244 = icmp ne %struct.rtx_def* %243, null
  br i1 %244, label %245, label %256

; <label>:245:                                    ; preds = %242
  %246 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %247 = bitcast %struct.rtx_def* %246 to i32*
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %248, 65535
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 105
  %255 = xor i1 %254, true
  br label %256

; <label>:256:                                    ; preds = %245, %242
  %257 = phi i1 [ false, %242 ], [ %255, %245 ]
  br i1 %257, label %258, label %278

; <label>:258:                                    ; preds = %256
  %259 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %260 = bitcast %struct.rtx_def* %259 to i32*
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, 65535
  %263 = icmp eq i32 %262, 36
  br i1 %263, label %264, label %271

; <label>:264:                                    ; preds = %258
  store i32 0, i32* %17, align 4
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* %17, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %270

; <label>:268:                                    ; preds = %264
  %269 = load i32, i32* %17, align 4
  store i32 %269, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %270

; <label>:270:                                    ; preds = %268, %264
  br label %278

; <label>:271:                                    ; preds = %258
  br label %272

; <label>:272:                                    ; preds = %271
  %273 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %273, i32 0, i32 1
  %275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %274, i64 0, i64 2
  %276 = bitcast %union.rtunion_def* %275 to %struct.rtx_def**
  %277 = load %struct.rtx_def*, %struct.rtx_def** %276, align 8
  store %struct.rtx_def* %277, %struct.rtx_def** %20, align 8
  br label %242

; <label>:278:                                    ; preds = %270, %256
  br label %279

; <label>:279:                                    ; preds = %278, %234
  br label %280

; <label>:280:                                    ; preds = %279, %207
  br label %281

; <label>:281:                                    ; preds = %280, %110
  br label %282

; <label>:282:                                    ; preds = %281
  %283 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %283, i32 0, i32 1
  %285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %284, i64 0, i64 2
  %286 = bitcast %union.rtunion_def* %285 to %struct.rtx_def**
  %287 = load %struct.rtx_def*, %struct.rtx_def** %286, align 8
  store %struct.rtx_def* %287, %struct.rtx_def** %3, align 8
  br label %87

; <label>:288:                                    ; preds = %87
  %289 = load i32, i32* %4, align 4
  %290 = sext i32 %289 to i64
  %291 = mul i64 %290, 4
  %292 = call noalias i8* @xmalloc(i64 %291)
  %293 = bitcast i8* %292 to i32*
  store i32* %293, i32** @insn_lengths, align 8
  %294 = load i32, i32* %4, align 4
  store i32 %294, i32* @insn_lengths_max_uid, align 4
  %295 = load i32, i32* %4, align 4
  %296 = sext i32 %295 to i64
  %297 = call %struct.varray_head_tag* @varray_init(i64 %296, i64 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0))
  store %struct.varray_head_tag* %297, %struct.varray_head_tag** @insn_addresses_, align 8
  %298 = load i32, i32* %4, align 4
  %299 = sext i32 %298 to i64
  %300 = call noalias i8* @xcalloc(i64 %299, i64 1)
  store i8* %300, i8** %10, align 8
  %301 = load i32, i32* %4, align 4
  %302 = sext i32 %301 to i64
  %303 = call noalias i8* @xcalloc(i64 %302, i64 8)
  %304 = bitcast i8* %303 to %struct.rtx_def**
  store %struct.rtx_def** %304, %struct.rtx_def*** @uid_align, align 8
  store i32 16, i32* %5, align 4
  br label %305

; <label>:305:                                    ; preds = %309, %288
  %306 = load i32, i32* %5, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %5, align 4
  %308 = icmp sge i32 %307, 0
  br i1 %308, label %309, label %313

; <label>:309:                                    ; preds = %305
  %310 = load i32, i32* %5, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [16 x %struct.rtx_def*], [16 x %struct.rtx_def*]* %13, i64 0, i64 %311
  store %struct.rtx_def* null, %struct.rtx_def** %312, align 8
  br label %305

; <label>:313:                                    ; preds = %305
  %314 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %314, %struct.rtx_def** %8, align 8
  br label %315

; <label>:315:                                    ; preds = %378, %313
  %316 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %317 = icmp ne %struct.rtx_def* %316, null
  br i1 %317, label %318, label %384

; <label>:318:                                    ; preds = %315
  %319 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %320 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %319, i32 0, i32 1
  %321 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %320, i64 0, i64 0
  %322 = bitcast %union.rtunion_def* %321 to i32*
  %323 = load i32, i32* %322, align 8
  store i32 %323, i32* %21, align 4
  %324 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %325 = bitcast %struct.rtx_def* %324 to i32*
  %326 = load i32, i32* %325, align 8
  %327 = and i32 %326, 65535
  %328 = icmp eq i32 %327, 36
  br i1 %328, label %329, label %343

; <label>:329:                                    ; preds = %318
  %330 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %331 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %332 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %331, i32 0, i32 1
  %333 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %332, i64 0, i64 5
  %334 = bitcast %union.rtunion_def* %333 to i32*
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @min_labelno, align 4
  %337 = sub nsw i32 %335, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %330, i64 %338
  %340 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %339, i32 0, i32 0
  %341 = load i16, i16* %340, align 2
  %342 = sext i16 %341 to i32
  br label %344

; <label>:343:                                    ; preds = %318
  br label %344

; <label>:344:                                    ; preds = %343, %329
  %345 = phi i32 [ %342, %329 ], [ 0, %343 ]
  store i32 %345, i32* %22, align 4
  %346 = getelementptr inbounds [16 x %struct.rtx_def*], [16 x %struct.rtx_def*]* %13, i64 0, i64 0
  %347 = load %struct.rtx_def*, %struct.rtx_def** %346, align 16
  %348 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %349 = load i32, i32* %21, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %348, i64 %350
  store %struct.rtx_def* %347, %struct.rtx_def** %351, align 8
  %352 = load i32, i32* %22, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %377

; <label>:354:                                    ; preds = %344
  %355 = load i32, i32* %22, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [16 x %struct.rtx_def*], [16 x %struct.rtx_def*]* %13, i64 0, i64 %356
  %358 = load %struct.rtx_def*, %struct.rtx_def** %357, align 8
  %359 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %360 = load i32, i32* %21, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %359, i64 %361
  store %struct.rtx_def* %358, %struct.rtx_def** %362, align 8
  %363 = load i32, i32* %22, align 4
  %364 = sub nsw i32 %363, 1
  store i32 %364, i32* %5, align 4
  br label %365

; <label>:365:                                    ; preds = %373, %354
  %366 = load i32, i32* %5, align 4
  %367 = icmp sge i32 %366, 0
  br i1 %367, label %368, label %376

; <label>:368:                                    ; preds = %365
  %369 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %370 = load i32, i32* %5, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [16 x %struct.rtx_def*], [16 x %struct.rtx_def*]* %13, i64 0, i64 %371
  store %struct.rtx_def* %369, %struct.rtx_def** %372, align 8
  br label %373

; <label>:373:                                    ; preds = %368
  %374 = load i32, i32* %5, align 4
  %375 = add nsw i32 %374, -1
  store i32 %375, i32* %5, align 4
  br label %365

; <label>:376:                                    ; preds = %365
  br label %377

; <label>:377:                                    ; preds = %376, %344
  br label %378

; <label>:378:                                    ; preds = %377
  %379 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %380 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %379, i32 0, i32 1
  %381 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %380, i64 0, i64 1
  %382 = bitcast %union.rtunion_def* %381 to %struct.rtx_def**
  %383 = load %struct.rtx_def*, %struct.rtx_def** %382, align 8
  store %struct.rtx_def* %383, %struct.rtx_def** %8, align 8
  br label %315

; <label>:384:                                    ; preds = %315
  store i32 0, i32* @insn_current_address, align 4
  %385 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  store %struct.rtx_def* %385, %struct.rtx_def** %3, align 8
  br label %386

; <label>:386:                                    ; preds = %698, %384
  %387 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %388 = icmp ne %struct.rtx_def* %387, null
  br i1 %388, label %389, label %711

; <label>:389:                                    ; preds = %386
  %390 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %391 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %390, i32 0, i32 1
  %392 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %391, i64 0, i64 0
  %393 = bitcast %union.rtunion_def* %392 to i32*
  %394 = load i32, i32* %393, align 8
  store i32 %394, i32* %12, align 4
  %395 = load i32*, i32** @insn_lengths, align 8
  %396 = load i32, i32* %12, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  store i32 0, i32* %398, align 4
  %399 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %400 = bitcast %struct.rtx_def* %399 to i32*
  %401 = load i32, i32* %400, align 8
  %402 = and i32 %401, 65535
  %403 = icmp eq i32 %402, 36
  br i1 %403, label %404, label %438

; <label>:404:                                    ; preds = %389
  %405 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %406 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %407 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %406, i32 0, i32 1
  %408 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %407, i64 0, i64 5
  %409 = bitcast %union.rtunion_def* %408 to i32*
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @min_labelno, align 4
  %412 = sub nsw i32 %410, %411
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %405, i64 %413
  %415 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %414, i32 0, i32 0
  %416 = load i16, i16* %415, align 2
  %417 = sext i16 %416 to i32
  store i32 %417, i32* %23, align 4
  %418 = load i32, i32* %23, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %437

; <label>:420:                                    ; preds = %404
  %421 = load i32, i32* %23, align 4
  %422 = shl i32 1, %421
  store i32 %422, i32* %24, align 4
  %423 = load i32, i32* @insn_current_address, align 4
  %424 = load i32, i32* %24, align 4
  %425 = add nsw i32 %423, %424
  %426 = sub nsw i32 %425, 1
  %427 = load i32, i32* %24, align 4
  %428 = sub nsw i32 0, %427
  %429 = and i32 %426, %428
  store i32 %429, i32* %25, align 4
  %430 = load i32, i32* %25, align 4
  %431 = load i32, i32* @insn_current_address, align 4
  %432 = sub nsw i32 %430, %431
  %433 = load i32*, i32** @insn_lengths, align 8
  %434 = load i32, i32* %12, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  store i32 %432, i32* %436, align 4
  br label %437

; <label>:437:                                    ; preds = %420, %404
  br label %438

; <label>:438:                                    ; preds = %437, %389
  %439 = load i32, i32* @insn_current_address, align 4
  %440 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %441 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %440, i32 0, i32 4
  %442 = bitcast %union.varray_data_tag* %441 to [1 x i32]*
  %443 = load i32, i32* %12, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [1 x i32], [1 x i32]* %442, i64 0, i64 %444
  store i32 %439, i32* %445, align 4
  %446 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %447 = bitcast %struct.rtx_def* %446 to i32*
  %448 = load i32, i32* %447, align 8
  %449 = and i32 %448, 65535
  %450 = icmp eq i32 %449, 37
  br i1 %450, label %463, label %451

; <label>:451:                                    ; preds = %438
  %452 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %453 = bitcast %struct.rtx_def* %452 to i32*
  %454 = load i32, i32* %453, align 8
  %455 = and i32 %454, 65535
  %456 = icmp eq i32 %455, 35
  br i1 %456, label %463, label %457

; <label>:457:                                    ; preds = %451
  %458 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %459 = bitcast %struct.rtx_def* %458 to i32*
  %460 = load i32, i32* %459, align 8
  %461 = and i32 %460, 65535
  %462 = icmp eq i32 %461, 36
  br i1 %462, label %463, label %464

; <label>:463:                                    ; preds = %457, %451, %438
  br label %698

; <label>:464:                                    ; preds = %457
  %465 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %466 = bitcast %struct.rtx_def* %465 to i32*
  %467 = load i32, i32* %466, align 8
  %468 = lshr i32 %467, 27
  %469 = and i32 %468, 1
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %472

; <label>:471:                                    ; preds = %464
  br label %698

; <label>:472:                                    ; preds = %464
  %473 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %474 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %473, i32 0, i32 1
  %475 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %474, i64 0, i64 3
  %476 = bitcast %union.rtunion_def* %475 to %struct.rtx_def**
  %477 = load %struct.rtx_def*, %struct.rtx_def** %476, align 8
  store %struct.rtx_def* %477, %struct.rtx_def** %11, align 8
  %478 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %479 = bitcast %struct.rtx_def* %478 to i32*
  %480 = load i32, i32* %479, align 8
  %481 = and i32 %480, 65535
  %482 = icmp eq i32 %481, 44
  br i1 %482, label %489, label %483

; <label>:483:                                    ; preds = %472
  %484 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %485 = bitcast %struct.rtx_def* %484 to i32*
  %486 = load i32, i32* %485, align 8
  %487 = and i32 %486, 65535
  %488 = icmp eq i32 %487, 45
  br i1 %488, label %489, label %526

; <label>:489:                                    ; preds = %483, %472
  %490 = load i32, i32* @target_flags, align 4
  %491 = and i32 %490, 33554432
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %525, label %493

; <label>:493:                                    ; preds = %489
  %494 = load i32, i32* @flag_pic, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %525

; <label>:496:                                    ; preds = %493
  %497 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %497, i32 0, i32 1
  %499 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %500 = bitcast %struct.rtx_def* %499 to i32*
  %501 = load i32, i32* %500, align 8
  %502 = and i32 %501, 65535
  %503 = icmp eq i32 %502, 45
  %504 = zext i1 %503 to i32
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %498, i64 0, i64 %505
  %507 = bitcast %union.rtunion_def* %506 to %struct.rtvec_def**
  %508 = load %struct.rtvec_def*, %struct.rtvec_def** %507, align 8
  %509 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %512 = bitcast %struct.rtx_def* %511 to i32*
  %513 = load i32, i32* %512, align 8
  %514 = lshr i32 %513, 16
  %515 = and i32 %514, 255
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %516
  %518 = load i8, i8* %517, align 1
  %519 = zext i8 %518 to i32
  %520 = mul nsw i32 %510, %519
  %521 = load i32*, i32** @insn_lengths, align 8
  %522 = load i32, i32* %12, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %521, i64 %523
  store i32 %520, i32* %524, align 4
  br label %525

; <label>:525:                                    ; preds = %496, %493, %489
  br label %697

; <label>:526:                                    ; preds = %483
  %527 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %528 = bitcast %struct.rtx_def* %527 to i32*
  %529 = load i32, i32* %528, align 8
  %530 = and i32 %529, 65535
  %531 = icmp eq i32 %530, 40
  br i1 %531, label %536, label %532

; <label>:532:                                    ; preds = %526
  %533 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %534 = call i32 @asm_noperands(%struct.rtx_def* %533)
  %535 = icmp sge i32 %534, 0
  br i1 %535, label %536, label %546

; <label>:536:                                    ; preds = %532, %526
  %537 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %538 = call i32 @asm_insn_count(%struct.rtx_def* %537)
  %539 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %540 = call i32 @insn_default_length(%struct.rtx_def* %539)
  %541 = mul nsw i32 %538, %540
  %542 = load i32*, i32** @insn_lengths, align 8
  %543 = load i32, i32* %12, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i32, i32* %542, i64 %544
  store i32 %541, i32* %545, align 4
  br label %696

; <label>:546:                                    ; preds = %532
  %547 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %548 = bitcast %struct.rtx_def* %547 to i32*
  %549 = load i32, i32* %548, align 8
  %550 = and i32 %549, 65535
  %551 = icmp eq i32 %550, 24
  br i1 %551, label %552, label %668

; <label>:552:                                    ; preds = %546
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %553

; <label>:553:                                    ; preds = %664, %552
  %554 = load i32, i32* %26, align 4
  %555 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %556 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %555, i32 0, i32 1
  %557 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %556, i64 0, i64 0
  %558 = bitcast %union.rtunion_def* %557 to %struct.rtvec_def**
  %559 = load %struct.rtvec_def*, %struct.rtvec_def** %558, align 8
  %560 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = icmp slt i32 %554, %561
  br i1 %562, label %563, label %667

; <label>:563:                                    ; preds = %553
  %564 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %565 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %564, i32 0, i32 1
  %566 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %565, i64 0, i64 0
  %567 = bitcast %union.rtunion_def* %566 to %struct.rtvec_def**
  %568 = load %struct.rtvec_def*, %struct.rtvec_def** %567, align 8
  %569 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %568, i32 0, i32 1
  %570 = load i32, i32* %26, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %569, i64 0, i64 %571
  %573 = load %struct.rtx_def*, %struct.rtx_def** %572, align 8
  store %struct.rtx_def* %573, %struct.rtx_def** %28, align 8
  %574 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %575 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %574, i32 0, i32 1
  %576 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %575, i64 0, i64 0
  %577 = bitcast %union.rtunion_def* %576 to i32*
  %578 = load i32, i32* %577, align 8
  store i32 %578, i32* %29, align 4
  %579 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %580 = bitcast %struct.rtx_def* %579 to i32*
  %581 = load i32, i32* %580, align 8
  %582 = and i32 %581, 65535
  %583 = icmp eq i32 %582, 40
  br i1 %583, label %601, label %584

; <label>:584:                                    ; preds = %563
  %585 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %586 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %585, i32 0, i32 1
  %587 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %586, i64 0, i64 0
  %588 = bitcast %union.rtunion_def* %587 to %struct.rtvec_def**
  %589 = load %struct.rtvec_def*, %struct.rtvec_def** %588, align 8
  %590 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %589, i32 0, i32 1
  %591 = load i32, i32* %26, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %590, i64 0, i64 %592
  %594 = load %struct.rtx_def*, %struct.rtx_def** %593, align 8
  %595 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %594, i32 0, i32 1
  %596 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %595, i64 0, i64 3
  %597 = bitcast %union.rtunion_def* %596 to %struct.rtx_def**
  %598 = load %struct.rtx_def*, %struct.rtx_def** %597, align 8
  %599 = call i32 @asm_noperands(%struct.rtx_def* %598)
  %600 = icmp sge i32 %599, 0
  br i1 %600, label %601, label %611

; <label>:601:                                    ; preds = %584, %563
  %602 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %603 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %602, i32 0, i32 1
  %604 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %603, i64 0, i64 3
  %605 = bitcast %union.rtunion_def* %604 to %struct.rtx_def**
  %606 = load %struct.rtx_def*, %struct.rtx_def** %605, align 8
  %607 = call i32 @asm_insn_count(%struct.rtx_def* %606)
  %608 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %609 = call i32 @insn_default_length(%struct.rtx_def* %608)
  %610 = mul nsw i32 %607, %609
  store i32 %610, i32* %30, align 4
  br label %614

; <label>:611:                                    ; preds = %584
  %612 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %613 = call i32 @insn_default_length(%struct.rtx_def* %612)
  store i32 %613, i32* %30, align 4
  br label %614

; <label>:614:                                    ; preds = %611, %601
  %615 = load i32, i32* %30, align 4
  %616 = load i32*, i32** @insn_lengths, align 8
  %617 = load i32, i32* %29, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i32, i32* %616, i64 %618
  store i32 %615, i32* %619, align 4
  %620 = load i32, i32* %27, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %651

; <label>:622:                                    ; preds = %614
  %623 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %624 = call i32 @insn_variable_length_p(%struct.rtx_def* %623)
  %625 = trunc i32 %624 to i8
  %626 = load i8*, i8** %10, align 8
  %627 = load i32, i32* %29, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i8, i8* %626, i64 %628
  store i8 %625, i8* %629, align 1
  %630 = sext i8 %625 to i32
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %637

; <label>:632:                                    ; preds = %622
  %633 = load i8*, i8** %10, align 8
  %634 = load i32, i32* %12, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i8, i8* %633, i64 %635
  store i8 1, i8* %636, align 1
  br label %637

; <label>:637:                                    ; preds = %632, %622
  %638 = load i32, i32* @insn_current_address, align 4
  %639 = load i32*, i32** @insn_lengths, align 8
  %640 = load i32, i32* %12, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds i32, i32* %639, i64 %641
  %643 = load i32, i32* %642, align 4
  %644 = add nsw i32 %638, %643
  %645 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %646 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %645, i32 0, i32 4
  %647 = bitcast %union.varray_data_tag* %646 to [1 x i32]*
  %648 = load i32, i32* %29, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds [1 x i32], [1 x i32]* %647, i64 0, i64 %649
  store i32 %644, i32* %650, align 4
  br label %656

; <label>:651:                                    ; preds = %614
  %652 = load i8*, i8** %10, align 8
  %653 = load i32, i32* %29, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i8, i8* %652, i64 %654
  store i8 0, i8* %655, align 1
  br label %656

; <label>:656:                                    ; preds = %651, %637
  %657 = load i32, i32* %30, align 4
  %658 = load i32*, i32** @insn_lengths, align 8
  %659 = load i32, i32* %12, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds i32, i32* %658, i64 %660
  %662 = load i32, i32* %661, align 4
  %663 = add nsw i32 %662, %657
  store i32 %663, i32* %661, align 4
  br label %664

; <label>:664:                                    ; preds = %656
  %665 = load i32, i32* %26, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %26, align 4
  br label %553

; <label>:667:                                    ; preds = %553
  br label %695

; <label>:668:                                    ; preds = %546
  %669 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %670 = bitcast %struct.rtx_def* %669 to i32*
  %671 = load i32, i32* %670, align 8
  %672 = and i32 %671, 65535
  %673 = icmp ne i32 %672, 48
  br i1 %673, label %674, label %694

; <label>:674:                                    ; preds = %668
  %675 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %676 = bitcast %struct.rtx_def* %675 to i32*
  %677 = load i32, i32* %676, align 8
  %678 = and i32 %677, 65535
  %679 = icmp ne i32 %678, 49
  br i1 %679, label %680, label %694

; <label>:680:                                    ; preds = %674
  %681 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %682 = call i32 @insn_default_length(%struct.rtx_def* %681)
  %683 = load i32*, i32** @insn_lengths, align 8
  %684 = load i32, i32* %12, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds i32, i32* %683, i64 %685
  store i32 %682, i32* %686, align 4
  %687 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %688 = call i32 @insn_variable_length_p(%struct.rtx_def* %687)
  %689 = trunc i32 %688 to i8
  %690 = load i8*, i8** %10, align 8
  %691 = load i32, i32* %12, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i8, i8* %690, i64 %692
  store i8 %689, i8* %693, align 1
  br label %694

; <label>:694:                                    ; preds = %680, %674, %668
  br label %695

; <label>:695:                                    ; preds = %694, %667
  br label %696

; <label>:696:                                    ; preds = %695, %536
  br label %697

; <label>:697:                                    ; preds = %696, %525
  br label %698

; <label>:698:                                    ; preds = %697, %471, %463
  %699 = load i32*, i32** @insn_lengths, align 8
  %700 = load i32, i32* %12, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32, i32* %699, i64 %701
  %703 = load i32, i32* %702, align 4
  %704 = load i32, i32* @insn_current_address, align 4
  %705 = add nsw i32 %704, %703
  store i32 %705, i32* @insn_current_address, align 4
  %706 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %707 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %706, i32 0, i32 1
  %708 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %707, i64 0, i64 2
  %709 = bitcast %union.rtunion_def* %708 to %struct.rtx_def**
  %710 = load %struct.rtx_def*, %struct.rtx_def** %709, align 8
  store %struct.rtx_def* %710, %struct.rtx_def** %3, align 8
  br label %386

; <label>:711:                                    ; preds = %386
  br label %712

; <label>:712:                                    ; preds = %1013, %711
  %713 = load i32, i32* %9, align 4
  %714 = icmp ne i32 %713, 0
  br i1 %714, label %715, label %1014

; <label>:715:                                    ; preds = %712
  store i32 0, i32* %9, align 4
  store i32 15, i32* @insn_current_align, align 4
  store i32 0, i32* @insn_current_address, align 4
  %716 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  store %struct.rtx_def* %716, %struct.rtx_def** %3, align 8
  br label %717

; <label>:717:                                    ; preds = %1003, %715
  %718 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %719 = icmp ne %struct.rtx_def* %718, null
  br i1 %719, label %720, label %1009

; <label>:720:                                    ; preds = %717
  %721 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %722 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %721, i32 0, i32 1
  %723 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %722, i64 0, i64 0
  %724 = bitcast %union.rtunion_def* %723 to i32*
  %725 = load i32, i32* %724, align 8
  store i32 %725, i32* %12, align 4
  %726 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %727 = bitcast %struct.rtx_def* %726 to i32*
  %728 = load i32, i32* %727, align 8
  %729 = and i32 %728, 65535
  %730 = icmp eq i32 %729, 36
  br i1 %730, label %731, label %780

; <label>:731:                                    ; preds = %720
  %732 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %733 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %734 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %733, i32 0, i32 1
  %735 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %734, i64 0, i64 5
  %736 = bitcast %union.rtunion_def* %735 to i32*
  %737 = load i32, i32* %736, align 8
  %738 = load i32, i32* @min_labelno, align 4
  %739 = sub nsw i32 %737, %738
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %732, i64 %740
  %742 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %741, i32 0, i32 0
  %743 = load i16, i16* %742, align 2
  %744 = sext i16 %743 to i32
  store i32 %744, i32* %33, align 4
  %745 = load i32, i32* %33, align 4
  %746 = load i32, i32* @insn_current_align, align 4
  %747 = icmp sgt i32 %745, %746
  br i1 %747, label %748, label %767

; <label>:748:                                    ; preds = %731
  %749 = load i32, i32* %33, align 4
  %750 = shl i32 1, %749
  store i32 %750, i32* %34, align 4
  %751 = load i32, i32* @insn_current_address, align 4
  %752 = load i32, i32* %34, align 4
  %753 = add nsw i32 %751, %752
  %754 = sub nsw i32 %753, 1
  %755 = load i32, i32* %34, align 4
  %756 = sub nsw i32 0, %755
  %757 = and i32 %754, %756
  store i32 %757, i32* %35, align 4
  %758 = load i32, i32* %35, align 4
  %759 = load i32, i32* @insn_current_address, align 4
  %760 = sub nsw i32 %758, %759
  %761 = load i32*, i32** @insn_lengths, align 8
  %762 = load i32, i32* %12, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds i32, i32* %761, i64 %763
  store i32 %760, i32* %764, align 4
  %765 = load i32, i32* %33, align 4
  store i32 %765, i32* @insn_current_align, align 4
  %766 = load i32, i32* %35, align 4
  store i32 %766, i32* @insn_current_address, align 4
  br label %772

; <label>:767:                                    ; preds = %731
  %768 = load i32*, i32** @insn_lengths, align 8
  %769 = load i32, i32* %12, align 4
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds i32, i32* %768, i64 %770
  store i32 0, i32* %771, align 4
  br label %772

; <label>:772:                                    ; preds = %767, %748
  %773 = load i32, i32* @insn_current_address, align 4
  %774 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %775 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %774, i32 0, i32 4
  %776 = bitcast %union.varray_data_tag* %775 to [1 x i32]*
  %777 = load i32, i32* %12, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds [1 x i32], [1 x i32]* %776, i64 0, i64 %778
  store i32 %773, i32* %779, align 4
  br label %1003

; <label>:780:                                    ; preds = %720
  %781 = load i32, i32* @length_unit_log, align 4
  store i32 %781, i32* %32, align 4
  %782 = load i32, i32* %32, align 4
  %783 = load i32, i32* @insn_current_align, align 4
  %784 = icmp slt i32 %782, %783
  br i1 %784, label %785, label %787

; <label>:785:                                    ; preds = %780
  %786 = load i32, i32* %32, align 4
  store i32 %786, i32* @insn_current_align, align 4
  br label %787

; <label>:787:                                    ; preds = %785, %780
  %788 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %789 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %788, i32 0, i32 4
  %790 = bitcast %union.varray_data_tag* %789 to [1 x i32]*
  %791 = load i32, i32* %12, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds [1 x i32], [1 x i32]* %790, i64 0, i64 %792
  %794 = load i32, i32* %793, align 4
  store i32 %794, i32* @insn_last_address, align 4
  %795 = load i32, i32* @insn_current_address, align 4
  %796 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %797 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %796, i32 0, i32 4
  %798 = bitcast %union.varray_data_tag* %797 to [1 x i32]*
  %799 = load i32, i32* %12, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds [1 x i32], [1 x i32]* %798, i64 0, i64 %800
  store i32 %795, i32* %801, align 4
  %802 = load i8*, i8** %10, align 8
  %803 = load i32, i32* %12, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i8, i8* %802, i64 %804
  %806 = load i8, i8* %805, align 1
  %807 = icmp ne i8 %806, 0
  br i1 %807, label %883, label %808

; <label>:808:                                    ; preds = %787
  %809 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %810 = bitcast %struct.rtx_def* %809 to i32*
  %811 = load i32, i32* %810, align 8
  %812 = and i32 %811, 65535
  %813 = icmp eq i32 %812, 32
  br i1 %813, label %814, label %874

; <label>:814:                                    ; preds = %808
  %815 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %816 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %815, i32 0, i32 1
  %817 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %816, i64 0, i64 3
  %818 = bitcast %union.rtunion_def* %817 to %struct.rtx_def**
  %819 = load %struct.rtx_def*, %struct.rtx_def** %818, align 8
  %820 = bitcast %struct.rtx_def* %819 to i32*
  %821 = load i32, i32* %820, align 8
  %822 = and i32 %821, 65535
  %823 = icmp eq i32 %822, 24
  br i1 %823, label %824, label %874

; <label>:824:                                    ; preds = %814
  %825 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %826 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %825, i32 0, i32 1
  %827 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %826, i64 0, i64 3
  %828 = bitcast %union.rtunion_def* %827 to %struct.rtx_def**
  %829 = load %struct.rtx_def*, %struct.rtx_def** %828, align 8
  store %struct.rtx_def* %829, %struct.rtx_def** %11, align 8
  store i32 0, i32* %36, align 4
  br label %830

; <label>:830:                                    ; preds = %870, %824
  %831 = load i32, i32* %36, align 4
  %832 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %833 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %832, i32 0, i32 1
  %834 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %833, i64 0, i64 0
  %835 = bitcast %union.rtunion_def* %834 to %struct.rtvec_def**
  %836 = load %struct.rtvec_def*, %struct.rtvec_def** %835, align 8
  %837 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %836, i32 0, i32 0
  %838 = load i32, i32* %837, align 8
  %839 = icmp slt i32 %831, %838
  br i1 %839, label %840, label %873

; <label>:840:                                    ; preds = %830
  %841 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %842 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %841, i32 0, i32 1
  %843 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %842, i64 0, i64 0
  %844 = bitcast %union.rtunion_def* %843 to %struct.rtvec_def**
  %845 = load %struct.rtvec_def*, %struct.rtvec_def** %844, align 8
  %846 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %845, i32 0, i32 1
  %847 = load i32, i32* %36, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %846, i64 0, i64 %848
  %850 = load %struct.rtx_def*, %struct.rtx_def** %849, align 8
  store %struct.rtx_def* %850, %struct.rtx_def** %37, align 8
  %851 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %852 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %851, i32 0, i32 1
  %853 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %852, i64 0, i64 0
  %854 = bitcast %union.rtunion_def* %853 to i32*
  %855 = load i32, i32* %854, align 8
  store i32 %855, i32* %38, align 4
  %856 = load i32, i32* @insn_current_address, align 4
  %857 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %858 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %857, i32 0, i32 4
  %859 = bitcast %union.varray_data_tag* %858 to [1 x i32]*
  %860 = load i32, i32* %38, align 4
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds [1 x i32], [1 x i32]* %859, i64 0, i64 %861
  store i32 %856, i32* %862, align 4
  %863 = load i32*, i32** @insn_lengths, align 8
  %864 = load i32, i32* %38, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds i32, i32* %863, i64 %865
  %867 = load i32, i32* %866, align 4
  %868 = load i32, i32* @insn_current_address, align 4
  %869 = add nsw i32 %868, %867
  store i32 %869, i32* @insn_current_address, align 4
  br label %870

; <label>:870:                                    ; preds = %840
  %871 = load i32, i32* %36, align 4
  %872 = add nsw i32 %871, 1
  store i32 %872, i32* %36, align 4
  br label %830

; <label>:873:                                    ; preds = %830
  br label %882

; <label>:874:                                    ; preds = %814, %808
  %875 = load i32*, i32** @insn_lengths, align 8
  %876 = load i32, i32* %12, align 4
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds i32, i32* %875, i64 %877
  %879 = load i32, i32* %878, align 4
  %880 = load i32, i32* @insn_current_address, align 4
  %881 = add nsw i32 %880, %879
  store i32 %881, i32* @insn_current_address, align 4
  br label %882

; <label>:882:                                    ; preds = %874, %873
  br label %1003

; <label>:883:                                    ; preds = %787
  %884 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %885 = bitcast %struct.rtx_def* %884 to i32*
  %886 = load i32, i32* %885, align 8
  %887 = and i32 %886, 65535
  %888 = icmp eq i32 %887, 32
  br i1 %888, label %889, label %982

; <label>:889:                                    ; preds = %883
  %890 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %891 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %890, i32 0, i32 1
  %892 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %891, i64 0, i64 3
  %893 = bitcast %union.rtunion_def* %892 to %struct.rtx_def**
  %894 = load %struct.rtx_def*, %struct.rtx_def** %893, align 8
  %895 = bitcast %struct.rtx_def* %894 to i32*
  %896 = load i32, i32* %895, align 8
  %897 = and i32 %896, 65535
  %898 = icmp eq i32 %897, 24
  br i1 %898, label %899, label %982

; <label>:899:                                    ; preds = %889
  %900 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %901 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %900, i32 0, i32 1
  %902 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %901, i64 0, i64 3
  %903 = bitcast %union.rtunion_def* %902 to %struct.rtx_def**
  %904 = load %struct.rtx_def*, %struct.rtx_def** %903, align 8
  store %struct.rtx_def* %904, %struct.rtx_def** %11, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %39, align 4
  br label %905

; <label>:905:                                    ; preds = %978, %899
  %906 = load i32, i32* %39, align 4
  %907 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %908 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %907, i32 0, i32 1
  %909 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %908, i64 0, i64 0
  %910 = bitcast %union.rtunion_def* %909 to %struct.rtvec_def**
  %911 = load %struct.rtvec_def*, %struct.rtvec_def** %910, align 8
  %912 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %911, i32 0, i32 0
  %913 = load i32, i32* %912, align 8
  %914 = icmp slt i32 %906, %913
  br i1 %914, label %915, label %981

; <label>:915:                                    ; preds = %905
  %916 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %917 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %916, i32 0, i32 1
  %918 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %917, i64 0, i64 0
  %919 = bitcast %union.rtunion_def* %918 to %struct.rtvec_def**
  %920 = load %struct.rtvec_def*, %struct.rtvec_def** %919, align 8
  %921 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %920, i32 0, i32 1
  %922 = load i32, i32* %39, align 4
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %921, i64 0, i64 %923
  %925 = load %struct.rtx_def*, %struct.rtx_def** %924, align 8
  store %struct.rtx_def* %925, %struct.rtx_def** %40, align 8
  %926 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %927 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %926, i32 0, i32 1
  %928 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %927, i64 0, i64 0
  %929 = bitcast %union.rtunion_def* %928 to i32*
  %930 = load i32, i32* %929, align 8
  store i32 %930, i32* %41, align 4
  %931 = load i32, i32* @insn_current_address, align 4
  %932 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %933 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %932, i32 0, i32 4
  %934 = bitcast %union.varray_data_tag* %933 to [1 x i32]*
  %935 = load i32, i32* %41, align 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds [1 x i32], [1 x i32]* %934, i64 0, i64 %936
  store i32 %931, i32* %937, align 4
  %938 = load i8*, i8** %10, align 8
  %939 = load i32, i32* %41, align 4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds i8, i8* %938, i64 %940
  %942 = load i8, i8* %941, align 1
  %943 = icmp ne i8 %942, 0
  br i1 %943, label %950, label %944

; <label>:944:                                    ; preds = %915
  %945 = load i32*, i32** @insn_lengths, align 8
  %946 = load i32, i32* %41, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds i32, i32* %945, i64 %947
  %949 = load i32, i32* %948, align 4
  store i32 %949, i32* %42, align 4
  br label %953

; <label>:950:                                    ; preds = %915
  %951 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %952 = call i32 @insn_current_length(%struct.rtx_def* %951)
  store i32 %952, i32* %42, align 4
  br label %953

; <label>:953:                                    ; preds = %950, %944
  %954 = load i32, i32* %42, align 4
  %955 = load i32*, i32** @insn_lengths, align 8
  %956 = load i32, i32* %41, align 4
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds i32, i32* %955, i64 %957
  %959 = load i32, i32* %958, align 4
  %960 = icmp ne i32 %954, %959
  br i1 %960, label %961, label %967

; <label>:961:                                    ; preds = %953
  %962 = load i32, i32* %42, align 4
  %963 = load i32*, i32** @insn_lengths, align 8
  %964 = load i32, i32* %41, align 4
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds i32, i32* %963, i64 %965
  store i32 %962, i32* %966, align 4
  store i32 1, i32* %9, align 4
  br label %967

; <label>:967:                                    ; preds = %961, %953
  %968 = load i32*, i32** @insn_lengths, align 8
  %969 = load i32, i32* %41, align 4
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds i32, i32* %968, i64 %970
  %972 = load i32, i32* %971, align 4
  %973 = load i32, i32* @insn_current_address, align 4
  %974 = add nsw i32 %973, %972
  store i32 %974, i32* @insn_current_address, align 4
  %975 = load i32, i32* %42, align 4
  %976 = load i32, i32* %31, align 4
  %977 = add nsw i32 %976, %975
  store i32 %977, i32* %31, align 4
  br label %978

; <label>:978:                                    ; preds = %967
  %979 = load i32, i32* %39, align 4
  %980 = add nsw i32 %979, 1
  store i32 %980, i32* %39, align 4
  br label %905

; <label>:981:                                    ; preds = %905
  br label %988

; <label>:982:                                    ; preds = %889, %883
  %983 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %984 = call i32 @insn_current_length(%struct.rtx_def* %983)
  store i32 %984, i32* %31, align 4
  %985 = load i32, i32* %31, align 4
  %986 = load i32, i32* @insn_current_address, align 4
  %987 = add nsw i32 %986, %985
  store i32 %987, i32* @insn_current_address, align 4
  br label %988

; <label>:988:                                    ; preds = %982, %981
  %989 = load i32, i32* %31, align 4
  %990 = load i32*, i32** @insn_lengths, align 8
  %991 = load i32, i32* %12, align 4
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds i32, i32* %990, i64 %992
  %994 = load i32, i32* %993, align 4
  %995 = icmp ne i32 %989, %994
  br i1 %995, label %996, label %1002

; <label>:996:                                    ; preds = %988
  %997 = load i32, i32* %31, align 4
  %998 = load i32*, i32** @insn_lengths, align 8
  %999 = load i32, i32* %12, align 4
  %1000 = sext i32 %999 to i64
  %1001 = getelementptr inbounds i32, i32* %998, i64 %1000
  store i32 %997, i32* %1001, align 4
  store i32 1, i32* %9, align 4
  br label %1002

; <label>:1002:                                   ; preds = %996, %988
  br label %1003

; <label>:1003:                                   ; preds = %1002, %882, %772
  %1004 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %1005 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1004, i32 0, i32 1
  %1006 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1005, i64 0, i64 2
  %1007 = bitcast %union.rtunion_def* %1006 to %struct.rtx_def**
  %1008 = load %struct.rtx_def*, %struct.rtx_def** %1007, align 8
  store %struct.rtx_def* %1008, %struct.rtx_def** %3, align 8
  br label %717

; <label>:1009:                                   ; preds = %717
  %1010 = load i32, i32* @optimize, align 4
  %1011 = icmp ne i32 %1010, 0
  br i1 %1011, label %1013, label %1012

; <label>:1012:                                   ; preds = %1009
  br label %1014

; <label>:1013:                                   ; preds = %1009
  br label %712

; <label>:1014:                                   ; preds = %1012, %712
  %1015 = load i8*, i8** %10, align 8
  call void @free(i8* %1015) #6
  ret void
}

declare i32 @get_max_uid() #1

declare noalias i8* @xmalloc(i64) #1

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare %struct.rtx_def* @get_insns() #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @final_addr_vec_align(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %5, i64 0, i64 3
  %7 = bitcast %union.rtunion_def* %6 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 16
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %1
  store i32 16, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %19, %1
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = call i32 @exact_log2_wide(i64 %22)
  ret i32 %23
}

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

declare %struct.rtx_def* @get_last_insn() #1

declare i32 @insn_variable_length_p(%struct.rtx_def*) #1

declare i32 @insn_current_length(%struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define void @final_start_function(%struct.rtx_def*, %struct._IO_FILE*, i32) #0 {
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* @block_depth, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @this_is_asm_operands, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %8, i64 0, i64 4
  %10 = bitcast %union.rtunion_def* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, -99
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %3
  %14 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  call void @notice_source_line(%struct.rtx_def* %14)
  br label %15

; <label>:15:                                     ; preds = %13, %3
  %16 = load i32, i32* @last_linenum, align 4
  store i32 %16, i32* @high_function_linenum, align 4
  store i32 %16, i32* @high_block_linenum, align 4
  %17 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %18 = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %17, i32 0, i32 10
  %19 = load void (i32, i8*)*, void (i32, i8*)** %18, align 8
  %20 = load i32, i32* @last_linenum, align 4
  %21 = load i8*, i8** @last_filename, align 8
  call void %19(i32 %20, i8* %21)
  %22 = load i32, i32* @write_symbols, align 4
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %15
  %25 = load i32, i32* @write_symbols, align 4
  %26 = icmp ne i32 %25, 7
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  call void @dwarf2out_begin_prologue(i32 0, i8* null)
  br label %28

; <label>:28:                                     ; preds = %27, %24, %15
  %29 = call i32 @dwarf2out_do_frame()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call void @dwarf2out_frame_debug(%struct.rtx_def* null)
  br label %32

; <label>:32:                                     ; preds = %31, %28
  %33 = load i32, i32* @write_symbols, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

; <label>:35:                                     ; preds = %32
  call void @remove_unnecessary_notes()
  call void @reorder_blocks()
  %36 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @number_blocks(%union.tree_node* %36)
  %37 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %38 = bitcast %union.tree_node* %37 to %struct.tree_decl*
  %39 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %38, i32 0, i32 12
  %40 = load %union.tree_node*, %union.tree_node** %39, align 8
  %41 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, -16385
  %45 = or i32 %44, 16384
  store i32 %45, i32* %42, align 8
  br label %46

; <label>:46:                                     ; preds = %35, %32
  %47 = load void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*, i64)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 6), align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %49 = call i64 @get_frame_size()
  call void %47(%struct._IO_FILE* %48, i64 %49)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @notice_source_line(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca i8*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %5, i64 0, i64 3
  %7 = bitcast %union.rtunion_def* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** @last_filename, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %11, i64 0, i64 4
  %13 = bitcast %union.rtunion_def* %12 to i32*
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* @last_linenum, align 4
  %15 = load i32, i32* @last_linenum, align 4
  %16 = load i32, i32* @high_block_linenum, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %1
  %19 = load i32, i32* @last_linenum, align 4
  br label %22

; <label>:20:                                     ; preds = %1
  %21 = load i32, i32* @high_block_linenum, align 4
  br label %22

; <label>:22:                                     ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* @high_block_linenum, align 4
  %24 = load i32, i32* @last_linenum, align 4
  %25 = load i32, i32* @high_function_linenum, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* @last_linenum, align 4
  br label %31

; <label>:29:                                     ; preds = %22
  %30 = load i32, i32* @high_function_linenum, align 4
  br label %31

; <label>:31:                                     ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* @high_function_linenum, align 4
  ret void
}

declare void @dwarf2out_begin_prologue(i32, i8*) #1

declare i32 @dwarf2out_do_frame() #1

declare void @dwarf2out_frame_debug(%struct.rtx_def*) #1

declare void @remove_unnecessary_notes() #1

declare void @reorder_blocks() #1

declare void @number_blocks(%union.tree_node*) #1

declare i64 @get_frame_size() #1

; Function Attrs: noinline nounwind uwtable
define void @final_end_function() #0 {
  call void @app_disable()
  %1 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %2 = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %1, i32 0, i32 14
  %3 = load void (i32)*, void (i32)** %2, align 8
  %4 = load i32, i32* @high_function_linenum, align 4
  call void %3(i32 %4)
  %5 = load void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*, i64)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 9), align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %7 = call i64 @get_frame_size()
  call void %5(%struct._IO_FILE* %6, i64 %7)
  %8 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %9 = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %8, i32 0, i32 12
  %10 = load void ()*, void ()** %9, align 8
  call void %10()
  %11 = load i32, i32* @write_symbols, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %0
  %14 = load i32, i32* @write_symbols, align 4
  %15 = icmp ne i32 %14, 7
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %13
  %17 = call i32 @dwarf2out_do_frame()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16
  call void @dwarf2out_end_epilogue()
  br label %20

; <label>:20:                                     ; preds = %19, %16, %13, %0
  ret void
}

declare void @dwarf2out_end_epilogue() #1

; Function Attrs: noinline nounwind uwtable
define void @final(%struct.rtx_def*, %struct._IO_FILE*, i32, i32) #0 {
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %5, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @last_ignored_compare, align 8
  store i32 1, i32* @new_block, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %9, align 8
  br label %13

; <label>:13:                                     ; preds = %37, %4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %15 = icmp ne %struct.rtx_def* %14, null
  br i1 %15, label %16, label %43

; <label>:16:                                     ; preds = %13
  %17 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %36

; <label>:22:                                     ; preds = %16
  %23 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %24, i64 0, i64 4
  %26 = bitcast %union.rtunion_def* %25 to i32*
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %36

; <label>:30:                                     ; preds = %22
  %31 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %32, i64 0, i64 4
  %34 = bitcast %union.rtunion_def* %33 to i32*
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %10, align 4
  br label %36

; <label>:36:                                     ; preds = %30, %22, %16
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %39, i64 0, i64 2
  %41 = bitcast %union.rtunion_def* %40 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %9, align 8
  br label %13

; <label>:43:                                     ; preds = %13
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = call noalias i8* @xcalloc(i64 %46, i64 1)
  store i8* %47, i8** @line_note_exists, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %9, align 8
  br label %49

; <label>:49:                                     ; preds = %89, %43
  %50 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %51 = icmp ne %struct.rtx_def* %50, null
  br i1 %51, label %52, label %95

; <label>:52:                                     ; preds = %49
  %53 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %54, i64 0, i64 0
  %56 = bitcast %union.rtunion_def* %55 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %66

; <label>:60:                                     ; preds = %52
  %61 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %62, i64 0, i64 0
  %64 = bitcast %union.rtunion_def* %63 to i32*
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %11, align 4
  br label %66

; <label>:66:                                     ; preds = %60, %52
  %67 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 37
  br i1 %71, label %72, label %88

; <label>:72:                                     ; preds = %66
  %73 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %74, i64 0, i64 4
  %76 = bitcast %union.rtunion_def* %75 to i32*
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %88

; <label>:79:                                     ; preds = %72
  %80 = load i8*, i8** @line_note_exists, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %82, i64 0, i64 4
  %84 = bitcast %union.rtunion_def* %83 to i32*
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %80, i64 %86
  store i8 1, i8* %87, align 1
  br label %88

; <label>:88:                                     ; preds = %79, %72, %66
  br label %89

; <label>:89:                                     ; preds = %88
  %90 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %91, i64 0, i64 2
  %93 = bitcast %union.rtunion_def* %92 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %93, align 8
  store %struct.rtx_def* %94, %struct.rtx_def** %9, align 8
  br label %49

; <label>:95:                                     ; preds = %49
  call void @init_recog()
  %96 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %97, i64 0, i64 2
  %99 = bitcast %union.rtunion_def* %98 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %99, align 8
  store %struct.rtx_def* %100, %struct.rtx_def** %9, align 8
  br label %101

; <label>:101:                                    ; preds = %128, %95
  %102 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %103 = icmp ne %struct.rtx_def* %102, null
  br i1 %103, label %104, label %134

; <label>:104:                                    ; preds = %101
  %105 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %106, i64 0, i64 0
  %108 = bitcast %union.rtunion_def* %107 to i32*
  %109 = load i32, i32* %108, align 8
  %110 = zext i32 %109 to i64
  %111 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %112 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp uge i64 %110, %113
  br i1 %114, label %115, label %116

; <label>:115:                                    ; preds = %104
  store i32 -1, i32* @insn_current_address, align 4
  br label %128

; <label>:116:                                    ; preds = %104
  %117 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %118 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %117, i32 0, i32 4
  %119 = bitcast %union.varray_data_tag* %118 to [1 x i32]*
  %120 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %121, i64 0, i64 0
  %123 = bitcast %union.rtunion_def* %122 to i32*
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [1 x i32], [1 x i32]* %119, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* @insn_current_address, align 4
  br label %128

; <label>:128:                                    ; preds = %116, %115
  %129 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call %struct.rtx_def* @final_scan_insn(%struct.rtx_def* %129, %struct._IO_FILE* %130, i32 %131, i32 %132, i32 0)
  store %struct.rtx_def* %133, %struct.rtx_def** %9, align 8
  br label %101

; <label>:134:                                    ; preds = %101
  %135 = load i8*, i8** @line_note_exists, align 8
  call void @free(i8* %135) #6
  store i8* null, i8** @line_note_exists, align 8
  ret void
}

declare void @init_recog() #1

; Function Attrs: noinline nounwind uwtable
define %struct.rtx_def* @final_scan_insn(%struct.rtx_def*, %struct._IO_FILE*, i32, i32, i32) #0 {
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtx_def*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.rtx_def*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.rtx_def*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.rtx_def*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.rtx_def**, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.rtx_def*, align 8
  %33 = alloca %struct.rtx_def*, align 8
  %34 = alloca %struct.rtx_def*, align 8
  %35 = alloca %struct.rtx_def*, align 8
  %36 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %7, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %37 = load i32, i32* @insn_counter, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @insn_counter, align 4
  %39 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %41 = load i32, i32* %40, align 8
  %42 = lshr i32 %41, 27
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

; <label>:45:                                     ; preds = %5
  %46 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %47, i64 0, i64 2
  %49 = bitcast %union.rtunion_def* %48 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %49, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %6, align 8
  br label %991

; <label>:51:                                     ; preds = %5
  %52 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 65535
  switch i32 %55, label %538 [
    i32 37, label %56
    i32 35, label %340
    i32 36, label %346
  ]

; <label>:56:                                     ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %56
  br label %985

; <label>:60:                                     ; preds = %56
  %61 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %62, i64 0, i64 4
  %64 = bitcast %union.rtunion_def* %63 to i32*
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %211 [
    i32 -99, label %66
    i32 -96, label %66
    i32 -95, label %66
    i32 -92, label %66
    i32 -94, label %66
    i32 -93, label %66
    i32 -91, label %66
    i32 -84, label %66
    i32 -83, label %66
    i32 -82, label %66
    i32 -81, label %66
    i32 -79, label %66
    i32 -80, label %67
    i32 -86, label %81
    i32 -85, label %91
    i32 -90, label %101
    i32 -89, label %105
    i32 -87, label %108
    i32 -98, label %113
    i32 -97, label %160
    i32 -88, label %200
    i32 0, label %210
  ]

; <label>:66:                                     ; preds = %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60
  br label %339

; <label>:67:                                     ; preds = %60
  %68 = load i32, i32* @flag_debug_asm, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

; <label>:70:                                     ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %73, i64 0, i64 3
  %75 = bitcast %union.rtunion_def* %74 to %struct.basic_block_def**
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %75, align 8
  %77 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 %78)
  br label %80

; <label>:80:                                     ; preds = %70, %67
  br label %339

; <label>:81:                                     ; preds = %60
  br label %82

; <label>:82:                                     ; preds = %81
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %85, i64 0, i64 3
  %87 = bitcast %union.rtunion_def* %86 to i32*
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %88)
  br label %90

; <label>:90:                                     ; preds = %82
  br label %339

; <label>:91:                                     ; preds = %60
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %95, i64 0, i64 3
  %97 = bitcast %union.rtunion_def* %96 to i32*
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %98)
  br label %100

; <label>:100:                                    ; preds = %92
  br label %339

; <label>:101:                                    ; preds = %60
  %102 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 7), align 8
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void %102(%struct._IO_FILE* %103)
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void @profile_after_prologue(%struct._IO_FILE* %104)
  br label %339

; <label>:105:                                    ; preds = %60
  %106 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 8), align 8
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void %106(%struct._IO_FILE* %107)
  br label %339

; <label>:108:                                    ; preds = %60
  call void @app_disable()
  %109 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %110 = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %109, i32 0, i32 11
  %111 = load void (i32)*, void (i32)** %110, align 8
  %112 = load i32, i32* @last_linenum, align 4
  call void %111(i32 %112)
  br label %339

; <label>:113:                                    ; preds = %60
  %114 = load i32, i32* @debug_info_level, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %131, label %116

; <label>:116:                                    ; preds = %113
  %117 = load i32, i32* @debug_info_level, align 4
  %118 = icmp eq i32 %117, 3
  br i1 %118, label %131, label %119

; <label>:119:                                    ; preds = %116
  %120 = load i32, i32* @write_symbols, align 4
  %121 = icmp eq i32 %120, 3
  br i1 %121, label %131, label %122

; <label>:122:                                    ; preds = %119
  %123 = load i32, i32* @write_symbols, align 4
  %124 = icmp eq i32 %123, 4
  br i1 %124, label %131, label %125

; <label>:125:                                    ; preds = %122
  %126 = load i32, i32* @write_symbols, align 4
  %127 = icmp eq i32 %126, 7
  br i1 %127, label %131, label %128

; <label>:128:                                    ; preds = %125
  %129 = load i32, i32* @write_symbols, align 4
  %130 = icmp eq i32 %129, 6
  br i1 %130, label %131, label %159

; <label>:131:                                    ; preds = %128, %125, %122, %119, %116, %113
  %132 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %133, i64 0, i64 3
  %135 = bitcast %union.rtunion_def* %134 to %union.tree_node**
  %136 = load %union.tree_node*, %union.tree_node** %135, align 8
  %137 = bitcast %union.tree_node* %136 to %struct.tree_block*
  %138 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = lshr i32 %139, 2
  store i32 %140, i32* %12, align 4
  call void @app_disable()
  %141 = load i32, i32* @block_depth, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @block_depth, align 4
  %143 = load i32, i32* @last_linenum, align 4
  store i32 %143, i32* @high_block_linenum, align 4
  %144 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %145 = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %144, i32 0, i32 6
  %146 = load void (i32, i32)*, void (i32, i32)** %145, align 8
  %147 = load i32, i32* @last_linenum, align 4
  %148 = load i32, i32* %12, align 4
  call void %146(i32 %147, i32 %148)
  %149 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %150, i64 0, i64 3
  %152 = bitcast %union.rtunion_def* %151 to %union.tree_node**
  %153 = load %union.tree_node*, %union.tree_node** %152, align 8
  %154 = bitcast %union.tree_node* %153 to %struct.tree_common*
  %155 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, -16385
  %158 = or i32 %157, 16384
  store i32 %158, i32* %155, align 8
  br label %159

; <label>:159:                                    ; preds = %131, %128
  br label %339

; <label>:160:                                    ; preds = %60
  %161 = load i32, i32* @debug_info_level, align 4
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %178, label %163

; <label>:163:                                    ; preds = %160
  %164 = load i32, i32* @debug_info_level, align 4
  %165 = icmp eq i32 %164, 3
  br i1 %165, label %178, label %166

; <label>:166:                                    ; preds = %163
  %167 = load i32, i32* @write_symbols, align 4
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %178, label %169

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* @write_symbols, align 4
  %171 = icmp eq i32 %170, 4
  br i1 %171, label %178, label %172

; <label>:172:                                    ; preds = %169
  %173 = load i32, i32* @write_symbols, align 4
  %174 = icmp eq i32 %173, 7
  br i1 %174, label %178, label %175

; <label>:175:                                    ; preds = %172
  %176 = load i32, i32* @write_symbols, align 4
  %177 = icmp eq i32 %176, 6
  br i1 %177, label %178, label %199

; <label>:178:                                    ; preds = %175, %172, %169, %166, %163, %160
  %179 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %180, i64 0, i64 3
  %182 = bitcast %union.rtunion_def* %181 to %union.tree_node**
  %183 = load %union.tree_node*, %union.tree_node** %182, align 8
  %184 = bitcast %union.tree_node* %183 to %struct.tree_block*
  %185 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = lshr i32 %186, 2
  store i32 %187, i32* %13, align 4
  call void @app_disable()
  %188 = load i32, i32* @block_depth, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* @block_depth, align 4
  %190 = load i32, i32* @block_depth, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

; <label>:192:                                    ; preds = %178
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1929, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #7
  unreachable

; <label>:193:                                    ; preds = %178
  %194 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %195 = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %194, i32 0, i32 7
  %196 = load void (i32, i32)*, void (i32, i32)** %195, align 8
  %197 = load i32, i32* @high_block_linenum, align 4
  %198 = load i32, i32* %13, align 4
  call void %196(i32 %197, i32 %198)
  br label %199

; <label>:199:                                    ; preds = %193, %175
  br label %339

; <label>:200:                                    ; preds = %60
  br label %201

; <label>:201:                                    ; preds = %200
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %203 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %204 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %203, i32 0, i32 1
  %205 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %204, i64 0, i64 5
  %206 = bitcast %union.rtunion_def* %205 to i32*
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 %207)
  br label %209

; <label>:209:                                    ; preds = %201
  br label %339

; <label>:210:                                    ; preds = %60
  br label %339

; <label>:211:                                    ; preds = %60
  %212 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %212, i32 0, i32 1
  %214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %213, i64 0, i64 4
  %215 = bitcast %union.rtunion_def* %214 to i32*
  %216 = load i32, i32* %215, align 8
  %217 = icmp sle i32 %216, 0
  br i1 %217, label %218, label %219

; <label>:218:                                    ; preds = %211
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1947, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #7
  unreachable

; <label>:219:                                    ; preds = %211
  store i32 0, i32* %15, align 4
  %220 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %220, i32 0, i32 1
  %222 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %221, i64 0, i64 2
  %223 = bitcast %union.rtunion_def* %222 to %struct.rtx_def**
  %224 = load %struct.rtx_def*, %struct.rtx_def** %223, align 8
  store %struct.rtx_def* %224, %struct.rtx_def** %14, align 8
  br label %225

; <label>:225:                                    ; preds = %322, %219
  %226 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %227 = icmp ne %struct.rtx_def* %226, null
  br i1 %227, label %228, label %328

; <label>:228:                                    ; preds = %225
  %229 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %230 = bitcast %struct.rtx_def* %229 to i32*
  %231 = load i32, i32* %230, align 8
  %232 = and i32 %231, 65535
  %233 = icmp ne i32 %232, 37
  br i1 %233, label %234, label %241

; <label>:234:                                    ; preds = %228
  %235 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %236 = bitcast %struct.rtx_def* %235 to i32*
  %237 = load i32, i32* %236, align 8
  %238 = and i32 %237, 65535
  %239 = icmp ne i32 %238, 36
  br i1 %239, label %240, label %241

; <label>:240:                                    ; preds = %234
  br label %328

; <label>:241:                                    ; preds = %234, %228
  %242 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %243 = bitcast %struct.rtx_def* %242 to i32*
  %244 = load i32, i32* %243, align 8
  %245 = and i32 %244, 65535
  %246 = icmp eq i32 %245, 37
  br i1 %246, label %247, label %269

; <label>:247:                                    ; preds = %241
  %248 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %249 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %250 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %249, i64 0, i64 4
  %251 = bitcast %union.rtunion_def* %250 to i32*
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, -98
  br i1 %253, label %268, label %254

; <label>:254:                                    ; preds = %247
  %255 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %256 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %255, i32 0, i32 1
  %257 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %256, i64 0, i64 4
  %258 = bitcast %union.rtunion_def* %257 to i32*
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, -97
  br i1 %260, label %268, label %261

; <label>:261:                                    ; preds = %254
  %262 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %263 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %262, i32 0, i32 1
  %264 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %263, i64 0, i64 4
  %265 = bitcast %union.rtunion_def* %264 to i32*
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, -87
  br i1 %267, label %268, label %269

; <label>:268:                                    ; preds = %261, %254, %247
  br label %328

; <label>:269:                                    ; preds = %261, %241
  %270 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %271 = bitcast %struct.rtx_def* %270 to i32*
  %272 = load i32, i32* %271, align 8
  %273 = and i32 %272, 65535
  %274 = icmp eq i32 %273, 37
  br i1 %274, label %275, label %319

; <label>:275:                                    ; preds = %269
  %276 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %276, i32 0, i32 1
  %278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %277, i64 0, i64 4
  %279 = bitcast %union.rtunion_def* %278 to i32*
  %280 = load i32, i32* %279, align 8
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %319

; <label>:282:                                    ; preds = %275
  %283 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %283, i32 0, i32 1
  %285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %284, i64 0, i64 4
  %286 = bitcast %union.rtunion_def* %285 to i32*
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %16, align 4
  br label %289

; <label>:289:                                    ; preds = %306, %282
  %290 = load i32, i32* %16, align 4
  %291 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %292 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %291, i32 0, i32 1
  %293 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %292, i64 0, i64 4
  %294 = bitcast %union.rtunion_def* %293 to i32*
  %295 = load i32, i32* %294, align 8
  %296 = icmp slt i32 %290, %295
  br i1 %296, label %297, label %309

; <label>:297:                                    ; preds = %289
  %298 = load i8*, i8** @line_note_exists, align 8
  %299 = load i32, i32* %16, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = icmp ne i8 %302, 0
  br i1 %303, label %304, label %305

; <label>:304:                                    ; preds = %297
  br label %309

; <label>:305:                                    ; preds = %297
  br label %306

; <label>:306:                                    ; preds = %305
  %307 = load i32, i32* %16, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %16, align 4
  br label %289

; <label>:309:                                    ; preds = %304, %289
  %310 = load i32, i32* %16, align 4
  %311 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %312 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %311, i32 0, i32 1
  %313 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %312, i64 0, i64 4
  %314 = bitcast %union.rtunion_def* %313 to i32*
  %315 = load i32, i32* %314, align 8
  %316 = icmp sge i32 %310, %315
  br i1 %316, label %317, label %318

; <label>:317:                                    ; preds = %309
  store i32 1, i32* %15, align 4
  br label %318

; <label>:318:                                    ; preds = %317, %309
  br label %328

; <label>:319:                                    ; preds = %275, %269
  br label %320

; <label>:320:                                    ; preds = %319
  br label %321

; <label>:321:                                    ; preds = %320
  br label %322

; <label>:322:                                    ; preds = %321
  %323 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %324 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %323, i32 0, i32 1
  %325 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %324, i64 0, i64 2
  %326 = bitcast %union.rtunion_def* %325 to %struct.rtx_def**
  %327 = load %struct.rtx_def*, %struct.rtx_def** %326, align 8
  store %struct.rtx_def* %327, %struct.rtx_def** %14, align 8
  br label %225

; <label>:328:                                    ; preds = %318, %268, %240, %225
  %329 = load i32, i32* %15, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %338, label %331

; <label>:331:                                    ; preds = %328
  %332 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  call void @notice_source_line(%struct.rtx_def* %332)
  %333 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %334 = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %333, i32 0, i32 9
  %335 = load void (i32, i8*)*, void (i32, i8*)** %334, align 8
  %336 = load i32, i32* @last_linenum, align 4
  %337 = load i8*, i8** @last_filename, align 8
  call void %335(i32 %336, i8* %337)
  br label %338

; <label>:338:                                    ; preds = %331, %328
  br label %339

; <label>:339:                                    ; preds = %338, %210, %209, %199, %159, %108, %105, %101, %100, %90, %80, %66
  br label %985

; <label>:340:                                    ; preds = %51
  %341 = call i32 @dwarf2out_do_frame()
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

; <label>:343:                                    ; preds = %340
  %344 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  call void @dwarf2out_frame_debug(%struct.rtx_def* %344)
  br label %345

; <label>:345:                                    ; preds = %343, %340
  br label %985

; <label>:346:                                    ; preds = %51
  %347 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %348 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %347, i32 0, i32 1
  %349 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %348, i64 0, i64 5
  %350 = bitcast %union.rtunion_def* %349 to i32*
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @max_labelno, align 4
  %353 = icmp sle i32 %351, %352
  br i1 %353, label %354, label %410

; <label>:354:                                    ; preds = %346
  %355 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %356 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %357 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %356, i32 0, i32 1
  %358 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %357, i64 0, i64 5
  %359 = bitcast %union.rtunion_def* %358 to i32*
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @min_labelno, align 4
  %362 = sub nsw i32 %360, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %355, i64 %363
  %365 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %364, i32 0, i32 0
  %366 = load i16, i16* %365, align 2
  %367 = sext i16 %366 to i32
  store i32 %367, i32* %17, align 4
  %368 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %369 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %370 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %369, i32 0, i32 1
  %371 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %370, i64 0, i64 5
  %372 = bitcast %union.rtunion_def* %371 to i32*
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @min_labelno, align 4
  %375 = sub nsw i32 %373, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %368, i64 %376
  %378 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %377, i32 0, i32 1
  %379 = load i16, i16* %378, align 2
  %380 = sext i16 %379 to i32
  store i32 %380, i32* %18, align 4
  %381 = load i32, i32* %17, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %409

; <label>:383:                                    ; preds = %354
  %384 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %385 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %384, i32 0, i32 1
  %386 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %385, i64 0, i64 2
  %387 = bitcast %union.rtunion_def* %386 to %struct.rtx_def**
  %388 = load %struct.rtx_def*, %struct.rtx_def** %387, align 8
  %389 = icmp ne %struct.rtx_def* %388, null
  br i1 %389, label %390, label %409

; <label>:390:                                    ; preds = %383
  br label %391

; <label>:391:                                    ; preds = %390
  %392 = load i32, i32* %17, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %407

; <label>:394:                                    ; preds = %391
  %395 = load i32, i32* %18, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %401

; <label>:397:                                    ; preds = %394
  %398 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %399 = load i32, i32* %17, align 4
  %400 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %398, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 %399)
  br label %406

; <label>:401:                                    ; preds = %394
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %403 = load i32, i32* %17, align 4
  %404 = load i32, i32* %18, align 4
  %405 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %402, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 %403, i32 %404)
  br label %406

; <label>:406:                                    ; preds = %401, %397
  br label %407

; <label>:407:                                    ; preds = %406, %391
  br label %408

; <label>:408:                                    ; preds = %407
  br label %409

; <label>:409:                                    ; preds = %408, %383, %354
  br label %410

; <label>:410:                                    ; preds = %409, %346
  %411 = load i32, i32* %10, align 4
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %414

; <label>:413:                                    ; preds = %410
  br label %985

; <label>:414:                                    ; preds = %410
  store i32 1, i32* @new_block, align 4
  %415 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %416 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %415, i32 0, i32 1
  %417 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %416, i64 0, i64 6
  %418 = bitcast %union.rtunion_def* %417 to i8**
  %419 = load i8*, i8** %418, align 8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %421, label %426

; <label>:421:                                    ; preds = %414
  %422 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %423 = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %422, i32 0, i32 19
  %424 = load void (%struct.rtx_def*)*, void (%struct.rtx_def*)** %423, align 8
  %425 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  call void %424(%struct.rtx_def* %425)
  br label %426

; <label>:426:                                    ; preds = %421, %414
  %427 = load i32, i32* @app_on, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %432

; <label>:429:                                    ; preds = %426
  %430 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %431 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %430)
  store i32 0, i32* @app_on, align 4
  br label %432

; <label>:432:                                    ; preds = %429, %426
  %433 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %434 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %433, i32 0, i32 1
  %435 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %434, i64 0, i64 2
  %436 = bitcast %union.rtunion_def* %435 to %struct.rtx_def**
  %437 = load %struct.rtx_def*, %struct.rtx_def** %436, align 8
  %438 = icmp ne %struct.rtx_def* %437, null
  br i1 %438, label %439, label %509

; <label>:439:                                    ; preds = %432
  %440 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %441 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %440, i32 0, i32 1
  %442 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %441, i64 0, i64 2
  %443 = bitcast %union.rtunion_def* %442 to %struct.rtx_def**
  %444 = load %struct.rtx_def*, %struct.rtx_def** %443, align 8
  %445 = bitcast %struct.rtx_def* %444 to i32*
  %446 = load i32, i32* %445, align 8
  %447 = and i32 %446, 65535
  %448 = icmp eq i32 %447, 33
  br i1 %448, label %449, label %509

; <label>:449:                                    ; preds = %439
  %450 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %451 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %450, i32 0, i32 1
  %452 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %451, i64 0, i64 2
  %453 = bitcast %union.rtunion_def* %452 to %struct.rtx_def**
  %454 = load %struct.rtx_def*, %struct.rtx_def** %453, align 8
  %455 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %454, i32 0, i32 1
  %456 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %455, i64 0, i64 3
  %457 = bitcast %union.rtunion_def* %456 to %struct.rtx_def**
  %458 = load %struct.rtx_def*, %struct.rtx_def** %457, align 8
  store %struct.rtx_def* %458, %struct.rtx_def** %19, align 8
  %459 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %460 = bitcast %struct.rtx_def* %459 to i32*
  %461 = load i32, i32* %460, align 8
  %462 = and i32 %461, 65535
  %463 = icmp eq i32 %462, 44
  br i1 %463, label %470, label %464

; <label>:464:                                    ; preds = %449
  %465 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %466 = bitcast %struct.rtx_def* %465 to i32*
  %467 = load i32, i32* %466, align 8
  %468 = and i32 %467, 65535
  %469 = icmp eq i32 %468, 45
  br i1 %469, label %470, label %508

; <label>:470:                                    ; preds = %464, %449
  %471 = load i32, i32* @target_flags, align 4
  %472 = and i32 %471, 33554432
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %477, label %474

; <label>:474:                                    ; preds = %470
  %475 = load i32, i32* @flag_pic, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %492, label %477

; <label>:477:                                    ; preds = %474, %470
  call void @readonly_data_section()
  %478 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %479 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %478, i32 0, i32 1
  %480 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %479, i64 0, i64 2
  %481 = bitcast %union.rtunion_def* %480 to %struct.rtx_def**
  %482 = load %struct.rtx_def*, %struct.rtx_def** %481, align 8
  %483 = call i32 @final_addr_vec_align(%struct.rtx_def* %482)
  store i32 %483, i32* %20, align 4
  %484 = load i32, i32* %20, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %491

; <label>:486:                                    ; preds = %477
  %487 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %488 = load i32, i32* %20, align 4
  %489 = shl i32 1, %488
  %490 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %487, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %489)
  br label %491

; <label>:491:                                    ; preds = %486, %477
  br label %494

; <label>:492:                                    ; preds = %474
  %493 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @function_section(%union.tree_node* %493)
  br label %494

; <label>:494:                                    ; preds = %492, %491
  br label %495

; <label>:495:                                    ; preds = %494
  %496 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %497 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %496, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 4)
  br label %498

; <label>:498:                                    ; preds = %495
  %499 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %500 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %501 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %500, i32 0, i32 1
  %502 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %501, i64 0, i64 5
  %503 = bitcast %union.rtunion_def* %502 to i32*
  %504 = load i32, i32* %503, align 8
  %505 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %499, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 %504)
  br label %506

; <label>:506:                                    ; preds = %498
  br label %507

; <label>:507:                                    ; preds = %506
  br label %985

; <label>:508:                                    ; preds = %464
  br label %509

; <label>:509:                                    ; preds = %508, %439, %432
  %510 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %511 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %510, i32 0, i32 1
  %512 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %511, i64 0, i64 7
  %513 = bitcast %union.rtunion_def* %512 to i8**
  %514 = load i8*, i8** %513, align 8
  %515 = icmp ne i8* %514, null
  br i1 %515, label %516, label %527

; <label>:516:                                    ; preds = %509
  br label %517

; <label>:517:                                    ; preds = %516
  %518 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %519 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %520 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %519, i32 0, i32 1
  %521 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %520, i64 0, i64 7
  %522 = bitcast %union.rtunion_def* %521 to i8**
  %523 = load i8*, i8** %522, align 8
  call void @assemble_name(%struct._IO_FILE* %518, i8* %523)
  %524 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %525 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %524)
  br label %526

; <label>:526:                                    ; preds = %517
  br label %537

; <label>:527:                                    ; preds = %509
  br label %528

; <label>:528:                                    ; preds = %527
  %529 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %530 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %531 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %530, i32 0, i32 1
  %532 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %531, i64 0, i64 5
  %533 = bitcast %union.rtunion_def* %532 to i32*
  %534 = load i32, i32* %533, align 8
  %535 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %529, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 %534)
  br label %536

; <label>:536:                                    ; preds = %528
  br label %537

; <label>:537:                                    ; preds = %536, %526
  br label %985

; <label>:538:                                    ; preds = %51
  %539 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %540 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %539, i32 0, i32 1
  %541 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %540, i64 0, i64 3
  %542 = bitcast %union.rtunion_def* %541 to %struct.rtx_def**
  %543 = load %struct.rtx_def*, %struct.rtx_def** %542, align 8
  store %struct.rtx_def* %543, %struct.rtx_def** %21, align 8
  %544 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %545 = bitcast %struct.rtx_def* %544 to i32*
  %546 = load i32, i32* %545, align 8
  %547 = and i32 %546, 65535
  %548 = icmp eq i32 %547, 48
  br i1 %548, label %555, label %549

; <label>:549:                                    ; preds = %538
  %550 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %551 = bitcast %struct.rtx_def* %550 to i32*
  %552 = load i32, i32* %551, align 8
  %553 = and i32 %552, 65535
  %554 = icmp eq i32 %553, 49
  br i1 %554, label %555, label %556

; <label>:555:                                    ; preds = %549, %538
  br label %985

; <label>:556:                                    ; preds = %549
  %557 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %558 = bitcast %struct.rtx_def* %557 to i32*
  %559 = load i32, i32* %558, align 8
  %560 = and i32 %559, 65535
  %561 = icmp eq i32 %560, 44
  br i1 %561, label %568, label %562

; <label>:562:                                    ; preds = %556
  %563 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %564 = bitcast %struct.rtx_def* %563 to i32*
  %565 = load i32, i32* %564, align 8
  %566 = and i32 %565, 65535
  %567 = icmp eq i32 %566, 45
  br i1 %567, label %568, label %662

; <label>:568:                                    ; preds = %562, %556
  %569 = load i32, i32* %10, align 4
  %570 = icmp sgt i32 %569, 0
  br i1 %570, label %571, label %572

; <label>:571:                                    ; preds = %568
  br label %985

; <label>:572:                                    ; preds = %568
  %573 = load i32, i32* @app_on, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %578

; <label>:575:                                    ; preds = %572
  %576 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %577 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %576)
  store i32 0, i32* @app_on, align 4
  br label %578

; <label>:578:                                    ; preds = %575, %572
  %579 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %580 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %579, i32 0, i32 1
  %581 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %582 = bitcast %struct.rtx_def* %581 to i32*
  %583 = load i32, i32* %582, align 8
  %584 = and i32 %583, 65535
  %585 = icmp eq i32 %584, 45
  %586 = zext i1 %585 to i32
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %580, i64 0, i64 %587
  %589 = bitcast %union.rtunion_def* %588 to %struct.rtvec_def**
  %590 = load %struct.rtvec_def*, %struct.rtvec_def** %589, align 8
  %591 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  store i32 %592, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %593

; <label>:593:                                    ; preds = %657, %578
  %594 = load i32, i32* %26, align 4
  %595 = load i32, i32* %25, align 4
  %596 = icmp slt i32 %594, %595
  br i1 %596, label %597, label %660

; <label>:597:                                    ; preds = %593
  %598 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %599 = bitcast %struct.rtx_def* %598 to i32*
  %600 = load i32, i32* %599, align 8
  %601 = and i32 %600, 65535
  %602 = icmp eq i32 %601, 44
  br i1 %602, label %603, label %623

; <label>:603:                                    ; preds = %597
  %604 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %605 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %606 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %605, i32 0, i32 1
  %607 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %606, i64 0, i64 0
  %608 = bitcast %union.rtunion_def* %607 to %struct.rtvec_def**
  %609 = load %struct.rtvec_def*, %struct.rtvec_def** %608, align 8
  %610 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %609, i32 0, i32 1
  %611 = load i32, i32* %26, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %610, i64 0, i64 %612
  %614 = load %struct.rtx_def*, %struct.rtx_def** %613, align 8
  %615 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %614, i32 0, i32 1
  %616 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %615, i64 0, i64 0
  %617 = bitcast %union.rtunion_def* %616 to %struct.rtx_def**
  %618 = load %struct.rtx_def*, %struct.rtx_def** %617, align 8
  %619 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %618, i32 0, i32 1
  %620 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %619, i64 0, i64 5
  %621 = bitcast %union.rtunion_def* %620 to i32*
  %622 = load i32, i32* %621, align 8
  call void @ix86_output_addr_vec_elt(%struct._IO_FILE* %604, i32 %622)
  br label %656

; <label>:623:                                    ; preds = %597
  %624 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %625 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %626 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %625, i32 0, i32 1
  %627 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %626, i64 0, i64 1
  %628 = bitcast %union.rtunion_def* %627 to %struct.rtvec_def**
  %629 = load %struct.rtvec_def*, %struct.rtvec_def** %628, align 8
  %630 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %629, i32 0, i32 1
  %631 = load i32, i32* %26, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %630, i64 0, i64 %632
  %634 = load %struct.rtx_def*, %struct.rtx_def** %633, align 8
  %635 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %634, i32 0, i32 1
  %636 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %635, i64 0, i64 0
  %637 = bitcast %union.rtunion_def* %636 to %struct.rtx_def**
  %638 = load %struct.rtx_def*, %struct.rtx_def** %637, align 8
  %639 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %638, i32 0, i32 1
  %640 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %639, i64 0, i64 5
  %641 = bitcast %union.rtunion_def* %640 to i32*
  %642 = load i32, i32* %641, align 8
  %643 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %644 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %643, i32 0, i32 1
  %645 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %644, i64 0, i64 0
  %646 = bitcast %union.rtunion_def* %645 to %struct.rtx_def**
  %647 = load %struct.rtx_def*, %struct.rtx_def** %646, align 8
  %648 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %647, i32 0, i32 1
  %649 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %648, i64 0, i64 0
  %650 = bitcast %union.rtunion_def* %649 to %struct.rtx_def**
  %651 = load %struct.rtx_def*, %struct.rtx_def** %650, align 8
  %652 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %651, i32 0, i32 1
  %653 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %652, i64 0, i64 5
  %654 = bitcast %union.rtunion_def* %653 to i32*
  %655 = load i32, i32* %654, align 8
  call void @ix86_output_addr_diff_elt(%struct._IO_FILE* %624, i32 %642, i32 %655)
  br label %656

; <label>:656:                                    ; preds = %623, %603
  br label %657

; <label>:657:                                    ; preds = %656
  %658 = load i32, i32* %26, align 4
  %659 = add nsw i32 %658, 1
  store i32 %659, i32* %26, align 4
  br label %593

; <label>:660:                                    ; preds = %593
  %661 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @function_section(%union.tree_node* %661)
  br label %985

; <label>:662:                                    ; preds = %562
  %663 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %664 = bitcast %struct.rtx_def* %663 to i32*
  %665 = load i32, i32* %664, align 8
  %666 = and i32 %665, 65535
  %667 = icmp eq i32 %666, 40
  br i1 %667, label %668, label %693

; <label>:668:                                    ; preds = %662
  %669 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %670 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %669, i32 0, i32 1
  %671 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %670, i64 0, i64 0
  %672 = bitcast %union.rtunion_def* %671 to i8**
  %673 = load i8*, i8** %672, align 8
  store i8* %673, i8** %27, align 8
  %674 = load i32, i32* %10, align 4
  %675 = icmp sgt i32 %674, 0
  br i1 %675, label %676, label %677

; <label>:676:                                    ; preds = %668
  br label %985

; <label>:677:                                    ; preds = %668
  %678 = load i8*, i8** %27, align 8
  %679 = getelementptr inbounds i8, i8* %678, i64 0
  %680 = load i8, i8* %679, align 1
  %681 = icmp ne i8 %680, 0
  br i1 %681, label %682, label %692

; <label>:682:                                    ; preds = %677
  %683 = load i32, i32* @app_on, align 4
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %688, label %685

; <label>:685:                                    ; preds = %682
  %686 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %687 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %686)
  store i32 1, i32* @app_on, align 4
  br label %688

; <label>:688:                                    ; preds = %685, %682
  %689 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %690 = load i8*, i8** %27, align 8
  %691 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %689, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %690)
  br label %692

; <label>:692:                                    ; preds = %688, %677
  br label %985

; <label>:693:                                    ; preds = %662
  %694 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %695 = call i32 @asm_noperands(%struct.rtx_def* %694)
  %696 = icmp sge i32 %695, 0
  br i1 %696, label %697, label %728

; <label>:697:                                    ; preds = %693
  %698 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %699 = call i32 @asm_noperands(%struct.rtx_def* %698)
  store i32 %699, i32* %28, align 4
  %700 = load i32, i32* %28, align 4
  %701 = zext i32 %700 to i64
  %702 = mul i64 %701, 8
  %703 = alloca i8, i64 %702, align 16
  %704 = bitcast i8* %703 to %struct.rtx_def**
  store %struct.rtx_def** %704, %struct.rtx_def*** %29, align 8
  %705 = load i32, i32* %10, align 4
  %706 = icmp sgt i32 %705, 0
  br i1 %706, label %707, label %708

; <label>:707:                                    ; preds = %697
  br label %985

; <label>:708:                                    ; preds = %697
  %709 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %710 = load %struct.rtx_def**, %struct.rtx_def*** %29, align 8
  %711 = call i8* @decode_asm_operands(%struct.rtx_def* %709, %struct.rtx_def** %710, %struct.rtx_def*** null, i8** null, i32* null)
  store i8* %711, i8** %30, align 8
  %712 = load i32, i32* %28, align 4
  store i32 %712, i32* @insn_noperands, align 4
  %713 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  store %struct.rtx_def* %713, %struct.rtx_def** @this_is_asm_operands, align 8
  %714 = load i8*, i8** %30, align 8
  %715 = getelementptr inbounds i8, i8* %714, i64 0
  %716 = load i8, i8* %715, align 1
  %717 = icmp ne i8 %716, 0
  br i1 %717, label %718, label %727

; <label>:718:                                    ; preds = %708
  %719 = load i32, i32* @app_on, align 4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %724, label %721

; <label>:721:                                    ; preds = %718
  %722 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %723 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %722)
  store i32 1, i32* @app_on, align 4
  br label %724

; <label>:724:                                    ; preds = %721, %718
  %725 = load i8*, i8** %30, align 8
  %726 = load %struct.rtx_def**, %struct.rtx_def*** %29, align 8
  call void @output_asm_insn(i8* %725, %struct.rtx_def** %726)
  br label %727

; <label>:727:                                    ; preds = %724, %708
  store %struct.rtx_def* null, %struct.rtx_def** @this_is_asm_operands, align 8
  br label %985

; <label>:728:                                    ; preds = %693
  %729 = load i32, i32* %10, align 4
  %730 = icmp sle i32 %729, 0
  br i1 %730, label %731, label %737

; <label>:731:                                    ; preds = %728
  %732 = load i32, i32* @app_on, align 4
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %737

; <label>:734:                                    ; preds = %731
  %735 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %736 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %735)
  store i32 0, i32* @app_on, align 4
  br label %737

; <label>:737:                                    ; preds = %734, %731, %728
  %738 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %739 = bitcast %struct.rtx_def* %738 to i32*
  %740 = load i32, i32* %739, align 8
  %741 = and i32 %740, 65535
  %742 = icmp eq i32 %741, 24
  br i1 %742, label %743, label %827

; <label>:743:                                    ; preds = %737
  %744 = load i32, i32* %10, align 4
  %745 = icmp sgt i32 %744, 0
  br i1 %745, label %746, label %747

; <label>:746:                                    ; preds = %743
  br label %985

; <label>:747:                                    ; preds = %743
  %748 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  store %struct.rtx_def* %748, %struct.rtx_def** @final_sequence, align 8
  %749 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %750 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %749, i32 0, i32 1
  %751 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %750, i64 0, i64 0
  %752 = bitcast %union.rtunion_def* %751 to %struct.rtvec_def**
  %753 = load %struct.rtvec_def*, %struct.rtvec_def** %752, align 8
  %754 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %753, i32 0, i32 1
  %755 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %754, i64 0, i64 0
  %756 = load %struct.rtx_def*, %struct.rtx_def** %755, align 8
  %757 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %758 = load i32, i32* %10, align 4
  %759 = call %struct.rtx_def* @final_scan_insn(%struct.rtx_def* %756, %struct._IO_FILE* %757, i32 0, i32 %758, i32 1)
  store %struct.rtx_def* %759, %struct.rtx_def** %32, align 8
  %760 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %761 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %762 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %761, i32 0, i32 1
  %763 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %762, i64 0, i64 0
  %764 = bitcast %union.rtunion_def* %763 to %struct.rtvec_def**
  %765 = load %struct.rtvec_def*, %struct.rtvec_def** %764, align 8
  %766 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %765, i32 0, i32 1
  %767 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %766, i64 0, i64 1
  %768 = load %struct.rtx_def*, %struct.rtx_def** %767, align 8
  %769 = icmp ne %struct.rtx_def* %760, %768
  br i1 %769, label %770, label %772

; <label>:770:                                    ; preds = %747
  store %struct.rtx_def* null, %struct.rtx_def** @final_sequence, align 8
  %771 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  store %struct.rtx_def* %771, %struct.rtx_def** %6, align 8
  br label %991

; <label>:772:                                    ; preds = %747
  store i32 1, i32* %31, align 4
  br label %773

; <label>:773:                                    ; preds = %809, %772
  %774 = load i32, i32* %31, align 4
  %775 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %776 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %775, i32 0, i32 1
  %777 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %776, i64 0, i64 0
  %778 = bitcast %union.rtunion_def* %777 to %struct.rtvec_def**
  %779 = load %struct.rtvec_def*, %struct.rtvec_def** %778, align 8
  %780 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %779, i32 0, i32 0
  %781 = load i32, i32* %780, align 8
  %782 = icmp slt i32 %774, %781
  br i1 %782, label %783, label %812

; <label>:783:                                    ; preds = %773
  %784 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %785 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %784, i32 0, i32 1
  %786 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %785, i64 0, i64 0
  %787 = bitcast %union.rtunion_def* %786 to %struct.rtvec_def**
  %788 = load %struct.rtvec_def*, %struct.rtvec_def** %787, align 8
  %789 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %788, i32 0, i32 1
  %790 = load i32, i32* %31, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %789, i64 0, i64 %791
  %793 = load %struct.rtx_def*, %struct.rtx_def** %792, align 8
  store %struct.rtx_def* %793, %struct.rtx_def** %33, align 8
  %794 = load %struct.rtx_def*, %struct.rtx_def** %33, align 8
  %795 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %794, i32 0, i32 1
  %796 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %795, i64 0, i64 2
  %797 = bitcast %union.rtunion_def* %796 to %struct.rtx_def**
  %798 = load %struct.rtx_def*, %struct.rtx_def** %797, align 8
  store %struct.rtx_def* %798, %struct.rtx_def** %34, align 8
  br label %799

; <label>:799:                                    ; preds = %804, %783
  %800 = load %struct.rtx_def*, %struct.rtx_def** %33, align 8
  %801 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %802 = load i32, i32* %10, align 4
  %803 = call %struct.rtx_def* @final_scan_insn(%struct.rtx_def* %800, %struct._IO_FILE* %801, i32 0, i32 %802, i32 1)
  store %struct.rtx_def* %803, %struct.rtx_def** %33, align 8
  br label %804

; <label>:804:                                    ; preds = %799
  %805 = load %struct.rtx_def*, %struct.rtx_def** %33, align 8
  %806 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %807 = icmp ne %struct.rtx_def* %805, %806
  br i1 %807, label %799, label %808

; <label>:808:                                    ; preds = %804
  br label %809

; <label>:809:                                    ; preds = %808
  %810 = load i32, i32* %31, align 4
  %811 = add nsw i32 %810, 1
  store i32 %811, i32* %31, align 4
  br label %773

; <label>:812:                                    ; preds = %773
  store %struct.rtx_def* null, %struct.rtx_def** @final_sequence, align 8
  %813 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %814 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %813, i32 0, i32 1
  %815 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %814, i64 0, i64 0
  %816 = bitcast %union.rtunion_def* %815 to %struct.rtvec_def**
  %817 = load %struct.rtvec_def*, %struct.rtvec_def** %816, align 8
  %818 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %817, i32 0, i32 1
  %819 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %818, i64 0, i64 0
  %820 = load %struct.rtx_def*, %struct.rtx_def** %819, align 8
  %821 = bitcast %struct.rtx_def* %820 to i32*
  %822 = load i32, i32* %821, align 8
  %823 = and i32 %822, 65535
  %824 = icmp eq i32 %823, 34
  br i1 %824, label %825, label %826

; <label>:825:                                    ; preds = %812
  br label %826

; <label>:826:                                    ; preds = %825, %812
  br label %985

; <label>:827:                                    ; preds = %737
  %828 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %829 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %828, i32 0, i32 1
  %830 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %829, i64 0, i64 3
  %831 = bitcast %union.rtunion_def* %830 to %struct.rtx_def**
  %832 = load %struct.rtx_def*, %struct.rtx_def** %831, align 8
  store %struct.rtx_def* %832, %struct.rtx_def** %21, align 8
  %833 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %834 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %833, i32 0, i32 1
  %835 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %834, i64 0, i64 4
  %836 = bitcast %union.rtunion_def* %835 to i32*
  %837 = load i32, i32* %836, align 8
  %838 = icmp sge i32 %837, 0
  br i1 %838, label %839, label %845

; <label>:839:                                    ; preds = %827
  %840 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %841 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %840, i32 0, i32 1
  %842 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %841, i64 0, i64 4
  %843 = bitcast %union.rtunion_def* %842 to i32*
  %844 = load i32, i32* %843, align 8
  br label %848

; <label>:845:                                    ; preds = %827
  %846 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %847 = call i32 @recog_memoized_1(%struct.rtx_def* %846)
  br label %848

; <label>:848:                                    ; preds = %845, %839
  %849 = phi i32 [ %844, %839 ], [ %847, %845 ]
  store i32 %849, i32* %22, align 4
  %850 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  call void @cleanup_subreg_operands(%struct.rtx_def* %850)
  %851 = load i32, i32* @flag_dump_rtl_in_asm, align 4
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %853, label %857

; <label>:853:                                    ; preds = %848
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** @print_rtx_head, align 8
  %854 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %855 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %856 = call i32 @print_rtl_single(%struct._IO_FILE* %854, %struct.rtx_def* %855)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8** @print_rtx_head, align 8
  br label %857

; <label>:857:                                    ; preds = %853, %848
  %858 = call i32 @constrain_operands_cached(i32 1)
  %859 = icmp ne i32 %858, 0
  br i1 %859, label %862, label %860

; <label>:860:                                    ; preds = %857
  %861 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  call void @_fatal_insn_not_found(%struct.rtx_def* %861, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2551, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #7
  unreachable

; <label>:862:                                    ; preds = %857
  %863 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  store %struct.rtx_def* %863, %struct.rtx_def** @debug_insn, align 8
  store %struct.rtx_def* %863, %struct.rtx_def** @current_output_insn, align 8
  %864 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %865 = bitcast %struct.rtx_def* %864 to i32*
  %866 = load i32, i32* %865, align 8
  %867 = and i32 %866, 65535
  %868 = icmp eq i32 %867, 34
  br i1 %868, label %869, label %874

; <label>:869:                                    ; preds = %862
  %870 = call i32 @dwarf2out_do_frame()
  %871 = icmp ne i32 %870, 0
  br i1 %871, label %872, label %874

; <label>:872:                                    ; preds = %869
  %873 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  call void @dwarf2out_frame_debug(%struct.rtx_def* %873)
  br label %874

; <label>:874:                                    ; preds = %872, %869, %862
  %875 = load i32, i32* %22, align 4
  %876 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %877 = call i8* @get_insn_template(i32 %875, %struct.rtx_def* %876)
  store i8* %877, i8** %23, align 8
  %878 = load i8*, i8** %23, align 8
  %879 = icmp eq i8* %878, null
  br i1 %879, label %880, label %910

; <label>:880:                                    ; preds = %874
  %881 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %882 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %881)
  %883 = load %struct.rtx_def*, %struct.rtx_def** @last_ignored_compare, align 8
  %884 = icmp ne %struct.rtx_def* %882, %883
  br i1 %884, label %885, label %886

; <label>:885:                                    ; preds = %880
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2596, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #7
  unreachable

; <label>:886:                                    ; preds = %880
  store i32 0, i32* @new_block, align 4
  %887 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  store %struct.rtx_def* %887, %struct.rtx_def** %35, align 8
  br label %888

; <label>:888:                                    ; preds = %902, %886
  %889 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %890 = load %struct.rtx_def*, %struct.rtx_def** @last_ignored_compare, align 8
  %891 = icmp ne %struct.rtx_def* %889, %890
  br i1 %891, label %892, label %908

; <label>:892:                                    ; preds = %888
  %893 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %894 = bitcast %struct.rtx_def* %893 to i32*
  %895 = load i32, i32* %894, align 8
  %896 = and i32 %895, 65535
  %897 = icmp eq i32 %896, 37
  br i1 %897, label %898, label %901

; <label>:898:                                    ; preds = %892
  %899 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %900 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %899)
  br label %901

; <label>:901:                                    ; preds = %898, %892
  br label %902

; <label>:902:                                    ; preds = %901
  %903 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %904 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %903, i32 0, i32 1
  %905 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %904, i64 0, i64 1
  %906 = bitcast %union.rtunion_def* %905 to %struct.rtx_def**
  %907 = load %struct.rtx_def*, %struct.rtx_def** %906, align 8
  store %struct.rtx_def* %907, %struct.rtx_def** %35, align 8
  br label %888

; <label>:908:                                    ; preds = %888
  %909 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  store %struct.rtx_def* %909, %struct.rtx_def** %6, align 8
  br label %991

; <label>:910:                                    ; preds = %874
  %911 = load i8*, i8** %23, align 8
  %912 = getelementptr inbounds i8, i8* %911, i64 0
  %913 = load i8, i8* %912, align 1
  %914 = sext i8 %913 to i32
  %915 = icmp eq i32 %914, 35
  br i1 %915, label %916, label %940

; <label>:916:                                    ; preds = %910
  %917 = load i8*, i8** %23, align 8
  %918 = getelementptr inbounds i8, i8* %917, i64 1
  %919 = load i8, i8* %918, align 1
  %920 = sext i8 %919 to i32
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %922, label %940

; <label>:922:                                    ; preds = %916
  %923 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %924 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %925 = call %struct.rtx_def* @try_split(%struct.rtx_def* %923, %struct.rtx_def* %924, i32 0)
  store %struct.rtx_def* %925, %struct.rtx_def** %36, align 8
  %926 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %927 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %928 = icmp eq %struct.rtx_def* %926, %927
  br i1 %928, label %929, label %939

; <label>:929:                                    ; preds = %922
  %930 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %931 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %930, i32 0, i32 1
  %932 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %931, i64 0, i64 3
  %933 = bitcast %union.rtunion_def* %932 to %struct.rtx_def**
  %934 = load %struct.rtx_def*, %struct.rtx_def** %933, align 8
  %935 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %936 = icmp eq %struct.rtx_def* %934, %935
  br i1 %936, label %937, label %939

; <label>:937:                                    ; preds = %929
  %938 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  call void @_fatal_insn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), %struct.rtx_def* %938, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2622, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #7
  unreachable

; <label>:939:                                    ; preds = %929, %922
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2628, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #7
  unreachable

; <label>:940:                                    ; preds = %916, %910
  %941 = load i32, i32* %10, align 4
  %942 = icmp sgt i32 %941, 0
  br i1 %942, label %943, label %944

; <label>:943:                                    ; preds = %940
  br label %985

; <label>:944:                                    ; preds = %940
  %945 = load i8*, i8** %23, align 8
  call void @output_asm_insn(i8* %945, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i32 0))
  %946 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %947 = bitcast %struct.rtx_def* %946 to i32*
  %948 = load i32, i32* %947, align 8
  %949 = and i32 %948, 65535
  %950 = icmp eq i32 %949, 32
  br i1 %950, label %951, label %956

; <label>:951:                                    ; preds = %944
  %952 = call i32 @dwarf2out_do_frame()
  %953 = icmp ne i32 %952, 0
  br i1 %953, label %954, label %956

; <label>:954:                                    ; preds = %951
  %955 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  call void @dwarf2out_frame_debug(%struct.rtx_def* %955)
  br label %956

; <label>:956:                                    ; preds = %954, %951, %944
  %957 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %958 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %957, i32 30, %struct.rtx_def* null)
  store %struct.rtx_def* %958, %struct.rtx_def** %24, align 8
  %959 = load %struct.rtx_def*, %struct.rtx_def** %24, align 8
  %960 = icmp ne %struct.rtx_def* %959, null
  br i1 %960, label %961, label %984

; <label>:961:                                    ; preds = %956
  %962 = load %struct.rtx_def*, %struct.rtx_def** %24, align 8
  %963 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %962, i32 0, i32 1
  %964 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %963, i64 0, i64 0
  %965 = bitcast %union.rtunion_def* %964 to %struct.rtx_def**
  %966 = load %struct.rtx_def*, %struct.rtx_def** %965, align 8
  %967 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %966, i32 0, i32 1
  %968 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %967, i64 0, i64 0
  %969 = bitcast %union.rtunion_def* %968 to %struct.rtx_def**
  %970 = load %struct.rtx_def*, %struct.rtx_def** %969, align 8
  %971 = load %struct.rtx_def*, %struct.rtx_def** %24, align 8
  %972 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %971, i32 0, i32 1
  %973 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %972, i64 0, i64 0
  %974 = bitcast %union.rtunion_def* %973 to %struct.rtx_def**
  %975 = load %struct.rtx_def*, %struct.rtx_def** %974, align 8
  %976 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %975, i32 0, i32 1
  %977 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %976, i64 0, i64 1
  %978 = bitcast %union.rtunion_def* %977 to %struct.rtx_def**
  %979 = load %struct.rtx_def*, %struct.rtx_def** %978, align 8
  %980 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %979, i32 0, i32 1
  %981 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %980, i64 0, i64 0
  %982 = bitcast %union.rtunion_def* %981 to i64*
  %983 = load i64, i64* %982, align 8
  call void @assemble_vtable_entry(%struct.rtx_def* %970, i64 %983)
  br label %984

; <label>:984:                                    ; preds = %961, %956
  store %struct.rtx_def* null, %struct.rtx_def** @debug_insn, align 8
  store %struct.rtx_def* null, %struct.rtx_def** @current_output_insn, align 8
  br label %985

; <label>:985:                                    ; preds = %984, %943, %826, %746, %727, %707, %692, %676, %660, %571, %555, %537, %507, %413, %345, %339, %59
  %986 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %987 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %986, i32 0, i32 1
  %988 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %987, i64 0, i64 2
  %989 = bitcast %union.rtunion_def* %988 to %struct.rtx_def**
  %990 = load %struct.rtx_def*, %struct.rtx_def** %989, align 8
  store %struct.rtx_def* %990, %struct.rtx_def** %6, align 8
  br label %991

; <label>:991:                                    ; preds = %985, %908, %770, %45
  %992 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  ret %struct.rtx_def* %992
}

; Function Attrs: noinline nounwind uwtable
define i8* @get_insn_template(i32, %struct.rtx_def*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.rtx_def* %1, %struct.rtx_def** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %14, i32 0, i32 7
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %36 [
    i32 1, label %18
    i32 2, label %20
    i32 3, label %27
  ]

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %3, align 8
  br label %37

; <label>:20:                                     ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i8**
  %23 = load i32, i32* @which_alternative, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  br label %37

; <label>:27:                                     ; preds = %2
  %28 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %29 = icmp eq %struct.rtx_def* %28, null
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1802, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.get_insn_template, i32 0, i32 0)) #7
  unreachable

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to i8* (%struct.rtx_def**, %struct.rtx_def*)*
  %34 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %35 = call i8* %33(%struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i32 0), %struct.rtx_def* %34)
  store i8* %35, i8** %3, align 8
  br label %37

; <label>:36:                                     ; preds = %2
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1806, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.get_insn_template, i32 0, i32 0)) #7
  unreachable

; <label>:37:                                     ; preds = %31, %20, %18
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

; Function Attrs: noinline nounwind uwtable
define internal void @profile_after_prologue(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %4 = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 56
  %5 = bitcast i24* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = lshr i32 %6, 14
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @profile_function(%struct._IO_FILE* %11)
  br label %12

; <label>:12:                                     ; preds = %10, %1
  ret void
}

declare void @readonly_data_section() #1

declare void @function_section(%union.tree_node*) #1

declare void @ix86_output_addr_vec_elt(%struct._IO_FILE*, i32) #1

declare void @ix86_output_addr_diff_elt(%struct._IO_FILE*, i32, i32) #1

declare i8* @decode_asm_operands(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def***, i8**, i32*) #1

; Function Attrs: noinline nounwind uwtable
define void @output_asm_insn(i8*, %struct.rtx_def**) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rtx_def**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [30 x i32], align 16
  %9 = alloca [30 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.rtx_def** %1, %struct.rtx_def*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  br label %460

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 30, i32 16, i1 false)
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** %5, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %22 = call i32 @putc(i32 9, %struct._IO_FILE* %21)
  br label %23

; <label>:23:                                     ; preds = %445, %18
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %446

; <label>:29:                                     ; preds = %23
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %441 [
    i32 10, label %31
    i32 123, label %47
    i32 124, label %102
    i32 125, label %125
    i32 37, label %133
  ]

; <label>:31:                                     ; preds = %29
  %32 = load i32, i32* @flag_verbose_asm, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %31
  %35 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %36 = getelementptr inbounds [30 x i32], [30 x i32]* %8, i32 0, i32 0
  %37 = load i32, i32* %10, align 4
  call void @output_asm_operand_names(%struct.rtx_def** %35, i32* %36, i32 %37)
  br label %38

; <label>:38:                                     ; preds = %34, %31
  %39 = load i32, i32* @flag_print_asm_name, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call void @output_asm_name()
  br label %42

; <label>:42:                                     ; preds = %41, %38
  store i32 0, i32* %10, align 4
  %43 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %43, i8 0, i64 30, i32 16, i1 false)
  %44 = load i32, i32* %6, align 4
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %46 = call i32 @putc(i32 %44, %struct._IO_FILE* %45)
  br label %445

; <label>:47:                                     ; preds = %29
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %47
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i32 0, i32 0))
  br label %52

; <label>:51:                                     ; preds = %47
  store i32 1, i32* %7, align 4
  br label %52

; <label>:52:                                     ; preds = %51, %50
  store i32 0, i32* %11, align 4
  br label %53

; <label>:53:                                     ; preds = %92, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @dialect_number, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %95

; <label>:57:                                     ; preds = %53
  br label %58

; <label>:58:                                     ; preds = %76, %57
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

; <label>:63:                                     ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 125
  br i1 %67, label %68, label %74

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 124
  br label %74

; <label>:74:                                     ; preds = %68, %63, %58
  %75 = phi i1 [ false, %63 ], [ false, %58 ], [ %73, %68 ]
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %74
  br label %58

; <label>:77:                                     ; preds = %74
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 125
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %77
  br label %95

; <label>:83:                                     ; preds = %77
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 124
  br i1 %87, label %88, label %91

; <label>:88:                                     ; preds = %83
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %5, align 8
  br label %91

; <label>:91:                                     ; preds = %88, %83
  br label %92

; <label>:92:                                     ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %53

; <label>:95:                                     ; preds = %82, %53
  %96 = load i8*, i8** %5, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

; <label>:100:                                    ; preds = %95
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  br label %101

; <label>:101:                                    ; preds = %100, %95
  br label %445

; <label>:102:                                    ; preds = %29
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

; <label>:105:                                    ; preds = %102
  br label %106

; <label>:106:                                    ; preds = %113, %105
  %107 = load i8*, i8** %5, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %106
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  br label %119

; <label>:112:                                    ; preds = %106
  br label %113

; <label>:113:                                    ; preds = %112
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %5, align 8
  %116 = load i8, i8* %114, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 125
  br i1 %118, label %106, label %119

; <label>:119:                                    ; preds = %113, %111
  store i32 0, i32* %7, align 4
  br label %124

; <label>:120:                                    ; preds = %102
  %121 = load i32, i32* %6, align 4
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %123 = call i32 @putc(i32 %121, %struct._IO_FILE* %122)
  br label %124

; <label>:124:                                    ; preds = %120, %119
  br label %445

; <label>:125:                                    ; preds = %29
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

; <label>:128:                                    ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %131 = call i32 @putc(i32 %129, %struct._IO_FILE* %130)
  br label %132

; <label>:132:                                    ; preds = %128, %125
  store i32 0, i32* %7, align 4
  br label %445

; <label>:133:                                    ; preds = %29
  %134 = load i8*, i8** %5, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 37
  br i1 %137, label %138, label %144

; <label>:138:                                    ; preds = %133
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %143 = call i32 @putc(i32 %141, %struct._IO_FILE* %142)
  br label %440

; <label>:144:                                    ; preds = %133
  %145 = load i8*, i8** %5, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 61
  br i1 %148, label %149, label %155

; <label>:149:                                    ; preds = %144
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %5, align 8
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %153 = load i32, i32* @insn_counter, align 4
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 %153)
  br label %439

; <label>:155:                                    ; preds = %144
  %156 = load i8*, i8** %5, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = and i32 %158, 255
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %160
  %162 = load i16, i16* %161, align 2
  %163 = zext i16 %162 to i32
  %164 = and i32 %163, 136
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %359

; <label>:166:                                    ; preds = %155
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %5, align 8
  %169 = load i8, i8* %167, align 1
  %170 = sext i8 %169 to i32
  store i32 %170, i32* %12, align 4
  %171 = load i8*, i8** %5, align 8
  %172 = call i32 @atoi(i8* %171) #8
  store i32 %172, i32* %6, align 4
  %173 = load i8*, i8** %5, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = and i32 %175, 255
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %177
  %179 = load i16, i16* %178, align 2
  %180 = zext i16 %179 to i32
  %181 = and i32 %180, 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

; <label>:183:                                    ; preds = %166
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0))
  br label %328

; <label>:184:                                    ; preds = %166
  %185 = load %struct.rtx_def*, %struct.rtx_def** @this_is_asm_operands, align 8
  %186 = icmp ne %struct.rtx_def* %185, null
  br i1 %186, label %187, label %195

; <label>:187:                                    ; preds = %184
  %188 = load i32, i32* %6, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %194, label %190

; <label>:190:                                    ; preds = %187
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @insn_noperands, align 4
  %193 = icmp uge i32 %191, %192
  br i1 %193, label %194, label %195

; <label>:194:                                    ; preds = %190, %187
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0))
  br label %327

; <label>:195:                                    ; preds = %190, %184
  %196 = load i32, i32* %12, align 4
  %197 = icmp eq i32 %196, 108
  br i1 %197, label %198, label %204

; <label>:198:                                    ; preds = %195
  %199 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %199, i64 %201
  %203 = load %struct.rtx_def*, %struct.rtx_def** %202, align 8
  call void @output_asm_label(%struct.rtx_def* %203)
  br label %326

; <label>:204:                                    ; preds = %195
  %205 = load i32, i32* %12, align 4
  %206 = icmp eq i32 %205, 97
  br i1 %206, label %207, label %213

; <label>:207:                                    ; preds = %204
  %208 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %208, i64 %210
  %212 = load %struct.rtx_def*, %struct.rtx_def** %211, align 8
  call void @output_address(%struct.rtx_def* %212)
  br label %325

; <label>:213:                                    ; preds = %204
  %214 = load i32, i32* %12, align 4
  %215 = icmp eq i32 %214, 99
  br i1 %215, label %216, label %280

; <label>:216:                                    ; preds = %213
  %217 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %217, i64 %219
  %221 = load %struct.rtx_def*, %struct.rtx_def** %220, align 8
  %222 = bitcast %struct.rtx_def* %221 to i32*
  %223 = load i32, i32* %222, align 8
  %224 = and i32 %223, 65535
  %225 = icmp eq i32 %224, 67
  br i1 %225, label %266, label %226

; <label>:226:                                    ; preds = %216
  %227 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %227, i64 %229
  %231 = load %struct.rtx_def*, %struct.rtx_def** %230, align 8
  %232 = bitcast %struct.rtx_def* %231 to i32*
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, 65535
  %235 = icmp eq i32 %234, 68
  br i1 %235, label %266, label %236

; <label>:236:                                    ; preds = %226
  %237 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %237, i64 %239
  %241 = load %struct.rtx_def*, %struct.rtx_def** %240, align 8
  %242 = bitcast %struct.rtx_def* %241 to i32*
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, 65535
  %245 = icmp eq i32 %244, 54
  br i1 %245, label %266, label %246

; <label>:246:                                    ; preds = %236
  %247 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %247, i64 %249
  %251 = load %struct.rtx_def*, %struct.rtx_def** %250, align 8
  %252 = bitcast %struct.rtx_def* %251 to i32*
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, 65535
  %255 = icmp eq i32 %254, 58
  br i1 %255, label %266, label %256

; <label>:256:                                    ; preds = %246
  %257 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %257, i64 %259
  %261 = load %struct.rtx_def*, %struct.rtx_def** %260, align 8
  %262 = bitcast %struct.rtx_def* %261 to i32*
  %263 = load i32, i32* %262, align 8
  %264 = and i32 %263, 65535
  %265 = icmp eq i32 %264, 55
  br i1 %265, label %266, label %273

; <label>:266:                                    ; preds = %256, %246, %236, %226, %216
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %268 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %268, i64 %270
  %272 = load %struct.rtx_def*, %struct.rtx_def** %271, align 8
  call void @output_addr_const(%struct._IO_FILE* %267, %struct.rtx_def* %272)
  br label %279

; <label>:273:                                    ; preds = %256
  %274 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %274, i64 %276
  %278 = load %struct.rtx_def*, %struct.rtx_def** %277, align 8
  call void @output_operand(%struct.rtx_def* %278, i32 99)
  br label %279

; <label>:279:                                    ; preds = %273, %266
  br label %324

; <label>:280:                                    ; preds = %213
  %281 = load i32, i32* %12, align 4
  %282 = icmp eq i32 %281, 110
  br i1 %282, label %283, label %316

; <label>:283:                                    ; preds = %280
  %284 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %284, i64 %286
  %288 = load %struct.rtx_def*, %struct.rtx_def** %287, align 8
  %289 = bitcast %struct.rtx_def* %288 to i32*
  %290 = load i32, i32* %289, align 8
  %291 = and i32 %290, 65535
  %292 = icmp eq i32 %291, 54
  br i1 %292, label %293, label %306

; <label>:293:                                    ; preds = %283
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %295 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %296 = load i32, i32* %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %295, i64 %297
  %299 = load %struct.rtx_def*, %struct.rtx_def** %298, align 8
  %300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %299, i32 0, i32 1
  %301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %300, i64 0, i64 0
  %302 = bitcast %union.rtunion_def* %301 to i64*
  %303 = load i64, i64* %302, align 8
  %304 = sub nsw i64 0, %303
  %305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %294, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i64 %304)
  br label %315

; <label>:306:                                    ; preds = %283
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %308 = call i32 @putc(i32 45, %struct._IO_FILE* %307)
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %310 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %310, i64 %312
  %314 = load %struct.rtx_def*, %struct.rtx_def** %313, align 8
  call void @output_addr_const(%struct._IO_FILE* %309, %struct.rtx_def* %314)
  br label %315

; <label>:315:                                    ; preds = %306, %293
  br label %323

; <label>:316:                                    ; preds = %280
  %317 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %317, i64 %319
  %321 = load %struct.rtx_def*, %struct.rtx_def** %320, align 8
  %322 = load i32, i32* %12, align 4
  call void @output_operand(%struct.rtx_def* %321, i32 %322)
  br label %323

; <label>:323:                                    ; preds = %316, %315
  br label %324

; <label>:324:                                    ; preds = %323, %279
  br label %325

; <label>:325:                                    ; preds = %324, %207
  br label %326

; <label>:326:                                    ; preds = %325, %198
  br label %327

; <label>:327:                                    ; preds = %326, %194
  br label %328

; <label>:328:                                    ; preds = %327, %183
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 %330
  %332 = load i8, i8* %331, align 1
  %333 = icmp ne i8 %332, 0
  br i1 %333, label %340, label %334

; <label>:334:                                    ; preds = %328
  %335 = load i32, i32* %6, align 4
  %336 = load i32, i32* %10, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %10, align 4
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds [30 x i32], [30 x i32]* %8, i64 0, i64 %338
  store i32 %335, i32* %339, align 4
  br label %340

; <label>:340:                                    ; preds = %334, %328
  %341 = load i32, i32* %6, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 %342
  store i8 1, i8* %343, align 1
  br label %344

; <label>:344:                                    ; preds = %355, %340
  %345 = load i8*, i8** %5, align 8
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  store i32 %347, i32* %6, align 4
  %348 = and i32 %347, 255
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %349
  %351 = load i16, i16* %350, align 2
  %352 = zext i16 %351 to i32
  %353 = and i32 %352, 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

; <label>:355:                                    ; preds = %344
  %356 = load i8*, i8** %5, align 8
  %357 = getelementptr inbounds i8, i8* %356, i32 1
  store i8* %357, i8** %5, align 8
  br label %344

; <label>:358:                                    ; preds = %344
  br label %438

; <label>:359:                                    ; preds = %155
  %360 = load i8*, i8** %5, align 8
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = and i32 %362, 255
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %364
  %366 = load i16, i16* %365, align 2
  %367 = zext i16 %366 to i32
  %368 = and i32 %367, 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %420

; <label>:370:                                    ; preds = %359
  %371 = load i8*, i8** %5, align 8
  %372 = call i32 @atoi(i8* %371) #8
  store i32 %372, i32* %6, align 4
  %373 = load %struct.rtx_def*, %struct.rtx_def** @this_is_asm_operands, align 8
  %374 = icmp ne %struct.rtx_def* %373, null
  br i1 %374, label %375, label %383

; <label>:375:                                    ; preds = %370
  %376 = load i32, i32* %6, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %382, label %378

; <label>:378:                                    ; preds = %375
  %379 = load i32, i32* %6, align 4
  %380 = load i32, i32* @insn_noperands, align 4
  %381 = icmp uge i32 %379, %380
  br i1 %381, label %382, label %383

; <label>:382:                                    ; preds = %378, %375
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0))
  br label %389

; <label>:383:                                    ; preds = %378, %370
  %384 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %385 = load i32, i32* %6, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %384, i64 %386
  %388 = load %struct.rtx_def*, %struct.rtx_def** %387, align 8
  call void @output_operand(%struct.rtx_def* %388, i32 0)
  br label %389

; <label>:389:                                    ; preds = %383, %382
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 %391
  %393 = load i8, i8* %392, align 1
  %394 = icmp ne i8 %393, 0
  br i1 %394, label %401, label %395

; <label>:395:                                    ; preds = %389
  %396 = load i32, i32* %6, align 4
  %397 = load i32, i32* %10, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %10, align 4
  %399 = sext i32 %397 to i64
  %400 = getelementptr inbounds [30 x i32], [30 x i32]* %8, i64 0, i64 %399
  store i32 %396, i32* %400, align 4
  br label %401

; <label>:401:                                    ; preds = %395, %389
  %402 = load i32, i32* %6, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 %403
  store i8 1, i8* %404, align 1
  br label %405

; <label>:405:                                    ; preds = %416, %401
  %406 = load i8*, i8** %5, align 8
  %407 = load i8, i8* %406, align 1
  %408 = sext i8 %407 to i32
  store i32 %408, i32* %6, align 4
  %409 = and i32 %408, 255
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %410
  %412 = load i16, i16* %411, align 2
  %413 = zext i16 %412 to i32
  %414 = and i32 %413, 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

; <label>:416:                                    ; preds = %405
  %417 = load i8*, i8** %5, align 8
  %418 = getelementptr inbounds i8, i8* %417, i32 1
  store i8* %418, i8** %5, align 8
  br label %405

; <label>:419:                                    ; preds = %405
  br label %437

; <label>:420:                                    ; preds = %359
  %421 = load i8*, i8** %5, align 8
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  %424 = icmp eq i32 %423, 42
  br i1 %424, label %430, label %425

; <label>:425:                                    ; preds = %420
  %426 = load i8*, i8** %5, align 8
  %427 = load i8, i8* %426, align 1
  %428 = zext i8 %427 to i32
  %429 = icmp eq i32 %428, 43
  br i1 %429, label %430, label %435

; <label>:430:                                    ; preds = %425, %420
  %431 = load i8*, i8** %5, align 8
  %432 = getelementptr inbounds i8, i8* %431, i32 1
  store i8* %432, i8** %5, align 8
  %433 = load i8, i8* %431, align 1
  %434 = sext i8 %433 to i32
  call void @output_operand(%struct.rtx_def* null, i32 %434)
  br label %436

; <label>:435:                                    ; preds = %425
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0))
  br label %436

; <label>:436:                                    ; preds = %435, %430
  br label %437

; <label>:437:                                    ; preds = %436, %419
  br label %438

; <label>:438:                                    ; preds = %437, %358
  br label %439

; <label>:439:                                    ; preds = %438, %149
  br label %440

; <label>:440:                                    ; preds = %439, %138
  br label %445

; <label>:441:                                    ; preds = %29
  %442 = load i32, i32* %6, align 4
  %443 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %444 = call i32 @putc(i32 %442, %struct._IO_FILE* %443)
  br label %445

; <label>:445:                                    ; preds = %441, %440, %132, %124, %101, %42
  br label %23

; <label>:446:                                    ; preds = %23
  %447 = load i32, i32* @flag_verbose_asm, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %453

; <label>:449:                                    ; preds = %446
  %450 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %451 = getelementptr inbounds [30 x i32], [30 x i32]* %8, i32 0, i32 0
  %452 = load i32, i32* %10, align 4
  call void @output_asm_operand_names(%struct.rtx_def** %450, i32* %451, i32 %452)
  br label %453

; <label>:453:                                    ; preds = %449, %446
  %454 = load i32, i32* @flag_print_asm_name, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %457

; <label>:456:                                    ; preds = %453
  call void @output_asm_name()
  br label %457

; <label>:457:                                    ; preds = %456, %453
  %458 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %459 = call i32 @putc(i32 10, %struct._IO_FILE* %458)
  br label %460

; <label>:460:                                    ; preds = %457, %17
  ret void
}

declare i32 @recog_memoized_1(%struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define void @cleanup_subreg_operands(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  call void @extract_insn_cached(%struct.rtx_def* %4)
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %67, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 4
  %8 = sext i8 %7 to i32
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %70

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i64 0, i64 %12
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %13, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 63
  br i1 %19, label %20, label %29

; <label>:20:                                     ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i64 0, i64 %22
  %24 = load %struct.rtx_def**, %struct.rtx_def*** %23, align 8
  %25 = call %struct.rtx_def* @alter_subreg(%struct.rtx_def** %24)
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %27
  store %struct.rtx_def* %25, %struct.rtx_def** %28, align 8
  br label %66

; <label>:29:                                     ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %31
  %33 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 75
  br i1 %37, label %56, label %38

; <label>:38:                                     ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %40
  %42 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 78
  br i1 %46, label %56, label %47

; <label>:47:                                     ; preds = %38
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %49
  %51 = load %struct.rtx_def*, %struct.rtx_def** %50, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 66
  br i1 %55, label %56, label %65

; <label>:56:                                     ; preds = %47, %38, %29
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i64 0, i64 %58
  %60 = load %struct.rtx_def**, %struct.rtx_def*** %59, align 8
  %61 = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %60)
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %63
  store %struct.rtx_def* %61, %struct.rtx_def** %64, align 8
  br label %65

; <label>:65:                                     ; preds = %56, %47
  br label %66

; <label>:66:                                     ; preds = %65, %20
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %5

; <label>:70:                                     ; preds = %5
  store i32 0, i32* %3, align 4
  br label %71

; <label>:71:                                     ; preds = %138, %70
  %72 = load i32, i32* %3, align 4
  %73 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  %74 = sext i8 %73 to i32
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %141

; <label>:76:                                     ; preds = %71
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i64 0, i64 %78
  %80 = load %struct.rtx_def**, %struct.rtx_def*** %79, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %80, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 63
  br i1 %85, label %86, label %96

; <label>:86:                                     ; preds = %76
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i64 0, i64 %88
  %90 = load %struct.rtx_def**, %struct.rtx_def*** %89, align 8
  %91 = call %struct.rtx_def* @alter_subreg(%struct.rtx_def** %90)
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i64 0, i64 %93
  %95 = load %struct.rtx_def**, %struct.rtx_def*** %94, align 8
  store %struct.rtx_def* %91, %struct.rtx_def** %95, align 8
  br label %137

; <label>:96:                                     ; preds = %76
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i64 0, i64 %98
  %100 = load %struct.rtx_def**, %struct.rtx_def*** %99, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %100, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %104, 75
  br i1 %105, label %126, label %106

; <label>:106:                                    ; preds = %96
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i64 0, i64 %108
  %110 = load %struct.rtx_def**, %struct.rtx_def*** %109, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %110, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 78
  br i1 %115, label %126, label %116

; <label>:116:                                    ; preds = %106
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i64 0, i64 %118
  %120 = load %struct.rtx_def**, %struct.rtx_def*** %119, align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %120, align 8
  %122 = bitcast %struct.rtx_def* %121 to i32*
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 66
  br i1 %125, label %126, label %136

; <label>:126:                                    ; preds = %116, %106, %96
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i64 0, i64 %128
  %130 = load %struct.rtx_def**, %struct.rtx_def*** %129, align 8
  %131 = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %130)
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i64 0, i64 %133
  %135 = load %struct.rtx_def**, %struct.rtx_def*** %134, align 8
  store %struct.rtx_def* %131, %struct.rtx_def** %135, align 8
  br label %136

; <label>:136:                                    ; preds = %126, %116
  br label %137

; <label>:137:                                    ; preds = %136, %86
  br label %138

; <label>:138:                                    ; preds = %137
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %3, align 4
  br label %71

; <label>:141:                                    ; preds = %71
  ret void
}

declare i32 @print_rtl_single(%struct._IO_FILE*, %struct.rtx_def*) #1

declare i32 @constrain_operands_cached(i32) #1

; Function Attrs: noreturn
declare void @_fatal_insn_not_found(%struct.rtx_def*, i8*, i32, i8*) #2

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @try_split(%struct.rtx_def*, %struct.rtx_def*, i32) #1

; Function Attrs: noreturn
declare void @_fatal_insn(i8*, %struct.rtx_def*, i8*, i32, i8*) #2

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare void @assemble_vtable_entry(%struct.rtx_def*, i64) #1

declare void @extract_insn_cached(%struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define %struct.rtx_def* @alter_subreg(%struct.rtx_def**) #0 {
  %2 = alloca %struct.rtx_def**, align 8
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca i32, align 4
  store %struct.rtx_def** %0, %struct.rtx_def*** %2, align 8
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %2, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %3, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %10, i64 0, i64 0
  %12 = bitcast %union.rtunion_def* %11 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %4, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 66
  br i1 %18, label %19, label %34

; <label>:19:                                     ; preds = %1
  %20 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %27, i64 0, i64 1
  %29 = bitcast %union.rtunion_def* %28 to i32*
  %30 = load i32, i32* %29, align 8
  %31 = zext i32 %30 to i64
  %32 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %20, i32 %25, i64 %31, i32 1, i32 1)
  %33 = load %struct.rtx_def**, %struct.rtx_def*** %2, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %33, align 8
  br label %92

; <label>:34:                                     ; preds = %1
  %35 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %43 = load i32, i32* %42, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %47, i64 0, i64 1
  %49 = bitcast %union.rtunion_def* %48 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.rtx_def* @simplify_subreg(i32 %39, %struct.rtx_def* %40, i32 %45, i32 %50)
  store %struct.rtx_def* %51, %struct.rtx_def** %5, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %53 = icmp ne %struct.rtx_def* %52, null
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %34
  %55 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %56 = load %struct.rtx_def**, %struct.rtx_def*** %2, align 8
  store %struct.rtx_def* %55, %struct.rtx_def** %56, align 8
  br label %91

; <label>:57:                                     ; preds = %34
  %58 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 61
  br i1 %62, label %63, label %89

; <label>:63:                                     ; preds = %57
  %64 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %65 = call i32 @subreg_hard_regno(%struct.rtx_def* %64, i32 1)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, -65536
  %70 = or i32 %69, 61
  store i32 %70, i32* %67, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %73, i64 0, i64 0
  %75 = bitcast %union.rtunion_def* %74 to i32*
  store i32 %71, i32* %75, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %77, i64 0, i64 1
  %79 = bitcast %union.rtunion_def* %78 to i32*
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %82, i64 0, i64 1
  %84 = bitcast %union.rtunion_def* %83 to i32*
  store i32 %80, i32* %84, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, -536870913
  store i32 %88, i32* %86, align 8
  br label %90

; <label>:89:                                     ; preds = %57
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2761, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.alter_subreg, i32 0, i32 0)) #7
  unreachable

; <label>:90:                                     ; preds = %63
  br label %91

; <label>:91:                                     ; preds = %90, %54
  br label %92

; <label>:92:                                     ; preds = %91, %19
  %93 = load %struct.rtx_def**, %struct.rtx_def*** %2, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %93, align 8
  ret %struct.rtx_def* %94
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def**) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca %struct.rtx_def**, align 8
  %4 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %0, %struct.rtx_def*** %3, align 8
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %3, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %4, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 65535
  switch i32 %10, label %43 [
    i32 75, label %11
    i32 78, label %11
    i32 66, label %30
    i32 63, label %40
  ]

; <label>:11:                                     ; preds = %1, %1
  %12 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %13, i64 0, i64 0
  %15 = bitcast %union.rtunion_def* %14 to %struct.rtx_def**
  %16 = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %15)
  %17 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %18, i64 0, i64 0
  %20 = bitcast %union.rtunion_def* %19 to %struct.rtx_def**
  store %struct.rtx_def* %16, %struct.rtx_def** %20, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %22, i64 0, i64 1
  %24 = bitcast %union.rtunion_def* %23 to %struct.rtx_def**
  %25 = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %24)
  %26 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %27, i64 0, i64 1
  %29 = bitcast %union.rtunion_def* %28 to %struct.rtx_def**
  store %struct.rtx_def* %25, %struct.rtx_def** %29, align 8
  br label %44

; <label>:30:                                     ; preds = %1
  %31 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %32, i64 0, i64 0
  %34 = bitcast %union.rtunion_def* %33 to %struct.rtx_def**
  %35 = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %34)
  %36 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %37, i64 0, i64 0
  %39 = bitcast %union.rtunion_def* %38 to %struct.rtx_def**
  store %struct.rtx_def* %35, %struct.rtx_def** %39, align 8
  br label %44

; <label>:40:                                     ; preds = %1
  %41 = load %struct.rtx_def**, %struct.rtx_def*** %3, align 8
  %42 = call %struct.rtx_def* @alter_subreg(%struct.rtx_def** %41)
  store %struct.rtx_def* %42, %struct.rtx_def** %2, align 8
  br label %47

; <label>:43:                                     ; preds = %1
  br label %44

; <label>:44:                                     ; preds = %43, %30, %11
  %45 = load %struct.rtx_def**, %struct.rtx_def*** %3, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %45, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %2, align 8
  br label %47

; <label>:47:                                     ; preds = %44, %40
  %48 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  ret %struct.rtx_def* %48
}

declare %struct.rtx_def* @adjust_address_1(%struct.rtx_def*, i32, i64, i32, i32) #1

declare %struct.rtx_def* @simplify_subreg(i32, %struct.rtx_def*, i32, i32) #1

declare i32 @subreg_hard_regno(%struct.rtx_def*, i32) #1

; Function Attrs: noinline nounwind uwtable
define void @output_operand_lossage(i8*, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load %struct.rtx_def*, %struct.rtx_def** @this_is_asm_operands, align 8
  %10 = icmp ne %struct.rtx_def* %9, null
  %11 = select i1 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 (i8**, i8*, ...) @asprintf(i8** %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* %12, i8* %13) #6
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0
  %17 = call i32 @vasprintf(i8** %4, i8* %15, %struct.__va_list_tag* %16) #6
  %18 = load %struct.rtx_def*, %struct.rtx_def** @this_is_asm_operands, align 8
  %19 = icmp ne %struct.rtx_def* %18, null
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %1
  %21 = load %struct.rtx_def*, %struct.rtx_def** @this_is_asm_operands, align 8
  %22 = load i8*, i8** %4, align 8
  call void (%struct.rtx_def*, i8*, ...) @error_for_asm(%struct.rtx_def* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %22)
  br label %25

; <label>:23:                                     ; preds = %1
  %24 = load i8*, i8** %4, align 8
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %24) #7
  unreachable

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %3, align 8
  call void @free(i8* %26) #6
  %27 = load i8*, i8** %4, align 8
  call void @free(i8* %27) #6
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0
  %29 = bitcast %struct.__va_list_tag* %28 to i8*
  call void @llvm.va_end(i8* %29)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #3

declare void @error_for_asm(%struct.rtx_def*, i8*, ...) #1

; Function Attrs: noreturn
declare void @internal_error(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i32 @putc(i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @output_asm_operand_names(%struct.rtx_def**, i32*, i32) #0 {
  %4 = alloca %struct.rtx_def**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.tree_node*, align 8
  store %struct.rtx_def** %0, %struct.rtx_def*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

; <label>:11:                                     ; preds = %43, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %46

; <label>:15:                                     ; preds = %11
  %16 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %16, i64 %22
  %24 = load %struct.rtx_def*, %struct.rtx_def** %23, align 8
  %25 = call %union.tree_node* @get_mem_expr_from_op(%struct.rtx_def* %24, i32* %9)
  store %union.tree_node* %25, %union.tree_node** %10, align 8
  %26 = load %union.tree_node*, %union.tree_node** %10, align 8
  %27 = icmp ne %union.tree_node* %26, null
  br i1 %27, label %28, label %42

; <label>:28:                                     ; preds = %15
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %31, i32 44, i32 9
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0)
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 %32, i8* %35, i8* %38)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %41 = load %union.tree_node*, %union.tree_node** %10, align 8
  call void @print_mem_expr(%struct._IO_FILE* %40, %union.tree_node* %41)
  store i32 1, i32* %7, align 4
  br label %42

; <label>:42:                                     ; preds = %28, %15
  br label %43

; <label>:43:                                     ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %11

; <label>:46:                                     ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @output_asm_name() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** @debug_insn, align 8
  %3 = icmp ne %struct.rtx_def* %2, null
  br i1 %3, label %4, label %39

; <label>:4:                                      ; preds = %0
  %5 = load %struct.rtx_def*, %struct.rtx_def** @debug_insn, align 8
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %6, i64 0, i64 4
  %8 = bitcast %union.rtunion_def* %7 to i32*
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %1, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** @debug_insn, align 8
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %12, i64 0, i64 0
  %14 = bitcast %union.rtunion_def* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 %15, i8* %20)
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %24, i32 0, i32 6
  %26 = load i8, i8* %25, align 2
  %27 = sext i8 %26 to i32
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %31 = load i32, i32* @which_alternative, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 %32)
  br label %34

; <label>:34:                                     ; preds = %29, %4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** @debug_insn, align 8
  %37 = call i32 @get_attr_length(%struct.rtx_def* %36)
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i32 %37)
  store %struct.rtx_def* null, %struct.rtx_def** @debug_insn, align 8
  br label %39

; <label>:39:                                     ; preds = %34, %0
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind uwtable
define void @output_asm_label(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca [256 x i8], align 16
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 67
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %1
  %10 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %11, i64 0, i64 0
  %13 = bitcast %union.rtunion_def* %12 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %2, align 8
  br label %15

; <label>:15:                                     ; preds = %9, %1
  %16 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 36
  br i1 %20, label %34, label %21

; <label>:21:                                     ; preds = %15
  %22 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %44

; <label>:27:                                     ; preds = %21
  %28 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %29, i64 0, i64 4
  %31 = bitcast %union.rtunion_def* %30 to i32*
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, -88
  br i1 %33, label %34, label %44

; <label>:34:                                     ; preds = %27, %15
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0
  %37 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %38, i64 0, i64 5
  %40 = bitcast %union.rtunion_def* %39 to i32*
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 %41) #6
  br label %43

; <label>:43:                                     ; preds = %35
  br label %45

; <label>:44:                                     ; preds = %27, %21
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0))
  br label %45

; <label>:45:                                     ; preds = %44, %43
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %46, i8* %47)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @output_address(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  %3 = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  call void @print_operand_address(%struct._IO_FILE* %4, %struct.rtx_def* %5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @output_addr_const(%struct._IO_FILE*, %struct.rtx_def*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca [256 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %4, align 8
  br label %6

; <label>:6:                                      ; preds = %191, %2
  %7 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 65535
  switch i32 %10, label %269 [
    i32 59, label %11
    i32 68, label %14
    i32 67, label %21
    i32 36, label %27
    i32 54, label %39
    i32 58, label %47
    i32 55, label %54
    i32 75, label %108
    i32 76, label %183
    i32 121, label %262
    i32 120, label %262
    i32 63, label %262
  ]

; <label>:11:                                     ; preds = %6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = call i32 @putc(i32 46, %struct._IO_FILE* %12)
  br label %270

; <label>:14:                                     ; preds = %6
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %17, i64 0, i64 0
  %19 = bitcast %union.rtunion_def* %18 to i8**
  %20 = load i8*, i8** %19, align 8
  call void @assemble_name(%struct._IO_FILE* %15, i8* %20)
  br label %270

; <label>:21:                                     ; preds = %6
  %22 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %23, i64 0, i64 0
  %25 = bitcast %union.rtunion_def* %24 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %25, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %4, align 8
  br label %27

; <label>:27:                                     ; preds = %21, %6
  br label %28

; <label>:28:                                     ; preds = %27
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0
  %30 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %31, i64 0, i64 5
  %33 = bitcast %union.rtunion_def* %32 to i32*
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 %34) #6
  br label %36

; <label>:36:                                     ; preds = %28
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %37, i8* %38)
  br label %270

; <label>:39:                                     ; preds = %6
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %42, i64 0, i64 0
  %44 = bitcast %union.rtunion_def* %43 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i64 %45)
  br label %270

; <label>:47:                                     ; preds = %6
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %50, i64 0, i64 0
  %52 = bitcast %union.rtunion_def* %51 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %52, align 8
  call void @output_addr_const(%struct._IO_FILE* %48, %struct.rtx_def* %53)
  br label %270

; <label>:54:                                     ; preds = %6
  %55 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %106

; <label>:61:                                     ; preds = %54
  %62 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %63, i64 0, i64 2
  %65 = bitcast %union.rtunion_def* %64 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

; <label>:68:                                     ; preds = %61
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %71, i64 0, i64 2
  %73 = bitcast %union.rtunion_def* %72 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %76, i64 0, i64 1
  %78 = bitcast %union.rtunion_def* %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i64 %74, i64 %79)
  br label %105

; <label>:81:                                     ; preds = %61
  %82 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %83, i64 0, i64 1
  %85 = bitcast %union.rtunion_def* %84 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %96

; <label>:88:                                     ; preds = %81
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %91, i64 0, i64 1
  %93 = bitcast %union.rtunion_def* %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i64 %94)
  br label %104

; <label>:96:                                     ; preds = %81
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %99, i64 0, i64 1
  %101 = bitcast %union.rtunion_def* %100 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i64 %102)
  br label %104

; <label>:104:                                    ; preds = %96, %88
  br label %105

; <label>:105:                                    ; preds = %104, %68
  br label %107

; <label>:106:                                    ; preds = %54
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0))
  br label %107

; <label>:107:                                    ; preds = %106, %105
  br label %270

; <label>:108:                                    ; preds = %6
  %109 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %110, i64 0, i64 0
  %112 = bitcast %union.rtunion_def* %111 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %112, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 54
  br i1 %117, label %118, label %145

; <label>:118:                                    ; preds = %108
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %121, i64 0, i64 1
  %123 = bitcast %union.rtunion_def* %122 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %123, align 8
  call void @output_addr_const(%struct._IO_FILE* %119, %struct.rtx_def* %124)
  %125 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %126, i64 0, i64 0
  %128 = bitcast %union.rtunion_def* %127 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %128, align 8
  %130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %130, i64 0, i64 0
  %132 = bitcast %union.rtunion_def* %131 to i64*
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %133, 0
  br i1 %134, label %135, label %138

; <label>:135:                                    ; preds = %118
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  br label %138

; <label>:138:                                    ; preds = %135, %118
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %140 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %141, i64 0, i64 0
  %143 = bitcast %union.rtunion_def* %142 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %143, align 8
  call void @output_addr_const(%struct._IO_FILE* %139, %struct.rtx_def* %144)
  br label %182

; <label>:145:                                    ; preds = %108
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %147 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %148, i64 0, i64 0
  %150 = bitcast %union.rtunion_def* %149 to %struct.rtx_def**
  %151 = load %struct.rtx_def*, %struct.rtx_def** %150, align 8
  call void @output_addr_const(%struct._IO_FILE* %146, %struct.rtx_def* %151)
  %152 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %152, i32 0, i32 1
  %154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %153, i64 0, i64 1
  %155 = bitcast %union.rtunion_def* %154 to %struct.rtx_def**
  %156 = load %struct.rtx_def*, %struct.rtx_def** %155, align 8
  %157 = bitcast %struct.rtx_def* %156 to i32*
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, 65535
  %160 = icmp ne i32 %159, 54
  br i1 %160, label %172, label %161

; <label>:161:                                    ; preds = %145
  %162 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %163, i64 0, i64 1
  %165 = bitcast %union.rtunion_def* %164 to %struct.rtx_def**
  %166 = load %struct.rtx_def*, %struct.rtx_def** %165, align 8
  %167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %166, i32 0, i32 1
  %168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %167, i64 0, i64 0
  %169 = bitcast %union.rtunion_def* %168 to i64*
  %170 = load i64, i64* %169, align 8
  %171 = icmp sge i64 %170, 0
  br i1 %171, label %172, label %175

; <label>:172:                                    ; preds = %161, %145
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  br label %175

; <label>:175:                                    ; preds = %172, %161
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %177 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %177, i32 0, i32 1
  %179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %178, i64 0, i64 1
  %180 = bitcast %union.rtunion_def* %179 to %struct.rtx_def**
  %181 = load %struct.rtx_def*, %struct.rtx_def** %180, align 8
  call void @output_addr_const(%struct._IO_FILE* %176, %struct.rtx_def* %181)
  br label %182

; <label>:182:                                    ; preds = %175, %138
  br label %270

; <label>:183:                                    ; preds = %6
  %184 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %185 = call %struct.rtx_def* @simplify_subtraction(%struct.rtx_def* %184)
  store %struct.rtx_def* %185, %struct.rtx_def** %4, align 8
  %186 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %187 = bitcast %struct.rtx_def* %186 to i32*
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, 65535
  %190 = icmp ne i32 %189, 76
  br i1 %190, label %191, label %192

; <label>:191:                                    ; preds = %183
  br label %6

; <label>:192:                                    ; preds = %183
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %194 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %195, i64 0, i64 0
  %197 = bitcast %union.rtunion_def* %196 to %struct.rtx_def**
  %198 = load %struct.rtx_def*, %struct.rtx_def** %197, align 8
  call void @output_addr_const(%struct._IO_FILE* %193, %struct.rtx_def* %198)
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %200 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0))
  %201 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %202, i64 0, i64 1
  %204 = bitcast %union.rtunion_def* %203 to %struct.rtx_def**
  %205 = load %struct.rtx_def*, %struct.rtx_def** %204, align 8
  %206 = bitcast %struct.rtx_def* %205 to i32*
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, 65535
  %209 = icmp eq i32 %208, 54
  br i1 %209, label %210, label %221

; <label>:210:                                    ; preds = %192
  %211 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %212, i64 0, i64 1
  %214 = bitcast %union.rtunion_def* %213 to %struct.rtx_def**
  %215 = load %struct.rtx_def*, %struct.rtx_def** %214, align 8
  %216 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %215, i32 0, i32 1
  %217 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %216, i64 0, i64 0
  %218 = bitcast %union.rtunion_def* %217 to i64*
  %219 = load i64, i64* %218, align 8
  %220 = icmp sge i64 %219, 0
  br i1 %220, label %241, label %221

; <label>:221:                                    ; preds = %210, %192
  %222 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %222, i32 0, i32 1
  %224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %223, i64 0, i64 1
  %225 = bitcast %union.rtunion_def* %224 to %struct.rtx_def**
  %226 = load %struct.rtx_def*, %struct.rtx_def** %225, align 8
  %227 = bitcast %struct.rtx_def* %226 to i32*
  %228 = load i32, i32* %227, align 8
  %229 = and i32 %228, 65535
  %230 = icmp eq i32 %229, 59
  br i1 %230, label %241, label %231

; <label>:231:                                    ; preds = %221
  %232 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %232, i32 0, i32 1
  %234 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %233, i64 0, i64 1
  %235 = bitcast %union.rtunion_def* %234 to %struct.rtx_def**
  %236 = load %struct.rtx_def*, %struct.rtx_def** %235, align 8
  %237 = bitcast %struct.rtx_def* %236 to i32*
  %238 = load i32, i32* %237, align 8
  %239 = and i32 %238, 65535
  %240 = icmp eq i32 %239, 68
  br i1 %240, label %241, label %248

; <label>:241:                                    ; preds = %231, %221, %210
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %243 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %243, i32 0, i32 1
  %245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %244, i64 0, i64 1
  %246 = bitcast %union.rtunion_def* %245 to %struct.rtx_def**
  %247 = load %struct.rtx_def*, %struct.rtx_def** %246, align 8
  call void @output_addr_const(%struct._IO_FILE* %242, %struct.rtx_def* %247)
  br label %261

; <label>:248:                                    ; preds = %231
  %249 = load i8*, i8** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 0), align 8
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %251 = call i32 @fputs(i8* %249, %struct._IO_FILE* %250)
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %253 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %254 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %253, i32 0, i32 1
  %255 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %254, i64 0, i64 1
  %256 = bitcast %union.rtunion_def* %255 to %struct.rtx_def**
  %257 = load %struct.rtx_def*, %struct.rtx_def** %256, align 8
  call void @output_addr_const(%struct._IO_FILE* %252, %struct.rtx_def* %257)
  %258 = load i8*, i8** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 1), align 8
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %260 = call i32 @fputs(i8* %258, %struct._IO_FILE* %259)
  br label %261

; <label>:261:                                    ; preds = %248, %241
  br label %270

; <label>:262:                                    ; preds = %6, %6, %6
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %264 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %265 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %264, i32 0, i32 1
  %266 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %265, i64 0, i64 0
  %267 = bitcast %union.rtunion_def* %266 to %struct.rtx_def**
  %268 = load %struct.rtx_def*, %struct.rtx_def** %267, align 8
  call void @output_addr_const(%struct._IO_FILE* %263, %struct.rtx_def* %268)
  br label %270

; <label>:269:                                    ; preds = %6
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0))
  br label %270

; <label>:270:                                    ; preds = %269, %262, %261, %182, %107, %47, %39, %36, %14, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @output_operand(%struct.rtx_def*, i32) #0 {
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %6 = icmp ne %struct.rtx_def* %5, null
  br i1 %6, label %7, label %15

; <label>:7:                                      ; preds = %2
  %8 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 63
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %7
  %14 = call %struct.rtx_def* @alter_subreg(%struct.rtx_def** %3)
  store %struct.rtx_def* %14, %struct.rtx_def** %3, align 8
  br label %15

; <label>:15:                                     ; preds = %13, %7, %2
  %16 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %17 = icmp ne %struct.rtx_def* %16, null
  br i1 %17, label %18, label %32

; <label>:18:                                     ; preds = %15
  %19 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 61
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %18
  %25 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %26, i64 0, i64 0
  %28 = bitcast %union.rtunion_def* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = icmp uge i32 %29, 53
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %24
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 3349, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.output_operand, i32 0, i32 0)) #7
  unreachable

; <label>:32:                                     ; preds = %24, %18, %15
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %35 = load i32, i32* %4, align 4
  call void @print_operand(%struct._IO_FILE* %33, %struct.rtx_def* %34, i32 %35)
  ret void
}

declare void @print_operand_address(%struct._IO_FILE*, %struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_subtraction(%struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define void @asm_fprintf(%struct._IO_FILE*, i8*, ...) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  store i8 37, i8* %12, align 1
  br label %13

; <label>:13:                                     ; preds = %261, %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  %16 = load i8, i8* %14, align 1
  store i8 %16, i8* %7, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %262

; <label>:18:                                     ; preds = %13
  %19 = load i8, i8* %7, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %256 [
    i32 123, label %21
    i32 124, label %54
    i32 125, label %70
    i32 37, label %71
  ]

; <label>:21:                                     ; preds = %18
  store i32 0, i32* %9, align 4
  br label %22

; <label>:22:                                     ; preds = %50, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @dialect_number, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

; <label>:26:                                     ; preds = %22
  br label %27

; <label>:27:                                     ; preds = %40, %26
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 124
  br label %38

; <label>:38:                                     ; preds = %32, %27
  %39 = phi i1 [ false, %27 ], [ %37, %32 ]
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %38
  br label %27

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 124
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  br label %49

; <label>:49:                                     ; preds = %46, %41
  br label %50

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %22

; <label>:53:                                     ; preds = %22
  br label %261

; <label>:54:                                     ; preds = %18
  br label %55

; <label>:55:                                     ; preds = %68, %54
  %56 = load i8*, i8** %4, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %4, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 125
  br label %66

; <label>:66:                                     ; preds = %60, %55
  %67 = phi i1 [ false, %55 ], [ %65, %60 ]
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %66
  br label %55

; <label>:69:                                     ; preds = %66
  br label %261

; <label>:70:                                     ; preds = %18
  br label %261

; <label>:71:                                     ; preds = %18
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  %74 = load i8, i8* %72, align 1
  store i8 %74, i8* %7, align 1
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 1
  store i8* %75, i8** %6, align 8
  br label %76

; <label>:76:                                     ; preds = %92, %71
  %77 = load i8, i8* %7, align 1
  %78 = sext i8 %77 to i32
  %79 = and i32 %78, 255
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %80
  %82 = load i16, i16* %81, align 2
  %83 = zext i16 %82 to i32
  %84 = and i32 %83, 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

; <label>:86:                                     ; preds = %76
  %87 = load i8, i8* %7, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 46
  br label %90

; <label>:90:                                     ; preds = %86, %76
  %91 = phi i1 [ true, %76 ], [ %89, %86 ]
  br i1 %91, label %92, label %99

; <label>:92:                                     ; preds = %90
  %93 = load i8, i8* %7, align 1
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  store i8 %93, i8* %94, align 1
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %4, align 8
  %98 = load i8, i8* %96, align 1
  store i8 %98, i8* %7, align 1
  br label %76

; <label>:99:                                     ; preds = %90
  %100 = load i8, i8* %7, align 1
  %101 = sext i8 %100 to i32
  switch i32 %101, label %254 [
    i32 37, label %102
    i32 100, label %105
    i32 105, label %105
    i32 117, label %105
    i32 120, label %105
    i32 112, label %105
    i32 88, label %105
    i32 111, label %105
    i32 119, label %131
    i32 108, label %161
    i32 101, label %192
    i32 102, label %192
    i32 103, label %192
    i32 115, label %218
    i32 79, label %244
    i32 82, label %245
    i32 73, label %246
    i32 76, label %247
    i32 85, label %250
  ]

; <label>:102:                                    ; preds = %99
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0))
  br label %255

; <label>:105:                                    ; preds = %99, %99, %99, %99, %99, %99, %99
  %106 = load i8, i8* %7, align 1
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %6, align 8
  store i8 %106, i8* %107, align 1
  %109 = load i8*, i8** %6, align 8
  store i8 0, i8* %109, align 1
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %111 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  %112 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0
  %113 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 16
  %115 = icmp ule i32 %114, 40
  br i1 %115, label %116, label %122

; <label>:116:                                    ; preds = %105
  %117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 3
  %118 = load i8*, i8** %117, align 16
  %119 = getelementptr i8, i8* %118, i32 %114
  %120 = bitcast i8* %119 to i32*
  %121 = add i32 %114, 8
  store i32 %121, i32* %113, align 16
  br label %127

; <label>:122:                                    ; preds = %105
  %123 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = bitcast i8* %124 to i32*
  %126 = getelementptr i8, i8* %124, i32 8
  store i8* %126, i8** %123, align 8
  br label %127

; <label>:127:                                    ; preds = %122, %116
  %128 = phi i32* [ %120, %116 ], [ %125, %122 ]
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* %111, i32 %129)
  br label %255

; <label>:131:                                    ; preds = %99
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %6, align 8
  store i8 108, i8* %132, align 1
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %4, align 8
  %136 = load i8, i8* %134, align 1
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %6, align 8
  store i8 %136, i8* %137, align 1
  %139 = load i8*, i8** %6, align 8
  store i8 0, i8* %139, align 1
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %141 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  %142 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0
  %143 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 16
  %145 = icmp ule i32 %144, 40
  br i1 %145, label %146, label %152

; <label>:146:                                    ; preds = %131
  %147 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %142, i32 0, i32 3
  %148 = load i8*, i8** %147, align 16
  %149 = getelementptr i8, i8* %148, i32 %144
  %150 = bitcast i8* %149 to i64*
  %151 = add i32 %144, 8
  store i32 %151, i32* %143, align 16
  br label %157

; <label>:152:                                    ; preds = %131
  %153 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %142, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = bitcast i8* %154 to i64*
  %156 = getelementptr i8, i8* %154, i32 8
  store i8* %156, i8** %153, align 8
  br label %157

; <label>:157:                                    ; preds = %152, %146
  %158 = phi i64* [ %150, %146 ], [ %155, %152 ]
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* %141, i64 %159)
  br label %255

; <label>:161:                                    ; preds = %99
  %162 = load i8, i8* %7, align 1
  %163 = load i8*, i8** %6, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %6, align 8
  store i8 %162, i8* %163, align 1
  %165 = load i8*, i8** %4, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %4, align 8
  %167 = load i8, i8* %165, align 1
  %168 = load i8*, i8** %6, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %6, align 8
  store i8 %167, i8* %168, align 1
  %170 = load i8*, i8** %6, align 8
  store i8 0, i8* %170, align 1
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %172 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  %173 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0
  %174 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 16
  %176 = icmp ule i32 %175, 40
  br i1 %176, label %177, label %183

; <label>:177:                                    ; preds = %161
  %178 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %173, i32 0, i32 3
  %179 = load i8*, i8** %178, align 16
  %180 = getelementptr i8, i8* %179, i32 %175
  %181 = bitcast i8* %180 to i64*
  %182 = add i32 %175, 8
  store i32 %182, i32* %174, align 16
  br label %188

; <label>:183:                                    ; preds = %161
  %184 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %173, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = bitcast i8* %185 to i64*
  %187 = getelementptr i8, i8* %185, i32 8
  store i8* %187, i8** %184, align 8
  br label %188

; <label>:188:                                    ; preds = %183, %177
  %189 = phi i64* [ %181, %177 ], [ %186, %183 ]
  %190 = load i64, i64* %189, align 8
  %191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* %172, i64 %190)
  br label %255

; <label>:192:                                    ; preds = %99, %99, %99
  %193 = load i8, i8* %7, align 1
  %194 = load i8*, i8** %6, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %6, align 8
  store i8 %193, i8* %194, align 1
  %196 = load i8*, i8** %6, align 8
  store i8 0, i8* %196, align 1
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %198 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  %199 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0
  %200 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp ule i32 %201, 160
  br i1 %202, label %203, label %209

; <label>:203:                                    ; preds = %192
  %204 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %199, i32 0, i32 3
  %205 = load i8*, i8** %204, align 16
  %206 = getelementptr i8, i8* %205, i32 %201
  %207 = bitcast i8* %206 to double*
  %208 = add i32 %201, 16
  store i32 %208, i32* %200, align 4
  br label %214

; <label>:209:                                    ; preds = %192
  %210 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %199, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = bitcast i8* %211 to double*
  %213 = getelementptr i8, i8* %211, i32 8
  store i8* %213, i8** %210, align 8
  br label %214

; <label>:214:                                    ; preds = %209, %203
  %215 = phi double* [ %207, %203 ], [ %212, %209 ]
  %216 = load double, double* %215, align 8
  %217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* %198, double %216)
  br label %255

; <label>:218:                                    ; preds = %99
  %219 = load i8, i8* %7, align 1
  %220 = load i8*, i8** %6, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %6, align 8
  store i8 %219, i8* %220, align 1
  %222 = load i8*, i8** %6, align 8
  store i8 0, i8* %222, align 1
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %224 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i32 0, i32 0
  %225 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0
  %226 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 16
  %228 = icmp ule i32 %227, 40
  br i1 %228, label %229, label %235

; <label>:229:                                    ; preds = %218
  %230 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %225, i32 0, i32 3
  %231 = load i8*, i8** %230, align 16
  %232 = getelementptr i8, i8* %231, i32 %227
  %233 = bitcast i8* %232 to i8**
  %234 = add i32 %227, 8
  store i32 %234, i32* %226, align 16
  br label %240

; <label>:235:                                    ; preds = %218
  %236 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %225, i32 0, i32 2
  %237 = load i8*, i8** %236, align 8
  %238 = bitcast i8* %237 to i8**
  %239 = getelementptr i8, i8* %237, i32 8
  store i8* %239, i8** %236, align 8
  br label %240

; <label>:240:                                    ; preds = %235, %229
  %241 = phi i8** [ %233, %229 ], [ %238, %235 ]
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* %224, i8* %242)
  br label %255

; <label>:244:                                    ; preds = %99
  br label %255

; <label>:245:                                    ; preds = %99
  br label %255

; <label>:246:                                    ; preds = %99
  br label %255

; <label>:247:                                    ; preds = %99
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  br label %255

; <label>:250:                                    ; preds = %99
  %251 = load i8*, i8** @user_label_prefix, align 8
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %253 = call i32 @fputs(i8* %251, %struct._IO_FILE* %252)
  br label %255

; <label>:254:                                    ; preds = %99
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 3648, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.asm_fprintf, i32 0, i32 0)) #7
  unreachable

; <label>:255:                                    ; preds = %250, %247, %246, %245, %244, %240, %214, %188, %157, %127, %102
  br label %261

; <label>:256:                                    ; preds = %18
  %257 = load i8, i8* %7, align 1
  %258 = sext i8 %257 to i32
  %259 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %260 = call i32 @fputc(i32 %258, %struct._IO_FILE* %259)
  br label %261

; <label>:261:                                    ; preds = %256, %255, %70, %69, %53
  br label %13

; <label>:262:                                    ; preds = %13
  %263 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0
  %264 = bitcast %struct.__va_list_tag* %263 to i8*
  call void @llvm.va_end(i8* %264)
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define void @split_double(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def**) #0 {
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct.rtx_def**, align 8
  %6 = alloca %struct.rtx_def**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtx_def*, align 8
  %13 = alloca %struct.realvaluetype, align 8
  %14 = alloca [2 x i64], align 16
  %15 = alloca %union.real_extract, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %4, align 8
  store %struct.rtx_def** %1, %struct.rtx_def*** %5, align 8
  store %struct.rtx_def** %2, %struct.rtx_def*** %6, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 54
  br i1 %20, label %21, label %111

; <label>:21:                                     ; preds = %3
  %22 = load i32, i32* @target_flags, align 4
  %23 = and i32 %22, 33554432
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %24, i32 64, i32 32
  %26 = mul nsw i32 2, %25
  %27 = icmp sge i32 64, %26
  br i1 %27, label %28, label %93

; <label>:28:                                     ; preds = %21
  store i64 1, i64* %10, align 8
  %29 = load i32, i32* @target_flags, align 4
  %30 = and i32 %29, 33554432
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %31, i32 64, i32 32
  %33 = sub nsw i32 %32, 1
  %34 = load i64, i64* %10, align 8
  %35 = zext i32 %33 to i64
  %36 = shl i64 %34, %35
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = shl i64 %37, 1
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = xor i64 %41, -1
  store i64 %42, i64* %11, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %44, i64 0, i64 0
  %46 = bitcast %union.rtunion_def* %45 to i64*
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %7, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

; <label>:55:                                     ; preds = %28
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %7, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %7, align 8
  br label %59

; <label>:59:                                     ; preds = %55, %28
  %60 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %61, i64 0, i64 0
  %63 = bitcast %union.rtunion_def* %62 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %8, align 8
  %65 = load i32, i32* @target_flags, align 4
  %66 = and i32 %65, 33554432
  %67 = icmp ne i32 %66, 0
  %68 = select i1 %67, i32 64, i32 32
  %69 = sub nsw i32 %68, 1
  %70 = load i64, i64* %8, align 8
  %71 = zext i32 %69 to i64
  %72 = lshr i64 %70, %71
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = lshr i64 %73, 1
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = and i64 %76, %75
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %10, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

; <label>:82:                                     ; preds = %59
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %8, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %8, align 8
  br label %86

; <label>:86:                                     ; preds = %82, %59
  %87 = load i64, i64* %7, align 8
  %88 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %87)
  %89 = load %struct.rtx_def**, %struct.rtx_def*** %5, align 8
  store %struct.rtx_def* %88, %struct.rtx_def** %89, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %90)
  %92 = load %struct.rtx_def**, %struct.rtx_def*** %6, align 8
  store %struct.rtx_def* %91, %struct.rtx_def** %92, align 8
  br label %110

; <label>:93:                                     ; preds = %21
  %94 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %95, i64 0, i64 0
  %97 = bitcast %union.rtunion_def* %96 to i64*
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %102

; <label>:100:                                    ; preds = %93
  %101 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 63), align 8
  br label %104

; <label>:102:                                    ; preds = %93
  %103 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  br label %104

; <label>:104:                                    ; preds = %102, %100
  %105 = phi %struct.rtx_def* [ %101, %100 ], [ %103, %102 ]
  store %struct.rtx_def* %105, %struct.rtx_def** %12, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %107 = load %struct.rtx_def**, %struct.rtx_def*** %5, align 8
  store %struct.rtx_def* %106, %struct.rtx_def** %107, align 8
  %108 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %109 = load %struct.rtx_def**, %struct.rtx_def*** %6, align 8
  store %struct.rtx_def* %108, %struct.rtx_def** %109, align 8
  br label %110

; <label>:110:                                    ; preds = %104, %86
  br label %208

; <label>:111:                                    ; preds = %3
  %112 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 65535
  %116 = icmp ne i32 %115, 55
  br i1 %116, label %117, label %122

; <label>:117:                                    ; preds = %111
  %118 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %119 = load %struct.rtx_def**, %struct.rtx_def*** %5, align 8
  store %struct.rtx_def* %118, %struct.rtx_def** %119, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16
  %121 = load %struct.rtx_def**, %struct.rtx_def*** %6, align 8
  store %struct.rtx_def* %120, %struct.rtx_def** %121, align 8
  br label %207

; <label>:122:                                    ; preds = %111
  %123 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %125 = load i32, i32* %124, align 8
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %139, label %129

; <label>:129:                                    ; preds = %122
  %130 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %132 = load i32, i32* %131, align 8
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %154

; <label>:139:                                    ; preds = %129, %122
  %140 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %141, i64 0, i64 1
  %143 = bitcast %union.rtunion_def* %142 to i64*
  %144 = load i64, i64* %143, align 8
  %145 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %144)
  %146 = load %struct.rtx_def**, %struct.rtx_def*** %5, align 8
  store %struct.rtx_def* %145, %struct.rtx_def** %146, align 8
  %147 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %148, i64 0, i64 2
  %150 = bitcast %union.rtunion_def* %149 to i64*
  %151 = load i64, i64* %150, align 8
  %152 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %151)
  %153 = load %struct.rtx_def**, %struct.rtx_def*** %6, align 8
  store %struct.rtx_def* %152, %struct.rtx_def** %153, align 8
  br label %206

; <label>:154:                                    ; preds = %129
  br label %155

; <label>:155:                                    ; preds = %154
  %156 = bitcast %union.real_extract* %15 to i8*
  %157 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %158, i64 0, i64 1
  %160 = bitcast %union.rtunion_def* %159 to i64*
  %161 = bitcast i64* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %161, i64 24, i32 8, i1 false)
  %162 = bitcast %union.real_extract* %15 to %struct.realvaluetype*
  %163 = bitcast %struct.realvaluetype* %13 to i8*
  %164 = bitcast %struct.realvaluetype* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %163, i8* %164, i64 24, i32 8, i1 false)
  br label %165

; <label>:165:                                    ; preds = %155
  %166 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i32 0, i32 0
  call void @etardouble(%struct.realvaluetype* byval align 8 %13, i64* %166)
  %167 = load i32, i32* @target_flags, align 4
  %168 = and i32 %167, 33554432
  %169 = icmp ne i32 %168, 0
  %170 = select i1 %169, i32 64, i32 32
  %171 = icmp slt i32 %170, 64
  br i1 %171, label %172, label %197

; <label>:172:                                    ; preds = %165
  %173 = load i32, i32* @target_flags, align 4
  %174 = and i32 %173, 33554432
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %175, i32 64, i32 32
  %177 = icmp eq i32 %176, 32
  br i1 %177, label %178, label %197

; <label>:178:                                    ; preds = %172
  %179 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %180 = load i64, i64* %179, align 16
  %181 = and i64 %180, 2147483648
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

; <label>:183:                                    ; preds = %178
  %184 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %185 = load i64, i64* %184, align 16
  %186 = or i64 %185, -4294967296
  store i64 %186, i64* %184, align 16
  br label %187

; <label>:187:                                    ; preds = %183, %178
  %188 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %189 = load i64, i64* %188, align 8
  %190 = and i64 %189, 2147483648
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

; <label>:192:                                    ; preds = %187
  %193 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %194 = load i64, i64* %193, align 8
  %195 = or i64 %194, -4294967296
  store i64 %195, i64* %193, align 8
  br label %196

; <label>:196:                                    ; preds = %192, %187
  br label %197

; <label>:197:                                    ; preds = %196, %172, %165
  %198 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %199 = load i64, i64* %198, align 16
  %200 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %199)
  %201 = load %struct.rtx_def**, %struct.rtx_def*** %5, align 8
  store %struct.rtx_def* %200, %struct.rtx_def** %201, align 8
  %202 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %203 = load i64, i64* %202, align 8
  %204 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %203)
  %205 = load %struct.rtx_def**, %struct.rtx_def*** %6, align 8
  store %struct.rtx_def* %204, %struct.rtx_def** %205, align 8
  br label %206

; <label>:206:                                    ; preds = %197, %139
  br label %207

; <label>:207:                                    ; preds = %206, %117
  br label %208

; <label>:208:                                    ; preds = %207, %110
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare void @etardouble(%struct.realvaluetype* byval align 8, i64*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @leaf_function_p() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca %struct.rtx_def*, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %5 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 56
  %6 = bitcast i24* %5 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = lshr i32 %7, 14
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %0
  %12 = load i32, i32* @profile_arc_flag, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %0
  store i32 0, i32* %1, align 4
  br label %179

; <label>:15:                                     ; preds = %11
  %16 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %16, %struct.rtx_def** %2, align 8
  br label %17

; <label>:17:                                     ; preds = %87, %15
  %18 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %19 = icmp ne %struct.rtx_def* %18, null
  br i1 %19, label %20, label %93

; <label>:20:                                     ; preds = %17
  %21 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 34
  br i1 %25, label %26, label %34

; <label>:26:                                     ; preds = %20
  %27 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = lshr i32 %29, 24
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

; <label>:33:                                     ; preds = %26
  store i32 0, i32* %1, align 4
  br label %179

; <label>:34:                                     ; preds = %26, %20
  %35 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %86

; <label>:40:                                     ; preds = %34
  %41 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %42, i64 0, i64 3
  %44 = bitcast %union.rtunion_def* %43 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %44, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 24
  br i1 %49, label %50, label %86

; <label>:50:                                     ; preds = %40
  %51 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %52, i64 0, i64 3
  %54 = bitcast %union.rtunion_def* %53 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %54, align 8
  %56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %56, i64 0, i64 0
  %58 = bitcast %union.rtunion_def* %57 to %struct.rtvec_def**
  %59 = load %struct.rtvec_def*, %struct.rtvec_def** %58, align 8
  %60 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %59, i32 0, i32 1
  %61 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %60, i64 0, i64 0
  %62 = load %struct.rtx_def*, %struct.rtx_def** %61, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 34
  br i1 %66, label %67, label %86

; <label>:67:                                     ; preds = %50
  %68 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %69, i64 0, i64 3
  %71 = bitcast %union.rtunion_def* %70 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %71, align 8
  %73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %73, i64 0, i64 0
  %75 = bitcast %union.rtunion_def* %74 to %struct.rtvec_def**
  %76 = load %struct.rtvec_def*, %struct.rtvec_def** %75, align 8
  %77 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %76, i32 0, i32 1
  %78 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %77, i64 0, i64 0
  %79 = load %struct.rtx_def*, %struct.rtx_def** %78, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %81 = load i32, i32* %80, align 8
  %82 = lshr i32 %81, 24
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

; <label>:85:                                     ; preds = %67
  store i32 0, i32* %1, align 4
  br label %179

; <label>:86:                                     ; preds = %67, %50, %40, %34
  br label %87

; <label>:87:                                     ; preds = %86
  %88 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %89, i64 0, i64 2
  %91 = bitcast %union.rtunion_def* %90 to %struct.rtx_def**
  %92 = load %struct.rtx_def*, %struct.rtx_def** %91, align 8
  store %struct.rtx_def* %92, %struct.rtx_def** %2, align 8
  br label %17

; <label>:93:                                     ; preds = %17
  %94 = load %struct.function*, %struct.function** @cfun, align 8
  %95 = getelementptr inbounds %struct.function, %struct.function* %94, i32 0, i32 55
  %96 = load %struct.rtx_def*, %struct.rtx_def** %95, align 8
  store %struct.rtx_def* %96, %struct.rtx_def** %3, align 8
  br label %97

; <label>:97:                                     ; preds = %172, %93
  %98 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %99 = icmp ne %struct.rtx_def* %98, null
  br i1 %99, label %100, label %178

; <label>:100:                                    ; preds = %97
  %101 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %102, i64 0, i64 0
  %104 = bitcast %union.rtunion_def* %103 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %104, align 8
  store %struct.rtx_def* %105, %struct.rtx_def** %2, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 34
  br i1 %110, label %111, label %119

; <label>:111:                                    ; preds = %100
  %112 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %114 = load i32, i32* %113, align 8
  %115 = lshr i32 %114, 24
  %116 = and i32 %115, 1
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

; <label>:118:                                    ; preds = %111
  store i32 0, i32* %1, align 4
  br label %179

; <label>:119:                                    ; preds = %111, %100
  %120 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 32
  br i1 %124, label %125, label %171

; <label>:125:                                    ; preds = %119
  %126 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %127, i64 0, i64 3
  %129 = bitcast %union.rtunion_def* %128 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %129, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 24
  br i1 %134, label %135, label %171

; <label>:135:                                    ; preds = %125
  %136 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %137, i64 0, i64 3
  %139 = bitcast %union.rtunion_def* %138 to %struct.rtx_def**
  %140 = load %struct.rtx_def*, %struct.rtx_def** %139, align 8
  %141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %141, i64 0, i64 0
  %143 = bitcast %union.rtunion_def* %142 to %struct.rtvec_def**
  %144 = load %struct.rtvec_def*, %struct.rtvec_def** %143, align 8
  %145 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %144, i32 0, i32 1
  %146 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %145, i64 0, i64 0
  %147 = load %struct.rtx_def*, %struct.rtx_def** %146, align 8
  %148 = bitcast %struct.rtx_def* %147 to i32*
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 34
  br i1 %151, label %152, label %171

; <label>:152:                                    ; preds = %135
  %153 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %153, i32 0, i32 1
  %155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %154, i64 0, i64 3
  %156 = bitcast %union.rtunion_def* %155 to %struct.rtx_def**
  %157 = load %struct.rtx_def*, %struct.rtx_def** %156, align 8
  %158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %158, i64 0, i64 0
  %160 = bitcast %union.rtunion_def* %159 to %struct.rtvec_def**
  %161 = load %struct.rtvec_def*, %struct.rtvec_def** %160, align 8
  %162 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %161, i32 0, i32 1
  %163 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %162, i64 0, i64 0
  %164 = load %struct.rtx_def*, %struct.rtx_def** %163, align 8
  %165 = bitcast %struct.rtx_def* %164 to i32*
  %166 = load i32, i32* %165, align 8
  %167 = lshr i32 %166, 24
  %168 = and i32 %167, 1
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

; <label>:170:                                    ; preds = %152
  store i32 0, i32* %1, align 4
  br label %179

; <label>:171:                                    ; preds = %152, %135, %125, %119
  br label %172

; <label>:172:                                    ; preds = %171
  %173 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %174, i64 0, i64 1
  %176 = bitcast %union.rtunion_def* %175 to %struct.rtx_def**
  %177 = load %struct.rtx_def*, %struct.rtx_def** %176, align 8
  store %struct.rtx_def* %177, %struct.rtx_def** %3, align 8
  br label %97

; <label>:178:                                    ; preds = %97
  store i32 1, i32* %1, align 4
  br label %179

; <label>:179:                                    ; preds = %178, %170, %118, %85, %33, %14
  %180 = load i32, i32* %1, align 4
  ret i32 %180
}

; Function Attrs: noinline nounwind uwtable
define i32 @final_forward_branch_p(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  %5 = load i32*, i32** @uid_shuid, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %1
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 3878, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.final_forward_branch_p, i32 0, i32 0)) #7
  unreachable

; <label>:8:                                      ; preds = %1
  %9 = load i32*, i32** @uid_shuid, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %11, i64 0, i64 0
  %13 = bitcast %union.rtunion_def* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %9, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32*, i32** @uid_shuid, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %20, i64 0, i64 7
  %22 = bitcast %union.rtunion_def* %21 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %24, i64 0, i64 0
  %26 = bitcast %union.rtunion_def* %25 to i32*
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %18, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %8
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %33, %8
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 3883, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.final_forward_branch_p, i32 0, i32 0)) #7
  unreachable

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define internal void @profile_function(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %5 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 56
  %6 = bitcast i24* %5 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @function_section(%union.tree_node* %10)
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

; <label>:13:                                     ; preds = %1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %15 = load i32, i32* @target_flags, align 4
  %16 = and i32 %15, 33554432
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %17, i32 39, i32 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  call void (%struct._IO_FILE*, i8*, ...) @asm_fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i8* %21)
  br label %22

; <label>:22:                                     ; preds = %13, %1
  %23 = load i32, i32* @target_flags, align 4
  %24 = and i32 %23, 33554432
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* @flag_pic, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0))
  br label %42

; <label>:32:                                     ; preds = %26, %22
  %33 = load i32, i32* @flag_pic, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %32
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0))
  br label %41

; <label>:38:                                     ; preds = %32
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0))
  br label %41

; <label>:41:                                     ; preds = %38, %35
  br label %42

; <label>:42:                                     ; preds = %41, %29
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

; <label>:45:                                     ; preds = %42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %47 = load i32, i32* @target_flags, align 4
  %48 = and i32 %47, 33554432
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %49, i32 39, i32 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i64 0, i64 %51
  %53 = load i8*, i8** %52, align 8
  call void (%struct._IO_FILE*, i8*, ...) @asm_fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* %53)
  br label %54

; <label>:54:                                     ; preds = %45, %42
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %union.tree_node* @get_mem_expr_from_op(%struct.rtx_def*, i32*) #0 {
  %3 = alloca %union.tree_node*, align 8
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.tree_node*, align 8
  %7 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %10 = icmp eq %struct.rtx_def* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  store %union.tree_node* null, %union.tree_node** %3, align 8
  br label %155

; <label>:12:                                     ; preds = %2
  %13 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 61
  br i1 %17, label %18, label %39

; <label>:18:                                     ; preds = %12
  %19 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %20, i64 0, i64 1
  %22 = bitcast %union.rtunion_def* %21 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %23, 53
  br i1 %24, label %25, label %39

; <label>:25:                                     ; preds = %18
  %26 = load %struct.function*, %struct.function** @cfun, align 8
  %27 = getelementptr inbounds %struct.function, %struct.function* %26, i32 0, i32 3
  %28 = load %struct.emit_status*, %struct.emit_status** %27, align 8
  %29 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %28, i32 0, i32 11
  %30 = load %union.tree_node**, %union.tree_node*** %29, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %32, i64 0, i64 1
  %34 = bitcast %union.rtunion_def* %33 to i32*
  %35 = load i32, i32* %34, align 8
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %union.tree_node*, %union.tree_node** %30, i64 %36
  %38 = load %union.tree_node*, %union.tree_node** %37, align 8
  store %union.tree_node* %38, %union.tree_node** %3, align 8
  br label %155

; <label>:39:                                     ; preds = %18, %12
  %40 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp ne i32 %43, 66
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %39
  store %union.tree_node* null, %union.tree_node** %3, align 8
  br label %155

; <label>:46:                                     ; preds = %39
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %49, i64 0, i64 1
  %51 = bitcast %union.rtunion_def* %50 to %struct.mem_attrs**
  %52 = load %struct.mem_attrs*, %struct.mem_attrs** %51, align 8
  %53 = icmp eq %struct.mem_attrs* %52, null
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %47
  br label %63

; <label>:55:                                     ; preds = %47
  %56 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %57, i64 0, i64 1
  %59 = bitcast %union.rtunion_def* %58 to %struct.mem_attrs**
  %60 = load %struct.mem_attrs*, %struct.mem_attrs** %59, align 8
  %61 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %60, i32 0, i32 1
  %62 = load %union.tree_node*, %union.tree_node** %61, align 8
  br label %63

; <label>:63:                                     ; preds = %55, %54
  %64 = phi %union.tree_node* [ null, %54 ], [ %62, %55 ]
  %65 = icmp ne %union.tree_node* %64, null
  br i1 %65, label %66, label %84

; <label>:66:                                     ; preds = %63
  %67 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %68, i64 0, i64 1
  %70 = bitcast %union.rtunion_def* %69 to %struct.mem_attrs**
  %71 = load %struct.mem_attrs*, %struct.mem_attrs** %70, align 8
  %72 = icmp eq %struct.mem_attrs* %71, null
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %66
  br label %82

; <label>:74:                                     ; preds = %66
  %75 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %76, i64 0, i64 1
  %78 = bitcast %union.rtunion_def* %77 to %struct.mem_attrs**
  %79 = load %struct.mem_attrs*, %struct.mem_attrs** %78, align 8
  %80 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %79, i32 0, i32 1
  %81 = load %union.tree_node*, %union.tree_node** %80, align 8
  br label %82

; <label>:82:                                     ; preds = %74, %73
  %83 = phi %union.tree_node* [ null, %73 ], [ %81, %74 ]
  store %union.tree_node* %83, %union.tree_node** %3, align 8
  br label %155

; <label>:84:                                     ; preds = %63
  %85 = load i32*, i32** %5, align 8
  store i32 1, i32* %85, align 4
  %86 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %87, i64 0, i64 0
  %89 = bitcast %union.rtunion_def* %88 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %89, align 8
  store %struct.rtx_def* %90, %struct.rtx_def** %4, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %92 = call %union.tree_node* @get_mem_expr_from_op(%struct.rtx_def* %91, i32* %7)
  store %union.tree_node* %92, %union.tree_node** %6, align 8
  %93 = icmp ne %union.tree_node* %92, null
  br i1 %93, label %94, label %99

; <label>:94:                                     ; preds = %84
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

; <label>:97:                                     ; preds = %94
  %98 = load %union.tree_node*, %union.tree_node** %6, align 8
  store %union.tree_node* %98, %union.tree_node** %3, align 8
  br label %155

; <label>:99:                                     ; preds = %94, %84
  %100 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 75
  br i1 %104, label %105, label %115

; <label>:105:                                    ; preds = %99
  %106 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %107, i64 0, i64 1
  %109 = bitcast %union.rtunion_def* %108 to %struct.rtx_def**
  %110 = load %struct.rtx_def*, %struct.rtx_def** %109, align 8
  %111 = call %union.tree_node* @get_mem_expr_from_op(%struct.rtx_def* %110, i32* %7)
  store %union.tree_node* %111, %union.tree_node** %6, align 8
  %112 = icmp ne %union.tree_node* %111, null
  br i1 %112, label %113, label %115

; <label>:113:                                    ; preds = %105
  %114 = load %union.tree_node*, %union.tree_node** %6, align 8
  store %union.tree_node* %114, %union.tree_node** %3, align 8
  br label %155

; <label>:115:                                    ; preds = %105, %99
  br label %116

; <label>:116:                                    ; preds = %115
  br label %117

; <label>:117:                                    ; preds = %139, %116
  %118 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %119 = bitcast %struct.rtx_def* %118 to i32*
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, 65535
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 49
  br i1 %126, label %137, label %127

; <label>:127:                                    ; preds = %117
  %128 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %129 = bitcast %struct.rtx_def* %128 to i32*
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 65535
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 50
  br label %137

; <label>:137:                                    ; preds = %127, %117
  %138 = phi i1 [ true, %117 ], [ %136, %127 ]
  br i1 %138, label %139, label %145

; <label>:139:                                    ; preds = %137
  %140 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %141, i64 0, i64 0
  %143 = bitcast %union.rtunion_def* %142 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %143, align 8
  store %struct.rtx_def* %144, %struct.rtx_def** %4, align 8
  br label %117

; <label>:145:                                    ; preds = %137
  %146 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %147 = call %union.tree_node* @get_mem_expr_from_op(%struct.rtx_def* %146, i32* %7)
  store %union.tree_node* %147, %union.tree_node** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

; <label>:150:                                    ; preds = %145
  br label %153

; <label>:151:                                    ; preds = %145
  %152 = load %union.tree_node*, %union.tree_node** %6, align 8
  br label %153

; <label>:153:                                    ; preds = %151, %150
  %154 = phi %union.tree_node* [ null, %150 ], [ %152, %151 ]
  store %union.tree_node* %154, %union.tree_node** %3, align 8
  br label %155

; <label>:155:                                    ; preds = %153, %113, %97, %82, %45, %25, %11
  %156 = load %union.tree_node*, %union.tree_node** %3, align 8
  ret %union.tree_node* %156
}

declare void @print_mem_expr(%struct._IO_FILE*, %union.tree_node*) #1

declare void @print_operand(%struct._IO_FILE*, %struct.rtx_def*, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
