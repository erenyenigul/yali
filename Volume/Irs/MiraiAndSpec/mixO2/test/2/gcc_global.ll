; ModuleID = 'host/ir_O0/gcc_global.ll'
source_filename = "global.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
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
%union.tree_node = type opaque
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.allocno = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.insn_chain = type { %struct.insn_chain*, %struct.insn_chain*, %struct.insn_chain*, i32, %struct.rtx_def*, %struct.bitmap_head_def, %struct.bitmap_head_def, %struct.reload*, i32, i64, %struct.needs, i8 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.reload = type opaque
%struct.needs = type { [2 x [25 x i16]], [25 x i16] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@global_alloc.eliminables = internal constant [4 x %struct.anon] [%struct.anon { i32 16, i32 7 }, %struct.anon { i32 16, i32 6 }, %struct.anon { i32 20, i32 7 }, %struct.anon { i32 20, i32 6 }], align 16
@flag_omit_frame_pointer = external global i32, align 4
@cfun = external global %struct.function*, align 8
@max_allocno = internal global i32 0, align 4
@no_global_alloc_regs = internal global i64 0, align 8
@eliminable_regset = internal global i64 0, align 8
@frame_pointer_needed = external global i32, align 4
@regs_used_so_far = internal global i64 0, align 8
@regs_ever_live = external global [53 x i8], align 16
@call_used_regs = external global [53 x i8], align 16
@max_regno = external global i32, align 4
@reg_renumber = external global i16*, align 8
@reg_allocno = internal global i32* null, align 8
@reg_may_share = internal global i32* null, align 8
@regs_may_share = external global %struct.rtx_def*, align 8
@reg_n_info = external global %struct.varray_head_tag*, align 8
@.str = private unnamed_addr constant [9 x i8] c"global.c\00", align 1
@__FUNCTION__.global_alloc = private unnamed_addr constant [13 x i8] c"global_alloc\00", align 1
@allocno = internal global %struct.allocno* null, align 8
@mode_size = external constant [59 x i8], align 16
@target_flags = external global i32, align 4
@local_reg_live_length = internal global [53 x i32] zeroinitializer, align 16
@local_reg_n_refs = internal global [53 x i32] zeroinitializer, align 16
@local_reg_freq = internal global [53 x i32] zeroinitializer, align 16
@mode_class = external constant [59 x i32], align 16
@allocno_row_words = internal global i32 0, align 4
@conflicts = internal global i64* null, align 8
@allocnos_live = internal global i64* null, align 8
@allocno_order = internal global i32* null, align 8
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@reload_insn_chain = external global %struct.insn_chain*, align 8
@live_relevant_regs = internal global %struct.bitmap_head_def* null, align 8
@rtx_class = external constant [153 x i8], align 16
@__FUNCTION__.build_insn_chain = private unnamed_addr constant [17 x i8] c"build_insn_chain\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c";; Register dispositions:\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%d in %d  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\0A\0A;; Hard regs used: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@max_parallel = external global i32, align 4
@regs_set = internal global %struct.rtx_def** null, align 8
@hard_regs_live = internal global i64 0, align 8
@n_regs_set = internal global i32 0, align 4
@fixed_regs = external global [53 x i8], align 16
@rtx_format = external constant [153 x i8*], align 16
@fixed_reg_set = external global i64, align 8
@call_used_reg_set = external global i64, align 8
@reg_class_contents = external global [25 x i64], align 16
@call_fixed_reg_set = external global i64, align 8
@reg_alloc_order = external global [53 x i32], align 16
@regclass_map = external constant [53 x i32], align 16
@flag_caller_saves = external global i32, align 4
@losing_caller_save_reg_set = external global i64, align 8
@caller_save_needed = external global i32, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c";; %d regs to allocate:\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"+%d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c";; %d conflicts:\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c";; %d preferences:\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @global_alloc(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %13 = load i32, i32* @flag_omit_frame_pointer, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

; <label>:15:                                     ; preds = %1
  %16 = load %struct.function*, %struct.function** @cfun, align 8
  %17 = getelementptr inbounds %struct.function, %struct.function* %16, i32 0, i32 56
  %18 = bitcast i24* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = lshr i32 %19, 6
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

; <label>:23:                                     ; preds = %15
  %24 = call i32 @ix86_frame_pointer_required()
  %25 = icmp ne i32 %24, 0
  br label %26

; <label>:26:                                     ; preds = %23, %15, %1
  %27 = phi i1 [ true, %15 ], [ true, %1 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  store i32 0, i32* @max_allocno, align 4
  store i64 0, i64* @no_global_alloc_regs, align 8
  store i64 0, i64* %5, align 8
  br label %29

; <label>:29:                                     ; preds = %69, %26
  %30 = load i64, i64* %5, align 8
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %32, label %72

; <label>:32:                                     ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @global_alloc.eliminables, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = zext i32 %36 to i64
  %38 = shl i64 1, %37
  %39 = load i64, i64* @eliminable_regset, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* @eliminable_regset, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @global_alloc.eliminables, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %32
  %47 = load i32, i32* @frame_pointer_needed, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %50

; <label>:49:                                     ; preds = %32
  br i1 true, label %50, label %59

; <label>:50:                                     ; preds = %49, %46
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @global_alloc.eliminables, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 7
  br i1 %55, label %56, label %68

; <label>:56:                                     ; preds = %50
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

; <label>:59:                                     ; preds = %56, %49, %46
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @global_alloc.eliminables, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = zext i32 %63 to i64
  %65 = shl i64 1, %64
  %66 = load i64, i64* @no_global_alloc_regs, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* @no_global_alloc_regs, align 8
  br label %68

; <label>:68:                                     ; preds = %59, %56, %50
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %29

; <label>:72:                                     ; preds = %29
  %73 = load i64, i64* @eliminable_regset, align 8
  %74 = or i64 %73, 64
  store i64 %74, i64* @eliminable_regset, align 8
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %72
  %78 = load i64, i64* @no_global_alloc_regs, align 8
  %79 = or i64 %78, 64
  store i64 %79, i64* @no_global_alloc_regs, align 8
  br label %80

; <label>:80:                                     ; preds = %77, %72
  store i64 0, i64* @regs_used_so_far, align 8
  store i64 0, i64* %5, align 8
  br label %81

; <label>:81:                                     ; preds = %102, %80
  %82 = load i64, i64* %5, align 8
  %83 = icmp ult i64 %82, 53
  br i1 %83, label %84, label %105

; <label>:84:                                     ; preds = %81
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

; <label>:90:                                     ; preds = %84
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

; <label>:96:                                     ; preds = %90, %84
  %97 = load i64, i64* %5, align 8
  %98 = shl i64 1, %97
  %99 = load i64, i64* @regs_used_so_far, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* @regs_used_so_far, align 8
  br label %101

; <label>:101:                                    ; preds = %96, %90
  br label %102

; <label>:102:                                    ; preds = %101
  %103 = load i64, i64* %5, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %5, align 8
  br label %81

; <label>:105:                                    ; preds = %81
  store i64 53, i64* %5, align 8
  br label %106

; <label>:106:                                    ; preds = %129, %105
  %107 = load i64, i64* %5, align 8
  %108 = load i32, i32* @max_regno, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp ult i64 %107, %109
  br i1 %110, label %111, label %132

; <label>:111:                                    ; preds = %106
  %112 = load i16*, i16** @reg_renumber, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds i16, i16* %112, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = sext i16 %115 to i32
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %128

; <label>:118:                                    ; preds = %111
  %119 = load i16*, i16** @reg_renumber, align 8
  %120 = load i64, i64* %5, align 8
  %121 = getelementptr inbounds i16, i16* %119, i64 %120
  %122 = load i16, i16* %121, align 2
  %123 = sext i16 %122 to i32
  %124 = zext i32 %123 to i64
  %125 = shl i64 1, %124
  %126 = load i64, i64* @regs_used_so_far, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* @regs_used_so_far, align 8
  br label %128

; <label>:128:                                    ; preds = %118, %111
  br label %129

; <label>:129:                                    ; preds = %128
  %130 = load i64, i64* %5, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %5, align 8
  br label %106

; <label>:132:                                    ; preds = %106
  %133 = load i32, i32* @max_regno, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 4
  %136 = call noalias i8* @xmalloc(i64 %135)
  %137 = bitcast i8* %136 to i32*
  store i32* %137, i32** @reg_allocno, align 8
  store i64 0, i64* %5, align 8
  br label %138

; <label>:138:                                    ; preds = %145, %132
  %139 = load i64, i64* %5, align 8
  %140 = icmp ult i64 %139, 53
  br i1 %140, label %141, label %148

; <label>:141:                                    ; preds = %138
  %142 = load i32*, i32** @reg_allocno, align 8
  %143 = load i64, i64* %5, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 -1, i32* %144, align 4
  br label %145

; <label>:145:                                    ; preds = %141
  %146 = load i64, i64* %5, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %5, align 8
  br label %138

; <label>:148:                                    ; preds = %138
  %149 = load i32, i32* @max_regno, align 4
  %150 = sext i32 %149 to i64
  %151 = call noalias i8* @xcalloc(i64 %150, i64 4)
  %152 = bitcast i8* %151 to i32*
  store i32* %152, i32** @reg_may_share, align 8
  %153 = load %struct.rtx_def*, %struct.rtx_def** @regs_may_share, align 8
  store %struct.rtx_def* %153, %struct.rtx_def** %6, align 8
  br label %154

; <label>:154:                                    ; preds = %196, %148
  %155 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %156 = icmp ne %struct.rtx_def* %155, null
  br i1 %156, label %157, label %206

; <label>:157:                                    ; preds = %154
  %158 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %159, i64 0, i64 0
  %161 = bitcast %union.rtunion_def* %160 to %struct.rtx_def**
  %162 = load %struct.rtx_def*, %struct.rtx_def** %161, align 8
  %163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %163, i64 0, i64 0
  %165 = bitcast %union.rtunion_def* %164 to i32*
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %7, align 4
  %167 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %168, i64 0, i64 1
  %170 = bitcast %union.rtunion_def* %169 to %struct.rtx_def**
  %171 = load %struct.rtx_def*, %struct.rtx_def** %170, align 8
  %172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %172, i64 0, i64 0
  %174 = bitcast %union.rtunion_def* %173 to %struct.rtx_def**
  %175 = load %struct.rtx_def*, %struct.rtx_def** %174, align 8
  %176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %176, i64 0, i64 0
  %178 = bitcast %union.rtunion_def* %177 to i32*
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %189

; <label>:183:                                    ; preds = %157
  %184 = load i32, i32* %8, align 4
  %185 = load i32*, i32** @reg_may_share, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %184, i32* %188, align 4
  br label %195

; <label>:189:                                    ; preds = %157
  %190 = load i32, i32* %7, align 4
  %191 = load i32*, i32** @reg_may_share, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  br label %195

; <label>:195:                                    ; preds = %189, %183
  br label %196

; <label>:196:                                    ; preds = %195
  %197 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %198, i64 0, i64 1
  %200 = bitcast %union.rtunion_def* %199 to %struct.rtx_def**
  %201 = load %struct.rtx_def*, %struct.rtx_def** %200, align 8
  %202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %202, i64 0, i64 1
  %204 = bitcast %union.rtunion_def* %203 to %struct.rtx_def**
  %205 = load %struct.rtx_def*, %struct.rtx_def** %204, align 8
  store %struct.rtx_def* %205, %struct.rtx_def** %6, align 8
  br label %154

; <label>:206:                                    ; preds = %154
  store i64 53, i64* %5, align 8
  br label %207

; <label>:207:                                    ; preds = %308, %206
  %208 = load i64, i64* %5, align 8
  %209 = load i32, i32* @max_regno, align 4
  %210 = sext i32 %209 to i64
  %211 = icmp ult i64 %208, %210
  br i1 %211, label %212, label %311

; <label>:212:                                    ; preds = %207
  %213 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %214 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %213, i32 0, i32 4
  %215 = bitcast %union.varray_data_tag* %214 to [1 x %struct.reg_info_def*]*
  %216 = load i64, i64* %5, align 8
  %217 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %215, i64 0, i64 %216
  %218 = load %struct.reg_info_def*, %struct.reg_info_def** %217, align 8
  %219 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %303

; <label>:222:                                    ; preds = %212
  %223 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %224 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %223, i32 0, i32 4
  %225 = bitcast %union.varray_data_tag* %224 to [1 x %struct.reg_info_def*]*
  %226 = load i64, i64* %5, align 8
  %227 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %225, i64 0, i64 %226
  %228 = load %struct.reg_info_def*, %struct.reg_info_def** %227, align 8
  %229 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, -1
  br i1 %231, label %232, label %303

; <label>:232:                                    ; preds = %222
  %233 = load %struct.function*, %struct.function** @cfun, align 8
  %234 = getelementptr inbounds %struct.function, %struct.function* %233, i32 0, i32 56
  %235 = bitcast i24* %234 to i32*
  %236 = load i32, i32* %235, align 8
  %237 = lshr i32 %236, 8
  %238 = and i32 %237, 1
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %250

; <label>:240:                                    ; preds = %232
  %241 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %242 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %241, i32 0, i32 4
  %243 = bitcast %union.varray_data_tag* %242 to [1 x %struct.reg_info_def*]*
  %244 = load i64, i64* %5, align 8
  %245 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %243, i64 0, i64 %244
  %246 = load %struct.reg_info_def*, %struct.reg_info_def** %245, align 8
  %247 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %303

; <label>:250:                                    ; preds = %240, %232
  %251 = load i16*, i16** @reg_renumber, align 8
  %252 = load i64, i64* %5, align 8
  %253 = getelementptr inbounds i16, i16* %251, i64 %252
  %254 = load i16, i16* %253, align 2
  %255 = sext i16 %254 to i32
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %285

; <label>:257:                                    ; preds = %250
  %258 = load i32*, i32** @reg_may_share, align 8
  %259 = load i64, i64* %5, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %285

; <label>:263:                                    ; preds = %257
  %264 = load i32*, i32** @reg_allocno, align 8
  %265 = load i32*, i32** @reg_may_share, align 8
  %266 = load i64, i64* %5, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %264, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = icmp sge i32 %271, 0
  br i1 %272, label %273, label %285

; <label>:273:                                    ; preds = %263
  %274 = load i32*, i32** @reg_allocno, align 8
  %275 = load i32*, i32** @reg_may_share, align 8
  %276 = load i64, i64* %5, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %274, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** @reg_allocno, align 8
  %283 = load i64, i64* %5, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  store i32 %281, i32* %284, align 4
  br label %291

; <label>:285:                                    ; preds = %263, %257, %250
  %286 = load i32, i32* @max_allocno, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* @max_allocno, align 4
  %288 = load i32*, i32** @reg_allocno, align 8
  %289 = load i64, i64* %5, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  store i32 %286, i32* %290, align 4
  br label %291

; <label>:291:                                    ; preds = %285, %273
  %292 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %293 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %292, i32 0, i32 4
  %294 = bitcast %union.varray_data_tag* %293 to [1 x %struct.reg_info_def*]*
  %295 = load i64, i64* %5, align 8
  %296 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %294, i64 0, i64 %295
  %297 = load %struct.reg_info_def*, %struct.reg_info_def** %296, align 8
  %298 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

; <label>:301:                                    ; preds = %291
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 441, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.global_alloc, i32 0, i32 0)) #5
  unreachable

; <label>:302:                                    ; preds = %291
  br label %307

; <label>:303:                                    ; preds = %240, %222, %212
  %304 = load i32*, i32** @reg_allocno, align 8
  %305 = load i64, i64* %5, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  store i32 -1, i32* %306, align 4
  br label %307

; <label>:307:                                    ; preds = %303, %302
  br label %308

; <label>:308:                                    ; preds = %307
  %309 = load i64, i64* %5, align 8
  %310 = add i64 %309, 1
  store i64 %310, i64* %5, align 8
  br label %207

; <label>:311:                                    ; preds = %207
  %312 = load i32, i32* @max_allocno, align 4
  %313 = sext i32 %312 to i64
  %314 = call noalias i8* @xcalloc(i64 %313, i64 64)
  %315 = bitcast i8* %314 to %struct.allocno*
  store %struct.allocno* %315, %struct.allocno** @allocno, align 8
  store i64 53, i64* %5, align 8
  br label %316

; <label>:316:                                    ; preds = %447, %311
  %317 = load i64, i64* %5, align 8
  %318 = load i32, i32* @max_regno, align 4
  %319 = sext i32 %318 to i64
  %320 = icmp ult i64 %317, %319
  br i1 %320, label %321, label %450

; <label>:321:                                    ; preds = %316
  %322 = load i32*, i32** @reg_allocno, align 8
  %323 = load i64, i64* %5, align 8
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = icmp sge i32 %325, 0
  br i1 %326, label %327, label %446

; <label>:327:                                    ; preds = %321
  %328 = load i32*, i32** @reg_allocno, align 8
  %329 = load i64, i64* %5, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %9, align 4
  %332 = load i64, i64* %5, align 8
  %333 = trunc i64 %332 to i32
  %334 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.allocno, %struct.allocno* %334, i64 %336
  %338 = getelementptr inbounds %struct.allocno, %struct.allocno* %337, i32 0, i32 0
  store i32 %333, i32* %338, align 8
  %339 = load %struct.function*, %struct.function** @cfun, align 8
  %340 = getelementptr inbounds %struct.function, %struct.function* %339, i32 0, i32 3
  %341 = load %struct.emit_status*, %struct.emit_status** %340, align 8
  %342 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %341, i32 0, i32 12
  %343 = load %struct.rtx_def**, %struct.rtx_def*** %342, align 8
  %344 = load i64, i64* %5, align 8
  %345 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %343, i64 %344
  %346 = load %struct.rtx_def*, %struct.rtx_def** %345, align 8
  %347 = bitcast %struct.rtx_def* %346 to i32*
  %348 = load i32, i32* %347, align 8
  %349 = lshr i32 %348, 16
  %350 = and i32 %349, 255
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = zext i8 %353 to i32
  %355 = load i32, i32* @target_flags, align 4
  %356 = and i32 %355, 33554432
  %357 = icmp ne i32 %356, 0
  %358 = select i1 %357, i32 8, i32 4
  %359 = add nsw i32 %354, %358
  %360 = sub nsw i32 %359, 1
  %361 = load i32, i32* @target_flags, align 4
  %362 = and i32 %361, 33554432
  %363 = icmp ne i32 %362, 0
  %364 = select i1 %363, i32 8, i32 4
  %365 = sdiv i32 %360, %364
  %366 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.allocno, %struct.allocno* %366, i64 %368
  %370 = getelementptr inbounds %struct.allocno, %struct.allocno* %369, i32 0, i32 1
  store i32 %365, i32* %370, align 4
  %371 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %372 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %371, i32 0, i32 4
  %373 = bitcast %union.varray_data_tag* %372 to [1 x %struct.reg_info_def*]*
  %374 = load i64, i64* %5, align 8
  %375 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %373, i64 0, i64 %374
  %376 = load %struct.reg_info_def*, %struct.reg_info_def** %375, align 8
  %377 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %376, i32 0, i32 8
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %380 = load i32, i32* %9, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.allocno, %struct.allocno* %379, i64 %381
  %383 = getelementptr inbounds %struct.allocno, %struct.allocno* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = add nsw i32 %384, %378
  store i32 %385, i32* %383, align 8
  %386 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %387 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %386, i32 0, i32 4
  %388 = bitcast %union.varray_data_tag* %387 to [1 x %struct.reg_info_def*]*
  %389 = load i64, i64* %5, align 8
  %390 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %388, i64 0, i64 %389
  %391 = load %struct.reg_info_def*, %struct.reg_info_def** %390, align 8
  %392 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %395 = load i32, i32* %9, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.allocno, %struct.allocno* %394, i64 %396
  %398 = getelementptr inbounds %struct.allocno, %struct.allocno* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, %393
  store i32 %400, i32* %398, align 4
  %401 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %402 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %401, i32 0, i32 4
  %403 = bitcast %union.varray_data_tag* %402 to [1 x %struct.reg_info_def*]*
  %404 = load i64, i64* %5, align 8
  %405 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %403, i64 0, i64 %404
  %406 = load %struct.reg_info_def*, %struct.reg_info_def** %405, align 8
  %407 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %410 = load i32, i32* %9, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.allocno, %struct.allocno* %409, i64 %411
  %413 = getelementptr inbounds %struct.allocno, %struct.allocno* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = add nsw i32 %414, %408
  store i32 %415, i32* %413, align 8
  %416 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %417 = load i32, i32* %9, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.allocno, %struct.allocno* %416, i64 %418
  %420 = getelementptr inbounds %struct.allocno, %struct.allocno* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %423 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %422, i32 0, i32 4
  %424 = bitcast %union.varray_data_tag* %423 to [1 x %struct.reg_info_def*]*
  %425 = load i64, i64* %5, align 8
  %426 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %424, i64 0, i64 %425
  %427 = load %struct.reg_info_def*, %struct.reg_info_def** %426, align 8
  %428 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %427, i32 0, i32 7
  %429 = load i32, i32* %428, align 4
  %430 = icmp slt i32 %421, %429
  br i1 %430, label %431, label %445

; <label>:431:                                    ; preds = %327
  %432 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %433 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %432, i32 0, i32 4
  %434 = bitcast %union.varray_data_tag* %433 to [1 x %struct.reg_info_def*]*
  %435 = load i64, i64* %5, align 8
  %436 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %434, i64 0, i64 %435
  %437 = load %struct.reg_info_def*, %struct.reg_info_def** %436, align 8
  %438 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %437, i32 0, i32 7
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %441 = load i32, i32* %9, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.allocno, %struct.allocno* %440, i64 %442
  %444 = getelementptr inbounds %struct.allocno, %struct.allocno* %443, i32 0, i32 5
  store i32 %439, i32* %444, align 4
  br label %445

; <label>:445:                                    ; preds = %431, %327
  br label %446

; <label>:446:                                    ; preds = %445, %321
  br label %447

; <label>:447:                                    ; preds = %446
  %448 = load i64, i64* %5, align 8
  %449 = add i64 %448, 1
  store i64 %449, i64* %5, align 8
  br label %316

; <label>:450:                                    ; preds = %316
  call void @llvm.memset.p0i8.i64(i8* bitcast ([53 x i32]* @local_reg_live_length to i8*), i8 0, i64 212, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([53 x i32]* @local_reg_n_refs to i8*), i8 0, i64 212, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([53 x i32]* @local_reg_freq to i8*), i8 0, i64 212, i32 16, i1 false)
  store i64 53, i64* %5, align 8
  br label %451

; <label>:451:                                    ; preds = %653, %450
  %452 = load i64, i64* %5, align 8
  %453 = load i32, i32* @max_regno, align 4
  %454 = sext i32 %453 to i64
  %455 = icmp ult i64 %452, %454
  br i1 %455, label %456, label %656

; <label>:456:                                    ; preds = %451
  %457 = load i16*, i16** @reg_renumber, align 8
  %458 = load i64, i64* %5, align 8
  %459 = getelementptr inbounds i16, i16* %457, i64 %458
  %460 = load i16, i16* %459, align 2
  %461 = sext i16 %460 to i32
  %462 = icmp sge i32 %461, 0
  br i1 %462, label %463, label %652

; <label>:463:                                    ; preds = %456
  %464 = load i16*, i16** @reg_renumber, align 8
  %465 = load i64, i64* %5, align 8
  %466 = getelementptr inbounds i16, i16* %464, i64 %465
  %467 = load i16, i16* %466, align 2
  %468 = sext i16 %467 to i32
  store i32 %468, i32* %10, align 4
  %469 = load i32, i32* %10, align 4
  %470 = load i32, i32* %10, align 4
  %471 = icmp sge i32 %470, 8
  br i1 %471, label %472, label %475

; <label>:472:                                    ; preds = %463
  %473 = load i32, i32* %10, align 4
  %474 = icmp sle i32 %473, 15
  br i1 %474, label %493, label %475

; <label>:475:                                    ; preds = %472, %463
  %476 = load i32, i32* %10, align 4
  %477 = icmp sge i32 %476, 21
  br i1 %477, label %478, label %481

; <label>:478:                                    ; preds = %475
  %479 = load i32, i32* %10, align 4
  %480 = icmp sle i32 %479, 28
  br i1 %480, label %493, label %481

; <label>:481:                                    ; preds = %478, %475
  %482 = load i32, i32* %10, align 4
  %483 = icmp sge i32 %482, 45
  br i1 %483, label %484, label %487

; <label>:484:                                    ; preds = %481
  %485 = load i32, i32* %10, align 4
  %486 = icmp sle i32 %485, 52
  br i1 %486, label %493, label %487

; <label>:487:                                    ; preds = %484, %481
  %488 = load i32, i32* %10, align 4
  %489 = icmp sge i32 %488, 29
  br i1 %489, label %490, label %530

; <label>:490:                                    ; preds = %487
  %491 = load i32, i32* %10, align 4
  %492 = icmp sle i32 %491, 36
  br i1 %492, label %493, label %530

; <label>:493:                                    ; preds = %490, %484, %478, %472
  %494 = load %struct.function*, %struct.function** @cfun, align 8
  %495 = getelementptr inbounds %struct.function, %struct.function* %494, i32 0, i32 3
  %496 = load %struct.emit_status*, %struct.emit_status** %495, align 8
  %497 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %496, i32 0, i32 12
  %498 = load %struct.rtx_def**, %struct.rtx_def*** %497, align 8
  %499 = load i64, i64* %5, align 8
  %500 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %498, i64 %499
  %501 = load %struct.rtx_def*, %struct.rtx_def** %500, align 8
  %502 = bitcast %struct.rtx_def* %501 to i32*
  %503 = load i32, i32* %502, align 8
  %504 = lshr i32 %503, 16
  %505 = and i32 %504, 255
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = icmp eq i32 %508, 5
  br i1 %509, label %527, label %510

; <label>:510:                                    ; preds = %493
  %511 = load %struct.function*, %struct.function** @cfun, align 8
  %512 = getelementptr inbounds %struct.function, %struct.function* %511, i32 0, i32 3
  %513 = load %struct.emit_status*, %struct.emit_status** %512, align 8
  %514 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %513, i32 0, i32 12
  %515 = load %struct.rtx_def**, %struct.rtx_def*** %514, align 8
  %516 = load i64, i64* %5, align 8
  %517 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %515, i64 %516
  %518 = load %struct.rtx_def*, %struct.rtx_def** %517, align 8
  %519 = bitcast %struct.rtx_def* %518 to i32*
  %520 = load i32, i32* %519, align 8
  %521 = lshr i32 %520, 16
  %522 = and i32 %521, 255
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %523
  %525 = load i32, i32* %524, align 4
  %526 = icmp eq i32 %525, 6
  br label %527

; <label>:527:                                    ; preds = %510, %493
  %528 = phi i1 [ true, %493 ], [ %526, %510 ]
  %529 = select i1 %528, i32 2, i32 1
  br label %600

; <label>:530:                                    ; preds = %490, %487
  %531 = load %struct.function*, %struct.function** @cfun, align 8
  %532 = getelementptr inbounds %struct.function, %struct.function* %531, i32 0, i32 3
  %533 = load %struct.emit_status*, %struct.emit_status** %532, align 8
  %534 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %533, i32 0, i32 12
  %535 = load %struct.rtx_def**, %struct.rtx_def*** %534, align 8
  %536 = load i64, i64* %5, align 8
  %537 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %535, i64 %536
  %538 = load %struct.rtx_def*, %struct.rtx_def** %537, align 8
  %539 = bitcast %struct.rtx_def* %538 to i32*
  %540 = load i32, i32* %539, align 8
  %541 = lshr i32 %540, 16
  %542 = and i32 %541, 255
  %543 = icmp eq i32 %542, 18
  br i1 %543, label %544, label %549

; <label>:544:                                    ; preds = %530
  %545 = load i32, i32* @target_flags, align 4
  %546 = and i32 %545, 33554432
  %547 = icmp ne i32 %546, 0
  %548 = select i1 %547, i32 2, i32 3
  br label %598

; <label>:549:                                    ; preds = %530
  %550 = load %struct.function*, %struct.function** @cfun, align 8
  %551 = getelementptr inbounds %struct.function, %struct.function* %550, i32 0, i32 3
  %552 = load %struct.emit_status*, %struct.emit_status** %551, align 8
  %553 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %552, i32 0, i32 12
  %554 = load %struct.rtx_def**, %struct.rtx_def*** %553, align 8
  %555 = load i64, i64* %5, align 8
  %556 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %554, i64 %555
  %557 = load %struct.rtx_def*, %struct.rtx_def** %556, align 8
  %558 = bitcast %struct.rtx_def* %557 to i32*
  %559 = load i32, i32* %558, align 8
  %560 = lshr i32 %559, 16
  %561 = and i32 %560, 255
  %562 = icmp eq i32 %561, 24
  br i1 %562, label %563, label %568

; <label>:563:                                    ; preds = %549
  %564 = load i32, i32* @target_flags, align 4
  %565 = and i32 %564, 33554432
  %566 = icmp ne i32 %565, 0
  %567 = select i1 %566, i32 4, i32 6
  br label %596

; <label>:568:                                    ; preds = %549
  %569 = load %struct.function*, %struct.function** @cfun, align 8
  %570 = getelementptr inbounds %struct.function, %struct.function* %569, i32 0, i32 3
  %571 = load %struct.emit_status*, %struct.emit_status** %570, align 8
  %572 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %571, i32 0, i32 12
  %573 = load %struct.rtx_def**, %struct.rtx_def*** %572, align 8
  %574 = load i64, i64* %5, align 8
  %575 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %573, i64 %574
  %576 = load %struct.rtx_def*, %struct.rtx_def** %575, align 8
  %577 = bitcast %struct.rtx_def* %576 to i32*
  %578 = load i32, i32* %577, align 8
  %579 = lshr i32 %578, 16
  %580 = and i32 %579, 255
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %581
  %583 = load i8, i8* %582, align 1
  %584 = zext i8 %583 to i32
  %585 = load i32, i32* @target_flags, align 4
  %586 = and i32 %585, 33554432
  %587 = icmp ne i32 %586, 0
  %588 = select i1 %587, i32 8, i32 4
  %589 = add nsw i32 %584, %588
  %590 = sub nsw i32 %589, 1
  %591 = load i32, i32* @target_flags, align 4
  %592 = and i32 %591, 33554432
  %593 = icmp ne i32 %592, 0
  %594 = select i1 %593, i32 8, i32 4
  %595 = sdiv i32 %590, %594
  br label %596

; <label>:596:                                    ; preds = %568, %563
  %597 = phi i32 [ %567, %563 ], [ %595, %568 ]
  br label %598

; <label>:598:                                    ; preds = %596, %544
  %599 = phi i32 [ %548, %544 ], [ %597, %596 ]
  br label %600

; <label>:600:                                    ; preds = %598, %527
  %601 = phi i32 [ %529, %527 ], [ %599, %598 ]
  %602 = add nsw i32 %469, %601
  store i32 %602, i32* %11, align 4
  %603 = load i32, i32* %10, align 4
  store i32 %603, i32* %12, align 4
  br label %604

; <label>:604:                                    ; preds = %648, %600
  %605 = load i32, i32* %12, align 4
  %606 = load i32, i32* %11, align 4
  %607 = icmp slt i32 %605, %606
  br i1 %607, label %608, label %651

; <label>:608:                                    ; preds = %604
  %609 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %610 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %609, i32 0, i32 4
  %611 = bitcast %union.varray_data_tag* %610 to [1 x %struct.reg_info_def*]*
  %612 = load i64, i64* %5, align 8
  %613 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %611, i64 0, i64 %612
  %614 = load %struct.reg_info_def*, %struct.reg_info_def** %613, align 8
  %615 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %614, i32 0, i32 4
  %616 = load i32, i32* %615, align 4
  %617 = load i32, i32* %12, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_n_refs, i64 0, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = add nsw i32 %620, %616
  store i32 %621, i32* %619, align 4
  %622 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %623 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %622, i32 0, i32 4
  %624 = bitcast %union.varray_data_tag* %623 to [1 x %struct.reg_info_def*]*
  %625 = load i64, i64* %5, align 8
  %626 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %624, i64 0, i64 %625
  %627 = load %struct.reg_info_def*, %struct.reg_info_def** %626, align 8
  %628 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %627, i32 0, i32 5
  %629 = load i32, i32* %628, align 4
  %630 = load i32, i32* %12, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_freq, i64 0, i64 %631
  %633 = load i32, i32* %632, align 4
  %634 = add nsw i32 %633, %629
  store i32 %634, i32* %632, align 4
  %635 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %636 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %635, i32 0, i32 4
  %637 = bitcast %union.varray_data_tag* %636 to [1 x %struct.reg_info_def*]*
  %638 = load i64, i64* %5, align 8
  %639 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %637, i64 0, i64 %638
  %640 = load %struct.reg_info_def*, %struct.reg_info_def** %639, align 8
  %641 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %640, i32 0, i32 7
  %642 = load i32, i32* %641, align 4
  %643 = load i32, i32* %12, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_live_length, i64 0, i64 %644
  %646 = load i32, i32* %645, align 4
  %647 = add nsw i32 %646, %642
  store i32 %647, i32* %645, align 4
  br label %648

; <label>:648:                                    ; preds = %608
  %649 = load i32, i32* %12, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %12, align 4
  br label %604

; <label>:651:                                    ; preds = %604
  br label %652

; <label>:652:                                    ; preds = %651, %456
  br label %653

; <label>:653:                                    ; preds = %652
  %654 = load i64, i64* %5, align 8
  %655 = add i64 %654, 1
  store i64 %655, i64* %5, align 8
  br label %451

; <label>:656:                                    ; preds = %451
  store i64 0, i64* %5, align 8
  br label %657

; <label>:657:                                    ; preds = %671, %656
  %658 = load i64, i64* %5, align 8
  %659 = icmp ult i64 %658, 53
  br i1 %659, label %660, label %674

; <label>:660:                                    ; preds = %657
  %661 = load i64, i64* %5, align 8
  %662 = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i64 0, i64 %661
  %663 = load i8, i8* %662, align 1
  %664 = icmp ne i8 %663, 0
  br i1 %664, label %665, label %670

; <label>:665:                                    ; preds = %660
  %666 = load i64, i64* %5, align 8
  %667 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_n_refs, i64 0, i64 %666
  store i32 0, i32* %667, align 4
  %668 = load i64, i64* %5, align 8
  %669 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_freq, i64 0, i64 %668
  store i32 0, i32* %669, align 4
  br label %670

; <label>:670:                                    ; preds = %665, %660
  br label %671

; <label>:671:                                    ; preds = %670
  %672 = load i64, i64* %5, align 8
  %673 = add i64 %672, 1
  store i64 %673, i64* %5, align 8
  br label %657

; <label>:674:                                    ; preds = %657
  %675 = load i32, i32* @max_allocno, align 4
  %676 = add nsw i32 %675, 64
  %677 = sub nsw i32 %676, 1
  %678 = sdiv i32 %677, 64
  store i32 %678, i32* @allocno_row_words, align 4
  %679 = load i32, i32* @max_allocno, align 4
  %680 = load i32, i32* @allocno_row_words, align 4
  %681 = mul nsw i32 %679, %680
  %682 = sext i32 %681 to i64
  %683 = call noalias i8* @xcalloc(i64 %682, i64 8)
  %684 = bitcast i8* %683 to i64*
  store i64* %684, i64** @conflicts, align 8
  %685 = load i32, i32* @allocno_row_words, align 4
  %686 = sext i32 %685 to i64
  %687 = mul i64 %686, 8
  %688 = call noalias i8* @xmalloc(i64 %687)
  %689 = bitcast i8* %688 to i64*
  store i64* %689, i64** @allocnos_live, align 8
  %690 = load i32, i32* @max_allocno, align 4
  %691 = icmp sgt i32 %690, 0
  br i1 %691, label %692, label %875

; <label>:692:                                    ; preds = %674
  call void @global_conflicts()
  call void @mirror_conflicts()
  store i64 0, i64* %5, align 8
  br label %693

; <label>:693:                                    ; preds = %723, %692
  %694 = load i64, i64* %5, align 8
  %695 = load i32, i32* @max_allocno, align 4
  %696 = sext i32 %695 to i64
  %697 = icmp ult i64 %694, %696
  br i1 %697, label %698, label %726

; <label>:698:                                    ; preds = %693
  %699 = load i64, i64* @eliminable_regset, align 8
  %700 = xor i64 %699, -1
  %701 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %702 = load i64, i64* %5, align 8
  %703 = getelementptr inbounds %struct.allocno, %struct.allocno* %701, i64 %702
  %704 = getelementptr inbounds %struct.allocno, %struct.allocno* %703, i32 0, i32 6
  %705 = load i64, i64* %704, align 8
  %706 = and i64 %705, %700
  store i64 %706, i64* %704, align 8
  %707 = load i64, i64* @eliminable_regset, align 8
  %708 = xor i64 %707, -1
  %709 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %710 = load i64, i64* %5, align 8
  %711 = getelementptr inbounds %struct.allocno, %struct.allocno* %709, i64 %710
  %712 = getelementptr inbounds %struct.allocno, %struct.allocno* %711, i32 0, i32 8
  %713 = load i64, i64* %712, align 8
  %714 = and i64 %713, %708
  store i64 %714, i64* %712, align 8
  %715 = load i64, i64* @eliminable_regset, align 8
  %716 = xor i64 %715, -1
  %717 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %718 = load i64, i64* %5, align 8
  %719 = getelementptr inbounds %struct.allocno, %struct.allocno* %717, i64 %718
  %720 = getelementptr inbounds %struct.allocno, %struct.allocno* %719, i32 0, i32 7
  %721 = load i64, i64* %720, align 8
  %722 = and i64 %721, %716
  store i64 %722, i64* %720, align 8
  br label %723

; <label>:723:                                    ; preds = %698
  %724 = load i64, i64* %5, align 8
  %725 = add i64 %724, 1
  store i64 %725, i64* %5, align 8
  br label %693

; <label>:726:                                    ; preds = %693
  call void @expand_preferences()
  %727 = load i32, i32* @max_allocno, align 4
  %728 = sext i32 %727 to i64
  %729 = mul i64 %728, 4
  %730 = call noalias i8* @xmalloc(i64 %729)
  %731 = bitcast i8* %730 to i32*
  store i32* %731, i32** @allocno_order, align 8
  store i64 0, i64* %5, align 8
  br label %732

; <label>:732:                                    ; preds = %743, %726
  %733 = load i64, i64* %5, align 8
  %734 = load i32, i32* @max_allocno, align 4
  %735 = sext i32 %734 to i64
  %736 = icmp ult i64 %733, %735
  br i1 %736, label %737, label %746

; <label>:737:                                    ; preds = %732
  %738 = load i64, i64* %5, align 8
  %739 = trunc i64 %738 to i32
  %740 = load i32*, i32** @allocno_order, align 8
  %741 = load i64, i64* %5, align 8
  %742 = getelementptr inbounds i32, i32* %740, i64 %741
  store i32 %739, i32* %742, align 4
  br label %743

; <label>:743:                                    ; preds = %737
  %744 = load i64, i64* %5, align 8
  %745 = add i64 %744, 1
  store i64 %745, i64* %5, align 8
  br label %732

; <label>:746:                                    ; preds = %732
  store i64 0, i64* %5, align 8
  br label %747

; <label>:747:                                    ; preds = %777, %746
  %748 = load i64, i64* %5, align 8
  %749 = load i32, i32* @max_allocno, align 4
  %750 = sext i32 %749 to i64
  %751 = icmp ult i64 %748, %750
  br i1 %751, label %752, label %780

; <label>:752:                                    ; preds = %747
  %753 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %754 = load i64, i64* %5, align 8
  %755 = getelementptr inbounds %struct.allocno, %struct.allocno* %753, i64 %754
  %756 = getelementptr inbounds %struct.allocno, %struct.allocno* %755, i32 0, i32 1
  %757 = load i32, i32* %756, align 4
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %764

; <label>:759:                                    ; preds = %752
  %760 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %761 = load i64, i64* %5, align 8
  %762 = getelementptr inbounds %struct.allocno, %struct.allocno* %760, i64 %761
  %763 = getelementptr inbounds %struct.allocno, %struct.allocno* %762, i32 0, i32 1
  store i32 1, i32* %763, align 4
  br label %764

; <label>:764:                                    ; preds = %759, %752
  %765 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %766 = load i64, i64* %5, align 8
  %767 = getelementptr inbounds %struct.allocno, %struct.allocno* %765, i64 %766
  %768 = getelementptr inbounds %struct.allocno, %struct.allocno* %767, i32 0, i32 5
  %769 = load i32, i32* %768, align 4
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %771, label %776

; <label>:771:                                    ; preds = %764
  %772 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %773 = load i64, i64* %5, align 8
  %774 = getelementptr inbounds %struct.allocno, %struct.allocno* %772, i64 %773
  %775 = getelementptr inbounds %struct.allocno, %struct.allocno* %774, i32 0, i32 5
  store i32 -1, i32* %775, align 4
  br label %776

; <label>:776:                                    ; preds = %771, %764
  br label %777

; <label>:777:                                    ; preds = %776
  %778 = load i64, i64* %5, align 8
  %779 = add i64 %778, 1
  store i64 %779, i64* %5, align 8
  br label %747

; <label>:780:                                    ; preds = %747
  %781 = load i32*, i32** @allocno_order, align 8
  %782 = bitcast i32* %781 to i8*
  %783 = load i32, i32* @max_allocno, align 4
  call void @specqsort(i8* %782, i32 %783, i32 4, i32 (...)* bitcast (i32 (i8*, i8*)* @allocno_compare to i32 (...)*))
  call void @prune_preferences()
  %784 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %785 = icmp ne %struct._IO_FILE* %784, null
  br i1 %785, label %786, label %788

; <label>:786:                                    ; preds = %780
  %787 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @dump_conflicts(%struct._IO_FILE* %787)
  br label %788

; <label>:788:                                    ; preds = %786, %780
  store i64 0, i64* %5, align 8
  br label %789

; <label>:789:                                    ; preds = %869, %788
  %790 = load i64, i64* %5, align 8
  %791 = load i32, i32* @max_allocno, align 4
  %792 = sext i32 %791 to i64
  %793 = icmp ult i64 %790, %792
  br i1 %793, label %794, label %872

; <label>:794:                                    ; preds = %789
  %795 = load i16*, i16** @reg_renumber, align 8
  %796 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %797 = load i32*, i32** @allocno_order, align 8
  %798 = load i64, i64* %5, align 8
  %799 = getelementptr inbounds i32, i32* %797, i64 %798
  %800 = load i32, i32* %799, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds %struct.allocno, %struct.allocno* %796, i64 %801
  %803 = getelementptr inbounds %struct.allocno, %struct.allocno* %802, i32 0, i32 0
  %804 = load i32, i32* %803, align 8
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds i16, i16* %795, i64 %805
  %807 = load i16, i16* %806, align 2
  %808 = sext i16 %807 to i32
  %809 = icmp slt i32 %808, 0
  br i1 %809, label %810, label %868

; <label>:810:                                    ; preds = %794
  %811 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %812 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %811, i32 0, i32 4
  %813 = bitcast %union.varray_data_tag* %812 to [1 x %struct.reg_info_def*]*
  %814 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %815 = load i32*, i32** @allocno_order, align 8
  %816 = load i64, i64* %5, align 8
  %817 = getelementptr inbounds i32, i32* %815, i64 %816
  %818 = load i32, i32* %817, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds %struct.allocno, %struct.allocno* %814, i64 %819
  %821 = getelementptr inbounds %struct.allocno, %struct.allocno* %820, i32 0, i32 0
  %822 = load i32, i32* %821, align 8
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %813, i64 0, i64 %823
  %825 = load %struct.reg_info_def*, %struct.reg_info_def** %824, align 8
  %826 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %825, i32 0, i32 7
  %827 = load i32, i32* %826, align 4
  %828 = icmp sge i32 %827, 0
  br i1 %828, label %829, label %868

; <label>:829:                                    ; preds = %810
  %830 = load i32*, i32** @allocno_order, align 8
  %831 = load i64, i64* %5, align 8
  %832 = getelementptr inbounds i32, i32* %830, i64 %831
  %833 = load i32, i32* %832, align 4
  call void @find_reg(i32 %833, i64 0, i32 0, i32 0, i32 0)
  %834 = load i16*, i16** @reg_renumber, align 8
  %835 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %836 = load i32*, i32** @allocno_order, align 8
  %837 = load i64, i64* %5, align 8
  %838 = getelementptr inbounds i32, i32* %836, i64 %837
  %839 = load i32, i32* %838, align 4
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds %struct.allocno, %struct.allocno* %835, i64 %840
  %842 = getelementptr inbounds %struct.allocno, %struct.allocno* %841, i32 0, i32 0
  %843 = load i32, i32* %842, align 8
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds i16, i16* %834, i64 %844
  %846 = load i16, i16* %845, align 2
  %847 = sext i16 %846 to i32
  %848 = icmp sge i32 %847, 0
  br i1 %848, label %849, label %850

; <label>:849:                                    ; preds = %829
  br label %869

; <label>:850:                                    ; preds = %829
  %851 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %852 = load i32*, i32** @allocno_order, align 8
  %853 = load i64, i64* %5, align 8
  %854 = getelementptr inbounds i32, i32* %852, i64 %853
  %855 = load i32, i32* %854, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds %struct.allocno, %struct.allocno* %851, i64 %856
  %858 = getelementptr inbounds %struct.allocno, %struct.allocno* %857, i32 0, i32 0
  %859 = load i32, i32* %858, align 8
  %860 = call i32 @reg_alternate_class(i32 %859)
  %861 = icmp ne i32 %860, 0
  br i1 %861, label %862, label %867

; <label>:862:                                    ; preds = %850
  %863 = load i32*, i32** @allocno_order, align 8
  %864 = load i64, i64* %5, align 8
  %865 = getelementptr inbounds i32, i32* %863, i64 %864
  %866 = load i32, i32* %865, align 4
  call void @find_reg(i32 %866, i64 0, i32 1, i32 0, i32 0)
  br label %867

; <label>:867:                                    ; preds = %862, %850
  br label %868

; <label>:868:                                    ; preds = %867, %810, %794
  br label %869

; <label>:869:                                    ; preds = %868, %849
  %870 = load i64, i64* %5, align 8
  %871 = add i64 %870, 1
  store i64 %871, i64* %5, align 8
  br label %789

; <label>:872:                                    ; preds = %789
  %873 = load i32*, i32** @allocno_order, align 8
  %874 = bitcast i32* %873 to i8*
  call void @free(i8* %874) #6
  br label %875

; <label>:875:                                    ; preds = %872, %674
  %876 = call %struct.rtx_def* @get_insns()
  call void @build_insn_chain(%struct.rtx_def* %876)
  %877 = call %struct.rtx_def* @get_insns()
  %878 = call i32 @reload(%struct.rtx_def* %877, i32 1)
  store i32 %878, i32* %3, align 4
  %879 = load i32*, i32** @reg_allocno, align 8
  %880 = bitcast i32* %879 to i8*
  call void @free(i8* %880) #6
  %881 = load i32*, i32** @reg_may_share, align 8
  %882 = bitcast i32* %881 to i8*
  call void @free(i8* %882) #6
  %883 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %884 = bitcast %struct.allocno* %883 to i8*
  call void @free(i8* %884) #6
  %885 = load i64*, i64** @conflicts, align 8
  %886 = bitcast i64* %885 to i8*
  call void @free(i8* %886) #6
  %887 = load i64*, i64** @allocnos_live, align 8
  %888 = bitcast i64* %887 to i8*
  call void @free(i8* %888) #6
  %889 = load i32, i32* %3, align 4
  ret i32 %889
}

declare i32 @ix86_frame_pointer_required() #1

declare noalias i8* @xmalloc(i64) #1

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: noinline nounwind uwtable
define internal void @global_conflicts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bitmap_head_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_element_def*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.edge_def*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtx_def*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.rtx_def*, align 8
  %20 = alloca %struct.rtx_def*, align 8
  %21 = alloca %struct.rtx_def*, align 8
  %22 = load i32, i32* @max_parallel, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = mul i64 %24, 2
  %26 = call noalias i8* @xmalloc(i64 %25)
  %27 = bitcast i8* %26 to %struct.rtx_def**
  store %struct.rtx_def** %27, %struct.rtx_def*** @regs_set, align 8
  %28 = load i32, i32* @max_allocno, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = call noalias i8* @xmalloc(i64 %30)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %4, align 8
  store i32 0, i32* %1, align 4
  br label %33

; <label>:33:                                     ; preds = %463, %0
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @n_basic_blocks, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %466

; <label>:37:                                     ; preds = %33
  %38 = load i64*, i64** @allocnos_live, align 8
  %39 = bitcast i64* %38 to i8*
  %40 = load i32, i32* @allocno_row_words, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 %42, i32 1, i1 false)
  %43 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %44 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %43, i32 0, i32 4
  %45 = bitcast %union.varray_data_tag* %44 to [1 x %struct.basic_block_def*]*
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %45, i64 0, i64 %47
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %48, align 8
  %50 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 8
  %51 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %50, align 8
  store %struct.bitmap_head_def* %51, %struct.bitmap_head_def** %5, align 8
  store i32 0, i32* %6, align 4
  br label %52

