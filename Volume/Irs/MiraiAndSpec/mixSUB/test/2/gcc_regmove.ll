; ModuleID = 'host/ir_O0/gcc_regmove.ll'
source_filename = "regmove.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [4 x %struct.rtx_def**], [4 x i8], i8, i8, i8, %struct.rtx_def* }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.match = type { [30 x i32], [30 x i32], [30 x i32], [30 x i32] }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.csa_memlist = type { i64, %struct.rtx_def*, %struct.rtx_def**, %struct.csa_memlist* }
%struct.record_stack_memrefs_data = type { %struct.rtx_def*, %struct.csa_memlist* }

@flag_non_call_exceptions = external global i32, align 4
@regno_src_regno = internal global i32* null, align 8
@regmove_bb_head = internal global i32* null, align 8
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@flag_regmove = external global i32, align 4
@flag_expensive_optimizations = external global i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"Starting %s pass...\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"backward\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@rtx_class = external constant [153 x i8], align 16
@recog_data = external global %struct.recog_data, align 8
@mode_size = external constant [59 x i8], align 16
@reg_n_info = external global %struct.varray_head_tag*, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Starting backward pass...\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Could fix operand %d of insn %d matching operand %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Fixed operand %d of insn %d matching operand %d.\0A\00", align 1
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@mode_class = external constant [59 x i32], align 16
@target_flags = external global i32, align 4
@flags_set_1_rtx = internal global %struct.rtx_def* null, align 8
@flags_set_1_set = internal global i32 0, align 4
@word_mode = external global i32, align 4
@mode_bitsize = external constant [59 x i16], align 16
@.str.6 = private unnamed_addr constant [27 x i8] c"Fixed operand of insn %d.\0A\00", align 1
@call_used_regs = external global [53 x i8], align 16
@cfun = external global %struct.function*, align 8
@which_alternative = external global i32, align 4
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define void @regmove_optimize(%struct.rtx_def*, i32, %struct._IO_FILE*) #0 {
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtx_def*, align 8
  %9 = alloca %struct.match, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtx_def*, align 8
  %13 = alloca %struct.rtx_def*, align 8
  %14 = alloca %struct.rtx_def*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.rtx_def*, align 8
  %19 = alloca %struct.rtx_def*, align 8
  %20 = alloca %struct.rtx_def*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.rtx_def*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.rtx_def*, align 8
  %28 = alloca %struct.rtx_def*, align 8
  %29 = alloca %struct.rtx_def*, align 8
  %30 = alloca %struct.rtx_def*, align 8
  %31 = alloca %struct.rtx_def*, align 8
  %32 = alloca %struct.rtx_def*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.rtx_def*, align 8
  %38 = alloca %struct.rtx_def*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.rtx_def*, align 8
  %42 = alloca %struct.rtx_def*, align 8
  %43 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  %44 = call i32 @get_max_uid()
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @flag_non_call_exceptions, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %3
  br label %1458

; <label>:48:                                     ; preds = %3
  %49 = call %struct.rtx_def* @discover_flags_reg()
  call void @mark_flags_life_zones(%struct.rtx_def* %49)
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = call noalias i8* @xmalloc(i64 %52)
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** @regno_src_regno, align 8
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %11, align 4
  br label %56

; <label>:56:                                     ; preds = %60, %48
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %11, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %65

; <label>:60:                                     ; preds = %56
  %61 = load i32*, i32** @regno_src_regno, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 -1, i32* %64, align 4
  br label %56

; <label>:65:                                     ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = call noalias i8* @xmalloc(i64 %69)
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** @regmove_bb_head, align 8
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %11, align 4
  br label %73

; <label>:73:                                     ; preds = %81, %65
  %74 = load i32, i32* %11, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %84

; <label>:76:                                     ; preds = %73
  %77 = load i32*, i32** @regmove_bb_head, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 -1, i32* %80, align 4
  br label %81

; <label>:81:                                     ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %11, align 4
  br label %73

; <label>:84:                                     ; preds = %73
  store i32 0, i32* %11, align 4
  br label %85

; <label>:85:                                     ; preds = %107, %84
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @n_basic_blocks, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %110

; <label>:89:                                     ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** @regmove_bb_head, align 8
  %92 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %93 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %92, i32 0, i32 4
  %94 = bitcast %union.varray_data_tag* %93 to [1 x %struct.basic_block_def*]*
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %94, i64 0, i64 %96
  %98 = load %struct.basic_block_def*, %struct.basic_block_def** %97, align 8
  %99 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %98, i32 0, i32 0
  %100 = load %struct.rtx_def*, %struct.rtx_def** %99, align 8
  %101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %101, i64 0, i64 0
  %103 = bitcast %union.rtunion_def* %102 to i32*
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %91, i64 %105
  store i32 %90, i32* %106, align 4
  br label %107

; <label>:107:                                    ; preds = %89
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %85

; <label>:110:                                    ; preds = %85
  store i32 0, i32* %10, align 4
  br label %111

; <label>:111:                                    ; preds = %692, %110
  %112 = load i32, i32* %10, align 4
  %113 = icmp sle i32 %112, 2
  br i1 %113, label %114, label %695

; <label>:114:                                    ; preds = %111
  %115 = load i32, i32* @flag_regmove, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

; <label>:117:                                    ; preds = %114
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @flag_expensive_optimizations, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %122

; <label>:121:                                    ; preds = %117
  br label %1453

; <label>:122:                                    ; preds = %117, %114
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %124 = icmp ne %struct._IO_FILE* %123, null
  br i1 %124, label %125, label %131

; <label>:125:                                    ; preds = %122
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  %129 = select i1 %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* %129)
  br label %131

; <label>:131:                                    ; preds = %125, %122
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

; <label>:134:                                    ; preds = %131
  %135 = call %struct.rtx_def* @get_last_insn()
  br label %138

; <label>:136:                                    ; preds = %131
  %137 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  br label %138

; <label>:138:                                    ; preds = %136, %134
  %139 = phi %struct.rtx_def* [ %135, %134 ], [ %137, %136 ]
  store %struct.rtx_def* %139, %struct.rtx_def** %8, align 8
  br label %140

; <label>:140:                                    ; preds = %689, %138
  %141 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %142 = icmp ne %struct.rtx_def* %141, null
  br i1 %142, label %143, label %691

; <label>:143:                                    ; preds = %140
  %144 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %145 = bitcast %struct.rtx_def* %144 to i32*
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, 65535
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 105
  br i1 %152, label %153, label %179

; <label>:153:                                    ; preds = %143
  %154 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %155, i64 0, i64 3
  %157 = bitcast %union.rtunion_def* %156 to %struct.rtx_def**
  %158 = load %struct.rtx_def*, %struct.rtx_def** %157, align 8
  %159 = bitcast %struct.rtx_def* %158 to i32*
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, 65535
  %162 = icmp eq i32 %161, 47
  br i1 %162, label %163, label %169

; <label>:163:                                    ; preds = %153
  %164 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %165 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %164, i32 0, i32 1
  %166 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %165, i64 0, i64 3
  %167 = bitcast %union.rtunion_def* %166 to %struct.rtx_def**
  %168 = load %struct.rtx_def*, %struct.rtx_def** %167, align 8
  br label %177

; <label>:169:                                    ; preds = %153
  %170 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %171 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %172, i64 0, i64 3
  %174 = bitcast %union.rtunion_def* %173 to %struct.rtx_def**
  %175 = load %struct.rtx_def*, %struct.rtx_def** %174, align 8
  %176 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %170, %struct.rtx_def* %175)
  br label %177

; <label>:177:                                    ; preds = %169, %163
  %178 = phi %struct.rtx_def* [ %168, %163 ], [ %176, %169 ]
  br label %180

; <label>:179:                                    ; preds = %143
  br label %180

; <label>:180:                                    ; preds = %179, %177
  %181 = phi %struct.rtx_def* [ %178, %177 ], [ null, %179 ]
  store %struct.rtx_def* %181, %struct.rtx_def** %14, align 8
  %182 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %183 = icmp ne %struct.rtx_def* %182, null
  br i1 %183, label %185, label %184

; <label>:184:                                    ; preds = %180
  br label %674

; <label>:185:                                    ; preds = %180
  %186 = load i32, i32* @flag_expensive_optimizations, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %247

; <label>:188:                                    ; preds = %185
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %247, label %191

; <label>:191:                                    ; preds = %188
  %192 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %193, i64 0, i64 1
  %195 = bitcast %union.rtunion_def* %194 to %struct.rtx_def**
  %196 = load %struct.rtx_def*, %struct.rtx_def** %195, align 8
  %197 = bitcast %struct.rtx_def* %196 to i32*
  %198 = load i32, i32* %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 120
  br i1 %200, label %211, label %201

; <label>:201:                                    ; preds = %191
  %202 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %203, i64 0, i64 1
  %205 = bitcast %union.rtunion_def* %204 to %struct.rtx_def**
  %206 = load %struct.rtx_def*, %struct.rtx_def** %205, align 8
  %207 = bitcast %struct.rtx_def* %206 to i32*
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 121
  br i1 %210, label %211, label %247

; <label>:211:                                    ; preds = %201, %191
  %212 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %212, i32 0, i32 1
  %214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %213, i64 0, i64 1
  %215 = bitcast %union.rtunion_def* %214 to %struct.rtx_def**
  %216 = load %struct.rtx_def*, %struct.rtx_def** %215, align 8
  %217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %217, i64 0, i64 0
  %219 = bitcast %union.rtunion_def* %218 to %struct.rtx_def**
  %220 = load %struct.rtx_def*, %struct.rtx_def** %219, align 8
  %221 = bitcast %struct.rtx_def* %220 to i32*
  %222 = load i32, i32* %221, align 8
  %223 = and i32 %222, 65535
  %224 = icmp eq i32 %223, 61
  br i1 %224, label %225, label %247

; <label>:225:                                    ; preds = %211
  %226 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %226, i32 0, i32 1
  %228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %227, i64 0, i64 0
  %229 = bitcast %union.rtunion_def* %228 to %struct.rtx_def**
  %230 = load %struct.rtx_def*, %struct.rtx_def** %229, align 8
  %231 = bitcast %struct.rtx_def* %230 to i32*
  %232 = load i32, i32* %231, align 8
  %233 = and i32 %232, 65535
  %234 = icmp eq i32 %233, 61
  br i1 %234, label %235, label %247

; <label>:235:                                    ; preds = %225
  %236 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %237 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %237, i32 0, i32 1
  %239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %238, i64 0, i64 0
  %240 = bitcast %union.rtunion_def* %239 to %struct.rtx_def**
  %241 = load %struct.rtx_def*, %struct.rtx_def** %240, align 8
  %242 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %243 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %242, i32 0, i32 1
  %244 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %243, i64 0, i64 1
  %245 = bitcast %union.rtunion_def* %244 to %struct.rtx_def**
  %246 = load %struct.rtx_def*, %struct.rtx_def** %245, align 8
  call void @optimize_reg_copy_3(%struct.rtx_def* %236, %struct.rtx_def* %241, %struct.rtx_def* %246)
  br label %247

; <label>:247:                                    ; preds = %235, %225, %211, %201, %188, %185
  %248 = load i32, i32* @flag_expensive_optimizations, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %395

; <label>:250:                                    ; preds = %247
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %395, label %253

; <label>:253:                                    ; preds = %250
  %254 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %254, i32 0, i32 1
  %256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %255, i64 0, i64 1
  %257 = bitcast %union.rtunion_def* %256 to %struct.rtx_def**
  %258 = load %struct.rtx_def*, %struct.rtx_def** %257, align 8
  %259 = bitcast %struct.rtx_def* %258 to i32*
  %260 = load i32, i32* %259, align 8
  %261 = and i32 %260, 65535
  %262 = icmp eq i32 %261, 61
  br i1 %262, label %263, label %395

; <label>:263:                                    ; preds = %253
  %264 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %265 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %264, i32 0, i32 1
  %266 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %265, i64 0, i64 0
  %267 = bitcast %union.rtunion_def* %266 to %struct.rtx_def**
  %268 = load %struct.rtx_def*, %struct.rtx_def** %267, align 8
  %269 = bitcast %struct.rtx_def* %268 to i32*
  %270 = load i32, i32* %269, align 8
  %271 = and i32 %270, 65535
  %272 = icmp eq i32 %271, 61
  br i1 %272, label %273, label %395

; <label>:273:                                    ; preds = %263
  %274 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %275 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %276 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %275, i32 0, i32 1
  %277 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %276, i64 0, i64 1
  %278 = bitcast %union.rtunion_def* %277 to %struct.rtx_def**
  %279 = load %struct.rtx_def*, %struct.rtx_def** %278, align 8
  %280 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %274, i32 1, %struct.rtx_def* %279)
  %281 = icmp ne %struct.rtx_def* %280, null
  br i1 %281, label %296, label %282

; <label>:282:                                    ; preds = %273
  %283 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %284 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %285 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %284, i32 0, i32 1
  %286 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %285, i64 0, i64 0
  %287 = bitcast %union.rtunion_def* %286 to %struct.rtx_def**
  %288 = load %struct.rtx_def*, %struct.rtx_def** %287, align 8
  %289 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %290 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %289, i32 0, i32 1
  %291 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %290, i64 0, i64 1
  %292 = bitcast %union.rtunion_def* %291 to %struct.rtx_def**
  %293 = load %struct.rtx_def*, %struct.rtx_def** %292, align 8
  %294 = call i32 @optimize_reg_copy_1(%struct.rtx_def* %283, %struct.rtx_def* %288, %struct.rtx_def* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %394

; <label>:296:                                    ; preds = %282, %273
  %297 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %298 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %297, i32 0, i32 1
  %299 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %298, i64 0, i64 0
  %300 = bitcast %union.rtunion_def* %299 to %struct.rtx_def**
  %301 = load %struct.rtx_def*, %struct.rtx_def** %300, align 8
  %302 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %303 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %302, i64 0, i64 0
  %304 = bitcast %union.rtunion_def* %303 to i32*
  %305 = load i32, i32* %304, align 8
  %306 = icmp uge i32 %305, 53
  br i1 %306, label %307, label %394

; <label>:307:                                    ; preds = %296
  %308 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %309 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %308, i32 0, i32 1
  %310 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %309, i64 0, i64 1
  %311 = bitcast %union.rtunion_def* %310 to %struct.rtx_def**
  %312 = load %struct.rtx_def*, %struct.rtx_def** %311, align 8
  %313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %312, i32 0, i32 1
  %314 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %313, i64 0, i64 0
  %315 = bitcast %union.rtunion_def* %314 to i32*
  %316 = load i32, i32* %315, align 8
  %317 = icmp uge i32 %316, 53
  br i1 %317, label %318, label %330

; <label>:318:                                    ; preds = %307
  %319 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %320 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %321 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %320, i32 0, i32 1
  %322 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %321, i64 0, i64 0
  %323 = bitcast %union.rtunion_def* %322 to %struct.rtx_def**
  %324 = load %struct.rtx_def*, %struct.rtx_def** %323, align 8
  %325 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %325, i32 0, i32 1
  %327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %326, i64 0, i64 1
  %328 = bitcast %union.rtunion_def* %327 to %struct.rtx_def**
  %329 = load %struct.rtx_def*, %struct.rtx_def** %328, align 8
  call void @optimize_reg_copy_2(%struct.rtx_def* %319, %struct.rtx_def* %324, %struct.rtx_def* %329)
  br label %330

; <label>:330:                                    ; preds = %318, %307
  %331 = load i32*, i32** @regno_src_regno, align 8
  %332 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %333 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %332, i32 0, i32 1
  %334 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %333, i64 0, i64 0
  %335 = bitcast %union.rtunion_def* %334 to %struct.rtx_def**
  %336 = load %struct.rtx_def*, %struct.rtx_def** %335, align 8
  %337 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %336, i32 0, i32 1
  %338 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %337, i64 0, i64 0
  %339 = bitcast %union.rtunion_def* %338 to i32*
  %340 = load i32, i32* %339, align 8
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %331, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %393

; <label>:345:                                    ; preds = %330
  %346 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %347 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %346, i32 0, i32 1
  %348 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %347, i64 0, i64 1
  %349 = bitcast %union.rtunion_def* %348 to %struct.rtx_def**
  %350 = load %struct.rtx_def*, %struct.rtx_def** %349, align 8
  %351 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %352 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %351, i32 0, i32 1
  %353 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %352, i64 0, i64 0
  %354 = bitcast %union.rtunion_def* %353 to %struct.rtx_def**
  %355 = load %struct.rtx_def*, %struct.rtx_def** %354, align 8
  %356 = icmp ne %struct.rtx_def* %350, %355
  br i1 %356, label %357, label %393

; <label>:357:                                    ; preds = %345
  %358 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %359 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %358, i32 0, i32 1
  %360 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %359, i64 0, i64 1
  %361 = bitcast %union.rtunion_def* %360 to %struct.rtx_def**
  %362 = load %struct.rtx_def*, %struct.rtx_def** %361, align 8
  %363 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %362, i32 0, i32 1
  %364 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %363, i64 0, i64 0
  %365 = bitcast %union.rtunion_def* %364 to i32*
  %366 = load i32, i32* %365, align 8
  store i32 %366, i32* %17, align 4
  %367 = load i32*, i32** @regno_src_regno, align 8
  %368 = load i32, i32* %17, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = icmp sge i32 %371, 0
  br i1 %372, label %373, label %379

; <label>:373:                                    ; preds = %357
  %374 = load i32*, i32** @regno_src_regno, align 8
  %375 = load i32, i32* %17, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  store i32 %378, i32* %17, align 4
  br label %379

; <label>:379:                                    ; preds = %373, %357
  %380 = load i32, i32* %17, align 4
  %381 = load i32*, i32** @regno_src_regno, align 8
  %382 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %383 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %382, i32 0, i32 1
  %384 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %383, i64 0, i64 0
  %385 = bitcast %union.rtunion_def* %384 to %struct.rtx_def**
  %386 = load %struct.rtx_def*, %struct.rtx_def** %385, align 8
  %387 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %386, i32 0, i32 1
  %388 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %387, i64 0, i64 0
  %389 = bitcast %union.rtunion_def* %388 to i32*
  %390 = load i32, i32* %389, align 8
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %381, i64 %391
  store i32 %380, i32* %392, align 4
  br label %393

; <label>:393:                                    ; preds = %379, %345, %330
  br label %394

; <label>:394:                                    ; preds = %393, %296, %282
  br label %395

; <label>:395:                                    ; preds = %394, %263, %253, %250, %247
  %396 = load i32, i32* @flag_regmove, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %399, label %398

; <label>:398:                                    ; preds = %395
  br label %674

; <label>:399:                                    ; preds = %395
  %400 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %401 = call i32 @find_matches(%struct.rtx_def* %400, %struct.match* %9)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %404, label %403

; <label>:403:                                    ; preds = %399
  br label %674

; <label>:404:                                    ; preds = %399
  store i32 0, i32* %15, align 4
  br label %405

; <label>:405:                                    ; preds = %670, %404
  %406 = load i32, i32* %15, align 4
  %407 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 4
  %408 = sext i8 %407 to i32
  %409 = icmp slt i32 %406, %408
  br i1 %409, label %410, label %673

; <label>:410:                                    ; preds = %405
  %411 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 0
  %412 = load i32, i32* %15, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [30 x i32], [30 x i32]* %411, i64 0, i64 %413
  %415 = load i32, i32* %414, align 4
  store i32 %415, i32* %16, align 4
  %416 = load i32, i32* %16, align 4
  %417 = icmp slt i32 %416, 0
  br i1 %417, label %418, label %419

; <label>:418:                                    ; preds = %410
  br label %670

; <label>:419:                                    ; preds = %410
  %420 = load i32, i32* %15, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %421
  %423 = load %struct.rtx_def*, %struct.rtx_def** %422, align 8
  store %struct.rtx_def* %423, %struct.rtx_def** %18, align 8
  %424 = load i32, i32* %16, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %425
  %427 = load %struct.rtx_def*, %struct.rtx_def** %426, align 8
  store %struct.rtx_def* %427, %struct.rtx_def** %19, align 8
  %428 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %429 = bitcast %struct.rtx_def* %428 to i32*
  %430 = load i32, i32* %429, align 8
  %431 = and i32 %430, 65535
  %432 = icmp ne i32 %431, 61
  br i1 %432, label %433, label %434

; <label>:433:                                    ; preds = %419
  br label %670

; <label>:434:                                    ; preds = %419
  %435 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  store %struct.rtx_def* %435, %struct.rtx_def** %20, align 8
  %436 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %437 = bitcast %struct.rtx_def* %436 to i32*
  %438 = load i32, i32* %437, align 8
  %439 = and i32 %438, 65535
  %440 = icmp eq i32 %439, 63
  br i1 %440, label %441, label %487

; <label>:441:                                    ; preds = %434
  %442 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %443 = bitcast %struct.rtx_def* %442 to i32*
  %444 = load i32, i32* %443, align 8
  %445 = lshr i32 %444, 16
  %446 = and i32 %445, 255
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %447
  %449 = load i8, i8* %448, align 1
  %450 = zext i8 %449 to i32
  %451 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %452 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %451, i32 0, i32 1
  %453 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %452, i64 0, i64 0
  %454 = bitcast %union.rtunion_def* %453 to %struct.rtx_def**
  %455 = load %struct.rtx_def*, %struct.rtx_def** %454, align 8
  %456 = bitcast %struct.rtx_def* %455 to i32*
  %457 = load i32, i32* %456, align 8
  %458 = lshr i32 %457, 16
  %459 = and i32 %458, 255
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %460
  %462 = load i8, i8* %461, align 1
  %463 = zext i8 %462 to i32
  %464 = icmp sge i32 %450, %463
  br i1 %464, label %465, label %487

; <label>:465:                                    ; preds = %441
  %466 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %467 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %466, i32 0, i32 1
  %468 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %467, i64 0, i64 0
  %469 = bitcast %union.rtunion_def* %468 to %struct.rtx_def**
  %470 = load %struct.rtx_def*, %struct.rtx_def** %469, align 8
  %471 = bitcast %struct.rtx_def* %470 to i32*
  %472 = load i32, i32* %471, align 8
  %473 = lshr i32 %472, 16
  %474 = and i32 %473, 255
  %475 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %476 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %477 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %476, i32 0, i32 1
  %478 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %477, i64 0, i64 1
  %479 = bitcast %union.rtunion_def* %478 to i32*
  %480 = load i32, i32* %479, align 8
  %481 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %474, %struct.rtx_def* %475, i32 %480)
  store %struct.rtx_def* %481, %struct.rtx_def** %20, align 8
  %482 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %483 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %482, i32 0, i32 1
  %484 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %483, i64 0, i64 0
  %485 = bitcast %union.rtunion_def* %484 to %struct.rtx_def**
  %486 = load %struct.rtx_def*, %struct.rtx_def** %485, align 8
  store %struct.rtx_def* %486, %struct.rtx_def** %19, align 8
  br label %487

; <label>:487:                                    ; preds = %465, %441, %434
  %488 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %489 = bitcast %struct.rtx_def* %488 to i32*
  %490 = load i32, i32* %489, align 8
  %491 = and i32 %490, 65535
  %492 = icmp ne i32 %491, 61
  br i1 %492, label %500, label %493

; <label>:493:                                    ; preds = %487
  %494 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %495 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %494, i32 0, i32 1
  %496 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %495, i64 0, i64 0
  %497 = bitcast %union.rtunion_def* %496 to i32*
  %498 = load i32, i32* %497, align 8
  %499 = icmp ult i32 %498, 53
  br i1 %499, label %500, label %501

; <label>:500:                                    ; preds = %493, %487
  br label %670

; <label>:501:                                    ; preds = %493
  %502 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %503 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %502, i32 0, i32 1
  %504 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %503, i64 0, i64 0
  %505 = bitcast %union.rtunion_def* %504 to i32*
  %506 = load i32, i32* %505, align 8
  %507 = icmp ult i32 %506, 53
  br i1 %507, label %508, label %531

; <label>:508:                                    ; preds = %501
  %509 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 2
  %510 = load i32, i32* %15, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [30 x i32], [30 x i32]* %509, i64 0, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* %15, align 4
  %515 = icmp slt i32 %513, %514
  br i1 %515, label %516, label %530

; <label>:516:                                    ; preds = %508
  %517 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %518 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %517, i32 0, i32 1
  %519 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %518, i64 0, i64 0
  %520 = bitcast %union.rtunion_def* %519 to i32*
  %521 = load i32, i32* %520, align 8
  %522 = load i32*, i32** @regno_src_regno, align 8
  %523 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %524 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %523, i32 0, i32 1
  %525 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %524, i64 0, i64 0
  %526 = bitcast %union.rtunion_def* %525 to i32*
  %527 = load i32, i32* %526, align 8
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds i32, i32* %522, i64 %528
  store i32 %521, i32* %529, align 4
  br label %530

; <label>:530:                                    ; preds = %516, %508
  br label %670

; <label>:531:                                    ; preds = %501
  %532 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %533 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %532, i32 0, i32 4
  %534 = bitcast %union.varray_data_tag* %533 to [1 x %struct.reg_info_def*]*
  %535 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %536 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %535, i32 0, i32 1
  %537 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %536, i64 0, i64 0
  %538 = bitcast %union.rtunion_def* %537 to i32*
  %539 = load i32, i32* %538, align 8
  %540 = zext i32 %539 to i64
  %541 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %534, i64 0, i64 %540
  %542 = load %struct.reg_info_def*, %struct.reg_info_def** %541, align 8
  %543 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %542, i32 0, i32 7
  %544 = load i32, i32* %543, align 4
  %545 = icmp slt i32 %544, 0
  br i1 %545, label %546, label %547

; <label>:546:                                    ; preds = %531
  br label %670

; <label>:547:                                    ; preds = %531
  %548 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 1
  %549 = load i32, i32* %15, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [30 x i32], [30 x i32]* %548, i64 0, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %561, label %554

; <label>:554:                                    ; preds = %547
  %555 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 1
  %556 = load i32, i32* %16, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [30 x i32], [30 x i32]* %555, i64 0, i64 %557
  %559 = load i32, i32* %558, align 4
  %560 = icmp ne i32 %559, 1
  br i1 %560, label %561, label %562

; <label>:561:                                    ; preds = %554, %547
  br label %670

; <label>:562:                                    ; preds = %554
  %563 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 3
  %564 = load i32, i32* %16, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [30 x i32], [30 x i32]* %563, i64 0, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %579

; <label>:569:                                    ; preds = %562
  %570 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %571 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %570, i32 0, i32 1
  %572 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %571, i64 0, i64 3
  %573 = bitcast %union.rtunion_def* %572 to %struct.rtx_def**
  %574 = load %struct.rtx_def*, %struct.rtx_def** %573, align 8
  %575 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %576 = call i32 @count_occurrences(%struct.rtx_def* %574, %struct.rtx_def* %575, i32 0)
  %577 = icmp sgt i32 %576, 1
  br i1 %577, label %578, label %579

; <label>:578:                                    ; preds = %569
  br label %670

; <label>:579:                                    ; preds = %569, %562
  %580 = load i32, i32* %16, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %581
  %583 = load %struct.rtx_def*, %struct.rtx_def** %582, align 8
  %584 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %585 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %584, i32 0, i32 1
  %586 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %585, i64 0, i64 0
  %587 = bitcast %union.rtunion_def* %586 to %struct.rtx_def**
  %588 = load %struct.rtx_def*, %struct.rtx_def** %587, align 8
  %589 = icmp ne %struct.rtx_def* %583, %588
  br i1 %589, label %590, label %591

; <label>:590:                                    ; preds = %579
  br label %670

; <label>:591:                                    ; preds = %579
  %592 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %593 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %594 = call i32 @operands_match_p(%struct.rtx_def* %592, %struct.rtx_def* %593)
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %597

; <label>:596:                                    ; preds = %591
  br label %670

; <label>:597:                                    ; preds = %591
  %598 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 2
  %599 = load i32, i32* %15, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [30 x i32], [30 x i32]* %598, i64 0, i64 %600
  %602 = load i32, i32* %601, align 4
  %603 = icmp sge i32 %602, 0
  br i1 %603, label %604, label %625

; <label>:604:                                    ; preds = %597
  %605 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 2
  %606 = load i32, i32* %15, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds [30 x i32], [30 x i32]* %605, i64 0, i64 %607
  %609 = load i32, i32* %608, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %610
  %612 = load %struct.rtx_def*, %struct.rtx_def** %611, align 8
  store %struct.rtx_def* %612, %struct.rtx_def** %23, align 8
  %613 = load %struct.rtx_def*, %struct.rtx_def** %23, align 8
  %614 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %615 = call i32 @operands_match_p(%struct.rtx_def* %613, %struct.rtx_def* %614)
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %624

; <label>:617:                                    ; preds = %604
  %618 = load %struct.rtx_def*, %struct.rtx_def** %23, align 8
  %619 = call i32 @replacement_quality(%struct.rtx_def* %618)
  %620 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %621 = call i32 @replacement_quality(%struct.rtx_def* %620)
  %622 = icmp sge i32 %619, %621
  br i1 %622, label %623, label %624

; <label>:623:                                    ; preds = %617
  br label %670

; <label>:624:                                    ; preds = %617, %604
  br label %625

; <label>:625:                                    ; preds = %624, %597
  %626 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %627 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %626, i32 0, i32 1
  %628 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %627, i64 0, i64 0
  %629 = bitcast %union.rtunion_def* %628 to i32*
  %630 = load i32, i32* %629, align 8
  %631 = call i32 @reg_preferred_class(i32 %630)
  store i32 %631, i32* %21, align 4
  %632 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %633 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %632, i32 0, i32 1
  %634 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %633, i64 0, i64 0
  %635 = bitcast %union.rtunion_def* %634 to i32*
  %636 = load i32, i32* %635, align 8
  %637 = call i32 @reg_preferred_class(i32 %636)
  store i32 %637, i32* %22, align 4
  %638 = load i32, i32* %21, align 4
  %639 = load i32, i32* %22, align 4
  %640 = call i32 @regclass_compatible_p(i32 %638, i32 %639)
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %643, label %642

; <label>:642:                                    ; preds = %625
  br label %670

; <label>:643:                                    ; preds = %625
  %644 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %645 = bitcast %struct.rtx_def* %644 to i32*
  %646 = load i32, i32* %645, align 8
  %647 = lshr i32 %646, 16
  %648 = and i32 %647, 255
  %649 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %650 = bitcast %struct.rtx_def* %649 to i32*
  %651 = load i32, i32* %650, align 8
  %652 = lshr i32 %651, 16
  %653 = and i32 %652, 255
  %654 = icmp ne i32 %648, %653
  br i1 %654, label %655, label %656

; <label>:655:                                    ; preds = %643
  br label %670

; <label>:656:                                    ; preds = %643
  %657 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %658 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %659 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %660 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %661 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %662 = load i32, i32* %10, align 4
  %663 = load i32, i32* %15, align 4
  %664 = load i32, i32* %16, align 4
  %665 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %666 = call i32 @fixup_match_1(%struct.rtx_def* %657, %struct.rtx_def* %658, %struct.rtx_def* %659, %struct.rtx_def* %660, %struct.rtx_def* %661, i32 %662, i32 %663, i32 %664, %struct._IO_FILE* %665)
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %669

; <label>:668:                                    ; preds = %656
  br label %673

; <label>:669:                                    ; preds = %656
  br label %670

; <label>:670:                                    ; preds = %669, %655, %642, %623, %596, %590, %578, %561, %546, %530, %500, %433, %418
  %671 = load i32, i32* %15, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %15, align 4
  br label %405

; <label>:673:                                    ; preds = %668, %405
  br label %674

; <label>:674:                                    ; preds = %673, %403, %398, %184
  %675 = load i32, i32* %10, align 4
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %683

; <label>:677:                                    ; preds = %674
  %678 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %679 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %678, i32 0, i32 1
  %680 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %679, i64 0, i64 1
  %681 = bitcast %union.rtunion_def* %680 to %struct.rtx_def**
  %682 = load %struct.rtx_def*, %struct.rtx_def** %681, align 8
  br label %689

; <label>:683:                                    ; preds = %674
  %684 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %685 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %684, i32 0, i32 1
  %686 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %685, i64 0, i64 2
  %687 = bitcast %union.rtunion_def* %686 to %struct.rtx_def**
  %688 = load %struct.rtx_def*, %struct.rtx_def** %687, align 8
  br label %689

; <label>:689:                                    ; preds = %683, %677
  %690 = phi %struct.rtx_def* [ %682, %677 ], [ %688, %683 ]
  store %struct.rtx_def* %690, %struct.rtx_def** %8, align 8
  br label %140

; <label>:691:                                    ; preds = %140
  br label %692

; <label>:692:                                    ; preds = %691
  %693 = load i32, i32* %10, align 4
  %694 = add nsw i32 %693, 1
  store i32 %694, i32* %10, align 4
  br label %111

; <label>:695:                                    ; preds = %111
  %696 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %697 = icmp ne %struct._IO_FILE* %696, null
  br i1 %697, label %698, label %701

; <label>:698:                                    ; preds = %695
  %699 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %700 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %699, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %701

; <label>:701:                                    ; preds = %698, %695
  %702 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %702, %struct.rtx_def** %8, align 8
  br label %703

; <label>:703:                                    ; preds = %1372, %701
  %704 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %705 = icmp ne %struct.rtx_def* %704, null
  br i1 %705, label %706, label %1378

; <label>:706:                                    ; preds = %703
  %707 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %708 = bitcast %struct.rtx_def* %707 to i32*
  %709 = load i32, i32* %708, align 8
  %710 = and i32 %709, 65535
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %711
  %713 = load i8, i8* %712, align 1
  %714 = sext i8 %713 to i32
  %715 = icmp eq i32 %714, 105
  br i1 %715, label %716, label %1371

; <label>:716:                                    ; preds = %706
  store i32 0, i32* %26, align 4
  %717 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %718 = call i32 @find_matches(%struct.rtx_def* %717, %struct.match* %9)
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %721, label %720

; <label>:720:                                    ; preds = %716
  br label %1372

; <label>:721:                                    ; preds = %716
  store %struct.rtx_def* null, %struct.rtx_def** %12, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %13, align 8
  store i32 0, i32* %24, align 4
  br label %722

; <label>:722:                                    ; preds = %1356, %721
  %723 = load i32, i32* %24, align 4
  %724 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 4
  %725 = sext i8 %724 to i32
  %726 = icmp slt i32 %723, %725
  br i1 %726, label %727, label %1359

; <label>:727:                                    ; preds = %722
  store i32 0, i32* %33, align 4
  %728 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 0
  %729 = load i32, i32* %24, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [30 x i32], [30 x i32]* %728, i64 0, i64 %730
  %732 = load i32, i32* %731, align 4
  store i32 %732, i32* %25, align 4
  %733 = load i32, i32* %25, align 4
  %734 = icmp slt i32 %733, 0
  br i1 %734, label %735, label %736

; <label>:735:                                    ; preds = %727
  br label %1356

; <label>:736:                                    ; preds = %727
  %737 = load i32, i32* %25, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %738
  %740 = load %struct.rtx_def*, %struct.rtx_def** %739, align 8
  store %struct.rtx_def* %740, %struct.rtx_def** %30, align 8
  %741 = load i32, i32* %24, align 4
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %742
  %744 = load %struct.rtx_def*, %struct.rtx_def** %743, align 8
  store %struct.rtx_def* %744, %struct.rtx_def** %29, align 8
  %745 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %746 = bitcast %struct.rtx_def* %745 to i32*
  %747 = load i32, i32* %746, align 8
  %748 = and i32 %747, 65535
  %749 = icmp ne i32 %748, 61
  br i1 %749, label %750, label %751

; <label>:750:                                    ; preds = %736
  br label %1356

; <label>:751:                                    ; preds = %736
  %752 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %753 = bitcast %struct.rtx_def* %752 to i32*
  %754 = load i32, i32* %753, align 8
  %755 = and i32 %754, 65535
  %756 = icmp ne i32 %755, 61
  br i1 %756, label %786, label %757

; <label>:757:                                    ; preds = %751
  %758 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %759 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %758, i32 0, i32 1
  %760 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %759, i64 0, i64 0
  %761 = bitcast %union.rtunion_def* %760 to i32*
  %762 = load i32, i32* %761, align 8
  %763 = icmp ult i32 %762, 53
  br i1 %763, label %786, label %764

; <label>:764:                                    ; preds = %757
  %765 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %766 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %765, i32 0, i32 4
  %767 = bitcast %union.varray_data_tag* %766 to [1 x %struct.reg_info_def*]*
  %768 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %769 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %768, i32 0, i32 1
  %770 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %769, i64 0, i64 0
  %771 = bitcast %union.rtunion_def* %770 to i32*
  %772 = load i32, i32* %771, align 8
  %773 = zext i32 %772 to i64
  %774 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %767, i64 0, i64 %773
  %775 = load %struct.reg_info_def*, %struct.reg_info_def** %774, align 8
  %776 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %775, i32 0, i32 7
  %777 = load i32, i32* %776, align 4
  %778 = icmp slt i32 %777, 0
  br i1 %778, label %786, label %779

; <label>:779:                                    ; preds = %764
  %780 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %781 = bitcast %struct.rtx_def* %780 to i32*
  %782 = load i32, i32* %781, align 8
  %783 = lshr i32 %782, 26
  %784 = and i32 %783, 1
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %786, label %787

; <label>:786:                                    ; preds = %779, %764, %757, %751
  br label %1356

; <label>:787:                                    ; preds = %779
  %788 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %789 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %790 = call i32 @operands_match_p(%struct.rtx_def* %788, %struct.rtx_def* %789)
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %792, label %793

; <label>:792:                                    ; preds = %787
  br label %1356

; <label>:793:                                    ; preds = %787
  %794 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 2
  %795 = load i32, i32* %24, align 4
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds [30 x i32], [30 x i32]* %794, i64 0, i64 %796
  %798 = load i32, i32* %797, align 4
  %799 = icmp sge i32 %798, 0
  br i1 %799, label %800, label %815

; <label>:800:                                    ; preds = %793
  %801 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 2
  %802 = load i32, i32* %24, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds [30 x i32], [30 x i32]* %801, i64 0, i64 %803
  %805 = load i32, i32* %804, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %806
  %808 = load %struct.rtx_def*, %struct.rtx_def** %807, align 8
  store %struct.rtx_def* %808, %struct.rtx_def** %37, align 8
  %809 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %810 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %811 = call i32 @operands_match_p(%struct.rtx_def* %809, %struct.rtx_def* %810)
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %814

; <label>:813:                                    ; preds = %800
  br label %1356

; <label>:814:                                    ; preds = %800
  br label %815

; <label>:815:                                    ; preds = %814, %793
  %816 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %817 = bitcast %struct.rtx_def* %816 to i32*
  %818 = load i32, i32* %817, align 8
  %819 = and i32 %818, 65535
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %820
  %822 = load i8, i8* %821, align 1
  %823 = sext i8 %822 to i32
  %824 = icmp eq i32 %823, 105
  br i1 %824, label %825, label %851

; <label>:825:                                    ; preds = %815
  %826 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %827 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %826, i32 0, i32 1
  %828 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %827, i64 0, i64 3
  %829 = bitcast %union.rtunion_def* %828 to %struct.rtx_def**
  %830 = load %struct.rtx_def*, %struct.rtx_def** %829, align 8
  %831 = bitcast %struct.rtx_def* %830 to i32*
  %832 = load i32, i32* %831, align 8
  %833 = and i32 %832, 65535
  %834 = icmp eq i32 %833, 47
  br i1 %834, label %835, label %841

; <label>:835:                                    ; preds = %825
  %836 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %837 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %836, i32 0, i32 1
  %838 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %837, i64 0, i64 3
  %839 = bitcast %union.rtunion_def* %838 to %struct.rtx_def**
  %840 = load %struct.rtx_def*, %struct.rtx_def** %839, align 8
  br label %849

; <label>:841:                                    ; preds = %825
  %842 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %843 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %844 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %843, i32 0, i32 1
  %845 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %844, i64 0, i64 3
  %846 = bitcast %union.rtunion_def* %845 to %struct.rtx_def**
  %847 = load %struct.rtx_def*, %struct.rtx_def** %846, align 8
  %848 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %842, %struct.rtx_def* %847)
  br label %849

; <label>:849:                                    ; preds = %841, %835
  %850 = phi %struct.rtx_def* [ %840, %835 ], [ %848, %841 ]
  br label %852

; <label>:851:                                    ; preds = %815
  br label %852

; <label>:852:                                    ; preds = %851, %849
  %853 = phi %struct.rtx_def* [ %850, %849 ], [ null, %851 ]
  store %struct.rtx_def* %853, %struct.rtx_def** %27, align 8
  %854 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %855 = icmp ne %struct.rtx_def* %854, null
  br i1 %855, label %857, label %856

; <label>:856:                                    ; preds = %852
  br label %1356

; <label>:857:                                    ; preds = %852
  %858 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %859 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %860 = call i32 @reg_set_p(%struct.rtx_def* %858, %struct.rtx_def* %859)
  %861 = icmp ne i32 %860, 0
  br i1 %861, label %862, label %863

; <label>:862:                                    ; preds = %857
  br label %1356

; <label>:863:                                    ; preds = %857
  %864 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 1
  %865 = load i32, i32* %24, align 4
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds [30 x i32], [30 x i32]* %864, i64 0, i64 %866
  %868 = load i32, i32* %867, align 4
  %869 = icmp ne i32 %868, 0
  br i1 %869, label %877, label %870

; <label>:870:                                    ; preds = %863
  %871 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 1
  %872 = load i32, i32* %25, align 4
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds [30 x i32], [30 x i32]* %871, i64 0, i64 %873
  %875 = load i32, i32* %874, align 4
  %876 = icmp ne i32 %875, 1
  br i1 %876, label %877, label %878

; <label>:877:                                    ; preds = %870, %863
  br label %1356

; <label>:878:                                    ; preds = %870
  %879 = getelementptr inbounds %struct.match, %struct.match* %9, i32 0, i32 3
  %880 = load i32, i32* %25, align 4
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds [30 x i32], [30 x i32]* %879, i64 0, i64 %881
  %883 = load i32, i32* %882, align 4
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %885, label %895

; <label>:885:                                    ; preds = %878
  %886 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %887 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %886, i32 0, i32 1
  %888 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %887, i64 0, i64 3
  %889 = bitcast %union.rtunion_def* %888 to %struct.rtx_def**
  %890 = load %struct.rtx_def*, %struct.rtx_def** %889, align 8
  %891 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %892 = call i32 @count_occurrences(%struct.rtx_def* %890, %struct.rtx_def* %891, i32 0)
  %893 = icmp sgt i32 %892, 1
  br i1 %893, label %894, label %895

; <label>:894:                                    ; preds = %885
  br label %1356

; <label>:895:                                    ; preds = %885, %878
  %896 = load i32, i32* %25, align 4
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i64 0, i64 %897
  %899 = load %struct.rtx_def*, %struct.rtx_def** %898, align 8
  %900 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %901 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %900, i32 0, i32 1
  %902 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %901, i64 0, i64 0
  %903 = bitcast %union.rtunion_def* %902 to %struct.rtx_def**
  %904 = load %struct.rtx_def*, %struct.rtx_def** %903, align 8
  %905 = icmp ne %struct.rtx_def* %899, %904
  br i1 %905, label %906, label %907

; <label>:906:                                    ; preds = %895
  br label %1356

; <label>:907:                                    ; preds = %895
  %908 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %909 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %908, i32 0, i32 1
  %910 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %909, i64 0, i64 0
  %911 = bitcast %union.rtunion_def* %910 to i32*
  %912 = load i32, i32* %911, align 8
  %913 = icmp ult i32 %912, 53
  br i1 %913, label %914, label %968

; <label>:914:                                    ; preds = %907
  %915 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %916 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %915, i32 0, i32 1
  %917 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %916, i64 0, i64 1
  %918 = bitcast %union.rtunion_def* %917 to %struct.rtx_def**
  %919 = load %struct.rtx_def*, %struct.rtx_def** %918, align 8
  %920 = bitcast %struct.rtx_def* %919 to i32*
  %921 = load i32, i32* %920, align 8
  %922 = and i32 %921, 65535
  %923 = icmp eq i32 %922, 75
  br i1 %923, label %924, label %967

; <label>:924:                                    ; preds = %914
  %925 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %926 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %925, i32 0, i32 1
  %927 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %926, i64 0, i64 1
  %928 = bitcast %union.rtunion_def* %927 to %struct.rtx_def**
  %929 = load %struct.rtx_def*, %struct.rtx_def** %928, align 8
  %930 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %929, i32 0, i32 1
  %931 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %930, i64 0, i64 1
  %932 = bitcast %union.rtunion_def* %931 to %struct.rtx_def**
  %933 = load %struct.rtx_def*, %struct.rtx_def** %932, align 8
  %934 = bitcast %struct.rtx_def* %933 to i32*
  %935 = load i32, i32* %934, align 8
  %936 = and i32 %935, 65535
  %937 = icmp eq i32 %936, 54
  br i1 %937, label %938, label %967

; <label>:938:                                    ; preds = %924
  %939 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %940 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %939, i32 0, i32 1
  %941 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %940, i64 0, i64 1
  %942 = bitcast %union.rtunion_def* %941 to %struct.rtx_def**
  %943 = load %struct.rtx_def*, %struct.rtx_def** %942, align 8
  %944 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %943, i32 0, i32 1
  %945 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %944, i64 0, i64 0
  %946 = bitcast %union.rtunion_def* %945 to %struct.rtx_def**
  %947 = load %struct.rtx_def*, %struct.rtx_def** %946, align 8
  %948 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %949 = icmp eq %struct.rtx_def* %947, %948
  br i1 %949, label %950, label %967

; <label>:950:                                    ; preds = %938
  %951 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %952 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %953 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %954 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %955 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %954, i32 0, i32 1
  %956 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %955, i64 0, i64 1
  %957 = bitcast %union.rtunion_def* %956 to %struct.rtx_def**
  %958 = load %struct.rtx_def*, %struct.rtx_def** %957, align 8
  %959 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %958, i32 0, i32 1
  %960 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %959, i64 0, i64 1
  %961 = bitcast %union.rtunion_def* %960 to %struct.rtx_def**
  %962 = load %struct.rtx_def*, %struct.rtx_def** %961, align 8
  %963 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %964 = call i32 @fixup_match_2(%struct.rtx_def* %951, %struct.rtx_def* %952, %struct.rtx_def* %953, %struct.rtx_def* %962, %struct._IO_FILE* %963)
  %965 = icmp ne i32 %964, 0
  br i1 %965, label %966, label %967

; <label>:966:                                    ; preds = %950
  br label %1359

; <label>:967:                                    ; preds = %950, %938, %924, %914
  br label %1356

; <label>:968:                                    ; preds = %907
  %969 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %970 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %969, i32 0, i32 1
  %971 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %970, i64 0, i64 0
  %972 = bitcast %union.rtunion_def* %971 to i32*
  %973 = load i32, i32* %972, align 8
  %974 = call i32 @reg_preferred_class(i32 %973)
  store i32 %974, i32* %34, align 4
  %975 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %976 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %975, i32 0, i32 1
  %977 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %976, i64 0, i64 0
  %978 = bitcast %union.rtunion_def* %977 to i32*
  %979 = load i32, i32* %978, align 8
  %980 = call i32 @reg_preferred_class(i32 %979)
  store i32 %980, i32* %35, align 4
  %981 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %982 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %983 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %981, i32 1, %struct.rtx_def* %982)
  store %struct.rtx_def* %983, %struct.rtx_def** %31, align 8
  %984 = icmp ne %struct.rtx_def* %983, null
  br i1 %984, label %986, label %985

; <label>:985:                                    ; preds = %968
  br label %1356

; <label>:986:                                    ; preds = %968
  %987 = load i32, i32* %34, align 4
  %988 = load i32, i32* %35, align 4
  %989 = call i32 @regclass_compatible_p(i32 %987, i32 %988)
  %990 = icmp ne i32 %989, 0
  br i1 %990, label %998, label %991

; <label>:991:                                    ; preds = %986
  %992 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %993 = icmp ne %struct.rtx_def* %992, null
  br i1 %993, label %997, label %994

; <label>:994:                                    ; preds = %991
  %995 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  store %struct.rtx_def* %995, %struct.rtx_def** %12, align 8
  %996 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  store %struct.rtx_def* %996, %struct.rtx_def** %13, align 8
  br label %997

; <label>:997:                                    ; preds = %994, %991
  br label %1356

; <label>:998:                                    ; preds = %986
  %999 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %1000 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %1001 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1001, i64 0, i64 1
  %1003 = bitcast %union.rtunion_def* %1002 to %struct.rtx_def**
  %1004 = load %struct.rtx_def*, %struct.rtx_def** %1003, align 8
  %1005 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %999, %struct.rtx_def* %1004)
  %1006 = icmp ne i32 %1005, 0
  br i1 %1006, label %1007, label %1014

; <label>:1007:                                   ; preds = %998
  %1008 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %1009 = icmp ne %struct.rtx_def* %1008, null
  br i1 %1009, label %1013, label %1010

; <label>:1010:                                   ; preds = %1007
  %1011 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  store %struct.rtx_def* %1011, %struct.rtx_def** %12, align 8
  %1012 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  store %struct.rtx_def* %1012, %struct.rtx_def** %13, align 8
  br label %1013

; <label>:1013:                                   ; preds = %1010, %1007
  br label %1356

; <label>:1014:                                   ; preds = %998
  %1015 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %1016 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %1017 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %1018 = call i32 @reg_is_remote_constant_p(%struct.rtx_def* %1015, %struct.rtx_def* %1016, %struct.rtx_def* %1017)
  %1019 = icmp ne i32 %1018, 0
  br i1 %1019, label %1020, label %1027

; <label>:1020:                                   ; preds = %1014
  %1021 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %1022 = icmp ne %struct.rtx_def* %1021, null
  br i1 %1022, label %1026, label %1023

; <label>:1023:                                   ; preds = %1020
  %1024 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  store %struct.rtx_def* %1024, %struct.rtx_def** %12, align 8
  %1025 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  store %struct.rtx_def* %1025, %struct.rtx_def** %13, align 8
  br label %1026

; <label>:1026:                                   ; preds = %1023, %1020
  br label %1356

; <label>:1027:                                   ; preds = %1014
  %1028 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %1029 = icmp ne %struct._IO_FILE* %1028, null
  br i1 %1029, label %1030, label %1040

; <label>:1030:                                   ; preds = %1027
  %1031 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %1032 = load i32, i32* %24, align 4
  %1033 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %1034 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1033, i32 0, i32 1
  %1035 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1034, i64 0, i64 0
  %1036 = bitcast %union.rtunion_def* %1035 to i32*
  %1037 = load i32, i32* %1036, align 8
  %1038 = load i32, i32* %25, align 4
  %1039 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1031, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i32 %1032, i32 %1037, i32 %1038)
  br label %1040

; <label>:1040:                                   ; preds = %1030, %1027
  store i32 0, i32* %36, align 4
  %1041 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %1042 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1041, i32 0, i32 1
  %1043 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1042, i64 0, i64 1
  %1044 = bitcast %union.rtunion_def* %1043 to %struct.rtx_def**
  %1045 = load %struct.rtx_def*, %struct.rtx_def** %1044, align 8
  store %struct.rtx_def* %1045, %struct.rtx_def** %28, align 8
  br label %1046

; <label>:1046:                                   ; preds = %1192, %1040
  %1047 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1048 = icmp ne %struct.rtx_def* %1047, null
  br i1 %1048, label %1049, label %1198

; <label>:1049:                                   ; preds = %1046
  %1050 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1051 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %1050)
  %1052 = icmp ne i32 %1051, 0
  br i1 %1052, label %1053, label %1054

; <label>:1053:                                   ; preds = %1049
  br label %1198

; <label>:1054:                                   ; preds = %1049
  %1055 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1056 = bitcast %struct.rtx_def* %1055 to i32*
  %1057 = load i32, i32* %1056, align 8
  %1058 = and i32 %1057, 65535
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %1059
  %1061 = load i8, i8* %1060, align 1
  %1062 = sext i8 %1061 to i32
  %1063 = icmp eq i32 %1062, 105
  br i1 %1063, label %1065, label %1064

; <label>:1064:                                   ; preds = %1054
  br label %1192

; <label>:1065:                                   ; preds = %1054
  br label %1066

; <label>:1066:                                   ; preds = %1065
  %1067 = load i32, i32* %36, align 4
  %1068 = add nsw i32 %1067, 1
  store i32 %1068, i32* %36, align 4
  %1069 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1070 = bitcast %struct.rtx_def* %1069 to i32*
  %1071 = load i32, i32* %1070, align 8
  %1072 = and i32 %1071, 65535
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %1073
  %1075 = load i8, i8* %1074, align 1
  %1076 = sext i8 %1075 to i32
  %1077 = icmp eq i32 %1076, 105
  br i1 %1077, label %1078, label %1104

; <label>:1078:                                   ; preds = %1066
  %1079 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1080 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1079, i32 0, i32 1
  %1081 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1080, i64 0, i64 3
  %1082 = bitcast %union.rtunion_def* %1081 to %struct.rtx_def**
  %1083 = load %struct.rtx_def*, %struct.rtx_def** %1082, align 8
  %1084 = bitcast %struct.rtx_def* %1083 to i32*
  %1085 = load i32, i32* %1084, align 8
  %1086 = and i32 %1085, 65535
  %1087 = icmp eq i32 %1086, 47
  br i1 %1087, label %1088, label %1094

; <label>:1088:                                   ; preds = %1078
  %1089 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1090 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1089, i32 0, i32 1
  %1091 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1090, i64 0, i64 3
  %1092 = bitcast %union.rtunion_def* %1091 to %struct.rtx_def**
  %1093 = load %struct.rtx_def*, %struct.rtx_def** %1092, align 8
  br label %1102

; <label>:1094:                                   ; preds = %1078
  %1095 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1096 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1097 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1096, i32 0, i32 1
  %1098 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1097, i64 0, i64 3
  %1099 = bitcast %union.rtunion_def* %1098 to %struct.rtx_def**
  %1100 = load %struct.rtx_def*, %struct.rtx_def** %1099, align 8
  %1101 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %1095, %struct.rtx_def* %1100)
  br label %1102

; <label>:1102:                                   ; preds = %1094, %1088
  %1103 = phi %struct.rtx_def* [ %1093, %1088 ], [ %1101, %1094 ]
  br label %1105

; <label>:1104:                                   ; preds = %1066
  br label %1105

; <label>:1105:                                   ; preds = %1104, %1102
  %1106 = phi %struct.rtx_def* [ %1103, %1102 ], [ null, %1104 ]
  store %struct.rtx_def* %1106, %struct.rtx_def** %38, align 8
  %1107 = load %struct.rtx_def*, %struct.rtx_def** %38, align 8
  %1108 = icmp ne %struct.rtx_def* %1107, null
  br i1 %1108, label %1109, label %1147

; <label>:1109:                                   ; preds = %1105
  %1110 = load %struct.rtx_def*, %struct.rtx_def** %38, align 8
  %1111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1110, i32 0, i32 1
  %1112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1111, i64 0, i64 0
  %1113 = bitcast %union.rtunion_def* %1112 to %struct.rtx_def**
  %1114 = load %struct.rtx_def*, %struct.rtx_def** %1113, align 8
  %1115 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %1116 = icmp eq %struct.rtx_def* %1114, %1115
  br i1 %1116, label %1117, label %1147

; <label>:1117:                                   ; preds = %1109
  %1118 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %1119 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %1120 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %1121 = call i32 @validate_replace_rtx(%struct.rtx_def* %1118, %struct.rtx_def* %1119, %struct.rtx_def* %1120)
  %1122 = icmp ne i32 %1121, 0
  br i1 %1122, label %1123, label %1146

; <label>:1123:                                   ; preds = %1117
  %1124 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1125 = load %struct.rtx_def*, %struct.rtx_def** %38, align 8
  %1126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1125, i32 0, i32 1
  %1127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1126, i64 0, i64 0
  %1128 = bitcast %union.rtunion_def* %1127 to %struct.rtx_def**
  %1129 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %1130 = call i32 @validate_change(%struct.rtx_def* %1124, %struct.rtx_def** %1128, %struct.rtx_def* %1129, i32 0)
  %1131 = icmp ne i32 %1130, 0
  br i1 %1131, label %1132, label %1133

; <label>:1132:                                   ; preds = %1123
  store i32 1, i32* %26, align 4
  br label %1145

; <label>:1133:                                   ; preds = %1123
  %1134 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %1135 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %1136 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %1137 = call i32 @validate_replace_rtx(%struct.rtx_def* %1134, %struct.rtx_def* %1135, %struct.rtx_def* %1136)
  %1138 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %1139 = load i32, i32* %25, align 4
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i64 0, i64 %1140
  %1142 = load %struct.rtx_def**, %struct.rtx_def*** %1141, align 8
  %1143 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %1144 = call i32 @validate_change(%struct.rtx_def* %1138, %struct.rtx_def** %1142, %struct.rtx_def* %1143, i32 0)
  br label %1145

; <label>:1145:                                   ; preds = %1133, %1132
  br label %1146

; <label>:1146:                                   ; preds = %1145, %1117
  br label %1198

; <label>:1147:                                   ; preds = %1109, %1105
  %1148 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %1149 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1149, i32 0, i32 1
  %1151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1150, i64 0, i64 3
  %1152 = bitcast %union.rtunion_def* %1151 to %struct.rtx_def**
  %1153 = load %struct.rtx_def*, %struct.rtx_def** %1152, align 8
  %1154 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %1148, %struct.rtx_def* %1153)
  %1155 = icmp ne i32 %1154, 0
  br i1 %1155, label %1165, label %1156

; <label>:1156:                                   ; preds = %1147
  %1157 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %1158 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1158, i32 0, i32 1
  %1160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1159, i64 0, i64 3
  %1161 = bitcast %union.rtunion_def* %1160 to %struct.rtx_def**
  %1162 = load %struct.rtx_def*, %struct.rtx_def** %1161, align 8
  %1163 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %1157, %struct.rtx_def* %1162)
  %1164 = icmp ne i32 %1163, 0
  br i1 %1164, label %1165, label %1166

; <label>:1165:                                   ; preds = %1156, %1147
  br label %1198

; <label>:1166:                                   ; preds = %1156
  %1167 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1168 = bitcast %struct.rtx_def* %1167 to i32*
  %1169 = load i32, i32* %1168, align 8
  %1170 = and i32 %1169, 65535
  %1171 = icmp eq i32 %1170, 34
  br i1 %1171, label %1172, label %1191

; <label>:1172:                                   ; preds = %1166
  %1173 = load i32, i32* %33, align 4
  %1174 = add nsw i32 %1173, 1
  store i32 %1174, i32* %33, align 4
  %1175 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1176 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1175, i32 0, i32 4
  %1177 = bitcast %union.varray_data_tag* %1176 to [1 x %struct.reg_info_def*]*
  %1178 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %1179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1178, i32 0, i32 1
  %1180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1179, i64 0, i64 0
  %1181 = bitcast %union.rtunion_def* %1180 to i32*
  %1182 = load i32, i32* %1181, align 8
  %1183 = zext i32 %1182 to i64
  %1184 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1177, i64 0, i64 %1183
  %1185 = load %struct.reg_info_def*, %struct.reg_info_def** %1184, align 8
  %1186 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1185, i32 0, i32 8
  %1187 = load i32, i32* %1186, align 4
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1189, label %1190

; <label>:1189:                                   ; preds = %1172
  br label %1198

; <label>:1190:                                   ; preds = %1172
  br label %1191

; <label>:1191:                                   ; preds = %1190, %1166
  br label %1192

; <label>:1192:                                   ; preds = %1191, %1064
  %1193 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1193, i32 0, i32 1
  %1195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1194, i64 0, i64 1
  %1196 = bitcast %union.rtunion_def* %1195 to %struct.rtx_def**
  %1197 = load %struct.rtx_def*, %struct.rtx_def** %1196, align 8
  store %struct.rtx_def* %1197, %struct.rtx_def** %28, align 8
  br label %1046

; <label>:1198:                                   ; preds = %1189, %1165, %1146, %1053, %1046
  %1199 = load i32, i32* %26, align 4
  %1200 = icmp ne i32 %1199, 0
  br i1 %1200, label %1201, label %1355

; <label>:1201:                                   ; preds = %1198
  %1202 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %1203 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  call void @remove_note(%struct.rtx_def* %1202, %struct.rtx_def* %1203)
  %1204 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %1205 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1205, i32 0, i32 1
  %1207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1206, i64 0, i64 3
  %1208 = bitcast %union.rtunion_def* %1207 to %struct.rtx_def**
  %1209 = load %struct.rtx_def*, %struct.rtx_def** %1208, align 8
  %1210 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %1204, %struct.rtx_def* %1209)
  %1211 = icmp ne i32 %1210, 0
  br i1 %1211, label %1212, label %1227

; <label>:1212:                                   ; preds = %1201
  %1213 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1214 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1213, i32 0, i32 1
  %1215 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1214, i64 0, i64 6
  %1216 = bitcast %union.rtunion_def* %1215 to %struct.rtx_def**
  %1217 = load %struct.rtx_def*, %struct.rtx_def** %1216, align 8
  %1218 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %1219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1218, i32 0, i32 1
  %1220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1219, i64 0, i64 1
  %1221 = bitcast %union.rtunion_def* %1220 to %struct.rtx_def**
  store %struct.rtx_def* %1217, %struct.rtx_def** %1221, align 8
  %1222 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %1223 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1224 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1223, i32 0, i32 1
  %1225 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1224, i64 0, i64 6
  %1226 = bitcast %union.rtunion_def* %1225 to %struct.rtx_def**
  store %struct.rtx_def* %1222, %struct.rtx_def** %1226, align 8
  br label %1227

; <label>:1227:                                   ; preds = %1212, %1201
  %1228 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1229 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %1230 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %1228, i32 1, %struct.rtx_def* %1229)
  store %struct.rtx_def* %1230, %struct.rtx_def** %32, align 8
  %1231 = icmp ne %struct.rtx_def* %1230, null
  br i1 %1231, label %1232, label %1235

; <label>:1232:                                   ; preds = %1227
  %1233 = load %struct.rtx_def*, %struct.rtx_def** %28, align 8
  %1234 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  call void @remove_note(%struct.rtx_def* %1233, %struct.rtx_def* %1234)
  br label %1235

; <label>:1235:                                   ; preds = %1232, %1227
  %1236 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %1237 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1236, i32 0, i32 1
  %1238 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1237, i64 0, i64 0
  %1239 = bitcast %union.rtunion_def* %1238 to i32*
  %1240 = load i32, i32* %1239, align 8
  store i32 %1240, i32* %39, align 4
  %1241 = load %struct.rtx_def*, %struct.rtx_def** %29, align 8
  %1242 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1241, i32 0, i32 1
  %1243 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1242, i64 0, i64 0
  %1244 = bitcast %union.rtunion_def* %1243 to i32*
  %1245 = load i32, i32* %1244, align 8
  store i32 %1245, i32* %40, align 4
  %1246 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1247 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1246, i32 0, i32 4
  %1248 = bitcast %union.varray_data_tag* %1247 to [1 x %struct.reg_info_def*]*
  %1249 = load i32, i32* %39, align 4
  %1250 = sext i32 %1249 to i64
  %1251 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1248, i64 0, i64 %1250
  %1252 = load %struct.reg_info_def*, %struct.reg_info_def** %1251, align 8
  %1253 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1252, i32 0, i32 3
  %1254 = load i32, i32* %1253, align 4
  %1255 = add nsw i32 %1254, 1
  store i32 %1255, i32* %1253, align 4
  %1256 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1257 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1256, i32 0, i32 4
  %1258 = bitcast %union.varray_data_tag* %1257 to [1 x %struct.reg_info_def*]*
  %1259 = load i32, i32* %40, align 4
  %1260 = sext i32 %1259 to i64
  %1261 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1258, i64 0, i64 %1260
  %1262 = load %struct.reg_info_def*, %struct.reg_info_def** %1261, align 8
  %1263 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1262, i32 0, i32 3
  %1264 = load i32, i32* %1263, align 4
  %1265 = add nsw i32 %1264, -1
  store i32 %1265, i32* %1263, align 4
  %1266 = load i32, i32* %33, align 4
  %1267 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1268 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1267, i32 0, i32 4
  %1269 = bitcast %union.varray_data_tag* %1268 to [1 x %struct.reg_info_def*]*
  %1270 = load i32, i32* %39, align 4
  %1271 = sext i32 %1270 to i64
  %1272 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1269, i64 0, i64 %1271
  %1273 = load %struct.reg_info_def*, %struct.reg_info_def** %1272, align 8
  %1274 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1273, i32 0, i32 8
  %1275 = load i32, i32* %1274, align 4
  %1276 = add nsw i32 %1275, %1266
  store i32 %1276, i32* %1274, align 4
  %1277 = load i32, i32* %33, align 4
  %1278 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1279 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1278, i32 0, i32 4
  %1280 = bitcast %union.varray_data_tag* %1279 to [1 x %struct.reg_info_def*]*
  %1281 = load i32, i32* %40, align 4
  %1282 = sext i32 %1281 to i64
  %1283 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1280, i64 0, i64 %1282
  %1284 = load %struct.reg_info_def*, %struct.reg_info_def** %1283, align 8
  %1285 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1284, i32 0, i32 8
  %1286 = load i32, i32* %1285, align 4
  %1287 = sub nsw i32 %1286, %1277
  store i32 %1287, i32* %1285, align 4
  %1288 = load i32, i32* %36, align 4
  %1289 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1290 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1289, i32 0, i32 4
  %1291 = bitcast %union.varray_data_tag* %1290 to [1 x %struct.reg_info_def*]*
  %1292 = load i32, i32* %39, align 4
  %1293 = sext i32 %1292 to i64
  %1294 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1291, i64 0, i64 %1293
  %1295 = load %struct.reg_info_def*, %struct.reg_info_def** %1294, align 8
  %1296 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1295, i32 0, i32 7
  %1297 = load i32, i32* %1296, align 4
  %1298 = add nsw i32 %1297, %1288
  store i32 %1298, i32* %1296, align 4
  %1299 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1300 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1299, i32 0, i32 4
  %1301 = bitcast %union.varray_data_tag* %1300 to [1 x %struct.reg_info_def*]*
  %1302 = load i32, i32* %40, align 4
  %1303 = sext i32 %1302 to i64
  %1304 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1301, i64 0, i64 %1303
  %1305 = load %struct.reg_info_def*, %struct.reg_info_def** %1304, align 8
  %1306 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1305, i32 0, i32 7
  %1307 = load i32, i32* %1306, align 4
  %1308 = icmp sge i32 %1307, 0
  br i1 %1308, label %1309, label %1341

; <label>:1309:                                   ; preds = %1235
  %1310 = load i32, i32* %36, align 4
  %1311 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1312 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1311, i32 0, i32 4
  %1313 = bitcast %union.varray_data_tag* %1312 to [1 x %struct.reg_info_def*]*
  %1314 = load i32, i32* %40, align 4
  %1315 = sext i32 %1314 to i64
  %1316 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1313, i64 0, i64 %1315
  %1317 = load %struct.reg_info_def*, %struct.reg_info_def** %1316, align 8
  %1318 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1317, i32 0, i32 7
  %1319 = load i32, i32* %1318, align 4
  %1320 = sub nsw i32 %1319, %1310
  store i32 %1320, i32* %1318, align 4
  %1321 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1322 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1321, i32 0, i32 4
  %1323 = bitcast %union.varray_data_tag* %1322 to [1 x %struct.reg_info_def*]*
  %1324 = load i32, i32* %40, align 4
  %1325 = sext i32 %1324 to i64
  %1326 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1323, i64 0, i64 %1325
  %1327 = load %struct.reg_info_def*, %struct.reg_info_def** %1326, align 8
  %1328 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1327, i32 0, i32 7
  %1329 = load i32, i32* %1328, align 4
  %1330 = icmp slt i32 %1329, 2
  br i1 %1330, label %1331, label %1340

; <label>:1331:                                   ; preds = %1309
  %1332 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1333 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1332, i32 0, i32 4
  %1334 = bitcast %union.varray_data_tag* %1333 to [1 x %struct.reg_info_def*]*
  %1335 = load i32, i32* %40, align 4
  %1336 = sext i32 %1335 to i64
  %1337 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1334, i64 0, i64 %1336
  %1338 = load %struct.reg_info_def*, %struct.reg_info_def** %1337, align 8
  %1339 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1338, i32 0, i32 7
  store i32 2, i32* %1339, align 4
  br label %1340

; <label>:1340:                                   ; preds = %1331, %1309
  br label %1341

; <label>:1341:                                   ; preds = %1340, %1235
  %1342 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %1343 = icmp ne %struct._IO_FILE* %1342, null
  br i1 %1343, label %1344, label %1354

; <label>:1344:                                   ; preds = %1341
  %1345 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %1346 = load i32, i32* %24, align 4
  %1347 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %1348 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1347, i32 0, i32 1
  %1349 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1348, i64 0, i64 0
  %1350 = bitcast %union.rtunion_def* %1349 to i32*
  %1351 = load i32, i32* %1350, align 8
  %1352 = load i32, i32* %25, align 4
  %1353 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1345, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i32 %1346, i32 %1351, i32 %1352)
  br label %1354

; <label>:1354:                                   ; preds = %1344, %1341
  br label %1359

; <label>:1355:                                   ; preds = %1198
  br label %1356

; <label>:1356:                                   ; preds = %1355, %1026, %1013, %997, %985, %967, %906, %894, %877, %862, %856, %813, %792, %786, %750, %735
  %1357 = load i32, i32* %24, align 4
  %1358 = add nsw i32 %1357, 1
  store i32 %1358, i32* %24, align 4
  br label %722

; <label>:1359:                                   ; preds = %1354, %966, %722
  %1360 = load i32, i32* %26, align 4
  %1361 = icmp ne i32 %1360, 0
  br i1 %1361, label %1370, label %1362

; <label>:1362:                                   ; preds = %1359
  %1363 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %1364 = icmp ne %struct.rtx_def* %1363, null
  br i1 %1364, label %1365, label %1370

; <label>:1365:                                   ; preds = %1362
  %1366 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %1367 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %1368 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1369 = load i32, i32* %7, align 4
  call void @copy_src_to_dest(%struct.rtx_def* %1366, %struct.rtx_def* %1367, %struct.rtx_def* %1368, i32 %1369)
  br label %1370

; <label>:1370:                                   ; preds = %1365, %1362, %1359
  br label %1371

; <label>:1371:                                   ; preds = %1370, %706
  br label %1372

; <label>:1372:                                   ; preds = %1371, %720
  %1373 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %1374 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1373, i32 0, i32 1
  %1375 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1374, i64 0, i64 1
  %1376 = bitcast %union.rtunion_def* %1375 to %struct.rtx_def**
  %1377 = load %struct.rtx_def*, %struct.rtx_def** %1376, align 8
  store %struct.rtx_def* %1377, %struct.rtx_def** %8, align 8
  br label %703

; <label>:1378:                                   ; preds = %703
  store i32 0, i32* %11, align 4
  br label %1379

; <label>:1379:                                   ; preds = %1449, %1378
  %1380 = load i32, i32* %11, align 4
  %1381 = load i32, i32* @n_basic_blocks, align 4
  %1382 = icmp slt i32 %1380, %1381
  br i1 %1382, label %1383, label %1452

; <label>:1383:                                   ; preds = %1379
  %1384 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %1385 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1384, i32 0, i32 4
  %1386 = bitcast %union.varray_data_tag* %1385 to [1 x %struct.basic_block_def*]*
  %1387 = load i32, i32* %11, align 4
  %1388 = sext i32 %1387 to i64
  %1389 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %1386, i64 0, i64 %1388
  %1390 = load %struct.basic_block_def*, %struct.basic_block_def** %1389, align 8
  %1391 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1390, i32 0, i32 1
  %1392 = load %struct.rtx_def*, %struct.rtx_def** %1391, align 8
  store %struct.rtx_def* %1392, %struct.rtx_def** %41, align 8
  %1393 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  store %struct.rtx_def* %1393, %struct.rtx_def** %42, align 8
  %1394 = load %struct.rtx_def*, %struct.rtx_def** %42, align 8
  %1395 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1394, i32 0, i32 1
  %1396 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1395, i64 0, i64 2
  %1397 = bitcast %union.rtunion_def* %1396 to %struct.rtx_def**
  %1398 = load %struct.rtx_def*, %struct.rtx_def** %1397, align 8
  store %struct.rtx_def* %1398, %struct.rtx_def** %43, align 8
  br label %1399

; <label>:1399:                                   ; preds = %1432, %1383
  %1400 = load %struct.rtx_def*, %struct.rtx_def** %43, align 8
  %1401 = icmp ne %struct.rtx_def* %1400, null
  br i1 %1401, label %1402, label %1430

; <label>:1402:                                   ; preds = %1399
  %1403 = load %struct.rtx_def*, %struct.rtx_def** %43, align 8
  %1404 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1403, i32 0, i32 1
  %1405 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1404, i64 0, i64 0
  %1406 = bitcast %union.rtunion_def* %1405 to i32*
  %1407 = load i32, i32* %1406, align 8
  %1408 = load i32, i32* %7, align 4
  %1409 = icmp sge i32 %1407, %1408
  br i1 %1409, label %1410, label %1430

; <label>:1410:                                   ; preds = %1402
  %1411 = load i32, i32* %11, align 4
  %1412 = load i32, i32* @n_basic_blocks, align 4
  %1413 = sub nsw i32 %1412, 1
  %1414 = icmp eq i32 %1411, %1413
  br i1 %1414, label %1428, label %1415

; <label>:1415:                                   ; preds = %1410
  %1416 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %1417 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1416, i32 0, i32 4
  %1418 = bitcast %union.varray_data_tag* %1417 to [1 x %struct.basic_block_def*]*
  %1419 = load i32, i32* %11, align 4
  %1420 = add nsw i32 %1419, 1
  %1421 = sext i32 %1420 to i64
  %1422 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %1418, i64 0, i64 %1421
  %1423 = load %struct.basic_block_def*, %struct.basic_block_def** %1422, align 8
  %1424 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1423, i32 0, i32 0
  %1425 = load %struct.rtx_def*, %struct.rtx_def** %1424, align 8
  %1426 = load %struct.rtx_def*, %struct.rtx_def** %43, align 8
  %1427 = icmp ne %struct.rtx_def* %1425, %1426
  br label %1428

; <label>:1428:                                   ; preds = %1415, %1410
  %1429 = phi i1 [ true, %1410 ], [ %1427, %1415 ]
  br label %1430

; <label>:1430:                                   ; preds = %1428, %1402, %1399
  %1431 = phi i1 [ false, %1402 ], [ false, %1399 ], [ %1429, %1428 ]
  br i1 %1431, label %1432, label %1439

; <label>:1432:                                   ; preds = %1430
  %1433 = load %struct.rtx_def*, %struct.rtx_def** %43, align 8
  store %struct.rtx_def* %1433, %struct.rtx_def** %42, align 8
  %1434 = load %struct.rtx_def*, %struct.rtx_def** %42, align 8
  %1435 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1434, i32 0, i32 1
  %1436 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1435, i64 0, i64 2
  %1437 = bitcast %union.rtunion_def* %1436 to %struct.rtx_def**
  %1438 = load %struct.rtx_def*, %struct.rtx_def** %1437, align 8
  store %struct.rtx_def* %1438, %struct.rtx_def** %43, align 8
  br label %1399

; <label>:1439:                                   ; preds = %1430
  %1440 = load %struct.rtx_def*, %struct.rtx_def** %42, align 8
  %1441 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %1442 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1441, i32 0, i32 4
  %1443 = bitcast %union.varray_data_tag* %1442 to [1 x %struct.basic_block_def*]*
  %1444 = load i32, i32* %11, align 4
  %1445 = sext i32 %1444 to i64
  %1446 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %1443, i64 0, i64 %1445
  %1447 = load %struct.basic_block_def*, %struct.basic_block_def** %1446, align 8
  %1448 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1447, i32 0, i32 1
  store %struct.rtx_def* %1440, %struct.rtx_def** %1448, align 8
  br label %1449

; <label>:1449:                                   ; preds = %1439
  %1450 = load i32, i32* %11, align 4
  %1451 = add nsw i32 %1450, 1
  store i32 %1451, i32* %11, align 4
  br label %1379

; <label>:1452:                                   ; preds = %1379
  br label %1453

; <label>:1453:                                   ; preds = %1452, %121
  %1454 = load i32*, i32** @regno_src_regno, align 8
  %1455 = bitcast i32* %1454 to i8*
  call void @free(i8* %1455) #3
  %1456 = load i32*, i32** @regmove_bb_head, align 8
  %1457 = bitcast i32* %1456 to i8*
  call void @free(i8* %1457) #3
  br label %1458

; <label>:1458:                                   ; preds = %1453, %47
  ret void
}

declare i32 @get_max_uid() #1

; Function Attrs: noinline nounwind uwtable
define internal void @mark_flags_life_zones(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca %struct.rtx_def*, align 8
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %2, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %13 = icmp eq %struct.rtx_def* %12, null
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %1
  %15 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 0), align 16
  %17 = icmp eq %struct.rtx_def* %15, %16
  br i1 %17, label %18, label %42

; <label>:18:                                     ; preds = %14, %1
  %19 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %20 = icmp ne %struct.rtx_def* %19, null
  %21 = select i1 %20, i32 3, i32 0
  store i32 %21, i32* %6, align 4
  %22 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %22, %struct.rtx_def** %7, align 8
  br label %23

; <label>:23:                                     ; preds = %35, %18
  %24 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %25 = icmp ne %struct.rtx_def* %24, null
  br i1 %25, label %26, label %41

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %27, 255
  %32 = shl i32 %31, 16
  %33 = and i32 %30, -16711681
  %34 = or i32 %33, %32
  store i32 %34, i32* %29, align 8
  br label %35

; <label>:35:                                     ; preds = %26
  %36 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %37, i64 0, i64 2
  %39 = bitcast %union.rtunion_def* %38 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %7, align 8
  br label %23

; <label>:41:                                     ; preds = %23
  br label %264

; <label>:42:                                     ; preds = %14
  %43 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %44, i64 0, i64 0
  %46 = bitcast %union.rtunion_def* %45 to i32*
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp sge i32 %48, 8
  br i1 %49, label %50, label %53

; <label>:50:                                     ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = icmp sle i32 %51, 15
  br i1 %52, label %71, label %53

; <label>:53:                                     ; preds = %50, %42
  %54 = load i32, i32* %3, align 4
  %55 = icmp sge i32 %54, 21
  br i1 %55, label %56, label %59

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = icmp sle i32 %57, 28
  br i1 %58, label %71, label %59

; <label>:59:                                     ; preds = %56, %53
  %60 = load i32, i32* %3, align 4
  %61 = icmp sge i32 %60, 45
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %3, align 4
  %64 = icmp sle i32 %63, 52
  br i1 %64, label %71, label %65

; <label>:65:                                     ; preds = %62, %59
  %66 = load i32, i32* %3, align 4
  %67 = icmp sge i32 %66, 29
  br i1 %67, label %68, label %94

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %3, align 4
  %70 = icmp sle i32 %69, 36
  br i1 %70, label %71, label %94

; <label>:71:                                     ; preds = %68, %62, %56, %50
  %72 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %74 = load i32, i32* %73, align 8
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %91, label %81

; <label>:81:                                     ; preds = %71
  %82 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %84 = load i32, i32* %83, align 8
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 6
  br label %91

; <label>:91:                                     ; preds = %81, %71
  %92 = phi i1 [ true, %71 ], [ %90, %81 ]
  %93 = select i1 %92, i32 2, i32 1
  br label %143

; <label>:94:                                     ; preds = %68, %65
  %95 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %97 = load i32, i32* %96, align 8
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = icmp eq i32 %99, 18
  br i1 %100, label %101, label %106

; <label>:101:                                    ; preds = %94
  %102 = load i32, i32* @target_flags, align 4
  %103 = and i32 %102, 33554432
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %104, i32 2, i32 3
  br label %141

; <label>:106:                                    ; preds = %94
  %107 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %109 = load i32, i32* %108, align 8
  %110 = lshr i32 %109, 16
  %111 = and i32 %110, 255
  %112 = icmp eq i32 %111, 24
  br i1 %112, label %113, label %118

; <label>:113:                                    ; preds = %106
  %114 = load i32, i32* @target_flags, align 4
  %115 = and i32 %114, 33554432
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %116, i32 4, i32 6
  br label %139

; <label>:118:                                    ; preds = %106
  %119 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %120 = bitcast %struct.rtx_def* %119 to i32*
  %121 = load i32, i32* %120, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i32, i32* @target_flags, align 4
  %129 = and i32 %128, 33554432
  %130 = icmp ne i32 %129, 0
  %131 = select i1 %130, i32 8, i32 4
  %132 = add nsw i32 %127, %131
  %133 = sub nsw i32 %132, 1
  %134 = load i32, i32* @target_flags, align 4
  %135 = and i32 %134, 33554432
  %136 = icmp ne i32 %135, 0
  %137 = select i1 %136, i32 8, i32 4
  %138 = sdiv i32 %133, %137
  br label %139

; <label>:139:                                    ; preds = %118, %113
  %140 = phi i32 [ %117, %113 ], [ %138, %118 ]
  br label %141

; <label>:141:                                    ; preds = %139, %101
  %142 = phi i32 [ %105, %101 ], [ %140, %139 ]
  br label %143

; <label>:143:                                    ; preds = %141, %91
  %144 = phi i32 [ %93, %91 ], [ %142, %141 ]
  store i32 %144, i32* %4, align 4
  %145 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  store %struct.rtx_def* %145, %struct.rtx_def** @flags_set_1_rtx, align 8
  %146 = load i32, i32* @n_basic_blocks, align 4
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %148

; <label>:148:                                    ; preds = %261, %143
  %149 = load i32, i32* %5, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %264

; <label>:151:                                    ; preds = %148
  %152 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %153 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %152, i32 0, i32 4
  %154 = bitcast %union.varray_data_tag* %153 to [1 x %struct.basic_block_def*]*
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %154, i64 0, i64 %156
  %158 = load %struct.basic_block_def*, %struct.basic_block_def** %157, align 8
  %159 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %158, i32 0, i32 0
  %160 = load %struct.rtx_def*, %struct.rtx_def** %159, align 8
  store %struct.rtx_def* %160, %struct.rtx_def** %8, align 8
  %161 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %162 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %161, i32 0, i32 4
  %163 = bitcast %union.varray_data_tag* %162 to [1 x %struct.basic_block_def*]*
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %163, i64 0, i64 %165
  %167 = load %struct.basic_block_def*, %struct.basic_block_def** %166, align 8
  %168 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %167, i32 0, i32 1
  %169 = load %struct.rtx_def*, %struct.rtx_def** %168, align 8
  store %struct.rtx_def* %169, %struct.rtx_def** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %170

; <label>:170:                                    ; preds = %190, %151
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %4, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %193

; <label>:174:                                    ; preds = %170
  %175 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %176 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %175, i32 0, i32 4
  %177 = bitcast %union.varray_data_tag* %176 to [1 x %struct.basic_block_def*]*
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %177, i64 0, i64 %179
  %181 = load %struct.basic_block_def*, %struct.basic_block_def** %180, align 8
  %182 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %181, i32 0, i32 8
  %183 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %182, align 8
  %184 = load i32, i32* %3, align 4
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %184, %185
  %187 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %183, i32 %186)
  %188 = load i32, i32* %10, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %10, align 4
  br label %190

; <label>:190:                                    ; preds = %174
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %11, align 4
  br label %170

; <label>:193:                                    ; preds = %170
  br label %194

; <label>:194:                                    ; preds = %254, %193
  %195 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %196 = bitcast %struct.rtx_def* %195 to i32*
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, 65535
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 105
  br i1 %203, label %204, label %238

; <label>:204:                                    ; preds = %194
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

; <label>:207:                                    ; preds = %204
  %208 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %209 = load i32, i32* %3, align 4
  %210 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %208, i32 1, i32 %209)
  %211 = icmp ne %struct.rtx_def* %210, null
  br i1 %211, label %212, label %213

; <label>:212:                                    ; preds = %207
  store i32 0, i32* %10, align 4
  br label %213

; <label>:213:                                    ; preds = %212, %207, %204
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  %216 = select i1 %215, i32 3, i32 0
  %217 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %218 = bitcast %struct.rtx_def* %217 to i32*
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %216, 255
  %221 = shl i32 %220, 16
  %222 = and i32 %219, -16711681
  %223 = or i32 %222, %221
  store i32 %223, i32* %218, align 8
  store i32 0, i32* @flags_set_1_set, align 4
  %224 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %225 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %226 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %225, i64 0, i64 3
  %227 = bitcast %union.rtunion_def* %226 to %struct.rtx_def**
  %228 = load %struct.rtx_def*, %struct.rtx_def** %227, align 8
  call void @note_stores(%struct.rtx_def* %228, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @flags_set_1, i8* null)
  %229 = load i32, i32* @flags_set_1_set, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

; <label>:231:                                    ; preds = %213
  store i32 1, i32* %10, align 4
  %232 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %233 = bitcast %struct.rtx_def* %232 to i32*
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, -16711681
  %236 = or i32 %235, 131072
  store i32 %236, i32* %233, align 8
  br label %237

; <label>:237:                                    ; preds = %231, %213
  br label %249

; <label>:238:                                    ; preds = %194
  %239 = load i32, i32* %10, align 4
  %240 = icmp ne i32 %239, 0
  %241 = select i1 %240, i32 3, i32 0
  %242 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %243 = bitcast %struct.rtx_def* %242 to i32*
  %244 = load i32, i32* %243, align 8
  %245 = and i32 %241, 255
  %246 = shl i32 %245, 16
  %247 = and i32 %244, -16711681
  %248 = or i32 %247, %246
  store i32 %248, i32* %243, align 8
  br label %249

; <label>:249:                                    ; preds = %238, %237
  %250 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %251 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %252 = icmp eq %struct.rtx_def* %250, %251
  br i1 %252, label %253, label %254

; <label>:253:                                    ; preds = %249
  br label %260

; <label>:254:                                    ; preds = %249
  %255 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %256 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %255, i32 0, i32 1
  %257 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %256, i64 0, i64 2
  %258 = bitcast %union.rtunion_def* %257 to %struct.rtx_def**
  %259 = load %struct.rtx_def*, %struct.rtx_def** %258, align 8
  store %struct.rtx_def* %259, %struct.rtx_def** %8, align 8
  br label %194

; <label>:260:                                    ; preds = %253
  br label %261

; <label>:261:                                    ; preds = %260
  %262 = load i32, i32* %5, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %5, align 4
  br label %148

; <label>:264:                                    ; preds = %148, %41
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.rtx_def* @discover_flags_reg() #0 {
  %1 = alloca %struct.rtx_def*, align 8
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @word_mode, align 4
  %5 = call %struct.rtx_def* @gen_rtx_REG(i32 %4, i32 10000)
  store %struct.rtx_def* %5, %struct.rtx_def** %2, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %8 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 2)
  %9 = call %struct.rtx_def* @gen_add3_insn(%struct.rtx_def* %6, %struct.rtx_def* %7, %struct.rtx_def* %8)
  store %struct.rtx_def* %9, %struct.rtx_def** %2, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 47
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %0
  store %struct.rtx_def* null, %struct.rtx_def** %1, align 8
  br label %109

; <label>:16:                                     ; preds = %0
  %17 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 39
  br i1 %21, label %22, label %106

; <label>:22:                                     ; preds = %16
  %23 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %24, i64 0, i64 0
  %26 = bitcast %union.rtunion_def* %25 to %struct.rtvec_def**
  %27 = load %struct.rtvec_def*, %struct.rtvec_def** %26, align 8
  %28 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %22
  %32 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 0), align 16
  store %struct.rtx_def* %32, %struct.rtx_def** %1, align 8
  br label %109

; <label>:33:                                     ; preds = %22
  %34 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %35, i64 0, i64 0
  %37 = bitcast %union.rtunion_def* %36 to %struct.rtvec_def**
  %38 = load %struct.rtvec_def*, %struct.rtvec_def** %37, align 8
  %39 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %38, i32 0, i32 1
  %40 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %39, i64 0, i64 1
  %41 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %2, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp ne i32 %45, 49
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %33
  %48 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 0), align 16
  store %struct.rtx_def* %48, %struct.rtx_def** %1, align 8
  br label %109

; <label>:49:                                     ; preds = %33
  %50 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %51, i64 0, i64 0
  %53 = bitcast %union.rtunion_def* %52 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %53, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %2, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 63
  br i1 %59, label %60, label %83

; <label>:60:                                     ; preds = %49
  %61 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %62, i64 0, i64 0
  %64 = bitcast %union.rtunion_def* %63 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %64, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 61
  br i1 %69, label %70, label %83

; <label>:70:                                     ; preds = %60
  %71 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %72, i64 0, i64 0
  %74 = bitcast %union.rtunion_def* %73 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %74, align 8
  %76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %76, i64 0, i64 0
  %78 = bitcast %union.rtunion_def* %77 to i32*
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %79, 53
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %70
  %82 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 0), align 16
  store %struct.rtx_def* %82, %struct.rtx_def** %1, align 8
  br label %109

; <label>:83:                                     ; preds = %70, %60, %49
  %84 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 61
  br i1 %88, label %89, label %96

; <label>:89:                                     ; preds = %83
  %90 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %91, i64 0, i64 0
  %93 = bitcast %union.rtunion_def* %92 to i32*
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %94, 53
  br label %96

; <label>:96:                                     ; preds = %89, %83
  %97 = phi i1 [ false, %83 ], [ %95, %89 ]
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

; <label>:101:                                    ; preds = %96
  %102 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  br label %104

; <label>:103:                                    ; preds = %96
  br label %104

; <label>:104:                                    ; preds = %103, %101
  %105 = phi %struct.rtx_def* [ %102, %101 ], [ null, %103 ]
  store %struct.rtx_def* %105, %struct.rtx_def** %1, align 8
  br label %109

; <label>:106:                                    ; preds = %16
  br label %107

; <label>:107:                                    ; preds = %106
  %108 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 0), align 16
  store %struct.rtx_def* %108, %struct.rtx_def** %1, align 8
  br label %109

; <label>:109:                                    ; preds = %107, %104, %81, %47, %31, %15
  %110 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  ret %struct.rtx_def* %110
}

declare noalias i8* @xmalloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct.rtx_def* @get_last_insn() #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @optimize_reg_copy_3(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #0 {
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtx_def*, align 8
  %11 = alloca %struct.rtx_def*, align 8
  %12 = alloca %struct.rtx_def*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %4, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %6, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %16, i64 0, i64 0
  %18 = bitcast %union.rtunion_def* %17 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %7, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %21, i64 0, i64 0
  %23 = bitcast %union.rtunion_def* %22 to i32*
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %26, i64 0, i64 0
  %28 = bitcast %union.rtunion_def* %27 to i32*
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 53
  br i1 %31, label %62, label %32

; <label>:32:                                     ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 53
  br i1 %34, label %62, label %35

; <label>:35:                                     ; preds = %32
  %36 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %38 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %36, i32 1, %struct.rtx_def* %37)
  %39 = icmp ne %struct.rtx_def* %38, null
  br i1 %39, label %40, label %62

; <label>:40:                                     ; preds = %35
  %41 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %42 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %41, i32 0, i32 4
  %43 = bitcast %union.varray_data_tag* %42 to [1 x %struct.reg_info_def*]*
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %43, i64 0, i64 %45
  %47 = load %struct.reg_info_def*, %struct.reg_info_def** %46, align 8
  %48 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %62, label %51

; <label>:51:                                     ; preds = %40
  %52 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %53 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %52, i32 0, i32 4
  %54 = bitcast %union.varray_data_tag* %53 to [1 x %struct.reg_info_def*]*
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %54, i64 0, i64 %56
  %58 = load %struct.reg_info_def*, %struct.reg_info_def** %57, align 8
  %59 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %51, %40, %35, %32, %3
  br label %283

; <label>:63:                                     ; preds = %51
  %64 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %65, i64 0, i64 1
  %67 = bitcast %union.rtunion_def* %66 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %67, align 8
  store %struct.rtx_def* %68, %struct.rtx_def** %10, align 8
  br label %69

; <label>:69:                                     ; preds = %86, %63
  %70 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %71 = icmp ne %struct.rtx_def* %70, null
  br i1 %71, label %72, label %78

; <label>:72:                                     ; preds = %69
  %73 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %75 = call i32 @reg_set_p(%struct.rtx_def* %73, %struct.rtx_def* %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

; <label>:78:                                     ; preds = %72, %69
  %79 = phi i1 [ false, %69 ], [ %77, %72 ]
  br i1 %79, label %80, label %92

; <label>:80:                                     ; preds = %78
  %81 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %82 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %80
  br label %92

; <label>:85:                                     ; preds = %80
  br label %86

; <label>:86:                                     ; preds = %85
  %87 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %88, i64 0, i64 1
  %90 = bitcast %union.rtunion_def* %89 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %90, align 8
  store %struct.rtx_def* %91, %struct.rtx_def** %10, align 8
  br label %69

; <label>:92:                                     ; preds = %84, %78
  %93 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %94 = icmp ne %struct.rtx_def* %93, null
  br i1 %94, label %96, label %95

; <label>:95:                                     ; preds = %92
  br label %283

; <label>:96:                                     ; preds = %92
  %97 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 65535
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 105
  br i1 %105, label %106, label %132

; <label>:106:                                    ; preds = %96
  %107 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %108, i64 0, i64 3
  %110 = bitcast %union.rtunion_def* %109 to %struct.rtx_def**
  %111 = load %struct.rtx_def*, %struct.rtx_def** %110, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 47
  br i1 %115, label %116, label %122

; <label>:116:                                    ; preds = %106
  %117 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %118, i64 0, i64 3
  %120 = bitcast %union.rtunion_def* %119 to %struct.rtx_def**
  %121 = load %struct.rtx_def*, %struct.rtx_def** %120, align 8
  br label %130

; <label>:122:                                    ; preds = %106
  %123 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %125, i64 0, i64 3
  %127 = bitcast %union.rtunion_def* %126 to %struct.rtx_def**
  %128 = load %struct.rtx_def*, %struct.rtx_def** %127, align 8
  %129 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %123, %struct.rtx_def* %128)
  br label %130

; <label>:130:                                    ; preds = %122, %116
  %131 = phi %struct.rtx_def* [ %121, %116 ], [ %129, %122 ]
  br label %133

; <label>:132:                                    ; preds = %96
  br label %133

; <label>:133:                                    ; preds = %132, %130
  %134 = phi %struct.rtx_def* [ %131, %130 ], [ null, %132 ]
  store %struct.rtx_def* %134, %struct.rtx_def** %11, align 8
  %135 = icmp ne %struct.rtx_def* %134, null
  br i1 %135, label %136, label %158

; <label>:136:                                    ; preds = %133
  %137 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %138, i64 0, i64 1
  %140 = bitcast %union.rtunion_def* %139 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %140, align 8
  %142 = bitcast %struct.rtx_def* %141 to i32*
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, 65535
  %145 = icmp ne i32 %144, 66
  br i1 %145, label %158, label %146

; <label>:146:                                    ; preds = %136
  %147 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %148 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %147, i32 3, %struct.rtx_def* null)
  %149 = icmp ne %struct.rtx_def* %148, null
  br i1 %149, label %158, label %150

; <label>:150:                                    ; preds = %146
  %151 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %151, i32 0, i32 1
  %153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %152, i64 0, i64 0
  %154 = bitcast %union.rtunion_def* %153 to %struct.rtx_def**
  %155 = load %struct.rtx_def*, %struct.rtx_def** %154, align 8
  %156 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %157 = icmp ne %struct.rtx_def* %155, %156
  br i1 %157, label %158, label %159

; <label>:158:                                    ; preds = %150, %146, %136, %133
  br label %283

; <label>:159:                                    ; preds = %150
  %160 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %161, i64 0, i64 1
  %163 = bitcast %union.rtunion_def* %162 to %struct.rtx_def**
  %164 = load %struct.rtx_def*, %struct.rtx_def** %163, align 8
  %165 = bitcast %struct.rtx_def* %164 to i32*
  %166 = load i32, i32* %165, align 8
  %167 = lshr i32 %166, 27
  %168 = and i32 %167, 1
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

; <label>:170:                                    ; preds = %159
  br label %283

; <label>:171:                                    ; preds = %159
  %172 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %174 = load i32, i32* %173, align 8
  %175 = lshr i32 %174, 16
  %176 = and i32 %175, 255
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %177
  %179 = load i16, i16* %178, align 2
  %180 = zext i16 %179 to i32
  %181 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %182 = bitcast %struct.rtx_def* %181 to i32*
  %183 = load i32, i32* %182, align 8
  %184 = lshr i32 %183, 16
  %185 = and i32 %184, 255
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %186
  %188 = load i16, i16* %187, align 2
  %189 = zext i16 %188 to i32
  %190 = icmp sle i32 %180, %189
  br i1 %190, label %191, label %193

; <label>:191:                                    ; preds = %171
  br i1 true, label %193, label %192

; <label>:192:                                    ; preds = %191
  br label %283

; <label>:193:                                    ; preds = %191, %171
  %194 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %195 = bitcast %struct.rtx_def* %194 to i32*
  %196 = load i32, i32* %195, align 8
  %197 = lshr i32 %196, 16
  %198 = and i32 %197, 255
  store i32 %198, i32* %13, align 4
  %199 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %200 = bitcast %struct.rtx_def* %199 to i32*
  %201 = load i32, i32* %200, align 8
  %202 = lshr i32 %201, 16
  %203 = and i32 %202, 255
  %204 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %205 = bitcast %struct.rtx_def* %204 to i32*
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %203, 255
  %208 = shl i32 %207, 16
  %209 = and i32 %206, -16711681
  %210 = or i32 %209, %208
  store i32 %210, i32* %205, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %212, i64 0, i64 1
  %214 = bitcast %union.rtunion_def* %213 to %struct.rtx_def**
  %215 = load %struct.rtx_def*, %struct.rtx_def** %214, align 8
  %216 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %217, i64 0, i64 0
  %219 = bitcast %union.rtunion_def* %218 to %struct.rtx_def**
  store %struct.rtx_def* %215, %struct.rtx_def** %219, align 8
  %220 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %221 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %222 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %221, i32 0, i32 1
  %223 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %222, i64 0, i64 1
  %224 = bitcast %union.rtunion_def* %223 to %struct.rtx_def**
  %225 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %226 = call i32 @validate_change(%struct.rtx_def* %220, %struct.rtx_def** %224, %struct.rtx_def* %225, i32 1)
  %227 = load i32, i32* %13, align 4
  %228 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %229 = call %struct.rtx_def* @gen_lowpart_SUBREG(i32 %227, %struct.rtx_def* %228)
  store %struct.rtx_def* %229, %struct.rtx_def** %12, align 8
  br label %230

; <label>:230:                                    ; preds = %250, %249, %193
  %231 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %231, i32 0, i32 1
  %233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %232, i64 0, i64 2
  %234 = bitcast %union.rtunion_def* %233 to %struct.rtx_def**
  %235 = load %struct.rtx_def*, %struct.rtx_def** %234, align 8
  store %struct.rtx_def* %235, %struct.rtx_def** %10, align 8
  %236 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %237 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %238 = icmp ne %struct.rtx_def* %236, %237
  br i1 %238, label %239, label %254

; <label>:239:                                    ; preds = %230
  %240 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %241 = bitcast %struct.rtx_def* %240 to i32*
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, 65535
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 105
  br i1 %248, label %250, label %249

; <label>:249:                                    ; preds = %239
  br label %230

; <label>:250:                                    ; preds = %239
  %251 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %252 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %253 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  call void @validate_replace_rtx_group(%struct.rtx_def* %251, %struct.rtx_def* %252, %struct.rtx_def* %253)
  br label %230

; <label>:254:                                    ; preds = %230
  %255 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %256 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %257 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  call void @validate_replace_rtx_group(%struct.rtx_def* %255, %struct.rtx_def* %256, %struct.rtx_def* %257)
  %258 = call i32 @apply_change_group()
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %274, label %260

; <label>:260:                                    ; preds = %254
  %261 = load i32, i32* %13, align 4
  %262 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %263 = bitcast %struct.rtx_def* %262 to i32*
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %261, 255
  %266 = shl i32 %265, 16
  %267 = and i32 %264, -16711681
  %268 = or i32 %267, %266
  store i32 %268, i32* %263, align 8
  %269 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %270 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %271 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %270, i32 0, i32 1
  %272 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %271, i64 0, i64 0
  %273 = bitcast %union.rtunion_def* %272 to %struct.rtx_def**
  store %struct.rtx_def* %269, %struct.rtx_def** %273, align 8
  br label %283

; <label>:274:                                    ; preds = %254
  %275 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %276 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %275, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %276, %struct.rtx_def** %14, align 8
  %277 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %278 = icmp ne %struct.rtx_def* %277, null
  br i1 %278, label %279, label %282

; <label>:279:                                    ; preds = %274
  %280 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %281 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  call void @remove_note(%struct.rtx_def* %280, %struct.rtx_def* %281)
  br label %282

; <label>:282:                                    ; preds = %279, %274
  br label %283

; <label>:283:                                    ; preds = %282, %260, %192, %170, %158, %95, %62
  ret void
}

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @optimize_reg_copy_1(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca %struct.rtx_def*, align 8
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca %struct.rtx_def*, align 8
  %11 = alloca %struct.rtx_def*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %6, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %7, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %11, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %20, i64 0, i64 0
  %22 = bitcast %union.rtunion_def* %21 to i32*
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %25, i64 0, i64 0
  %27 = bitcast %union.rtunion_def* %26 to i32*
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %44, label %32

; <label>:32:                                     ; preds = %3
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 53
  br i1 %34, label %44, label %35

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 53
  br i1 %37, label %44, label %38

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41, %38, %35, %32, %3
  store i32 0, i32* %4, align 4
  br label %415

; <label>:45:                                     ; preds = %41
  %46 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %47, i64 0, i64 2
  %49 = bitcast %union.rtunion_def* %48 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %49, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %8, align 8
  br label %51

; <label>:51:                                     ; preds = %408, %45
  %52 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %53 = icmp ne %struct.rtx_def* %52, null
  br i1 %53, label %54, label %414

; <label>:54:                                     ; preds = %51
  %55 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %56 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %54
  br label %414

; <label>:59:                                     ; preds = %54
  %60 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 65535
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 105
  br i1 %68, label %70, label %69

; <label>:69:                                     ; preds = %59
  br label %408

; <label>:70:                                     ; preds = %59
  br label %71

; <label>:71:                                     ; preds = %70
  %72 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %74 = call i32 @reg_set_p(%struct.rtx_def* %72, %struct.rtx_def* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %104, label %76

; <label>:76:                                     ; preds = %71
  %77 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %79 = call i32 @reg_set_p(%struct.rtx_def* %77, %struct.rtx_def* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %104, label %81

; <label>:81:                                     ; preds = %76
  %82 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %83, i64 0, i64 3
  %85 = bitcast %union.rtunion_def* %84 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %85, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 48
  br i1 %90, label %91, label %105

; <label>:91:                                     ; preds = %81
  %92 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %94, i64 0, i64 3
  %96 = bitcast %union.rtunion_def* %95 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %96, align 8
  %98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %98, i64 0, i64 0
  %100 = bitcast %union.rtunion_def* %99 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %100, align 8
  %102 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %92, %struct.rtx_def* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

; <label>:104:                                    ; preds = %91, %76, %71
  br label %414

; <label>:105:                                    ; preds = %91, %81
  %106 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %106, i32 1, i32 %107)
  store %struct.rtx_def* %108, %struct.rtx_def** %10, align 8
  %109 = icmp ne %struct.rtx_def* %108, null
  br i1 %109, label %110, label %397

; <label>:110:                                    ; preds = %105
  %111 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %112, i64 0, i64 0
  %114 = bitcast %union.rtunion_def* %113 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %114, align 8
  %116 = bitcast %struct.rtx_def* %115 to i32*
  %117 = load i32, i32* %116, align 8
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  %120 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %122 = load i32, i32* %121, align 8
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  %125 = icmp eq i32 %119, %124
  br i1 %125, label %126, label %397

; <label>:126:                                    ; preds = %110
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %127 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %128 = call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %127)
  store %struct.rtx_def* %128, %struct.rtx_def** %9, align 8
  br label %129

; <label>:129:                                    ; preds = %239, %126
  %130 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %132 = call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %131)
  %133 = icmp ne %struct.rtx_def* %130, %132
  br i1 %133, label %134, label %242

; <label>:134:                                    ; preds = %129
  %135 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %137, i64 0, i64 3
  %139 = bitcast %union.rtunion_def* %138 to %struct.rtx_def**
  %140 = load %struct.rtx_def*, %struct.rtx_def** %139, align 8
  %141 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %135, %struct.rtx_def* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %182

; <label>:143:                                    ; preds = %134
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %144, 53
  br i1 %145, label %146, label %156

; <label>:146:                                    ; preds = %143
  %147 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %149, i64 0, i64 3
  %151 = bitcast %union.rtunion_def* %150 to %struct.rtx_def**
  %152 = load %struct.rtx_def*, %struct.rtx_def** %151, align 8
  %153 = call i32 @reg_mentioned_p(%struct.rtx_def* %147, %struct.rtx_def* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

; <label>:155:                                    ; preds = %146
  store i32 1, i32* %14, align 4
  br label %181

; <label>:156:                                    ; preds = %146, %143
  %157 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %158 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %159 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %160 = call i32 @validate_replace_rtx(%struct.rtx_def* %157, %struct.rtx_def* %158, %struct.rtx_def* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %175

; <label>:162:                                    ; preds = %156
  %163 = load i32, i32* %12, align 4
  %164 = icmp sge i32 %163, 53
  br i1 %164, label %174, label %165

; <label>:165:                                    ; preds = %162
  %166 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %167 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %168, i64 0, i64 3
  %170 = bitcast %union.rtunion_def* %169 to %struct.rtx_def**
  %171 = load %struct.rtx_def*, %struct.rtx_def** %170, align 8
  %172 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %166, %struct.rtx_def* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

; <label>:174:                                    ; preds = %165, %162
  br label %180

; <label>:175:                                    ; preds = %165, %156
  %176 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %177 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %179 = call i32 @validate_replace_rtx(%struct.rtx_def* %176, %struct.rtx_def* %177, %struct.rtx_def* %178)
  store i32 1, i32* %14, align 4
  br label %180

; <label>:180:                                    ; preds = %175, %174
  br label %181

; <label>:181:                                    ; preds = %180, %155
  br label %182

; <label>:182:                                    ; preds = %181, %134
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %16, align 4
  %185 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %186 = icmp ne %struct.rtx_def* %185, null
  br i1 %186, label %187, label %190

; <label>:187:                                    ; preds = %182
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  br label %190

; <label>:190:                                    ; preds = %187, %182
  %191 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %192 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %193 = icmp ne %struct.rtx_def* %191, %192
  br i1 %193, label %194, label %209

; <label>:194:                                    ; preds = %190
  %195 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %196 = bitcast %struct.rtx_def* %195 to i32*
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 34
  br i1 %199, label %200, label %209

; <label>:200:                                    ; preds = %194
  %201 = load i32, i32* %18, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %18, align 4
  %203 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %204 = icmp ne %struct.rtx_def* %203, null
  br i1 %204, label %205, label %208

; <label>:205:                                    ; preds = %200
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %17, align 4
  br label %208

; <label>:208:                                    ; preds = %205, %200
  br label %209

; <label>:209:                                    ; preds = %208, %194, %190
  %210 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %211 = icmp eq %struct.rtx_def* %210, null
  br i1 %211, label %212, label %238

; <label>:212:                                    ; preds = %209
  %213 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %213, i32 1, i32 %214)
  store %struct.rtx_def* %215, %struct.rtx_def** %11, align 8
  %216 = icmp ne %struct.rtx_def* %215, null
  br i1 %216, label %217, label %238

; <label>:217:                                    ; preds = %212
  %218 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %219, i64 0, i64 0
  %221 = bitcast %union.rtunion_def* %220 to %struct.rtx_def**
  %222 = load %struct.rtx_def*, %struct.rtx_def** %221, align 8
  %223 = bitcast %struct.rtx_def* %222 to i32*
  %224 = load i32, i32* %223, align 8
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  %227 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %228 = bitcast %struct.rtx_def* %227 to i32*
  %229 = load i32, i32* %228, align 8
  %230 = lshr i32 %229, 16
  %231 = and i32 %230, 255
  %232 = icmp ne i32 %226, %231
  br i1 %232, label %233, label %234

; <label>:233:                                    ; preds = %217
  store i32 1, i32* %14, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %11, align 8
  br label %237

; <label>:234:                                    ; preds = %217
  %235 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %236 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  call void @remove_note(%struct.rtx_def* %235, %struct.rtx_def* %236)
  br label %237

; <label>:237:                                    ; preds = %234, %233
  br label %238

; <label>:238:                                    ; preds = %237, %212, %209
  br label %239

; <label>:239:                                    ; preds = %238
  %240 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %241 = call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %240)
  store %struct.rtx_def* %241, %struct.rtx_def** %9, align 8
  br label %129

; <label>:242:                                    ; preds = %129
  %243 = load i32, i32* %14, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %320, label %245

; <label>:245:                                    ; preds = %242
  %246 = load i32, i32* %12, align 4
  %247 = icmp sge i32 %246, 53
  br i1 %247, label %248, label %303

; <label>:248:                                    ; preds = %245
  %249 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %250 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %249, i32 0, i32 4
  %251 = bitcast %union.varray_data_tag* %250 to [1 x %struct.reg_info_def*]*
  %252 = load i32, i32* %12, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %251, i64 0, i64 %253
  %255 = load %struct.reg_info_def*, %struct.reg_info_def** %254, align 8
  %256 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  %258 = icmp sge i32 %257, 0
  br i1 %258, label %259, label %291

; <label>:259:                                    ; preds = %248
  %260 = load i32, i32* %16, align 4
  %261 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %262 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %261, i32 0, i32 4
  %263 = bitcast %union.varray_data_tag* %262 to [1 x %struct.reg_info_def*]*
  %264 = load i32, i32* %12, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %263, i64 0, i64 %265
  %267 = load %struct.reg_info_def*, %struct.reg_info_def** %266, align 8
  %268 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %269, %260
  store i32 %270, i32* %268, align 4
  %271 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %272 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %271, i32 0, i32 4
  %273 = bitcast %union.varray_data_tag* %272 to [1 x %struct.reg_info_def*]*
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %273, i64 0, i64 %275
  %277 = load %struct.reg_info_def*, %struct.reg_info_def** %276, align 8
  %278 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = icmp slt i32 %279, 2
  br i1 %280, label %281, label %290

; <label>:281:                                    ; preds = %259
  %282 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %283 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %282, i32 0, i32 4
  %284 = bitcast %union.varray_data_tag* %283 to [1 x %struct.reg_info_def*]*
  %285 = load i32, i32* %12, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %284, i64 0, i64 %286
  %288 = load %struct.reg_info_def*, %struct.reg_info_def** %287, align 8
  %289 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %288, i32 0, i32 7
  store i32 2, i32* %289, align 4
  br label %290

; <label>:290:                                    ; preds = %281, %259
  br label %291

; <label>:291:                                    ; preds = %290, %248
  %292 = load i32, i32* %18, align 4
  %293 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %294 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %293, i32 0, i32 4
  %295 = bitcast %union.varray_data_tag* %294 to [1 x %struct.reg_info_def*]*
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %295, i64 0, i64 %297
  %299 = load %struct.reg_info_def*, %struct.reg_info_def** %298, align 8
  %300 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %299, i32 0, i32 8
  %301 = load i32, i32* %300, align 4
  %302 = sub nsw i32 %301, %292
  store i32 %302, i32* %300, align 4
  br label %303

; <label>:303:                                    ; preds = %291, %245
  %304 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %305 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  call void @remove_note(%struct.rtx_def* %304, %struct.rtx_def* %305)
  %306 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %307 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %306, i32 0, i32 1
  %308 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %307, i64 0, i64 6
  %309 = bitcast %union.rtunion_def* %308 to %struct.rtx_def**
  %310 = load %struct.rtx_def*, %struct.rtx_def** %309, align 8
  %311 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %312 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %311, i32 0, i32 1
  %313 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %312, i64 0, i64 1
  %314 = bitcast %union.rtunion_def* %313 to %struct.rtx_def**
  store %struct.rtx_def* %310, %struct.rtx_def** %314, align 8
  %315 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %316 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %316, i32 0, i32 1
  %318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %317, i64 0, i64 6
  %319 = bitcast %union.rtunion_def* %318 to %struct.rtx_def**
  store %struct.rtx_def* %315, %struct.rtx_def** %319, align 8
  br label %320

; <label>:320:                                    ; preds = %303, %242
  %321 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %322 = icmp ne %struct.rtx_def* %321, null
  br i1 %322, label %336, label %323

; <label>:323:                                    ; preds = %320
  %324 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %325 = load i32, i32* %13, align 4
  %326 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %324, i32 10, i32 %325)
  store %struct.rtx_def* %326, %struct.rtx_def** %11, align 8
  %327 = icmp ne %struct.rtx_def* %326, null
  br i1 %327, label %328, label %336

; <label>:328:                                    ; preds = %323
  %329 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %330 = bitcast %struct.rtx_def* %329 to i32*
  %331 = load i32, i32* %330, align 8
  %332 = and i32 %331, -16711681
  %333 = or i32 %332, 65536
  store i32 %333, i32* %330, align 8
  %334 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %335 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  call void @remove_note(%struct.rtx_def* %334, %struct.rtx_def* %335)
  br label %336

; <label>:336:                                    ; preds = %328, %323, %320
  %337 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %338 = icmp ne %struct.rtx_def* %337, null
  br i1 %338, label %339, label %392

; <label>:339:                                    ; preds = %336
  %340 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %341 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %340, i32 0, i32 1
  %342 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %341, i64 0, i64 6
  %343 = bitcast %union.rtunion_def* %342 to %struct.rtx_def**
  %344 = load %struct.rtx_def*, %struct.rtx_def** %343, align 8
  %345 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %346 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %345, i32 0, i32 1
  %347 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %346, i64 0, i64 1
  %348 = bitcast %union.rtunion_def* %347 to %struct.rtx_def**
  store %struct.rtx_def* %344, %struct.rtx_def** %348, align 8
  %349 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %350 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %351 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %350, i32 0, i32 1
  %352 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %351, i64 0, i64 6
  %353 = bitcast %union.rtunion_def* %352 to %struct.rtx_def**
  store %struct.rtx_def* %349, %struct.rtx_def** %353, align 8
  %354 = load i32, i32* %13, align 4
  %355 = icmp sge i32 %354, 53
  br i1 %355, label %356, label %391

; <label>:356:                                    ; preds = %339
  %357 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %358 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %357, i32 0, i32 4
  %359 = bitcast %union.varray_data_tag* %358 to [1 x %struct.reg_info_def*]*
  %360 = load i32, i32* %13, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %359, i64 0, i64 %361
  %363 = load %struct.reg_info_def*, %struct.reg_info_def** %362, align 8
  %364 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 4
  %366 = icmp sge i32 %365, 0
  br i1 %366, label %367, label %379

; <label>:367:                                    ; preds = %356
  %368 = load i32, i32* %15, align 4
  %369 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %370 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %369, i32 0, i32 4
  %371 = bitcast %union.varray_data_tag* %370 to [1 x %struct.reg_info_def*]*
  %372 = load i32, i32* %13, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %371, i64 0, i64 %373
  %375 = load %struct.reg_info_def*, %struct.reg_info_def** %374, align 8
  %376 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %375, i32 0, i32 7
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %377, %368
  store i32 %378, i32* %376, align 4
  br label %379

; <label>:379:                                    ; preds = %367, %356
  %380 = load i32, i32* %17, align 4
  %381 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %382 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %381, i32 0, i32 4
  %383 = bitcast %union.varray_data_tag* %382 to [1 x %struct.reg_info_def*]*
  %384 = load i32, i32* %13, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %383, i64 0, i64 %385
  %387 = load %struct.reg_info_def*, %struct.reg_info_def** %386, align 8
  %388 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %387, i32 0, i32 8
  %389 = load i32, i32* %388, align 4
  %390 = add nsw i32 %389, %380
  store i32 %390, i32* %388, align 4
  br label %391

; <label>:391:                                    ; preds = %379, %339
  br label %392

; <label>:392:                                    ; preds = %391, %336
  %393 = load i32, i32* %14, align 4
  %394 = icmp ne i32 %393, 0
  %395 = xor i1 %394, true
  %396 = zext i1 %395 to i32
  store i32 %396, i32* %4, align 4
  br label %415

; <label>:397:                                    ; preds = %110, %105
  %398 = load i32, i32* %12, align 4
  %399 = icmp slt i32 %398, 53
  br i1 %399, label %400, label %406

; <label>:400:                                    ; preds = %397
  %401 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %402 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %403 = call i32 @dead_or_set_p(%struct.rtx_def* %401, %struct.rtx_def* %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %406

; <label>:405:                                    ; preds = %400
  br label %414

; <label>:406:                                    ; preds = %400, %397
  br label %407

; <label>:407:                                    ; preds = %406
  br label %408

; <label>:408:                                    ; preds = %407, %69
  %409 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %409, i32 0, i32 1
  %411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %410, i64 0, i64 2
  %412 = bitcast %union.rtunion_def* %411 to %struct.rtx_def**
  %413 = load %struct.rtx_def*, %struct.rtx_def** %412, align 8
  store %struct.rtx_def* %413, %struct.rtx_def** %8, align 8
  br label %51

; <label>:414:                                    ; preds = %405, %104, %58, %51
  store i32 0, i32* %4, align 4
  br label %415

; <label>:415:                                    ; preds = %414, %392, %44
  %416 = load i32, i32* %4, align 4
  ret i32 %416
}

; Function Attrs: noinline nounwind uwtable
define internal void @optimize_reg_copy_2(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #0 {
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca %struct.rtx_def*, align 8
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %4, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %6, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %13, i64 0, i64 0
  %15 = bitcast %union.rtunion_def* %14 to i32*
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %18, i64 0, i64 0
  %20 = bitcast %union.rtunion_def* %19 to i32*
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %23, i64 0, i64 2
  %25 = bitcast %union.rtunion_def* %24 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %25, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %7, align 8
  br label %27

; <label>:27:                                     ; preds = %244, %3
  %28 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %29 = icmp ne %struct.rtx_def* %28, null
  br i1 %29, label %30, label %250

; <label>:30:                                     ; preds = %27
  %31 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %32 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  br label %250

; <label>:35:                                     ; preds = %30
  %36 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 65535
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 105
  br i1 %44, label %46, label %45

; <label>:45:                                     ; preds = %35
  br label %244

; <label>:46:                                     ; preds = %35
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 65535
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 105
  br i1 %56, label %57, label %83

; <label>:57:                                     ; preds = %47
  %58 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %59, i64 0, i64 3
  %61 = bitcast %union.rtunion_def* %60 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %61, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 47
  br i1 %66, label %67, label %73

; <label>:67:                                     ; preds = %57
  %68 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %69, i64 0, i64 3
  %71 = bitcast %union.rtunion_def* %70 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %71, align 8
  br label %81

; <label>:73:                                     ; preds = %57
  %74 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %76, i64 0, i64 3
  %78 = bitcast %union.rtunion_def* %77 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %78, align 8
  %80 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %74, %struct.rtx_def* %79)
  br label %81

; <label>:81:                                     ; preds = %73, %67
  %82 = phi %struct.rtx_def* [ %72, %67 ], [ %80, %73 ]
  br label %84

; <label>:83:                                     ; preds = %47
  br label %84

; <label>:84:                                     ; preds = %83, %81
  %85 = phi %struct.rtx_def* [ %82, %81 ], [ null, %83 ]
  store %struct.rtx_def* %85, %struct.rtx_def** %9, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %87 = icmp ne %struct.rtx_def* %86, null
  br i1 %87, label %88, label %215

; <label>:88:                                     ; preds = %84
  %89 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %90, i64 0, i64 1
  %92 = bitcast %union.rtunion_def* %91 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %92, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %95 = icmp eq %struct.rtx_def* %93, %94
  br i1 %95, label %96, label %215

; <label>:96:                                     ; preds = %88
  %97 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %98, i64 0, i64 0
  %100 = bitcast %union.rtunion_def* %99 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %100, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %103 = icmp eq %struct.rtx_def* %101, %102
  br i1 %103, label %104, label %215

; <label>:104:                                    ; preds = %96
  %105 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %107 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %105, i32 1, %struct.rtx_def* %106)
  %108 = icmp ne %struct.rtx_def* %107, null
  br i1 %108, label %109, label %215

; <label>:109:                                    ; preds = %104
  %110 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  store %struct.rtx_def* %110, %struct.rtx_def** %8, align 8
  br label %111

; <label>:111:                                    ; preds = %180, %109
  %112 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %114, i64 0, i64 2
  %116 = bitcast %union.rtunion_def* %115 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %116, align 8
  %118 = icmp ne %struct.rtx_def* %112, %117
  br i1 %118, label %119, label %186

; <label>:119:                                    ; preds = %111
  %120 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, 65535
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 105
  br i1 %128, label %129, label %179

; <label>:129:                                    ; preds = %119
  %130 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %132, i64 0, i64 3
  %134 = bitcast %union.rtunion_def* %133 to %struct.rtx_def**
  %135 = load %struct.rtx_def*, %struct.rtx_def** %134, align 8
  %136 = call i32 @reg_mentioned_p(%struct.rtx_def* %130, %struct.rtx_def* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

; <label>:138:                                    ; preds = %129
  %139 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %140, i64 0, i64 3
  %142 = bitcast %union.rtunion_def* %141 to %struct.rtx_def**
  %143 = load %struct.rtx_def*, %struct.rtx_def** %142, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %146 = call %struct.rtx_def* @replace_rtx(%struct.rtx_def* %143, %struct.rtx_def* %144, %struct.rtx_def* %145)
  %147 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %148, i64 0, i64 3
  %150 = bitcast %union.rtunion_def* %149 to %struct.rtx_def**
  store %struct.rtx_def* %146, %struct.rtx_def** %150, align 8
  br label %151

; <label>:151:                                    ; preds = %138, %129
  %152 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, 65535
  %156 = icmp eq i32 %155, 34
  br i1 %156, label %157, label %178

; <label>:157:                                    ; preds = %151
  %158 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %159 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %158, i32 0, i32 4
  %160 = bitcast %union.varray_data_tag* %159 to [1 x %struct.reg_info_def*]*
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %160, i64 0, i64 %162
  %164 = load %struct.reg_info_def*, %struct.reg_info_def** %163, align 8
  %165 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %169 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %168, i32 0, i32 4
  %170 = bitcast %union.varray_data_tag* %169 to [1 x %struct.reg_info_def*]*
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %170, i64 0, i64 %172
  %174 = load %struct.reg_info_def*, %struct.reg_info_def** %173, align 8
  %175 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

; <label>:178:                                    ; preds = %157, %151
  br label %179

; <label>:179:                                    ; preds = %178, %119
  br label %180

; <label>:180:                                    ; preds = %179
  %181 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %182, i64 0, i64 2
  %184 = bitcast %union.rtunion_def* %183 to %struct.rtx_def**
  %185 = load %struct.rtx_def*, %struct.rtx_def** %184, align 8
  store %struct.rtx_def* %185, %struct.rtx_def** %8, align 8
  br label %111

; <label>:186:                                    ; preds = %111
  %187 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %188 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %189 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %190 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %188, i32 1, %struct.rtx_def* %189)
  call void @remove_note(%struct.rtx_def* %187, %struct.rtx_def* %190)
  %191 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %192 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %191, i32 0, i32 4
  %193 = bitcast %union.varray_data_tag* %192 to [1 x %struct.reg_info_def*]*
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %193, i64 0, i64 %195
  %197 = load %struct.reg_info_def*, %struct.reg_info_def** %196, align 8
  %198 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %198, align 4
  %201 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %203 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %204 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %202, i32 1, %struct.rtx_def* %203)
  call void @remove_note(%struct.rtx_def* %201, %struct.rtx_def* %204)
  %205 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %206 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %205, i32 0, i32 4
  %207 = bitcast %union.varray_data_tag* %206 to [1 x %struct.reg_info_def*]*
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %207, i64 0, i64 %209
  %211 = load %struct.reg_info_def*, %struct.reg_info_def** %210, align 8
  %212 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %212, align 4
  br label %250

; <label>:215:                                    ; preds = %104, %96, %88, %84
  %216 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %217 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %218 = call i32 @reg_set_p(%struct.rtx_def* %216, %struct.rtx_def* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %242, label %220

; <label>:220:                                    ; preds = %215
  %221 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %222 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %223 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %221, i32 1, %struct.rtx_def* %222)
  %224 = icmp ne %struct.rtx_def* %223, null
  br i1 %224, label %242, label %225

; <label>:225:                                    ; preds = %220
  %226 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %227 = bitcast %struct.rtx_def* %226 to i32*
  %228 = load i32, i32* %227, align 8
  %229 = and i32 %228, 65535
  %230 = icmp eq i32 %229, 34
  br i1 %230, label %231, label %243

; <label>:231:                                    ; preds = %225
  %232 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %233 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %232, i32 0, i32 4
  %234 = bitcast %union.varray_data_tag* %233 to [1 x %struct.reg_info_def*]*
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %234, i64 0, i64 %236
  %238 = load %struct.reg_info_def*, %struct.reg_info_def** %237, align 8
  %239 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %238, i32 0, i32 8
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %243

; <label>:242:                                    ; preds = %231, %220, %215
  br label %250

; <label>:243:                                    ; preds = %231, %225
  br label %244

; <label>:244:                                    ; preds = %243, %45
  %245 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %246 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %245, i32 0, i32 1
  %247 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %246, i64 0, i64 2
  %248 = bitcast %union.rtunion_def* %247 to %struct.rtx_def**
  %249 = load %struct.rtx_def*, %struct.rtx_def** %248, align 8
  store %struct.rtx_def* %249, %struct.rtx_def** %7, align 8
  br label %27

; <label>:250:                                    ; preds = %242, %186, %34, %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @find_matches(%struct.rtx_def*, %struct.match*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct.match*, align 8
  %6 = alloca [30 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %4, align 8
  store %struct.match* %1, %struct.match** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  call void @extract_insn(%struct.rtx_def* %15)
  %16 = call i32 @constrain_operands(i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %1350

; <label>:19:                                     ; preds = %2
  %20 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 4
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %7, align 4
  br label %22

; <label>:22:                                     ; preds = %26, %19
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %37

; <label>:26:                                     ; preds = %22
  %27 = load %struct.match*, %struct.match** %5, align 8
  %28 = getelementptr inbounds %struct.match, %struct.match* %27, i32 0, i32 2
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [30 x i32], [30 x i32]* %28, i64 0, i64 %30
  store i32 -1, i32* %31, align 4
  %32 = load %struct.match*, %struct.match** %5, align 8
  %33 = getelementptr inbounds %struct.match, %struct.match* %32, i32 0, i32 0
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [30 x i32], [30 x i32]* %33, i64 0, i64 %35
  store i32 -1, i32* %36, align 4
  br label %22

; <label>:37:                                     ; preds = %22
  store i32 0, i32* %7, align 4
  br label %38

; <label>:38:                                     ; preds = %1345, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 4
  %41 = sext i8 %40 to i32
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %1348

; <label>:43:                                     ; preds = %38
  store i32 0, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [30 x i32], [30 x i32]* %6, i64 0, i64 %49
  store i32 0, i32* %50, align 4
  %51 = load %struct.match*, %struct.match** %5, align 8
  %52 = getelementptr inbounds %struct.match, %struct.match* %51, i32 0, i32 1
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [30 x i32], [30 x i32]* %52, i64 0, i64 %54
  store i32 0, i32* %55, align 4
  %56 = load %struct.match*, %struct.match** %5, align 8
  %57 = getelementptr inbounds %struct.match, %struct.match* %56, i32 0, i32 3
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [30 x i32], [30 x i32]* %57, i64 0, i64 %59
  store i32 0, i32* %60, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 61
  br i1 %64, label %65, label %71

; <label>:65:                                     ; preds = %43
  %66 = load %struct.match*, %struct.match** %5, align 8
  %67 = getelementptr inbounds %struct.match, %struct.match* %66, i32 0, i32 1
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [30 x i32], [30 x i32]* %67, i64 0, i64 %69
  store i32 1, i32* %70, align 4
  br label %83

; <label>:71:                                     ; preds = %43
  %72 = load i8*, i8** %9, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 43
  br i1 %75, label %76, label %82

; <label>:76:                                     ; preds = %71
  %77 = load %struct.match*, %struct.match** %5, align 8
  %78 = getelementptr inbounds %struct.match, %struct.match* %77, i32 0, i32 1
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [30 x i32], [30 x i32]* %78, i64 0, i64 %80
  store i32 2, i32* %81, align 4
  br label %82

; <label>:82:                                     ; preds = %76, %71
  br label %83

; <label>:83:                                     ; preds = %82, %65
  br label %84

; <label>:84:                                     ; preds = %104, %83
  %85 = load i8*, i8** %9, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

; <label>:89:                                     ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @which_alternative, align 4
  %92 = icmp slt i32 %90, %91
  br label %93

; <label>:93:                                     ; preds = %89, %84
  %94 = phi i1 [ false, %84 ], [ %92, %89 ]
  br i1 %94, label %95, label %107

; <label>:95:                                     ; preds = %93
  %96 = load i8*, i8** %9, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 44
  br i1 %99, label %100, label %103

; <label>:100:                                    ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %103

; <label>:103:                                    ; preds = %100, %95
  br label %104

; <label>:104:                                    ; preds = %103
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %9, align 8
  br label %84

; <label>:107:                                    ; preds = %93
  br label %108

; <label>:108:                                    ; preds = %1343, %107
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  %111 = load i8, i8* %109, align 1
  store i8 %111, i8* %10, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

; <label>:114:                                    ; preds = %108
  %115 = load i8, i8* %10, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 44
  br label %118

; <label>:118:                                    ; preds = %114, %108
  %119 = phi i1 [ false, %108 ], [ %117, %114 ]
  br i1 %119, label %120, label %1344

; <label>:120:                                    ; preds = %118
  %121 = load i8, i8* %10, align 1
  %122 = sext i8 %121 to i32
  switch i32 %122, label %1343 [
    i32 61, label %123
    i32 43, label %124
    i32 38, label %125
    i32 37, label %131
    i32 48, label %146
    i32 49, label %146
    i32 50, label %146
    i32 51, label %146
    i32 52, label %146
    i32 53, label %146
    i32 54, label %146
    i32 55, label %146
    i32 56, label %146
    i32 57, label %146
    i32 97, label %190
    i32 98, label %190
    i32 99, label %190
    i32 100, label %190
    i32 101, label %190
    i32 102, label %190
    i32 104, label %190
    i32 106, label %190
    i32 107, label %190
    i32 108, label %190
    i32 112, label %190
    i32 113, label %190
    i32 116, label %190
    i32 117, label %190
    i32 118, label %190
    i32 119, label %190
    i32 120, label %190
    i32 121, label %190
    i32 122, label %190
    i32 65, label %190
    i32 66, label %190
    i32 67, label %190
    i32 68, label %190
    i32 87, label %190
    i32 89, label %190
    i32 90, label %190
  ]

; <label>:123:                                    ; preds = %120
  br label %1343

; <label>:124:                                    ; preds = %120
  br label %1343

; <label>:125:                                    ; preds = %120
  %126 = load %struct.match*, %struct.match** %5, align 8
  %127 = getelementptr inbounds %struct.match, %struct.match* %126, i32 0, i32 3
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [30 x i32], [30 x i32]* %127, i64 0, i64 %129
  store i32 1, i32* %130, align 4
  br label %1343

; <label>:131:                                    ; preds = %120
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  %134 = load %struct.match*, %struct.match** %5, align 8
  %135 = getelementptr inbounds %struct.match, %struct.match* %134, i32 0, i32 2
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [30 x i32], [30 x i32]* %135, i64 0, i64 %137
  store i32 %133, i32* %138, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.match*, %struct.match** %5, align 8
  %141 = getelementptr inbounds %struct.match, %struct.match* %140, i32 0, i32 2
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [30 x i32], [30 x i32]* %141, i64 0, i64 %144
  store i32 %139, i32* %145, align 4
  br label %1343

; <label>:146:                                    ; preds = %120, %120, %120, %120, %120, %120, %120, %120, %120, %120
  %147 = load i8*, i8** %9, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 -1
  %149 = call i64 @strtoul(i8* %148, i8** %12, i32 10) #3
  store i64 %149, i64* %13, align 8
  %150 = load i64, i64* %13, align 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %14, align 4
  %152 = load i8*, i8** %12, align 8
  store i8* %152, i8** %9, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %163

; <label>:156:                                    ; preds = %146
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [30 x i32], [30 x i32]* %6, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

; <label>:162:                                    ; preds = %156
  br label %1343

; <label>:163:                                    ; preds = %156, %146
  %164 = load i32, i32* %14, align 4
  %165 = load %struct.match*, %struct.match** %5, align 8
  %166 = getelementptr inbounds %struct.match, %struct.match* %165, i32 0, i32 0
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [30 x i32], [30 x i32]* %166, i64 0, i64 %168
  store i32 %164, i32* %169, align 4
  store i32 1, i32* %8, align 4
  %170 = load %struct.match*, %struct.match** %5, align 8
  %171 = getelementptr inbounds %struct.match, %struct.match* %170, i32 0, i32 2
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [30 x i32], [30 x i32]* %171, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %189

; <label>:177:                                    ; preds = %163
  %178 = load i32, i32* %14, align 4
  %179 = load %struct.match*, %struct.match** %5, align 8
  %180 = getelementptr inbounds %struct.match, %struct.match* %179, i32 0, i32 0
  %181 = load %struct.match*, %struct.match** %5, align 8
  %182 = getelementptr inbounds %struct.match, %struct.match* %181, i32 0, i32 2
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [30 x i32], [30 x i32]* %182, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [30 x i32], [30 x i32]* %180, i64 0, i64 %187
  store i32 %178, i32* %188, align 4
  br label %189

; <label>:189:                                    ; preds = %177, %163
  br label %1343

; <label>:190:                                    ; preds = %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120
  %191 = load i8, i8* %10, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %192, 114
  br i1 %193, label %194, label %195

; <label>:194:                                    ; preds = %190
  br label %351

; <label>:195:                                    ; preds = %190
  %196 = load i8, i8* %10, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp eq i32 %197, 82
  br i1 %198, label %199, label %200

; <label>:199:                                    ; preds = %195
  br label %349

; <label>:200:                                    ; preds = %195
  %201 = load i8, i8* %10, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 113
  br i1 %203, label %204, label %209

; <label>:204:                                    ; preds = %200
  %205 = load i32, i32* @target_flags, align 4
  %206 = and i32 %205, 33554432
  %207 = icmp ne i32 %206, 0
  %208 = select i1 %207, i32 12, i32 8
  br label %347

; <label>:209:                                    ; preds = %200
  %210 = load i8, i8* %10, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %211, 81
  br i1 %212, label %213, label %214

; <label>:213:                                    ; preds = %209
  br label %345

; <label>:214:                                    ; preds = %209
  %215 = load i8, i8* %10, align 1
  %216 = zext i8 %215 to i32
  %217 = icmp eq i32 %216, 102
  br i1 %217, label %218, label %229

; <label>:218:                                    ; preds = %214
  %219 = load i32, i32* @target_flags, align 4
  %220 = and i32 %219, 1
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %226, label %222

; <label>:222:                                    ; preds = %218
  %223 = load i32, i32* @target_flags, align 4
  %224 = and i32 %223, 32
  %225 = icmp ne i32 %224, 0
  br label %226

; <label>:226:                                    ; preds = %222, %218
  %227 = phi i1 [ true, %218 ], [ %225, %222 ]
  %228 = select i1 %227, i32 15, i32 0
  br label %343

; <label>:229:                                    ; preds = %214
  %230 = load i8, i8* %10, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp eq i32 %231, 116
  br i1 %232, label %233, label %244

; <label>:233:                                    ; preds = %229
  %234 = load i32, i32* @target_flags, align 4
  %235 = and i32 %234, 1
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

; <label>:237:                                    ; preds = %233
  %238 = load i32, i32* @target_flags, align 4
  %239 = and i32 %238, 32
  %240 = icmp ne i32 %239, 0
  br label %241

; <label>:241:                                    ; preds = %237, %233
  %242 = phi i1 [ true, %233 ], [ %240, %237 ]
  %243 = select i1 %242, i32 13, i32 0
  br label %341

; <label>:244:                                    ; preds = %229
  %245 = load i8, i8* %10, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp eq i32 %246, 117
  br i1 %247, label %248, label %259

; <label>:248:                                    ; preds = %244
  %249 = load i32, i32* @target_flags, align 4
  %250 = and i32 %249, 1
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %256, label %252

; <label>:252:                                    ; preds = %248
  %253 = load i32, i32* @target_flags, align 4
  %254 = and i32 %253, 32
  %255 = icmp ne i32 %254, 0
  br label %256

; <label>:256:                                    ; preds = %252, %248
  %257 = phi i1 [ true, %248 ], [ %255, %252 ]
  %258 = select i1 %257, i32 14, i32 0
  br label %339

; <label>:259:                                    ; preds = %244
  %260 = load i8, i8* %10, align 1
  %261 = zext i8 %260 to i32
  %262 = icmp eq i32 %261, 97
  br i1 %262, label %263, label %264

; <label>:263:                                    ; preds = %259
  br label %337

; <label>:264:                                    ; preds = %259
  %265 = load i8, i8* %10, align 1
  %266 = zext i8 %265 to i32
  %267 = icmp eq i32 %266, 98
  br i1 %267, label %268, label %269

; <label>:268:                                    ; preds = %264
  br label %335

; <label>:269:                                    ; preds = %264
  %270 = load i8, i8* %10, align 1
  %271 = zext i8 %270 to i32
  %272 = icmp eq i32 %271, 99
  br i1 %272, label %273, label %274

; <label>:273:                                    ; preds = %269
  br label %333

; <label>:274:                                    ; preds = %269
  %275 = load i8, i8* %10, align 1
  %276 = zext i8 %275 to i32
  %277 = icmp eq i32 %276, 100
  br i1 %277, label %278, label %279

; <label>:278:                                    ; preds = %274
  br label %331

; <label>:279:                                    ; preds = %274
  %280 = load i8, i8* %10, align 1
  %281 = zext i8 %280 to i32
  %282 = icmp eq i32 %281, 120
  br i1 %282, label %283, label %288

; <label>:283:                                    ; preds = %279
  %284 = load i32, i32* @target_flags, align 4
  %285 = and i32 %284, 327680
  %286 = icmp ne i32 %285, 0
  %287 = select i1 %286, i32 16, i32 0
  br label %329

; <label>:288:                                    ; preds = %279
  %289 = load i8, i8* %10, align 1
  %290 = zext i8 %289 to i32
  %291 = icmp eq i32 %290, 89
  br i1 %291, label %292, label %297

; <label>:292:                                    ; preds = %288
  %293 = load i32, i32* @target_flags, align 4
  %294 = and i32 %293, 262144
  %295 = icmp ne i32 %294, 0
  %296 = select i1 %295, i32 16, i32 0
  br label %327

; <label>:297:                                    ; preds = %288
  %298 = load i8, i8* %10, align 1
  %299 = zext i8 %298 to i32
  %300 = icmp eq i32 %299, 121
  br i1 %300, label %301, label %306

; <label>:301:                                    ; preds = %297
  %302 = load i32, i32* @target_flags, align 4
  %303 = and i32 %302, 16384
  %304 = icmp ne i32 %303, 0
  %305 = select i1 %304, i32 17, i32 0
  br label %325

; <label>:306:                                    ; preds = %297
  %307 = load i8, i8* %10, align 1
  %308 = zext i8 %307 to i32
  %309 = icmp eq i32 %308, 65
  br i1 %309, label %310, label %311

; <label>:310:                                    ; preds = %306
  br label %323

; <label>:311:                                    ; preds = %306
  %312 = load i8, i8* %10, align 1
  %313 = zext i8 %312 to i32
  %314 = icmp eq i32 %313, 68
  br i1 %314, label %315, label %316

; <label>:315:                                    ; preds = %311
  br label %321

; <label>:316:                                    ; preds = %311
  %317 = load i8, i8* %10, align 1
  %318 = zext i8 %317 to i32
  %319 = icmp eq i32 %318, 83
  %320 = select i1 %319, i32 5, i32 0
  br label %321

; <label>:321:                                    ; preds = %316, %315
  %322 = phi i32 [ 6, %315 ], [ %320, %316 ]
  br label %323

; <label>:323:                                    ; preds = %321, %310
  %324 = phi i32 [ 7, %310 ], [ %322, %321 ]
  br label %325

; <label>:325:                                    ; preds = %323, %301
  %326 = phi i32 [ %305, %301 ], [ %324, %323 ]
  br label %327

; <label>:327:                                    ; preds = %325, %292
  %328 = phi i32 [ %296, %292 ], [ %326, %325 ]
  br label %329

; <label>:329:                                    ; preds = %327, %283
  %330 = phi i32 [ %287, %283 ], [ %328, %327 ]
  br label %331

; <label>:331:                                    ; preds = %329, %278
  %332 = phi i32 [ 2, %278 ], [ %330, %329 ]
  br label %333

; <label>:333:                                    ; preds = %331, %273
  %334 = phi i32 [ 3, %273 ], [ %332, %331 ]
  br label %335

; <label>:335:                                    ; preds = %333, %268
  %336 = phi i32 [ 4, %268 ], [ %334, %333 ]
  br label %337

; <label>:337:                                    ; preds = %335, %263
  %338 = phi i32 [ 1, %263 ], [ %336, %335 ]
  br label %339

; <label>:339:                                    ; preds = %337, %256
  %340 = phi i32 [ %258, %256 ], [ %338, %337 ]
  br label %341

; <label>:341:                                    ; preds = %339, %241
  %342 = phi i32 [ %243, %241 ], [ %340, %339 ]
  br label %343

; <label>:343:                                    ; preds = %341, %226
  %344 = phi i32 [ %228, %226 ], [ %342, %341 ]
  br label %345

; <label>:345:                                    ; preds = %343, %213
  %346 = phi i32 [ 8, %213 ], [ %344, %343 ]
  br label %347

; <label>:347:                                    ; preds = %345, %204
  %348 = phi i32 [ %208, %204 ], [ %346, %345 ]
  br label %349

; <label>:349:                                    ; preds = %347, %199
  %350 = phi i32 [ 11, %199 ], [ %348, %347 ]
  br label %351

; <label>:351:                                    ; preds = %349, %194
  %352 = phi i32 [ 12, %194 ], [ %350, %349 ]
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %1338, label %354

; <label>:354:                                    ; preds = %351
  %355 = load i8, i8* %10, align 1
  %356 = zext i8 %355 to i32
  %357 = icmp eq i32 %356, 114
  br i1 %357, label %358, label %359

; <label>:358:                                    ; preds = %354
  br label %515

; <label>:359:                                    ; preds = %354
  %360 = load i8, i8* %10, align 1
  %361 = zext i8 %360 to i32
  %362 = icmp eq i32 %361, 82
  br i1 %362, label %363, label %364

; <label>:363:                                    ; preds = %359
  br label %513

; <label>:364:                                    ; preds = %359
  %365 = load i8, i8* %10, align 1
  %366 = zext i8 %365 to i32
  %367 = icmp eq i32 %366, 113
  br i1 %367, label %368, label %373

; <label>:368:                                    ; preds = %364
  %369 = load i32, i32* @target_flags, align 4
  %370 = and i32 %369, 33554432
  %371 = icmp ne i32 %370, 0
  %372 = select i1 %371, i32 12, i32 8
  br label %511

; <label>:373:                                    ; preds = %364
  %374 = load i8, i8* %10, align 1
  %375 = zext i8 %374 to i32
  %376 = icmp eq i32 %375, 81
  br i1 %376, label %377, label %378

; <label>:377:                                    ; preds = %373
  br label %509

; <label>:378:                                    ; preds = %373
  %379 = load i8, i8* %10, align 1
  %380 = zext i8 %379 to i32
  %381 = icmp eq i32 %380, 102
  br i1 %381, label %382, label %393

; <label>:382:                                    ; preds = %378
  %383 = load i32, i32* @target_flags, align 4
  %384 = and i32 %383, 1
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %390, label %386

; <label>:386:                                    ; preds = %382
  %387 = load i32, i32* @target_flags, align 4
  %388 = and i32 %387, 32
  %389 = icmp ne i32 %388, 0
  br label %390

; <label>:390:                                    ; preds = %386, %382
  %391 = phi i1 [ true, %382 ], [ %389, %386 ]
  %392 = select i1 %391, i32 15, i32 0
  br label %507

; <label>:393:                                    ; preds = %378
  %394 = load i8, i8* %10, align 1
  %395 = zext i8 %394 to i32
  %396 = icmp eq i32 %395, 116
  br i1 %396, label %397, label %408

; <label>:397:                                    ; preds = %393
  %398 = load i32, i32* @target_flags, align 4
  %399 = and i32 %398, 1
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %405, label %401

; <label>:401:                                    ; preds = %397
  %402 = load i32, i32* @target_flags, align 4
  %403 = and i32 %402, 32
  %404 = icmp ne i32 %403, 0
  br label %405

; <label>:405:                                    ; preds = %401, %397
  %406 = phi i1 [ true, %397 ], [ %404, %401 ]
  %407 = select i1 %406, i32 13, i32 0
  br label %505

; <label>:408:                                    ; preds = %393
  %409 = load i8, i8* %10, align 1
  %410 = zext i8 %409 to i32
  %411 = icmp eq i32 %410, 117
  br i1 %411, label %412, label %423

; <label>:412:                                    ; preds = %408
  %413 = load i32, i32* @target_flags, align 4
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %420, label %416

; <label>:416:                                    ; preds = %412
  %417 = load i32, i32* @target_flags, align 4
  %418 = and i32 %417, 32
  %419 = icmp ne i32 %418, 0
  br label %420

; <label>:420:                                    ; preds = %416, %412
  %421 = phi i1 [ true, %412 ], [ %419, %416 ]
  %422 = select i1 %421, i32 14, i32 0
  br label %503

; <label>:423:                                    ; preds = %408
  %424 = load i8, i8* %10, align 1
  %425 = zext i8 %424 to i32
  %426 = icmp eq i32 %425, 97
  br i1 %426, label %427, label %428

; <label>:427:                                    ; preds = %423
  br label %501

; <label>:428:                                    ; preds = %423
  %429 = load i8, i8* %10, align 1
  %430 = zext i8 %429 to i32
  %431 = icmp eq i32 %430, 98
  br i1 %431, label %432, label %433

; <label>:432:                                    ; preds = %428
  br label %499

; <label>:433:                                    ; preds = %428
  %434 = load i8, i8* %10, align 1
  %435 = zext i8 %434 to i32
  %436 = icmp eq i32 %435, 99
  br i1 %436, label %437, label %438

; <label>:437:                                    ; preds = %433
  br label %497

; <label>:438:                                    ; preds = %433
  %439 = load i8, i8* %10, align 1
  %440 = zext i8 %439 to i32
  %441 = icmp eq i32 %440, 100
  br i1 %441, label %442, label %443

; <label>:442:                                    ; preds = %438
  br label %495

; <label>:443:                                    ; preds = %438
  %444 = load i8, i8* %10, align 1
  %445 = zext i8 %444 to i32
  %446 = icmp eq i32 %445, 120
  br i1 %446, label %447, label %452

; <label>:447:                                    ; preds = %443
  %448 = load i32, i32* @target_flags, align 4
  %449 = and i32 %448, 327680
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, i32 16, i32 0
  br label %493

; <label>:452:                                    ; preds = %443
  %453 = load i8, i8* %10, align 1
  %454 = zext i8 %453 to i32
  %455 = icmp eq i32 %454, 89
  br i1 %455, label %456, label %461

; <label>:456:                                    ; preds = %452
  %457 = load i32, i32* @target_flags, align 4
  %458 = and i32 %457, 262144
  %459 = icmp ne i32 %458, 0
  %460 = select i1 %459, i32 16, i32 0
  br label %491

; <label>:461:                                    ; preds = %452
  %462 = load i8, i8* %10, align 1
  %463 = zext i8 %462 to i32
  %464 = icmp eq i32 %463, 121
  br i1 %464, label %465, label %470

; <label>:465:                                    ; preds = %461
  %466 = load i32, i32* @target_flags, align 4
  %467 = and i32 %466, 16384
  %468 = icmp ne i32 %467, 0
  %469 = select i1 %468, i32 17, i32 0
  br label %489

; <label>:470:                                    ; preds = %461
  %471 = load i8, i8* %10, align 1
  %472 = zext i8 %471 to i32
  %473 = icmp eq i32 %472, 65
  br i1 %473, label %474, label %475

; <label>:474:                                    ; preds = %470
  br label %487

; <label>:475:                                    ; preds = %470
  %476 = load i8, i8* %10, align 1
  %477 = zext i8 %476 to i32
  %478 = icmp eq i32 %477, 68
  br i1 %478, label %479, label %480

; <label>:479:                                    ; preds = %475
  br label %485

; <label>:480:                                    ; preds = %475
  %481 = load i8, i8* %10, align 1
  %482 = zext i8 %481 to i32
  %483 = icmp eq i32 %482, 83
  %484 = select i1 %483, i32 5, i32 0
  br label %485

; <label>:485:                                    ; preds = %480, %479
  %486 = phi i32 [ 6, %479 ], [ %484, %480 ]
  br label %487

; <label>:487:                                    ; preds = %485, %474
  %488 = phi i32 [ 7, %474 ], [ %486, %485 ]
  br label %489

; <label>:489:                                    ; preds = %487, %465
  %490 = phi i32 [ %469, %465 ], [ %488, %487 ]
  br label %491

; <label>:491:                                    ; preds = %489, %456
  %492 = phi i32 [ %460, %456 ], [ %490, %489 ]
  br label %493

; <label>:493:                                    ; preds = %491, %447
  %494 = phi i32 [ %451, %447 ], [ %492, %491 ]
  br label %495

; <label>:495:                                    ; preds = %493, %442
  %496 = phi i32 [ 2, %442 ], [ %494, %493 ]
  br label %497

; <label>:497:                                    ; preds = %495, %437
  %498 = phi i32 [ 3, %437 ], [ %496, %495 ]
  br label %499

; <label>:499:                                    ; preds = %497, %432
  %500 = phi i32 [ 4, %432 ], [ %498, %497 ]
  br label %501

; <label>:501:                                    ; preds = %499, %427
  %502 = phi i32 [ 1, %427 ], [ %500, %499 ]
  br label %503

; <label>:503:                                    ; preds = %501, %420
  %504 = phi i32 [ %422, %420 ], [ %502, %501 ]
  br label %505

; <label>:505:                                    ; preds = %503, %405
  %506 = phi i32 [ %407, %405 ], [ %504, %503 ]
  br label %507

; <label>:507:                                    ; preds = %505, %390
  %508 = phi i32 [ %392, %390 ], [ %506, %505 ]
  br label %509

; <label>:509:                                    ; preds = %507, %377
  %510 = phi i32 [ 8, %377 ], [ %508, %507 ]
  br label %511

; <label>:511:                                    ; preds = %509, %368
  %512 = phi i32 [ %372, %368 ], [ %510, %509 ]
  br label %513

; <label>:513:                                    ; preds = %511, %363
  %514 = phi i32 [ 11, %363 ], [ %512, %511 ]
  br label %515

; <label>:515:                                    ; preds = %513, %358
  %516 = phi i32 [ 12, %358 ], [ %514, %513 ]
  %517 = icmp eq i32 %516, 2
  br i1 %517, label %1338, label %518

; <label>:518:                                    ; preds = %515
  %519 = load i8, i8* %10, align 1
  %520 = zext i8 %519 to i32
  %521 = icmp eq i32 %520, 114
  br i1 %521, label %522, label %523

; <label>:522:                                    ; preds = %518
  br label %679

; <label>:523:                                    ; preds = %518
  %524 = load i8, i8* %10, align 1
  %525 = zext i8 %524 to i32
  %526 = icmp eq i32 %525, 82
  br i1 %526, label %527, label %528

; <label>:527:                                    ; preds = %523
  br label %677

; <label>:528:                                    ; preds = %523
  %529 = load i8, i8* %10, align 1
  %530 = zext i8 %529 to i32
  %531 = icmp eq i32 %530, 113
  br i1 %531, label %532, label %537

; <label>:532:                                    ; preds = %528
  %533 = load i32, i32* @target_flags, align 4
  %534 = and i32 %533, 33554432
  %535 = icmp ne i32 %534, 0
  %536 = select i1 %535, i32 12, i32 8
  br label %675

; <label>:537:                                    ; preds = %528
  %538 = load i8, i8* %10, align 1
  %539 = zext i8 %538 to i32
  %540 = icmp eq i32 %539, 81
  br i1 %540, label %541, label %542

; <label>:541:                                    ; preds = %537
  br label %673

; <label>:542:                                    ; preds = %537
  %543 = load i8, i8* %10, align 1
  %544 = zext i8 %543 to i32
  %545 = icmp eq i32 %544, 102
  br i1 %545, label %546, label %557

; <label>:546:                                    ; preds = %542
  %547 = load i32, i32* @target_flags, align 4
  %548 = and i32 %547, 1
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %554, label %550

; <label>:550:                                    ; preds = %546
  %551 = load i32, i32* @target_flags, align 4
  %552 = and i32 %551, 32
  %553 = icmp ne i32 %552, 0
  br label %554

; <label>:554:                                    ; preds = %550, %546
  %555 = phi i1 [ true, %546 ], [ %553, %550 ]
  %556 = select i1 %555, i32 15, i32 0
  br label %671

; <label>:557:                                    ; preds = %542
  %558 = load i8, i8* %10, align 1
  %559 = zext i8 %558 to i32
  %560 = icmp eq i32 %559, 116
  br i1 %560, label %561, label %572

; <label>:561:                                    ; preds = %557
  %562 = load i32, i32* @target_flags, align 4
  %563 = and i32 %562, 1
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %569, label %565

; <label>:565:                                    ; preds = %561
  %566 = load i32, i32* @target_flags, align 4
  %567 = and i32 %566, 32
  %568 = icmp ne i32 %567, 0
  br label %569

; <label>:569:                                    ; preds = %565, %561
  %570 = phi i1 [ true, %561 ], [ %568, %565 ]
  %571 = select i1 %570, i32 13, i32 0
  br label %669

; <label>:572:                                    ; preds = %557
  %573 = load i8, i8* %10, align 1
  %574 = zext i8 %573 to i32
  %575 = icmp eq i32 %574, 117
  br i1 %575, label %576, label %587

; <label>:576:                                    ; preds = %572
  %577 = load i32, i32* @target_flags, align 4
  %578 = and i32 %577, 1
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %584, label %580

; <label>:580:                                    ; preds = %576
  %581 = load i32, i32* @target_flags, align 4
  %582 = and i32 %581, 32
  %583 = icmp ne i32 %582, 0
  br label %584

; <label>:584:                                    ; preds = %580, %576
  %585 = phi i1 [ true, %576 ], [ %583, %580 ]
  %586 = select i1 %585, i32 14, i32 0
  br label %667

; <label>:587:                                    ; preds = %572
  %588 = load i8, i8* %10, align 1
  %589 = zext i8 %588 to i32
  %590 = icmp eq i32 %589, 97
  br i1 %590, label %591, label %592

; <label>:591:                                    ; preds = %587
  br label %665

; <label>:592:                                    ; preds = %587
  %593 = load i8, i8* %10, align 1
  %594 = zext i8 %593 to i32
  %595 = icmp eq i32 %594, 98
  br i1 %595, label %596, label %597

; <label>:596:                                    ; preds = %592
  br label %663

; <label>:597:                                    ; preds = %592
  %598 = load i8, i8* %10, align 1
  %599 = zext i8 %598 to i32
  %600 = icmp eq i32 %599, 99
  br i1 %600, label %601, label %602

; <label>:601:                                    ; preds = %597
  br label %661

; <label>:602:                                    ; preds = %597
  %603 = load i8, i8* %10, align 1
  %604 = zext i8 %603 to i32
  %605 = icmp eq i32 %604, 100
  br i1 %605, label %606, label %607

; <label>:606:                                    ; preds = %602
  br label %659

; <label>:607:                                    ; preds = %602
  %608 = load i8, i8* %10, align 1
  %609 = zext i8 %608 to i32
  %610 = icmp eq i32 %609, 120
  br i1 %610, label %611, label %616

; <label>:611:                                    ; preds = %607
  %612 = load i32, i32* @target_flags, align 4
  %613 = and i32 %612, 327680
  %614 = icmp ne i32 %613, 0
  %615 = select i1 %614, i32 16, i32 0
  br label %657

; <label>:616:                                    ; preds = %607
  %617 = load i8, i8* %10, align 1
  %618 = zext i8 %617 to i32
  %619 = icmp eq i32 %618, 89
  br i1 %619, label %620, label %625

; <label>:620:                                    ; preds = %616
  %621 = load i32, i32* @target_flags, align 4
  %622 = and i32 %621, 262144
  %623 = icmp ne i32 %622, 0
  %624 = select i1 %623, i32 16, i32 0
  br label %655

; <label>:625:                                    ; preds = %616
  %626 = load i8, i8* %10, align 1
  %627 = zext i8 %626 to i32
  %628 = icmp eq i32 %627, 121
  br i1 %628, label %629, label %634

; <label>:629:                                    ; preds = %625
  %630 = load i32, i32* @target_flags, align 4
  %631 = and i32 %630, 16384
  %632 = icmp ne i32 %631, 0
  %633 = select i1 %632, i32 17, i32 0
  br label %653

; <label>:634:                                    ; preds = %625
  %635 = load i8, i8* %10, align 1
  %636 = zext i8 %635 to i32
  %637 = icmp eq i32 %636, 65
  br i1 %637, label %638, label %639

; <label>:638:                                    ; preds = %634
  br label %651

; <label>:639:                                    ; preds = %634
  %640 = load i8, i8* %10, align 1
  %641 = zext i8 %640 to i32
  %642 = icmp eq i32 %641, 68
  br i1 %642, label %643, label %644

; <label>:643:                                    ; preds = %639
  br label %649

; <label>:644:                                    ; preds = %639
  %645 = load i8, i8* %10, align 1
  %646 = zext i8 %645 to i32
  %647 = icmp eq i32 %646, 83
  %648 = select i1 %647, i32 5, i32 0
  br label %649

; <label>:649:                                    ; preds = %644, %643
  %650 = phi i32 [ 6, %643 ], [ %648, %644 ]
  br label %651

; <label>:651:                                    ; preds = %649, %638
  %652 = phi i32 [ 7, %638 ], [ %650, %649 ]
  br label %653

; <label>:653:                                    ; preds = %651, %629
  %654 = phi i32 [ %633, %629 ], [ %652, %651 ]
  br label %655

; <label>:655:                                    ; preds = %653, %620
  %656 = phi i32 [ %624, %620 ], [ %654, %653 ]
  br label %657

; <label>:657:                                    ; preds = %655, %611
  %658 = phi i32 [ %615, %611 ], [ %656, %655 ]
  br label %659

; <label>:659:                                    ; preds = %657, %606
  %660 = phi i32 [ 2, %606 ], [ %658, %657 ]
  br label %661

; <label>:661:                                    ; preds = %659, %601
  %662 = phi i32 [ 3, %601 ], [ %660, %659 ]
  br label %663

; <label>:663:                                    ; preds = %661, %596
  %664 = phi i32 [ 4, %596 ], [ %662, %661 ]
  br label %665

; <label>:665:                                    ; preds = %663, %591
  %666 = phi i32 [ 1, %591 ], [ %664, %663 ]
  br label %667

; <label>:667:                                    ; preds = %665, %584
  %668 = phi i32 [ %586, %584 ], [ %666, %665 ]
  br label %669

; <label>:669:                                    ; preds = %667, %569
  %670 = phi i32 [ %571, %569 ], [ %668, %667 ]
  br label %671

; <label>:671:                                    ; preds = %669, %554
  %672 = phi i32 [ %556, %554 ], [ %670, %669 ]
  br label %673

; <label>:673:                                    ; preds = %671, %541
  %674 = phi i32 [ 8, %541 ], [ %672, %671 ]
  br label %675

; <label>:675:                                    ; preds = %673, %532
  %676 = phi i32 [ %536, %532 ], [ %674, %673 ]
  br label %677

; <label>:677:                                    ; preds = %675, %527
  %678 = phi i32 [ 11, %527 ], [ %676, %675 ]
  br label %679

; <label>:679:                                    ; preds = %677, %522
  %680 = phi i32 [ 12, %522 ], [ %678, %677 ]
  %681 = icmp eq i32 %680, 3
  br i1 %681, label %1338, label %682

; <label>:682:                                    ; preds = %679
  %683 = load i8, i8* %10, align 1
  %684 = zext i8 %683 to i32
  %685 = icmp eq i32 %684, 114
  br i1 %685, label %686, label %687

; <label>:686:                                    ; preds = %682
  br label %843

; <label>:687:                                    ; preds = %682
  %688 = load i8, i8* %10, align 1
  %689 = zext i8 %688 to i32
  %690 = icmp eq i32 %689, 82
  br i1 %690, label %691, label %692

; <label>:691:                                    ; preds = %687
  br label %841

; <label>:692:                                    ; preds = %687
  %693 = load i8, i8* %10, align 1
  %694 = zext i8 %693 to i32
  %695 = icmp eq i32 %694, 113
  br i1 %695, label %696, label %701

; <label>:696:                                    ; preds = %692
  %697 = load i32, i32* @target_flags, align 4
  %698 = and i32 %697, 33554432
  %699 = icmp ne i32 %698, 0
  %700 = select i1 %699, i32 12, i32 8
  br label %839

; <label>:701:                                    ; preds = %692
  %702 = load i8, i8* %10, align 1
  %703 = zext i8 %702 to i32
  %704 = icmp eq i32 %703, 81
  br i1 %704, label %705, label %706

; <label>:705:                                    ; preds = %701
  br label %837

; <label>:706:                                    ; preds = %701
  %707 = load i8, i8* %10, align 1
  %708 = zext i8 %707 to i32
  %709 = icmp eq i32 %708, 102
  br i1 %709, label %710, label %721

; <label>:710:                                    ; preds = %706
  %711 = load i32, i32* @target_flags, align 4
  %712 = and i32 %711, 1
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %718, label %714

; <label>:714:                                    ; preds = %710
  %715 = load i32, i32* @target_flags, align 4
  %716 = and i32 %715, 32
  %717 = icmp ne i32 %716, 0
  br label %718

; <label>:718:                                    ; preds = %714, %710
  %719 = phi i1 [ true, %710 ], [ %717, %714 ]
  %720 = select i1 %719, i32 15, i32 0
  br label %835

; <label>:721:                                    ; preds = %706
  %722 = load i8, i8* %10, align 1
  %723 = zext i8 %722 to i32
  %724 = icmp eq i32 %723, 116
  br i1 %724, label %725, label %736

; <label>:725:                                    ; preds = %721
  %726 = load i32, i32* @target_flags, align 4
  %727 = and i32 %726, 1
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %733, label %729

; <label>:729:                                    ; preds = %725
  %730 = load i32, i32* @target_flags, align 4
  %731 = and i32 %730, 32
  %732 = icmp ne i32 %731, 0
  br label %733

; <label>:733:                                    ; preds = %729, %725
  %734 = phi i1 [ true, %725 ], [ %732, %729 ]
  %735 = select i1 %734, i32 13, i32 0
  br label %833

; <label>:736:                                    ; preds = %721
  %737 = load i8, i8* %10, align 1
  %738 = zext i8 %737 to i32
  %739 = icmp eq i32 %738, 117
  br i1 %739, label %740, label %751

; <label>:740:                                    ; preds = %736
  %741 = load i32, i32* @target_flags, align 4
  %742 = and i32 %741, 1
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %748, label %744

; <label>:744:                                    ; preds = %740
  %745 = load i32, i32* @target_flags, align 4
  %746 = and i32 %745, 32
  %747 = icmp ne i32 %746, 0
  br label %748

; <label>:748:                                    ; preds = %744, %740
  %749 = phi i1 [ true, %740 ], [ %747, %744 ]
  %750 = select i1 %749, i32 14, i32 0
  br label %831

; <label>:751:                                    ; preds = %736
  %752 = load i8, i8* %10, align 1
  %753 = zext i8 %752 to i32
  %754 = icmp eq i32 %753, 97
  br i1 %754, label %755, label %756

; <label>:755:                                    ; preds = %751
  br label %829

; <label>:756:                                    ; preds = %751
  %757 = load i8, i8* %10, align 1
  %758 = zext i8 %757 to i32
  %759 = icmp eq i32 %758, 98
  br i1 %759, label %760, label %761

; <label>:760:                                    ; preds = %756
  br label %827

; <label>:761:                                    ; preds = %756
  %762 = load i8, i8* %10, align 1
  %763 = zext i8 %762 to i32
  %764 = icmp eq i32 %763, 99
  br i1 %764, label %765, label %766

; <label>:765:                                    ; preds = %761
  br label %825

; <label>:766:                                    ; preds = %761
  %767 = load i8, i8* %10, align 1
  %768 = zext i8 %767 to i32
  %769 = icmp eq i32 %768, 100
  br i1 %769, label %770, label %771

; <label>:770:                                    ; preds = %766
  br label %823

; <label>:771:                                    ; preds = %766
  %772 = load i8, i8* %10, align 1
  %773 = zext i8 %772 to i32
  %774 = icmp eq i32 %773, 120
  br i1 %774, label %775, label %780

; <label>:775:                                    ; preds = %771
  %776 = load i32, i32* @target_flags, align 4
  %777 = and i32 %776, 327680
  %778 = icmp ne i32 %777, 0
  %779 = select i1 %778, i32 16, i32 0
  br label %821

; <label>:780:                                    ; preds = %771
  %781 = load i8, i8* %10, align 1
  %782 = zext i8 %781 to i32
  %783 = icmp eq i32 %782, 89
  br i1 %783, label %784, label %789

; <label>:784:                                    ; preds = %780
  %785 = load i32, i32* @target_flags, align 4
  %786 = and i32 %785, 262144
  %787 = icmp ne i32 %786, 0
  %788 = select i1 %787, i32 16, i32 0
  br label %819

; <label>:789:                                    ; preds = %780
  %790 = load i8, i8* %10, align 1
  %791 = zext i8 %790 to i32
  %792 = icmp eq i32 %791, 121
  br i1 %792, label %793, label %798

; <label>:793:                                    ; preds = %789
  %794 = load i32, i32* @target_flags, align 4
  %795 = and i32 %794, 16384
  %796 = icmp ne i32 %795, 0
  %797 = select i1 %796, i32 17, i32 0
  br label %817

; <label>:798:                                    ; preds = %789
  %799 = load i8, i8* %10, align 1
  %800 = zext i8 %799 to i32
  %801 = icmp eq i32 %800, 65
  br i1 %801, label %802, label %803

; <label>:802:                                    ; preds = %798
  br label %815

; <label>:803:                                    ; preds = %798
  %804 = load i8, i8* %10, align 1
  %805 = zext i8 %804 to i32
  %806 = icmp eq i32 %805, 68
  br i1 %806, label %807, label %808

; <label>:807:                                    ; preds = %803
  br label %813

; <label>:808:                                    ; preds = %803
  %809 = load i8, i8* %10, align 1
  %810 = zext i8 %809 to i32
  %811 = icmp eq i32 %810, 83
  %812 = select i1 %811, i32 5, i32 0
  br label %813

; <label>:813:                                    ; preds = %808, %807
  %814 = phi i32 [ 6, %807 ], [ %812, %808 ]
  br label %815

; <label>:815:                                    ; preds = %813, %802
  %816 = phi i32 [ 7, %802 ], [ %814, %813 ]
  br label %817

; <label>:817:                                    ; preds = %815, %793
  %818 = phi i32 [ %797, %793 ], [ %816, %815 ]
  br label %819

; <label>:819:                                    ; preds = %817, %784
  %820 = phi i32 [ %788, %784 ], [ %818, %817 ]
  br label %821

; <label>:821:                                    ; preds = %819, %775
  %822 = phi i32 [ %779, %775 ], [ %820, %819 ]
  br label %823

; <label>:823:                                    ; preds = %821, %770
  %824 = phi i32 [ 2, %770 ], [ %822, %821 ]
  br label %825

; <label>:825:                                    ; preds = %823, %765
  %826 = phi i32 [ 3, %765 ], [ %824, %823 ]
  br label %827

; <label>:827:                                    ; preds = %825, %760
  %828 = phi i32 [ 4, %760 ], [ %826, %825 ]
  br label %829

; <label>:829:                                    ; preds = %827, %755
  %830 = phi i32 [ 1, %755 ], [ %828, %827 ]
  br label %831

; <label>:831:                                    ; preds = %829, %748
  %832 = phi i32 [ %750, %748 ], [ %830, %829 ]
  br label %833

; <label>:833:                                    ; preds = %831, %733
  %834 = phi i32 [ %735, %733 ], [ %832, %831 ]
  br label %835

; <label>:835:                                    ; preds = %833, %718
  %836 = phi i32 [ %720, %718 ], [ %834, %833 ]
  br label %837

; <label>:837:                                    ; preds = %835, %705
  %838 = phi i32 [ 8, %705 ], [ %836, %835 ]
  br label %839

; <label>:839:                                    ; preds = %837, %696
  %840 = phi i32 [ %700, %696 ], [ %838, %837 ]
  br label %841

; <label>:841:                                    ; preds = %839, %691
  %842 = phi i32 [ 11, %691 ], [ %840, %839 ]
  br label %843

; <label>:843:                                    ; preds = %841, %686
  %844 = phi i32 [ 12, %686 ], [ %842, %841 ]
  %845 = icmp eq i32 %844, 4
  br i1 %845, label %1338, label %846

; <label>:846:                                    ; preds = %843
  %847 = load i8, i8* %10, align 1
  %848 = zext i8 %847 to i32
  %849 = icmp eq i32 %848, 114
  br i1 %849, label %850, label %851

; <label>:850:                                    ; preds = %846
  br label %1007

; <label>:851:                                    ; preds = %846
  %852 = load i8, i8* %10, align 1
  %853 = zext i8 %852 to i32
  %854 = icmp eq i32 %853, 82
  br i1 %854, label %855, label %856

; <label>:855:                                    ; preds = %851
  br label %1005

; <label>:856:                                    ; preds = %851
  %857 = load i8, i8* %10, align 1
  %858 = zext i8 %857 to i32
  %859 = icmp eq i32 %858, 113
  br i1 %859, label %860, label %865

; <label>:860:                                    ; preds = %856
  %861 = load i32, i32* @target_flags, align 4
  %862 = and i32 %861, 33554432
  %863 = icmp ne i32 %862, 0
  %864 = select i1 %863, i32 12, i32 8
  br label %1003

; <label>:865:                                    ; preds = %856
  %866 = load i8, i8* %10, align 1
  %867 = zext i8 %866 to i32
  %868 = icmp eq i32 %867, 81
  br i1 %868, label %869, label %870

; <label>:869:                                    ; preds = %865
  br label %1001

; <label>:870:                                    ; preds = %865
  %871 = load i8, i8* %10, align 1
  %872 = zext i8 %871 to i32
  %873 = icmp eq i32 %872, 102
  br i1 %873, label %874, label %885

; <label>:874:                                    ; preds = %870
  %875 = load i32, i32* @target_flags, align 4
  %876 = and i32 %875, 1
  %877 = icmp ne i32 %876, 0
  br i1 %877, label %882, label %878

; <label>:878:                                    ; preds = %874
  %879 = load i32, i32* @target_flags, align 4
  %880 = and i32 %879, 32
  %881 = icmp ne i32 %880, 0
  br label %882

; <label>:882:                                    ; preds = %878, %874
  %883 = phi i1 [ true, %874 ], [ %881, %878 ]
  %884 = select i1 %883, i32 15, i32 0
  br label %999

; <label>:885:                                    ; preds = %870
  %886 = load i8, i8* %10, align 1
  %887 = zext i8 %886 to i32
  %888 = icmp eq i32 %887, 116
  br i1 %888, label %889, label %900

; <label>:889:                                    ; preds = %885
  %890 = load i32, i32* @target_flags, align 4
  %891 = and i32 %890, 1
  %892 = icmp ne i32 %891, 0
  br i1 %892, label %897, label %893

; <label>:893:                                    ; preds = %889
  %894 = load i32, i32* @target_flags, align 4
  %895 = and i32 %894, 32
  %896 = icmp ne i32 %895, 0
  br label %897

; <label>:897:                                    ; preds = %893, %889
  %898 = phi i1 [ true, %889 ], [ %896, %893 ]
  %899 = select i1 %898, i32 13, i32 0
  br label %997

; <label>:900:                                    ; preds = %885
  %901 = load i8, i8* %10, align 1
  %902 = zext i8 %901 to i32
  %903 = icmp eq i32 %902, 117
  br i1 %903, label %904, label %915

; <label>:904:                                    ; preds = %900
  %905 = load i32, i32* @target_flags, align 4
  %906 = and i32 %905, 1
  %907 = icmp ne i32 %906, 0
  br i1 %907, label %912, label %908

; <label>:908:                                    ; preds = %904
  %909 = load i32, i32* @target_flags, align 4
  %910 = and i32 %909, 32
  %911 = icmp ne i32 %910, 0
  br label %912

; <label>:912:                                    ; preds = %908, %904
  %913 = phi i1 [ true, %904 ], [ %911, %908 ]
  %914 = select i1 %913, i32 14, i32 0
  br label %995

; <label>:915:                                    ; preds = %900
  %916 = load i8, i8* %10, align 1
  %917 = zext i8 %916 to i32
  %918 = icmp eq i32 %917, 97
  br i1 %918, label %919, label %920

; <label>:919:                                    ; preds = %915
  br label %993

; <label>:920:                                    ; preds = %915
  %921 = load i8, i8* %10, align 1
  %922 = zext i8 %921 to i32
  %923 = icmp eq i32 %922, 98
  br i1 %923, label %924, label %925

; <label>:924:                                    ; preds = %920
  br label %991

; <label>:925:                                    ; preds = %920
  %926 = load i8, i8* %10, align 1
  %927 = zext i8 %926 to i32
  %928 = icmp eq i32 %927, 99
  br i1 %928, label %929, label %930

; <label>:929:                                    ; preds = %925
  br label %989

; <label>:930:                                    ; preds = %925
  %931 = load i8, i8* %10, align 1
  %932 = zext i8 %931 to i32
  %933 = icmp eq i32 %932, 100
  br i1 %933, label %934, label %935

; <label>:934:                                    ; preds = %930
  br label %987

; <label>:935:                                    ; preds = %930
  %936 = load i8, i8* %10, align 1
  %937 = zext i8 %936 to i32
  %938 = icmp eq i32 %937, 120
  br i1 %938, label %939, label %944

; <label>:939:                                    ; preds = %935
  %940 = load i32, i32* @target_flags, align 4
  %941 = and i32 %940, 327680
  %942 = icmp ne i32 %941, 0
  %943 = select i1 %942, i32 16, i32 0
  br label %985

; <label>:944:                                    ; preds = %935
  %945 = load i8, i8* %10, align 1
  %946 = zext i8 %945 to i32
  %947 = icmp eq i32 %946, 89
  br i1 %947, label %948, label %953

; <label>:948:                                    ; preds = %944
  %949 = load i32, i32* @target_flags, align 4
  %950 = and i32 %949, 262144
  %951 = icmp ne i32 %950, 0
  %952 = select i1 %951, i32 16, i32 0
  br label %983

; <label>:953:                                    ; preds = %944
  %954 = load i8, i8* %10, align 1
  %955 = zext i8 %954 to i32
  %956 = icmp eq i32 %955, 121
  br i1 %956, label %957, label %962

; <label>:957:                                    ; preds = %953
  %958 = load i32, i32* @target_flags, align 4
  %959 = and i32 %958, 16384
  %960 = icmp ne i32 %959, 0
  %961 = select i1 %960, i32 17, i32 0
  br label %981

; <label>:962:                                    ; preds = %953
  %963 = load i8, i8* %10, align 1
  %964 = zext i8 %963 to i32
  %965 = icmp eq i32 %964, 65
  br i1 %965, label %966, label %967

; <label>:966:                                    ; preds = %962
  br label %979

; <label>:967:                                    ; preds = %962
  %968 = load i8, i8* %10, align 1
  %969 = zext i8 %968 to i32
  %970 = icmp eq i32 %969, 68
  br i1 %970, label %971, label %972

; <label>:971:                                    ; preds = %967
  br label %977

; <label>:972:                                    ; preds = %967
  %973 = load i8, i8* %10, align 1
  %974 = zext i8 %973 to i32
  %975 = icmp eq i32 %974, 83
  %976 = select i1 %975, i32 5, i32 0
  br label %977

; <label>:977:                                    ; preds = %972, %971
  %978 = phi i32 [ 6, %971 ], [ %976, %972 ]
  br label %979

; <label>:979:                                    ; preds = %977, %966
  %980 = phi i32 [ 7, %966 ], [ %978, %977 ]
  br label %981

; <label>:981:                                    ; preds = %979, %957
  %982 = phi i32 [ %961, %957 ], [ %980, %979 ]
  br label %983

; <label>:983:                                    ; preds = %981, %948
  %984 = phi i32 [ %952, %948 ], [ %982, %981 ]
  br label %985

; <label>:985:                                    ; preds = %983, %939
  %986 = phi i32 [ %943, %939 ], [ %984, %983 ]
  br label %987

; <label>:987:                                    ; preds = %985, %934
  %988 = phi i32 [ 2, %934 ], [ %986, %985 ]
  br label %989

; <label>:989:                                    ; preds = %987, %929
  %990 = phi i32 [ 3, %929 ], [ %988, %987 ]
  br label %991

; <label>:991:                                    ; preds = %989, %924
  %992 = phi i32 [ 4, %924 ], [ %990, %989 ]
  br label %993

; <label>:993:                                    ; preds = %991, %919
  %994 = phi i32 [ 1, %919 ], [ %992, %991 ]
  br label %995

; <label>:995:                                    ; preds = %993, %912
  %996 = phi i32 [ %914, %912 ], [ %994, %993 ]
  br label %997

; <label>:997:                                    ; preds = %995, %897
  %998 = phi i32 [ %899, %897 ], [ %996, %995 ]
  br label %999

; <label>:999:                                    ; preds = %997, %882
  %1000 = phi i32 [ %884, %882 ], [ %998, %997 ]
  br label %1001

; <label>:1001:                                   ; preds = %999, %869
  %1002 = phi i32 [ 8, %869 ], [ %1000, %999 ]
  br label %1003

; <label>:1003:                                   ; preds = %1001, %860
  %1004 = phi i32 [ %864, %860 ], [ %1002, %1001 ]
  br label %1005

; <label>:1005:                                   ; preds = %1003, %855
  %1006 = phi i32 [ 11, %855 ], [ %1004, %1003 ]
  br label %1007

; <label>:1007:                                   ; preds = %1005, %850
  %1008 = phi i32 [ 12, %850 ], [ %1006, %1005 ]
  %1009 = icmp eq i32 %1008, 7
  br i1 %1009, label %1338, label %1010

; <label>:1010:                                   ; preds = %1007
  %1011 = load i8, i8* %10, align 1
  %1012 = zext i8 %1011 to i32
  %1013 = icmp eq i32 %1012, 114
  br i1 %1013, label %1014, label %1015

; <label>:1014:                                   ; preds = %1010
  br label %1171

; <label>:1015:                                   ; preds = %1010
  %1016 = load i8, i8* %10, align 1
  %1017 = zext i8 %1016 to i32
  %1018 = icmp eq i32 %1017, 82
  br i1 %1018, label %1019, label %1020

; <label>:1019:                                   ; preds = %1015
  br label %1169

; <label>:1020:                                   ; preds = %1015
  %1021 = load i8, i8* %10, align 1
  %1022 = zext i8 %1021 to i32
  %1023 = icmp eq i32 %1022, 113
  br i1 %1023, label %1024, label %1029

; <label>:1024:                                   ; preds = %1020
  %1025 = load i32, i32* @target_flags, align 4
  %1026 = and i32 %1025, 33554432
  %1027 = icmp ne i32 %1026, 0
  %1028 = select i1 %1027, i32 12, i32 8
  br label %1167

; <label>:1029:                                   ; preds = %1020
  %1030 = load i8, i8* %10, align 1
  %1031 = zext i8 %1030 to i32
  %1032 = icmp eq i32 %1031, 81
  br i1 %1032, label %1033, label %1034

; <label>:1033:                                   ; preds = %1029
  br label %1165

; <label>:1034:                                   ; preds = %1029
  %1035 = load i8, i8* %10, align 1
  %1036 = zext i8 %1035 to i32
  %1037 = icmp eq i32 %1036, 102
  br i1 %1037, label %1038, label %1049

; <label>:1038:                                   ; preds = %1034
  %1039 = load i32, i32* @target_flags, align 4
  %1040 = and i32 %1039, 1
  %1041 = icmp ne i32 %1040, 0
  br i1 %1041, label %1046, label %1042

; <label>:1042:                                   ; preds = %1038
  %1043 = load i32, i32* @target_flags, align 4
  %1044 = and i32 %1043, 32
  %1045 = icmp ne i32 %1044, 0
  br label %1046

; <label>:1046:                                   ; preds = %1042, %1038
  %1047 = phi i1 [ true, %1038 ], [ %1045, %1042 ]
  %1048 = select i1 %1047, i32 15, i32 0
  br label %1163

; <label>:1049:                                   ; preds = %1034
  %1050 = load i8, i8* %10, align 1
  %1051 = zext i8 %1050 to i32
  %1052 = icmp eq i32 %1051, 116
  br i1 %1052, label %1053, label %1064

; <label>:1053:                                   ; preds = %1049
  %1054 = load i32, i32* @target_flags, align 4
  %1055 = and i32 %1054, 1
  %1056 = icmp ne i32 %1055, 0
  br i1 %1056, label %1061, label %1057

; <label>:1057:                                   ; preds = %1053
  %1058 = load i32, i32* @target_flags, align 4
  %1059 = and i32 %1058, 32
  %1060 = icmp ne i32 %1059, 0
  br label %1061

; <label>:1061:                                   ; preds = %1057, %1053
  %1062 = phi i1 [ true, %1053 ], [ %1060, %1057 ]
  %1063 = select i1 %1062, i32 13, i32 0
  br label %1161

; <label>:1064:                                   ; preds = %1049
  %1065 = load i8, i8* %10, align 1
  %1066 = zext i8 %1065 to i32
  %1067 = icmp eq i32 %1066, 117
  br i1 %1067, label %1068, label %1079

; <label>:1068:                                   ; preds = %1064
  %1069 = load i32, i32* @target_flags, align 4
  %1070 = and i32 %1069, 1
  %1071 = icmp ne i32 %1070, 0
  br i1 %1071, label %1076, label %1072

; <label>:1072:                                   ; preds = %1068
  %1073 = load i32, i32* @target_flags, align 4
  %1074 = and i32 %1073, 32
  %1075 = icmp ne i32 %1074, 0
  br label %1076

; <label>:1076:                                   ; preds = %1072, %1068
  %1077 = phi i1 [ true, %1068 ], [ %1075, %1072 ]
  %1078 = select i1 %1077, i32 14, i32 0
  br label %1159

; <label>:1079:                                   ; preds = %1064
  %1080 = load i8, i8* %10, align 1
  %1081 = zext i8 %1080 to i32
  %1082 = icmp eq i32 %1081, 97
  br i1 %1082, label %1083, label %1084

; <label>:1083:                                   ; preds = %1079
  br label %1157

; <label>:1084:                                   ; preds = %1079
  %1085 = load i8, i8* %10, align 1
  %1086 = zext i8 %1085 to i32
  %1087 = icmp eq i32 %1086, 98
  br i1 %1087, label %1088, label %1089

; <label>:1088:                                   ; preds = %1084
  br label %1155

; <label>:1089:                                   ; preds = %1084
  %1090 = load i8, i8* %10, align 1
  %1091 = zext i8 %1090 to i32
  %1092 = icmp eq i32 %1091, 99
  br i1 %1092, label %1093, label %1094

; <label>:1093:                                   ; preds = %1089
  br label %1153

; <label>:1094:                                   ; preds = %1089
  %1095 = load i8, i8* %10, align 1
  %1096 = zext i8 %1095 to i32
  %1097 = icmp eq i32 %1096, 100
  br i1 %1097, label %1098, label %1099

; <label>:1098:                                   ; preds = %1094
  br label %1151

; <label>:1099:                                   ; preds = %1094
  %1100 = load i8, i8* %10, align 1
  %1101 = zext i8 %1100 to i32
  %1102 = icmp eq i32 %1101, 120
  br i1 %1102, label %1103, label %1108

; <label>:1103:                                   ; preds = %1099
  %1104 = load i32, i32* @target_flags, align 4
  %1105 = and i32 %1104, 327680
  %1106 = icmp ne i32 %1105, 0
  %1107 = select i1 %1106, i32 16, i32 0
  br label %1149

; <label>:1108:                                   ; preds = %1099
  %1109 = load i8, i8* %10, align 1
  %1110 = zext i8 %1109 to i32
  %1111 = icmp eq i32 %1110, 89
  br i1 %1111, label %1112, label %1117

; <label>:1112:                                   ; preds = %1108
  %1113 = load i32, i32* @target_flags, align 4
  %1114 = and i32 %1113, 262144
  %1115 = icmp ne i32 %1114, 0
  %1116 = select i1 %1115, i32 16, i32 0
  br label %1147

; <label>:1117:                                   ; preds = %1108
  %1118 = load i8, i8* %10, align 1
  %1119 = zext i8 %1118 to i32
  %1120 = icmp eq i32 %1119, 121
  br i1 %1120, label %1121, label %1126

; <label>:1121:                                   ; preds = %1117
  %1122 = load i32, i32* @target_flags, align 4
  %1123 = and i32 %1122, 16384
  %1124 = icmp ne i32 %1123, 0
  %1125 = select i1 %1124, i32 17, i32 0
  br label %1145

; <label>:1126:                                   ; preds = %1117
  %1127 = load i8, i8* %10, align 1
  %1128 = zext i8 %1127 to i32
  %1129 = icmp eq i32 %1128, 65
  br i1 %1129, label %1130, label %1131

; <label>:1130:                                   ; preds = %1126
  br label %1143

; <label>:1131:                                   ; preds = %1126
  %1132 = load i8, i8* %10, align 1
  %1133 = zext i8 %1132 to i32
  %1134 = icmp eq i32 %1133, 68
  br i1 %1134, label %1135, label %1136

; <label>:1135:                                   ; preds = %1131
  br label %1141

; <label>:1136:                                   ; preds = %1131
  %1137 = load i8, i8* %10, align 1
  %1138 = zext i8 %1137 to i32
  %1139 = icmp eq i32 %1138, 83
  %1140 = select i1 %1139, i32 5, i32 0
  br label %1141

; <label>:1141:                                   ; preds = %1136, %1135
  %1142 = phi i32 [ 6, %1135 ], [ %1140, %1136 ]
  br label %1143

; <label>:1143:                                   ; preds = %1141, %1130
  %1144 = phi i32 [ 7, %1130 ], [ %1142, %1141 ]
  br label %1145

; <label>:1145:                                   ; preds = %1143, %1121
  %1146 = phi i32 [ %1125, %1121 ], [ %1144, %1143 ]
  br label %1147

; <label>:1147:                                   ; preds = %1145, %1112
  %1148 = phi i32 [ %1116, %1112 ], [ %1146, %1145 ]
  br label %1149

; <label>:1149:                                   ; preds = %1147, %1103
  %1150 = phi i32 [ %1107, %1103 ], [ %1148, %1147 ]
  br label %1151

; <label>:1151:                                   ; preds = %1149, %1098
  %1152 = phi i32 [ 2, %1098 ], [ %1150, %1149 ]
  br label %1153

; <label>:1153:                                   ; preds = %1151, %1093
  %1154 = phi i32 [ 3, %1093 ], [ %1152, %1151 ]
  br label %1155

; <label>:1155:                                   ; preds = %1153, %1088
  %1156 = phi i32 [ 4, %1088 ], [ %1154, %1153 ]
  br label %1157

; <label>:1157:                                   ; preds = %1155, %1083
  %1158 = phi i32 [ 1, %1083 ], [ %1156, %1155 ]
  br label %1159

; <label>:1159:                                   ; preds = %1157, %1076
  %1160 = phi i32 [ %1078, %1076 ], [ %1158, %1157 ]
  br label %1161

; <label>:1161:                                   ; preds = %1159, %1061
  %1162 = phi i32 [ %1063, %1061 ], [ %1160, %1159 ]
  br label %1163

; <label>:1163:                                   ; preds = %1161, %1046
  %1164 = phi i32 [ %1048, %1046 ], [ %1162, %1161 ]
  br label %1165

; <label>:1165:                                   ; preds = %1163, %1033
  %1166 = phi i32 [ 8, %1033 ], [ %1164, %1163 ]
  br label %1167

; <label>:1167:                                   ; preds = %1165, %1024
  %1168 = phi i32 [ %1028, %1024 ], [ %1166, %1165 ]
  br label %1169

; <label>:1169:                                   ; preds = %1167, %1019
  %1170 = phi i32 [ 11, %1019 ], [ %1168, %1167 ]
  br label %1171

; <label>:1171:                                   ; preds = %1169, %1014
  %1172 = phi i32 [ 12, %1014 ], [ %1170, %1169 ]
  %1173 = icmp eq i32 %1172, 5
  br i1 %1173, label %1338, label %1174

; <label>:1174:                                   ; preds = %1171
  %1175 = load i8, i8* %10, align 1
  %1176 = zext i8 %1175 to i32
  %1177 = icmp eq i32 %1176, 114
  br i1 %1177, label %1178, label %1179

; <label>:1178:                                   ; preds = %1174
  br label %1335

; <label>:1179:                                   ; preds = %1174
  %1180 = load i8, i8* %10, align 1
  %1181 = zext i8 %1180 to i32
  %1182 = icmp eq i32 %1181, 82
  br i1 %1182, label %1183, label %1184

; <label>:1183:                                   ; preds = %1179
  br label %1333

; <label>:1184:                                   ; preds = %1179
  %1185 = load i8, i8* %10, align 1
  %1186 = zext i8 %1185 to i32
  %1187 = icmp eq i32 %1186, 113
  br i1 %1187, label %1188, label %1193

; <label>:1188:                                   ; preds = %1184
  %1189 = load i32, i32* @target_flags, align 4
  %1190 = and i32 %1189, 33554432
  %1191 = icmp ne i32 %1190, 0
  %1192 = select i1 %1191, i32 12, i32 8
  br label %1331

; <label>:1193:                                   ; preds = %1184
  %1194 = load i8, i8* %10, align 1
  %1195 = zext i8 %1194 to i32
  %1196 = icmp eq i32 %1195, 81
  br i1 %1196, label %1197, label %1198

; <label>:1197:                                   ; preds = %1193
  br label %1329

; <label>:1198:                                   ; preds = %1193
  %1199 = load i8, i8* %10, align 1
  %1200 = zext i8 %1199 to i32
  %1201 = icmp eq i32 %1200, 102
  br i1 %1201, label %1202, label %1213

; <label>:1202:                                   ; preds = %1198
  %1203 = load i32, i32* @target_flags, align 4
  %1204 = and i32 %1203, 1
  %1205 = icmp ne i32 %1204, 0
  br i1 %1205, label %1210, label %1206

; <label>:1206:                                   ; preds = %1202
  %1207 = load i32, i32* @target_flags, align 4
  %1208 = and i32 %1207, 32
  %1209 = icmp ne i32 %1208, 0
  br label %1210

; <label>:1210:                                   ; preds = %1206, %1202
  %1211 = phi i1 [ true, %1202 ], [ %1209, %1206 ]
  %1212 = select i1 %1211, i32 15, i32 0
  br label %1327

; <label>:1213:                                   ; preds = %1198
  %1214 = load i8, i8* %10, align 1
  %1215 = zext i8 %1214 to i32
  %1216 = icmp eq i32 %1215, 116
  br i1 %1216, label %1217, label %1228

; <label>:1217:                                   ; preds = %1213
  %1218 = load i32, i32* @target_flags, align 4
  %1219 = and i32 %1218, 1
  %1220 = icmp ne i32 %1219, 0
  br i1 %1220, label %1225, label %1221

; <label>:1221:                                   ; preds = %1217
  %1222 = load i32, i32* @target_flags, align 4
  %1223 = and i32 %1222, 32
  %1224 = icmp ne i32 %1223, 0
  br label %1225

; <label>:1225:                                   ; preds = %1221, %1217
  %1226 = phi i1 [ true, %1217 ], [ %1224, %1221 ]
  %1227 = select i1 %1226, i32 13, i32 0
  br label %1325

; <label>:1228:                                   ; preds = %1213
  %1229 = load i8, i8* %10, align 1
  %1230 = zext i8 %1229 to i32
  %1231 = icmp eq i32 %1230, 117
  br i1 %1231, label %1232, label %1243

; <label>:1232:                                   ; preds = %1228
  %1233 = load i32, i32* @target_flags, align 4
  %1234 = and i32 %1233, 1
  %1235 = icmp ne i32 %1234, 0
  br i1 %1235, label %1240, label %1236

; <label>:1236:                                   ; preds = %1232
  %1237 = load i32, i32* @target_flags, align 4
  %1238 = and i32 %1237, 32
  %1239 = icmp ne i32 %1238, 0
  br label %1240

; <label>:1240:                                   ; preds = %1236, %1232
  %1241 = phi i1 [ true, %1232 ], [ %1239, %1236 ]
  %1242 = select i1 %1241, i32 14, i32 0
  br label %1323

; <label>:1243:                                   ; preds = %1228
  %1244 = load i8, i8* %10, align 1
  %1245 = zext i8 %1244 to i32
  %1246 = icmp eq i32 %1245, 97
  br i1 %1246, label %1247, label %1248

; <label>:1247:                                   ; preds = %1243
  br label %1321

; <label>:1248:                                   ; preds = %1243
  %1249 = load i8, i8* %10, align 1
  %1250 = zext i8 %1249 to i32
  %1251 = icmp eq i32 %1250, 98
  br i1 %1251, label %1252, label %1253

; <label>:1252:                                   ; preds = %1248
  br label %1319

; <label>:1253:                                   ; preds = %1248
  %1254 = load i8, i8* %10, align 1
  %1255 = zext i8 %1254 to i32
  %1256 = icmp eq i32 %1255, 99
  br i1 %1256, label %1257, label %1258

; <label>:1257:                                   ; preds = %1253
  br label %1317

; <label>:1258:                                   ; preds = %1253
  %1259 = load i8, i8* %10, align 1
  %1260 = zext i8 %1259 to i32
  %1261 = icmp eq i32 %1260, 100
  br i1 %1261, label %1262, label %1263

; <label>:1262:                                   ; preds = %1258
  br label %1315

; <label>:1263:                                   ; preds = %1258
  %1264 = load i8, i8* %10, align 1
  %1265 = zext i8 %1264 to i32
  %1266 = icmp eq i32 %1265, 120
  br i1 %1266, label %1267, label %1272

; <label>:1267:                                   ; preds = %1263
  %1268 = load i32, i32* @target_flags, align 4
  %1269 = and i32 %1268, 327680
  %1270 = icmp ne i32 %1269, 0
  %1271 = select i1 %1270, i32 16, i32 0
  br label %1313

; <label>:1272:                                   ; preds = %1263
  %1273 = load i8, i8* %10, align 1
  %1274 = zext i8 %1273 to i32
  %1275 = icmp eq i32 %1274, 89
  br i1 %1275, label %1276, label %1281

; <label>:1276:                                   ; preds = %1272
  %1277 = load i32, i32* @target_flags, align 4
  %1278 = and i32 %1277, 262144
  %1279 = icmp ne i32 %1278, 0
  %1280 = select i1 %1279, i32 16, i32 0
  br label %1311

; <label>:1281:                                   ; preds = %1272
  %1282 = load i8, i8* %10, align 1
  %1283 = zext i8 %1282 to i32
  %1284 = icmp eq i32 %1283, 121
  br i1 %1284, label %1285, label %1290

; <label>:1285:                                   ; preds = %1281
  %1286 = load i32, i32* @target_flags, align 4
  %1287 = and i32 %1286, 16384
  %1288 = icmp ne i32 %1287, 0
  %1289 = select i1 %1288, i32 17, i32 0
  br label %1309

; <label>:1290:                                   ; preds = %1281
  %1291 = load i8, i8* %10, align 1
  %1292 = zext i8 %1291 to i32
  %1293 = icmp eq i32 %1292, 65
  br i1 %1293, label %1294, label %1295

; <label>:1294:                                   ; preds = %1290
  br label %1307

; <label>:1295:                                   ; preds = %1290
  %1296 = load i8, i8* %10, align 1
  %1297 = zext i8 %1296 to i32
  %1298 = icmp eq i32 %1297, 68
  br i1 %1298, label %1299, label %1300

; <label>:1299:                                   ; preds = %1295
  br label %1305

; <label>:1300:                                   ; preds = %1295
  %1301 = load i8, i8* %10, align 1
  %1302 = zext i8 %1301 to i32
  %1303 = icmp eq i32 %1302, 83
  %1304 = select i1 %1303, i32 5, i32 0
  br label %1305

; <label>:1305:                                   ; preds = %1300, %1299
  %1306 = phi i32 [ 6, %1299 ], [ %1304, %1300 ]
  br label %1307

; <label>:1307:                                   ; preds = %1305, %1294
  %1308 = phi i32 [ 7, %1294 ], [ %1306, %1305 ]
  br label %1309

; <label>:1309:                                   ; preds = %1307, %1285
  %1310 = phi i32 [ %1289, %1285 ], [ %1308, %1307 ]
  br label %1311

; <label>:1311:                                   ; preds = %1309, %1276
  %1312 = phi i32 [ %1280, %1276 ], [ %1310, %1309 ]
  br label %1313

; <label>:1313:                                   ; preds = %1311, %1267
  %1314 = phi i32 [ %1271, %1267 ], [ %1312, %1311 ]
  br label %1315

; <label>:1315:                                   ; preds = %1313, %1262
  %1316 = phi i32 [ 2, %1262 ], [ %1314, %1313 ]
  br label %1317

; <label>:1317:                                   ; preds = %1315, %1257
  %1318 = phi i32 [ 3, %1257 ], [ %1316, %1315 ]
  br label %1319

; <label>:1319:                                   ; preds = %1317, %1252
  %1320 = phi i32 [ 4, %1252 ], [ %1318, %1317 ]
  br label %1321

; <label>:1321:                                   ; preds = %1319, %1247
  %1322 = phi i32 [ 1, %1247 ], [ %1320, %1319 ]
  br label %1323

; <label>:1323:                                   ; preds = %1321, %1240
  %1324 = phi i32 [ %1242, %1240 ], [ %1322, %1321 ]
  br label %1325

; <label>:1325:                                   ; preds = %1323, %1225
  %1326 = phi i32 [ %1227, %1225 ], [ %1324, %1323 ]
  br label %1327

; <label>:1327:                                   ; preds = %1325, %1210
  %1328 = phi i32 [ %1212, %1210 ], [ %1326, %1325 ]
  br label %1329

; <label>:1329:                                   ; preds = %1327, %1197
  %1330 = phi i32 [ 8, %1197 ], [ %1328, %1327 ]
  br label %1331

; <label>:1331:                                   ; preds = %1329, %1188
  %1332 = phi i32 [ %1192, %1188 ], [ %1330, %1329 ]
  br label %1333

; <label>:1333:                                   ; preds = %1331, %1183
  %1334 = phi i32 [ 11, %1183 ], [ %1332, %1331 ]
  br label %1335

; <label>:1335:                                   ; preds = %1333, %1178
  %1336 = phi i32 [ 12, %1178 ], [ %1334, %1333 ]
  %1337 = icmp eq i32 %1336, 6
  br i1 %1337, label %1338, label %1342

; <label>:1338:                                   ; preds = %1335, %1171, %1007, %843, %679, %515, %351
  %1339 = load i32, i32* %7, align 4
  %1340 = sext i32 %1339 to i64
  %1341 = getelementptr inbounds [30 x i32], [30 x i32]* %6, i64 0, i64 %1340
  store i32 1, i32* %1341, align 4
  br label %1342

; <label>:1342:                                   ; preds = %1338, %1335
  br label %1343

; <label>:1343:                                   ; preds = %1342, %189, %162, %131, %125, %124, %123, %120
  br label %108

; <label>:1344:                                   ; preds = %118
  br label %1345

; <label>:1345:                                   ; preds = %1344
  %1346 = load i32, i32* %7, align 4
  %1347 = add nsw i32 %1346, 1
  store i32 %1347, i32* %7, align 4
  br label %38

; <label>:1348:                                   ; preds = %38
  %1349 = load i32, i32* %8, align 4
  store i32 %1349, i32* %3, align 4
  br label %1350

; <label>:1350:                                   ; preds = %1348, %18
  %1351 = load i32, i32* %3, align 4
  ret i32 %1351
}

declare %struct.rtx_def* @gen_rtx_SUBREG(i32, %struct.rtx_def*, i32) #1

declare i32 @count_occurrences(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare i32 @operands_match_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @replacement_quality(%struct.rtx_def*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %3, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp ne i32 %8, 61
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

; <label>:11:                                     ; preds = %1
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %13 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 4
  %14 = bitcast %union.varray_data_tag* %13 to [1 x %struct.reg_info_def*]*
  %15 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %16, i64 0, i64 0
  %18 = bitcast %union.rtunion_def* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %14, i64 0, i64 %20
  %22 = load %struct.reg_info_def*, %struct.reg_info_def** %21, align 8
  %23 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %11
  store i32 0, i32* %2, align 4
  br label %45

; <label>:27:                                     ; preds = %11
  %28 = load i32*, i32** @regno_src_regno, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %30, i64 0, i64 0
  %32 = bitcast %union.rtunion_def* %31 to i32*
  %33 = load i32, i32* %32, align 8
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %28, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %27
  store i32 3, i32* %2, align 4
  br label %45

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 53
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %40
  store i32 1, i32* %2, align 4
  br label %45

; <label>:44:                                     ; preds = %40
  store i32 2, i32* %2, align 4
  br label %45

; <label>:45:                                     ; preds = %44, %43, %39, %26, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare i32 @reg_preferred_class(i32) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @regclass_compatible_p(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %65, label %8

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @reg_class_subset_p(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %34, label %16

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %34, label %19

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %34, label %22

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %34, label %25

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 7
  br i1 %27, label %34, label %28

; <label>:28:                                     ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 5
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 6
  br i1 %33, label %34, label %65

; <label>:34:                                     ; preds = %31, %28, %25, %22, %19, %16, %13, %8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @reg_class_subset_p(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %60, label %42

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %60, label %45

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %60, label %48

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %60, label %51

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %60, label %54

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 5
  br i1 %56, label %60, label %57

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 6
  br label %60

; <label>:60:                                     ; preds = %57, %54, %51, %48, %45, %42, %39
  %61 = phi i1 [ true, %54 ], [ true, %51 ], [ true, %48 ], [ true, %45 ], [ true, %42 ], [ true, %39 ], [ %59, %57 ]
  %62 = xor i1 %61, true
  br label %63

; <label>:63:                                     ; preds = %60, %34
  %64 = phi i1 [ false, %34 ], [ %62, %60 ]
  br label %65

; <label>:65:                                     ; preds = %63, %31, %2
  %66 = phi i1 [ true, %31 ], [ true, %2 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fixup_match_1(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, %struct._IO_FILE*) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtx_def*, align 8
  %12 = alloca %struct.rtx_def*, align 8
  %13 = alloca %struct.rtx_def*, align 8
  %14 = alloca %struct.rtx_def*, align 8
  %15 = alloca %struct.rtx_def*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct._IO_FILE*, align 8
  %20 = alloca %struct.rtx_def*, align 8
  %21 = alloca %struct.rtx_def*, align 8
  %22 = alloca %struct.rtx_def*, align 8
  %23 = alloca %struct.rtx_def*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.rtx_def*, align 8
  %31 = alloca %struct.rtx_def*, align 8
  %32 = alloca %struct.rtx_def*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.rtx_def*, align 8
  %36 = alloca %struct.rtx_def*, align 8
  %37 = alloca %struct.rtx_def*, align 8
  %38 = alloca %struct.rtx_def*, align 8
  %39 = alloca %struct.rtx_def*, align 8
  %40 = alloca %struct.rtx_def*, align 8
  %41 = alloca %struct.rtx_def*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca %struct.rtx_def*, align 8
  %45 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %11, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %12, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %13, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %14, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct._IO_FILE* %8, %struct._IO_FILE** %19, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %21, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %22, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 37, i32* %27, align 4
  store i64 0, i64* %28, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %30, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %48 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %46, i32 1, %struct.rtx_def* %47)
  store %struct.rtx_def* %48, %struct.rtx_def** %31, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %32, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %51 = load i32, i32* %50, align 8
  %52 = lshr i32 %51, 26
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %9
  store i32 0, i32* %10, align 4
  br label %1516

; <label>:56:                                     ; preds = %9
  %57 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %58 = icmp ne %struct.rtx_def* %57, null
  br i1 %58, label %133, label %59

; <label>:59:                                     ; preds = %56
  %60 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %61, i64 0, i64 1
  %63 = bitcast %union.rtunion_def* %62 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %63, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 65535
  store i32 %67, i32* %27, align 4
  %68 = load i32, i32* %27, align 4
  %69 = icmp eq i32 %68, 75
  br i1 %69, label %79, label %70

; <label>:70:                                     ; preds = %59
  %71 = load i32, i32* %27, align 4
  %72 = icmp eq i32 %71, 90
  br i1 %72, label %79, label %73

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %27, align 4
  %75 = icmp eq i32 %74, 87
  br i1 %75, label %79, label %76

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %27, align 4
  %78 = icmp eq i32 %77, 89
  br i1 %78, label %79, label %119

; <label>:79:                                     ; preds = %76, %73, %70, %59
  %80 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %81, i64 0, i64 1
  %83 = bitcast %union.rtunion_def* %82 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %83, align 8
  %85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %85, i64 0, i64 0
  %87 = bitcast %union.rtunion_def* %86 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %87, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %90 = icmp eq %struct.rtx_def* %88, %89
  br i1 %90, label %91, label %119

; <label>:91:                                     ; preds = %79
  %92 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %93, i64 0, i64 1
  %95 = bitcast %union.rtunion_def* %94 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %95, align 8
  %97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %97, i64 0, i64 1
  %99 = bitcast %union.rtunion_def* %98 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %99, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 54
  br i1 %104, label %105, label %119

; <label>:105:                                    ; preds = %91
  %106 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %107, i64 0, i64 1
  %109 = bitcast %union.rtunion_def* %108 to %struct.rtx_def**
  %110 = load %struct.rtx_def*, %struct.rtx_def** %109, align 8
  %111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %111, i64 0, i64 1
  %113 = bitcast %union.rtunion_def* %112 to %struct.rtx_def**
  %114 = load %struct.rtx_def*, %struct.rtx_def** %113, align 8
  %115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %115, i64 0, i64 0
  %117 = bitcast %union.rtunion_def* %116 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %28, align 8
  br label %132

; <label>:119:                                    ; preds = %91, %79, %76
  %120 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %121, i64 0, i64 1
  %123 = bitcast %union.rtunion_def* %122 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %123, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %127 = call i32 @stable_and_no_regs_but_for_p(%struct.rtx_def* %124, %struct.rtx_def* %125, %struct.rtx_def* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

; <label>:129:                                    ; preds = %119
  store i32 0, i32* %10, align 4
  br label %1516

; <label>:130:                                    ; preds = %119
  store i32 37, i32* %27, align 4
  br label %131

; <label>:131:                                    ; preds = %130
  br label %132

; <label>:132:                                    ; preds = %131, %105
  br label %133

; <label>:133:                                    ; preds = %132, %56
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %135 = icmp ne %struct._IO_FILE* %134, null
  br i1 %135, label %136, label %146

; <label>:136:                                    ; preds = %133
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %140, i64 0, i64 0
  %142 = bitcast %union.rtunion_def* %141 to i32*
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %18, align 4
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i32 %138, i32 %143, i32 %144)
  br label %146

; <label>:146:                                    ; preds = %136, %133
  %147 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %149 = call %struct.rtx_def* @get_insns()
  %150 = call i32 @reg_is_remote_constant_p(%struct.rtx_def* %147, %struct.rtx_def* %148, %struct.rtx_def* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %146
  store i32 0, i32* %10, align 4
  br label %1516

; <label>:153:                                    ; preds = %146
  store i32 0, i32* %34, align 4
  store i32 0, i32* %33, align 4
  %154 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %155, i64 0, i64 2
  %157 = bitcast %union.rtunion_def* %156 to %struct.rtx_def**
  %158 = load %struct.rtx_def*, %struct.rtx_def** %157, align 8
  store %struct.rtx_def* %158, %struct.rtx_def** %20, align 8
  br label %159

; <label>:159:                                    ; preds = %747, %153
  %160 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %161 = icmp ne %struct.rtx_def* %160, null
  br i1 %161, label %162, label %753

; <label>:162:                                    ; preds = %159
  %163 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %164 = bitcast %struct.rtx_def* %163 to i32*
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, 65535
  %167 = icmp eq i32 %166, 34
  br i1 %167, label %168, label %180

; <label>:168:                                    ; preds = %162
  %169 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %170, i64 0, i64 7
  %172 = bitcast %union.rtunion_def* %171 to %struct.rtx_def**
  %173 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %174, i64 0, i64 0
  %176 = bitcast %union.rtunion_def* %175 to i32*
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %179 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  call void @replace_in_call_usage(%struct.rtx_def** %172, i32 %177, %struct.rtx_def* %178, %struct.rtx_def* %179)
  br label %180

; <label>:180:                                    ; preds = %168, %162
  %181 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %182 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

; <label>:184:                                    ; preds = %180
  br label %753

; <label>:185:                                    ; preds = %180
  %186 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %187 = bitcast %struct.rtx_def* %186 to i32*
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, 65535
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 105
  br i1 %194, label %196, label %195

; <label>:195:                                    ; preds = %185
  br label %747

; <label>:196:                                    ; preds = %185
  br label %197

; <label>:197:                                    ; preds = %196
  %198 = load i32, i32* %33, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %33, align 4
  %200 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %201 = icmp ne %struct.rtx_def* %200, null
  br i1 %201, label %202, label %205

; <label>:202:                                    ; preds = %197
  %203 = load i32, i32* %34, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %34, align 4
  br label %205

; <label>:205:                                    ; preds = %202, %197
  %206 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %207 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %208 = call i32 @reg_set_p(%struct.rtx_def* %206, %struct.rtx_def* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %238, label %210

; <label>:210:                                    ; preds = %205
  %211 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %212 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %213 = call i32 @reg_set_p(%struct.rtx_def* %211, %struct.rtx_def* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %238, label %215

; <label>:215:                                    ; preds = %210
  %216 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %217, i64 0, i64 3
  %219 = bitcast %union.rtunion_def* %218 to %struct.rtx_def**
  %220 = load %struct.rtx_def*, %struct.rtx_def** %219, align 8
  %221 = bitcast %struct.rtx_def* %220 to i32*
  %222 = load i32, i32* %221, align 8
  %223 = and i32 %222, 65535
  %224 = icmp eq i32 %223, 48
  br i1 %224, label %225, label %239

; <label>:225:                                    ; preds = %215
  %226 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %227 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %227, i32 0, i32 1
  %229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %228, i64 0, i64 3
  %230 = bitcast %union.rtunion_def* %229 to %struct.rtx_def**
  %231 = load %struct.rtx_def*, %struct.rtx_def** %230, align 8
  %232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %231, i32 0, i32 1
  %233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %232, i64 0, i64 0
  %234 = bitcast %union.rtunion_def* %233 to %struct.rtx_def**
  %235 = load %struct.rtx_def*, %struct.rtx_def** %234, align 8
  %236 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %226, %struct.rtx_def* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

; <label>:238:                                    ; preds = %225, %210, %205
  br label %753

; <label>:239:                                    ; preds = %225, %215
  %240 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %241 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %242 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %241, i32 0, i32 1
  %243 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %242, i64 0, i64 0
  %244 = bitcast %union.rtunion_def* %243 to i32*
  %245 = load i32, i32* %244, align 8
  %246 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %240, i32 1, i32 %245)
  store %struct.rtx_def* %246, %struct.rtx_def** %32, align 8
  %247 = icmp ne %struct.rtx_def* %246, null
  br i1 %247, label %248, label %688

; <label>:248:                                    ; preds = %239
  %249 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %249, i32 0, i32 1
  %251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %250, i64 0, i64 0
  %252 = bitcast %union.rtunion_def* %251 to %struct.rtx_def**
  %253 = load %struct.rtx_def*, %struct.rtx_def** %252, align 8
  %254 = bitcast %struct.rtx_def* %253 to i32*
  %255 = load i32, i32* %254, align 8
  %256 = lshr i32 %255, 16
  %257 = and i32 %256, 255
  %258 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %259 = bitcast %struct.rtx_def* %258 to i32*
  %260 = load i32, i32* %259, align 8
  %261 = lshr i32 %260, 16
  %262 = and i32 %261, 255
  %263 = icmp eq i32 %257, %262
  br i1 %263, label %264, label %688

; <label>:264:                                    ; preds = %248
  %265 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %266 = icmp ne %struct.rtx_def* %265, null
  br i1 %266, label %267, label %279

; <label>:267:                                    ; preds = %264
  %268 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %269 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %268, i32 0, i32 1
  %270 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %269, i64 0, i64 1
  %271 = bitcast %union.rtunion_def* %270 to %struct.rtx_def**
  %272 = load %struct.rtx_def*, %struct.rtx_def** %271, align 8
  %273 = bitcast %struct.rtx_def* %272 to i32*
  %274 = load i32, i32* %273, align 8
  %275 = lshr i32 %274, 16
  %276 = and i32 %275, 255
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

; <label>:278:                                    ; preds = %267
  br label %753

; <label>:279:                                    ; preds = %267, %264
  %280 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %281 = icmp ne %struct.rtx_def* %280, null
  br i1 %281, label %673, label %282

; <label>:282:                                    ; preds = %279
  store %struct.rtx_def* null, %struct.rtx_def** %36, align 8
  %283 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %284 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %285 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %284, i32 0, i32 1
  %286 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %285, i64 0, i64 3
  %287 = bitcast %union.rtunion_def* %286 to %struct.rtx_def**
  %288 = load %struct.rtx_def*, %struct.rtx_def** %287, align 8
  %289 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %283, %struct.rtx_def* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

; <label>:291:                                    ; preds = %282
  br label %753

; <label>:292:                                    ; preds = %282
  %293 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  store %struct.rtx_def* %293, %struct.rtx_def** %35, align 8
  br label %294

; <label>:294:                                    ; preds = %331, %292
  %295 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %296 = icmp ne %struct.rtx_def* %295, null
  br i1 %296, label %297, label %337

; <label>:297:                                    ; preds = %294
  %298 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %299 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

; <label>:301:                                    ; preds = %297
  store %struct.rtx_def* null, %struct.rtx_def** %35, align 8
  br label %337

; <label>:302:                                    ; preds = %297
  %303 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %304 = bitcast %struct.rtx_def* %303 to i32*
  %305 = load i32, i32* %304, align 8
  %306 = and i32 %305, 65535
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %307
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %310, 105
  br i1 %311, label %313, label %312

; <label>:312:                                    ; preds = %302
  br label %331

; <label>:313:                                    ; preds = %302
  %314 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %315 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %316 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %315, i32 0, i32 1
  %317 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %316, i64 0, i64 3
  %318 = bitcast %union.rtunion_def* %317 to %struct.rtx_def**
  %319 = load %struct.rtx_def*, %struct.rtx_def** %318, align 8
  %320 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %314, %struct.rtx_def* %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %327, label %322

; <label>:322:                                    ; preds = %313
  %323 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %324 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %325 = call i32 @reg_set_p(%struct.rtx_def* %323, %struct.rtx_def* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

; <label>:327:                                    ; preds = %322, %313
  br label %337

; <label>:328:                                    ; preds = %322
  br label %329

; <label>:329:                                    ; preds = %328
  br label %330

; <label>:330:                                    ; preds = %329
  br label %331

; <label>:331:                                    ; preds = %330, %312
  %332 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %333 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %332, i32 0, i32 1
  %334 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %333, i64 0, i64 2
  %335 = bitcast %union.rtunion_def* %334 to %struct.rtx_def**
  %336 = load %struct.rtx_def*, %struct.rtx_def** %335, align 8
  store %struct.rtx_def* %336, %struct.rtx_def** %35, align 8
  br label %294

; <label>:337:                                    ; preds = %327, %301, %294
  %338 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %339 = icmp ne %struct.rtx_def* %338, null
  br i1 %339, label %340, label %379

; <label>:340:                                    ; preds = %337
  %341 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %342 = bitcast %struct.rtx_def* %341 to i32*
  %343 = load i32, i32* %342, align 8
  %344 = and i32 %343, 65535
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %345
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %348, 105
  br i1 %349, label %350, label %376

; <label>:350:                                    ; preds = %340
  %351 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %352 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %351, i32 0, i32 1
  %353 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %352, i64 0, i64 3
  %354 = bitcast %union.rtunion_def* %353 to %struct.rtx_def**
  %355 = load %struct.rtx_def*, %struct.rtx_def** %354, align 8
  %356 = bitcast %struct.rtx_def* %355 to i32*
  %357 = load i32, i32* %356, align 8
  %358 = and i32 %357, 65535
  %359 = icmp eq i32 %358, 47
  br i1 %359, label %360, label %366

; <label>:360:                                    ; preds = %350
  %361 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %362 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %361, i32 0, i32 1
  %363 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %362, i64 0, i64 3
  %364 = bitcast %union.rtunion_def* %363 to %struct.rtx_def**
  %365 = load %struct.rtx_def*, %struct.rtx_def** %364, align 8
  br label %374

; <label>:366:                                    ; preds = %350
  %367 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %368 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %368, i32 0, i32 1
  %370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %369, i64 0, i64 3
  %371 = bitcast %union.rtunion_def* %370 to %struct.rtx_def**
  %372 = load %struct.rtx_def*, %struct.rtx_def** %371, align 8
  %373 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %367, %struct.rtx_def* %372)
  br label %374

; <label>:374:                                    ; preds = %366, %360
  %375 = phi %struct.rtx_def* [ %365, %360 ], [ %373, %366 ]
  br label %377

; <label>:376:                                    ; preds = %340
  br label %377

; <label>:377:                                    ; preds = %376, %374
  %378 = phi %struct.rtx_def* [ %375, %374 ], [ null, %376 ]
  store %struct.rtx_def* %378, %struct.rtx_def** %36, align 8
  br label %379

; <label>:379:                                    ; preds = %377, %337
  %380 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %381 = icmp ne %struct.rtx_def* %380, null
  br i1 %381, label %382, label %435

; <label>:382:                                    ; preds = %379
  %383 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %384 = icmp ne %struct.rtx_def* %383, null
  br i1 %384, label %385, label %435

; <label>:385:                                    ; preds = %382
  %386 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %387 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %386, i32 0, i32 1
  %388 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %387, i64 0, i64 1
  %389 = bitcast %union.rtunion_def* %388 to %struct.rtx_def**
  %390 = load %struct.rtx_def*, %struct.rtx_def** %389, align 8
  %391 = bitcast %struct.rtx_def* %390 to i32*
  %392 = load i32, i32* %391, align 8
  %393 = and i32 %392, 65535
  %394 = load i32, i32* %27, align 4
  %395 = icmp ne i32 %393, %394
  br i1 %395, label %435, label %396

; <label>:396:                                    ; preds = %385
  %397 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %398 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %397, i32 0, i32 1
  %399 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %398, i64 0, i64 1
  %400 = bitcast %union.rtunion_def* %399 to %struct.rtx_def**
  %401 = load %struct.rtx_def*, %struct.rtx_def** %400, align 8
  %402 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %401, i32 0, i32 1
  %403 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %402, i64 0, i64 0
  %404 = bitcast %union.rtunion_def* %403 to %struct.rtx_def**
  %405 = load %struct.rtx_def*, %struct.rtx_def** %404, align 8
  %406 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %407 = icmp ne %struct.rtx_def* %405, %406
  br i1 %407, label %435, label %408

; <label>:408:                                    ; preds = %396
  %409 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %409, i32 0, i32 1
  %411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %410, i64 0, i64 1
  %412 = bitcast %union.rtunion_def* %411 to %struct.rtx_def**
  %413 = load %struct.rtx_def*, %struct.rtx_def** %412, align 8
  %414 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %413, i32 0, i32 1
  %415 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %414, i64 0, i64 1
  %416 = bitcast %union.rtunion_def* %415 to %struct.rtx_def**
  %417 = load %struct.rtx_def*, %struct.rtx_def** %416, align 8
  %418 = bitcast %struct.rtx_def* %417 to i32*
  %419 = load i32, i32* %418, align 8
  %420 = and i32 %419, 65535
  %421 = icmp ne i32 %420, 54
  br i1 %421, label %435, label %422

; <label>:422:                                    ; preds = %408
  %423 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %424 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %423, i32 0, i32 1
  %425 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %424, i64 0, i64 0
  %426 = bitcast %union.rtunion_def* %425 to %struct.rtx_def**
  %427 = load %struct.rtx_def*, %struct.rtx_def** %426, align 8
  %428 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %429 = icmp ne %struct.rtx_def* %427, %428
  br i1 %429, label %430, label %606

; <label>:430:                                    ; preds = %422
  %431 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %432 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %433 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %431, i32 1, %struct.rtx_def* %432)
  %434 = icmp ne %struct.rtx_def* %433, null
  br i1 %434, label %606, label %435

; <label>:435:                                    ; preds = %430, %408, %396, %385, %382, %379
  %436 = load i32, i32* %27, align 4
  %437 = icmp eq i32 %436, 75
  br i1 %437, label %438, label %604

; <label>:438:                                    ; preds = %435
  %439 = load i32, i32* %16, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %604

; <label>:441:                                    ; preds = %438
  %442 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %443 = icmp ne %struct.rtx_def* %442, null
  br i1 %443, label %444, label %591

; <label>:444:                                    ; preds = %441
  %445 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %446 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %445, i32 0, i32 4
  %447 = bitcast %union.varray_data_tag* %446 to [1 x %struct.reg_info_def*]*
  %448 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %448, i32 0, i32 1
  %450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %449, i64 0, i64 0
  %451 = bitcast %union.rtunion_def* %450 to i32*
  %452 = load i32, i32* %451, align 8
  %453 = zext i32 %452 to i64
  %454 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %447, i64 0, i64 %453
  %455 = load %struct.reg_info_def*, %struct.reg_info_def** %454, align 8
  %456 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %455, i32 0, i32 8
  %457 = load i32, i32* %456, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %591, label %459

; <label>:459:                                    ; preds = %444
  %460 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %461 = bitcast %struct.rtx_def* %460 to i32*
  %462 = load i32, i32* %461, align 8
  %463 = and i32 %462, 65535
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %464
  %466 = load i8, i8* %465, align 1
  %467 = sext i8 %466 to i32
  %468 = icmp eq i32 %467, 105
  br i1 %468, label %469, label %495

; <label>:469:                                    ; preds = %459
  %470 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %471 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %470, i32 0, i32 1
  %472 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %471, i64 0, i64 3
  %473 = bitcast %union.rtunion_def* %472 to %struct.rtx_def**
  %474 = load %struct.rtx_def*, %struct.rtx_def** %473, align 8
  %475 = bitcast %struct.rtx_def* %474 to i32*
  %476 = load i32, i32* %475, align 8
  %477 = and i32 %476, 65535
  %478 = icmp eq i32 %477, 47
  br i1 %478, label %479, label %486

; <label>:479:                                    ; preds = %469
  %480 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %481 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %480, i32 0, i32 1
  %482 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %481, i64 0, i64 3
  %483 = bitcast %union.rtunion_def* %482 to %struct.rtx_def**
  %484 = load %struct.rtx_def*, %struct.rtx_def** %483, align 8
  %485 = icmp ne %struct.rtx_def* %484, null
  br i1 %485, label %496, label %591

; <label>:486:                                    ; preds = %469
  %487 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %488 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %489 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %488, i32 0, i32 1
  %490 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %489, i64 0, i64 3
  %491 = bitcast %union.rtunion_def* %490 to %struct.rtx_def**
  %492 = load %struct.rtx_def*, %struct.rtx_def** %491, align 8
  %493 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %487, %struct.rtx_def* %492)
  %494 = icmp ne %struct.rtx_def* %493, null
  br i1 %494, label %496, label %591

; <label>:495:                                    ; preds = %459
  br i1 false, label %496, label %591

; <label>:496:                                    ; preds = %495, %486, %479
  %497 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %498 = bitcast %struct.rtx_def* %497 to i32*
  %499 = load i32, i32* %498, align 8
  %500 = and i32 %499, 65535
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %501
  %503 = load i8, i8* %502, align 1
  %504 = sext i8 %503 to i32
  %505 = icmp eq i32 %504, 105
  br i1 %505, label %506, label %532

; <label>:506:                                    ; preds = %496
  %507 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %508 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %507, i32 0, i32 1
  %509 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %508, i64 0, i64 3
  %510 = bitcast %union.rtunion_def* %509 to %struct.rtx_def**
  %511 = load %struct.rtx_def*, %struct.rtx_def** %510, align 8
  %512 = bitcast %struct.rtx_def* %511 to i32*
  %513 = load i32, i32* %512, align 8
  %514 = and i32 %513, 65535
  %515 = icmp eq i32 %514, 47
  br i1 %515, label %516, label %522

; <label>:516:                                    ; preds = %506
  %517 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %518 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %517, i32 0, i32 1
  %519 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %518, i64 0, i64 3
  %520 = bitcast %union.rtunion_def* %519 to %struct.rtx_def**
  %521 = load %struct.rtx_def*, %struct.rtx_def** %520, align 8
  br label %530

; <label>:522:                                    ; preds = %506
  %523 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %524 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %525 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %524, i32 0, i32 1
  %526 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %525, i64 0, i64 3
  %527 = bitcast %union.rtunion_def* %526 to %struct.rtx_def**
  %528 = load %struct.rtx_def*, %struct.rtx_def** %527, align 8
  %529 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %523, %struct.rtx_def* %528)
  br label %530

; <label>:530:                                    ; preds = %522, %516
  %531 = phi %struct.rtx_def* [ %521, %516 ], [ %529, %522 ]
  br label %533

; <label>:532:                                    ; preds = %496
  br label %533

; <label>:533:                                    ; preds = %532, %530
  %534 = phi %struct.rtx_def* [ %531, %530 ], [ null, %532 ]
  %535 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %534, i32 0, i32 1
  %536 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %535, i64 0, i64 0
  %537 = bitcast %union.rtunion_def* %536 to %struct.rtx_def**
  %538 = load %struct.rtx_def*, %struct.rtx_def** %537, align 8
  %539 = bitcast %struct.rtx_def* %538 to i32*
  %540 = load i32, i32* %539, align 8
  %541 = and i32 %540, 65535
  %542 = icmp eq i32 %541, 61
  br i1 %542, label %543, label %591

; <label>:543:                                    ; preds = %533
  %544 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %545 = bitcast %struct.rtx_def* %544 to i32*
  %546 = load i32, i32* %545, align 8
  %547 = and i32 %546, 65535
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %548
  %550 = load i8, i8* %549, align 1
  %551 = sext i8 %550 to i32
  %552 = icmp eq i32 %551, 105
  br i1 %552, label %553, label %579

; <label>:553:                                    ; preds = %543
  %554 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %555 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %554, i32 0, i32 1
  %556 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %555, i64 0, i64 3
  %557 = bitcast %union.rtunion_def* %556 to %struct.rtx_def**
  %558 = load %struct.rtx_def*, %struct.rtx_def** %557, align 8
  %559 = bitcast %struct.rtx_def* %558 to i32*
  %560 = load i32, i32* %559, align 8
  %561 = and i32 %560, 65535
  %562 = icmp eq i32 %561, 47
  br i1 %562, label %563, label %569

; <label>:563:                                    ; preds = %553
  %564 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %565 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %564, i32 0, i32 1
  %566 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %565, i64 0, i64 3
  %567 = bitcast %union.rtunion_def* %566 to %struct.rtx_def**
  %568 = load %struct.rtx_def*, %struct.rtx_def** %567, align 8
  br label %577

; <label>:569:                                    ; preds = %553
  %570 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %571 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %572 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %571, i32 0, i32 1
  %573 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %572, i64 0, i64 3
  %574 = bitcast %union.rtunion_def* %573 to %struct.rtx_def**
  %575 = load %struct.rtx_def*, %struct.rtx_def** %574, align 8
  %576 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %570, %struct.rtx_def* %575)
  br label %577

; <label>:577:                                    ; preds = %569, %563
  %578 = phi %struct.rtx_def* [ %568, %563 ], [ %576, %569 ]
  br label %580

; <label>:579:                                    ; preds = %543
  br label %580

; <label>:580:                                    ; preds = %579, %577
  %581 = phi %struct.rtx_def* [ %578, %577 ], [ null, %579 ]
  %582 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %581, i32 0, i32 1
  %583 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %582, i64 0, i64 0
  %584 = bitcast %union.rtunion_def* %583 to %struct.rtx_def**
  %585 = load %struct.rtx_def*, %struct.rtx_def** %584, align 8
  %586 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %585, i32 0, i32 1
  %587 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %586, i64 0, i64 0
  %588 = bitcast %union.rtunion_def* %587 to i32*
  %589 = load i32, i32* %588, align 8
  %590 = icmp ult i32 %589, 53
  br i1 %590, label %604, label %591

; <label>:591:                                    ; preds = %580, %533, %495, %486, %479, %444, %441
  %592 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %593 = bitcast %struct.rtx_def* %592 to i32*
  %594 = load i32, i32* %593, align 8
  %595 = lshr i32 %594, 16
  %596 = and i32 %595, 255
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %604

; <label>:598:                                    ; preds = %591
  %599 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  store %struct.rtx_def* %599, %struct.rtx_def** %23, align 8
  %600 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  store %struct.rtx_def* %600, %struct.rtx_def** %35, align 8
  %601 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  store %struct.rtx_def* %601, %struct.rtx_def** %36, align 8
  %602 = load i64, i64* %28, align 8
  %603 = sub nsw i64 0, %602
  store i64 %603, i64* %29, align 8
  store i32 76, i32* %27, align 4
  br label %605

; <label>:604:                                    ; preds = %591, %580, %438, %435
  br label %753

; <label>:605:                                    ; preds = %598
  br label %660

; <label>:606:                                    ; preds = %430, %422
  %607 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %608 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %607, i32 0, i32 1
  %609 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %608, i64 0, i64 1
  %610 = bitcast %union.rtunion_def* %609 to %struct.rtx_def**
  %611 = load %struct.rtx_def*, %struct.rtx_def** %610, align 8
  %612 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %611, i32 0, i32 1
  %613 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %612, i64 0, i64 1
  %614 = bitcast %union.rtunion_def* %613 to %struct.rtx_def**
  %615 = load %struct.rtx_def*, %struct.rtx_def** %614, align 8
  %616 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %615, i32 0, i32 1
  %617 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %616, i64 0, i64 0
  %618 = bitcast %union.rtunion_def* %617 to i64*
  %619 = load i64, i64* %618, align 8
  %620 = load i64, i64* %28, align 8
  %621 = sub nsw i64 %619, %620
  store i64 %621, i64* %29, align 8
  %622 = load i32, i32* %27, align 4
  %623 = icmp ne i32 %622, 75
  br i1 %623, label %624, label %644

; <label>:624:                                    ; preds = %606
  %625 = load i64, i64* %29, align 8
  %626 = icmp slt i64 %625, 0
  br i1 %626, label %643, label %627

; <label>:627:                                    ; preds = %624
  %628 = load i64, i64* %29, align 8
  %629 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %630 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %629, i32 0, i32 1
  %631 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %630, i64 0, i64 1
  %632 = bitcast %union.rtunion_def* %631 to %struct.rtx_def**
  %633 = load %struct.rtx_def*, %struct.rtx_def** %632, align 8
  %634 = bitcast %struct.rtx_def* %633 to i32*
  %635 = load i32, i32* %634, align 8
  %636 = lshr i32 %635, 16
  %637 = and i32 %636, 255
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i64 0, i64 %638
  %640 = load i16, i16* %639, align 2
  %641 = zext i16 %640 to i64
  %642 = icmp uge i64 %628, %641
  br i1 %642, label %643, label %644

; <label>:643:                                    ; preds = %627, %624
  br label %753

; <label>:644:                                    ; preds = %627, %606
  %645 = load i32, i32* %27, align 4
  %646 = icmp eq i32 %645, 75
  br i1 %646, label %647, label %659

; <label>:647:                                    ; preds = %644
  %648 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  store %struct.rtx_def* %648, %struct.rtx_def** %21, align 8
  %649 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %650 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %649, i32 0, i32 1
  %651 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %650, i64 0, i64 0
  %652 = bitcast %union.rtunion_def* %651 to %struct.rtx_def**
  %653 = load %struct.rtx_def*, %struct.rtx_def** %652, align 8
  %654 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %655 = icmp ne %struct.rtx_def* %653, %654
  br i1 %655, label %656, label %658

; <label>:656:                                    ; preds = %647
  %657 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  store %struct.rtx_def* %657, %struct.rtx_def** %22, align 8
  br label %658

; <label>:658:                                    ; preds = %656, %647
  br label %659

; <label>:659:                                    ; preds = %658, %644
  br label %660

; <label>:660:                                    ; preds = %659, %605
  %661 = load %struct.rtx_def*, %struct.rtx_def** %35, align 8
  %662 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %663 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %662, i32 0, i32 1
  %664 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %663, i64 0, i64 1
  %665 = bitcast %union.rtunion_def* %664 to %struct.rtx_def**
  %666 = load %struct.rtx_def*, %struct.rtx_def** %665, align 8
  %667 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %666, i32 0, i32 1
  %668 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %667, i64 0, i64 1
  %669 = bitcast %union.rtunion_def* %668 to %struct.rtx_def**
  %670 = load i64, i64* %29, align 8
  %671 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %670)
  %672 = call i32 @validate_change(%struct.rtx_def* %661, %struct.rtx_def** %669, %struct.rtx_def* %671, i32 1)
  br label %673

; <label>:673:                                    ; preds = %660, %279
  %674 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %675 = load i32, i32* %18, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i64 0, i64 %676
  %678 = load %struct.rtx_def**, %struct.rtx_def*** %677, align 8
  %679 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %680 = call i32 @validate_change(%struct.rtx_def* %674, %struct.rtx_def** %678, %struct.rtx_def* %679, i32 1)
  %681 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %682 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %683 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %684 = call i32 @validate_replace_rtx(%struct.rtx_def* %681, %struct.rtx_def* %682, %struct.rtx_def* %683)
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %687

; <label>:686:                                    ; preds = %673
  store i32 1, i32* %24, align 4
  br label %687

; <label>:687:                                    ; preds = %686, %673
  br label %753

; <label>:688:                                    ; preds = %248, %239
  %689 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %690 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %691 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %690, i32 0, i32 1
  %692 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %691, i64 0, i64 3
  %693 = bitcast %union.rtunion_def* %692 to %struct.rtx_def**
  %694 = load %struct.rtx_def*, %struct.rtx_def** %693, align 8
  %695 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %689, %struct.rtx_def* %694)
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %698

; <label>:697:                                    ; preds = %688
  br label %753

; <label>:698:                                    ; preds = %688
  %699 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %700 = icmp ne %struct.rtx_def* %699, null
  br i1 %700, label %715, label %701

; <label>:701:                                    ; preds = %698
  %702 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %703 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %704 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %703, i32 0, i32 1
  %705 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %704, i64 0, i64 3
  %706 = bitcast %union.rtunion_def* %705 to %struct.rtx_def**
  %707 = load %struct.rtx_def*, %struct.rtx_def** %706, align 8
  %708 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %702, %struct.rtx_def* %707)
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %715

; <label>:710:                                    ; preds = %701
  %711 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  store %struct.rtx_def* %711, %struct.rtx_def** %30, align 8
  %712 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %713 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %714 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %712, i32 1, %struct.rtx_def* %713)
  store %struct.rtx_def* %714, %struct.rtx_def** %31, align 8
  br label %715

; <label>:715:                                    ; preds = %710, %701, %698
  %716 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %717 = bitcast %struct.rtx_def* %716 to i32*
  %718 = load i32, i32* %717, align 8
  %719 = and i32 %718, 65535
  %720 = icmp eq i32 %719, 34
  br i1 %720, label %721, label %746

; <label>:721:                                    ; preds = %715
  %722 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %723 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %722, i32 0, i32 4
  %724 = bitcast %union.varray_data_tag* %723 to [1 x %struct.reg_info_def*]*
  %725 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %726 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %725, i32 0, i32 1
  %727 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %726, i64 0, i64 0
  %728 = bitcast %union.rtunion_def* %727 to i32*
  %729 = load i32, i32* %728, align 8
  %730 = zext i32 %729 to i64
  %731 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %724, i64 0, i64 %730
  %732 = load %struct.reg_info_def*, %struct.reg_info_def** %731, align 8
  %733 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %732, i32 0, i32 8
  %734 = load i32, i32* %733, align 4
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %737

; <label>:736:                                    ; preds = %721
  br label %753

; <label>:737:                                    ; preds = %721
  %738 = load i32, i32* %25, align 4
  %739 = add nsw i32 %738, 1
  store i32 %739, i32* %25, align 4
  %740 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %741 = icmp ne %struct.rtx_def* %740, null
  br i1 %741, label %742, label %745

; <label>:742:                                    ; preds = %737
  %743 = load i32, i32* %26, align 4
  %744 = add nsw i32 %743, 1
  store i32 %744, i32* %26, align 4
  br label %745

; <label>:745:                                    ; preds = %742, %737
  br label %746

; <label>:746:                                    ; preds = %745, %715
  br label %747

; <label>:747:                                    ; preds = %746, %195
  %748 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %749 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %748, i32 0, i32 1
  %750 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %749, i64 0, i64 2
  %751 = bitcast %union.rtunion_def* %750 to %struct.rtx_def**
  %752 = load %struct.rtx_def*, %struct.rtx_def** %751, align 8
  store %struct.rtx_def* %752, %struct.rtx_def** %20, align 8
  br label %159

; <label>:753:                                    ; preds = %736, %697, %687, %643, %604, %291, %278, %238, %184, %159
  %754 = load i32, i32* %24, align 4
  %755 = icmp ne i32 %754, 0
  br i1 %755, label %757, label %756

; <label>:756:                                    ; preds = %753
  store i32 0, i32* %10, align 4
  br label %1516

; <label>:757:                                    ; preds = %753
  %758 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %759 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  call void @remove_note(%struct.rtx_def* %758, %struct.rtx_def* %759)
  %760 = load i32, i32* %27, align 4
  %761 = icmp eq i32 %760, 76
  br i1 %761, label %762, label %811

; <label>:762:                                    ; preds = %757
  %763 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %764 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %763, i32 0, i32 1
  %765 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %764, i64 0, i64 3
  %766 = bitcast %union.rtunion_def* %765 to %struct.rtx_def**
  %767 = load %struct.rtx_def*, %struct.rtx_def** %766, align 8
  %768 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %767)
  %769 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %770 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %768, %struct.rtx_def* %769)
  store %struct.rtx_def* %770, %struct.rtx_def** %21, align 8
  %771 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %772 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %773 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %772, i32 0, i32 1
  %774 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %773, i64 0, i64 1
  %775 = bitcast %union.rtunion_def* %774 to %struct.rtx_def**
  %776 = load %struct.rtx_def*, %struct.rtx_def** %775, align 8
  %777 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %776, i32 0, i32 1
  %778 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %777, i64 0, i64 1
  %779 = bitcast %union.rtunion_def* %778 to %struct.rtx_def**
  %780 = load i64, i64* %28, align 8
  %781 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %780)
  %782 = call i32 @validate_change(%struct.rtx_def* %771, %struct.rtx_def** %779, %struct.rtx_def* %781, i32 0)
  %783 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %784 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %783, i32 0, i32 4
  %785 = bitcast %union.varray_data_tag* %784 to [1 x %struct.reg_info_def*]*
  %786 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %787 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %786, i32 0, i32 1
  %788 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %787, i64 0, i64 0
  %789 = bitcast %union.rtunion_def* %788 to i32*
  %790 = load i32, i32* %789, align 8
  %791 = zext i32 %790 to i64
  %792 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %785, i64 0, i64 %791
  %793 = load %struct.reg_info_def*, %struct.reg_info_def** %792, align 8
  %794 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %793, i32 0, i32 3
  %795 = load i32, i32* %794, align 4
  %796 = add nsw i32 %795, 1
  store i32 %796, i32* %794, align 4
  %797 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %798 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %797, i32 0, i32 4
  %799 = bitcast %union.varray_data_tag* %798 to [1 x %struct.reg_info_def*]*
  %800 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %801 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %800, i32 0, i32 1
  %802 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %801, i64 0, i64 0
  %803 = bitcast %union.rtunion_def* %802 to i32*
  %804 = load i32, i32* %803, align 8
  %805 = zext i32 %804 to i64
  %806 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %799, i64 0, i64 %805
  %807 = load %struct.reg_info_def*, %struct.reg_info_def** %806, align 8
  %808 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %807, i32 0, i32 7
  %809 = load i32, i32* %808, align 4
  %810 = add nsw i32 %809, 1
  store i32 %810, i32* %808, align 4
  br label %811

; <label>:811:                                    ; preds = %762, %757
  %812 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %813 = icmp ne %struct.rtx_def* %812, null
  br i1 %813, label %814, label %873

; <label>:814:                                    ; preds = %811
  %815 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %816 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %815, i32 0, i32 1
  %817 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %816, i64 0, i64 3
  %818 = bitcast %union.rtunion_def* %817 to %struct.rtx_def**
  %819 = load %struct.rtx_def*, %struct.rtx_def** %818, align 8
  store %struct.rtx_def* %819, %struct.rtx_def** %37, align 8
  %820 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %821 = icmp ne %struct.rtx_def* %820, null
  br i1 %821, label %822, label %825

; <label>:822:                                    ; preds = %814
  %823 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %824 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  call void @remove_note(%struct.rtx_def* %823, %struct.rtx_def* %824)
  br label %825

; <label>:825:                                    ; preds = %822, %814
  %826 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %827 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %826, i32 0, i32 1
  %828 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %827, i64 0, i64 6
  %829 = bitcast %union.rtunion_def* %828 to %struct.rtx_def**
  %830 = load %struct.rtx_def*, %struct.rtx_def** %829, align 8
  store %struct.rtx_def* %830, %struct.rtx_def** %38, align 8
  %831 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %832 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %833 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %832, i32 0, i32 1
  %834 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %833, i64 0, i64 1
  %835 = bitcast %union.rtunion_def* %834 to %struct.rtx_def**
  %836 = load %struct.rtx_def*, %struct.rtx_def** %835, align 8
  %837 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  call void @emit_insn_after_with_line_notes(%struct.rtx_def* %831, %struct.rtx_def* %836, %struct.rtx_def* %837)
  %838 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %839 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %838)
  %840 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  store %struct.rtx_def* %840, %struct.rtx_def** %11, align 8
  br label %841

; <label>:841:                                    ; preds = %861, %825
  %842 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %843 = bitcast %struct.rtx_def* %842 to i32*
  %844 = load i32, i32* %843, align 8
  %845 = and i32 %844, 65535
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %846
  %848 = load i8, i8* %847, align 1
  %849 = sext i8 %848 to i32
  %850 = icmp eq i32 %849, 105
  br i1 %850, label %851, label %859

; <label>:851:                                    ; preds = %841
  %852 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %853 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %852, i32 0, i32 1
  %854 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %853, i64 0, i64 3
  %855 = bitcast %union.rtunion_def* %854 to %struct.rtx_def**
  %856 = load %struct.rtx_def*, %struct.rtx_def** %855, align 8
  %857 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %858 = icmp ne %struct.rtx_def* %856, %857
  br label %859

; <label>:859:                                    ; preds = %851, %841
  %860 = phi i1 [ true, %841 ], [ %858, %851 ]
  br i1 %860, label %861, label %867

; <label>:861:                                    ; preds = %859
  %862 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %863 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %862, i32 0, i32 1
  %864 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %863, i64 0, i64 1
  %865 = bitcast %union.rtunion_def* %864 to %struct.rtx_def**
  %866 = load %struct.rtx_def*, %struct.rtx_def** %865, align 8
  store %struct.rtx_def* %866, %struct.rtx_def** %11, align 8
  br label %841

; <label>:867:                                    ; preds = %859
  %868 = load %struct.rtx_def*, %struct.rtx_def** %38, align 8
  %869 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %870 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %869, i32 0, i32 1
  %871 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %870, i64 0, i64 6
  %872 = bitcast %union.rtunion_def* %871 to %struct.rtx_def**
  store %struct.rtx_def* %868, %struct.rtx_def** %872, align 8
  br label %873

; <label>:873:                                    ; preds = %867, %811
  %874 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %875 = icmp ne %struct.rtx_def* %874, null
  br i1 %875, label %1221, label %876

; <label>:876:                                    ; preds = %873
  %877 = load i32, i32* %27, align 4
  %878 = icmp eq i32 %877, 75
  br i1 %878, label %882, label %879

; <label>:879:                                    ; preds = %876
  %880 = load i32, i32* %27, align 4
  %881 = icmp eq i32 %880, 76
  br i1 %881, label %882, label %1221

; <label>:882:                                    ; preds = %879, %876
  %883 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %884 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %883, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %884, %struct.rtx_def** %39, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %41, align 8
  store i32 0, i32* %42, align 4
  store i32 0, i32* %43, align 4
  %885 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %886 = icmp ne %struct.rtx_def* %885, null
  br i1 %886, label %887, label %1220

; <label>:887:                                    ; preds = %882
  %888 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %889 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %888, i32 0, i32 1
  %890 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %889, i64 0, i64 0
  %891 = bitcast %union.rtunion_def* %890 to %struct.rtx_def**
  %892 = load %struct.rtx_def*, %struct.rtx_def** %891, align 8
  %893 = bitcast %struct.rtx_def* %892 to i32*
  %894 = load i32, i32* %893, align 8
  %895 = and i32 %894, 65535
  %896 = icmp eq i32 %895, 67
  br i1 %896, label %967, label %897

; <label>:897:                                    ; preds = %887
  %898 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %899 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %898, i32 0, i32 1
  %900 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %899, i64 0, i64 0
  %901 = bitcast %union.rtunion_def* %900 to %struct.rtx_def**
  %902 = load %struct.rtx_def*, %struct.rtx_def** %901, align 8
  %903 = bitcast %struct.rtx_def* %902 to i32*
  %904 = load i32, i32* %903, align 8
  %905 = and i32 %904, 65535
  %906 = icmp eq i32 %905, 68
  br i1 %906, label %967, label %907

; <label>:907:                                    ; preds = %897
  %908 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %909 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %908, i32 0, i32 1
  %910 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %909, i64 0, i64 0
  %911 = bitcast %union.rtunion_def* %910 to %struct.rtx_def**
  %912 = load %struct.rtx_def*, %struct.rtx_def** %911, align 8
  %913 = bitcast %struct.rtx_def* %912 to i32*
  %914 = load i32, i32* %913, align 8
  %915 = and i32 %914, 65535
  %916 = icmp eq i32 %915, 54
  br i1 %916, label %967, label %917

; <label>:917:                                    ; preds = %907
  %918 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %919 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %918, i32 0, i32 1
  %920 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %919, i64 0, i64 0
  %921 = bitcast %union.rtunion_def* %920 to %struct.rtx_def**
  %922 = load %struct.rtx_def*, %struct.rtx_def** %921, align 8
  %923 = bitcast %struct.rtx_def* %922 to i32*
  %924 = load i32, i32* %923, align 8
  %925 = and i32 %924, 65535
  %926 = icmp eq i32 %925, 55
  br i1 %926, label %967, label %927

; <label>:927:                                    ; preds = %917
  %928 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %929 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %928, i32 0, i32 1
  %930 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %929, i64 0, i64 0
  %931 = bitcast %union.rtunion_def* %930 to %struct.rtx_def**
  %932 = load %struct.rtx_def*, %struct.rtx_def** %931, align 8
  %933 = bitcast %struct.rtx_def* %932 to i32*
  %934 = load i32, i32* %933, align 8
  %935 = and i32 %934, 65535
  %936 = icmp eq i32 %935, 58
  br i1 %936, label %967, label %937

; <label>:937:                                    ; preds = %927
  %938 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %939 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %938, i32 0, i32 1
  %940 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %939, i64 0, i64 0
  %941 = bitcast %union.rtunion_def* %940 to %struct.rtx_def**
  %942 = load %struct.rtx_def*, %struct.rtx_def** %941, align 8
  %943 = bitcast %struct.rtx_def* %942 to i32*
  %944 = load i32, i32* %943, align 8
  %945 = and i32 %944, 65535
  %946 = icmp eq i32 %945, 134
  br i1 %946, label %967, label %947

; <label>:947:                                    ; preds = %937
  %948 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %949 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %948, i32 0, i32 1
  %950 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %949, i64 0, i64 0
  %951 = bitcast %union.rtunion_def* %950 to %struct.rtx_def**
  %952 = load %struct.rtx_def*, %struct.rtx_def** %951, align 8
  %953 = bitcast %struct.rtx_def* %952 to i32*
  %954 = load i32, i32* %953, align 8
  %955 = and i32 %954, 65535
  %956 = icmp eq i32 %955, 56
  br i1 %956, label %967, label %957

; <label>:957:                                    ; preds = %947
  %958 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %959 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %958, i32 0, i32 1
  %960 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %959, i64 0, i64 0
  %961 = bitcast %union.rtunion_def* %960 to %struct.rtx_def**
  %962 = load %struct.rtx_def*, %struct.rtx_def** %961, align 8
  %963 = bitcast %struct.rtx_def* %962 to i32*
  %964 = load i32, i32* %963, align 8
  %965 = and i32 %964, 65535
  %966 = icmp eq i32 %965, 140
  br i1 %966, label %967, label %1220

; <label>:967:                                    ; preds = %957, %947, %937, %927, %917, %907, %897, %887
  %968 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %969 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %968, i32 0, i32 1
  %970 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %969, i64 0, i64 1
  %971 = bitcast %union.rtunion_def* %970 to %struct.rtx_def**
  %972 = load %struct.rtx_def*, %struct.rtx_def** %971, align 8
  store %struct.rtx_def* %972, %struct.rtx_def** %40, align 8
  br label %973

; <label>:973:                                    ; preds = %1059, %967
  %974 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %975 = icmp ne %struct.rtx_def* %974, null
  br i1 %975, label %976, label %1065

; <label>:976:                                    ; preds = %973
  %977 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %978 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %977)
  %979 = icmp ne i32 %978, 0
  br i1 %979, label %980, label %981

; <label>:980:                                    ; preds = %976
  store %struct.rtx_def* null, %struct.rtx_def** %40, align 8
  br label %1065

; <label>:981:                                    ; preds = %976
  %982 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %983 = bitcast %struct.rtx_def* %982 to i32*
  %984 = load i32, i32* %983, align 8
  %985 = and i32 %984, 65535
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %986
  %988 = load i8, i8* %987, align 1
  %989 = sext i8 %988 to i32
  %990 = icmp eq i32 %989, 105
  br i1 %990, label %992, label %991

; <label>:991:                                    ; preds = %981
  br label %1059

; <label>:992:                                    ; preds = %981
  br label %993

; <label>:993:                                    ; preds = %992
  %994 = load i32, i32* %43, align 4
  %995 = add nsw i32 %994, 1
  store i32 %995, i32* %43, align 4
  %996 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %997 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %998 = call i32 @reg_set_p(%struct.rtx_def* %996, %struct.rtx_def* %997)
  %999 = icmp ne i32 %998, 0
  br i1 %999, label %1000, label %1039

; <label>:1000:                                   ; preds = %993
  %1001 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %1002 = bitcast %struct.rtx_def* %1001 to i32*
  %1003 = load i32, i32* %1002, align 8
  %1004 = and i32 %1003, 65535
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %1005
  %1007 = load i8, i8* %1006, align 1
  %1008 = sext i8 %1007 to i32
  %1009 = icmp eq i32 %1008, 105
  br i1 %1009, label %1010, label %1036

; <label>:1010:                                   ; preds = %1000
  %1011 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %1012 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1011, i32 0, i32 1
  %1013 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1012, i64 0, i64 3
  %1014 = bitcast %union.rtunion_def* %1013 to %struct.rtx_def**
  %1015 = load %struct.rtx_def*, %struct.rtx_def** %1014, align 8
  %1016 = bitcast %struct.rtx_def* %1015 to i32*
  %1017 = load i32, i32* %1016, align 8
  %1018 = and i32 %1017, 65535
  %1019 = icmp eq i32 %1018, 47
  br i1 %1019, label %1020, label %1026

; <label>:1020:                                   ; preds = %1010
  %1021 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %1022 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1021, i32 0, i32 1
  %1023 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1022, i64 0, i64 3
  %1024 = bitcast %union.rtunion_def* %1023 to %struct.rtx_def**
  %1025 = load %struct.rtx_def*, %struct.rtx_def** %1024, align 8
  br label %1034

; <label>:1026:                                   ; preds = %1010
  %1027 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %1028 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %1029 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1028, i32 0, i32 1
  %1030 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1029, i64 0, i64 3
  %1031 = bitcast %union.rtunion_def* %1030 to %struct.rtx_def**
  %1032 = load %struct.rtx_def*, %struct.rtx_def** %1031, align 8
  %1033 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %1027, %struct.rtx_def* %1032)
  br label %1034

; <label>:1034:                                   ; preds = %1026, %1020
  %1035 = phi %struct.rtx_def* [ %1025, %1020 ], [ %1033, %1026 ]
  br label %1037

; <label>:1036:                                   ; preds = %1000
  br label %1037

; <label>:1037:                                   ; preds = %1036, %1034
  %1038 = phi %struct.rtx_def* [ %1035, %1034 ], [ null, %1036 ]
  store %struct.rtx_def* %1038, %struct.rtx_def** %41, align 8
  br label %1065

; <label>:1039:                                   ; preds = %993
  %1040 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1041 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %1042 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1041, i32 0, i32 1
  %1043 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1042, i64 0, i64 3
  %1044 = bitcast %union.rtunion_def* %1043 to %struct.rtx_def**
  %1045 = load %struct.rtx_def*, %struct.rtx_def** %1044, align 8
  %1046 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %1040, %struct.rtx_def* %1045)
  %1047 = icmp ne i32 %1046, 0
  br i1 %1047, label %1048, label %1049

; <label>:1048:                                   ; preds = %1039
  store %struct.rtx_def* null, %struct.rtx_def** %40, align 8
  br label %1065

; <label>:1049:                                   ; preds = %1039
  %1050 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %1051 = bitcast %struct.rtx_def* %1050 to i32*
  %1052 = load i32, i32* %1051, align 8
  %1053 = and i32 %1052, 65535
  %1054 = icmp eq i32 %1053, 34
  br i1 %1054, label %1055, label %1058

; <label>:1055:                                   ; preds = %1049
  %1056 = load i32, i32* %42, align 4
  %1057 = add nsw i32 %1056, 1
  store i32 %1057, i32* %42, align 4
  br label %1058

; <label>:1058:                                   ; preds = %1055, %1049
  br label %1059

; <label>:1059:                                   ; preds = %1058, %991
  %1060 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %1061 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1060, i32 0, i32 1
  %1062 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1061, i64 0, i64 1
  %1063 = bitcast %union.rtunion_def* %1062 to %struct.rtx_def**
  %1064 = load %struct.rtx_def*, %struct.rtx_def** %1063, align 8
  store %struct.rtx_def* %1064, %struct.rtx_def** %40, align 8
  br label %973

; <label>:1065:                                   ; preds = %1048, %1037, %980, %973
  %1066 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %1067 = icmp ne %struct.rtx_def* %1066, null
  br i1 %1067, label %1068, label %1219

; <label>:1068:                                   ; preds = %1065
  %1069 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %1070 = icmp ne %struct.rtx_def* %1069, null
  br i1 %1070, label %1071, label %1219

; <label>:1071:                                   ; preds = %1068
  %1072 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %1073 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1072, i32 0, i32 1
  %1074 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1073, i64 0, i64 0
  %1075 = bitcast %union.rtunion_def* %1074 to %struct.rtx_def**
  %1076 = load %struct.rtx_def*, %struct.rtx_def** %1075, align 8
  %1077 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1078 = icmp eq %struct.rtx_def* %1076, %1077
  br i1 %1078, label %1079, label %1219

; <label>:1079:                                   ; preds = %1071
  %1080 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %1081 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1080, i32 0, i32 1
  %1082 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1081, i64 0, i64 1
  %1083 = bitcast %union.rtunion_def* %1082 to %struct.rtx_def**
  %1084 = load %struct.rtx_def*, %struct.rtx_def** %1083, align 8
  %1085 = bitcast %struct.rtx_def* %1084 to i32*
  %1086 = load i32, i32* %1085, align 8
  %1087 = and i32 %1086, 65535
  %1088 = icmp eq i32 %1087, 67
  br i1 %1088, label %1159, label %1089

; <label>:1089:                                   ; preds = %1079
  %1090 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %1091 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1090, i32 0, i32 1
  %1092 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1091, i64 0, i64 1
  %1093 = bitcast %union.rtunion_def* %1092 to %struct.rtx_def**
  %1094 = load %struct.rtx_def*, %struct.rtx_def** %1093, align 8
  %1095 = bitcast %struct.rtx_def* %1094 to i32*
  %1096 = load i32, i32* %1095, align 8
  %1097 = and i32 %1096, 65535
  %1098 = icmp eq i32 %1097, 68
  br i1 %1098, label %1159, label %1099

; <label>:1099:                                   ; preds = %1089
  %1100 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %1101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1100, i32 0, i32 1
  %1102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1101, i64 0, i64 1
  %1103 = bitcast %union.rtunion_def* %1102 to %struct.rtx_def**
  %1104 = load %struct.rtx_def*, %struct.rtx_def** %1103, align 8
  %1105 = bitcast %struct.rtx_def* %1104 to i32*
  %1106 = load i32, i32* %1105, align 8
  %1107 = and i32 %1106, 65535
  %1108 = icmp eq i32 %1107, 54
  br i1 %1108, label %1159, label %1109

; <label>:1109:                                   ; preds = %1099
  %1110 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %1111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1110, i32 0, i32 1
  %1112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1111, i64 0, i64 1
  %1113 = bitcast %union.rtunion_def* %1112 to %struct.rtx_def**
  %1114 = load %struct.rtx_def*, %struct.rtx_def** %1113, align 8
  %1115 = bitcast %struct.rtx_def* %1114 to i32*
  %1116 = load i32, i32* %1115, align 8
  %1117 = and i32 %1116, 65535
  %1118 = icmp eq i32 %1117, 55
  br i1 %1118, label %1159, label %1119

; <label>:1119:                                   ; preds = %1109
  %1120 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %1121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1120, i32 0, i32 1
  %1122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1121, i64 0, i64 1
  %1123 = bitcast %union.rtunion_def* %1122 to %struct.rtx_def**
  %1124 = load %struct.rtx_def*, %struct.rtx_def** %1123, align 8
  %1125 = bitcast %struct.rtx_def* %1124 to i32*
  %1126 = load i32, i32* %1125, align 8
  %1127 = and i32 %1126, 65535
  %1128 = icmp eq i32 %1127, 58
  br i1 %1128, label %1159, label %1129

; <label>:1129:                                   ; preds = %1119
  %1130 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %1131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1130, i32 0, i32 1
  %1132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1131, i64 0, i64 1
  %1133 = bitcast %union.rtunion_def* %1132 to %struct.rtx_def**
  %1134 = load %struct.rtx_def*, %struct.rtx_def** %1133, align 8
  %1135 = bitcast %struct.rtx_def* %1134 to i32*
  %1136 = load i32, i32* %1135, align 8
  %1137 = and i32 %1136, 65535
  %1138 = icmp eq i32 %1137, 134
  br i1 %1138, label %1159, label %1139

; <label>:1139:                                   ; preds = %1129
  %1140 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %1141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1140, i32 0, i32 1
  %1142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1141, i64 0, i64 1
  %1143 = bitcast %union.rtunion_def* %1142 to %struct.rtx_def**
  %1144 = load %struct.rtx_def*, %struct.rtx_def** %1143, align 8
  %1145 = bitcast %struct.rtx_def* %1144 to i32*
  %1146 = load i32, i32* %1145, align 8
  %1147 = and i32 %1146, 65535
  %1148 = icmp eq i32 %1147, 56
  br i1 %1148, label %1159, label %1149

; <label>:1149:                                   ; preds = %1139
  %1150 = load %struct.rtx_def*, %struct.rtx_def** %41, align 8
  %1151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1150, i32 0, i32 1
  %1152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1151, i64 0, i64 1
  %1153 = bitcast %union.rtunion_def* %1152 to %struct.rtx_def**
  %1154 = load %struct.rtx_def*, %struct.rtx_def** %1153, align 8
  %1155 = bitcast %struct.rtx_def* %1154 to i32*
  %1156 = load i32, i32* %1155, align 8
  %1157 = and i32 %1156, 65535
  %1158 = icmp eq i32 %1157, 140
  br i1 %1158, label %1159, label %1219

; <label>:1159:                                   ; preds = %1149, %1139, %1129, %1119, %1109, %1099, %1089, %1079
  %1160 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %1161 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %1162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1161, i32 0, i32 1
  %1163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1162, i64 0, i64 1
  %1164 = bitcast %union.rtunion_def* %1163 to %struct.rtx_def**
  %1165 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %1166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1165, i32 0, i32 1
  %1167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1166, i64 0, i64 0
  %1168 = bitcast %union.rtunion_def* %1167 to %struct.rtx_def**
  %1169 = load %struct.rtx_def*, %struct.rtx_def** %1168, align 8
  %1170 = call i32 @validate_change(%struct.rtx_def* %1160, %struct.rtx_def** %1164, %struct.rtx_def* %1169, i32 0)
  %1171 = icmp ne i32 %1170, 0
  br i1 %1171, label %1172, label %1219

; <label>:1172:                                   ; preds = %1159
  %1173 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  %1174 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %1173)
  %1175 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1176 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1175, i32 0, i32 4
  %1177 = bitcast %union.varray_data_tag* %1176 to [1 x %struct.reg_info_def*]*
  %1178 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1178, i32 0, i32 1
  %1180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1179, i64 0, i64 0
  %1181 = bitcast %union.rtunion_def* %1180 to i32*
  %1182 = load i32, i32* %1181, align 8
  %1183 = zext i32 %1182 to i64
  %1184 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1177, i64 0, i64 %1183
  %1185 = load %struct.reg_info_def*, %struct.reg_info_def** %1184, align 8
  %1186 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1185, i32 0, i32 3
  %1187 = load i32, i32* %1186, align 4
  %1188 = add nsw i32 %1187, -1
  store i32 %1188, i32* %1186, align 4
  %1189 = load i32, i32* %42, align 4
  %1190 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1191 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1190, i32 0, i32 4
  %1192 = bitcast %union.varray_data_tag* %1191 to [1 x %struct.reg_info_def*]*
  %1193 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1193, i32 0, i32 1
  %1195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1194, i64 0, i64 0
  %1196 = bitcast %union.rtunion_def* %1195 to i32*
  %1197 = load i32, i32* %1196, align 8
  %1198 = zext i32 %1197 to i64
  %1199 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1192, i64 0, i64 %1198
  %1200 = load %struct.reg_info_def*, %struct.reg_info_def** %1199, align 8
  %1201 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1200, i32 0, i32 8
  %1202 = load i32, i32* %1201, align 4
  %1203 = sub nsw i32 %1202, %1189
  store i32 %1203, i32* %1201, align 4
  %1204 = load i32, i32* %43, align 4
  %1205 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1206 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1205, i32 0, i32 4
  %1207 = bitcast %union.varray_data_tag* %1206 to [1 x %struct.reg_info_def*]*
  %1208 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1208, i32 0, i32 1
  %1210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1209, i64 0, i64 0
  %1211 = bitcast %union.rtunion_def* %1210 to i32*
  %1212 = load i32, i32* %1211, align 8
  %1213 = zext i32 %1212 to i64
  %1214 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1207, i64 0, i64 %1213
  %1215 = load %struct.reg_info_def*, %struct.reg_info_def** %1214, align 8
  %1216 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1215, i32 0, i32 7
  %1217 = load i32, i32* %1216, align 4
  %1218 = sub nsw i32 %1217, %1204
  store i32 %1218, i32* %1216, align 4
  store i64 0, i64* %28, align 8
  br label %1219

; <label>:1219:                                   ; preds = %1172, %1159, %1149, %1071, %1068, %1065
  br label %1220

; <label>:1220:                                   ; preds = %1219, %957, %882
  br label %1221

; <label>:1221:                                   ; preds = %1220, %879, %873
  %1222 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %1223 = icmp ne %struct.rtx_def* %1222, null
  br i1 %1223, label %1224, label %1322

; <label>:1224:                                   ; preds = %1221
  %1225 = load i32, i32* %27, align 4
  %1226 = icmp eq i32 %1225, 75
  br i1 %1226, label %1227, label %1322

; <label>:1227:                                   ; preds = %1224
  br i1 false, label %1228, label %1322

; <label>:1228:                                   ; preds = %1227
  %1229 = load i64, i64* %29, align 8
  %1230 = icmp slt i64 %1229, 0
  br i1 %1230, label %1231, label %1322

; <label>:1231:                                   ; preds = %1228
  %1232 = load i64, i64* %29, align 8
  %1233 = icmp sge i64 %1232, -16
  br i1 %1233, label %1234, label %1322

; <label>:1234:                                   ; preds = %1231
  %1235 = load i64, i64* %29, align 8
  %1236 = call i32 @exact_log2_wide(i64 %1235)
  %1237 = icmp ne i32 %1236, 0
  br i1 %1237, label %1238, label %1322

; <label>:1238:                                   ; preds = %1234
  %1239 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %1240 = icmp ne %struct.rtx_def* %1239, null
  br i1 %1240, label %1241, label %1247

; <label>:1241:                                   ; preds = %1238
  %1242 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %1243 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1242, i32 0, i32 1
  %1244 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1243, i64 0, i64 0
  %1245 = bitcast %union.rtunion_def* %1244 to %struct.rtx_def**
  %1246 = load %struct.rtx_def*, %struct.rtx_def** %1245, align 8
  br label %1249

; <label>:1247:                                   ; preds = %1238
  %1248 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  br label %1249

; <label>:1249:                                   ; preds = %1247, %1241
  %1250 = phi %struct.rtx_def* [ %1246, %1241 ], [ %1248, %1247 ]
  store %struct.rtx_def* %1250, %struct.rtx_def** %45, align 8
  %1251 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  store %struct.rtx_def* %1251, %struct.rtx_def** %44, align 8
  br label %1252

; <label>:1252:                                   ; preds = %1320, %1274, %1249
  %1253 = load %struct.rtx_def*, %struct.rtx_def** %44, align 8
  %1254 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1253, i32 0, i32 1
  %1255 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1254, i64 0, i64 2
  %1256 = bitcast %union.rtunion_def* %1255 to %struct.rtx_def**
  %1257 = load %struct.rtx_def*, %struct.rtx_def** %1256, align 8
  store %struct.rtx_def* %1257, %struct.rtx_def** %44, align 8
  %1258 = icmp ne %struct.rtx_def* %1257, null
  br i1 %1258, label %1259, label %1321

; <label>:1259:                                   ; preds = %1252
  %1260 = load %struct.rtx_def*, %struct.rtx_def** %44, align 8
  %1261 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %1260)
  %1262 = icmp ne i32 %1261, 0
  br i1 %1262, label %1263, label %1264

; <label>:1263:                                   ; preds = %1259
  br label %1321

; <label>:1264:                                   ; preds = %1259
  %1265 = load %struct.rtx_def*, %struct.rtx_def** %44, align 8
  %1266 = bitcast %struct.rtx_def* %1265 to i32*
  %1267 = load i32, i32* %1266, align 8
  %1268 = and i32 %1267, 65535
  %1269 = sext i32 %1268 to i64
  %1270 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %1269
  %1271 = load i8, i8* %1270, align 1
  %1272 = sext i8 %1271 to i32
  %1273 = icmp eq i32 %1272, 105
  br i1 %1273, label %1275, label %1274

; <label>:1274:                                   ; preds = %1264
  br label %1252

; <label>:1275:                                   ; preds = %1264
  %1276 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1277 = load %struct.rtx_def*, %struct.rtx_def** %45, align 8
  %1278 = icmp ne %struct.rtx_def* %1276, %1277
  br i1 %1278, label %1279, label %1294

; <label>:1279:                                   ; preds = %1275
  %1280 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1281 = load %struct.rtx_def*, %struct.rtx_def** %44, align 8
  %1282 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1281, i32 0, i32 1
  %1283 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1282, i64 0, i64 3
  %1284 = bitcast %union.rtunion_def* %1283 to %struct.rtx_def**
  %1285 = load %struct.rtx_def*, %struct.rtx_def** %1284, align 8
  %1286 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %1280, %struct.rtx_def* %1285)
  %1287 = icmp ne i32 %1286, 0
  br i1 %1287, label %1293, label %1288

; <label>:1288:                                   ; preds = %1279
  %1289 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1290 = load %struct.rtx_def*, %struct.rtx_def** %44, align 8
  %1291 = call i32 @reg_set_p(%struct.rtx_def* %1289, %struct.rtx_def* %1290)
  %1292 = icmp ne i32 %1291, 0
  br i1 %1292, label %1293, label %1294

; <label>:1293:                                   ; preds = %1288, %1279
  br label %1321

; <label>:1294:                                   ; preds = %1288, %1275
  %1295 = load %struct.rtx_def*, %struct.rtx_def** %45, align 8
  %1296 = load %struct.rtx_def*, %struct.rtx_def** %44, align 8
  %1297 = call i32 @reg_set_p(%struct.rtx_def* %1295, %struct.rtx_def* %1296)
  %1298 = icmp ne i32 %1297, 0
  br i1 %1298, label %1299, label %1300

; <label>:1299:                                   ; preds = %1294
  br label %1321

; <label>:1300:                                   ; preds = %1294
  %1301 = load %struct.rtx_def*, %struct.rtx_def** %45, align 8
  %1302 = load %struct.rtx_def*, %struct.rtx_def** %44, align 8
  %1303 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1302, i32 0, i32 1
  %1304 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1303, i64 0, i64 3
  %1305 = bitcast %union.rtunion_def* %1304 to %struct.rtx_def**
  %1306 = load %struct.rtx_def*, %struct.rtx_def** %1305, align 8
  %1307 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %1301, %struct.rtx_def* %1306)
  %1308 = icmp ne i32 %1307, 0
  br i1 %1308, label %1309, label %1316

; <label>:1309:                                   ; preds = %1300
  %1310 = load %struct.rtx_def*, %struct.rtx_def** %44, align 8
  %1311 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %1312 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %1313 = load %struct.rtx_def*, %struct.rtx_def** %45, align 8
  %1314 = load i64, i64* %29, align 8
  %1315 = call i32 @try_auto_increment(%struct.rtx_def* %1310, %struct.rtx_def* %1311, %struct.rtx_def* %1312, %struct.rtx_def* %1313, i64 %1314, i32 1)
  br label %1321

; <label>:1316:                                   ; preds = %1300
  br label %1317

; <label>:1317:                                   ; preds = %1316
  br label %1318

; <label>:1318:                                   ; preds = %1317
  br label %1319

; <label>:1319:                                   ; preds = %1318
  br label %1320

; <label>:1320:                                   ; preds = %1319
  br label %1252

; <label>:1321:                                   ; preds = %1309, %1299, %1293, %1263, %1252
  br label %1322

; <label>:1322:                                   ; preds = %1321, %1234, %1231, %1228, %1227, %1224, %1221
  %1323 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %1324 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %1325 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1324, i32 0, i32 1
  %1326 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1325, i64 0, i64 3
  %1327 = bitcast %union.rtunion_def* %1326 to %struct.rtx_def**
  %1328 = load %struct.rtx_def*, %struct.rtx_def** %1327, align 8
  %1329 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %1323, %struct.rtx_def* %1328)
  %1330 = icmp ne i32 %1329, 0
  br i1 %1330, label %1331, label %1346

; <label>:1331:                                   ; preds = %1322
  %1332 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %1333 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1332, i32 0, i32 1
  %1334 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1333, i64 0, i64 6
  %1335 = bitcast %union.rtunion_def* %1334 to %struct.rtx_def**
  %1336 = load %struct.rtx_def*, %struct.rtx_def** %1335, align 8
  %1337 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %1338 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1337, i32 0, i32 1
  %1339 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1338, i64 0, i64 1
  %1340 = bitcast %union.rtunion_def* %1339 to %struct.rtx_def**
  store %struct.rtx_def* %1336, %struct.rtx_def** %1340, align 8
  %1341 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %1342 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %1343 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1342, i32 0, i32 1
  %1344 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1343, i64 0, i64 6
  %1345 = bitcast %union.rtunion_def* %1344 to %struct.rtx_def**
  store %struct.rtx_def* %1341, %struct.rtx_def** %1345, align 8
  br label %1346

; <label>:1346:                                   ; preds = %1331, %1322
  %1347 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %1348 = icmp ne %struct.rtx_def* %1347, null
  br i1 %1348, label %1349, label %1385

; <label>:1349:                                   ; preds = %1346
  %1350 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %1351 = icmp ne %struct.rtx_def* %1350, null
  br i1 %1351, label %1355, label %1352

; <label>:1352:                                   ; preds = %1349
  %1353 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %1354 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  call void @remove_note(%struct.rtx_def* %1353, %struct.rtx_def* %1354)
  br label %1355

; <label>:1355:                                   ; preds = %1352, %1349
  %1356 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %1357 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1356, i32 0, i32 1
  %1358 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1357, i64 0, i64 6
  %1359 = bitcast %union.rtunion_def* %1358 to %struct.rtx_def**
  %1360 = load %struct.rtx_def*, %struct.rtx_def** %1359, align 8
  %1361 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %1362 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1361, i32 0, i32 1
  %1363 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1362, i64 0, i64 1
  %1364 = bitcast %union.rtunion_def* %1363 to %struct.rtx_def**
  store %struct.rtx_def* %1360, %struct.rtx_def** %1364, align 8
  %1365 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %1366 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %1367 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1366, i32 0, i32 1
  %1368 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1367, i64 0, i64 6
  %1369 = bitcast %union.rtunion_def* %1368 to %struct.rtx_def**
  store %struct.rtx_def* %1365, %struct.rtx_def** %1369, align 8
  %1370 = load i32, i32* %26, align 4
  %1371 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1372 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1371, i32 0, i32 4
  %1373 = bitcast %union.varray_data_tag* %1372 to [1 x %struct.reg_info_def*]*
  %1374 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1375 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1374, i32 0, i32 1
  %1376 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1375, i64 0, i64 0
  %1377 = bitcast %union.rtunion_def* %1376 to i32*
  %1378 = load i32, i32* %1377, align 8
  %1379 = zext i32 %1378 to i64
  %1380 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1373, i64 0, i64 %1379
  %1381 = load %struct.reg_info_def*, %struct.reg_info_def** %1380, align 8
  %1382 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1381, i32 0, i32 8
  %1383 = load i32, i32* %1382, align 4
  %1384 = add nsw i32 %1383, %1370
  store i32 %1384, i32* %1382, align 4
  br label %1385

; <label>:1385:                                   ; preds = %1355, %1346
  %1386 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1387 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1386, i32 0, i32 4
  %1388 = bitcast %union.varray_data_tag* %1387 to [1 x %struct.reg_info_def*]*
  %1389 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1390 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1389, i32 0, i32 1
  %1391 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1390, i64 0, i64 0
  %1392 = bitcast %union.rtunion_def* %1391 to i32*
  %1393 = load i32, i32* %1392, align 8
  %1394 = zext i32 %1393 to i64
  %1395 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1388, i64 0, i64 %1394
  %1396 = load %struct.reg_info_def*, %struct.reg_info_def** %1395, align 8
  %1397 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1396, i32 0, i32 3
  %1398 = load i32, i32* %1397, align 4
  %1399 = add nsw i32 %1398, 1
  store i32 %1399, i32* %1397, align 4
  %1400 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1401 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1400, i32 0, i32 4
  %1402 = bitcast %union.varray_data_tag* %1401 to [1 x %struct.reg_info_def*]*
  %1403 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %1404 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1403, i32 0, i32 1
  %1405 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1404, i64 0, i64 0
  %1406 = bitcast %union.rtunion_def* %1405 to i32*
  %1407 = load i32, i32* %1406, align 8
  %1408 = zext i32 %1407 to i64
  %1409 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1402, i64 0, i64 %1408
  %1410 = load %struct.reg_info_def*, %struct.reg_info_def** %1409, align 8
  %1411 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1410, i32 0, i32 3
  %1412 = load i32, i32* %1411, align 4
  %1413 = add nsw i32 %1412, -1
  store i32 %1413, i32* %1411, align 4
  %1414 = load i32, i32* %25, align 4
  %1415 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1416 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1415, i32 0, i32 4
  %1417 = bitcast %union.varray_data_tag* %1416 to [1 x %struct.reg_info_def*]*
  %1418 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %1419 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1418, i32 0, i32 1
  %1420 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1419, i64 0, i64 0
  %1421 = bitcast %union.rtunion_def* %1420 to i32*
  %1422 = load i32, i32* %1421, align 8
  %1423 = zext i32 %1422 to i64
  %1424 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1417, i64 0, i64 %1423
  %1425 = load %struct.reg_info_def*, %struct.reg_info_def** %1424, align 8
  %1426 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1425, i32 0, i32 8
  %1427 = load i32, i32* %1426, align 4
  %1428 = sub nsw i32 %1427, %1414
  store i32 %1428, i32* %1426, align 4
  %1429 = load i32, i32* %34, align 4
  %1430 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1431 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1430, i32 0, i32 4
  %1432 = bitcast %union.varray_data_tag* %1431 to [1 x %struct.reg_info_def*]*
  %1433 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %1434 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1433, i32 0, i32 1
  %1435 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1434, i64 0, i64 0
  %1436 = bitcast %union.rtunion_def* %1435 to i32*
  %1437 = load i32, i32* %1436, align 8
  %1438 = zext i32 %1437 to i64
  %1439 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1432, i64 0, i64 %1438
  %1440 = load %struct.reg_info_def*, %struct.reg_info_def** %1439, align 8
  %1441 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1440, i32 0, i32 7
  %1442 = load i32, i32* %1441, align 4
  %1443 = add nsw i32 %1442, %1429
  store i32 %1443, i32* %1441, align 4
  %1444 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1445 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1444, i32 0, i32 4
  %1446 = bitcast %union.varray_data_tag* %1445 to [1 x %struct.reg_info_def*]*
  %1447 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %1448 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1447, i32 0, i32 1
  %1449 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1448, i64 0, i64 0
  %1450 = bitcast %union.rtunion_def* %1449 to i32*
  %1451 = load i32, i32* %1450, align 8
  %1452 = zext i32 %1451 to i64
  %1453 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1446, i64 0, i64 %1452
  %1454 = load %struct.reg_info_def*, %struct.reg_info_def** %1453, align 8
  %1455 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1454, i32 0, i32 7
  %1456 = load i32, i32* %1455, align 4
  %1457 = icmp sge i32 %1456, 0
  br i1 %1457, label %1458, label %1502

; <label>:1458:                                   ; preds = %1385
  %1459 = load i32, i32* %33, align 4
  %1460 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1461 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1460, i32 0, i32 4
  %1462 = bitcast %union.varray_data_tag* %1461 to [1 x %struct.reg_info_def*]*
  %1463 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %1464 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1463, i32 0, i32 1
  %1465 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1464, i64 0, i64 0
  %1466 = bitcast %union.rtunion_def* %1465 to i32*
  %1467 = load i32, i32* %1466, align 8
  %1468 = zext i32 %1467 to i64
  %1469 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1462, i64 0, i64 %1468
  %1470 = load %struct.reg_info_def*, %struct.reg_info_def** %1469, align 8
  %1471 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1470, i32 0, i32 7
  %1472 = load i32, i32* %1471, align 4
  %1473 = sub nsw i32 %1472, %1459
  store i32 %1473, i32* %1471, align 4
  %1474 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1475 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1474, i32 0, i32 4
  %1476 = bitcast %union.varray_data_tag* %1475 to [1 x %struct.reg_info_def*]*
  %1477 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %1478 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1477, i32 0, i32 1
  %1479 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1478, i64 0, i64 0
  %1480 = bitcast %union.rtunion_def* %1479 to i32*
  %1481 = load i32, i32* %1480, align 8
  %1482 = zext i32 %1481 to i64
  %1483 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1476, i64 0, i64 %1482
  %1484 = load %struct.reg_info_def*, %struct.reg_info_def** %1483, align 8
  %1485 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1484, i32 0, i32 7
  %1486 = load i32, i32* %1485, align 4
  %1487 = icmp slt i32 %1486, 2
  br i1 %1487, label %1488, label %1501

; <label>:1488:                                   ; preds = %1458
  %1489 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %1490 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1489, i32 0, i32 4
  %1491 = bitcast %union.varray_data_tag* %1490 to [1 x %struct.reg_info_def*]*
  %1492 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %1493 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1492, i32 0, i32 1
  %1494 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1493, i64 0, i64 0
  %1495 = bitcast %union.rtunion_def* %1494 to i32*
  %1496 = load i32, i32* %1495, align 8
  %1497 = zext i32 %1496 to i64
  %1498 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %1491, i64 0, i64 %1497
  %1499 = load %struct.reg_info_def*, %struct.reg_info_def** %1498, align 8
  %1500 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %1499, i32 0, i32 7
  store i32 2, i32* %1500, align 4
  br label %1501

; <label>:1501:                                   ; preds = %1488, %1458
  br label %1502

; <label>:1502:                                   ; preds = %1501, %1385
  %1503 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %1504 = icmp ne %struct._IO_FILE* %1503, null
  br i1 %1504, label %1505, label %1515

; <label>:1505:                                   ; preds = %1502
  %1506 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %1507 = load i32, i32* %17, align 4
  %1508 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %1509 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1508, i32 0, i32 1
  %1510 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %1509, i64 0, i64 0
  %1511 = bitcast %union.rtunion_def* %1510 to i32*
  %1512 = load i32, i32* %1511, align 8
  %1513 = load i32, i32* %18, align 4
  %1514 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1506, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i32 %1507, i32 %1512, i32 %1513)
  br label %1515

; <label>:1515:                                   ; preds = %1505, %1502
  store i32 1, i32* %10, align 4
  br label %1516

; <label>:1516:                                   ; preds = %1515, %756, %152, %129, %55
  %1517 = load i32, i32* %10, align 4
  ret i32 %1517
}

declare i32 @reg_set_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @fixup_match_2(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct._IO_FILE*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca %struct.rtx_def*, align 8
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca %struct.rtx_def*, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca %struct.rtx_def*, align 8
  %13 = alloca %struct.rtx_def*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtx_def*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %7, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %8, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %9, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %10, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %11, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %13, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %21, i64 0, i64 0
  %23 = bitcast %union.rtunion_def* %22 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %19, i32 1, i32 %24)
  %26 = icmp ne %struct.rtx_def* %25, null
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %5
  store i32 0, i32* %6, align 4
  br label %321

; <label>:28:                                     ; preds = %5
  store i32 0, i32* %14, align 4
  %29 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %30, i64 0, i64 1
  %32 = bitcast %union.rtunion_def* %31 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %12, align 8
  br label %34

; <label>:34:                                     ; preds = %314, %28
  %35 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %36 = icmp ne %struct.rtx_def* %35, null
  br i1 %36, label %37, label %320

; <label>:37:                                     ; preds = %34
  %38 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %39 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %37
  br label %320

; <label>:42:                                     ; preds = %37
  %43 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 65535
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 105
  br i1 %51, label %53, label %52

; <label>:52:                                     ; preds = %42
  br label %314

; <label>:53:                                     ; preds = %42
  br label %54

; <label>:54:                                     ; preds = %53
  %55 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %57, i64 0, i64 0
  %59 = bitcast %union.rtunion_def* %58 to i32*
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %55, i32 1, i32 %60)
  %62 = icmp ne %struct.rtx_def* %61, null
  br i1 %62, label %63, label %65

; <label>:63:                                     ; preds = %54
  %64 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  store %struct.rtx_def* %64, %struct.rtx_def** %13, align 8
  br label %65

; <label>:65:                                     ; preds = %63, %54
  %66 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %67 = icmp ne %struct.rtx_def* %66, null
  br i1 %67, label %71, label %68

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %71

; <label>:71:                                     ; preds = %68, %65
  %72 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, 65535
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 105
  br i1 %80, label %81, label %107

; <label>:81:                                     ; preds = %71
  %82 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %83, i64 0, i64 3
  %85 = bitcast %union.rtunion_def* %84 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %85, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 47
  br i1 %90, label %91, label %97

; <label>:91:                                     ; preds = %81
  %92 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %93, i64 0, i64 3
  %95 = bitcast %union.rtunion_def* %94 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %95, align 8
  br label %105

; <label>:97:                                     ; preds = %81
  %98 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %100, i64 0, i64 3
  %102 = bitcast %union.rtunion_def* %101 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %102, align 8
  %104 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %98, %struct.rtx_def* %103)
  br label %105

; <label>:105:                                    ; preds = %97, %91
  %106 = phi %struct.rtx_def* [ %96, %91 ], [ %104, %97 ]
  br label %108

; <label>:107:                                    ; preds = %71
  br label %108

; <label>:108:                                    ; preds = %107, %105
  %109 = phi %struct.rtx_def* [ %106, %105 ], [ null, %107 ]
  store %struct.rtx_def* %109, %struct.rtx_def** %16, align 8
  %110 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %111 = icmp ne %struct.rtx_def* %110, null
  br i1 %111, label %112, label %246

; <label>:112:                                    ; preds = %108
  %113 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %114, i64 0, i64 0
  %116 = bitcast %union.rtunion_def* %115 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %116, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %119 = icmp eq %struct.rtx_def* %117, %118
  br i1 %119, label %120, label %246

; <label>:120:                                    ; preds = %112
  %121 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %121, i32 0, i32 1
  %123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %122, i64 0, i64 1
  %124 = bitcast %union.rtunion_def* %123 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %124, align 8
  %126 = bitcast %struct.rtx_def* %125 to i32*
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 75
  br i1 %129, label %130, label %246

; <label>:130:                                    ; preds = %120
  %131 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %132, i64 0, i64 1
  %134 = bitcast %union.rtunion_def* %133 to %struct.rtx_def**
  %135 = load %struct.rtx_def*, %struct.rtx_def** %134, align 8
  %136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %136, i64 0, i64 0
  %138 = bitcast %union.rtunion_def* %137 to %struct.rtx_def**
  %139 = load %struct.rtx_def*, %struct.rtx_def** %138, align 8
  %140 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %141 = icmp eq %struct.rtx_def* %139, %140
  br i1 %141, label %142, label %246

; <label>:142:                                    ; preds = %130
  %143 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %144, i64 0, i64 1
  %146 = bitcast %union.rtunion_def* %145 to %struct.rtx_def**
  %147 = load %struct.rtx_def*, %struct.rtx_def** %146, align 8
  %148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %148, i64 0, i64 1
  %150 = bitcast %union.rtunion_def* %149 to %struct.rtx_def**
  %151 = load %struct.rtx_def*, %struct.rtx_def** %150, align 8
  %152 = bitcast %struct.rtx_def* %151 to i32*
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 54
  br i1 %155, label %156, label %246

; <label>:156:                                    ; preds = %142
  %157 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %158, i64 0, i64 0
  %160 = bitcast %union.rtunion_def* %159 to i64*
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %163, i64 0, i64 1
  %165 = bitcast %union.rtunion_def* %164 to %struct.rtx_def**
  %166 = load %struct.rtx_def*, %struct.rtx_def** %165, align 8
  %167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %166, i32 0, i32 1
  %168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %167, i64 0, i64 1
  %169 = bitcast %union.rtunion_def* %168 to %struct.rtx_def**
  %170 = load %struct.rtx_def*, %struct.rtx_def** %169, align 8
  %171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i32 0, i32 1
  %172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %171, i64 0, i64 0
  %173 = bitcast %union.rtunion_def* %172 to i64*
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %161, %174
  store i64 %175, i64* %17, align 8
  %176 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %177 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %178 = load i64, i64* %17, align 8
  %179 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %178)
  %180 = call %struct.rtx_def* @gen_add3_insn(%struct.rtx_def* %176, %struct.rtx_def* %177, %struct.rtx_def* %179)
  store %struct.rtx_def* %180, %struct.rtx_def** %18, align 8
  %181 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %182 = icmp ne %struct.rtx_def* %181, null
  br i1 %182, label %183, label %245

; <label>:183:                                    ; preds = %156
  %184 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %185 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %185, i32 0, i32 1
  %187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %186, i64 0, i64 3
  %188 = bitcast %union.rtunion_def* %187 to %struct.rtx_def**
  %189 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %190 = call i32 @validate_change(%struct.rtx_def* %184, %struct.rtx_def** %188, %struct.rtx_def* %189, i32 0)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %245

; <label>:192:                                    ; preds = %183
  %193 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %194 = icmp ne %struct.rtx_def* %193, null
  br i1 %194, label %195, label %233

; <label>:195:                                    ; preds = %192
  %196 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %197, i64 0, i64 0
  %199 = bitcast %union.rtunion_def* %198 to i32*
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %202 = call %struct.rtx_def* @remove_death(i32 %200, %struct.rtx_def* %201)
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %205 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %204, i32 0, i32 4
  %206 = bitcast %union.varray_data_tag* %205 to [1 x %struct.reg_info_def*]*
  %207 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %207, i32 0, i32 1
  %209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %208, i64 0, i64 0
  %210 = bitcast %union.rtunion_def* %209 to i32*
  %211 = load i32, i32* %210, align 8
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %206, i64 0, i64 %212
  %214 = load %struct.reg_info_def*, %struct.reg_info_def** %213, align 8
  %215 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, %203
  store i32 %217, i32* %215, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %220 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %219, i32 0, i32 4
  %221 = bitcast %union.varray_data_tag* %220 to [1 x %struct.reg_info_def*]*
  %222 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %222, i32 0, i32 1
  %224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %223, i64 0, i64 0
  %225 = bitcast %union.rtunion_def* %224 to i32*
  %226 = load i32, i32* %225, align 8
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %221, i64 0, i64 %227
  %229 = load %struct.reg_info_def*, %struct.reg_info_def** %228, align 8
  %230 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, %218
  store i32 %232, i32* %230, align 4
  br label %233

; <label>:233:                                    ; preds = %195, %192
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %235 = icmp ne %struct._IO_FILE* %234, null
  br i1 %235, label %236, label %244

; <label>:236:                                    ; preds = %233
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %238 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %239 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %238, i32 0, i32 1
  %240 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %239, i64 0, i64 0
  %241 = bitcast %union.rtunion_def* %240 to i32*
  %242 = load i32, i32* %241, align 8
  %243 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %242)
  br label %244

; <label>:244:                                    ; preds = %236, %233
  store i32 1, i32* %6, align 4
  br label %321

; <label>:245:                                    ; preds = %183, %156
  br label %246

; <label>:246:                                    ; preds = %245, %142, %130, %120, %112, %108
  %247 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %248 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %249 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %250 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %249, i64 0, i64 3
  %251 = bitcast %union.rtunion_def* %250 to %struct.rtx_def**
  %252 = load %struct.rtx_def*, %struct.rtx_def** %251, align 8
  %253 = call i32 @reg_set_p(%struct.rtx_def* %247, %struct.rtx_def* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

; <label>:255:                                    ; preds = %246
  br label %320

; <label>:256:                                    ; preds = %246
  %257 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %258 = bitcast %struct.rtx_def* %257 to i32*
  %259 = load i32, i32* %258, align 8
  %260 = and i32 %259, 65535
  %261 = icmp eq i32 %260, 34
  br i1 %261, label %262, label %302

; <label>:262:                                    ; preds = %256
  %263 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %264 = icmp ne %struct.rtx_def* %263, null
  br i1 %264, label %268, label %265

; <label>:265:                                    ; preds = %262
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %15, align 4
  br label %268

; <label>:268:                                    ; preds = %265, %262
  %269 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %270 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %269, i32 0, i32 4
  %271 = bitcast %union.varray_data_tag* %270 to [1 x %struct.reg_info_def*]*
  %272 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %273 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %272, i32 0, i32 1
  %274 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %273, i64 0, i64 0
  %275 = bitcast %union.rtunion_def* %274 to i32*
  %276 = load i32, i32* %275, align 8
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %271, i64 0, i64 %277
  %279 = load %struct.reg_info_def*, %struct.reg_info_def** %278, align 8
  %280 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %279, i32 0, i32 8
  %281 = load i32, i32* %280, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %284

; <label>:283:                                    ; preds = %268
  br label %320

; <label>:284:                                    ; preds = %268
  %285 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %286 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %285, i32 0, i32 1
  %287 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %286, i64 0, i64 0
  %288 = bitcast %union.rtunion_def* %287 to i32*
  %289 = load i32, i32* %288, align 8
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i64 0, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %300, label %295

; <label>:295:                                    ; preds = %284
  %296 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %297 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %298 = call i32 @find_reg_fusage(%struct.rtx_def* %296, i32 49, %struct.rtx_def* %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

; <label>:300:                                    ; preds = %295, %284
  br label %320

; <label>:301:                                    ; preds = %295
  br label %313

; <label>:302:                                    ; preds = %256
  %303 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %304 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %305 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %304, i32 0, i32 1
  %306 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %305, i64 0, i64 3
  %307 = bitcast %union.rtunion_def* %306 to %struct.rtx_def**
  %308 = load %struct.rtx_def*, %struct.rtx_def** %307, align 8
  %309 = call i32 @reg_set_p(%struct.rtx_def* %303, %struct.rtx_def* %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

; <label>:311:                                    ; preds = %302
  br label %320

; <label>:312:                                    ; preds = %302
  br label %313

; <label>:313:                                    ; preds = %312, %301
  br label %314

; <label>:314:                                    ; preds = %313, %52
  %315 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %316 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %315, i32 0, i32 1
  %317 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %316, i64 0, i64 1
  %318 = bitcast %union.rtunion_def* %317 to %struct.rtx_def**
  %319 = load %struct.rtx_def*, %struct.rtx_def** %318, align 8
  store %struct.rtx_def* %319, %struct.rtx_def** %12, align 8
  br label %34

; <label>:320:                                    ; preds = %311, %300, %283, %255, %41, %34
  store i32 0, i32* %6, align 4
  br label %321

; <label>:321:                                    ; preds = %320, %244, %27
  %322 = load i32, i32* %6, align 4
  ret i32 %322
}

declare i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @reg_is_remote_constant_p(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca %struct.rtx_def*, align 8
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %6, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %7, align 8
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %12 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %13 = bitcast %union.varray_data_tag* %12 to [1 x %struct.reg_info_def*]*
  %14 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %15, i64 0, i64 0
  %17 = bitcast %union.rtunion_def* %16 to i32*
  %18 = load i32, i32* %17, align 8
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %13, i64 0, i64 %19
  %21 = load %struct.reg_info_def*, %struct.reg_info_def** %20, align 8
  %22 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %241

; <label>:26:                                     ; preds = %3
  %27 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %28, i64 0, i64 5
  %30 = bitcast %union.rtunion_def* %29 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %8, align 8
  br label %32

; <label>:32:                                     ; preds = %132, %26
  %33 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %34 = icmp ne %struct.rtx_def* %33, null
  br i1 %34, label %35, label %138

; <label>:35:                                     ; preds = %32
  %36 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %38 = load i32, i32* %37, align 8
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %35
  br label %132

; <label>:43:                                     ; preds = %35
  %44 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %45, i64 0, i64 0
  %47 = bitcast %union.rtunion_def* %46 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %47, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 65535
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 105
  br i1 %56, label %57, label %99

; <label>:57:                                     ; preds = %43
  %58 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %59, i64 0, i64 0
  %61 = bitcast %union.rtunion_def* %60 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %61, align 8
  %63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %63, i64 0, i64 3
  %65 = bitcast %union.rtunion_def* %64 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %65, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 47
  br i1 %70, label %71, label %81

; <label>:71:                                     ; preds = %57
  %72 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %73, i64 0, i64 0
  %75 = bitcast %union.rtunion_def* %74 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %75, align 8
  %77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %77, i64 0, i64 3
  %79 = bitcast %union.rtunion_def* %78 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %79, align 8
  br label %97

; <label>:81:                                     ; preds = %57
  %82 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %83, i64 0, i64 0
  %85 = bitcast %union.rtunion_def* %84 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %85, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %88, i64 0, i64 0
  %90 = bitcast %union.rtunion_def* %89 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %90, align 8
  %92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %92, i64 0, i64 3
  %94 = bitcast %union.rtunion_def* %93 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %94, align 8
  %96 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %86, %struct.rtx_def* %95)
  br label %97

; <label>:97:                                     ; preds = %81, %71
  %98 = phi %struct.rtx_def* [ %80, %71 ], [ %96, %81 ]
  br label %100

; <label>:99:                                     ; preds = %43
  br label %100

; <label>:100:                                    ; preds = %99, %97
  %101 = phi %struct.rtx_def* [ %98, %97 ], [ null, %99 ]
  store %struct.rtx_def* %101, %struct.rtx_def** %9, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %103 = icmp ne %struct.rtx_def* %102, null
  br i1 %103, label %104, label %131

; <label>:104:                                    ; preds = %100
  %105 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %106, i64 0, i64 0
  %108 = bitcast %union.rtunion_def* %107 to %struct.rtx_def**
  %109 = load %struct.rtx_def*, %struct.rtx_def** %108, align 8
  %110 = bitcast %struct.rtx_def* %109 to i32*
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, 65535
  %113 = icmp eq i32 %112, 61
  br i1 %113, label %114, label %131

; <label>:114:                                    ; preds = %104
  %115 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %116, i64 0, i64 0
  %118 = bitcast %union.rtunion_def* %117 to %struct.rtx_def**
  %119 = load %struct.rtx_def*, %struct.rtx_def** %118, align 8
  %120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %120, i64 0, i64 0
  %122 = bitcast %union.rtunion_def* %121 to i32*
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %125, i64 0, i64 0
  %127 = bitcast %union.rtunion_def* %126 to i32*
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %123, %128
  br i1 %129, label %130, label %131

; <label>:130:                                    ; preds = %114
  store i32 0, i32* %4, align 4
  br label %241

; <label>:131:                                    ; preds = %114, %104, %100
  br label %132

; <label>:132:                                    ; preds = %131, %42
  %133 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %134, i64 0, i64 1
  %136 = bitcast %union.rtunion_def* %135 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %136, align 8
  store %struct.rtx_def* %137, %struct.rtx_def** %8, align 8
  br label %32

; <label>:138:                                    ; preds = %32
  %139 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  store %struct.rtx_def* %139, %struct.rtx_def** %8, align 8
  br label %140

; <label>:140:                                    ; preds = %234, %138
  %141 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %142 = icmp ne %struct.rtx_def* %141, null
  br i1 %142, label %143, label %147

; <label>:143:                                    ; preds = %140
  %144 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %146 = icmp ne %struct.rtx_def* %144, %145
  br label %147

; <label>:147:                                    ; preds = %143, %140
  %148 = phi i1 [ false, %140 ], [ %146, %143 ]
  br i1 %148, label %149, label %240

; <label>:149:                                    ; preds = %147
  %150 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %151 = bitcast %struct.rtx_def* %150 to i32*
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, 65535
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 105
  br i1 %158, label %160, label %159

; <label>:159:                                    ; preds = %149
  br label %234

; <label>:160:                                    ; preds = %149
  %161 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %162 = bitcast %struct.rtx_def* %161 to i32*
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, 65535
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 105
  br i1 %169, label %170, label %196

; <label>:170:                                    ; preds = %160
  %171 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %172, i64 0, i64 3
  %174 = bitcast %union.rtunion_def* %173 to %struct.rtx_def**
  %175 = load %struct.rtx_def*, %struct.rtx_def** %174, align 8
  %176 = bitcast %struct.rtx_def* %175 to i32*
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, 65535
  %179 = icmp eq i32 %178, 47
  br i1 %179, label %180, label %186

; <label>:180:                                    ; preds = %170
  %181 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %182, i64 0, i64 3
  %184 = bitcast %union.rtunion_def* %183 to %struct.rtx_def**
  %185 = load %struct.rtx_def*, %struct.rtx_def** %184, align 8
  br label %194

; <label>:186:                                    ; preds = %170
  %187 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %188 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %189, i64 0, i64 3
  %191 = bitcast %union.rtunion_def* %190 to %struct.rtx_def**
  %192 = load %struct.rtx_def*, %struct.rtx_def** %191, align 8
  %193 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %187, %struct.rtx_def* %192)
  br label %194

; <label>:194:                                    ; preds = %186, %180
  %195 = phi %struct.rtx_def* [ %185, %180 ], [ %193, %186 ]
  br label %197

; <label>:196:                                    ; preds = %160
  br label %197

; <label>:197:                                    ; preds = %196, %194
  %198 = phi %struct.rtx_def* [ %195, %194 ], [ null, %196 ]
  store %struct.rtx_def* %198, %struct.rtx_def** %10, align 8
  %199 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %200 = icmp ne %struct.rtx_def* %199, null
  br i1 %200, label %201, label %233

; <label>:201:                                    ; preds = %197
  %202 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %203, i64 0, i64 0
  %205 = bitcast %union.rtunion_def* %204 to %struct.rtx_def**
  %206 = load %struct.rtx_def*, %struct.rtx_def** %205, align 8
  %207 = bitcast %struct.rtx_def* %206 to i32*
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, 65535
  %210 = icmp eq i32 %209, 61
  br i1 %210, label %211, label %233

; <label>:211:                                    ; preds = %201
  %212 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %212, i32 0, i32 1
  %214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %213, i64 0, i64 0
  %215 = bitcast %union.rtunion_def* %214 to %struct.rtx_def**
  %216 = load %struct.rtx_def*, %struct.rtx_def** %215, align 8
  %217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %217, i64 0, i64 0
  %219 = bitcast %union.rtunion_def* %218 to i32*
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %222 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %221, i32 0, i32 1
  %223 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %222, i64 0, i64 0
  %224 = bitcast %union.rtunion_def* %223 to i32*
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %220, %225
  br i1 %226, label %227, label %233

; <label>:227:                                    ; preds = %211
  %228 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %229 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %228, i32 4, %struct.rtx_def* null)
  %230 = icmp ne %struct.rtx_def* %229, null
  br i1 %230, label %231, label %232

; <label>:231:                                    ; preds = %227
  store i32 1, i32* %4, align 4
  br label %241

; <label>:232:                                    ; preds = %227
  store i32 0, i32* %4, align 4
  br label %241

; <label>:233:                                    ; preds = %211, %201, %197
  br label %234

; <label>:234:                                    ; preds = %233, %159
  %235 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %236 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %235, i32 0, i32 1
  %237 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %236, i64 0, i64 2
  %238 = bitcast %union.rtunion_def* %237 to %struct.rtx_def**
  %239 = load %struct.rtx_def*, %struct.rtx_def** %238, align 8
  store %struct.rtx_def* %239, %struct.rtx_def** %8, align 8
  br label %140

; <label>:240:                                    ; preds = %147
  store i32 0, i32* %4, align 4
  br label %241

; <label>:241:                                    ; preds = %240, %232, %231, %130, %25
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @perhaps_ends_bb_p(%struct.rtx_def*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %3, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 65535
  switch i32 %7, label %16 [
    i32 36, label %8
    i32 33, label %8
    i32 34, label %9
  ]

; <label>:8:                                      ; preds = %1, %1
  store i32 1, i32* %2, align 4
  br label %20

; <label>:9:                                      ; preds = %1
  %10 = load %struct.function*, %struct.function** @cfun, align 8
  %11 = getelementptr inbounds %struct.function, %struct.function* %10, i32 0, i32 21
  %12 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %13 = icmp ne %struct.rtx_def* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %9
  store i32 1, i32* %2, align 4
  br label %20

; <label>:15:                                     ; preds = %9
  br label %16

; <label>:16:                                     ; preds = %15, %1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %18 = call zeroext i1 @can_throw_internal(%struct.rtx_def* %17)
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %20

; <label>:20:                                     ; preds = %16, %14, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare i32 @validate_replace_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i32) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @copy_src_to_dest(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32) #0 {
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca %struct.rtx_def*, align 8
  %11 = alloca %struct.rtx_def*, align 8
  %12 = alloca %struct.rtx_def*, align 8
  %13 = alloca %struct.rtx_def*, align 8
  %14 = alloca %struct.rtx_def**, align 8
  %15 = alloca %struct.rtx_def**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %6, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 61
  br i1 %26, label %27, label %389

; <label>:27:                                     ; preds = %4
  %28 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %29 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %28, i32 0, i32 4
  %30 = bitcast %union.varray_data_tag* %29 to [1 x %struct.reg_info_def*]*
  %31 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %32, i64 0, i64 0
  %34 = bitcast %union.rtunion_def* %33 to i32*
  %35 = load i32, i32* %34, align 8
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %30, i64 0, i64 %36
  %38 = load %struct.reg_info_def*, %struct.reg_info_def** %37, align 8
  %39 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %389

; <label>:42:                                     ; preds = %27
  %43 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 61
  br i1 %47, label %48, label %389

; <label>:48:                                     ; preds = %42
  %49 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %51 = load i32, i32* %50, align 8
  %52 = lshr i32 %51, 26
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %389, label %55

; <label>:55:                                     ; preds = %48
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %57 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %56, i32 0, i32 4
  %58 = bitcast %union.varray_data_tag* %57 to [1 x %struct.reg_info_def*]*
  %59 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %60, i64 0, i64 0
  %62 = bitcast %union.rtunion_def* %61 to i32*
  %63 = load i32, i32* %62, align 8
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %58, i64 0, i64 %64
  %66 = load %struct.reg_info_def*, %struct.reg_info_def** %65, align 8
  %67 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %389

; <label>:70:                                     ; preds = %55
  %71 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 65535
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 105
  br i1 %79, label %80, label %106

; <label>:80:                                     ; preds = %70
  %81 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %82, i64 0, i64 3
  %84 = bitcast %union.rtunion_def* %83 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %84, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 47
  br i1 %89, label %90, label %96

; <label>:90:                                     ; preds = %80
  %91 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %92, i64 0, i64 3
  %94 = bitcast %union.rtunion_def* %93 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %94, align 8
  br label %104

; <label>:96:                                     ; preds = %80
  %97 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %99, i64 0, i64 3
  %101 = bitcast %union.rtunion_def* %100 to %struct.rtx_def**
  %102 = load %struct.rtx_def*, %struct.rtx_def** %101, align 8
  %103 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %97, %struct.rtx_def* %102)
  br label %104

; <label>:104:                                    ; preds = %96, %90
  %105 = phi %struct.rtx_def* [ %95, %90 ], [ %103, %96 ]
  br label %107

; <label>:106:                                    ; preds = %70
  br label %107

; <label>:107:                                    ; preds = %106, %104
  %108 = phi %struct.rtx_def* [ %105, %104 ], [ null, %106 ]
  store %struct.rtx_def* %108, %struct.rtx_def** %12, align 8
  %109 = icmp ne %struct.rtx_def* %108, null
  br i1 %109, label %110, label %389

; <label>:110:                                    ; preds = %107
  %111 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %113, i64 0, i64 1
  %115 = bitcast %union.rtunion_def* %114 to %struct.rtx_def**
  %116 = load %struct.rtx_def*, %struct.rtx_def** %115, align 8
  %117 = call i32 @reg_mentioned_p(%struct.rtx_def* %111, %struct.rtx_def* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %389, label %119

; <label>:119:                                    ; preds = %110
  %120 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %122 = load i32, i32* %121, align 8
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  %125 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %126 = bitcast %struct.rtx_def* %125 to i32*
  %127 = load i32, i32* %126, align 8
  %128 = lshr i32 %127, 16
  %129 = and i32 %128, 255
  %130 = icmp eq i32 %124, %129
  br i1 %130, label %131, label %389

; <label>:131:                                    ; preds = %119
  %132 = load %struct.function*, %struct.function** @cfun, align 8
  %133 = getelementptr inbounds %struct.function, %struct.function* %132, i32 0, i32 3
  %134 = load %struct.emit_status*, %struct.emit_status** %133, align 8
  %135 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %21, align 4
  call void @start_sequence()
  %137 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %138 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %139 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %137, %struct.rtx_def* %138)
  %140 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %140, %struct.rtx_def** %9, align 8
  call void @end_sequence()
  %141 = load i32, i32* %21, align 4
  %142 = load %struct.function*, %struct.function** @cfun, align 8
  %143 = getelementptr inbounds %struct.function, %struct.function* %142, i32 0, i32 3
  %144 = load %struct.emit_status*, %struct.emit_status** %143, align 8
  %145 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %141, %146
  br i1 %147, label %154, label %148

; <label>:148:                                    ; preds = %131
  %149 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %150 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %151 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %152 = call i32 @validate_replace_rtx(%struct.rtx_def* %149, %struct.rtx_def* %150, %struct.rtx_def* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

; <label>:154:                                    ; preds = %148, %131
  %155 = load i32, i32* %21, align 4
  %156 = load %struct.function*, %struct.function** @cfun, align 8
  %157 = getelementptr inbounds %struct.function, %struct.function* %156, i32 0, i32 3
  %158 = load %struct.emit_status*, %struct.emit_status** %157, align 8
  %159 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %158, i32 0, i32 0
  store i32 %155, i32* %159, align 8
  br label %389

; <label>:160:                                    ; preds = %148
  %161 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %162 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %163 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %161, %struct.rtx_def* %162)
  %164 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %165 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %164, i32 0, i32 1
  %166 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %165, i64 0, i64 1
  %167 = bitcast %union.rtunion_def* %166 to %struct.rtx_def**
  %168 = load %struct.rtx_def*, %struct.rtx_def** %167, align 8
  store %struct.rtx_def* %168, %struct.rtx_def** %13, align 8
  %169 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %170, i64 0, i64 6
  %172 = bitcast %union.rtunion_def* %171 to %struct.rtx_def**
  store %struct.rtx_def** %172, %struct.rtx_def*** %15, align 8
  %173 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %174, i64 0, i64 6
  %176 = bitcast %union.rtunion_def* %175 to %struct.rtx_def**
  store %struct.rtx_def** %176, %struct.rtx_def*** %14, align 8
  %177 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %177, i32 0, i32 1
  %179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %178, i64 0, i64 6
  %180 = bitcast %union.rtunion_def* %179 to %struct.rtx_def**
  %181 = load %struct.rtx_def*, %struct.rtx_def** %180, align 8
  store %struct.rtx_def* %181, %struct.rtx_def** %10, align 8
  br label %182

; <label>:182:                                    ; preds = %213, %160
  %183 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %184 = icmp ne %struct.rtx_def* %183, null
  br i1 %184, label %185, label %215

; <label>:185:                                    ; preds = %182
  %186 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %186, i32 0, i32 1
  %188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %187, i64 0, i64 1
  %189 = bitcast %union.rtunion_def* %188 to %struct.rtx_def**
  %190 = load %struct.rtx_def*, %struct.rtx_def** %189, align 8
  store %struct.rtx_def* %190, %struct.rtx_def** %11, align 8
  %191 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %192 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %191, i32 0, i32 1
  %193 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %192, i64 0, i64 0
  %194 = bitcast %union.rtunion_def* %193 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %194, align 8
  %196 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %197 = icmp eq %struct.rtx_def* %195, %196
  br i1 %197, label %198, label %205

; <label>:198:                                    ; preds = %185
  %199 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %200 = load %struct.rtx_def**, %struct.rtx_def*** %15, align 8
  store %struct.rtx_def* %199, %struct.rtx_def** %200, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %202, i64 0, i64 1
  %204 = bitcast %union.rtunion_def* %203 to %struct.rtx_def**
  store %struct.rtx_def** %204, %struct.rtx_def*** %15, align 8
  br label %212

; <label>:205:                                    ; preds = %185
  %206 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %207 = load %struct.rtx_def**, %struct.rtx_def*** %14, align 8
  store %struct.rtx_def* %206, %struct.rtx_def** %207, align 8
  %208 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %208, i32 0, i32 1
  %210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %209, i64 0, i64 1
  %211 = bitcast %union.rtunion_def* %210 to %struct.rtx_def**
  store %struct.rtx_def** %211, %struct.rtx_def*** %14, align 8
  br label %212

; <label>:212:                                    ; preds = %205, %198
  br label %213

; <label>:213:                                    ; preds = %212
  %214 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  store %struct.rtx_def* %214, %struct.rtx_def** %10, align 8
  br label %182

; <label>:215:                                    ; preds = %182
  %216 = load %struct.rtx_def**, %struct.rtx_def*** %15, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %216, align 8
  %217 = load %struct.rtx_def**, %struct.rtx_def*** %14, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %217, align 8
  %218 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %219, i64 0, i64 0
  %221 = bitcast %union.rtunion_def* %220 to i32*
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %19, align 4
  %223 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %224 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %223, i32 0, i32 1
  %225 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %224, i64 0, i64 0
  %226 = bitcast %union.rtunion_def* %225 to i32*
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %20, align 4
  %228 = load i32, i32* %19, align 4
  %229 = load i32, i32* %8, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %254

; <label>:231:                                    ; preds = %215
  %232 = load i32*, i32** @regmove_bb_head, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %18, align 4
  %237 = load i32, i32* %18, align 4
  %238 = icmp sge i32 %237, 0
  br i1 %238, label %239, label %253

; <label>:239:                                    ; preds = %231
  %240 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %241 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %242 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %241, i32 0, i32 4
  %243 = bitcast %union.varray_data_tag* %242 to [1 x %struct.basic_block_def*]*
  %244 = load i32, i32* %18, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %243, i64 0, i64 %245
  %247 = load %struct.basic_block_def*, %struct.basic_block_def** %246, align 8
  %248 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %247, i32 0, i32 0
  store %struct.rtx_def* %240, %struct.rtx_def** %248, align 8
  %249 = load i32*, i32** @regmove_bb_head, align 8
  %250 = load i32, i32* %19, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 -1, i32* %252, align 4
  br label %253

; <label>:253:                                    ; preds = %239, %231
  br label %254

; <label>:254:                                    ; preds = %253, %215
  %255 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %256 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %255, i32 0, i32 1
  %257 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %256, i64 0, i64 0
  %258 = bitcast %union.rtunion_def* %257 to i32*
  %259 = load i32, i32* %258, align 8
  store i32 %259, i32* %17, align 4
  %260 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %261 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %260, i32 0, i32 4
  %262 = bitcast %union.varray_data_tag* %261 to [1 x %struct.reg_info_def*]*
  %263 = load i32, i32* %17, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %262, i64 0, i64 %264
  %266 = load %struct.reg_info_def*, %struct.reg_info_def** %265, align 8
  %267 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 4
  %270 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %271 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %270, i32 0, i32 4
  %272 = bitcast %union.varray_data_tag* %271 to [1 x %struct.reg_info_def*]*
  %273 = load i32, i32* %17, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %272, i64 0, i64 %274
  %276 = load %struct.reg_info_def*, %struct.reg_info_def** %275, align 8
  %277 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %276, i32 0, i32 7
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %277, align 4
  %280 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %281 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %280, i32 0, i32 4
  %282 = bitcast %union.varray_data_tag* %281 to [1 x %struct.reg_info_def*]*
  %283 = load i32, i32* %17, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %282, i64 0, i64 %284
  %286 = load %struct.reg_info_def*, %struct.reg_info_def** %285, align 8
  %287 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %19, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %301

; <label>:291:                                    ; preds = %254
  %292 = load i32, i32* %20, align 4
  %293 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %294 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %293, i32 0, i32 4
  %295 = bitcast %union.varray_data_tag* %294 to [1 x %struct.reg_info_def*]*
  %296 = load i32, i32* %17, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %295, i64 0, i64 %297
  %299 = load %struct.reg_info_def*, %struct.reg_info_def** %298, align 8
  %300 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %299, i32 0, i32 0
  store i32 %292, i32* %300, align 4
  br label %301

; <label>:301:                                    ; preds = %291, %254
  %302 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %303 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %302, i32 0, i32 1
  %304 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %303, i64 0, i64 0
  %305 = bitcast %union.rtunion_def* %304 to i32*
  %306 = load i32, i32* %305, align 8
  store i32 %306, i32* %16, align 4
  %307 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %308 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %309 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %307, i32 1, %struct.rtx_def* %308)
  %310 = icmp ne %struct.rtx_def* %309, null
  br i1 %310, label %322, label %311

; <label>:311:                                    ; preds = %301
  %312 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %313 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %312, i32 0, i32 4
  %314 = bitcast %union.varray_data_tag* %313 to [1 x %struct.reg_info_def*]*
  %315 = load i32, i32* %16, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %314, i64 0, i64 %316
  %318 = load %struct.reg_info_def*, %struct.reg_info_def** %317, align 8
  %319 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %319, align 4
  br label %322

; <label>:322:                                    ; preds = %311, %301
  %323 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %324 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %323, i32 0, i32 4
  %325 = bitcast %union.varray_data_tag* %324 to [1 x %struct.reg_info_def*]*
  %326 = load i32, i32* %16, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %325, i64 0, i64 %327
  %329 = load %struct.reg_info_def*, %struct.reg_info_def** %328, align 8
  %330 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %19, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %344

; <label>:334:                                    ; preds = %322
  %335 = load i32, i32* %20, align 4
  %336 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %337 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %336, i32 0, i32 4
  %338 = bitcast %union.varray_data_tag* %337 to [1 x %struct.reg_info_def*]*
  %339 = load i32, i32* %16, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %338, i64 0, i64 %340
  %342 = load %struct.reg_info_def*, %struct.reg_info_def** %341, align 8
  %343 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %342, i32 0, i32 0
  store i32 %335, i32* %343, align 4
  br label %344

; <label>:344:                                    ; preds = %334, %322
  %345 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %346 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %345, i32 0, i32 4
  %347 = bitcast %union.varray_data_tag* %346 to [1 x %struct.reg_info_def*]*
  %348 = load i32, i32* %16, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %347, i64 0, i64 %349
  %351 = load %struct.reg_info_def*, %struct.reg_info_def** %350, align 8
  %352 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %19, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %366

; <label>:356:                                    ; preds = %344
  %357 = load i32, i32* %20, align 4
  %358 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %359 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %358, i32 0, i32 4
  %360 = bitcast %union.varray_data_tag* %359 to [1 x %struct.reg_info_def*]*
  %361 = load i32, i32* %16, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %360, i64 0, i64 %362
  %364 = load %struct.reg_info_def*, %struct.reg_info_def** %363, align 8
  %365 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %364, i32 0, i32 1
  store i32 %357, i32* %365, align 4
  br label %366

; <label>:366:                                    ; preds = %356, %344
  %367 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %368 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %367, i32 0, i32 4
  %369 = bitcast %union.varray_data_tag* %368 to [1 x %struct.reg_info_def*]*
  %370 = load i32, i32* %16, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %369, i64 0, i64 %371
  %373 = load %struct.reg_info_def*, %struct.reg_info_def** %372, align 8
  %374 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* %19, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %388

; <label>:378:                                    ; preds = %366
  %379 = load i32, i32* %20, align 4
  %380 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %381 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %380, i32 0, i32 4
  %382 = bitcast %union.varray_data_tag* %381 to [1 x %struct.reg_info_def*]*
  %383 = load i32, i32* %16, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %382, i64 0, i64 %384
  %386 = load %struct.reg_info_def*, %struct.reg_info_def** %385, align 8
  %387 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %386, i32 0, i32 2
  store i32 %379, i32* %387, align 4
  br label %388

; <label>:388:                                    ; preds = %378, %366
  br label %389

; <label>:389:                                    ; preds = %388, %154, %119, %110, %107, %55, %48, %42, %27, %4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define void @combine_stack_adjustments() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %14, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @n_basic_blocks, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %17

; <label>:6:                                      ; preds = %2
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %8 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %9 = bitcast %union.varray_data_tag* %8 to [1 x %struct.basic_block_def*]*
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %9, i64 0, i64 %11
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %12, align 8
  call void @combine_stack_adjustments_for_block(%struct.basic_block_def* %13)
  br label %14

; <label>:14:                                     ; preds = %6
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %2

; <label>:17:                                     ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @combine_stack_adjustments_for_block(%struct.basic_block_def*) #0 {
  %2 = alloca %struct.basic_block_def*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct.csa_memlist*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca %struct.rtx_def*, align 8
  %9 = alloca %struct.record_stack_memrefs_data, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.rtx_def*, align 8
  %12 = alloca %struct.rtx_def*, align 8
  %13 = alloca i64, align 8
  store %struct.basic_block_def* %0, %struct.basic_block_def** %2, align 8
  store i64 0, i64* %3, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %4, align 8
  store %struct.csa_memlist* null, %struct.csa_memlist** %5, align 8
  store i8 0, i8* %10, align 1
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %2, align 8
  %15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %6, align 8
  br label %17

; <label>:17:                                     ; preds = %372, %1
  %18 = load i8, i8* %10, align 1
  %19 = trunc i8 %18 to i1
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %374

; <label>:21:                                     ; preds = %17
  %22 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %2, align 8
  %24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 1
  %25 = load %struct.rtx_def*, %struct.rtx_def** %24, align 8
  %26 = icmp eq %struct.rtx_def* %22, %25
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %10, align 1
  %28 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %29, i64 0, i64 2
  %31 = bitcast %union.rtunion_def* %30 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %7, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 65535
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 105
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %21
  br label %372

; <label>:43:                                     ; preds = %21
  %44 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %45 = call %struct.rtx_def* @single_set_for_csa(%struct.rtx_def* %44)
  store %struct.rtx_def* %45, %struct.rtx_def** %8, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %47 = icmp ne %struct.rtx_def* %46, null
  br i1 %47, label %48, label %316

; <label>:48:                                     ; preds = %43
  %49 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %50, i64 0, i64 0
  %52 = bitcast %union.rtunion_def* %51 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %52, align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %11, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %55, i64 0, i64 1
  %57 = bitcast %union.rtunion_def* %56 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %57, align 8
  store %struct.rtx_def* %58, %struct.rtx_def** %12, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %61 = icmp eq %struct.rtx_def* %59, %60
  br i1 %61, label %62, label %164

; <label>:62:                                     ; preds = %48
  %63 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 75
  br i1 %67, label %68, label %164

; <label>:68:                                     ; preds = %62
  %69 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %70, i64 0, i64 0
  %72 = bitcast %union.rtunion_def* %71 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %72, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %75 = icmp eq %struct.rtx_def* %73, %74
  br i1 %75, label %76, label %164

; <label>:76:                                     ; preds = %68
  %77 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %78, i64 0, i64 1
  %80 = bitcast %union.rtunion_def* %79 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %80, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 54
  br i1 %85, label %86, label %164

; <label>:86:                                     ; preds = %76
  %87 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %88, i64 0, i64 1
  %90 = bitcast %union.rtunion_def* %89 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %90, align 8
  %92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %92, i64 0, i64 0
  %94 = bitcast %union.rtunion_def* %93 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %13, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %97 = icmp ne %struct.rtx_def* %96, null
  br i1 %97, label %101, label %98

; <label>:98:                                     ; preds = %86
  %99 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %4, align 8
  %100 = load i64, i64* %13, align 8
  store i64 %100, i64* %3, align 8
  br label %372

; <label>:101:                                    ; preds = %86
  br i1 true, label %102, label %105

; <label>:102:                                    ; preds = %101
  %103 = load i64, i64* %13, align 8
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %108, label %124

; <label>:105:                                    ; preds = %101
  %106 = load i64, i64* %13, align 8
  %107 = icmp sge i64 %106, 0
  br i1 %107, label %108, label %124

; <label>:108:                                    ; preds = %105, %102
  %109 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %110 = load %struct.csa_memlist*, %struct.csa_memlist** %5, align 8
  %111 = load i64, i64* %3, align 8
  %112 = load i64, i64* %13, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i64, i64* %13, align 8
  %115 = call i32 @try_apply_stack_adjustment(%struct.rtx_def* %109, %struct.csa_memlist* %110, i64 %113, i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

; <label>:117:                                    ; preds = %108
  %118 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %119 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %118)
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %3, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %3, align 8
  br label %372

; <label>:123:                                    ; preds = %108
  br label %151

; <label>:124:                                    ; preds = %105, %102
  br i1 true, label %125, label %128

; <label>:125:                                    ; preds = %124
  %126 = load i64, i64* %3, align 8
  %127 = icmp sge i64 %126, 0
  br i1 %127, label %131, label %150

; <label>:128:                                    ; preds = %124
  %129 = load i64, i64* %3, align 8
  %130 = icmp sle i64 %129, 0
  br i1 %130, label %131, label %150

; <label>:131:                                    ; preds = %128, %125
  %132 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %133 = load %struct.csa_memlist*, %struct.csa_memlist** %5, align 8
  %134 = load i64, i64* %3, align 8
  %135 = load i64, i64* %13, align 8
  %136 = add nsw i64 %134, %135
  %137 = load i64, i64* %3, align 8
  %138 = sub nsw i64 0, %137
  %139 = call i32 @try_apply_stack_adjustment(%struct.rtx_def* %132, %struct.csa_memlist* %133, i64 %136, i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

; <label>:141:                                    ; preds = %131
  %142 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %143 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %142)
  %144 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  store %struct.rtx_def* %144, %struct.rtx_def** %4, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %3, align 8
  %147 = add nsw i64 %146, %145
  store i64 %147, i64* %3, align 8
  %148 = load %struct.csa_memlist*, %struct.csa_memlist** %5, align 8
  call void @free_csa_memlist(%struct.csa_memlist* %148)
  store %struct.csa_memlist* null, %struct.csa_memlist** %5, align 8
  br label %372

; <label>:149:                                    ; preds = %131
  br label %150

; <label>:150:                                    ; preds = %149, %128, %125
  br label %151

; <label>:151:                                    ; preds = %150, %123
  %152 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %153 = icmp ne %struct.rtx_def* %152, null
  br i1 %153, label %154, label %160

; <label>:154:                                    ; preds = %151
  %155 = load i64, i64* %3, align 8
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %160

; <label>:157:                                    ; preds = %154
  %158 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %159 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %158)
  br label %160

; <label>:160:                                    ; preds = %157, %154, %151
  %161 = load %struct.csa_memlist*, %struct.csa_memlist** %5, align 8
  call void @free_csa_memlist(%struct.csa_memlist* %161)
  store %struct.csa_memlist* null, %struct.csa_memlist** %5, align 8
  %162 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  store %struct.rtx_def* %162, %struct.rtx_def** %4, align 8
  %163 = load i64, i64* %13, align 8
  store i64 %163, i64* %3, align 8
  br label %372

; <label>:164:                                    ; preds = %76, %68, %62, %48
  %165 = load %struct.csa_memlist*, %struct.csa_memlist** %5, align 8
  %166 = icmp eq %struct.csa_memlist* %165, null
  br i1 %166, label %167, label %315

; <label>:167:                                    ; preds = %164
  %168 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %169 = bitcast %struct.rtx_def* %168 to i32*
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, 65535
  %172 = icmp eq i32 %171, 66
  br i1 %172, label %173, label %315

; <label>:173:                                    ; preds = %167
  %174 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %174, i32 0, i32 1
  %176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %175, i64 0, i64 0
  %177 = bitcast %union.rtunion_def* %176 to %struct.rtx_def**
  %178 = load %struct.rtx_def*, %struct.rtx_def** %177, align 8
  %179 = bitcast %struct.rtx_def* %178 to i32*
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, 65535
  %182 = icmp eq i32 %181, 96
  br i1 %182, label %183, label %195

; <label>:183:                                    ; preds = %173
  %184 = load i64, i64* %3, align 8
  %185 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %186 = bitcast %struct.rtx_def* %185 to i32*
  %187 = load i32, i32* %186, align 8
  %188 = lshr i32 %187, 16
  %189 = and i32 %188, 255
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i64
  %194 = icmp eq i64 %184, %193
  br i1 %194, label %274, label %195

; <label>:195:                                    ; preds = %183, %173
  %196 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %197, i64 0, i64 0
  %199 = bitcast %union.rtunion_def* %198 to %struct.rtx_def**
  %200 = load %struct.rtx_def*, %struct.rtx_def** %199, align 8
  %201 = bitcast %struct.rtx_def* %200 to i32*
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 100
  br i1 %204, label %205, label %315

; <label>:205:                                    ; preds = %195
  %206 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %207, i64 0, i64 0
  %209 = bitcast %union.rtunion_def* %208 to %struct.rtx_def**
  %210 = load %struct.rtx_def*, %struct.rtx_def** %209, align 8
  %211 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %212 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %211, i64 0, i64 1
  %213 = bitcast %union.rtunion_def* %212 to %struct.rtx_def**
  %214 = load %struct.rtx_def*, %struct.rtx_def** %213, align 8
  %215 = bitcast %struct.rtx_def* %214 to i32*
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 75
  br i1 %218, label %219, label %315

; <label>:219:                                    ; preds = %205
  %220 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %220, i32 0, i32 1
  %222 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %221, i64 0, i64 0
  %223 = bitcast %union.rtunion_def* %222 to %struct.rtx_def**
  %224 = load %struct.rtx_def*, %struct.rtx_def** %223, align 8
  %225 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %226 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %225, i64 0, i64 1
  %227 = bitcast %union.rtunion_def* %226 to %struct.rtx_def**
  %228 = load %struct.rtx_def*, %struct.rtx_def** %227, align 8
  %229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %228, i32 0, i32 1
  %230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %229, i64 0, i64 0
  %231 = bitcast %union.rtunion_def* %230 to %struct.rtx_def**
  %232 = load %struct.rtx_def*, %struct.rtx_def** %231, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %234 = icmp eq %struct.rtx_def* %232, %233
  br i1 %234, label %235, label %315

; <label>:235:                                    ; preds = %219
  %236 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %237 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %236, i32 0, i32 1
  %238 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %237, i64 0, i64 0
  %239 = bitcast %union.rtunion_def* %238 to %struct.rtx_def**
  %240 = load %struct.rtx_def*, %struct.rtx_def** %239, align 8
  %241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %240, i32 0, i32 1
  %242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %241, i64 0, i64 1
  %243 = bitcast %union.rtunion_def* %242 to %struct.rtx_def**
  %244 = load %struct.rtx_def*, %struct.rtx_def** %243, align 8
  %245 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %244, i32 0, i32 1
  %246 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %245, i64 0, i64 1
  %247 = bitcast %union.rtunion_def* %246 to %struct.rtx_def**
  %248 = load %struct.rtx_def*, %struct.rtx_def** %247, align 8
  %249 = bitcast %struct.rtx_def* %248 to i32*
  %250 = load i32, i32* %249, align 8
  %251 = and i32 %250, 65535
  %252 = icmp eq i32 %251, 54
  br i1 %252, label %253, label %315

; <label>:253:                                    ; preds = %235
  %254 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %254, i32 0, i32 1
  %256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %255, i64 0, i64 0
  %257 = bitcast %union.rtunion_def* %256 to %struct.rtx_def**
  %258 = load %struct.rtx_def*, %struct.rtx_def** %257, align 8
  %259 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %258, i32 0, i32 1
  %260 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %259, i64 0, i64 1
  %261 = bitcast %union.rtunion_def* %260 to %struct.rtx_def**
  %262 = load %struct.rtx_def*, %struct.rtx_def** %261, align 8
  %263 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %262, i32 0, i32 1
  %264 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %263, i64 0, i64 1
  %265 = bitcast %union.rtunion_def* %264 to %struct.rtx_def**
  %266 = load %struct.rtx_def*, %struct.rtx_def** %265, align 8
  %267 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %266, i32 0, i32 1
  %268 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %267, i64 0, i64 0
  %269 = bitcast %union.rtunion_def* %268 to i64*
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* %3, align 8
  %272 = sub nsw i64 0, %271
  %273 = icmp eq i64 %270, %272
  br i1 %273, label %274, label %315

; <label>:274:                                    ; preds = %253, %183
  %275 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %276 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %275, i32 0, i32 1
  %277 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %276, i64 0, i64 0
  %278 = bitcast %union.rtunion_def* %277 to %struct.rtx_def**
  %279 = load %struct.rtx_def*, %struct.rtx_def** %278, align 8
  %280 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %279, i32 0, i32 1
  %281 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %280, i64 0, i64 0
  %282 = bitcast %union.rtunion_def* %281 to %struct.rtx_def**
  %283 = load %struct.rtx_def*, %struct.rtx_def** %282, align 8
  %284 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %285 = icmp eq %struct.rtx_def* %283, %284
  br i1 %285, label %286, label %315

; <label>:286:                                    ; preds = %274
  %287 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %288 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %289 = call i32 @reg_mentioned_p(%struct.rtx_def* %287, %struct.rtx_def* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %315, label %291

; <label>:291:                                    ; preds = %286
  %292 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %293 = bitcast %struct.rtx_def* %292 to i32*
  %294 = load i32, i32* %293, align 8
  %295 = lshr i32 %294, 16
  %296 = and i32 %295, 255
  %297 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %298 = call i32 @memory_address_p(i32 %296, %struct.rtx_def* %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %315

; <label>:300:                                    ; preds = %291
  %301 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %302 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %303 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %302, i32 0, i32 1
  %304 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %303, i64 0, i64 0
  %305 = bitcast %union.rtunion_def* %304 to %struct.rtx_def**
  %306 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %307 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %308 = call %struct.rtx_def* @replace_equiv_address(%struct.rtx_def* %306, %struct.rtx_def* %307)
  %309 = call i32 @validate_change(%struct.rtx_def* %301, %struct.rtx_def** %305, %struct.rtx_def* %308, i32 0)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

; <label>:311:                                    ; preds = %300
  %312 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %313 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %312)
  %314 = load %struct.csa_memlist*, %struct.csa_memlist** %5, align 8
  call void @free_csa_memlist(%struct.csa_memlist* %314)
  store %struct.csa_memlist* null, %struct.csa_memlist** %5, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %4, align 8
  store i64 0, i64* %3, align 8
  br label %372

; <label>:315:                                    ; preds = %300, %291, %286, %274, %253, %235, %219, %205, %195, %167, %164
  br label %316

; <label>:316:                                    ; preds = %315, %43
  %317 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %318 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %9, i32 0, i32 0
  store %struct.rtx_def* %317, %struct.rtx_def** %318, align 8
  %319 = load %struct.csa_memlist*, %struct.csa_memlist** %5, align 8
  %320 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %9, i32 0, i32 1
  store %struct.csa_memlist* %319, %struct.csa_memlist** %320, align 8
  %321 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %322 = bitcast %struct.rtx_def* %321 to i32*
  %323 = load i32, i32* %322, align 8
  %324 = and i32 %323, 65535
  %325 = icmp ne i32 %324, 34
  br i1 %325, label %326, label %340

; <label>:326:                                    ; preds = %316
  %327 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %328 = icmp ne %struct.rtx_def* %327, null
  br i1 %328, label %329, label %340

; <label>:329:                                    ; preds = %326
  %330 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %331 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %330, i32 0, i32 1
  %332 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %331, i64 0, i64 3
  %333 = bitcast %union.rtunion_def* %332 to %struct.rtx_def**
  %334 = bitcast %struct.record_stack_memrefs_data* %9 to i8*
  %335 = call i32 @for_each_rtx(%struct.rtx_def** %333, i32 (%struct.rtx_def**, i8*)* @record_stack_memrefs, i8* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %340, label %337

; <label>:337:                                    ; preds = %329
  %338 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %9, i32 0, i32 1
  %339 = load %struct.csa_memlist*, %struct.csa_memlist** %338, align 8
  store %struct.csa_memlist* %339, %struct.csa_memlist** %5, align 8
  br label %372

; <label>:340:                                    ; preds = %329, %326, %316
  %341 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %9, i32 0, i32 1
  %342 = load %struct.csa_memlist*, %struct.csa_memlist** %341, align 8
  store %struct.csa_memlist* %342, %struct.csa_memlist** %5, align 8
  %343 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %344 = icmp ne %struct.rtx_def* %343, null
  br i1 %344, label %345, label %371

; <label>:345:                                    ; preds = %340
  %346 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %347 = bitcast %struct.rtx_def* %346 to i32*
  %348 = load i32, i32* %347, align 8
  %349 = and i32 %348, 65535
  %350 = icmp eq i32 %349, 34
  br i1 %350, label %360, label %351

; <label>:351:                                    ; preds = %345
  %352 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %353 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %354 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %353, i32 0, i32 1
  %355 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %354, i64 0, i64 3
  %356 = bitcast %union.rtunion_def* %355 to %struct.rtx_def**
  %357 = load %struct.rtx_def*, %struct.rtx_def** %356, align 8
  %358 = call i32 @reg_mentioned_p(%struct.rtx_def* %352, %struct.rtx_def* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %371

; <label>:360:                                    ; preds = %351, %345
  %361 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %362 = icmp ne %struct.rtx_def* %361, null
  br i1 %362, label %363, label %369

; <label>:363:                                    ; preds = %360
  %364 = load i64, i64* %3, align 8
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %369

; <label>:366:                                    ; preds = %363
  %367 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %368 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %367)
  br label %369

; <label>:369:                                    ; preds = %366, %363, %360
  %370 = load %struct.csa_memlist*, %struct.csa_memlist** %5, align 8
  call void @free_csa_memlist(%struct.csa_memlist* %370)
  store %struct.csa_memlist* null, %struct.csa_memlist** %5, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %4, align 8
  store i64 0, i64* %3, align 8
  br label %371

; <label>:371:                                    ; preds = %369, %351, %340
  br label %372

; <label>:372:                                    ; preds = %371, %337, %311, %160, %141, %117, %98, %42
  %373 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  store %struct.rtx_def* %373, %struct.rtx_def** %6, align 8
  br label %17

; <label>:374:                                    ; preds = %17
  %375 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %376 = icmp ne %struct.rtx_def* %375, null
  br i1 %376, label %377, label %383

; <label>:377:                                    ; preds = %374
  %378 = load i64, i64* %3, align 8
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %383

; <label>:380:                                    ; preds = %377
  %381 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %382 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %381)
  br label %383

; <label>:383:                                    ; preds = %380, %377, %374
  ret void
}

declare %struct.rtx_def* @get_insns() #1

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

declare %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @flags_set_1(%struct.rtx_def*, %struct.rtx_def*, i8*) #0 {
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
  %11 = icmp eq i32 %10, 47
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %3
  %13 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** @flags_set_1_rtx, align 8
  %15 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %13, %struct.rtx_def* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %12
  store i32 1, i32* @flags_set_1_set, align 4
  br label %18

; <label>:18:                                     ; preds = %17, %12, %3
  ret void
}

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare %struct.rtx_def* @gen_add3_insn(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %struct.rtx_def* @gen_lowpart_SUBREG(i32, %struct.rtx_def*) #1

declare void @validate_replace_rtx_group(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @apply_change_group() #1

declare %struct.rtx_def* @next_real_insn(%struct.rtx_def*) #1

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @dead_or_set_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @replace_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_class_subset_p(i32, i32) #1

declare %struct.rtx_def* @remove_death(i32, %struct.rtx_def*) #1

declare i32 @find_reg_fusage(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare zeroext i1 @can_throw_internal(%struct.rtx_def*) #1

declare void @start_sequence() #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @end_sequence() #1

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @extract_insn(%struct.rtx_def*) #1

declare i32 @constrain_operands(i32) #1

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @stable_and_no_regs_but_for_p(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %6, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %7, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 65535
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %89 [
    i32 60, label %20
    i32 49, label %20
    i32 99, label %20
    i32 50, label %20
    i32 98, label %20
    i32 51, label %20
    i32 111, label %60
  ]

; <label>:20:                                     ; preds = %3, %3, %3, %3, %3, %3
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %31

; <label>:31:                                     ; preds = %56, %20
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %59

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 101
  br i1 %41, label %42, label %55

; <label>:42:                                     ; preds = %34
  %43 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %44, i64 0, i64 %46
  %48 = bitcast %union.rtunion_def* %47 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %48, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %52 = call i32 @stable_and_no_regs_but_for_p(%struct.rtx_def* %49, %struct.rtx_def* %50, %struct.rtx_def* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

; <label>:54:                                     ; preds = %42
  store i32 0, i32* %4, align 4
  br label %95

; <label>:55:                                     ; preds = %42, %34
  br label %56

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %9, align 4
  br label %31

; <label>:59:                                     ; preds = %31
  store i32 1, i32* %4, align 4
  br label %95

; <label>:60:                                     ; preds = %3
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 61
  br i1 %62, label %63, label %74

; <label>:63:                                     ; preds = %60
  %64 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %66 = icmp eq %struct.rtx_def* %64, %65
  br i1 %66, label %71, label %67

; <label>:67:                                     ; preds = %63
  %68 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %70 = icmp eq %struct.rtx_def* %68, %69
  br label %71

; <label>:71:                                     ; preds = %67, %63
  %72 = phi i1 [ true, %63 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %95

; <label>:74:                                     ; preds = %60
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 66
  br i1 %76, label %77, label %88

; <label>:77:                                     ; preds = %74
  %78 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %79, i64 0, i64 0
  %81 = bitcast %union.rtunion_def* %80 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %81, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %85 = call i32 @stable_and_no_regs_but_for_p(%struct.rtx_def* %82, %struct.rtx_def* %83, %struct.rtx_def* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

; <label>:87:                                     ; preds = %77
  store i32 0, i32* %4, align 4
  br label %95

; <label>:88:                                     ; preds = %77, %74
  br label %89

; <label>:89:                                     ; preds = %88, %3
  %90 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %91 = call i32 @rtx_unstable_p(%struct.rtx_def* %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %4, align 4
  br label %95

; <label>:95:                                     ; preds = %89, %87, %71, %59, %54
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

; Function Attrs: noinline nounwind uwtable
define internal void @replace_in_call_usage(%struct.rtx_def**, i32, %struct.rtx_def*, %struct.rtx_def*) #0 {
  %5 = alloca %struct.rtx_def**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca %struct.rtx_def*, align 8
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtx_def** %0, %struct.rtx_def*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rtx_def* %2, %struct.rtx_def** %7, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %8, align 8
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %5, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %9, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %17 = icmp ne %struct.rtx_def* %16, null
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %4
  br label %112

; <label>:19:                                     ; preds = %4
  %20 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 65535
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 61
  br i1 %25, label %26, label %40

; <label>:26:                                     ; preds = %19
  %27 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %28, i64 0, i64 0
  %30 = bitcast %union.rtunion_def* %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %26
  br label %112

; <label>:35:                                     ; preds = %26
  %36 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %37 = load %struct.rtx_def**, %struct.rtx_def*** %5, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %39 = call i32 @validate_change(%struct.rtx_def* %36, %struct.rtx_def** %37, %struct.rtx_def* %38, i32 1)
  br label %112

; <label>:40:                                     ; preds = %19
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %45

; <label>:45:                                     ; preds = %107, %40
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %53, label %112

; <label>:53:                                     ; preds = %45
  %54 = load i8*, i8** %11, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 101
  br i1 %57, label %58, label %68

; <label>:58:                                     ; preds = %53
  %59 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %60, i64 0, i64 %62
  %64 = bitcast %union.rtunion_def* %63 to %struct.rtx_def**
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  call void @replace_in_call_usage(%struct.rtx_def** %64, i32 %65, %struct.rtx_def* %66, %struct.rtx_def* %67)
  br label %106

; <label>:68:                                     ; preds = %53
  %69 = load i8*, i8** %11, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 69
  br i1 %72, label %73, label %105

; <label>:73:                                     ; preds = %68
  store i32 0, i32* %13, align 4
  br label %74

; <label>:74:                                     ; preds = %101, %73
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %77, i64 0, i64 %79
  %81 = bitcast %union.rtunion_def* %80 to %struct.rtvec_def**
  %82 = load %struct.rtvec_def*, %struct.rtvec_def** %81, align 8
  %83 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %75, %84
  br i1 %85, label %86, label %104

; <label>:86:                                     ; preds = %74
  %87 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %88, i64 0, i64 %90
  %92 = bitcast %union.rtunion_def* %91 to %struct.rtvec_def**
  %93 = load %struct.rtvec_def*, %struct.rtvec_def** %92, align 8
  %94 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %93, i32 0, i32 1
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %94, i64 0, i64 %96
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  call void @replace_in_call_usage(%struct.rtx_def** %97, i32 %98, %struct.rtx_def* %99, %struct.rtx_def* %100)
  br label %101

; <label>:101:                                    ; preds = %86
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %74

; <label>:104:                                    ; preds = %74
  br label %105

; <label>:105:                                    ; preds = %104, %68
  br label %106

; <label>:106:                                    ; preds = %105, %58
  br label %107

; <label>:107:                                    ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %11, align 8
  br label %45

; <label>:112:                                    ; preds = %45, %35, %34, %18
  ret void
}

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare void @emit_insn_after_with_line_notes(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare i32 @exact_log2_wide(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @try_auto_increment(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, i32) #0 {
  %7 = alloca %struct.rtx_def*, align 8
  %8 = alloca %struct.rtx_def*, align 8
  %9 = alloca %struct.rtx_def*, align 8
  %10 = alloca %struct.rtx_def*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtx_def*, align 8
  %15 = alloca %struct.rtx_def*, align 8
  %16 = alloca i32, align 4
  store %struct.rtx_def* %0, %struct.rtx_def** %7, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %8, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %9, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 65535
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 105
  br i1 %25, label %26, label %52

; <label>:26:                                     ; preds = %6
  %27 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %28, i64 0, i64 3
  %30 = bitcast %union.rtunion_def* %29 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %26
  %37 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %38, i64 0, i64 3
  %40 = bitcast %union.rtunion_def* %39 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %40, align 8
  br label %50

; <label>:42:                                     ; preds = %26
  %43 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %45, i64 0, i64 3
  %47 = bitcast %union.rtunion_def* %46 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %47, align 8
  %49 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %43, %struct.rtx_def* %48)
  br label %50

; <label>:50:                                     ; preds = %42, %36
  %51 = phi %struct.rtx_def* [ %41, %36 ], [ %49, %42 ]
  br label %53

; <label>:52:                                     ; preds = %6
  br label %53

; <label>:53:                                     ; preds = %52, %50
  %54 = phi %struct.rtx_def* [ %51, %50 ], [ null, %52 ]
  store %struct.rtx_def* %54, %struct.rtx_def** %14, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %56 = icmp ne %struct.rtx_def* %55, null
  br i1 %56, label %57, label %77

; <label>:57:                                     ; preds = %53
  %58 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %60 = call %struct.rtx_def* @find_use_as_address(%struct.rtx_def* %58, %struct.rtx_def* %59, i64 0)
  store %struct.rtx_def* %60, %struct.rtx_def** %15, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %62 = icmp ne %struct.rtx_def* %61, null
  br i1 %62, label %63, label %76

; <label>:63:                                     ; preds = %57
  %64 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %65 = icmp ne %struct.rtx_def* %64, inttoptr (i64 1 to %struct.rtx_def*)
  br i1 %65, label %66, label %76

; <label>:66:                                     ; preds = %63
  %67 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %69 = load i32, i32* %68, align 8
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  store i32 %75, i32* %16, align 4
  br label %76

; <label>:76:                                     ; preds = %66, %63, %57
  br label %77

; <label>:77:                                     ; preds = %76, %53
  ret i32 0
}

declare i32 @rtx_unstable_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_use_as_address(%struct.rtx_def*, %struct.rtx_def*, i64) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.rtx_def* @single_set_for_csa(%struct.rtx_def*) #0 {
  %2 = alloca %struct.rtx_def*, align 8
  %3 = alloca %struct.rtx_def*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtx_def*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %3, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 65535
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 105
  br i1 %15, label %16, label %42

; <label>:16:                                     ; preds = %1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %18, i64 0, i64 3
  %20 = bitcast %union.rtunion_def* %19 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %32

; <label>:26:                                     ; preds = %16
  %27 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %28, i64 0, i64 3
  %30 = bitcast %union.rtunion_def* %29 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  br label %40

; <label>:32:                                     ; preds = %16
  %33 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %35, i64 0, i64 3
  %37 = bitcast %union.rtunion_def* %36 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %37, align 8
  %39 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %33, %struct.rtx_def* %38)
  br label %40

; <label>:40:                                     ; preds = %32, %26
  %41 = phi %struct.rtx_def* [ %31, %26 ], [ %39, %32 ]
  br label %43

; <label>:42:                                     ; preds = %1
  br label %43

; <label>:43:                                     ; preds = %42, %40
  %44 = phi %struct.rtx_def* [ %41, %40 ], [ null, %42 ]
  store %struct.rtx_def* %44, %struct.rtx_def** %5, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %46 = icmp ne %struct.rtx_def* %45, null
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %43
  %48 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %2, align 8
  br label %152

; <label>:49:                                     ; preds = %43
  %50 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp ne i32 %53, 32
  br i1 %54, label %65, label %55

; <label>:55:                                     ; preds = %49
  %56 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %57, i64 0, i64 3
  %59 = bitcast %union.rtunion_def* %58 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %59, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp ne i32 %63, 39
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %55, %49
  store %struct.rtx_def* null, %struct.rtx_def** %2, align 8
  br label %152

; <label>:66:                                     ; preds = %55
  %67 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %68, i64 0, i64 3
  %70 = bitcast %union.rtunion_def* %69 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %70, align 8
  store %struct.rtx_def* %71, %struct.rtx_def** %5, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %73, i64 0, i64 0
  %75 = bitcast %union.rtunion_def* %74 to %struct.rtvec_def**
  %76 = load %struct.rtvec_def*, %struct.rtvec_def** %75, align 8
  %77 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %76, i32 0, i32 1
  %78 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %77, i64 0, i64 0
  %79 = load %struct.rtx_def*, %struct.rtx_def** %78, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp ne i32 %82, 47
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %66
  store %struct.rtx_def* null, %struct.rtx_def** %2, align 8
  br label %152

; <label>:85:                                     ; preds = %66
  store i32 1, i32* %4, align 4
  br label %86

; <label>:86:                                     ; preds = %140, %85
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %89, i64 0, i64 0
  %91 = bitcast %union.rtunion_def* %90 to %struct.rtvec_def**
  %92 = load %struct.rtvec_def*, %struct.rtvec_def** %91, align 8
  %93 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %87, %94
  br i1 %95, label %96, label %143

; <label>:96:                                     ; preds = %86
  %97 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %98, i64 0, i64 0
  %100 = bitcast %union.rtunion_def* %99 to %struct.rtvec_def**
  %101 = load %struct.rtvec_def*, %struct.rtvec_def** %100, align 8
  %102 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %101, i32 0, i32 1
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %102, i64 0, i64 %104
  %106 = load %struct.rtx_def*, %struct.rtx_def** %105, align 8
  store %struct.rtx_def* %106, %struct.rtx_def** %6, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 47
  br i1 %111, label %112, label %125

; <label>:112:                                    ; preds = %96
  %113 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %114, i64 0, i64 1
  %116 = bitcast %union.rtunion_def* %115 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %116, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %119, i64 0, i64 0
  %121 = bitcast %union.rtunion_def* %120 to %struct.rtx_def**
  %122 = load %struct.rtx_def*, %struct.rtx_def** %121, align 8
  %123 = icmp eq %struct.rtx_def* %117, %122
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %112
  br label %139

; <label>:125:                                    ; preds = %112, %96
  %126 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 65535
  %130 = icmp ne i32 %129, 49
  br i1 %130, label %131, label %138

; <label>:131:                                    ; preds = %125
  %132 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 65535
  %136 = icmp ne i32 %135, 48
  br i1 %136, label %137, label %138

; <label>:137:                                    ; preds = %131
  store %struct.rtx_def* null, %struct.rtx_def** %2, align 8
  br label %152

; <label>:138:                                    ; preds = %131, %125
  br label %139

; <label>:139:                                    ; preds = %138, %124
  br label %140

; <label>:140:                                    ; preds = %139
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %86

; <label>:143:                                    ; preds = %86
  %144 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %145, i64 0, i64 0
  %147 = bitcast %union.rtunion_def* %146 to %struct.rtvec_def**
  %148 = load %struct.rtvec_def*, %struct.rtvec_def** %147, align 8
  %149 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %148, i32 0, i32 1
  %150 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %149, i64 0, i64 0
  %151 = load %struct.rtx_def*, %struct.rtx_def** %150, align 8
  store %struct.rtx_def* %151, %struct.rtx_def** %2, align 8
  br label %152

; <label>:152:                                    ; preds = %143, %137, %84, %65, %47
  %153 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  ret %struct.rtx_def* %153
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @try_apply_stack_adjustment(%struct.rtx_def*, %struct.csa_memlist*, i64, i64) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %struct.csa_memlist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.csa_memlist*, align 8
  %11 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %6, align 8
  store %struct.csa_memlist* %1, %struct.csa_memlist** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %13 = call %struct.rtx_def* @single_set_for_csa(%struct.rtx_def* %12)
  store %struct.rtx_def* %13, %struct.rtx_def** %11, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %16, i64 0, i64 1
  %18 = bitcast %union.rtunion_def* %17 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %20, i64 0, i64 1
  %22 = bitcast %union.rtunion_def* %21 to %struct.rtx_def**
  %23 = load i64, i64* %8, align 8
  %24 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %23)
  %25 = call i32 @validate_change(%struct.rtx_def* %14, %struct.rtx_def** %22, %struct.rtx_def* %24, i32 1)
  %26 = load %struct.csa_memlist*, %struct.csa_memlist** %7, align 8
  store %struct.csa_memlist* %26, %struct.csa_memlist** %10, align 8
  br label %27

; <label>:27:                                     ; preds = %50, %4
  %28 = load %struct.csa_memlist*, %struct.csa_memlist** %10, align 8
  %29 = icmp ne %struct.csa_memlist* %28, null
  br i1 %29, label %30, label %54

; <label>:30:                                     ; preds = %27
  %31 = load %struct.csa_memlist*, %struct.csa_memlist** %10, align 8
  %32 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %31, i32 0, i32 1
  %33 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %34 = load %struct.csa_memlist*, %struct.csa_memlist** %10, align 8
  %35 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %34, i32 0, i32 2
  %36 = load %struct.rtx_def**, %struct.rtx_def*** %35, align 8
  %37 = load %struct.csa_memlist*, %struct.csa_memlist** %10, align 8
  %38 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %37, i32 0, i32 2
  %39 = load %struct.rtx_def**, %struct.rtx_def*** %38, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %42 = load %struct.csa_memlist*, %struct.csa_memlist** %10, align 8
  %43 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %41, i64 %46)
  %48 = call %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def* %40, %struct.rtx_def* %47)
  %49 = call i32 @validate_change(%struct.rtx_def* %33, %struct.rtx_def** %36, %struct.rtx_def* %48, i32 1)
  br label %50

; <label>:50:                                     ; preds = %30
  %51 = load %struct.csa_memlist*, %struct.csa_memlist** %10, align 8
  %52 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %51, i32 0, i32 3
  %53 = load %struct.csa_memlist*, %struct.csa_memlist** %52, align 8
  store %struct.csa_memlist* %53, %struct.csa_memlist** %10, align 8
  br label %27

; <label>:54:                                     ; preds = %27
  %55 = call i32 @apply_change_group()
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

; <label>:57:                                     ; preds = %54
  %58 = load %struct.csa_memlist*, %struct.csa_memlist** %7, align 8
  store %struct.csa_memlist* %58, %struct.csa_memlist** %10, align 8
  br label %59

; <label>:59:                                     ; preds = %68, %57
  %60 = load %struct.csa_memlist*, %struct.csa_memlist** %10, align 8
  %61 = icmp ne %struct.csa_memlist* %60, null
  br i1 %61, label %62, label %72

; <label>:62:                                     ; preds = %59
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.csa_memlist*, %struct.csa_memlist** %10, align 8
  %65 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %68

; <label>:68:                                     ; preds = %62
  %69 = load %struct.csa_memlist*, %struct.csa_memlist** %10, align 8
  %70 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %69, i32 0, i32 3
  %71 = load %struct.csa_memlist*, %struct.csa_memlist** %70, align 8
  store %struct.csa_memlist* %71, %struct.csa_memlist** %10, align 8
  br label %59

; <label>:72:                                     ; preds = %59
  store i32 1, i32* %5, align 4
  br label %74

; <label>:73:                                     ; preds = %54
  store i32 0, i32* %5, align 4
  br label %74

; <label>:74:                                     ; preds = %73, %72
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_csa_memlist(%struct.csa_memlist*) #0 {
  %2 = alloca %struct.csa_memlist*, align 8
  %3 = alloca %struct.csa_memlist*, align 8
  store %struct.csa_memlist* %0, %struct.csa_memlist** %2, align 8
  br label %4

; <label>:4:                                      ; preds = %13, %1
  %5 = load %struct.csa_memlist*, %struct.csa_memlist** %2, align 8
  %6 = icmp ne %struct.csa_memlist* %5, null
  br i1 %6, label %7, label %15

; <label>:7:                                      ; preds = %4
  %8 = load %struct.csa_memlist*, %struct.csa_memlist** %2, align 8
  %9 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %8, i32 0, i32 3
  %10 = load %struct.csa_memlist*, %struct.csa_memlist** %9, align 8
  store %struct.csa_memlist* %10, %struct.csa_memlist** %3, align 8
  %11 = load %struct.csa_memlist*, %struct.csa_memlist** %2, align 8
  %12 = bitcast %struct.csa_memlist* %11 to i8*
  call void @free(i8* %12) #3
  br label %13

; <label>:13:                                     ; preds = %7
  %14 = load %struct.csa_memlist*, %struct.csa_memlist** %3, align 8
  store %struct.csa_memlist* %14, %struct.csa_memlist** %2, align 8
  br label %4

; <label>:15:                                     ; preds = %4
  ret void
}

declare i32 @memory_address_p(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @replace_equiv_address(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @record_stack_memrefs(%struct.rtx_def**, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtx_def**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtx_def*, align 8
  %7 = alloca %struct.record_stack_memrefs_data*, align 8
  store %struct.rtx_def** %0, %struct.rtx_def*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.record_stack_memrefs_data*
  store %struct.record_stack_memrefs_data* %11, %struct.record_stack_memrefs_data** %7, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %13 = icmp ne %struct.rtx_def* %12, null
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

; <label>:15:                                     ; preds = %2
  %16 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 65535
  switch i32 %19, label %51 [
    i32 66, label %20
    i32 61, label %42
  ]

; <label>:20:                                     ; preds = %15
  %21 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %22 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %23 = call i32 @reg_mentioned_p(%struct.rtx_def* %21, %struct.rtx_def* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %53

; <label>:26:                                     ; preds = %20
  %27 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %28 = call i32 @stack_memref_p(%struct.rtx_def* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

; <label>:30:                                     ; preds = %26
  %31 = load %struct.record_stack_memrefs_data*, %struct.record_stack_memrefs_data** %7, align 8
  %32 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %31, i32 0, i32 0
  %33 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %34 = load %struct.rtx_def**, %struct.rtx_def*** %4, align 8
  %35 = load %struct.record_stack_memrefs_data*, %struct.record_stack_memrefs_data** %7, align 8
  %36 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %35, i32 0, i32 1
  %37 = load %struct.csa_memlist*, %struct.csa_memlist** %36, align 8
  %38 = call %struct.csa_memlist* @record_one_stack_memref(%struct.rtx_def* %33, %struct.rtx_def** %34, %struct.csa_memlist* %37)
  %39 = load %struct.record_stack_memrefs_data*, %struct.record_stack_memrefs_data** %7, align 8
  %40 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %39, i32 0, i32 1
  store %struct.csa_memlist* %38, %struct.csa_memlist** %40, align 8
  store i32 -1, i32* %3, align 4
  br label %53

; <label>:41:                                     ; preds = %26
  store i32 1, i32* %3, align 4
  br label %53

; <label>:42:                                     ; preds = %15
  %43 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %44, i64 0, i64 0
  %46 = bitcast %union.rtunion_def* %45 to i32*
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 7
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %42
  store i32 1, i32* %3, align 4
  br label %53

; <label>:50:                                     ; preds = %42
  br label %52

; <label>:51:                                     ; preds = %15
  br label %52

; <label>:52:                                     ; preds = %51, %50
  store i32 0, i32* %3, align 4
  br label %53

; <label>:53:                                     ; preds = %52, %49, %41, %30, %25, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @stack_memref_p(%struct.rtx_def*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %3, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 65535
  %8 = icmp ne i32 %7, 66
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

; <label>:10:                                     ; preds = %1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %12, i64 0, i64 0
  %14 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %3, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %18 = icmp eq %struct.rtx_def* %16, %17
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %10
  store i32 1, i32* %2, align 4
  br label %46

; <label>:20:                                     ; preds = %10
  %21 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 75
  br i1 %25, label %26, label %45

; <label>:26:                                     ; preds = %20
  %27 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %28, i64 0, i64 0
  %30 = bitcast %union.rtunion_def* %29 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %33 = icmp eq %struct.rtx_def* %31, %32
  br i1 %33, label %34, label %45

; <label>:34:                                     ; preds = %26
  %35 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %36, i64 0, i64 1
  %38 = bitcast %union.rtunion_def* %37 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %38, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 54
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %34
  store i32 1, i32* %2, align 4
  br label %46

; <label>:45:                                     ; preds = %34, %26, %20
  store i32 0, i32* %2, align 4
  br label %46

; <label>:46:                                     ; preds = %45, %44, %19, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.csa_memlist* @record_one_stack_memref(%struct.rtx_def*, %struct.rtx_def**, %struct.csa_memlist*) #0 {
  %4 = alloca %struct.rtx_def*, align 8
  %5 = alloca %struct.rtx_def**, align 8
  %6 = alloca %struct.csa_memlist*, align 8
  %7 = alloca %struct.csa_memlist*, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %4, align 8
  store %struct.rtx_def** %1, %struct.rtx_def*** %5, align 8
  store %struct.csa_memlist* %2, %struct.csa_memlist** %6, align 8
  %8 = call noalias i8* @xmalloc(i64 32)
  %9 = bitcast i8* %8 to %struct.csa_memlist*
  store %struct.csa_memlist* %9, %struct.csa_memlist** %7, align 8
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %5, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %12, i64 0, i64 0
  %14 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16
  %17 = icmp eq %struct.rtx_def* %15, %16
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %3
  %19 = load %struct.csa_memlist*, %struct.csa_memlist** %7, align 8
  %20 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %38

; <label>:21:                                     ; preds = %3
  %22 = load %struct.rtx_def**, %struct.rtx_def*** %5, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %24, i64 0, i64 0
  %26 = bitcast %union.rtunion_def* %25 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %28, i64 0, i64 1
  %30 = bitcast %union.rtunion_def* %29 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %32, i64 0, i64 0
  %34 = bitcast %union.rtunion_def* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.csa_memlist*, %struct.csa_memlist** %7, align 8
  %37 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

; <label>:38:                                     ; preds = %21, %18
  %39 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %40 = load %struct.csa_memlist*, %struct.csa_memlist** %7, align 8
  %41 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %40, i32 0, i32 1
  store %struct.rtx_def* %39, %struct.rtx_def** %41, align 8
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %5, align 8
  %43 = load %struct.csa_memlist*, %struct.csa_memlist** %7, align 8
  %44 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %43, i32 0, i32 2
  store %struct.rtx_def** %42, %struct.rtx_def*** %44, align 8
  %45 = load %struct.csa_memlist*, %struct.csa_memlist** %6, align 8
  %46 = load %struct.csa_memlist*, %struct.csa_memlist** %7, align 8
  %47 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %46, i32 0, i32 3
  store %struct.csa_memlist* %45, %struct.csa_memlist** %47, align 8
  %48 = load %struct.csa_memlist*, %struct.csa_memlist** %7, align 8
  ret %struct.csa_memlist* %48
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