; <label>:52:                                     ; preds = %37
  store i64 0, i64* @hard_regs_live, align 8
  %53 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %5, align 8
  call void @reg_set_to_hard_reg_set(i64* @hard_regs_live, %struct.bitmap_head_def* %53)
  br label %54

; <label>:54:                                     ; preds = %52
  br label %55

; <label>:55:                                     ; preds = %54
  %56 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %5, align 8
  %57 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %56, i32 0, i32 0
  %58 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %57, align 8
  store %struct.bitmap_element_def* %58, %struct.bitmap_element_def** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 53, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %59

; <label>:59:                                     ; preds = %70, %55
  %60 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %7, align 8
  %61 = icmp ne %struct.bitmap_element_def* %60, null
  br i1 %61, label %62, label %68

; <label>:62:                                     ; preds = %59
  %63 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %7, align 8
  %64 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = icmp ult i32 %65, %66
  br label %68

; <label>:68:                                     ; preds = %62, %59
  %69 = phi i1 [ false, %59 ], [ %67, %62 ]
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %68
  %71 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %7, align 8
  %72 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %71, i32 0, i32 0
  %73 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %72, align 8
  store %struct.bitmap_element_def* %73, %struct.bitmap_element_def** %7, align 8
  br label %59

; <label>:74:                                     ; preds = %68
  %75 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %7, align 8
  %76 = icmp ne %struct.bitmap_element_def* %75, null
  br i1 %76, label %77, label %84

; <label>:77:                                     ; preds = %74
  %78 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %7, align 8
  %79 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %77
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %84

; <label>:84:                                     ; preds = %83, %77, %74
  br label %85

; <label>:85:                                     ; preds = %191, %84
  %86 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %7, align 8
  %87 = icmp ne %struct.bitmap_element_def* %86, null
  br i1 %87, label %88, label %195

; <label>:88:                                     ; preds = %85
  br label %89

; <label>:89:                                     ; preds = %187, %88
  %90 = load i32, i32* %10, align 4
  %91 = icmp ult i32 %90, 2
  br i1 %91, label %92, label %190

; <label>:92:                                     ; preds = %89
  %93 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %7, align 8
  %94 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %93, i32 0, i32 3
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i64], [2 x i64]* %94, i64 0, i64 %96
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %186

; <label>:101:                                    ; preds = %92
  br label %102

; <label>:102:                                    ; preds = %182, %101
  %103 = load i32, i32* %9, align 4
  %104 = icmp ult i32 %103, 64
  br i1 %104, label %105, label %185

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = shl i64 1, %107
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %181

; <label>:113:                                    ; preds = %105
  %114 = load i64, i64* %12, align 8
  %115 = xor i64 %114, -1
  %116 = load i64, i64* %11, align 8
  %117 = and i64 %116, %115
  store i64 %117, i64* %11, align 8
  %118 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %7, align 8
  %119 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = mul i32 %120, 128
  %122 = load i32, i32* %10, align 4
  %123 = mul i32 %122, 64
  %124 = add i32 %121, %123
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %124, %125
  store i32 %126, i32* %2, align 4
  %127 = load i32*, i32** @reg_allocno, align 8
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %152

; <label>:134:                                    ; preds = %113
  %135 = load i32, i32* %13, align 4
  %136 = urem i32 %135, 64
  %137 = zext i32 %136 to i64
  %138 = shl i64 1, %137
  %139 = load i64*, i64** @allocnos_live, align 8
  %140 = load i32, i32* %13, align 4
  %141 = udiv i32 %140, 64
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %139, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = or i64 %144, %138
  store i64 %145, i64* %143, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32*, i32** %4, align 8
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  br label %176

; <label>:152:                                    ; preds = %113
  %153 = load i16*, i16** @reg_renumber, align 8
  %154 = load i32, i32* %2, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i16, i16* %153, i64 %155
  %157 = load i16, i16* %156, align 2
  %158 = sext i16 %157 to i32
  store i32 %158, i32* %13, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %175

; <label>:160:                                    ; preds = %152
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.function*, %struct.function** @cfun, align 8
  %163 = getelementptr inbounds %struct.function, %struct.function* %162, i32 0, i32 3
  %164 = load %struct.emit_status*, %struct.emit_status** %163, align 8
  %165 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %164, i32 0, i32 12
  %166 = load %struct.rtx_def**, %struct.rtx_def*** %165, align 8
  %167 = load i32, i32* %2, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %166, i64 %168
  %170 = load %struct.rtx_def*, %struct.rtx_def** %169, align 8
  %171 = bitcast %struct.rtx_def* %170 to i32*
  %172 = load i32, i32* %171, align 8
  %173 = lshr i32 %172, 16
  %174 = and i32 %173, 255
  call void @mark_reg_live_nc(i32 %161, i32 %174)
  br label %175

; <label>:175:                                    ; preds = %160, %152
  br label %176

; <label>:176:                                    ; preds = %175, %134
  %177 = load i64, i64* %11, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %180

; <label>:179:                                    ; preds = %176
  br label %185

; <label>:180:                                    ; preds = %176
  br label %181

; <label>:181:                                    ; preds = %180, %105
  br label %182

; <label>:182:                                    ; preds = %181
  %183 = load i32, i32* %9, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %9, align 4
  br label %102

; <label>:185:                                    ; preds = %179, %102
  br label %186

; <label>:186:                                    ; preds = %185, %92
  store i32 0, i32* %9, align 4
  br label %187

; <label>:187:                                    ; preds = %186
  %188 = load i32, i32* %10, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %89

; <label>:190:                                    ; preds = %89
  store i32 0, i32* %10, align 4
  br label %191

; <label>:191:                                    ; preds = %190
  %192 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %7, align 8
  %193 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %192, i32 0, i32 0
  %194 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %193, align 8
  store %struct.bitmap_element_def* %194, %struct.bitmap_element_def** %7, align 8
  br label %85

; <label>:195:                                    ; preds = %85
  br label %196

; <label>:196:                                    ; preds = %195
  %197 = load i32*, i32** %4, align 8
  %198 = load i32, i32* %6, align 4
  call void @record_conflicts(i32* %197, i32 %198)
  %199 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %200 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %199, i32 0, i32 4
  %201 = bitcast %union.varray_data_tag* %200 to [1 x %struct.basic_block_def*]*
  %202 = load i32, i32* %1, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %201, i64 0, i64 %203
  %205 = load %struct.basic_block_def*, %struct.basic_block_def** %204, align 8
  %206 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %205, i32 0, i32 4
  %207 = load %struct.edge_def*, %struct.edge_def** %206, align 8
  store %struct.edge_def* %207, %struct.edge_def** %14, align 8
  br label %208

; <label>:208:                                    ; preds = %219, %196
  %209 = load %struct.edge_def*, %struct.edge_def** %14, align 8
  %210 = icmp ne %struct.edge_def* %209, null
  br i1 %210, label %211, label %223

; <label>:211:                                    ; preds = %208
  %212 = load %struct.edge_def*, %struct.edge_def** %14, align 8
  %213 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, 2
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

; <label>:217:                                    ; preds = %211
  br label %223

; <label>:218:                                    ; preds = %211
  br label %219

; <label>:219:                                    ; preds = %218
  %220 = load %struct.edge_def*, %struct.edge_def** %14, align 8
  %221 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %220, i32 0, i32 0
  %222 = load %struct.edge_def*, %struct.edge_def** %221, align 8
  store %struct.edge_def* %222, %struct.edge_def** %14, align 8
  br label %208

; <label>:223:                                    ; preds = %217, %208
  %224 = load %struct.edge_def*, %struct.edge_def** %14, align 8
  %225 = icmp ne %struct.edge_def* %224, null
  br i1 %225, label %226, label %236

; <label>:226:                                    ; preds = %223
  store i32 8, i32* %6, align 4
  br label %227

; <label>:227:                                    ; preds = %232, %226
  %228 = load i32, i32* %6, align 4
  %229 = icmp sle i32 %228, 15
  br i1 %229, label %230, label %235

; <label>:230:                                    ; preds = %227
  %231 = load i32, i32* %6, align 4
  call void @record_one_conflict(i32 %231)
  br label %232

; <label>:232:                                    ; preds = %230
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %6, align 4
  br label %227

; <label>:235:                                    ; preds = %227
  br label %236

; <label>:236:                                    ; preds = %235, %223
  %237 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %238 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %237, i32 0, i32 4
  %239 = bitcast %union.varray_data_tag* %238 to [1 x %struct.basic_block_def*]*
  %240 = load i32, i32* %1, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %239, i64 0, i64 %241
  %243 = load %struct.basic_block_def*, %struct.basic_block_def** %242, align 8
  %244 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %243, i32 0, i32 0
  %245 = load %struct.rtx_def*, %struct.rtx_def** %244, align 8
  store %struct.rtx_def* %245, %struct.rtx_def** %3, align 8
  br label %246

; <label>:246:                                    ; preds = %456, %236
  %247 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %248 = bitcast %struct.rtx_def* %247 to i32*
  %249 = load i32, i32* %248, align 8
  %250 = and i32 %249, 65535
  store i32 %250, i32* %15, align 4
  store i32 0, i32* @n_regs_set, align 4
  %251 = load i32, i32* %15, align 4
  %252 = icmp eq i32 %251, 32
  br i1 %252, label %259, label %253

; <label>:253:                                    ; preds = %246
  %254 = load i32, i32* %15, align 4
  %255 = icmp eq i32 %254, 34
  br i1 %255, label %259, label %256

; <label>:256:                                    ; preds = %253
  %257 = load i32, i32* %15, align 4
  %258 = icmp eq i32 %257, 33
  br i1 %258, label %259, label %443

; <label>:259:                                    ; preds = %256, %253, %246
  %260 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %261 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %260, i32 0, i32 1
  %262 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %261, i64 0, i64 3
  %263 = bitcast %union.rtunion_def* %262 to %struct.rtx_def**
  %264 = load %struct.rtx_def*, %struct.rtx_def** %263, align 8
  call void @note_stores(%struct.rtx_def* %264, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @mark_reg_clobber, i8* null)
  %265 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %266 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %267 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %266, i64 0, i64 6
  %268 = bitcast %union.rtunion_def* %267 to %struct.rtx_def**
  %269 = load %struct.rtx_def*, %struct.rtx_def** %268, align 8
  store %struct.rtx_def* %269, %struct.rtx_def** %16, align 8
  br label %270

; <label>:270:                                    ; preds = %287, %259
  %271 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %272 = icmp ne %struct.rtx_def* %271, null
  br i1 %272, label %273, label %293

; <label>:273:                                    ; preds = %270
  %274 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %275 = bitcast %struct.rtx_def* %274 to i32*
  %276 = load i32, i32* %275, align 8
  %277 = lshr i32 %276, 16
  %278 = and i32 %277, 255
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %286

; <label>:280:                                    ; preds = %273
  %281 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %282 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %281, i32 0, i32 1
  %283 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %282, i64 0, i64 0
  %284 = bitcast %union.rtunion_def* %283 to %struct.rtx_def**
  %285 = load %struct.rtx_def*, %struct.rtx_def** %284, align 8
  call void @mark_reg_death(%struct.rtx_def* %285)
  br label %286

; <label>:286:                                    ; preds = %280, %273
  br label %287

; <label>:287:                                    ; preds = %286
  %288 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %289 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %288, i32 0, i32 1
  %290 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %289, i64 0, i64 1
  %291 = bitcast %union.rtunion_def* %290 to %struct.rtx_def**
  %292 = load %struct.rtx_def*, %struct.rtx_def** %291, align 8
  store %struct.rtx_def* %292, %struct.rtx_def** %16, align 8
  br label %270

; <label>:293:                                    ; preds = %270
  %294 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %295 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %294, i32 0, i32 1
  %296 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %295, i64 0, i64 3
  %297 = bitcast %union.rtunion_def* %296 to %struct.rtx_def**
  %298 = load %struct.rtx_def*, %struct.rtx_def** %297, align 8
  call void @note_stores(%struct.rtx_def* %298, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @mark_reg_store, i8* null)
  %299 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %299, i32 0, i32 1
  %301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %300, i64 0, i64 3
  %302 = bitcast %union.rtunion_def* %301 to %struct.rtx_def**
  %303 = load %struct.rtx_def*, %struct.rtx_def** %302, align 8
  %304 = bitcast %struct.rtx_def* %303 to i32*
  %305 = load i32, i32* %304, align 8
  %306 = and i32 %305, 65535
  %307 = icmp eq i32 %306, 39
  br i1 %307, label %308, label %416

; <label>:308:                                    ; preds = %293
  %309 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %310 = call i32 @multiple_sets(%struct.rtx_def* %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %416

; <label>:312:                                    ; preds = %308
  %313 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %314 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %313, i32 0, i32 1
  %315 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %314, i64 0, i64 6
  %316 = bitcast %union.rtunion_def* %315 to %struct.rtx_def**
  %317 = load %struct.rtx_def*, %struct.rtx_def** %316, align 8
  store %struct.rtx_def* %317, %struct.rtx_def** %16, align 8
  br label %318

; <label>:318:                                    ; preds = %409, %312
  %319 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %320 = icmp ne %struct.rtx_def* %319, null
  br i1 %320, label %321, label %415

; <label>:321:                                    ; preds = %318
  %322 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %323 = bitcast %struct.rtx_def* %322 to i32*
  %324 = load i32, i32* %323, align 8
  %325 = lshr i32 %324, 16
  %326 = and i32 %325, 255
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %328, label %408

; <label>:328:                                    ; preds = %321
  store i32 0, i32* %17, align 4
  %329 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %330 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %329, i32 0, i32 1
  %331 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %330, i64 0, i64 0
  %332 = bitcast %union.rtunion_def* %331 to %struct.rtx_def**
  %333 = load %struct.rtx_def*, %struct.rtx_def** %332, align 8
  store %struct.rtx_def* %333, %struct.rtx_def** %19, align 8
  %334 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %335 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %334, i32 0, i32 1
  %336 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %335, i64 0, i64 3
  %337 = bitcast %union.rtunion_def* %336 to %struct.rtx_def**
  %338 = load %struct.rtx_def*, %struct.rtx_def** %337, align 8
  %339 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %338, i32 0, i32 1
  %340 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %339, i64 0, i64 0
  %341 = bitcast %union.rtunion_def* %340 to %struct.rtvec_def**
  %342 = load %struct.rtvec_def*, %struct.rtvec_def** %341, align 8
  %343 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = sub nsw i32 %344, 1
  store i32 %345, i32* %18, align 4
  br label %346

; <label>:346:                                    ; preds = %399, %328
  %347 = load i32, i32* %18, align 4
  %348 = icmp sge i32 %347, 0
  br i1 %348, label %349, label %402

; <label>:349:                                    ; preds = %346
  %350 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %351 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %350, i32 0, i32 1
  %352 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %351, i64 0, i64 3
  %353 = bitcast %union.rtunion_def* %352 to %struct.rtx_def**
  %354 = load %struct.rtx_def*, %struct.rtx_def** %353, align 8
  %355 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %354, i32 0, i32 1
  %356 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %355, i64 0, i64 0
  %357 = bitcast %union.rtunion_def* %356 to %struct.rtvec_def**
  %358 = load %struct.rtvec_def*, %struct.rtvec_def** %357, align 8
  %359 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %358, i32 0, i32 1
  %360 = load i32, i32* %18, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %359, i64 0, i64 %361
  %363 = load %struct.rtx_def*, %struct.rtx_def** %362, align 8
  store %struct.rtx_def* %363, %struct.rtx_def** %20, align 8
  %364 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %365 = bitcast %struct.rtx_def* %364 to i32*
  %366 = load i32, i32* %365, align 8
  %367 = and i32 %366, 65535
  %368 = icmp eq i32 %367, 47
  br i1 %368, label %369, label %398

; <label>:369:                                    ; preds = %349
  %370 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %371 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %370, i32 0, i32 1
  %372 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %371, i64 0, i64 0
  %373 = bitcast %union.rtunion_def* %372 to %struct.rtx_def**
  %374 = load %struct.rtx_def*, %struct.rtx_def** %373, align 8
  %375 = bitcast %struct.rtx_def* %374 to i32*
  %376 = load i32, i32* %375, align 8
  %377 = and i32 %376, 65535
  %378 = icmp ne i32 %377, 61
  br i1 %378, label %379, label %398

; <label>:379:                                    ; preds = %369
  %380 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %381 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %382 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %381, i32 0, i32 1
  %383 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %382, i64 0, i64 0
  %384 = bitcast %union.rtunion_def* %383 to %struct.rtx_def**
  %385 = load %struct.rtx_def*, %struct.rtx_def** %384, align 8
  %386 = call i32 @rtx_equal_p(%struct.rtx_def* %380, %struct.rtx_def* %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %398, label %388

; <label>:388:                                    ; preds = %379
  %389 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %390 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %391 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %390, i32 0, i32 1
  %392 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %391, i64 0, i64 0
  %393 = bitcast %union.rtunion_def* %392 to %struct.rtx_def**
  %394 = load %struct.rtx_def*, %struct.rtx_def** %393, align 8
  %395 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %389, %struct.rtx_def* %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %398

; <label>:397:                                    ; preds = %388
  store i32 1, i32* %17, align 4
  br label %398

; <label>:398:                                    ; preds = %397, %388, %379, %369, %349
  br label %399

; <label>:399:                                    ; preds = %398
  %400 = load i32, i32* %18, align 4
  %401 = add nsw i32 %400, -1
  store i32 %401, i32* %18, align 4
  br label %346

; <label>:402:                                    ; preds = %346
  %403 = load i32, i32* %17, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %407

; <label>:405:                                    ; preds = %402
  %406 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  call void @mark_reg_conflicts(%struct.rtx_def* %406)
  br label %407

; <label>:407:                                    ; preds = %405, %402
  br label %408

; <label>:408:                                    ; preds = %407, %321
  br label %409

; <label>:409:                                    ; preds = %408
  %410 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %411 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %410, i32 0, i32 1
  %412 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %411, i64 0, i64 1
  %413 = bitcast %union.rtunion_def* %412 to %struct.rtx_def**
  %414 = load %struct.rtx_def*, %struct.rtx_def** %413, align 8
  store %struct.rtx_def* %414, %struct.rtx_def** %16, align 8
  br label %318

; <label>:415:                                    ; preds = %318
  br label %416

; <label>:416:                                    ; preds = %415, %308, %293
  br label %417

; <label>:417:                                    ; preds = %441, %416
  %418 = load i32, i32* @n_regs_set, align 4
  %419 = add nsw i32 %418, -1
  store i32 %419, i32* @n_regs_set, align 4
  %420 = icmp sgt i32 %418, 0
  br i1 %420, label %421, label %442

; <label>:421:                                    ; preds = %417
  %422 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %423 = load %struct.rtx_def**, %struct.rtx_def*** @regs_set, align 8
  %424 = load i32, i32* @n_regs_set, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %423, i64 %425
  %427 = load %struct.rtx_def*, %struct.rtx_def** %426, align 8
  %428 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %427, i32 0, i32 1
  %429 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %428, i64 0, i64 0
  %430 = bitcast %union.rtunion_def* %429 to i32*
  %431 = load i32, i32* %430, align 8
  %432 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %422, i32 10, i32 %431)
  store %struct.rtx_def* %432, %struct.rtx_def** %21, align 8
  %433 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %434 = icmp ne %struct.rtx_def* %433, null
  br i1 %434, label %435, label %441

; <label>:435:                                    ; preds = %421
  %436 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %437 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %436, i32 0, i32 1
  %438 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %437, i64 0, i64 0
  %439 = bitcast %union.rtunion_def* %438 to %struct.rtx_def**
  %440 = load %struct.rtx_def*, %struct.rtx_def** %439, align 8
  call void @mark_reg_death(%struct.rtx_def* %440)
  br label %441

; <label>:441:                                    ; preds = %435, %421
  br label %417

; <label>:442:                                    ; preds = %417
  br label %443

; <label>:443:                                    ; preds = %442, %256
  %444 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %445 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %446 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %445, i32 0, i32 4
  %447 = bitcast %union.varray_data_tag* %446 to [1 x %struct.basic_block_def*]*
  %448 = load i32, i32* %1, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %447, i64 0, i64 %449
  %451 = load %struct.basic_block_def*, %struct.basic_block_def** %450, align 8
  %452 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %451, i32 0, i32 1
  %453 = load %struct.rtx_def*, %struct.rtx_def** %452, align 8
  %454 = icmp eq %struct.rtx_def* %444, %453
  br i1 %454, label %455, label %456

; <label>:455:                                    ; preds = %443
  br label %462

; <label>:456:                                    ; preds = %443
  %457 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %458 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %457, i32 0, i32 1
  %459 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %458, i64 0, i64 2
  %460 = bitcast %union.rtunion_def* %459 to %struct.rtx_def**
  %461 = load %struct.rtx_def*, %struct.rtx_def** %460, align 8
  store %struct.rtx_def* %461, %struct.rtx_def** %3, align 8
  br label %246

; <label>:462:                                    ; preds = %455
  br label %463

; <label>:463:                                    ; preds = %462
  %464 = load i32, i32* %1, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %1, align 4
  br label %33

; <label>:466:                                    ; preds = %33
  %467 = load i32*, i32** %4, align 8
  %468 = bitcast i32* %467 to i8*
  call void @free(i8* %468) #6
  %469 = load %struct.rtx_def**, %struct.rtx_def*** @regs_set, align 8
  %470 = bitcast %struct.rtx_def** %469 to i8*
  call void @free(i8* %470) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @mirror_conflicts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = load i32, i32* @allocno_row_words, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 64
  store i32 %13, i32* %4, align 4
  %14 = load i64*, i64** @conflicts, align 8
  store i64* %14, i64** %5, align 8
  %15 = load i64*, i64** @conflicts, align 8
  store i64* %15, i64** %6, align 8
  %16 = load i32, i32* @max_allocno, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  store i64 1, i64* %9, align 8
  br label %18

; <label>:18:                                     ; preds = %68, %0
  %19 = load i32, i32* %1, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %73

; <label>:21:                                     ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

; <label>:24:                                     ; preds = %21
  store i64 1, i64* %9, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %6, align 8
  br label %27

; <label>:27:                                     ; preds = %24, %21
  %28 = load i32, i32* @allocno_row_words, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  %30 = load i64*, i64** %6, align 8
  store i64* %30, i64** %7, align 8
  br label %31

; <label>:31:                                     ; preds = %60, %27
  %32 = load i32, i32* %2, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %67

; <label>:34:                                     ; preds = %31
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %5, align 8
  %37 = load i64, i64* %35, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i64*, i64** %7, align 8
  store i64* %38, i64** %8, align 8
  br label %39

; <label>:39:                                     ; preds = %52, %34
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %10, align 8
  %44 = and i64 %43, 1
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

; <label>:46:                                     ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %47
  store i64 %50, i64* %48, align 8
  br label %51

; <label>:51:                                     ; preds = %46, %42
  br label %52

; <label>:52:                                     ; preds = %51
  %53 = load i64, i64* %10, align 8
  %54 = lshr i64 %53, 1
  store i64 %54, i64* %10, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i64*, i64** %8, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64* %58, i64** %8, align 8
  br label %39

; <label>:59:                                     ; preds = %39
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i64*, i64** %7, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64* %66, i64** %7, align 8
  br label %31

; <label>:67:                                     ; preds = %31
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %1, align 4
  %71 = load i64, i64* %9, align 8
  %72 = shl i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %18

; <label>:73:                                     ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @expand_preferences() #0 {
  %1 = alloca %struct.rtx_def*, align 8
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %6, %struct.rtx_def** %1, align 8
  br label %7

; <label>:7:                                      ; preds = %306, %0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %9 = icmp ne %struct.rtx_def* %8, null
  br i1 %9, label %10, label %312

; <label>:10:                                     ; preds = %7
  %11 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 65535
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 105
  br i1 %19, label %20, label %305

; <label>:20:                                     ; preds = %10
  %21 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 65535
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 105
  br i1 %29, label %30, label %56

; <label>:30:                                     ; preds = %20
  %31 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %32, i64 0, i64 3
  %34 = bitcast %union.rtunion_def* %33 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %46

; <label>:40:                                     ; preds = %30
  %41 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %42, i64 0, i64 3
  %44 = bitcast %union.rtunion_def* %43 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %44, align 8
  br label %54

; <label>:46:                                     ; preds = %30
  %47 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %49, i64 0, i64 3
  %51 = bitcast %union.rtunion_def* %50 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %51, align 8
  %53 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %47, %struct.rtx_def* %52)
  br label %54

; <label>:54:                                     ; preds = %46, %40
  %55 = phi %struct.rtx_def* [ %45, %40 ], [ %53, %46 ]
  br label %57

; <label>:56:                                     ; preds = %20
  br label %57

; <label>:57:                                     ; preds = %56, %54
  %58 = phi %struct.rtx_def* [ %55, %54 ], [ null, %56 ]
  store %struct.rtx_def* %58, %struct.rtx_def** %3, align 8
  %59 = icmp ne %struct.rtx_def* %58, null
  br i1 %59, label %60, label %305

; <label>:60:                                     ; preds = %57
  %61 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %62, i64 0, i64 0
  %64 = bitcast %union.rtunion_def* %63 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %64, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 61
  br i1 %69, label %70, label %305

; <label>:70:                                     ; preds = %60
  %71 = load i32*, i32** @reg_allocno, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %73, i64 0, i64 0
  %75 = bitcast %union.rtunion_def* %74 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %75, align 8
  %77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %77, i64 0, i64 0
  %79 = bitcast %union.rtunion_def* %78 to i32*
  %80 = load i32, i32* %79, align 8
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %71, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %305

; <label>:85:                                     ; preds = %70
  %86 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %87, i64 0, i64 6
  %89 = bitcast %union.rtunion_def* %88 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %89, align 8
  store %struct.rtx_def* %90, %struct.rtx_def** %2, align 8
  br label %91

; <label>:91:                                     ; preds = %298, %85
  %92 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %93 = icmp ne %struct.rtx_def* %92, null
  br i1 %93, label %94, label %304

; <label>:94:                                     ; preds = %91
  %95 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %97 = load i32, i32* %96, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %297

; <label>:101:                                    ; preds = %94
  %102 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %103, i64 0, i64 0
  %105 = bitcast %union.rtunion_def* %104 to %struct.rtx_def**
  %106 = load %struct.rtx_def*, %struct.rtx_def** %105, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, 65535
  %110 = icmp eq i32 %109, 61
  br i1 %110, label %111, label %297

; <label>:111:                                    ; preds = %101
  %112 = load i32*, i32** @reg_allocno, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %114, i64 0, i64 0
  %116 = bitcast %union.rtunion_def* %115 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %116, align 8
  %118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %118, i64 0, i64 0
  %120 = bitcast %union.rtunion_def* %119 to i32*
  %121 = load i32, i32* %120, align 8
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %112, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %297

; <label>:126:                                    ; preds = %111
  %127 = load i64*, i64** @conflicts, align 8
  %128 = load i32*, i32** @reg_allocno, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %130, i64 0, i64 0
  %132 = bitcast %union.rtunion_def* %131 to %struct.rtx_def**
  %133 = load %struct.rtx_def*, %struct.rtx_def** %132, align 8
  %134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %134, i64 0, i64 0
  %136 = bitcast %union.rtunion_def* %135 to i32*
  %137 = load i32, i32* %136, align 8
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %128, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @allocno_row_words, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32*, i32** @reg_allocno, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %145, i64 0, i64 0
  %147 = bitcast %union.rtunion_def* %146 to %struct.rtx_def**
  %148 = load %struct.rtx_def*, %struct.rtx_def** %147, align 8
  %149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %149, i64 0, i64 0
  %151 = bitcast %union.rtunion_def* %150 to i32*
  %152 = load i32, i32* %151, align 8
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %143, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = udiv i32 %155, 64
  %157 = add i32 %142, %156
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %127, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load i32*, i32** @reg_allocno, align 8
  %162 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %163, i64 0, i64 0
  %165 = bitcast %union.rtunion_def* %164 to %struct.rtx_def**
  %166 = load %struct.rtx_def*, %struct.rtx_def** %165, align 8
  %167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %166, i32 0, i32 1
  %168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %167, i64 0, i64 0
  %169 = bitcast %union.rtunion_def* %168 to i32*
  %170 = load i32, i32* %169, align 8
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %161, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = urem i32 %173, 64
  %175 = zext i32 %174 to i64
  %176 = shl i64 1, %175
  %177 = and i64 %160, %176
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %297, label %179

; <label>:179:                                    ; preds = %126
  %180 = load i32*, i32** @reg_allocno, align 8
  %181 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %182, i64 0, i64 0
  %184 = bitcast %union.rtunion_def* %183 to %struct.rtx_def**
  %185 = load %struct.rtx_def*, %struct.rtx_def** %184, align 8
  %186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %185, i32 0, i32 1
  %187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %186, i64 0, i64 0
  %188 = bitcast %union.rtunion_def* %187 to i32*
  %189 = load i32, i32* %188, align 8
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %180, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %4, align 4
  %193 = load i32*, i32** @reg_allocno, align 8
  %194 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %195, i64 0, i64 0
  %197 = bitcast %union.rtunion_def* %196 to %struct.rtx_def**
  %198 = load %struct.rtx_def*, %struct.rtx_def** %197, align 8
  %199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %198, i32 0, i32 1
  %200 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %199, i64 0, i64 0
  %201 = bitcast %union.rtunion_def* %200 to i32*
  %202 = load i32, i32* %201, align 8
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %193, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %5, align 4
  %206 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %207, i64 0, i64 0
  %209 = bitcast %union.rtunion_def* %208 to %struct.rtx_def**
  %210 = load %struct.rtx_def*, %struct.rtx_def** %209, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %212, i64 0, i64 1
  %214 = bitcast %union.rtunion_def* %213 to %struct.rtx_def**
  %215 = load %struct.rtx_def*, %struct.rtx_def** %214, align 8
  %216 = icmp eq %struct.rtx_def* %210, %215
  br i1 %216, label %217, label %244

; <label>:217:                                    ; preds = %179
  %218 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.allocno, %struct.allocno* %218, i64 %220
  %222 = getelementptr inbounds %struct.allocno, %struct.allocno* %221, i32 0, i32 8
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %225 = load i32, i32* %4, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.allocno, %struct.allocno* %224, i64 %226
  %228 = getelementptr inbounds %struct.allocno, %struct.allocno* %227, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = or i64 %229, %223
  store i64 %230, i64* %228, align 8
  %231 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %232 = load i32, i32* %4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.allocno, %struct.allocno* %231, i64 %233
  %235 = getelementptr inbounds %struct.allocno, %struct.allocno* %234, i32 0, i32 8
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %238 = load i32, i32* %5, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.allocno, %struct.allocno* %237, i64 %239
  %241 = getelementptr inbounds %struct.allocno, %struct.allocno* %240, i32 0, i32 8
  %242 = load i64, i64* %241, align 8
  %243 = or i64 %242, %236
  store i64 %243, i64* %241, align 8
  br label %244

; <label>:244:                                    ; preds = %217, %179
  %245 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.allocno, %struct.allocno* %245, i64 %247
  %249 = getelementptr inbounds %struct.allocno, %struct.allocno* %248, i32 0, i32 7
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %252 = load i32, i32* %4, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.allocno, %struct.allocno* %251, i64 %253
  %255 = getelementptr inbounds %struct.allocno, %struct.allocno* %254, i32 0, i32 7
  %256 = load i64, i64* %255, align 8
  %257 = or i64 %256, %250
  store i64 %257, i64* %255, align 8
  %258 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %259 = load i32, i32* %4, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.allocno, %struct.allocno* %258, i64 %260
  %262 = getelementptr inbounds %struct.allocno, %struct.allocno* %261, i32 0, i32 7
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %265 = load i32, i32* %5, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.allocno, %struct.allocno* %264, i64 %266
  %268 = getelementptr inbounds %struct.allocno, %struct.allocno* %267, i32 0, i32 7
  %269 = load i64, i64* %268, align 8
  %270 = or i64 %269, %263
  store i64 %270, i64* %268, align 8
  %271 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.allocno, %struct.allocno* %271, i64 %273
  %275 = getelementptr inbounds %struct.allocno, %struct.allocno* %274, i32 0, i32 9
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %278 = load i32, i32* %4, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.allocno, %struct.allocno* %277, i64 %279
  %281 = getelementptr inbounds %struct.allocno, %struct.allocno* %280, i32 0, i32 9
  %282 = load i64, i64* %281, align 8
  %283 = or i64 %282, %276
  store i64 %283, i64* %281, align 8
  %284 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %285 = load i32, i32* %4, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.allocno, %struct.allocno* %284, i64 %286
  %288 = getelementptr inbounds %struct.allocno, %struct.allocno* %287, i32 0, i32 9
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.allocno, %struct.allocno* %290, i64 %292
  %294 = getelementptr inbounds %struct.allocno, %struct.allocno* %293, i32 0, i32 9
  %295 = load i64, i64* %294, align 8
  %296 = or i64 %295, %289
  store i64 %296, i64* %294, align 8
  br label %297

; <label>:297:                                    ; preds = %244, %126, %111, %101, %94
  br label %298

; <label>:298:                                    ; preds = %297
  %299 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %299, i32 0, i32 1
  %301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %300, i64 0, i64 1
  %302 = bitcast %union.rtunion_def* %301 to %struct.rtx_def**
  %303 = load %struct.rtx_def*, %struct.rtx_def** %302, align 8
  store %struct.rtx_def* %303, %struct.rtx_def** %2, align 8
  br label %91

; <label>:304:                                    ; preds = %91
  br label %305

; <label>:305:                                    ; preds = %304, %70, %60, %57, %10
  br label %306

; <label>:306:                                    ; preds = %305
  %307 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %308 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %307, i32 0, i32 1
  %309 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %308, i64 0, i64 2
  %310 = bitcast %union.rtunion_def* %309 to %struct.rtx_def**
  %311 = load %struct.rtx_def*, %struct.rtx_def** %310, align 8
  store %struct.rtx_def* %311, %struct.rtx_def** %1, align 8
  br label %7

; <label>:312:                                    ; preds = %7
  ret void
}

declare void @specqsort(i8*, i32, i32, i32 (...)*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @allocno_compare(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.allocno, %struct.allocno* %16, i64 %18
  %20 = getelementptr inbounds %struct.allocno, %struct.allocno* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 10, %21
  %23 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.allocno, %struct.allocno* %23, i64 %25
  %27 = getelementptr inbounds %struct.allocno, %struct.allocno* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 @floor_log2_wide(i64 %29)
  %31 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.allocno, %struct.allocno* %31, i64 %33
  %35 = getelementptr inbounds %struct.allocno, %struct.allocno* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %30, %36
  %38 = mul nsw i32 %22, %37
  %39 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.allocno, %struct.allocno* %39, i64 %41
  %43 = getelementptr inbounds %struct.allocno, %struct.allocno* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %38, %44
  store i32 %45, i32* %8, align 4
  %46 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.allocno, %struct.allocno* %46, i64 %48
  %50 = getelementptr inbounds %struct.allocno, %struct.allocno* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 10, %51
  %53 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.allocno, %struct.allocno* %53, i64 %55
  %57 = getelementptr inbounds %struct.allocno, %struct.allocno* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 @floor_log2_wide(i64 %59)
  %61 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.allocno, %struct.allocno* %61, i64 %63
  %65 = getelementptr inbounds %struct.allocno, %struct.allocno* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %60, %66
  %68 = mul nsw i32 %52, %67
  %69 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.allocno, %struct.allocno* %69, i64 %71
  %73 = getelementptr inbounds %struct.allocno, %struct.allocno* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %68, %74
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

; <label>:80:                                     ; preds = %2
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %3, align 4
  br label %88

; <label>:84:                                     ; preds = %2
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %3, align 4
  br label %88

; <label>:88:                                     ; preds = %84, %80
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind uwtable
define internal void @prune_preferences() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = load i32, i32* @max_allocno, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = call noalias i8* @xmalloc(i64 %14)
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %3, align 8
  %17 = load i32, i32* @max_allocno, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %19

; <label>:19:                                     ; preds = %95, %0
  %20 = load i32, i32* %1, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %98

; <label>:22:                                     ; preds = %19
  %23 = load i32*, i32** @allocno_order, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  %33 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.allocno, %struct.allocno* %33, i64 %35
  %37 = getelementptr inbounds %struct.allocno, %struct.allocno* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %4, align 8
  %39 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.allocno, %struct.allocno* %39, i64 %41
  %43 = getelementptr inbounds %struct.allocno, %struct.allocno* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

; <label>:46:                                     ; preds = %22
  %47 = load i64, i64* @fixed_reg_set, align 8
  %48 = load i64, i64* %4, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %4, align 8
  br label %54

; <label>:50:                                     ; preds = %22
  %51 = load i64, i64* @call_used_reg_set, align 8
  %52 = load i64, i64* %4, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %4, align 8
  br label %54

; <label>:54:                                     ; preds = %50, %46
  %55 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.allocno, %struct.allocno* %55, i64 %57
  %59 = getelementptr inbounds %struct.allocno, %struct.allocno* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @reg_preferred_class(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i64 0, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = xor i64 %64, -1
  %66 = load i64, i64* %4, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = xor i64 %68, -1
  %70 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.allocno, %struct.allocno* %70, i64 %72
  %74 = getelementptr inbounds %struct.allocno, %struct.allocno* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = and i64 %75, %69
  store i64 %76, i64* %74, align 8
  %77 = load i64, i64* %4, align 8
  %78 = xor i64 %77, -1
  %79 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.allocno, %struct.allocno* %79, i64 %81
  %83 = getelementptr inbounds %struct.allocno, %struct.allocno* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = and i64 %84, %78
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %4, align 8
  %87 = xor i64 %86, -1
  %88 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.allocno, %struct.allocno* %88, i64 %90
  %92 = getelementptr inbounds %struct.allocno, %struct.allocno* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = and i64 %93, %87
  store i64 %94, i64* %92, align 8
  br label %95

; <label>:95:                                     ; preds = %54
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %1, align 4
  br label %19

; <label>:98:                                     ; preds = %19
  %99 = load i32, i32* @max_allocno, align 4
  %100 = sub nsw i32 %99, 1
  store i32 %100, i32* %1, align 4
  br label %101

; <label>:101:                                    ; preds = %208, %98
  %102 = load i32, i32* %1, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %211

; <label>:104:                                    ; preds = %101
  %105 = load i32*, i32** @allocno_order, align 8
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %2, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %110

; <label>:110:                                    ; preds = %104
  %111 = load i64*, i64** @conflicts, align 8
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @allocno_row_words, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %111, i64 %115
  store i64* %116, i64** %10, align 8
  %117 = load i32, i32* @allocno_row_words, align 4
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %119

; <label>:119:                                    ; preds = %183, %110
  %120 = load i32, i32* %8, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %188

; <label>:122:                                    ; preds = %119
  %123 = load i64*, i64** %10, align 8
  %124 = getelementptr inbounds i64, i64* %123, i32 1
  store i64* %124, i64** %10, align 8
  %125 = load i64, i64* %123, align 8
  store i64 %125, i64* %11, align 8
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %7, align 4
  br label %127

; <label>:127:                                    ; preds = %177, %122
  %128 = load i64, i64* %11, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %182

; <label>:130:                                    ; preds = %127
  %131 = load i64, i64* %11, align 8
  %132 = and i64 %131, 1
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %176

; <label>:134:                                    ; preds = %130
  %135 = load i32*, i32** %3, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %1, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %175

; <label>:142:                                    ; preds = %134
  %143 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.allocno, %struct.allocno* %143, i64 %145
  %147 = getelementptr inbounds %struct.allocno, %struct.allocno* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %150 = load i32, i32* %2, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.allocno, %struct.allocno* %149, i64 %151
  %153 = getelementptr inbounds %struct.allocno, %struct.allocno* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp sle i32 %148, %154
  br i1 %155, label %156, label %165

; <label>:156:                                    ; preds = %142
  %157 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.allocno, %struct.allocno* %157, i64 %159
  %161 = getelementptr inbounds %struct.allocno, %struct.allocno* %160, i32 0, i32 9
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %5, align 8
  %164 = or i64 %163, %162
  store i64 %164, i64* %5, align 8
  br label %174

; <label>:165:                                    ; preds = %142
  %166 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.allocno, %struct.allocno* %166, i64 %168
  %170 = getelementptr inbounds %struct.allocno, %struct.allocno* %169, i32 0, i32 9
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %6, align 8
  %173 = or i64 %172, %171
  store i64 %173, i64* %6, align 8
  br label %174

; <label>:174:                                    ; preds = %165, %156
  br label %175

; <label>:175:                                    ; preds = %174, %134
  br label %176

; <label>:176:                                    ; preds = %175, %130
  br label %177

; <label>:177:                                    ; preds = %176
  %178 = load i64, i64* %11, align 8
  %179 = lshr i64 %178, 1
  store i64 %179, i64* %11, align 8
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %127

; <label>:182:                                    ; preds = %127
  br label %183

; <label>:183:                                    ; preds = %182
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 64
  store i32 %187, i32* %9, align 4
  br label %119

; <label>:188:                                    ; preds = %119
  br label %189

; <label>:189:                                    ; preds = %188
  %190 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %191 = load i32, i32* %2, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.allocno, %struct.allocno* %190, i64 %192
  %194 = getelementptr inbounds %struct.allocno, %struct.allocno* %193, i32 0, i32 9
  %195 = load i64, i64* %194, align 8
  %196 = xor i64 %195, -1
  %197 = load i64, i64* %5, align 8
  %198 = and i64 %197, %196
  store i64 %198, i64* %5, align 8
  %199 = load i64, i64* %6, align 8
  %200 = load i64, i64* %5, align 8
  %201 = or i64 %200, %199
  store i64 %201, i64* %5, align 8
  %202 = load i64, i64* %5, align 8
  %203 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %204 = load i32, i32* %2, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.allocno, %struct.allocno* %203, i64 %205
  %207 = getelementptr inbounds %struct.allocno, %struct.allocno* %206, i32 0, i32 10
  store i64 %202, i64* %207, align 8
  br label %208

; <label>:208:                                    ; preds = %189
  %209 = load i32, i32* %1, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %1, align 4
  br label %101

; <label>:211:                                    ; preds = %101
  %212 = load i32*, i32** %3, align 8
  %213 = bitcast i32* %212 to i8*
  call void @free(i8* %213) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dump_conflicts(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

; <label>:8:                                      ; preds = %33, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @max_allocno, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %36

; <label>:12:                                     ; preds = %8
  %13 = load i16*, i16** @reg_renumber, align 8
  %14 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %15 = load i32*, i32** @allocno_order, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.allocno, %struct.allocno* %14, i64 %20
  %22 = getelementptr inbounds %struct.allocno, %struct.allocno* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %13, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i32
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %12
  br label %33

; <label>:30:                                     ; preds = %12
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

; <label>:33:                                     ; preds = %30, %29
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %8

; <label>:36:                                     ; preds = %8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

; <label>:40:                                     ; preds = %138, %36
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @max_allocno, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %141

; <label>:44:                                     ; preds = %40
  %45 = load i16*, i16** @reg_renumber, align 8
  %46 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %47 = load i32*, i32** @allocno_order, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.allocno, %struct.allocno* %46, i64 %52
  %54 = getelementptr inbounds %struct.allocno, %struct.allocno* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %45, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %44
  br label %138

; <label>:62:                                     ; preds = %44
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %64 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %65 = load i32*, i32** @allocno_order, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.allocno, %struct.allocno* %64, i64 %70
  %72 = getelementptr inbounds %struct.allocno, %struct.allocno* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %73)
  store i32 0, i32* %6, align 4
  br label %75

; <label>:75:                                     ; preds = %109, %62
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @max_regno, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %112

; <label>:79:                                     ; preds = %75
  %80 = load i32*, i32** @reg_allocno, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** @allocno_order, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %84, %89
  br i1 %90, label %91, label %108

; <label>:91:                                     ; preds = %79
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %94 = load i32*, i32** @allocno_order, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.allocno, %struct.allocno* %93, i64 %99
  %101 = getelementptr inbounds %struct.allocno, %struct.allocno* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %92, %102
  br i1 %103, label %104, label %108

; <label>:104:                                    ; preds = %91
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 %106)
  br label %108

; <label>:108:                                    ; preds = %104, %91, %79
  br label %109

; <label>:109:                                    ; preds = %108
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %75

; <label>:112:                                    ; preds = %75
  %113 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %114 = load i32*, i32** @allocno_order, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.allocno, %struct.allocno* %113, i64 %119
  %121 = getelementptr inbounds %struct.allocno, %struct.allocno* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %124, label %137

; <label>:124:                                    ; preds = %112
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %126 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %127 = load i32*, i32** @allocno_order, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.allocno, %struct.allocno* %126, i64 %132
  %134 = getelementptr inbounds %struct.allocno, %struct.allocno* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %135)
  br label %137

; <label>:137:                                    ; preds = %124, %112
  br label %138

; <label>:138:                                    ; preds = %137, %61
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %3, align 4
  br label %40

; <label>:141:                                    ; preds = %40
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %144

; <label>:144:                                    ; preds = %277, %141
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @max_allocno, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %280

; <label>:148:                                    ; preds = %144
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %150 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.allocno, %struct.allocno* %150, i64 %152
  %154 = getelementptr inbounds %struct.allocno, %struct.allocno* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 %155)
  store i32 0, i32* %7, align 4
  br label %157

; <label>:157:                                    ; preds = %188, %148
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @max_allocno, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %191

; <label>:161:                                    ; preds = %157
  %162 = load i64*, i64** @conflicts, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @allocno_row_words, align 4
  %165 = mul nsw i32 %163, %164
  %166 = load i32, i32* %3, align 4
  %167 = udiv i32 %166, 64
  %168 = add i32 %165, %167
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %162, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %3, align 4
  %173 = urem i32 %172, 64
  %174 = zext i32 %173 to i64
  %175 = shl i64 1, %174
  %176 = and i64 %171, %175
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

; <label>:178:                                    ; preds = %161
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %180 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.allocno, %struct.allocno* %180, i64 %182
  %184 = getelementptr inbounds %struct.allocno, %struct.allocno* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %185)
  br label %187

; <label>:187:                                    ; preds = %178, %161
  br label %188

; <label>:188:                                    ; preds = %187
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %157

; <label>:191:                                    ; preds = %157
  store i32 0, i32* %7, align 4
  br label %192

; <label>:192:                                    ; preds = %212, %191
  %193 = load i32, i32* %7, align 4
  %194 = icmp slt i32 %193, 53
  br i1 %194, label %195, label %215

; <label>:195:                                    ; preds = %192
  %196 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %197 = load i32, i32* %3, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.allocno, %struct.allocno* %196, i64 %198
  %200 = getelementptr inbounds %struct.allocno, %struct.allocno* %199, i32 0, i32 6
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = zext i32 %202 to i64
  %204 = shl i64 1, %203
  %205 = and i64 %201, %204
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

; <label>:207:                                    ; preds = %195
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %209)
  br label %211

; <label>:211:                                    ; preds = %207, %195
  br label %212

; <label>:212:                                    ; preds = %211
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  br label %192

; <label>:215:                                    ; preds = %192
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %218

; <label>:218:                                    ; preds = %235, %215
  %219 = load i32, i32* %7, align 4
  %220 = icmp slt i32 %219, 53
  br i1 %220, label %221, label %238

; <label>:221:                                    ; preds = %218
  %222 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %223 = load i32, i32* %3, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.allocno, %struct.allocno* %222, i64 %224
  %226 = getelementptr inbounds %struct.allocno, %struct.allocno* %225, i32 0, i32 7
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = zext i32 %228 to i64
  %230 = shl i64 1, %229
  %231 = and i64 %227, %230
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

; <label>:233:                                    ; preds = %221
  store i32 1, i32* %4, align 4
  br label %234

; <label>:234:                                    ; preds = %233, %221
  br label %235

; <label>:235:                                    ; preds = %234
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %7, align 4
  br label %218

; <label>:238:                                    ; preds = %218
  %239 = load i32, i32* %4, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

; <label>:241:                                    ; preds = %238
  br label %277

; <label>:242:                                    ; preds = %238
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %244 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %245 = load i32, i32* %3, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.allocno, %struct.allocno* %244, i64 %246
  %248 = getelementptr inbounds %struct.allocno, %struct.allocno* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %243, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i32 %249)
  store i32 0, i32* %7, align 4
  br label %251

; <label>:251:                                    ; preds = %271, %242
  %252 = load i32, i32* %7, align 4
  %253 = icmp slt i32 %252, 53
  br i1 %253, label %254, label %274

; <label>:254:                                    ; preds = %251
  %255 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %256 = load i32, i32* %3, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.allocno, %struct.allocno* %255, i64 %257
  %259 = getelementptr inbounds %struct.allocno, %struct.allocno* %258, i32 0, i32 7
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = zext i32 %261 to i64
  %263 = shl i64 1, %262
  %264 = and i64 %260, %263
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

; <label>:266:                                    ; preds = %254
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %268 = load i32, i32* %7, align 4
  %269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %267, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %268)
  br label %270

; <label>:270:                                    ; preds = %266, %254
  br label %271

; <label>:271:                                    ; preds = %270
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %7, align 4
  br label %251

; <label>:274:                                    ; preds = %251
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %276 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %277

; <label>:277:                                    ; preds = %274, %241
  %278 = load i32, i32* %3, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %3, align 4
  br label %144

; <label>:280:                                    ; preds = %144
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %282 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %281, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @find_reg(i32, i64, i32, i32, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64*, align 8
  %39 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

; <label>:42:                                     ; preds = %5
  %43 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.allocno, %struct.allocno* %43, i64 %45
  %47 = getelementptr inbounds %struct.allocno, %struct.allocno* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @reg_alternate_class(i32 %48)
  br label %58

; <label>:50:                                     ; preds = %5
  %51 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.allocno, %struct.allocno* %51, i64 %53
  %55 = getelementptr inbounds %struct.allocno, %struct.allocno* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @reg_preferred_class(i32 %56)
  br label %58

; <label>:58:                                     ; preds = %50, %42
  %59 = phi i32 [ %49, %42 ], [ %57, %50 ]
  store i32 %59, i32* %17, align 4
  %60 = load %struct.function*, %struct.function** @cfun, align 8
  %61 = getelementptr inbounds %struct.function, %struct.function* %60, i32 0, i32 3
  %62 = load %struct.emit_status*, %struct.emit_status** %61, align 8
  %63 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %62, i32 0, i32 12
  %64 = load %struct.rtx_def**, %struct.rtx_def*** %63, align 8
  %65 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.allocno, %struct.allocno* %65, i64 %67
  %69 = getelementptr inbounds %struct.allocno, %struct.allocno* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %64, i64 %71
  %73 = load %struct.rtx_def*, %struct.rtx_def** %72, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %75 = load i32, i32* %74, align 8
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %58
  %81 = load i64, i64* @call_fixed_reg_set, align 8
  store i64 %81, i64* %15, align 8
  br label %95

; <label>:82:                                     ; preds = %58
  %83 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.allocno, %struct.allocno* %83, i64 %85
  %87 = getelementptr inbounds %struct.allocno, %struct.allocno* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

; <label>:90:                                     ; preds = %82
  %91 = load i64, i64* @fixed_reg_set, align 8
  store i64 %91, i64* %15, align 8
  br label %94

; <label>:92:                                     ; preds = %82
  %93 = load i64, i64* @call_used_reg_set, align 8
  store i64 %93, i64* %15, align 8
  br label %94

; <label>:94:                                     ; preds = %92, %90
  br label %95

; <label>:95:                                     ; preds = %94, %80
  %96 = load i64, i64* @no_global_alloc_regs, align 8
  %97 = load i64, i64* %15, align 8
  %98 = or i64 %97, %96
  store i64 %98, i64* %15, align 8
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

; <label>:101:                                    ; preds = %95
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %15, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %15, align 8
  br label %105

; <label>:105:                                    ; preds = %101, %95
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i64 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = xor i64 %109, -1
  %111 = load i64, i64* %15, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %15, align 8
  store i64 %113, i64* %16, align 8
  %114 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.allocno, %struct.allocno* %114, i64 %116
  %118 = getelementptr inbounds %struct.allocno, %struct.allocno* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %15, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %15, align 8
  %122 = load i64, i64* %15, align 8
  store i64 %122, i64* %14, align 8
  %123 = load i64, i64* @regs_used_so_far, align 8
  %124 = xor i64 %123, -1
  %125 = load i64, i64* %14, align 8
  %126 = or i64 %125, %124
  store i64 %126, i64* %14, align 8
  %127 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.allocno, %struct.allocno* %127, i64 %129
  %131 = getelementptr inbounds %struct.allocno, %struct.allocno* %130, i32 0, i32 10
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %14, align 8
  %134 = or i64 %133, %132
  store i64 %134, i64* %14, align 8
  store i32 -1, i32* %12, align 4
  store i32 53, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %135

; <label>:135:                                    ; preds = %292, %105
  %136 = load i32, i32* %13, align 4
  %137 = icmp sle i32 %136, 1
  br i1 %137, label %138, label %141

; <label>:138:                                    ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = icmp sge i32 %139, 53
  br label %141

; <label>:141:                                    ; preds = %138, %135
  %142 = phi i1 [ false, %135 ], [ %140, %138 ]
  br i1 %142, label %143, label %295

; <label>:143:                                    ; preds = %141
  %144 = load i32, i32* %13, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %148

; <label>:146:                                    ; preds = %143
  %147 = load i64, i64* %15, align 8
  store i64 %147, i64* %14, align 8
  br label %148

; <label>:148:                                    ; preds = %146, %143
  store i32 0, i32* %11, align 4
  br label %149

; <label>:149:                                    ; preds = %288, %148
  %150 = load i32, i32* %11, align 4
  %151 = icmp slt i32 %150, 53
  br i1 %151, label %152, label %291

; <label>:152:                                    ; preds = %149
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_alloc_order, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %19, align 4
  %157 = load i64, i64* %14, align 8
  %158 = load i32, i32* %19, align 4
  %159 = zext i32 %158 to i64
  %160 = shl i64 1, %159
  %161 = and i64 %157, %160
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %287, label %163

; <label>:163:                                    ; preds = %152
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @ix86_hard_regno_mode_ok(i32 %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %287

; <label>:168:                                    ; preds = %163
  %169 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.allocno, %struct.allocno* %169, i64 %171
  %173 = getelementptr inbounds %struct.allocno, %struct.allocno* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176

; <label>:176:                                    ; preds = %168
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

; <label>:179:                                    ; preds = %176
  br i1 false, label %287, label %180

; <label>:180:                                    ; preds = %179, %176, %168
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %19, align 4
  %183 = icmp sge i32 %182, 8
  br i1 %183, label %184, label %187

; <label>:184:                                    ; preds = %180
  %185 = load i32, i32* %19, align 4
  %186 = icmp sle i32 %185, 15
  br i1 %186, label %205, label %187

; <label>:187:                                    ; preds = %184, %180
  %188 = load i32, i32* %19, align 4
  %189 = icmp sge i32 %188, 21
  br i1 %189, label %190, label %193

; <label>:190:                                    ; preds = %187
  %191 = load i32, i32* %19, align 4
  %192 = icmp sle i32 %191, 28
  br i1 %192, label %205, label %193

; <label>:193:                                    ; preds = %190, %187
  %194 = load i32, i32* %19, align 4
  %195 = icmp sge i32 %194, 45
  br i1 %195, label %196, label %199

; <label>:196:                                    ; preds = %193
  %197 = load i32, i32* %19, align 4
  %198 = icmp sle i32 %197, 52
  br i1 %198, label %205, label %199

; <label>:199:                                    ; preds = %196, %193
  %200 = load i32, i32* %19, align 4
  %201 = icmp sge i32 %200, 29
  br i1 %201, label %202, label %220

; <label>:202:                                    ; preds = %199
  %203 = load i32, i32* %19, align 4
  %204 = icmp sle i32 %203, 36
  br i1 %204, label %205, label %220

; <label>:205:                                    ; preds = %202, %196, %190, %184
  %206 = load i32, i32* %18, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 5
  br i1 %210, label %217, label %211

; <label>:211:                                    ; preds = %205
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 6
  br label %217

; <label>:217:                                    ; preds = %211, %205
  %218 = phi i1 [ true, %205 ], [ %216, %211 ]
  %219 = select i1 %218, i32 2, i32 1
  br label %257

; <label>:220:                                    ; preds = %202, %199
  %221 = load i32, i32* %18, align 4
  %222 = icmp eq i32 %221, 18
  br i1 %222, label %223, label %228

; <label>:223:                                    ; preds = %220
  %224 = load i32, i32* @target_flags, align 4
  %225 = and i32 %224, 33554432
  %226 = icmp ne i32 %225, 0
  %227 = select i1 %226, i32 2, i32 3
  br label %255

; <label>:228:                                    ; preds = %220
  %229 = load i32, i32* %18, align 4
  %230 = icmp eq i32 %229, 24
  br i1 %230, label %231, label %236

; <label>:231:                                    ; preds = %228
  %232 = load i32, i32* @target_flags, align 4
  %233 = and i32 %232, 33554432
  %234 = icmp ne i32 %233, 0
  %235 = select i1 %234, i32 4, i32 6
  br label %253

; <label>:236:                                    ; preds = %228
  %237 = load i32, i32* %18, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = load i32, i32* @target_flags, align 4
  %243 = and i32 %242, 33554432
  %244 = icmp ne i32 %243, 0
  %245 = select i1 %244, i32 8, i32 4
  %246 = add nsw i32 %241, %245
  %247 = sub nsw i32 %246, 1
  %248 = load i32, i32* @target_flags, align 4
  %249 = and i32 %248, 33554432
  %250 = icmp ne i32 %249, 0
  %251 = select i1 %250, i32 8, i32 4
  %252 = sdiv i32 %247, %251
  br label %253

; <label>:253:                                    ; preds = %236, %231
  %254 = phi i32 [ %235, %231 ], [ %252, %236 ]
  br label %255

; <label>:255:                                    ; preds = %253, %223
  %256 = phi i32 [ %227, %223 ], [ %254, %253 ]
  br label %257

; <label>:257:                                    ; preds = %255, %217
  %258 = phi i32 [ %219, %217 ], [ %256, %255 ]
  %259 = add nsw i32 %181, %258
  store i32 %259, i32* %21, align 4
  %260 = load i32, i32* %19, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %20, align 4
  br label %262

; <label>:262:                                    ; preds = %277, %257
  %263 = load i32, i32* %20, align 4
  %264 = load i32, i32* %21, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %274

; <label>:266:                                    ; preds = %262
  %267 = load i64, i64* %14, align 8
  %268 = load i32, i32* %20, align 4
  %269 = zext i32 %268 to i64
  %270 = shl i64 1, %269
  %271 = and i64 %267, %270
  %272 = icmp ne i64 %271, 0
  %273 = xor i1 %272, true
  br label %274

; <label>:274:                                    ; preds = %266, %262
  %275 = phi i1 [ false, %262 ], [ %273, %266 ]
  br i1 %275, label %276, label %280

; <label>:276:                                    ; preds = %274
  br label %277

; <label>:277:                                    ; preds = %276
  %278 = load i32, i32* %20, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %20, align 4
  br label %262

; <label>:280:                                    ; preds = %274
  %281 = load i32, i32* %20, align 4
  %282 = load i32, i32* %21, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %286

; <label>:284:                                    ; preds = %280
  %285 = load i32, i32* %19, align 4
  store i32 %285, i32* %12, align 4
  br label %291

; <label>:286:                                    ; preds = %280
  br label %287

; <label>:287:                                    ; preds = %286, %179, %163, %152
  br label %288

; <label>:288:                                    ; preds = %287
  %289 = load i32, i32* %11, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %11, align 4
  br label %149

; <label>:291:                                    ; preds = %284, %149
  br label %292

; <label>:292:                                    ; preds = %291
  %293 = load i32, i32* %13, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %13, align 4
  br label %135

; <label>:295:                                    ; preds = %141
  %296 = load i64, i64* %14, align 8
  %297 = xor i64 %296, -1
  %298 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.allocno, %struct.allocno* %298, i64 %300
  %302 = getelementptr inbounds %struct.allocno, %struct.allocno* %301, i32 0, i32 8
  %303 = load i64, i64* %302, align 8
  %304 = and i64 %303, %297
  store i64 %304, i64* %302, align 8
  %305 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.allocno, %struct.allocno* %305, i64 %307
  %309 = getelementptr inbounds %struct.allocno, %struct.allocno* %308, i32 0, i32 8
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* getelementptr inbounds ([25 x i64], [25 x i64]* @reg_class_contents, i64 0, i64 0), align 16
  %312 = xor i64 %311, -1
  %313 = and i64 %310, %312
  %314 = icmp eq i64 0, %313
  br i1 %314, label %315, label %316

; <label>:315:                                    ; preds = %295
  br label %542

; <label>:316:                                    ; preds = %295
  %317 = load i32, i32* %12, align 4
  %318 = icmp sge i32 %317, 0
  br i1 %318, label %319, label %541

; <label>:319:                                    ; preds = %316
  store i32 0, i32* %11, align 4
  br label %320

; <label>:320:                                    ; preds = %537, %319
  %321 = load i32, i32* %11, align 4
  %322 = icmp slt i32 %321, 53
  br i1 %322, label %323, label %540

; <label>:323:                                    ; preds = %320
  %324 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %325 = load i32, i32* %6, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.allocno, %struct.allocno* %324, i64 %326
  %328 = getelementptr inbounds %struct.allocno, %struct.allocno* %327, i32 0, i32 8
  %329 = load i64, i64* %328, align 8
  %330 = load i32, i32* %11, align 4
  %331 = zext i32 %330 to i64
  %332 = shl i64 1, %331
  %333 = and i64 %329, %332
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %536

; <label>:335:                                    ; preds = %323
  %336 = load i32, i32* %11, align 4
  %337 = load i32, i32* %18, align 4
  %338 = call i32 @ix86_hard_regno_mode_ok(i32 %336, i32 %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %536

; <label>:340:                                    ; preds = %335
  %341 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %342 = load i32, i32* %6, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.allocno, %struct.allocno* %341, i64 %343
  %345 = getelementptr inbounds %struct.allocno, %struct.allocno* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %352, label %348

; <label>:348:                                    ; preds = %340
  %349 = load i32, i32* %9, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %352, label %351

; <label>:351:                                    ; preds = %348
  br i1 false, label %536, label %352

; <label>:352:                                    ; preds = %351, %348, %340
  %353 = load i32, i32* %11, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %12, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = icmp eq i32 %356, %360
  br i1 %361, label %384, label %362

; <label>:362:                                    ; preds = %352
  %363 = load i32, i32* %11, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %12, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @reg_class_subset_p(i32 %366, i32 %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %384, label %373

; <label>:373:                                    ; preds = %362
  %374 = load i32, i32* %12, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %11, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @reg_class_subset_p(i32 %377, i32 %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %536

; <label>:384:                                    ; preds = %373, %362, %352
  %385 = load i32, i32* %11, align 4
  %386 = load i32, i32* %11, align 4
  %387 = icmp sge i32 %386, 8
  br i1 %387, label %388, label %391

; <label>:388:                                    ; preds = %384
  %389 = load i32, i32* %11, align 4
  %390 = icmp sle i32 %389, 15
  br i1 %390, label %409, label %391

; <label>:391:                                    ; preds = %388, %384
  %392 = load i32, i32* %11, align 4
  %393 = icmp sge i32 %392, 21
  br i1 %393, label %394, label %397

; <label>:394:                                    ; preds = %391
  %395 = load i32, i32* %11, align 4
  %396 = icmp sle i32 %395, 28
  br i1 %396, label %409, label %397

; <label>:397:                                    ; preds = %394, %391
  %398 = load i32, i32* %11, align 4
  %399 = icmp sge i32 %398, 45
  br i1 %399, label %400, label %403

; <label>:400:                                    ; preds = %397
  %401 = load i32, i32* %11, align 4
  %402 = icmp sle i32 %401, 52
  br i1 %402, label %409, label %403

; <label>:403:                                    ; preds = %400, %397
  %404 = load i32, i32* %11, align 4
  %405 = icmp sge i32 %404, 29
  br i1 %405, label %406, label %424

; <label>:406:                                    ; preds = %403
  %407 = load i32, i32* %11, align 4
  %408 = icmp sle i32 %407, 36
  br i1 %408, label %409, label %424

; <label>:409:                                    ; preds = %406, %400, %394, %388
  %410 = load i32, i32* %18, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = icmp eq i32 %413, 5
  br i1 %414, label %421, label %415

; <label>:415:                                    ; preds = %409
  %416 = load i32, i32* %18, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = icmp eq i32 %419, 6
  br label %421

; <label>:421:                                    ; preds = %415, %409
  %422 = phi i1 [ true, %409 ], [ %420, %415 ]
  %423 = select i1 %422, i32 2, i32 1
  br label %461

; <label>:424:                                    ; preds = %406, %403
  %425 = load i32, i32* %18, align 4
  %426 = icmp eq i32 %425, 18
  br i1 %426, label %427, label %432

; <label>:427:                                    ; preds = %424
  %428 = load i32, i32* @target_flags, align 4
  %429 = and i32 %428, 33554432
  %430 = icmp ne i32 %429, 0
  %431 = select i1 %430, i32 2, i32 3
  br label %459

; <label>:432:                                    ; preds = %424
  %433 = load i32, i32* %18, align 4
  %434 = icmp eq i32 %433, 24
  br i1 %434, label %435, label %440

; <label>:435:                                    ; preds = %432
  %436 = load i32, i32* @target_flags, align 4
  %437 = and i32 %436, 33554432
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %438, i32 4, i32 6
  br label %457

; <label>:440:                                    ; preds = %432
  %441 = load i32, i32* %18, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %442
  %444 = load i8, i8* %443, align 1
  %445 = zext i8 %444 to i32
  %446 = load i32, i32* @target_flags, align 4
  %447 = and i32 %446, 33554432
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, i32 8, i32 4
  %450 = add nsw i32 %445, %449
  %451 = sub nsw i32 %450, 1
  %452 = load i32, i32* @target_flags, align 4
  %453 = and i32 %452, 33554432
  %454 = icmp ne i32 %453, 0
  %455 = select i1 %454, i32 8, i32 4
  %456 = sdiv i32 %451, %455
  br label %457

; <label>:457:                                    ; preds = %440, %435
  %458 = phi i32 [ %439, %435 ], [ %456, %440 ]
  br label %459

; <label>:459:                                    ; preds = %457, %427
  %460 = phi i32 [ %431, %427 ], [ %458, %457 ]
  br label %461

; <label>:461:                                    ; preds = %459, %421
  %462 = phi i32 [ %423, %421 ], [ %460, %459 ]
  %463 = add nsw i32 %385, %462
  store i32 %463, i32* %23, align 4
  %464 = load i32, i32* %11, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %22, align 4
  br label %466

; <label>:466:                                    ; preds = %526, %461
  %467 = load i32, i32* %22, align 4
  %468 = load i32, i32* %23, align 4
  %469 = icmp slt i32 %467, %468
  br i1 %469, label %470, label %523

; <label>:470:                                    ; preds = %466
  %471 = load i64, i64* %14, align 8
  %472 = load i32, i32* %22, align 4
  %473 = zext i32 %472 to i64
  %474 = shl i64 1, %473
  %475 = and i64 %471, %474
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %523, label %477

; <label>:477:                                    ; preds = %470
  %478 = load i32, i32* %22, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* %12, align 4
  %483 = load i32, i32* %22, align 4
  %484 = load i32, i32* %11, align 4
  %485 = sub nsw i32 %483, %484
  %486 = add nsw i32 %482, %485
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = icmp eq i32 %481, %489
  br i1 %490, label %521, label %491

; <label>:491:                                    ; preds = %477
  %492 = load i32, i32* %22, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* %12, align 4
  %497 = load i32, i32* %22, align 4
  %498 = load i32, i32* %11, align 4
  %499 = sub nsw i32 %497, %498
  %500 = add nsw i32 %496, %499
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %501
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @reg_class_subset_p(i32 %495, i32 %503)
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %521, label %506

; <label>:506:                                    ; preds = %491
  %507 = load i32, i32* %12, align 4
  %508 = load i32, i32* %22, align 4
  %509 = load i32, i32* %11, align 4
  %510 = sub nsw i32 %508, %509
  %511 = add nsw i32 %507, %510
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = load i32, i32* %22, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %516
  %518 = load i32, i32* %517, align 4
  %519 = call i32 @reg_class_subset_p(i32 %514, i32 %518)
  %520 = icmp ne i32 %519, 0
  br label %521

; <label>:521:                                    ; preds = %506, %491, %477
  %522 = phi i1 [ true, %491 ], [ true, %477 ], [ %520, %506 ]
  br label %523

; <label>:523:                                    ; preds = %521, %470, %466
  %524 = phi i1 [ false, %470 ], [ false, %466 ], [ %522, %521 ]
  br i1 %524, label %525, label %529

; <label>:525:                                    ; preds = %523
  br label %526

; <label>:526:                                    ; preds = %525
  %527 = load i32, i32* %22, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %22, align 4
  br label %466

; <label>:529:                                    ; preds = %523
  %530 = load i32, i32* %22, align 4
  %531 = load i32, i32* %23, align 4
  %532 = icmp eq i32 %530, %531
  br i1 %532, label %533, label %535

; <label>:533:                                    ; preds = %529
  %534 = load i32, i32* %11, align 4
  store i32 %534, i32* %12, align 4
  br label %789

; <label>:535:                                    ; preds = %529
  br label %536

; <label>:536:                                    ; preds = %535, %373, %351, %335, %323
  br label %537

; <label>:537:                                    ; preds = %536
  %538 = load i32, i32* %11, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %11, align 4
  br label %320

; <label>:540:                                    ; preds = %320
  br label %541

; <label>:541:                                    ; preds = %540, %316
  br label %542

; <label>:542:                                    ; preds = %541, %315
  %543 = load i64, i64* %14, align 8
  %544 = xor i64 %543, -1
  %545 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %546 = load i32, i32* %6, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.allocno, %struct.allocno* %545, i64 %547
  %549 = getelementptr inbounds %struct.allocno, %struct.allocno* %548, i32 0, i32 7
  %550 = load i64, i64* %549, align 8
  %551 = and i64 %550, %544
  store i64 %551, i64* %549, align 8
  %552 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %553 = load i32, i32* %6, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds %struct.allocno, %struct.allocno* %552, i64 %554
  %556 = getelementptr inbounds %struct.allocno, %struct.allocno* %555, i32 0, i32 7
  %557 = load i64, i64* %556, align 8
  %558 = load i64, i64* getelementptr inbounds ([25 x i64], [25 x i64]* @reg_class_contents, i64 0, i64 0), align 16
  %559 = xor i64 %558, -1
  %560 = and i64 %557, %559
  %561 = icmp eq i64 0, %560
  br i1 %561, label %562, label %563

; <label>:562:                                    ; preds = %542
  br label %789

; <label>:563:                                    ; preds = %542
  %564 = load i32, i32* %12, align 4
  %565 = icmp sge i32 %564, 0
  br i1 %565, label %566, label %788

; <label>:566:                                    ; preds = %563
  store i32 0, i32* %11, align 4
  br label %567

; <label>:567:                                    ; preds = %784, %566
  %568 = load i32, i32* %11, align 4
  %569 = icmp slt i32 %568, 53
  br i1 %569, label %570, label %787

; <label>:570:                                    ; preds = %567
  %571 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %572 = load i32, i32* %6, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.allocno, %struct.allocno* %571, i64 %573
  %575 = getelementptr inbounds %struct.allocno, %struct.allocno* %574, i32 0, i32 7
  %576 = load i64, i64* %575, align 8
  %577 = load i32, i32* %11, align 4
  %578 = zext i32 %577 to i64
  %579 = shl i64 1, %578
  %580 = and i64 %576, %579
  %581 = icmp ne i64 %580, 0
  br i1 %581, label %582, label %783

; <label>:582:                                    ; preds = %570
  %583 = load i32, i32* %11, align 4
  %584 = load i32, i32* %18, align 4
  %585 = call i32 @ix86_hard_regno_mode_ok(i32 %583, i32 %584)
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %783

; <label>:587:                                    ; preds = %582
  %588 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %589 = load i32, i32* %6, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.allocno, %struct.allocno* %588, i64 %590
  %592 = getelementptr inbounds %struct.allocno, %struct.allocno* %591, i32 0, i32 2
  %593 = load i32, i32* %592, align 8
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %599, label %595

; <label>:595:                                    ; preds = %587
  %596 = load i32, i32* %9, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %599, label %598

; <label>:598:                                    ; preds = %595
  br i1 false, label %783, label %599

; <label>:599:                                    ; preds = %598, %595, %587
  %600 = load i32, i32* %11, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %601
  %603 = load i32, i32* %602, align 4
  %604 = load i32, i32* %12, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %605
  %607 = load i32, i32* %606, align 4
  %608 = icmp eq i32 %603, %607
  br i1 %608, label %631, label %609

; <label>:609:                                    ; preds = %599
  %610 = load i32, i32* %11, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %611
  %613 = load i32, i32* %612, align 4
  %614 = load i32, i32* %12, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %615
  %617 = load i32, i32* %616, align 4
  %618 = call i32 @reg_class_subset_p(i32 %613, i32 %617)
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %631, label %620

; <label>:620:                                    ; preds = %609
  %621 = load i32, i32* %12, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %622
  %624 = load i32, i32* %623, align 4
  %625 = load i32, i32* %11, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %626
  %628 = load i32, i32* %627, align 4
  %629 = call i32 @reg_class_subset_p(i32 %624, i32 %628)
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %783

; <label>:631:                                    ; preds = %620, %609, %599
  %632 = load i32, i32* %11, align 4
  %633 = load i32, i32* %11, align 4
  %634 = icmp sge i32 %633, 8
  br i1 %634, label %635, label %638

; <label>:635:                                    ; preds = %631
  %636 = load i32, i32* %11, align 4
  %637 = icmp sle i32 %636, 15
  br i1 %637, label %656, label %638

; <label>:638:                                    ; preds = %635, %631
  %639 = load i32, i32* %11, align 4
  %640 = icmp sge i32 %639, 21
  br i1 %640, label %641, label %644

; <label>:641:                                    ; preds = %638
  %642 = load i32, i32* %11, align 4
  %643 = icmp sle i32 %642, 28
  br i1 %643, label %656, label %644

; <label>:644:                                    ; preds = %641, %638
  %645 = load i32, i32* %11, align 4
  %646 = icmp sge i32 %645, 45
  br i1 %646, label %647, label %650

; <label>:647:                                    ; preds = %644
  %648 = load i32, i32* %11, align 4
  %649 = icmp sle i32 %648, 52
  br i1 %649, label %656, label %650

; <label>:650:                                    ; preds = %647, %644
  %651 = load i32, i32* %11, align 4
  %652 = icmp sge i32 %651, 29
  br i1 %652, label %653, label %671

; <label>:653:                                    ; preds = %650
  %654 = load i32, i32* %11, align 4
  %655 = icmp sle i32 %654, 36
  br i1 %655, label %656, label %671

; <label>:656:                                    ; preds = %653, %647, %641, %635
  %657 = load i32, i32* %18, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %658
  %660 = load i32, i32* %659, align 4
  %661 = icmp eq i32 %660, 5
  br i1 %661, label %668, label %662

; <label>:662:                                    ; preds = %656
  %663 = load i32, i32* %18, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %664
  %666 = load i32, i32* %665, align 4
  %667 = icmp eq i32 %666, 6
  br label %668

; <label>:668:                                    ; preds = %662, %656
  %669 = phi i1 [ true, %656 ], [ %667, %662 ]
  %670 = select i1 %669, i32 2, i32 1
  br label %708

; <label>:671:                                    ; preds = %653, %650
  %672 = load i32, i32* %18, align 4
  %673 = icmp eq i32 %672, 18
  br i1 %673, label %674, label %679

; <label>:674:                                    ; preds = %671
  %675 = load i32, i32* @target_flags, align 4
  %676 = and i32 %675, 33554432
  %677 = icmp ne i32 %676, 0
  %678 = select i1 %677, i32 2, i32 3
  br label %706

; <label>:679:                                    ; preds = %671
  %680 = load i32, i32* %18, align 4
  %681 = icmp eq i32 %680, 24
  br i1 %681, label %682, label %687

; <label>:682:                                    ; preds = %679
  %683 = load i32, i32* @target_flags, align 4
  %684 = and i32 %683, 33554432
  %685 = icmp ne i32 %684, 0
  %686 = select i1 %685, i32 4, i32 6
  br label %704

; <label>:687:                                    ; preds = %679
  %688 = load i32, i32* %18, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %689
  %691 = load i8, i8* %690, align 1
  %692 = zext i8 %691 to i32
  %693 = load i32, i32* @target_flags, align 4
  %694 = and i32 %693, 33554432
  %695 = icmp ne i32 %694, 0
  %696 = select i1 %695, i32 8, i32 4
  %697 = add nsw i32 %692, %696
  %698 = sub nsw i32 %697, 1
  %699 = load i32, i32* @target_flags, align 4
  %700 = and i32 %699, 33554432
  %701 = icmp ne i32 %700, 0
  %702 = select i1 %701, i32 8, i32 4
  %703 = sdiv i32 %698, %702
  br label %704

; <label>:704:                                    ; preds = %687, %682
  %705 = phi i32 [ %686, %682 ], [ %703, %687 ]
  br label %706

; <label>:706:                                    ; preds = %704, %674
  %707 = phi i32 [ %678, %674 ], [ %705, %704 ]
  br label %708

; <label>:708:                                    ; preds = %706, %668
  %709 = phi i32 [ %670, %668 ], [ %707, %706 ]
  %710 = add nsw i32 %632, %709
  store i32 %710, i32* %25, align 4
  %711 = load i32, i32* %11, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %24, align 4
  br label %713

; <label>:713:                                    ; preds = %773, %708
  %714 = load i32, i32* %24, align 4
  %715 = load i32, i32* %25, align 4
  %716 = icmp slt i32 %714, %715
  br i1 %716, label %717, label %770

; <label>:717:                                    ; preds = %713
  %718 = load i64, i64* %14, align 8
  %719 = load i32, i32* %24, align 4
  %720 = zext i32 %719 to i64
  %721 = shl i64 1, %720
  %722 = and i64 %718, %721
  %723 = icmp ne i64 %722, 0
  br i1 %723, label %770, label %724

; <label>:724:                                    ; preds = %717
  %725 = load i32, i32* %24, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %726
  %728 = load i32, i32* %727, align 4
  %729 = load i32, i32* %12, align 4
  %730 = load i32, i32* %24, align 4
  %731 = load i32, i32* %11, align 4
  %732 = sub nsw i32 %730, %731
  %733 = add nsw i32 %729, %732
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %734
  %736 = load i32, i32* %735, align 4
  %737 = icmp eq i32 %728, %736
  br i1 %737, label %768, label %738

; <label>:738:                                    ; preds = %724
  %739 = load i32, i32* %24, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %740
  %742 = load i32, i32* %741, align 4
  %743 = load i32, i32* %12, align 4
  %744 = load i32, i32* %24, align 4
  %745 = load i32, i32* %11, align 4
  %746 = sub nsw i32 %744, %745
  %747 = add nsw i32 %743, %746
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %748
  %750 = load i32, i32* %749, align 4
  %751 = call i32 @reg_class_subset_p(i32 %742, i32 %750)
  %752 = icmp ne i32 %751, 0
  br i1 %752, label %768, label %753

; <label>:753:                                    ; preds = %738
  %754 = load i32, i32* %12, align 4
  %755 = load i32, i32* %24, align 4
  %756 = load i32, i32* %11, align 4
  %757 = sub nsw i32 %755, %756
  %758 = add nsw i32 %754, %757
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %759
  %761 = load i32, i32* %760, align 4
  %762 = load i32, i32* %24, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i64 0, i64 %763
  %765 = load i32, i32* %764, align 4
  %766 = call i32 @reg_class_subset_p(i32 %761, i32 %765)
  %767 = icmp ne i32 %766, 0
  br label %768

; <label>:768:                                    ; preds = %753, %738, %724
  %769 = phi i1 [ true, %738 ], [ true, %724 ], [ %767, %753 ]
  br label %770

; <label>:770:                                    ; preds = %768, %717, %713
  %771 = phi i1 [ false, %717 ], [ false, %713 ], [ %769, %768 ]
  br i1 %771, label %772, label %776

; <label>:772:                                    ; preds = %770
  br label %773

; <label>:773:                                    ; preds = %772
  %774 = load i32, i32* %24, align 4
  %775 = add nsw i32 %774, 1
  store i32 %775, i32* %24, align 4
  br label %713

; <label>:776:                                    ; preds = %770
  %777 = load i32, i32* %24, align 4
  %778 = load i32, i32* %25, align 4
  %779 = icmp eq i32 %777, %778
  br i1 %779, label %780, label %782

; <label>:780:                                    ; preds = %776
  %781 = load i32, i32* %11, align 4
  store i32 %781, i32* %12, align 4
  br label %787

; <label>:782:                                    ; preds = %776
  br label %783

; <label>:783:                                    ; preds = %782, %620, %598, %582, %570
  br label %784

; <label>:784:                                    ; preds = %783
  %785 = load i32, i32* %11, align 4
  %786 = add nsw i32 %785, 1
  store i32 %786, i32* %11, align 4
  br label %567

; <label>:787:                                    ; preds = %780, %567
  br label %788

; <label>:788:                                    ; preds = %787, %563
  br label %789

; <label>:789:                                    ; preds = %788, %562, %533
  %790 = load i32, i32* @flag_caller_saves, align 4
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %792, label %850

; <label>:792:                                    ; preds = %789
  %793 = load i32, i32* %12, align 4
  %794 = icmp slt i32 %793, 0
  br i1 %794, label %795, label %850

; <label>:795:                                    ; preds = %792
  %796 = load i32, i32* %9, align 4
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %849, label %798

; <label>:798:                                    ; preds = %795
  %799 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %800 = load i32, i32* %6, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds %struct.allocno, %struct.allocno* %799, i64 %801
  %803 = getelementptr inbounds %struct.allocno, %struct.allocno* %802, i32 0, i32 2
  %804 = load i32, i32* %803, align 8
  %805 = icmp ne i32 %804, 0
  br i1 %805, label %806, label %849

; <label>:806:                                    ; preds = %798
  %807 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %808 = load i32, i32* %6, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds %struct.allocno, %struct.allocno* %807, i64 %809
  %811 = getelementptr inbounds %struct.allocno, %struct.allocno* %810, i32 0, i32 2
  %812 = load i32, i32* %811, align 8
  %813 = mul nsw i32 4, %812
  %814 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %815 = load i32, i32* %6, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds %struct.allocno, %struct.allocno* %814, i64 %816
  %818 = getelementptr inbounds %struct.allocno, %struct.allocno* %817, i32 0, i32 3
  %819 = load i32, i32* %818, align 4
  %820 = icmp slt i32 %813, %819
  br i1 %820, label %821, label %849

; <label>:821:                                    ; preds = %806
  %822 = load i64, i64* %7, align 8
  %823 = icmp ne i64 %822, 0
  br i1 %823, label %825, label %824

; <label>:824:                                    ; preds = %821
  store i64 0, i64* %26, align 8
  br label %827

; <label>:825:                                    ; preds = %821
  %826 = load i64, i64* %7, align 8
  store i64 %826, i64* %26, align 8
  br label %827

; <label>:827:                                    ; preds = %825, %824
  %828 = load i64, i64* @losing_caller_save_reg_set, align 8
  %829 = load i64, i64* %26, align 8
  %830 = or i64 %829, %828
  store i64 %830, i64* %26, align 8
  %831 = load i32, i32* %6, align 4
  %832 = load i64, i64* %26, align 8
  %833 = load i32, i32* %8, align 4
  %834 = load i32, i32* %10, align 4
  call void @find_reg(i32 %831, i64 %832, i32 %833, i32 1, i32 %834)
  %835 = load i16*, i16** @reg_renumber, align 8
  %836 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %837 = load i32, i32* %6, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds %struct.allocno, %struct.allocno* %836, i64 %838
  %840 = getelementptr inbounds %struct.allocno, %struct.allocno* %839, i32 0, i32 0
  %841 = load i32, i32* %840, align 8
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i16, i16* %835, i64 %842
  %844 = load i16, i16* %843, align 2
  %845 = sext i16 %844 to i32
  %846 = icmp sge i32 %845, 0
  br i1 %846, label %847, label %848

; <label>:847:                                    ; preds = %827
  store i32 1, i32* @caller_save_needed, align 4
  br label %1321

; <label>:848:                                    ; preds = %827
  br label %849

; <label>:849:                                    ; preds = %848, %806, %798, %795
  br label %850

; <label>:850:                                    ; preds = %849, %792, %789
  %851 = load i32, i32* %12, align 4
  %852 = icmp slt i32 %851, 0
  br i1 %852, label %853, label %1116

; <label>:853:                                    ; preds = %850
  %854 = load i32, i32* %10, align 4
  %855 = icmp ne i32 %854, 0
  br i1 %855, label %1116, label %856

; <label>:856:                                    ; preds = %853
  %857 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %858 = load i32, i32* %6, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds %struct.allocno, %struct.allocno* %857, i64 %859
  %861 = getelementptr inbounds %struct.allocno, %struct.allocno* %860, i32 0, i32 1
  %862 = load i32, i32* %861, align 4
  %863 = icmp eq i32 %862, 1
  br i1 %863, label %864, label %1116

; <label>:864:                                    ; preds = %856
  store i32 52, i32* %11, align 4
  br label %865

; <label>:865:                                    ; preds = %1112, %864
  %866 = load i32, i32* %11, align 4
  %867 = icmp sge i32 %866, 0
  br i1 %867, label %868, label %1115

; <label>:868:                                    ; preds = %865
  %869 = load i32, i32* %11, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_alloc_order, i64 0, i64 %870
  %872 = load i32, i32* %871, align 4
  store i32 %872, i32* %27, align 4
  %873 = load i32, i32* %27, align 4
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_n_refs, i64 0, i64 %874
  %876 = load i32, i32* %875, align 4
  %877 = icmp ne i32 %876, 0
  br i1 %877, label %878, label %1111

; <label>:878:                                    ; preds = %868
  %879 = load i64, i64* %16, align 8
  %880 = load i32, i32* %27, align 4
  %881 = zext i32 %880 to i64
  %882 = shl i64 1, %881
  %883 = and i64 %879, %882
  %884 = icmp ne i64 %883, 0
  br i1 %884, label %1111, label %885

; <label>:885:                                    ; preds = %878
  %886 = load i32, i32* %27, align 4
  %887 = load i32, i32* %18, align 4
  %888 = call i32 @ix86_hard_regno_mode_ok(i32 %886, i32 %887)
  %889 = icmp ne i32 %888, 0
  br i1 %889, label %890, label %1111

; <label>:890:                                    ; preds = %885
  %891 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %892 = load i32, i32* %6, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds %struct.allocno, %struct.allocno* %891, i64 %893
  %895 = getelementptr inbounds %struct.allocno, %struct.allocno* %894, i32 0, i32 2
  %896 = load i32, i32* %895, align 8
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %902, label %898

; <label>:898:                                    ; preds = %890
  %899 = load i32, i32* %9, align 4
  %900 = icmp ne i32 %899, 0
  br i1 %900, label %902, label %901

; <label>:901:                                    ; preds = %898
  br i1 false, label %1111, label %902

; <label>:902:                                    ; preds = %901, %898, %890
  %903 = load i32, i32* %27, align 4
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_freq, i64 0, i64 %904
  %906 = load i32, i32* %905, align 4
  %907 = sitofp i32 %906 to double
  %908 = load i32, i32* %27, align 4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_live_length, i64 0, i64 %909
  %911 = load i32, i32* %910, align 4
  %912 = sitofp i32 %911 to double
  %913 = fdiv double %907, %912
  store double %913, double* %28, align 8
  %914 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %915 = load i32, i32* %6, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds %struct.allocno, %struct.allocno* %914, i64 %916
  %918 = getelementptr inbounds %struct.allocno, %struct.allocno* %917, i32 0, i32 4
  %919 = load i32, i32* %918, align 8
  %920 = sitofp i32 %919 to double
  %921 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %922 = load i32, i32* %6, align 4
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds %struct.allocno, %struct.allocno* %921, i64 %923
  %925 = getelementptr inbounds %struct.allocno, %struct.allocno* %924, i32 0, i32 5
  %926 = load i32, i32* %925, align 4
  %927 = sitofp i32 %926 to double
  %928 = fdiv double %920, %927
  store double %928, double* %29, align 8
  %929 = load double, double* %28, align 8
  %930 = load double, double* %29, align 8
  %931 = fcmp olt double %929, %930
  br i1 %931, label %932, label %1110

; <label>:932:                                    ; preds = %902
  store i32 0, i32* %30, align 4
  br label %933

; <label>:933:                                    ; preds = %1105, %932
  %934 = load i32, i32* %30, align 4
  %935 = load i32, i32* @max_regno, align 4
  %936 = icmp slt i32 %934, %935
  br i1 %936, label %937, label %1108

; <label>:937:                                    ; preds = %933
  %938 = load i16*, i16** @reg_renumber, align 8
  %939 = load i32, i32* %30, align 4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds i16, i16* %938, i64 %940
  %942 = load i16, i16* %941, align 2
  %943 = sext i16 %942 to i32
  %944 = icmp sge i32 %943, 0
  br i1 %944, label %945, label %1104

; <label>:945:                                    ; preds = %937
  %946 = load i16*, i16** @reg_renumber, align 8
  %947 = load i32, i32* %30, align 4
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds i16, i16* %946, i64 %948
  %950 = load i16, i16* %949, align 2
  %951 = sext i16 %950 to i32
  store i32 %951, i32* %31, align 4
  %952 = load i32, i32* %31, align 4
  %953 = load i32, i32* %31, align 4
  %954 = icmp sge i32 %953, 8
  br i1 %954, label %955, label %958

; <label>:955:                                    ; preds = %945
  %956 = load i32, i32* %31, align 4
  %957 = icmp sle i32 %956, 15
  br i1 %957, label %976, label %958

; <label>:958:                                    ; preds = %955, %945
  %959 = load i32, i32* %31, align 4
  %960 = icmp sge i32 %959, 21
  br i1 %960, label %961, label %964

; <label>:961:                                    ; preds = %958
  %962 = load i32, i32* %31, align 4
  %963 = icmp sle i32 %962, 28
  br i1 %963, label %976, label %964

; <label>:964:                                    ; preds = %961, %958
  %965 = load i32, i32* %31, align 4
  %966 = icmp sge i32 %965, 45
  br i1 %966, label %967, label %970

; <label>:967:                                    ; preds = %964
  %968 = load i32, i32* %31, align 4
  %969 = icmp sle i32 %968, 52
  br i1 %969, label %976, label %970

; <label>:970:                                    ; preds = %967, %964
  %971 = load i32, i32* %31, align 4
  %972 = icmp sge i32 %971, 29
  br i1 %972, label %973, label %1015

; <label>:973:                                    ; preds = %970
  %974 = load i32, i32* %31, align 4
  %975 = icmp sle i32 %974, 36
  br i1 %975, label %976, label %1015

; <label>:976:                                    ; preds = %973, %967, %961, %955
  %977 = load %struct.function*, %struct.function** @cfun, align 8
  %978 = getelementptr inbounds %struct.function, %struct.function* %977, i32 0, i32 3
  %979 = load %struct.emit_status*, %struct.emit_status** %978, align 8
  %980 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %979, i32 0, i32 12
  %981 = load %struct.rtx_def**, %struct.rtx_def*** %980, align 8
  %982 = load i32, i32* %30, align 4
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %981, i64 %983
  %985 = load %struct.rtx_def*, %struct.rtx_def** %984, align 8
  %986 = bitcast %struct.rtx_def* %985 to i32*
  %987 = load i32, i32* %986, align 8
  %988 = lshr i32 %987, 16
  %989 = and i32 %988, 255
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %990
  %992 = load i32, i32* %991, align 4
  %993 = icmp eq i32 %992, 5
  br i1 %993, label %1012, label %994

; <label>:994:                                    ; preds = %976
  %995 = load %struct.function*, %struct.function** @cfun, align 8
  %996 = getelementptr inbounds %struct.function, %struct.function* %995, i32 0, i32 3
  %997 = load %struct.emit_status*, %struct.emit_status** %996, align 8
  %998 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %997, i32 0, i32 12
  %999 = load %struct.rtx_def**, %struct.rtx_def*** %998, align 8
  %1000 = load i32, i32* %30, align 4
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %999, i64 %1001
  %1003 = load %struct.rtx_def*, %struct.rtx_def** %1002, align 8
  %1004 = bitcast %struct.rtx_def* %1003 to i32*
  %1005 = load i32, i32* %1004, align 8
  %1006 = lshr i32 %1005, 16
  %1007 = and i32 %1006, 255
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %1008
  %1010 = load i32, i32* %1009, align 4
  %1011 = icmp eq i32 %1010, 6
  br label %1012

; <label>:1012:                                   ; preds = %994, %976
  %1013 = phi i1 [ true, %976 ], [ %1011, %994 ]
  %1014 = select i1 %1013, i32 2, i32 1
  br label %1088

; <label>:1015:                                   ; preds = %973, %970
  %1016 = load %struct.function*, %struct.function** @cfun, align 8
  %1017 = getelementptr inbounds %struct.function, %struct.function* %1016, i32 0, i32 3
  %1018 = load %struct.emit_status*, %struct.emit_status** %1017, align 8
  %1019 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1018, i32 0, i32 12
  %1020 = load %struct.rtx_def**, %struct.rtx_def*** %1019, align 8
  %1021 = load i32, i32* %30, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1020, i64 %1022
  %1024 = load %struct.rtx_def*, %struct.rtx_def** %1023, align 8
  %1025 = bitcast %struct.rtx_def* %1024 to i32*
  %1026 = load i32, i32* %1025, align 8
  %1027 = lshr i32 %1026, 16
  %1028 = and i32 %1027, 255
  %1029 = icmp eq i32 %1028, 18
  br i1 %1029, label %1030, label %1035

; <label>:1030:                                   ; preds = %1015
  %1031 = load i32, i32* @target_flags, align 4
  %1032 = and i32 %1031, 33554432
  %1033 = icmp ne i32 %1032, 0
  %1034 = select i1 %1033, i32 2, i32 3
  br label %1086

; <label>:1035:                                   ; preds = %1015
  %1036 = load %struct.function*, %struct.function** @cfun, align 8
  %1037 = getelementptr inbounds %struct.function, %struct.function* %1036, i32 0, i32 3
  %1038 = load %struct.emit_status*, %struct.emit_status** %1037, align 8
  %1039 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1038, i32 0, i32 12
  %1040 = load %struct.rtx_def**, %struct.rtx_def*** %1039, align 8
  %1041 = load i32, i32* %30, align 4
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1040, i64 %1042
  %1044 = load %struct.rtx_def*, %struct.rtx_def** %1043, align 8
  %1045 = bitcast %struct.rtx_def* %1044 to i32*
  %1046 = load i32, i32* %1045, align 8
  %1047 = lshr i32 %1046, 16
  %1048 = and i32 %1047, 255
  %1049 = icmp eq i32 %1048, 24
  br i1 %1049, label %1050, label %1055

; <label>:1050:                                   ; preds = %1035
  %1051 = load i32, i32* @target_flags, align 4
  %1052 = and i32 %1051, 33554432
  %1053 = icmp ne i32 %1052, 0
  %1054 = select i1 %1053, i32 4, i32 6
  br label %1084

; <label>:1055:                                   ; preds = %1035
  %1056 = load %struct.function*, %struct.function** @cfun, align 8
  %1057 = getelementptr inbounds %struct.function, %struct.function* %1056, i32 0, i32 3
  %1058 = load %struct.emit_status*, %struct.emit_status** %1057, align 8
  %1059 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1058, i32 0, i32 12
  %1060 = load %struct.rtx_def**, %struct.rtx_def*** %1059, align 8
  %1061 = load i32, i32* %30, align 4
  %1062 = sext i32 %1061 to i64
  %1063 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1060, i64 %1062
  %1064 = load %struct.rtx_def*, %struct.rtx_def** %1063, align 8
  %1065 = bitcast %struct.rtx_def* %1064 to i32*
  %1066 = load i32, i32* %1065, align 8
  %1067 = lshr i32 %1066, 16
  %1068 = and i32 %1067, 255
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %1069
  %1071 = load i8, i8* %1070, align 1
  %1072 = zext i8 %1071 to i32
  %1073 = load i32, i32* @target_flags, align 4
  %1074 = and i32 %1073, 33554432
  %1075 = icmp ne i32 %1074, 0
  %1076 = select i1 %1075, i32 8, i32 4
  %1077 = add nsw i32 %1072, %1076
  %1078 = sub nsw i32 %1077, 1
  %1079 = load i32, i32* @target_flags, align 4
  %1080 = and i32 %1079, 33554432
  %1081 = icmp ne i32 %1080, 0
  %1082 = select i1 %1081, i32 8, i32 4
  %1083 = sdiv i32 %1078, %1082
  br label %1084

; <label>:1084:                                   ; preds = %1055, %1050
  %1085 = phi i32 [ %1054, %1050 ], [ %1083, %1055 ]
  br label %1086

; <label>:1086:                                   ; preds = %1084, %1030
  %1087 = phi i32 [ %1034, %1030 ], [ %1085, %1084 ]
  br label %1088

; <label>:1088:                                   ; preds = %1086, %1012
  %1089 = phi i32 [ %1014, %1012 ], [ %1087, %1086 ]
  %1090 = add nsw i32 %952, %1089
  store i32 %1090, i32* %32, align 4
  %1091 = load i32, i32* %27, align 4
  %1092 = load i32, i32* %31, align 4
  %1093 = icmp sge i32 %1091, %1092
  br i1 %1093, label %1094, label %1103

; <label>:1094:                                   ; preds = %1088
  %1095 = load i32, i32* %27, align 4
  %1096 = load i32, i32* %32, align 4
  %1097 = icmp slt i32 %1095, %1096
  br i1 %1097, label %1098, label %1103

; <label>:1098:                                   ; preds = %1094
  %1099 = load i16*, i16** @reg_renumber, align 8
  %1100 = load i32, i32* %30, align 4
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds i16, i16* %1099, i64 %1101
  store i16 -1, i16* %1102, align 2
  br label %1103

; <label>:1103:                                   ; preds = %1098, %1094, %1088
  br label %1104

; <label>:1104:                                   ; preds = %1103, %937
  br label %1105

; <label>:1105:                                   ; preds = %1104
  %1106 = load i32, i32* %30, align 4
  %1107 = add nsw i32 %1106, 1
  store i32 %1107, i32* %30, align 4
  br label %933

; <label>:1108:                                   ; preds = %933
  %1109 = load i32, i32* %27, align 4
  store i32 %1109, i32* %12, align 4
  br label %1115

; <label>:1110:                                   ; preds = %902
  br label %1111

; <label>:1111:                                   ; preds = %1110, %901, %885, %878, %868
  br label %1112

; <label>:1112:                                   ; preds = %1111
  %1113 = load i32, i32* %11, align 4
  %1114 = add nsw i32 %1113, -1
  store i32 %1114, i32* %11, align 4
  br label %865

; <label>:1115:                                   ; preds = %1108, %865
  br label %1116

; <label>:1116:                                   ; preds = %1115, %856, %853, %850
  %1117 = load i32, i32* %12, align 4
  %1118 = icmp sge i32 %1117, 0
  br i1 %1118, label %1119, label %1321

; <label>:1119:                                   ; preds = %1116
  %1120 = load i32, i32* %12, align 4
  %1121 = trunc i32 %1120 to i16
  %1122 = load i16*, i16** @reg_renumber, align 8
  %1123 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %1124 = load i32, i32* %6, align 4
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds %struct.allocno, %struct.allocno* %1123, i64 %1125
  %1127 = getelementptr inbounds %struct.allocno, %struct.allocno* %1126, i32 0, i32 0
  %1128 = load i32, i32* %1127, align 8
  %1129 = sext i32 %1128 to i64
  %1130 = getelementptr inbounds i16, i16* %1122, i64 %1129
  store i16 %1121, i16* %1130, align 2
  %1131 = load i32*, i32** @reg_may_share, align 8
  %1132 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %1133 = load i32, i32* %6, align 4
  %1134 = sext i32 %1133 to i64
  %1135 = getelementptr inbounds %struct.allocno, %struct.allocno* %1132, i64 %1134
  %1136 = getelementptr inbounds %struct.allocno, %struct.allocno* %1135, i32 0, i32 0
  %1137 = load i32, i32* %1136, align 8
  %1138 = sext i32 %1137 to i64
  %1139 = getelementptr inbounds i32, i32* %1131, i64 %1138
  %1140 = load i32, i32* %1139, align 4
  %1141 = icmp ne i32 %1140, 0
  br i1 %1141, label %1142, label %1167

; <label>:1142:                                   ; preds = %1119
  store i32 53, i32* %34, align 4
  br label %1143

; <label>:1143:                                   ; preds = %1163, %1142
  %1144 = load i32, i32* %34, align 4
  %1145 = load i32, i32* @max_regno, align 4
  %1146 = icmp slt i32 %1144, %1145
  br i1 %1146, label %1147, label %1166

; <label>:1147:                                   ; preds = %1143
  %1148 = load i32*, i32** @reg_allocno, align 8
  %1149 = load i32, i32* %34, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds i32, i32* %1148, i64 %1150
  %1152 = load i32, i32* %1151, align 4
  %1153 = load i32, i32* %6, align 4
  %1154 = icmp eq i32 %1152, %1153
  br i1 %1154, label %1155, label %1162

; <label>:1155:                                   ; preds = %1147
  %1156 = load i32, i32* %12, align 4
  %1157 = trunc i32 %1156 to i16
  %1158 = load i16*, i16** @reg_renumber, align 8
  %1159 = load i32, i32* %34, align 4
  %1160 = sext i32 %1159 to i64
  %1161 = getelementptr inbounds i16, i16* %1158, i64 %1160
  store i16 %1157, i16* %1161, align 2
  br label %1162

; <label>:1162:                                   ; preds = %1155, %1147
  br label %1163

; <label>:1163:                                   ; preds = %1162
  %1164 = load i32, i32* %34, align 4
  %1165 = add nsw i32 %1164, 1
  store i32 %1165, i32* %34, align 4
  br label %1143

; <label>:1166:                                   ; preds = %1143
  br label %1167

; <label>:1167:                                   ; preds = %1166, %1119
  store i64 0, i64* %35, align 8
  %1168 = load i32, i32* %12, align 4
  %1169 = load i32, i32* %12, align 4
  %1170 = icmp sge i32 %1169, 8
  br i1 %1170, label %1171, label %1174

; <label>:1171:                                   ; preds = %1167
  %1172 = load i32, i32* %12, align 4
  %1173 = icmp sle i32 %1172, 15
  br i1 %1173, label %1192, label %1174

; <label>:1174:                                   ; preds = %1171, %1167
  %1175 = load i32, i32* %12, align 4
  %1176 = icmp sge i32 %1175, 21
  br i1 %1176, label %1177, label %1180

; <label>:1177:                                   ; preds = %1174
  %1178 = load i32, i32* %12, align 4
  %1179 = icmp sle i32 %1178, 28
  br i1 %1179, label %1192, label %1180

; <label>:1180:                                   ; preds = %1177, %1174
  %1181 = load i32, i32* %12, align 4
  %1182 = icmp sge i32 %1181, 45
  br i1 %1182, label %1183, label %1186

; <label>:1183:                                   ; preds = %1180
  %1184 = load i32, i32* %12, align 4
  %1185 = icmp sle i32 %1184, 52
  br i1 %1185, label %1192, label %1186

; <label>:1186:                                   ; preds = %1183, %1180
  %1187 = load i32, i32* %12, align 4
  %1188 = icmp sge i32 %1187, 29
  br i1 %1188, label %1189, label %1207

; <label>:1189:                                   ; preds = %1186
  %1190 = load i32, i32* %12, align 4
  %1191 = icmp sle i32 %1190, 36
  br i1 %1191, label %1192, label %1207

; <label>:1192:                                   ; preds = %1189, %1183, %1177, %1171
  %1193 = load i32, i32* %18, align 4
  %1194 = sext i32 %1193 to i64
  %1195 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %1194
  %1196 = load i32, i32* %1195, align 4
  %1197 = icmp eq i32 %1196, 5
  br i1 %1197, label %1204, label %1198

; <label>:1198:                                   ; preds = %1192
  %1199 = load i32, i32* %18, align 4
  %1200 = sext i32 %1199 to i64
  %1201 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %1200
  %1202 = load i32, i32* %1201, align 4
  %1203 = icmp eq i32 %1202, 6
  br label %1204

; <label>:1204:                                   ; preds = %1198, %1192
  %1205 = phi i1 [ true, %1192 ], [ %1203, %1198 ]
  %1206 = select i1 %1205, i32 2, i32 1
  br label %1244

; <label>:1207:                                   ; preds = %1189, %1186
  %1208 = load i32, i32* %18, align 4
  %1209 = icmp eq i32 %1208, 18
  br i1 %1209, label %1210, label %1215

; <label>:1210:                                   ; preds = %1207
  %1211 = load i32, i32* @target_flags, align 4
  %1212 = and i32 %1211, 33554432
  %1213 = icmp ne i32 %1212, 0
  %1214 = select i1 %1213, i32 2, i32 3
  br label %1242

; <label>:1215:                                   ; preds = %1207
  %1216 = load i32, i32* %18, align 4
  %1217 = icmp eq i32 %1216, 24
  br i1 %1217, label %1218, label %1223

; <label>:1218:                                   ; preds = %1215
  %1219 = load i32, i32* @target_flags, align 4
  %1220 = and i32 %1219, 33554432
  %1221 = icmp ne i32 %1220, 0
  %1222 = select i1 %1221, i32 4, i32 6
  br label %1240

; <label>:1223:                                   ; preds = %1215
  %1224 = load i32, i32* %18, align 4
  %1225 = sext i32 %1224 to i64
  %1226 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %1225
  %1227 = load i8, i8* %1226, align 1
  %1228 = zext i8 %1227 to i32
  %1229 = load i32, i32* @target_flags, align 4
  %1230 = and i32 %1229, 33554432
  %1231 = icmp ne i32 %1230, 0
  %1232 = select i1 %1231, i32 8, i32 4
  %1233 = add nsw i32 %1228, %1232
  %1234 = sub nsw i32 %1233, 1
  %1235 = load i32, i32* @target_flags, align 4
  %1236 = and i32 %1235, 33554432
  %1237 = icmp ne i32 %1236, 0
  %1238 = select i1 %1237, i32 8, i32 4
  %1239 = sdiv i32 %1234, %1238
  br label %1240

; <label>:1240:                                   ; preds = %1223, %1218
  %1241 = phi i32 [ %1222, %1218 ], [ %1239, %1223 ]
  br label %1242

; <label>:1242:                                   ; preds = %1240, %1210
  %1243 = phi i32 [ %1214, %1210 ], [ %1241, %1240 ]
  br label %1244

; <label>:1244:                                   ; preds = %1242, %1204
  %1245 = phi i32 [ %1206, %1204 ], [ %1243, %1242 ]
  %1246 = add nsw i32 %1168, %1245
  store i32 %1246, i32* %33, align 4
  %1247 = load i32, i32* %12, align 4
  store i32 %1247, i32* %34, align 4
  br label %1248

; <label>:1248:                                   ; preds = %1269, %1244
  %1249 = load i32, i32* %34, align 4
  %1250 = load i32, i32* %33, align 4
  %1251 = icmp slt i32 %1249, %1250
  br i1 %1251, label %1252, label %1272

; <label>:1252:                                   ; preds = %1248
  %1253 = load i32, i32* %34, align 4
  %1254 = zext i32 %1253 to i64
  %1255 = shl i64 1, %1254
  %1256 = load i64, i64* %35, align 8
  %1257 = or i64 %1256, %1255
  store i64 %1257, i64* %35, align 8
  %1258 = load i32, i32* %34, align 4
  %1259 = zext i32 %1258 to i64
  %1260 = shl i64 1, %1259
  %1261 = load i64, i64* @regs_used_so_far, align 8
  %1262 = or i64 %1261, %1260
  store i64 %1262, i64* @regs_used_so_far, align 8
  %1263 = load i32, i32* %34, align 4
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_n_refs, i64 0, i64 %1264
  store i32 0, i32* %1265, align 4
  %1266 = load i32, i32* %34, align 4
  %1267 = sext i32 %1266 to i64
  %1268 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_freq, i64 0, i64 %1267
  store i32 0, i32* %1268, align 4
  br label %1269

; <label>:1269:                                   ; preds = %1252
  %1270 = load i32, i32* %34, align 4
  %1271 = add nsw i32 %1270, 1
  store i32 %1271, i32* %34, align 4
  br label %1248

; <label>:1272:                                   ; preds = %1248
  %1273 = load i32, i32* %6, align 4
  store i32 %1273, i32* %33, align 4
  br label %1274

; <label>:1274:                                   ; preds = %1272
  %1275 = load i64*, i64** @conflicts, align 8
  %1276 = load i32, i32* %33, align 4
  %1277 = load i32, i32* @allocno_row_words, align 4
  %1278 = mul nsw i32 %1276, %1277
  %1279 = sext i32 %1278 to i64
  %1280 = getelementptr inbounds i64, i64* %1275, i64 %1279
  store i64* %1280, i64** %38, align 8
  %1281 = load i32, i32* @allocno_row_words, align 4
  %1282 = sub nsw i32 %1281, 1
  store i32 %1282, i32* %36, align 4
  store i32 0, i32* %37, align 4
  br label %1283

; <label>:1283:                                   ; preds = %1314, %1274
  %1284 = load i32, i32* %36, align 4
  %1285 = icmp sge i32 %1284, 0
  br i1 %1285, label %1286, label %1319

; <label>:1286:                                   ; preds = %1283
  %1287 = load i64*, i64** %38, align 8
  %1288 = getelementptr inbounds i64, i64* %1287, i32 1
  store i64* %1288, i64** %38, align 8
  %1289 = load i64, i64* %1287, align 8
  store i64 %1289, i64* %39, align 8
  %1290 = load i32, i32* %37, align 4
  store i32 %1290, i32* %34, align 4
  br label %1291

; <label>:1291:                                   ; preds = %1308, %1286
  %1292 = load i64, i64* %39, align 8
  %1293 = icmp ne i64 %1292, 0
  br i1 %1293, label %1294, label %1313

; <label>:1294:                                   ; preds = %1291
  %1295 = load i64, i64* %39, align 8
  %1296 = and i64 %1295, 1
  %1297 = icmp ne i64 %1296, 0
  br i1 %1297, label %1298, label %1307

; <label>:1298:                                   ; preds = %1294
  %1299 = load i64, i64* %35, align 8
  %1300 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %1301 = load i32, i32* %34, align 4
  %1302 = sext i32 %1301 to i64
  %1303 = getelementptr inbounds %struct.allocno, %struct.allocno* %1300, i64 %1302
  %1304 = getelementptr inbounds %struct.allocno, %struct.allocno* %1303, i32 0, i32 6
  %1305 = load i64, i64* %1304, align 8
  %1306 = or i64 %1305, %1299
  store i64 %1306, i64* %1304, align 8
  br label %1307

; <label>:1307:                                   ; preds = %1298, %1294
  br label %1308

; <label>:1308:                                   ; preds = %1307
  %1309 = load i64, i64* %39, align 8
  %1310 = lshr i64 %1309, 1
  store i64 %1310, i64* %39, align 8
  %1311 = load i32, i32* %34, align 4
  %1312 = add nsw i32 %1311, 1
  store i32 %1312, i32* %34, align 4
  br label %1291

; <label>:1313:                                   ; preds = %1291
  br label %1314

; <label>:1314:                                   ; preds = %1313
  %1315 = load i32, i32* %36, align 4
  %1316 = add nsw i32 %1315, -1
  store i32 %1316, i32* %36, align 4
  %1317 = load i32, i32* %37, align 4
  %1318 = add nsw i32 %1317, 64
  store i32 %1318, i32* %37, align 4
  br label %1283

; <label>:1319:                                   ; preds = %1283
  br label %1320

; <label>:1320:                                   ; preds = %1319
  br label %1321

; <label>:1321:                                   ; preds = %1320, %1116, %847
  ret void
}

declare i32 @reg_alternate_class(i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noinline nounwind uwtable
define void @build_insn_chain(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca %struct.insn_chain**, align 8
  %4 = alloca %struct.insn_chain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_head_def, align 8
  %7 = alloca %struct.insn_chain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bitmap_element_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.rtx_def*, align 8
  %16 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  store %struct.insn_chain** @reload_insn_chain, %struct.insn_chain*** %3, align 8
  store %struct.insn_chain* null, %struct.insn_chain** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %6)
  store %struct.bitmap_head_def* %17, %struct.bitmap_head_def** @live_relevant_regs, align 8
  br label %18

; <label>:18:                                     ; preds = %416, %1
  %19 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %20 = icmp ne %struct.rtx_def* %19, null
  br i1 %20, label %21, label %422

; <label>:21:                                     ; preds = %18
  %22 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %24 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %23, i32 0, i32 4
  %25 = bitcast %union.varray_data_tag* %24 to [1 x %struct.basic_block_def*]*
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %25, i64 0, i64 %27
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %28, align 8
  %30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i32 0, i32 0
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %32 = icmp eq %struct.rtx_def* %22, %31
  br i1 %32, label %33, label %156

; <label>:33:                                     ; preds = %21
  %34 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %34)
  br label %35

; <label>:35:                                     ; preds = %33
  %36 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %37 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %36, i32 0, i32 4
  %38 = bitcast %union.varray_data_tag* %37 to [1 x %struct.basic_block_def*]*
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %38, i64 0, i64 %40
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %41, align 8
  %43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 8
  %44 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %43, align 8
  %45 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %44, i32 0, i32 0
  %46 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %45, align 8
  store %struct.bitmap_element_def* %46, %struct.bitmap_element_def** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %47

; <label>:47:                                     ; preds = %58, %35
  %48 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %9, align 8
  %49 = icmp ne %struct.bitmap_element_def* %48, null
  br i1 %49, label %50, label %56

; <label>:50:                                     ; preds = %47
  %51 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %9, align 8
  %52 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = icmp ult i32 %53, %54
  br label %56

; <label>:56:                                     ; preds = %50, %47
  %57 = phi i1 [ false, %47 ], [ %55, %50 ]
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %56
  %59 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %9, align 8
  %60 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %59, i32 0, i32 0
  %61 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %60, align 8
  store %struct.bitmap_element_def* %61, %struct.bitmap_element_def** %9, align 8
  br label %47

; <label>:62:                                     ; preds = %56
  %63 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %9, align 8
  %64 = icmp ne %struct.bitmap_element_def* %63, null
  br i1 %64, label %65, label %72

; <label>:65:                                     ; preds = %62
  %66 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %9, align 8
  %67 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %65
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %72

; <label>:72:                                     ; preds = %71, %65, %62
  br label %73

; <label>:73:                                     ; preds = %150, %72
  %74 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %9, align 8
  %75 = icmp ne %struct.bitmap_element_def* %74, null
  br i1 %75, label %76, label %154

; <label>:76:                                     ; preds = %73
  br label %77

; <label>:77:                                     ; preds = %146, %76
  %78 = load i32, i32* %12, align 4
  %79 = icmp ult i32 %78, 2
  br i1 %79, label %80, label %149

; <label>:80:                                     ; preds = %77
  %81 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %9, align 8
  %82 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %81, i32 0, i32 3
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i64], [2 x i64]* %82, i64 0, i64 %84
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %13, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %145

; <label>:89:                                     ; preds = %80
  br label %90

; <label>:90:                                     ; preds = %141, %89
  %91 = load i32, i32* %11, align 4
  %92 = icmp ult i32 %91, 64
  br i1 %92, label %93, label %144

; <label>:93:                                     ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = shl i64 1, %95
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* %14, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %140

; <label>:101:                                    ; preds = %93
  %102 = load i64, i64* %14, align 8
  %103 = xor i64 %102, -1
  %104 = load i64, i64* %13, align 8
  %105 = and i64 %104, %103
  store i64 %105, i64* %13, align 8
  %106 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %9, align 8
  %107 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = mul i32 %108, 128
  %110 = load i32, i32* %12, align 4
  %111 = mul i32 %110, 64
  %112 = add i32 %109, %111
  %113 = load i32, i32* %11, align 4
  %114 = add i32 %112, %113
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 53
  br i1 %116, label %117, label %124

; <label>:117:                                    ; preds = %101
  %118 = load i64, i64* @eliminable_regset, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = shl i64 1, %120
  %122 = and i64 %118, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %135, label %132

; <label>:124:                                    ; preds = %101
  %125 = load i16*, i16** @reg_renumber, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i16, i16* %125, i64 %127
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %135

; <label>:132:                                    ; preds = %124, %117
  %133 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %134 = load i32, i32* %8, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %133, i32 %134)
  br label %135

; <label>:135:                                    ; preds = %132, %124, %117
  %136 = load i64, i64* %13, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %139

; <label>:138:                                    ; preds = %135
  br label %144

; <label>:139:                                    ; preds = %135
  br label %140

; <label>:140:                                    ; preds = %139, %93
  br label %141

; <label>:141:                                    ; preds = %140
  %142 = load i32, i32* %11, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %90

; <label>:144:                                    ; preds = %138, %90
  br label %145

; <label>:145:                                    ; preds = %144, %80
  store i32 0, i32* %11, align 4
  br label %146

; <label>:146:                                    ; preds = %145
  %147 = load i32, i32* %12, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %77

; <label>:149:                                    ; preds = %77
  store i32 0, i32* %12, align 4
  br label %150

; <label>:150:                                    ; preds = %149
  %151 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %9, align 8
  %152 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %151, i32 0, i32 0
  %153 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %152, align 8
  store %struct.bitmap_element_def* %153, %struct.bitmap_element_def** %9, align 8
  br label %73

; <label>:154:                                    ; preds = %73
  br label %155

; <label>:155:                                    ; preds = %154
  br label %156

; <label>:156:                                    ; preds = %155, %21
  %157 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %158 = bitcast %struct.rtx_def* %157 to i32*
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, 65535
  %161 = icmp ne i32 %160, 37
  br i1 %161, label %162, label %327

; <label>:162:                                    ; preds = %156
  %163 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %164 = bitcast %struct.rtx_def* %163 to i32*
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, 65535
  %167 = icmp ne i32 %166, 35
  br i1 %167, label %168, label %327

; <label>:168:                                    ; preds = %162
  %169 = call %struct.insn_chain* @new_insn_chain()
  store %struct.insn_chain* %169, %struct.insn_chain** %7, align 8
  %170 = load %struct.insn_chain*, %struct.insn_chain** %4, align 8
  %171 = load %struct.insn_chain*, %struct.insn_chain** %7, align 8
  %172 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %171, i32 0, i32 1
  store %struct.insn_chain* %170, %struct.insn_chain** %172, align 8
  %173 = load %struct.insn_chain*, %struct.insn_chain** %7, align 8
  store %struct.insn_chain* %173, %struct.insn_chain** %4, align 8
  %174 = load %struct.insn_chain*, %struct.insn_chain** %7, align 8
  %175 = load %struct.insn_chain**, %struct.insn_chain*** %3, align 8
  store %struct.insn_chain* %174, %struct.insn_chain** %175, align 8
  %176 = load %struct.insn_chain*, %struct.insn_chain** %7, align 8
  %177 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %176, i32 0, i32 0
  store %struct.insn_chain** %177, %struct.insn_chain*** %3, align 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %179 = load %struct.insn_chain*, %struct.insn_chain** %7, align 8
  %180 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %179, i32 0, i32 4
  store %struct.rtx_def* %178, %struct.rtx_def** %180, align 8
  %181 = load i32, i32* %5, align 4
  %182 = load %struct.insn_chain*, %struct.insn_chain** %7, align 8
  %183 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %185 = bitcast %struct.rtx_def* %184 to i32*
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, 65535
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 105
  br i1 %192, label %193, label %258

; <label>:193:                                    ; preds = %168
  %194 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %195, i64 0, i64 6
  %197 = bitcast %union.rtunion_def* %196 to %struct.rtx_def**
  %198 = load %struct.rtx_def*, %struct.rtx_def** %197, align 8
  store %struct.rtx_def* %198, %struct.rtx_def** %15, align 8
  br label %199

; <label>:199:                                    ; preds = %240, %193
  %200 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %201 = icmp ne %struct.rtx_def* %200, null
  br i1 %201, label %202, label %246

; <label>:202:                                    ; preds = %199
  %203 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %204 = bitcast %struct.rtx_def* %203 to i32*
  %205 = load i32, i32* %204, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %239

; <label>:209:                                    ; preds = %202
  %210 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %211 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %212 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %211, i64 0, i64 0
  %213 = bitcast %union.rtunion_def* %212 to %struct.rtx_def**
  %214 = load %struct.rtx_def*, %struct.rtx_def** %213, align 8
  %215 = bitcast %struct.rtx_def* %214 to i32*
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 61
  br i1 %218, label %219, label %239

; <label>:219:                                    ; preds = %209
  %220 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %220, i32 0, i32 1
  %222 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %221, i64 0, i64 0
  %223 = bitcast %union.rtunion_def* %222 to %struct.rtx_def**
  %224 = load %struct.rtx_def*, %struct.rtx_def** %223, align 8
  %225 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %226 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %225, i64 0, i64 0
  %227 = bitcast %union.rtunion_def* %226 to i32*
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %230 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %229, i32 0, i32 1
  %231 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %230, i64 0, i64 0
  %232 = bitcast %union.rtunion_def* %231 to %struct.rtx_def**
  %233 = load %struct.rtx_def*, %struct.rtx_def** %232, align 8
  %234 = bitcast %struct.rtx_def* %233 to i32*
  %235 = load i32, i32* %234, align 8
  %236 = lshr i32 %235, 16
  %237 = and i32 %236, 255
  %238 = load %struct.insn_chain*, %struct.insn_chain** %7, align 8
  call void @reg_dies(i32 %228, i32 %237, %struct.insn_chain* %238)
  br label %239

; <label>:239:                                    ; preds = %219, %209, %202
  br label %240

; <label>:240:                                    ; preds = %239
  %241 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %242 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %241, i32 0, i32 1
  %243 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %242, i64 0, i64 1
  %244 = bitcast %union.rtunion_def* %243 to %struct.rtx_def**
  %245 = load %struct.rtx_def*, %struct.rtx_def** %244, align 8
  store %struct.rtx_def* %245, %struct.rtx_def** %15, align 8
  br label %199

; <label>:246:                                    ; preds = %199
  %247 = load %struct.insn_chain*, %struct.insn_chain** %7, align 8
  %248 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %247, i32 0, i32 5
  %249 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %248, %struct.bitmap_head_def* %249)
  %250 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %251 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %250, i32 0, i32 1
  %252 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %251, i64 0, i64 3
  %253 = bitcast %union.rtunion_def* %252 to %struct.rtx_def**
  %254 = load %struct.rtx_def*, %struct.rtx_def** %253, align 8
  %255 = load %struct.insn_chain*, %struct.insn_chain** %7, align 8
  %256 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %255, i32 0, i32 6
  %257 = bitcast %struct.bitmap_head_def* %256 to i8*
  call void @note_stores(%struct.rtx_def* %254, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @reg_becomes_live, i8* %257)
  br label %262

; <label>:258:                                    ; preds = %168
  %259 = load %struct.insn_chain*, %struct.insn_chain** %7, align 8
  %260 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %259, i32 0, i32 5
  %261 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %260, %struct.bitmap_head_def* %261)
  br label %262

; <label>:262:                                    ; preds = %258, %246
  %263 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %264 = bitcast %struct.rtx_def* %263 to i32*
  %265 = load i32, i32* %264, align 8
  %266 = and i32 %265, 65535
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 105
  br i1 %271, label %272, label %326

; <label>:272:                                    ; preds = %262
  %273 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %273, i32 0, i32 1
  %275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %274, i64 0, i64 6
  %276 = bitcast %union.rtunion_def* %275 to %struct.rtx_def**
  %277 = load %struct.rtx_def*, %struct.rtx_def** %276, align 8
  store %struct.rtx_def* %277, %struct.rtx_def** %16, align 8
  br label %278

; <label>:278:                                    ; preds = %319, %272
  %279 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %280 = icmp ne %struct.rtx_def* %279, null
  br i1 %280, label %281, label %325

; <label>:281:                                    ; preds = %278
  %282 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %283 = bitcast %struct.rtx_def* %282 to i32*
  %284 = load i32, i32* %283, align 8
  %285 = lshr i32 %284, 16
  %286 = and i32 %285, 255
  %287 = icmp eq i32 %286, 10
  br i1 %287, label %288, label %318

; <label>:288:                                    ; preds = %281
  %289 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %290 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %289, i32 0, i32 1
  %291 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %290, i64 0, i64 0
  %292 = bitcast %union.rtunion_def* %291 to %struct.rtx_def**
  %293 = load %struct.rtx_def*, %struct.rtx_def** %292, align 8
  %294 = bitcast %struct.rtx_def* %293 to i32*
  %295 = load i32, i32* %294, align 8
  %296 = and i32 %295, 65535
  %297 = icmp eq i32 %296, 61
  br i1 %297, label %298, label %318

; <label>:298:                                    ; preds = %288
  %299 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %299, i32 0, i32 1
  %301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %300, i64 0, i64 0
  %302 = bitcast %union.rtunion_def* %301 to %struct.rtx_def**
  %303 = load %struct.rtx_def*, %struct.rtx_def** %302, align 8
  %304 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %303, i32 0, i32 1
  %305 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %304, i64 0, i64 0
  %306 = bitcast %union.rtunion_def* %305 to i32*
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %309 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %308, i32 0, i32 1
  %310 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %309, i64 0, i64 0
  %311 = bitcast %union.rtunion_def* %310 to %struct.rtx_def**
  %312 = load %struct.rtx_def*, %struct.rtx_def** %311, align 8
  %313 = bitcast %struct.rtx_def* %312 to i32*
  %314 = load i32, i32* %313, align 8
  %315 = lshr i32 %314, 16
  %316 = and i32 %315, 255
  %317 = load %struct.insn_chain*, %struct.insn_chain** %7, align 8
  call void @reg_dies(i32 %307, i32 %316, %struct.insn_chain* %317)
  br label %318

; <label>:318:                                    ; preds = %298, %288, %281
  br label %319

; <label>:319:                                    ; preds = %318
  %320 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %321 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %320, i32 0, i32 1
  %322 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %321, i64 0, i64 1
  %323 = bitcast %union.rtunion_def* %322 to %struct.rtx_def**
  %324 = load %struct.rtx_def*, %struct.rtx_def** %323, align 8
  store %struct.rtx_def* %324, %struct.rtx_def** %16, align 8
  br label %278

; <label>:325:                                    ; preds = %278
  br label %326

; <label>:326:                                    ; preds = %325, %262
  br label %327

; <label>:327:                                    ; preds = %326, %162, %156
  %328 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %329 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %330 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %329, i32 0, i32 4
  %331 = bitcast %union.varray_data_tag* %330 to [1 x %struct.basic_block_def*]*
  %332 = load i32, i32* %5, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %331, i64 0, i64 %333
  %335 = load %struct.basic_block_def*, %struct.basic_block_def** %334, align 8
  %336 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %335, i32 0, i32 1
  %337 = load %struct.rtx_def*, %struct.rtx_def** %336, align 8
  %338 = icmp eq %struct.rtx_def* %328, %337
  br i1 %338, label %339, label %342

; <label>:339:                                    ; preds = %327
  %340 = load i32, i32* %5, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %5, align 4
  br label %342

; <label>:342:                                    ; preds = %339, %327
  %343 = load i32, i32* %5, align 4
  %344 = load i32, i32* @n_basic_blocks, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %415

; <label>:346:                                    ; preds = %342
  %347 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %348 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %347, i32 0, i32 1
  %349 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %348, i64 0, i64 2
  %350 = bitcast %union.rtunion_def* %349 to %struct.rtx_def**
  %351 = load %struct.rtx_def*, %struct.rtx_def** %350, align 8
  store %struct.rtx_def* %351, %struct.rtx_def** %2, align 8
  br label %352

; <label>:352:                                    ; preds = %408, %346
  %353 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %354 = icmp ne %struct.rtx_def* %353, null
  br i1 %354, label %355, label %414

; <label>:355:                                    ; preds = %352
  %356 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %357 = bitcast %struct.rtx_def* %356 to i32*
  %358 = load i32, i32* %357, align 8
  %359 = and i32 %358, 65535
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %360
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 105
  br i1 %364, label %365, label %407

; <label>:365:                                    ; preds = %355
  %366 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %367 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %366, i32 0, i32 1
  %368 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %367, i64 0, i64 3
  %369 = bitcast %union.rtunion_def* %368 to %struct.rtx_def**
  %370 = load %struct.rtx_def*, %struct.rtx_def** %369, align 8
  %371 = bitcast %struct.rtx_def* %370 to i32*
  %372 = load i32, i32* %371, align 8
  %373 = and i32 %372, 65535
  %374 = icmp ne i32 %373, 48
  br i1 %374, label %375, label %407

; <label>:375:                                    ; preds = %365
  %376 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %377 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %376, i32 0, i32 1
  %378 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %377, i64 0, i64 3
  %379 = bitcast %union.rtunion_def* %378 to %struct.rtx_def**
  %380 = load %struct.rtx_def*, %struct.rtx_def** %379, align 8
  %381 = bitcast %struct.rtx_def* %380 to i32*
  %382 = load i32, i32* %381, align 8
  %383 = and i32 %382, 65535
  %384 = icmp eq i32 %383, 44
  br i1 %384, label %395, label %385

; <label>:385:                                    ; preds = %375
  %386 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %387 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %386, i32 0, i32 1
  %388 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %387, i64 0, i64 3
  %389 = bitcast %union.rtunion_def* %388 to %struct.rtx_def**
  %390 = load %struct.rtx_def*, %struct.rtx_def** %389, align 8
  %391 = bitcast %struct.rtx_def* %390 to i32*
  %392 = load i32, i32* %391, align 8
  %393 = and i32 %392, 65535
  %394 = icmp eq i32 %393, 45
  br i1 %394, label %395, label %406

; <label>:395:                                    ; preds = %385, %375
  %396 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %397 = call %struct.rtx_def* @prev_real_insn(%struct.rtx_def* %396)
  %398 = icmp ne %struct.rtx_def* %397, null
  br i1 %398, label %399, label %406

; <label>:399:                                    ; preds = %395
  %400 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %401 = call %struct.rtx_def* @prev_real_insn(%struct.rtx_def* %400)
  %402 = bitcast %struct.rtx_def* %401 to i32*
  %403 = load i32, i32* %402, align 8
  %404 = and i32 %403, 65535
  %405 = icmp eq i32 %404, 33
  br i1 %405, label %407, label %406

; <label>:406:                                    ; preds = %399, %395, %385
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1898, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.build_insn_chain, i32 0, i32 0)) #5
  unreachable

; <label>:407:                                    ; preds = %399, %365, %355
  br label %408

; <label>:408:                                    ; preds = %407
  %409 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %409, i32 0, i32 1
  %411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %410, i64 0, i64 2
  %412 = bitcast %union.rtunion_def* %411 to %struct.rtx_def**
  %413 = load %struct.rtx_def*, %struct.rtx_def** %412, align 8
  store %struct.rtx_def* %413, %struct.rtx_def** %2, align 8
  br label %352

; <label>:414:                                    ; preds = %352
  br label %422

; <label>:415:                                    ; preds = %342
  br label %416

; <label>:416:                                    ; preds = %415
  %417 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %418 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %417, i32 0, i32 1
  %419 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %418, i64 0, i64 2
  %420 = bitcast %union.rtunion_def* %419 to %struct.rtx_def**
  %421 = load %struct.rtx_def*, %struct.rtx_def** %420, align 8
  store %struct.rtx_def* %421, %struct.rtx_def** %2, align 8
  br label %18

; <label>:422:                                    ; preds = %414, %18
  br label %423

; <label>:423:                                    ; preds = %422
  %424 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %425 = icmp ne %struct.bitmap_head_def* %424, null
  br i1 %425, label %426, label %428

; <label>:426:                                    ; preds = %423
  %427 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %427)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @live_relevant_regs, align 8
  br label %428

; <label>:428:                                    ; preds = %426, %423
  br label %429

; <label>:429:                                    ; preds = %428
  %430 = load %struct.insn_chain**, %struct.insn_chain*** %3, align 8
  store %struct.insn_chain* null, %struct.insn_chain** %430, align 8
  ret void
}

declare %struct.rtx_def* @get_insns() #1

declare i32 @reload(%struct.rtx_def*, i32) #1

; Function Attrs: noinline nounwind uwtable
define void @retry_global_alloc(i32, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32*, i32** @reg_allocno, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %59

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i64, i64* %4, align 8
  call void @find_reg(i32 %14, i64 %15, i32 0, i32 0, i32 1)
  %16 = load i16*, i16** @reg_renumber, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %16, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

; <label>:23:                                     ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @reg_alternate_class(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i64, i64* %4, align 8
  call void @find_reg(i32 %28, i64 %29, i32 1, i32 0, i32 1)
  br label %30

; <label>:30:                                     ; preds = %27, %23, %13
  %31 = load i16*, i16** @reg_renumber, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %58

; <label>:38:                                     ; preds = %30
  %39 = load i16*, i16** @reg_renumber, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %39, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i32
  %45 = load %struct.function*, %struct.function** @cfun, align 8
  %46 = getelementptr inbounds %struct.function, %struct.function* %45, i32 0, i32 3
  %47 = load %struct.emit_status*, %struct.emit_status** %46, align 8
  %48 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %47, i32 0, i32 12
  %49 = load %struct.rtx_def**, %struct.rtx_def*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %49, i64 %51
  %53 = load %struct.rtx_def*, %struct.rtx_def** %52, align 8
  %54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %54, i64 0, i64 0
  %56 = bitcast %union.rtunion_def* %55 to i32*
  store i32 %44, i32* %56, align 8
  %57 = load i32, i32* %3, align 4
  call void @mark_home_live(i32 %57)
  br label %58

; <label>:58:                                     ; preds = %38, %30
  br label %59

; <label>:59:                                     ; preds = %58, %2
  ret void
}

declare void @mark_home_live(i32) #1

; Function Attrs: noinline nounwind uwtable
define void @mark_elimination(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_head_def*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %31, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @n_basic_blocks, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %34

; <label>:11:                                     ; preds = %7
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %13 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 4
  %14 = bitcast %union.varray_data_tag* %13 to [1 x %struct.basic_block_def*]*
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %14, i64 0, i64 %16
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %17, align 8
  %19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 8
  %20 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %19, align 8
  store %struct.bitmap_head_def* %20, %struct.bitmap_head_def** %6, align 8
  %21 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %6, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

; <label>:25:                                     ; preds = %11
  %26 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %6, align 8
  %27 = load i32, i32* %3, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %26, i32 %27)
  %28 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %6, align 8
  %29 = load i32, i32* %4, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %28, i32 %29)
  br label %30

; <label>:30:                                     ; preds = %25, %11
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %7

; <label>:34:                                     ; preds = %7
  ret void
}

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

declare void @bitmap_clear_bit(%struct.bitmap_head_def*, i32) #1

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

declare %struct.insn_chain* @new_insn_chain() #1

; Function Attrs: noinline nounwind uwtable
define internal void @reg_dies(i32, i32, %struct.insn_chain*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.insn_chain*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.insn_chain* %2, %struct.insn_chain** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 53
  br i1 %9, label %10, label %108

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 8
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 15
  br i1 %15, label %34, label %16

; <label>:16:                                     ; preds = %13, %10
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 21
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 28
  br i1 %21, label %34, label %22

; <label>:22:                                     ; preds = %19, %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 45
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 52
  br i1 %27, label %34, label %28

; <label>:28:                                     ; preds = %25, %22
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 29
  br i1 %30, label %31, label %49

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp sle i32 %32, 36
  br i1 %33, label %34, label %49

; <label>:34:                                     ; preds = %31, %25, %19, %13
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %46, label %40

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 6
  br label %46

; <label>:46:                                     ; preds = %40, %34
  %47 = phi i1 [ true, %34 ], [ %45, %40 ]
  %48 = select i1 %47, i32 2, i32 1
  br label %86

; <label>:49:                                     ; preds = %31, %28
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 18
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* @target_flags, align 4
  %54 = and i32 %53, 33554432
  %55 = icmp ne i32 %54, 0
  %56 = select i1 %55, i32 2, i32 3
  br label %84

; <label>:57:                                     ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 24
  br i1 %59, label %60, label %65

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* @target_flags, align 4
  %62 = and i32 %61, 33554432
  %63 = icmp ne i32 %62, 0
  %64 = select i1 %63, i32 4, i32 6
  br label %82

; <label>:65:                                     ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i32, i32* @target_flags, align 4
  %72 = and i32 %71, 33554432
  %73 = icmp ne i32 %72, 0
  %74 = select i1 %73, i32 8, i32 4
  %75 = add nsw i32 %70, %74
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @target_flags, align 4
  %78 = and i32 %77, 33554432
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %79, i32 8, i32 4
  %81 = sdiv i32 %76, %80
  br label %82

; <label>:82:                                     ; preds = %65, %60
  %83 = phi i32 [ %64, %60 ], [ %81, %65 ]
  br label %84

; <label>:84:                                     ; preds = %82, %52
  %85 = phi i32 [ %56, %52 ], [ %83, %82 ]
  br label %86

; <label>:86:                                     ; preds = %84, %46
  %87 = phi i32 [ %48, %46 ], [ %85, %84 ]
  store i32 %87, i32* %7, align 4
  br label %88

; <label>:88:                                     ; preds = %104, %86
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %7, align 4
  %91 = icmp sgt i32 %89, 0
  br i1 %91, label %92, label %107

; <label>:92:                                     ; preds = %88
  %93 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %94 = load i32, i32* %4, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %93, i32 %94)
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %104, label %100

; <label>:100:                                    ; preds = %92
  %101 = load %struct.insn_chain*, %struct.insn_chain** %6, align 8
  %102 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %101, i32 0, i32 6
  %103 = load i32, i32* %4, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %102, i32 %103)
  br label %104

; <label>:104:                                    ; preds = %100, %92
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %88

; <label>:107:                                    ; preds = %88
  br label %123

; <label>:108:                                    ; preds = %3
  %109 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %110 = load i32, i32* %4, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %109, i32 %110)
  %111 = load i16*, i16** @reg_renumber, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, i16* %111, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = sext i16 %115 to i32
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %122

; <label>:118:                                    ; preds = %108
  %119 = load %struct.insn_chain*, %struct.insn_chain** %6, align 8
  %120 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %119, i32 0, i32 6
  %121 = load i32, i32* %4, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %120, i32 %121)
  br label %122

; <label>:122:                                    ; preds = %118, %108
  br label %123

; <label>:123:                                    ; preds = %122, %107
  ret void
}

declare void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @reg_becomes_live(%struct.rtx_def*, %struct.rtx_def*, i8*) #0 {
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %4, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 63
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %3
  %15 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %16, i64 0, i64 0
  %18 = bitcast %union.rtunion_def* %17 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %4, align 8
  br label %20

; <label>:20:                                     ; preds = %14, %3
  %21 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp ne i32 %24, 61
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %20
  br label %168

; <label>:27:                                     ; preds = %20
  %28 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %29, i64 0, i64 0
  %31 = bitcast %union.rtunion_def* %30 to i32*
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 53
  br i1 %34, label %35, label %153

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 8
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 15
  br i1 %40, label %59, label %41

; <label>:41:                                     ; preds = %38, %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 21
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %45, 28
  br i1 %46, label %59, label %47

; <label>:47:                                     ; preds = %44, %41
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 45
  br i1 %49, label %50, label %53

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp sle i32 %51, 52
  br i1 %52, label %59, label %53

; <label>:53:                                     ; preds = %50, %47
  %54 = load i32, i32* %7, align 4
  %55 = icmp sge i32 %54, 29
  br i1 %55, label %56, label %82

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp sle i32 %57, 36
  br i1 %58, label %59, label %82

; <label>:59:                                     ; preds = %56, %50, %44, %38
  %60 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %62 = load i32, i32* %61, align 8
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 5
  br i1 %68, label %79, label %69

; <label>:69:                                     ; preds = %59
  %70 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %72 = load i32, i32* %71, align 8
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 6
  br label %79

; <label>:79:                                     ; preds = %69, %59
  %80 = phi i1 [ true, %59 ], [ %78, %69 ]
  %81 = select i1 %80, i32 2, i32 1
  br label %131

; <label>:82:                                     ; preds = %56, %53
  %83 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %85 = load i32, i32* %84, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = icmp eq i32 %87, 18
  br i1 %88, label %89, label %94

; <label>:89:                                     ; preds = %82
  %90 = load i32, i32* @target_flags, align 4
  %91 = and i32 %90, 33554432
  %92 = icmp ne i32 %91, 0
  %93 = select i1 %92, i32 2, i32 3
  br label %129

; <label>:94:                                     ; preds = %82
  %95 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %97 = load i32, i32* %96, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = icmp eq i32 %99, 24
  br i1 %100, label %101, label %106

; <label>:101:                                    ; preds = %94
  %102 = load i32, i32* @target_flags, align 4
  %103 = and i32 %102, 33554432
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %104, i32 4, i32 6
  br label %127

; <label>:106:                                    ; preds = %94
  %107 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %109 = load i32, i32* %108, align 8
  %110 = lshr i32 %109, 16
  %111 = and i32 %110, 255
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = load i32, i32* @target_flags, align 4
  %117 = and i32 %116, 33554432
  %118 = icmp ne i32 %117, 0
  %119 = select i1 %118, i32 8, i32 4
  %120 = add nsw i32 %115, %119
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* @target_flags, align 4
  %123 = and i32 %122, 33554432
  %124 = icmp ne i32 %123, 0
  %125 = select i1 %124, i32 8, i32 4
  %126 = sdiv i32 %121, %125
  br label %127

; <label>:127:                                    ; preds = %106, %101
  %128 = phi i32 [ %105, %101 ], [ %126, %106 ]
  br label %129

; <label>:129:                                    ; preds = %127, %89
  %130 = phi i32 [ %93, %89 ], [ %128, %127 ]
  br label %131

; <label>:131:                                    ; preds = %129, %79
  %132 = phi i32 [ %81, %79 ], [ %130, %129 ]
  store i32 %132, i32* %8, align 4
  br label %133

; <label>:133:                                    ; preds = %149, %131
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %8, align 4
  %136 = icmp sgt i32 %134, 0
  br i1 %136, label %137, label %152

; <label>:137:                                    ; preds = %133
  %138 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %139 = load i32, i32* %7, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %138, i32 %139)
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %149, label %145

; <label>:145:                                    ; preds = %137
  %146 = load i8*, i8** %6, align 8
  %147 = bitcast i8* %146 to %struct.bitmap_head_def*
  %148 = load i32, i32* %7, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %147, i32 %148)
  br label %149

; <label>:149:                                    ; preds = %145, %137
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %133

; <label>:152:                                    ; preds = %133
  br label %168

; <label>:153:                                    ; preds = %27
  %154 = load i16*, i16** @reg_renumber, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i16, i16* %154, i64 %156
  %158 = load i16, i16* %157, align 2
  %159 = sext i16 %158 to i32
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %167

; <label>:161:                                    ; preds = %153
  %162 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %163 = load i32, i32* %7, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %162, i32 %163)
  %164 = load i8*, i8** %6, align 8
  %165 = bitcast i8* %164 to %struct.bitmap_head_def*
  %166 = load i32, i32* %7, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %165, i32 %166)
  br label %167

; <label>:167:                                    ; preds = %161, %153
  br label %168

; <label>:168:                                    ; preds = %167, %152, %26
  ret void
}

declare %struct.rtx_def* @prev_real_insn(%struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define void @dump_global_regs(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  store i32 53, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

; <label>:7:                                      ; preds = %38, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @max_regno, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %41

; <label>:11:                                     ; preds = %7
  %12 = load i16*, i16** @reg_renumber, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %12, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %37

; <label>:19:                                     ; preds = %11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i16*, i16** @reg_renumber, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %22, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i32
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %21, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = srem i32 %30, 6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %19
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %36

; <label>:36:                                     ; preds = %33, %19
  br label %37

; <label>:37:                                     ; preds = %36, %11
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %7

; <label>:41:                                     ; preds = %7
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %44

; <label>:44:                                     ; preds = %58, %41
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 53
  br i1 %46, label %47, label %61

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %57

; <label>:53:                                     ; preds = %47
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %55)
  br label %57

; <label>:57:                                     ; preds = %53, %47
  br label %58

; <label>:58:                                     ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %44

; <label>:61:                                     ; preds = %44
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @floor_log2_wide(i64) #1

declare void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @mark_reg_live_nc(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sge i32 %7, 8
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 %10, 15
  br i1 %11, label %30, label %12

; <label>:12:                                     ; preds = %9, %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 21
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 28
  br i1 %17, label %30, label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 45
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = icmp sle i32 %22, 52
  br i1 %23, label %30, label %24

; <label>:24:                                     ; preds = %21, %18
  %25 = load i32, i32* %3, align 4
  %26 = icmp sge i32 %25, 29
  br i1 %26, label %27, label %45

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp sle i32 %28, 36
  br i1 %29, label %30, label %45

; <label>:30:                                     ; preds = %27, %21, %15, %9
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %42, label %36

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 6
  br label %42

; <label>:42:                                     ; preds = %36, %30
  %43 = phi i1 [ true, %30 ], [ %41, %36 ]
  %44 = select i1 %43, i32 2, i32 1
  br label %82

; <label>:45:                                     ; preds = %27, %24
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 18
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* @target_flags, align 4
  %50 = and i32 %49, 33554432
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %51, i32 2, i32 3
  br label %80

; <label>:53:                                     ; preds = %45
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 24
  br i1 %55, label %56, label %61

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* @target_flags, align 4
  %58 = and i32 %57, 33554432
  %59 = icmp ne i32 %58, 0
  %60 = select i1 %59, i32 4, i32 6
  br label %78

; <label>:61:                                     ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i32, i32* @target_flags, align 4
  %68 = and i32 %67, 33554432
  %69 = icmp ne i32 %68, 0
  %70 = select i1 %69, i32 8, i32 4
  %71 = add nsw i32 %66, %70
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* @target_flags, align 4
  %74 = and i32 %73, 33554432
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %75, i32 8, i32 4
  %77 = sdiv i32 %72, %76
  br label %78

; <label>:78:                                     ; preds = %61, %56
  %79 = phi i32 [ %60, %56 ], [ %77, %61 ]
  br label %80

; <label>:80:                                     ; preds = %78, %48
  %81 = phi i32 [ %52, %48 ], [ %79, %78 ]
  br label %82

; <label>:82:                                     ; preds = %80, %42
  %83 = phi i32 [ %44, %42 ], [ %81, %80 ]
  %84 = add nsw i32 %6, %83
  store i32 %84, i32* %5, align 4
  br label %85

; <label>:85:                                     ; preds = %89, %82
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %97

; <label>:89:                                     ; preds = %85
  %90 = load i32, i32* %3, align 4
  %91 = zext i32 %90 to i64
  %92 = shl i64 1, %91
  %93 = load i64, i64* @hard_regs_live, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* @hard_regs_live, align 8
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %85

; <label>:97:                                     ; preds = %85
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @record_conflicts(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

; <label>:7:                                      ; preds = %11, %2
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %28

; <label>:11:                                     ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @allocno_row_words, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i64, i64* @hard_regs_live, align 8
  %21 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.allocno, %struct.allocno* %21, i64 %23
  %25 = getelementptr inbounds %struct.allocno, %struct.allocno* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = or i64 %26, %20
  store i64 %27, i64* %25, align 8
  br label %7

; <label>:28:                                     ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @record_one_conflict(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 53
  br i1 %11, label %12, label %57

; <label>:12:                                     ; preds = %1
  br label %13

; <label>:13:                                     ; preds = %12
  %14 = load i64*, i64** @allocnos_live, align 8
  store i64* %14, i64** %6, align 8
  %15 = load i32, i32* @allocno_row_words, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %17

; <label>:17:                                     ; preds = %50, %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %55

; <label>:20:                                     ; preds = %17
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i32 1
  store i64* %22, i64** %6, align 8
  %23 = load i64, i64* %21, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %3, align 4
  br label %25

; <label>:25:                                     ; preds = %44, %20
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

; <label>:28:                                     ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = and i64 %29, 1
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  %36 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.allocno, %struct.allocno* %36, i64 %38
  %40 = getelementptr inbounds %struct.allocno, %struct.allocno* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = or i64 %41, %35
  store i64 %42, i64* %40, align 8
  br label %43

; <label>:43:                                     ; preds = %32, %28
  br label %44

; <label>:44:                                     ; preds = %43
  %45 = load i64, i64* %7, align 8
  %46 = lshr i64 %45, 1
  store i64 %46, i64* %7, align 8
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %25

; <label>:49:                                     ; preds = %25
  br label %50

; <label>:50:                                     ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 64
  store i32 %54, i32* %5, align 4
  br label %17

; <label>:55:                                     ; preds = %17
  br label %56

; <label>:56:                                     ; preds = %55
  br label %97

; <label>:57:                                     ; preds = %1
  %58 = load i32*, i32** @reg_allocno, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @allocno_row_words, align 4
  %65 = mul nsw i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load i64, i64* @hard_regs_live, align 8
  %67 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.allocno, %struct.allocno* %67, i64 %69
  %71 = getelementptr inbounds %struct.allocno, %struct.allocno* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = or i64 %72, %66
  store i64 %73, i64* %71, align 8
  %74 = load i32, i32* @allocno_row_words, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %76

; <label>:76:                                     ; preds = %93, %57
  %77 = load i32, i32* %3, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %96

; <label>:79:                                     ; preds = %76
  %80 = load i64*, i64** @allocnos_live, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** @conflicts, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %85, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = or i64 %91, %84
  store i64 %92, i64* %90, align 8
  br label %93

; <label>:93:                                     ; preds = %79
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %3, align 4
  br label %76

; <label>:96:                                     ; preds = %76
  br label %97

; <label>:97:                                     ; preds = %96, %56
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @mark_reg_clobber(%struct.rtx_def*, %struct.rtx_def*, i8*) #0 {
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca i8*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %4, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 49
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %3
  %13 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %15 = load i8*, i8** %6, align 8
  call void @mark_reg_store(%struct.rtx_def* %13, %struct.rtx_def* %14, i8* %15)
  br label %16

; <label>:16:                                     ; preds = %12, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @mark_reg_death(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %6, i64 0, i64 0
  %8 = bitcast %union.rtunion_def* %7 to i32*
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 53
  br i1 %11, label %12, label %41

; <label>:12:                                     ; preds = %1
  %13 = load i32*, i32** @reg_allocno, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %40

; <label>:19:                                     ; preds = %12
  %20 = load i32*, i32** @reg_allocno, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = urem i32 %24, 64
  %26 = zext i32 %25 to i64
  %27 = shl i64 1, %26
  %28 = xor i64 %27, -1
  %29 = load i64*, i64** @allocnos_live, align 8
  %30 = load i32*, i32** @reg_allocno, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = udiv i32 %34, 64
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %29, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, %28
  store i64 %39, i64* %37, align 8
  br label %40

; <label>:40:                                     ; preds = %19, %12
  br label %41

; <label>:41:                                     ; preds = %40, %1
  %42 = load i16*, i16** @reg_renumber, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %42, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %56

; <label>:49:                                     ; preds = %41
  %50 = load i16*, i16** @reg_renumber, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %50, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = sext i16 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

; <label>:56:                                     ; preds = %49, %41
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 53
  br i1 %58, label %59, label %179

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %179, label %65

; <label>:65:                                     ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp sge i32 %67, 8
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = icmp sle i32 %70, 15
  br i1 %71, label %90, label %72

; <label>:72:                                     ; preds = %69, %65
  %73 = load i32, i32* %3, align 4
  %74 = icmp sge i32 %73, 21
  br i1 %74, label %75, label %78

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = icmp sle i32 %76, 28
  br i1 %77, label %90, label %78

; <label>:78:                                     ; preds = %75, %72
  %79 = load i32, i32* %3, align 4
  %80 = icmp sge i32 %79, 45
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = icmp sle i32 %82, 52
  br i1 %83, label %90, label %84

; <label>:84:                                     ; preds = %81, %78
  %85 = load i32, i32* %3, align 4
  %86 = icmp sge i32 %85, 29
  br i1 %86, label %87, label %113

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = icmp sle i32 %88, 36
  br i1 %89, label %90, label %113

; <label>:90:                                     ; preds = %87, %81, %75, %69
  %91 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %93 = load i32, i32* %92, align 8
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 5
  br i1 %99, label %110, label %100

; <label>:100:                                    ; preds = %90
  %101 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %103 = load i32, i32* %102, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 6
  br label %110

; <label>:110:                                    ; preds = %100, %90
  %111 = phi i1 [ true, %90 ], [ %109, %100 ]
  %112 = select i1 %111, i32 2, i32 1
  br label %162

; <label>:113:                                    ; preds = %87, %84
  %114 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %116 = load i32, i32* %115, align 8
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  %119 = icmp eq i32 %118, 18
  br i1 %119, label %120, label %125

; <label>:120:                                    ; preds = %113
  %121 = load i32, i32* @target_flags, align 4
  %122 = and i32 %121, 33554432
  %123 = icmp ne i32 %122, 0
  %124 = select i1 %123, i32 2, i32 3
  br label %160

; <label>:125:                                    ; preds = %113
  %126 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %128 = load i32, i32* %127, align 8
  %129 = lshr i32 %128, 16
  %130 = and i32 %129, 255
  %131 = icmp eq i32 %130, 24
  br i1 %131, label %132, label %137

; <label>:132:                                    ; preds = %125
  %133 = load i32, i32* @target_flags, align 4
  %134 = and i32 %133, 33554432
  %135 = icmp ne i32 %134, 0
  %136 = select i1 %135, i32 4, i32 6
  br label %158

; <label>:137:                                    ; preds = %125
  %138 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %140 = load i32, i32* %139, align 8
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load i32, i32* @target_flags, align 4
  %148 = and i32 %147, 33554432
  %149 = icmp ne i32 %148, 0
  %150 = select i1 %149, i32 8, i32 4
  %151 = add nsw i32 %146, %150
  %152 = sub nsw i32 %151, 1
  %153 = load i32, i32* @target_flags, align 4
  %154 = and i32 %153, 33554432
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %155, i32 8, i32 4
  %157 = sdiv i32 %152, %156
  br label %158

; <label>:158:                                    ; preds = %137, %132
  %159 = phi i32 [ %136, %132 ], [ %157, %137 ]
  br label %160

; <label>:160:                                    ; preds = %158, %120
  %161 = phi i32 [ %124, %120 ], [ %159, %158 ]
  br label %162

; <label>:162:                                    ; preds = %160, %110
  %163 = phi i32 [ %112, %110 ], [ %161, %160 ]
  %164 = add nsw i32 %66, %163
  store i32 %164, i32* %4, align 4
  br label %165

; <label>:165:                                    ; preds = %169, %162
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %178

; <label>:169:                                    ; preds = %165
  %170 = load i32, i32* %3, align 4
  %171 = zext i32 %170 to i64
  %172 = shl i64 1, %171
  %173 = xor i64 %172, -1
  %174 = load i64, i64* @hard_regs_live, align 8
  %175 = and i64 %174, %173
  store i64 %175, i64* @hard_regs_live, align 8
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %3, align 4
  br label %165

; <label>:178:                                    ; preds = %165
  br label %179

; <label>:179:                                    ; preds = %178, %59, %56
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @mark_reg_store(%struct.rtx_def*, %struct.rtx_def*, i8*) #0 {
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %4, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 63
  br i1 %13, label %14, label %20

; <label>:14:                                     ; preds = %3
  %15 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %16, i64 0, i64 0
  %18 = bitcast %union.rtunion_def* %17 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %4, align 8
  br label %20

; <label>:20:                                     ; preds = %14, %3
  %21 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp ne i32 %24, 61
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %20
  br label %224

; <label>:27:                                     ; preds = %20
  %28 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %29 = load %struct.rtx_def**, %struct.rtx_def*** @regs_set, align 8
  %30 = load i32, i32* @n_regs_set, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @n_regs_set, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %29, i64 %32
  store %struct.rtx_def* %28, %struct.rtx_def** %33, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %35 = icmp ne %struct.rtx_def* %34, null
  br i1 %35, label %36, label %49

; <label>:36:                                     ; preds = %27
  %37 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp ne i32 %40, 49
  br i1 %41, label %42, label %49

; <label>:42:                                     ; preds = %36
  %43 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %45, i64 0, i64 1
  %47 = bitcast %union.rtunion_def* %46 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %47, align 8
  call void @set_preference(%struct.rtx_def* %43, %struct.rtx_def* %48)
  br label %49

; <label>:49:                                     ; preds = %42, %36, %27
  %50 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %51, i64 0, i64 0
  %53 = bitcast %union.rtunion_def* %52 to i32*
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sge i32 %55, 53
  br i1 %56, label %57, label %86

; <label>:57:                                     ; preds = %49
  %58 = load i32*, i32** @reg_allocno, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %85

; <label>:64:                                     ; preds = %57
  %65 = load i32*, i32** @reg_allocno, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = urem i32 %69, 64
  %71 = zext i32 %70 to i64
  %72 = shl i64 1, %71
  %73 = load i64*, i64** @allocnos_live, align 8
  %74 = load i32*, i32** @reg_allocno, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = udiv i32 %78, 64
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %73, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = or i64 %82, %72
  store i64 %83, i64* %81, align 8
  %84 = load i32, i32* %7, align 4
  call void @record_one_conflict(i32 %84)
  br label %85

; <label>:85:                                     ; preds = %64, %57
  br label %86

; <label>:86:                                     ; preds = %85, %49
  %87 = load i16*, i16** @reg_renumber, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, i16* %87, i64 %89
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %101

; <label>:94:                                     ; preds = %86
  %95 = load i16*, i16** @reg_renumber, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i16, i16* %95, i64 %97
  %99 = load i16, i16* %98, align 2
  %100 = sext i16 %99 to i32
  store i32 %100, i32* %7, align 4
  br label %101

; <label>:101:                                    ; preds = %94, %86
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 53
  br i1 %103, label %104, label %224

; <label>:104:                                    ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %224, label %110

; <label>:110:                                    ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp sge i32 %112, 8
  br i1 %113, label %114, label %117

; <label>:114:                                    ; preds = %110
  %115 = load i32, i32* %7, align 4
  %116 = icmp sle i32 %115, 15
  br i1 %116, label %135, label %117

; <label>:117:                                    ; preds = %114, %110
  %118 = load i32, i32* %7, align 4
  %119 = icmp sge i32 %118, 21
  br i1 %119, label %120, label %123

; <label>:120:                                    ; preds = %117
  %121 = load i32, i32* %7, align 4
  %122 = icmp sle i32 %121, 28
  br i1 %122, label %135, label %123

; <label>:123:                                    ; preds = %120, %117
  %124 = load i32, i32* %7, align 4
  %125 = icmp sge i32 %124, 45
  br i1 %125, label %126, label %129

; <label>:126:                                    ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = icmp sle i32 %127, 52
  br i1 %128, label %135, label %129

; <label>:129:                                    ; preds = %126, %123
  %130 = load i32, i32* %7, align 4
  %131 = icmp sge i32 %130, 29
  br i1 %131, label %132, label %158

; <label>:132:                                    ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = icmp sle i32 %133, 36
  br i1 %134, label %135, label %158

; <label>:135:                                    ; preds = %132, %126, %120, %114
  %136 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %138 = load i32, i32* %137, align 8
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 5
  br i1 %144, label %155, label %145

; <label>:145:                                    ; preds = %135
  %146 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %147 = bitcast %struct.rtx_def* %146 to i32*
  %148 = load i32, i32* %147, align 8
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 6
  br label %155

; <label>:155:                                    ; preds = %145, %135
  %156 = phi i1 [ true, %135 ], [ %154, %145 ]
  %157 = select i1 %156, i32 2, i32 1
  br label %207

; <label>:158:                                    ; preds = %132, %129
  %159 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %160 = bitcast %struct.rtx_def* %159 to i32*
  %161 = load i32, i32* %160, align 8
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 255
  %164 = icmp eq i32 %163, 18
  br i1 %164, label %165, label %170

; <label>:165:                                    ; preds = %158
  %166 = load i32, i32* @target_flags, align 4
  %167 = and i32 %166, 33554432
  %168 = icmp ne i32 %167, 0
  %169 = select i1 %168, i32 2, i32 3
  br label %205

; <label>:170:                                    ; preds = %158
  %171 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %172 = bitcast %struct.rtx_def* %171 to i32*
  %173 = load i32, i32* %172, align 8
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = icmp eq i32 %175, 24
  br i1 %176, label %177, label %182

; <label>:177:                                    ; preds = %170
  %178 = load i32, i32* @target_flags, align 4
  %179 = and i32 %178, 33554432
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, i32 4, i32 6
  br label %203

; <label>:182:                                    ; preds = %170
  %183 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %184 = bitcast %struct.rtx_def* %183 to i32*
  %185 = load i32, i32* %184, align 8
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = load i32, i32* @target_flags, align 4
  %193 = and i32 %192, 33554432
  %194 = icmp ne i32 %193, 0
  %195 = select i1 %194, i32 8, i32 4
  %196 = add nsw i32 %191, %195
  %197 = sub nsw i32 %196, 1
  %198 = load i32, i32* @target_flags, align 4
  %199 = and i32 %198, 33554432
  %200 = icmp ne i32 %199, 0
  %201 = select i1 %200, i32 8, i32 4
  %202 = sdiv i32 %197, %201
  br label %203

; <label>:203:                                    ; preds = %182, %177
  %204 = phi i32 [ %181, %177 ], [ %202, %182 ]
  br label %205

; <label>:205:                                    ; preds = %203, %165
  %206 = phi i32 [ %169, %165 ], [ %204, %203 ]
  br label %207

; <label>:207:                                    ; preds = %205, %155
  %208 = phi i32 [ %157, %155 ], [ %206, %205 ]
  %209 = add nsw i32 %111, %208
  store i32 %209, i32* %8, align 4
  br label %210

; <label>:210:                                    ; preds = %214, %207
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %223

; <label>:214:                                    ; preds = %210
  %215 = load i32, i32* %7, align 4
  call void @record_one_conflict(i32 %215)
  %216 = load i32, i32* %7, align 4
  %217 = zext i32 %216 to i64
  %218 = shl i64 1, %217
  %219 = load i64, i64* @hard_regs_live, align 8
  %220 = or i64 %219, %218
  store i64 %220, i64* @hard_regs_live, align 8
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %210

; <label>:223:                                    ; preds = %210
  br label %224

; <label>:224:                                    ; preds = %223, %104, %101, %26
  ret void
}

declare i32 @multiple_sets(%struct.rtx_def*) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @mark_reg_conflicts(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 63
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %12, i64 0, i64 0
  %14 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %2, align 8
  br label %16

; <label>:16:                                     ; preds = %10, %1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp ne i32 %20, 61
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %16
  br label %174

; <label>:23:                                     ; preds = %16
  %24 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %25, i64 0, i64 0
  %27 = bitcast %union.rtunion_def* %26 to i32*
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp sge i32 %29, 53
  br i1 %30, label %31, label %41

; <label>:31:                                     ; preds = %23
  %32 = load i32*, i32** @reg_allocno, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* %3, align 4
  call void @record_one_conflict(i32 %39)
  br label %40

; <label>:40:                                     ; preds = %38, %31
  br label %41

; <label>:41:                                     ; preds = %40, %23
  %42 = load i16*, i16** @reg_renumber, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %42, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %56

; <label>:49:                                     ; preds = %41
  %50 = load i16*, i16** @reg_renumber, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %50, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = sext i16 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

; <label>:56:                                     ; preds = %49, %41
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 53
  br i1 %58, label %59, label %174

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %174, label %65

; <label>:65:                                     ; preds = %59
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp sge i32 %67, 8
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = icmp sle i32 %70, 15
  br i1 %71, label %90, label %72

; <label>:72:                                     ; preds = %69, %65
  %73 = load i32, i32* %3, align 4
  %74 = icmp sge i32 %73, 21
  br i1 %74, label %75, label %78

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = icmp sle i32 %76, 28
  br i1 %77, label %90, label %78

; <label>:78:                                     ; preds = %75, %72
  %79 = load i32, i32* %3, align 4
  %80 = icmp sge i32 %79, 45
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = icmp sle i32 %82, 52
  br i1 %83, label %90, label %84

; <label>:84:                                     ; preds = %81, %78
  %85 = load i32, i32* %3, align 4
  %86 = icmp sge i32 %85, 29
  br i1 %86, label %87, label %113

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = icmp sle i32 %88, 36
  br i1 %89, label %90, label %113

; <label>:90:                                     ; preds = %87, %81, %75, %69
  %91 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %93 = load i32, i32* %92, align 8
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 5
  br i1 %99, label %110, label %100

; <label>:100:                                    ; preds = %90
  %101 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %103 = load i32, i32* %102, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 6
  br label %110

; <label>:110:                                    ; preds = %100, %90
  %111 = phi i1 [ true, %90 ], [ %109, %100 ]
  %112 = select i1 %111, i32 2, i32 1
  br label %162

; <label>:113:                                    ; preds = %87, %84
  %114 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %116 = load i32, i32* %115, align 8
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  %119 = icmp eq i32 %118, 18
  br i1 %119, label %120, label %125

; <label>:120:                                    ; preds = %113
  %121 = load i32, i32* @target_flags, align 4
  %122 = and i32 %121, 33554432
  %123 = icmp ne i32 %122, 0
  %124 = select i1 %123, i32 2, i32 3
  br label %160

; <label>:125:                                    ; preds = %113
  %126 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %128 = load i32, i32* %127, align 8
  %129 = lshr i32 %128, 16
  %130 = and i32 %129, 255
  %131 = icmp eq i32 %130, 24
  br i1 %131, label %132, label %137

; <label>:132:                                    ; preds = %125
  %133 = load i32, i32* @target_flags, align 4
  %134 = and i32 %133, 33554432
  %135 = icmp ne i32 %134, 0
  %136 = select i1 %135, i32 4, i32 6
  br label %158

; <label>:137:                                    ; preds = %125
  %138 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %140 = load i32, i32* %139, align 8
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load i32, i32* @target_flags, align 4
  %148 = and i32 %147, 33554432
  %149 = icmp ne i32 %148, 0
  %150 = select i1 %149, i32 8, i32 4
  %151 = add nsw i32 %146, %150
  %152 = sub nsw i32 %151, 1
  %153 = load i32, i32* @target_flags, align 4
  %154 = and i32 %153, 33554432
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %155, i32 8, i32 4
  %157 = sdiv i32 %152, %156
  br label %158

; <label>:158:                                    ; preds = %137, %132
  %159 = phi i32 [ %136, %132 ], [ %157, %137 ]
  br label %160

; <label>:160:                                    ; preds = %158, %120
  %161 = phi i32 [ %124, %120 ], [ %159, %158 ]
  br label %162

; <label>:162:                                    ; preds = %160, %110
  %163 = phi i32 [ %112, %110 ], [ %161, %160 ]
  %164 = add nsw i32 %66, %163
  store i32 %164, i32* %4, align 4
  br label %165

; <label>:165:                                    ; preds = %169, %162
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %173

; <label>:169:                                    ; preds = %165
  %170 = load i32, i32* %3, align 4
  call void @record_one_conflict(i32 %170)
  %171 = load i32, i32* %3, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %3, align 4
  br label %165

; <label>:173:                                    ; preds = %165
  br label %174

; <label>:174:                                    ; preds = %173, %59, %56, %22
  ret void
}

declare %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal void @set_preference(%struct.rtx_def*, %struct.rtx_def*) #0 {
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %3, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 65535
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 101
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %2
  %22 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %23, i64 0, i64 0
  %25 = bitcast %union.rtunion_def* %24 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %25, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %4, align 8
  store i32 0, i32* %9, align 4
  br label %27

; <label>:27:                                     ; preds = %21, %2
  %28 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 61
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %27
  %34 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %35, i64 0, i64 0
  %37 = bitcast %union.rtunion_def* %36 to i32*
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %5, align 4
  br label %123

; <label>:39:                                     ; preds = %27
  %40 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 63
  br i1 %44, label %45, label %121

; <label>:45:                                     ; preds = %39
  %46 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %47, i64 0, i64 0
  %49 = bitcast %union.rtunion_def* %48 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %49, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 61
  br i1 %54, label %55, label %121

; <label>:55:                                     ; preds = %45
  %56 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %57, i64 0, i64 0
  %59 = bitcast %union.rtunion_def* %58 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %59, align 8
  %61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %61, i64 0, i64 0
  %63 = bitcast %union.rtunion_def* %62 to i32*
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %5, align 4
  %65 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %66, i64 0, i64 0
  %68 = bitcast %union.rtunion_def* %67 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %68, align 8
  %70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %70, i64 0, i64 0
  %72 = bitcast %union.rtunion_def* %71 to i32*
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %73, 53
  br i1 %74, label %75, label %107

; <label>:75:                                     ; preds = %55
  %76 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %77, i64 0, i64 0
  %79 = bitcast %union.rtunion_def* %78 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %79, align 8
  %81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %81, i64 0, i64 0
  %83 = bitcast %union.rtunion_def* %82 to i32*
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %86, i64 0, i64 0
  %88 = bitcast %union.rtunion_def* %87 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %88, align 8
  %90 = bitcast %struct.rtx_def* %89 to i32*
  %91 = load i32, i32* %90, align 8
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  %94 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %95, i64 0, i64 1
  %97 = bitcast %union.rtunion_def* %96 to i32*
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %100 = bitcast %struct.rtx_def* %99 to i32*
  %101 = load i32, i32* %100, align 8
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = call i32 @subreg_regno_offset(i32 %84, i32 %93, i32 %98, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %120

; <label>:107:                                    ; preds = %55
  %108 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %109, i64 0, i64 1
  %111 = bitcast %union.rtunion_def* %110 to i32*
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @target_flags, align 4
  %114 = and i32 %113, 33554432
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %115, i32 8, i32 4
  %117 = udiv i32 %112, %116
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %120

; <label>:120:                                    ; preds = %107, %75
  br label %122

; <label>:121:                                    ; preds = %45, %39
  br label %599

; <label>:122:                                    ; preds = %120
  br label %123

; <label>:123:                                    ; preds = %122, %33
  %124 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 65535
  %128 = icmp eq i32 %127, 61
  br i1 %128, label %129, label %135

; <label>:129:                                    ; preds = %123
  %130 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %131, i64 0, i64 0
  %133 = bitcast %union.rtunion_def* %132 to i32*
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %6, align 4
  br label %219

; <label>:135:                                    ; preds = %123
  %136 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 63
  br i1 %140, label %141, label %217

; <label>:141:                                    ; preds = %135
  %142 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %143, i64 0, i64 0
  %145 = bitcast %union.rtunion_def* %144 to %struct.rtx_def**
  %146 = load %struct.rtx_def*, %struct.rtx_def** %145, align 8
  %147 = bitcast %struct.rtx_def* %146 to i32*
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, 61
  br i1 %150, label %151, label %217

; <label>:151:                                    ; preds = %141
  %152 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %152, i32 0, i32 1
  %154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %153, i64 0, i64 0
  %155 = bitcast %union.rtunion_def* %154 to %struct.rtx_def**
  %156 = load %struct.rtx_def*, %struct.rtx_def** %155, align 8
  %157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %157, i64 0, i64 0
  %159 = bitcast %union.rtunion_def* %158 to i32*
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %6, align 4
  %161 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %162, i64 0, i64 0
  %164 = bitcast %union.rtunion_def* %163 to %struct.rtx_def**
  %165 = load %struct.rtx_def*, %struct.rtx_def** %164, align 8
  %166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %166, i64 0, i64 0
  %168 = bitcast %union.rtunion_def* %167 to i32*
  %169 = load i32, i32* %168, align 8
  %170 = icmp ult i32 %169, 53
  br i1 %170, label %171, label %203

; <label>:171:                                    ; preds = %151
  %172 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %172, i32 0, i32 1
  %174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %173, i64 0, i64 0
  %175 = bitcast %union.rtunion_def* %174 to %struct.rtx_def**
  %176 = load %struct.rtx_def*, %struct.rtx_def** %175, align 8
  %177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %177, i64 0, i64 0
  %179 = bitcast %union.rtunion_def* %178 to i32*
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %182, i64 0, i64 0
  %184 = bitcast %union.rtunion_def* %183 to %struct.rtx_def**
  %185 = load %struct.rtx_def*, %struct.rtx_def** %184, align 8
  %186 = bitcast %struct.rtx_def* %185 to i32*
  %187 = load i32, i32* %186, align 8
  %188 = lshr i32 %187, 16
  %189 = and i32 %188, 255
  %190 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %190, i32 0, i32 1
  %192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %191, i64 0, i64 1
  %193 = bitcast %union.rtunion_def* %192 to i32*
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %196 = bitcast %struct.rtx_def* %195 to i32*
  %197 = load i32, i32* %196, align 8
  %198 = lshr i32 %197, 16
  %199 = and i32 %198, 255
  %200 = call i32 @subreg_regno_offset(i32 %180, i32 %189, i32 %194, i32 %199)
  %201 = load i32, i32* %7, align 4
  %202 = sub i32 %201, %200
  store i32 %202, i32* %7, align 4
  br label %216

; <label>:203:                                    ; preds = %151
  %204 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %205 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %204, i32 0, i32 1
  %206 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %205, i64 0, i64 1
  %207 = bitcast %union.rtunion_def* %206 to i32*
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @target_flags, align 4
  %210 = and i32 %209, 33554432
  %211 = icmp ne i32 %210, 0
  %212 = select i1 %211, i32 8, i32 4
  %213 = udiv i32 %208, %212
  %214 = load i32, i32* %7, align 4
  %215 = sub i32 %214, %213
  store i32 %215, i32* %7, align 4
  br label %216

; <label>:216:                                    ; preds = %203, %171
  br label %218

; <label>:217:                                    ; preds = %141, %135
  br label %599

; <label>:218:                                    ; preds = %216
  br label %219

; <label>:219:                                    ; preds = %218, %129
  %220 = load i16*, i16** @reg_renumber, align 8
  %221 = load i32, i32* %5, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i16, i16* %220, i64 %222
  %224 = load i16, i16* %223, align 2
  %225 = sext i16 %224 to i32
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %234

; <label>:227:                                    ; preds = %219
  %228 = load i16*, i16** @reg_renumber, align 8
  %229 = load i32, i32* %5, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i16, i16* %228, i64 %230
  %232 = load i16, i16* %231, align 2
  %233 = sext i16 %232 to i32
  store i32 %233, i32* %5, align 4
  br label %234

; <label>:234:                                    ; preds = %227, %219
  %235 = load i16*, i16** @reg_renumber, align 8
  %236 = load i32, i32* %6, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i16, i16* %235, i64 %237
  %239 = load i16, i16* %238, align 2
  %240 = sext i16 %239 to i32
  %241 = icmp sge i32 %240, 0
  br i1 %241, label %242, label %249

; <label>:242:                                    ; preds = %234
  %243 = load i16*, i16** @reg_renumber, align 8
  %244 = load i32, i32* %6, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i16, i16* %243, i64 %245
  %247 = load i16, i16* %246, align 2
  %248 = sext i16 %247 to i32
  store i32 %248, i32* %6, align 4
  br label %249

; <label>:249:                                    ; preds = %242, %234
  %250 = load i32, i32* %6, align 4
  %251 = icmp ult i32 %250, 53
  br i1 %251, label %252, label %424

; <label>:252:                                    ; preds = %249
  %253 = load i32, i32* %5, align 4
  %254 = icmp uge i32 %253, 53
  br i1 %254, label %255, label %424

; <label>:255:                                    ; preds = %252
  %256 = load i32*, i32** @reg_allocno, align 8
  %257 = load i32, i32* %5, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = icmp sge i32 %260, 0
  br i1 %261, label %262, label %424

; <label>:262:                                    ; preds = %255
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* %6, align 4
  %265 = sub i32 %264, %263
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* %6, align 4
  %267 = icmp ult i32 %266, 53
  br i1 %267, label %268, label %423

; <label>:268:                                    ; preds = %262
  %269 = load i32, i32* %9, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %286

; <label>:271:                                    ; preds = %268
  %272 = load i32, i32* %6, align 4
  %273 = zext i32 %272 to i64
  %274 = shl i64 1, %273
  %275 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %276 = load i32*, i32** @reg_allocno, align 8
  %277 = load i32, i32* %5, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.allocno, %struct.allocno* %275, i64 %281
  %283 = getelementptr inbounds %struct.allocno, %struct.allocno* %282, i32 0, i32 8
  %284 = load i64, i64* %283, align 8
  %285 = or i64 %284, %274
  store i64 %285, i64* %283, align 8
  br label %286

; <label>:286:                                    ; preds = %271, %268
  %287 = load i32, i32* %6, align 4
  %288 = zext i32 %287 to i64
  %289 = shl i64 1, %288
  %290 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %291 = load i32*, i32** @reg_allocno, align 8
  %292 = load i32, i32* %5, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.allocno, %struct.allocno* %290, i64 %296
  %298 = getelementptr inbounds %struct.allocno, %struct.allocno* %297, i32 0, i32 7
  %299 = load i64, i64* %298, align 8
  %300 = or i64 %299, %289
  store i64 %300, i64* %298, align 8
  %301 = load i32, i32* %6, align 4
  store i32 %301, i32* %8, align 4
  br label %302

; <label>:302:                                    ; preds = %419, %286
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* %6, align 4
  %305 = load i32, i32* %6, align 4
  %306 = icmp uge i32 %305, 8
  br i1 %306, label %307, label %310

; <label>:307:                                    ; preds = %302
  %308 = load i32, i32* %6, align 4
  %309 = icmp ule i32 %308, 15
  br i1 %309, label %328, label %310

; <label>:310:                                    ; preds = %307, %302
  %311 = load i32, i32* %6, align 4
  %312 = icmp uge i32 %311, 21
  br i1 %312, label %313, label %316

; <label>:313:                                    ; preds = %310
  %314 = load i32, i32* %6, align 4
  %315 = icmp ule i32 %314, 28
  br i1 %315, label %328, label %316

; <label>:316:                                    ; preds = %313, %310
  %317 = load i32, i32* %6, align 4
  %318 = icmp uge i32 %317, 45
  br i1 %318, label %319, label %322

; <label>:319:                                    ; preds = %316
  %320 = load i32, i32* %6, align 4
  %321 = icmp ule i32 %320, 52
  br i1 %321, label %328, label %322

; <label>:322:                                    ; preds = %319, %316
  %323 = load i32, i32* %6, align 4
  %324 = icmp uge i32 %323, 29
  br i1 %324, label %325, label %351

; <label>:325:                                    ; preds = %322
  %326 = load i32, i32* %6, align 4
  %327 = icmp ule i32 %326, 36
  br i1 %327, label %328, label %351

; <label>:328:                                    ; preds = %325, %319, %313, %307
  %329 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %330 = bitcast %struct.rtx_def* %329 to i32*
  %331 = load i32, i32* %330, align 8
  %332 = lshr i32 %331, 16
  %333 = and i32 %332, 255
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = icmp eq i32 %336, 5
  br i1 %337, label %348, label %338

; <label>:338:                                    ; preds = %328
  %339 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %340 = bitcast %struct.rtx_def* %339 to i32*
  %341 = load i32, i32* %340, align 8
  %342 = lshr i32 %341, 16
  %343 = and i32 %342, 255
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 6
  br label %348

; <label>:348:                                    ; preds = %338, %328
  %349 = phi i1 [ true, %328 ], [ %347, %338 ]
  %350 = select i1 %349, i32 2, i32 1
  br label %400

; <label>:351:                                    ; preds = %325, %322
  %352 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %353 = bitcast %struct.rtx_def* %352 to i32*
  %354 = load i32, i32* %353, align 8
  %355 = lshr i32 %354, 16
  %356 = and i32 %355, 255
  %357 = icmp eq i32 %356, 18
  br i1 %357, label %358, label %363

; <label>:358:                                    ; preds = %351
  %359 = load i32, i32* @target_flags, align 4
  %360 = and i32 %359, 33554432
  %361 = icmp ne i32 %360, 0
  %362 = select i1 %361, i32 2, i32 3
  br label %398

; <label>:363:                                    ; preds = %351
  %364 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %365 = bitcast %struct.rtx_def* %364 to i32*
  %366 = load i32, i32* %365, align 8
  %367 = lshr i32 %366, 16
  %368 = and i32 %367, 255
  %369 = icmp eq i32 %368, 24
  br i1 %369, label %370, label %375

; <label>:370:                                    ; preds = %363
  %371 = load i32, i32* @target_flags, align 4
  %372 = and i32 %371, 33554432
  %373 = icmp ne i32 %372, 0
  %374 = select i1 %373, i32 4, i32 6
  br label %396

; <label>:375:                                    ; preds = %363
  %376 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %377 = bitcast %struct.rtx_def* %376 to i32*
  %378 = load i32, i32* %377, align 8
  %379 = lshr i32 %378, 16
  %380 = and i32 %379, 255
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %381
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  %385 = load i32, i32* @target_flags, align 4
  %386 = and i32 %385, 33554432
  %387 = icmp ne i32 %386, 0
  %388 = select i1 %387, i32 8, i32 4
  %389 = add nsw i32 %384, %388
  %390 = sub nsw i32 %389, 1
  %391 = load i32, i32* @target_flags, align 4
  %392 = and i32 %391, 33554432
  %393 = icmp ne i32 %392, 0
  %394 = select i1 %393, i32 8, i32 4
  %395 = sdiv i32 %390, %394
  br label %396

; <label>:396:                                    ; preds = %375, %370
  %397 = phi i32 [ %374, %370 ], [ %395, %375 ]
  br label %398

; <label>:398:                                    ; preds = %396, %358
  %399 = phi i32 [ %362, %358 ], [ %397, %396 ]
  br label %400

; <label>:400:                                    ; preds = %398, %348
  %401 = phi i32 [ %350, %348 ], [ %399, %398 ]
  %402 = add i32 %304, %401
  %403 = icmp ult i32 %303, %402
  br i1 %403, label %404, label %422

; <label>:404:                                    ; preds = %400
  %405 = load i32, i32* %8, align 4
  %406 = zext i32 %405 to i64
  %407 = shl i64 1, %406
  %408 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %409 = load i32*, i32** @reg_allocno, align 8
  %410 = load i32, i32* %5, align 4
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.allocno, %struct.allocno* %408, i64 %414
  %416 = getelementptr inbounds %struct.allocno, %struct.allocno* %415, i32 0, i32 9
  %417 = load i64, i64* %416, align 8
  %418 = or i64 %417, %407
  store i64 %418, i64* %416, align 8
  br label %419

; <label>:419:                                    ; preds = %404
  %420 = load i32, i32* %8, align 4
  %421 = add i32 %420, 1
  store i32 %421, i32* %8, align 4
  br label %302

; <label>:422:                                    ; preds = %400
  br label %423

; <label>:423:                                    ; preds = %422, %262
  br label %424

; <label>:424:                                    ; preds = %423, %255, %252, %249
  %425 = load i32, i32* %5, align 4
  %426 = icmp ult i32 %425, 53
  br i1 %426, label %427, label %599

; <label>:427:                                    ; preds = %424
  %428 = load i32, i32* %6, align 4
  %429 = icmp uge i32 %428, 53
  br i1 %429, label %430, label %599

; <label>:430:                                    ; preds = %427
  %431 = load i32*, i32** @reg_allocno, align 8
  %432 = load i32, i32* %6, align 4
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = icmp sge i32 %435, 0
  br i1 %436, label %437, label %599

; <label>:437:                                    ; preds = %430
  %438 = load i32, i32* %7, align 4
  %439 = load i32, i32* %5, align 4
  %440 = add i32 %439, %438
  store i32 %440, i32* %5, align 4
  %441 = load i32, i32* %5, align 4
  %442 = icmp ult i32 %441, 53
  br i1 %442, label %443, label %598

; <label>:443:                                    ; preds = %437
  %444 = load i32, i32* %9, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %461

; <label>:446:                                    ; preds = %443
  %447 = load i32, i32* %5, align 4
  %448 = zext i32 %447 to i64
  %449 = shl i64 1, %448
  %450 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %451 = load i32*, i32** @reg_allocno, align 8
  %452 = load i32, i32* %6, align 4
  %453 = zext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %451, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.allocno, %struct.allocno* %450, i64 %456
  %458 = getelementptr inbounds %struct.allocno, %struct.allocno* %457, i32 0, i32 8
  %459 = load i64, i64* %458, align 8
  %460 = or i64 %459, %449
  store i64 %460, i64* %458, align 8
  br label %461

; <label>:461:                                    ; preds = %446, %443
  %462 = load i32, i32* %5, align 4
  %463 = zext i32 %462 to i64
  %464 = shl i64 1, %463
  %465 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %466 = load i32*, i32** @reg_allocno, align 8
  %467 = load i32, i32* %6, align 4
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.allocno, %struct.allocno* %465, i64 %471
  %473 = getelementptr inbounds %struct.allocno, %struct.allocno* %472, i32 0, i32 7
  %474 = load i64, i64* %473, align 8
  %475 = or i64 %474, %464
  store i64 %475, i64* %473, align 8
  %476 = load i32, i32* %5, align 4
  store i32 %476, i32* %8, align 4
  br label %477

; <label>:477:                                    ; preds = %594, %461
  %478 = load i32, i32* %8, align 4
  %479 = load i32, i32* %5, align 4
  %480 = load i32, i32* %5, align 4
  %481 = icmp uge i32 %480, 8
  br i1 %481, label %482, label %485

; <label>:482:                                    ; preds = %477
  %483 = load i32, i32* %5, align 4
  %484 = icmp ule i32 %483, 15
  br i1 %484, label %503, label %485

; <label>:485:                                    ; preds = %482, %477
  %486 = load i32, i32* %5, align 4
  %487 = icmp uge i32 %486, 21
  br i1 %487, label %488, label %491

; <label>:488:                                    ; preds = %485
  %489 = load i32, i32* %5, align 4
  %490 = icmp ule i32 %489, 28
  br i1 %490, label %503, label %491

; <label>:491:                                    ; preds = %488, %485
  %492 = load i32, i32* %5, align 4
  %493 = icmp uge i32 %492, 45
  br i1 %493, label %494, label %497

; <label>:494:                                    ; preds = %491
  %495 = load i32, i32* %5, align 4
  %496 = icmp ule i32 %495, 52
  br i1 %496, label %503, label %497

; <label>:497:                                    ; preds = %494, %491
  %498 = load i32, i32* %5, align 4
  %499 = icmp uge i32 %498, 29
  br i1 %499, label %500, label %526

; <label>:500:                                    ; preds = %497
  %501 = load i32, i32* %5, align 4
  %502 = icmp ule i32 %501, 36
  br i1 %502, label %503, label %526

; <label>:503:                                    ; preds = %500, %494, %488, %482
  %504 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %505 = bitcast %struct.rtx_def* %504 to i32*
  %506 = load i32, i32* %505, align 8
  %507 = lshr i32 %506, 16
  %508 = and i32 %507, 255
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = icmp eq i32 %511, 5
  br i1 %512, label %523, label %513

; <label>:513:                                    ; preds = %503
  %514 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %515 = bitcast %struct.rtx_def* %514 to i32*
  %516 = load i32, i32* %515, align 8
  %517 = lshr i32 %516, 16
  %518 = and i32 %517, 255
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = icmp eq i32 %521, 6
  br label %523

; <label>:523:                                    ; preds = %513, %503
  %524 = phi i1 [ true, %503 ], [ %522, %513 ]
  %525 = select i1 %524, i32 2, i32 1
  br label %575

; <label>:526:                                    ; preds = %500, %497
  %527 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %528 = bitcast %struct.rtx_def* %527 to i32*
  %529 = load i32, i32* %528, align 8
  %530 = lshr i32 %529, 16
  %531 = and i32 %530, 255
  %532 = icmp eq i32 %531, 18
  br i1 %532, label %533, label %538

; <label>:533:                                    ; preds = %526
  %534 = load i32, i32* @target_flags, align 4
  %535 = and i32 %534, 33554432
  %536 = icmp ne i32 %535, 0
  %537 = select i1 %536, i32 2, i32 3
  br label %573

; <label>:538:                                    ; preds = %526
  %539 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %540 = bitcast %struct.rtx_def* %539 to i32*
  %541 = load i32, i32* %540, align 8
  %542 = lshr i32 %541, 16
  %543 = and i32 %542, 255
  %544 = icmp eq i32 %543, 24
  br i1 %544, label %545, label %550

; <label>:545:                                    ; preds = %538
  %546 = load i32, i32* @target_flags, align 4
  %547 = and i32 %546, 33554432
  %548 = icmp ne i32 %547, 0
  %549 = select i1 %548, i32 4, i32 6
  br label %571

; <label>:550:                                    ; preds = %538
  %551 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %552 = bitcast %struct.rtx_def* %551 to i32*
  %553 = load i32, i32* %552, align 8
  %554 = lshr i32 %553, 16
  %555 = and i32 %554, 255
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %556
  %558 = load i8, i8* %557, align 1
  %559 = zext i8 %558 to i32
  %560 = load i32, i32* @target_flags, align 4
  %561 = and i32 %560, 33554432
  %562 = icmp ne i32 %561, 0
  %563 = select i1 %562, i32 8, i32 4
  %564 = add nsw i32 %559, %563
  %565 = sub nsw i32 %564, 1
  %566 = load i32, i32* @target_flags, align 4
  %567 = and i32 %566, 33554432
  %568 = icmp ne i32 %567, 0
  %569 = select i1 %568, i32 8, i32 4
  %570 = sdiv i32 %565, %569
  br label %571

; <label>:571:                                    ; preds = %550, %545
  %572 = phi i32 [ %549, %545 ], [ %570, %550 ]
  br label %573

; <label>:573:                                    ; preds = %571, %533
  %574 = phi i32 [ %537, %533 ], [ %572, %571 ]
  br label %575

; <label>:575:                                    ; preds = %573, %523
  %576 = phi i32 [ %525, %523 ], [ %574, %573 ]
  %577 = add i32 %479, %576
  %578 = icmp ult i32 %478, %577
  br i1 %578, label %579, label %597

; <label>:579:                                    ; preds = %575
  %580 = load i32, i32* %8, align 4
  %581 = zext i32 %580 to i64
  %582 = shl i64 1, %581
  %583 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %584 = load i32*, i32** @reg_allocno, align 8
  %585 = load i32, i32* %6, align 4
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %584, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.allocno, %struct.allocno* %583, i64 %589
  %591 = getelementptr inbounds %struct.allocno, %struct.allocno* %590, i32 0, i32 9
  %592 = load i64, i64* %591, align 8
  %593 = or i64 %592, %582
  store i64 %593, i64* %591, align 8
  br label %594

; <label>:594:                                    ; preds = %579
  %595 = load i32, i32* %8, align 4
  %596 = add i32 %595, 1
  store i32 %596, i32* %8, align 4
  br label %477

; <label>:597:                                    ; preds = %575
  br label %598

; <label>:598:                                    ; preds = %597, %437
  br label %599

; <label>:599:                                    ; preds = %598, %430, %427, %424, %217, %121
  ret void
}

declare i32 @subreg_regno_offset(i32, i32, i32, i32) #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_preferred_class(i32) #1

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #1

declare i32 @reg_class_subset_p(i32, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
