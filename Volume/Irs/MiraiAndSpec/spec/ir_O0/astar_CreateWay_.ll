; ModuleID = 'host/ir_O0/astar_CreateWay_.ll'
source_filename = "CreateWay_.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.wayobj = type <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, %struct.createwaymnginfot, %struct.createwayinfot, [4 x i8], i16*, %struct.waymapcellt*, i32*, i32*, i32, i32, i8, [3 x i8], i32, i16, i16, [4 x i8] }>
%struct.createwaymnginfot = type { float, float, float, float, i32, i32, float, float }
%struct.createwayinfot = type <{ %class.rvectort, %class.rvectort, i8, [3 x i8] }>
%class.rvectort = type { float, float, float }
%struct.waymapcellt = type { i16, i16 }
%struct.wayinfot = type { i8, %class.rvectort*, i32, i8 }
%struct.point16t = type { i16, i16 }

$_ZN8point16tC2Ess = comdat any

$_ZN8rvectortC2Ev = comdat any

$_ZN6wayobj6indexxEi = comdat any

$_ZN6wayobj6indexyEi = comdat any

$_ZN6wayobj5indexEii = comdat any

$_ZN6wayobj3mapEii = comdat any

$_ZN6wayobj4getxEf = comdat any

$_ZN6wayobj4getyEf = comdat any

@_ZL5alfa1 = internal global i32 0, align 4
@_ZL5alfa2 = internal global i32 0, align 4
@_ZL5alfa3 = internal global i32 0, align 4
@_ZL5alfa4 = internal global i32 0, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CreateWay_.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  %1 = call double @sin(double 0x3FF2D97C7F3321D2) #8
  %2 = fmul double 1.000000e+02, %1
  %3 = call double @cos(double 0x3FF2D97C7F3321D2) #8
  %4 = fdiv double %2, %3
  %5 = fadd double %4, 5.000000e-01
  %6 = fptosi double %5 to i32
  store i32 %6, i32* @_ZL5alfa1, align 4
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" {
  %1 = call double @sin(double 0x3FD921FB54442D18) #8
  %2 = fmul double 1.000000e+02, %1
  %3 = call double @cos(double 0x3FD921FB54442D18) #8
  %4 = fdiv double %2, %3
  %5 = fadd double %4, 5.000000e-01
  %6 = fptosi double %5 to i32
  store i32 %6, i32* @_ZL5alfa2, align 4
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" {
  %1 = call double @sin(double 0xBFD921FB54442D18) #8
  %2 = fmul double 1.000000e+02, %1
  %3 = call double @cos(double 0xBFD921FB54442D18) #8
  %4 = fdiv double %2, %3
  %5 = fadd double %4, 5.000000e-01
  %6 = fptosi double %5 to i32
  store i32 %6, i32* @_ZL5alfa3, align 4
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.3() #0 section ".text.startup" {
  %1 = call double @sin(double 0xBFF2D97C7F3321D2) #8
  %2 = fmul double 1.000000e+02, %1
  %3 = call double @cos(double 0xBFF2D97C7F3321D2) #8
  %4 = fdiv double %2, %3
  %5 = fadd double %4, 5.000000e-01
  %6 = fptosi double %5 to i32
  store i32 %6, i32* @_ZL5alfa4, align 4
  ret void
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj11createwayarEiiR8wayinfot(%class.wayobj*, i32, i32, %struct.wayinfot* dereferenceable(24)) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca i1, align 1
  %6 = alloca %class.wayobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wayinfot*, align 8
  %10 = alloca [8 x %struct.point16t], align 16
  %11 = alloca %class.rvectort*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.waymapcellt*, align 8
  %15 = alloca i32, align 4
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*
  %37 = alloca i32
  %38 = alloca %class.rvectort, align 4
  %39 = alloca { <2 x float>, float }, align 8
  %40 = alloca %class.rvectort, align 4
  %41 = alloca { <2 x float>, float }, align 8
  store %class.wayobj* %0, %class.wayobj** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.wayinfot* %3, %struct.wayinfot** %9, align 8
  %42 = load %class.wayobj*, %class.wayobj** %6, align 8
  %43 = getelementptr inbounds [8 x %struct.point16t], [8 x %struct.point16t]* %10, i64 0, i64 0
  call void @_ZN8point16tC2Ess(%struct.point16t* %43, i16 signext -1, i16 signext 1)
  %44 = getelementptr inbounds %struct.point16t, %struct.point16t* %43, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %44, i16 signext 0, i16 signext 1)
  %45 = getelementptr inbounds %struct.point16t, %struct.point16t* %44, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %45, i16 signext 1, i16 signext 1)
  %46 = getelementptr inbounds %struct.point16t, %struct.point16t* %45, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %46, i16 signext 1, i16 signext 0)
  %47 = getelementptr inbounds %struct.point16t, %struct.point16t* %46, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %47, i16 signext 1, i16 signext -1)
  %48 = getelementptr inbounds %struct.point16t, %struct.point16t* %47, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %48, i16 signext 0, i16 signext -1)
  %49 = getelementptr inbounds %struct.point16t, %struct.point16t* %48, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %49, i16 signext -1, i16 signext -1)
  %50 = getelementptr inbounds %struct.point16t, %struct.point16t* %49, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %50, i16 signext -1, i16 signext 0)
  %51 = getelementptr inbounds %class.wayobj, %class.wayobj* %42, i32 0, i32 26
  %52 = load i16, i16* %51, align 8
  %53 = sext i16 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %55, i64 12)
  %57 = extractvalue { i64, i1 } %56, 1
  %58 = extractvalue { i64, i1 } %56, 0
  %59 = select i1 %57, i64 -1, i64 %58
  %60 = call i8* @_Znam(i64 %59) #9
  %61 = bitcast i8* %60 to %class.rvectort*
  %62 = icmp eq i64 %55, 0
  br i1 %62, label %70, label %63

; <label>:63:                                     ; preds = %4
  %64 = getelementptr inbounds %class.rvectort, %class.rvectort* %61, i64 %55
  br label %65

; <label>:65:                                     ; preds = %67, %63
  %66 = phi %class.rvectort* [ %61, %63 ], [ %68, %67 ]
  invoke void @_ZN8rvectortC2Ev(%class.rvectort* %66)
          to label %67 unwind label %99

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds %class.rvectort, %class.rvectort* %66, i64 1
  %69 = icmp eq %class.rvectort* %68, %64
  br i1 %69, label %70, label %65

; <label>:70:                                     ; preds = %67, %4
  store %class.rvectort* %61, %class.rvectort** %11, align 8
  %71 = getelementptr inbounds %class.wayobj, %class.wayobj* %42, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %13, align 4
  %73 = getelementptr inbounds %class.wayobj, %class.wayobj* %42, i32 0, i32 18
  %74 = load %struct.waymapcellt*, %struct.waymapcellt** %73, align 8
  store %struct.waymapcellt* %74, %struct.waymapcellt** %14, align 8
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %42, i32 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %42, i32 %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %80, 2
  store i32 %81, i32* %34, align 4
  br label %82

; <label>:82:                                     ; preds = %346, %70
  %83 = load i32, i32* %34, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %349

; <label>:85:                                     ; preds = %82
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %42, i32 %86)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %42, i32 %88)
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %19, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %25, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %20, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %26, align 4
  %96 = load i32, i32* %25, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %103

; <label>:98:                                     ; preds = %85
  store i32 1, i32* %25, align 4
  br label %108

; <label>:99:                                     ; preds = %65
  %100 = landingpad { i8*, i32 }
          cleanup
  %101 = extractvalue { i8*, i32 } %100, 0
  store i8* %101, i8** %36, align 8
  %102 = extractvalue { i8*, i32 } %100, 1
  store i32 %102, i32* %37, align 4
  call void @_ZdaPv(i8* %60) #10
  br label %377

; <label>:103:                                    ; preds = %85
  %104 = load i32, i32* %25, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %103
  store i32 -1, i32* %25, align 4
  br label %107

; <label>:107:                                    ; preds = %106, %103
  br label %108

; <label>:108:                                    ; preds = %107, %98
  %109 = load i32, i32* %26, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %108
  store i32 1, i32* %26, align 4
  br label %117

; <label>:112:                                    ; preds = %108
  %113 = load i32, i32* %26, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

; <label>:115:                                    ; preds = %112
  store i32 -1, i32* %26, align 4
  br label %116

; <label>:116:                                    ; preds = %115, %112
  br label %117

; <label>:117:                                    ; preds = %116, %111
  %118 = load i32, i32* %26, align 4
  %119 = mul nsw i32 100, %118
  %120 = load i32, i32* @_ZL5alfa1, align 4
  %121 = load i32, i32* %25, align 4
  %122 = mul nsw i32 %120, %121
  %123 = icmp sge i32 %119, %122
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %117
  store i32 1, i32* %27, align 4
  br label %126

; <label>:125:                                    ; preds = %117
  store i32 -1, i32* %27, align 4
  br label %126

; <label>:126:                                    ; preds = %125, %124
  %127 = load i32, i32* %26, align 4
  %128 = mul nsw i32 100, %127
  %129 = load i32, i32* @_ZL5alfa2, align 4
  %130 = load i32, i32* %25, align 4
  %131 = mul nsw i32 %129, %130
  %132 = icmp sge i32 %128, %131
  br i1 %132, label %133, label %134

; <label>:133:                                    ; preds = %126
  store i32 1, i32* %28, align 4
  br label %135

; <label>:134:                                    ; preds = %126
  store i32 -1, i32* %28, align 4
  br label %135

; <label>:135:                                    ; preds = %134, %133
  %136 = load i32, i32* %26, align 4
  %137 = mul nsw i32 100, %136
  %138 = load i32, i32* @_ZL5alfa3, align 4
  %139 = load i32, i32* %25, align 4
  %140 = mul nsw i32 %138, %139
  %141 = icmp sge i32 %137, %140
  br i1 %141, label %142, label %143

; <label>:142:                                    ; preds = %135
  store i32 1, i32* %29, align 4
  br label %144

; <label>:143:                                    ; preds = %135
  store i32 -1, i32* %29, align 4
  br label %144

; <label>:144:                                    ; preds = %143, %142
  %145 = load i32, i32* %26, align 4
  %146 = mul nsw i32 100, %145
  %147 = load i32, i32* @_ZL5alfa4, align 4
  %148 = load i32, i32* %25, align 4
  %149 = mul nsw i32 %147, %148
  %150 = icmp sge i32 %146, %149
  br i1 %150, label %151, label %152

; <label>:151:                                    ; preds = %144
  store i32 1, i32* %30, align 4
  br label %153

; <label>:152:                                    ; preds = %144
  store i32 -1, i32* %30, align 4
  br label %153

; <label>:153:                                    ; preds = %152, %151
  %154 = load i32, i32* %27, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %160

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* %30, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %160

; <label>:159:                                    ; preds = %156
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  store i32 1, i32* %31, align 4
  br label %210

; <label>:160:                                    ; preds = %156, %153
  %161 = load i32, i32* %28, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %167

; <label>:163:                                    ; preds = %160
  %164 = load i32, i32* %27, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %167

; <label>:166:                                    ; preds = %163
  store i32 1, i32* %23, align 4
  store i32 1, i32* %24, align 4
  store i32 2, i32* %31, align 4
  br label %210

; <label>:167:                                    ; preds = %163, %160
  %168 = load i32, i32* %29, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %174

; <label>:170:                                    ; preds = %167
  %171 = load i32, i32* %28, align 4
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %173, label %174

; <label>:173:                                    ; preds = %170
  store i32 1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 3, i32* %31, align 4
  br label %210

; <label>:174:                                    ; preds = %170, %167
  %175 = load i32, i32* %30, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %181

; <label>:177:                                    ; preds = %174
  %178 = load i32, i32* %29, align 4
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %181

; <label>:180:                                    ; preds = %177
  store i32 1, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  store i32 4, i32* %31, align 4
  br label %210

; <label>:181:                                    ; preds = %177, %174
  %182 = load i32, i32* %27, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %188

; <label>:184:                                    ; preds = %181
  %185 = load i32, i32* %30, align 4
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %188

; <label>:187:                                    ; preds = %184
  store i32 0, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  store i32 5, i32* %31, align 4
  br label %210

; <label>:188:                                    ; preds = %184, %181
  %189 = load i32, i32* %27, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %195

; <label>:191:                                    ; preds = %188
  %192 = load i32, i32* %28, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %195

; <label>:194:                                    ; preds = %191
  store i32 -1, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  store i32 6, i32* %31, align 4
  br label %210

; <label>:195:                                    ; preds = %191, %188
  %196 = load i32, i32* %28, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %202

; <label>:198:                                    ; preds = %195
  %199 = load i32, i32* %29, align 4
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %202

; <label>:201:                                    ; preds = %198
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 7, i32* %31, align 4
  br label %210

; <label>:202:                                    ; preds = %198, %195
  %203 = load i32, i32* %29, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %209

; <label>:205:                                    ; preds = %202
  %206 = load i32, i32* %30, align 4
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %208, label %209

; <label>:208:                                    ; preds = %205
  store i32 -1, i32* %23, align 4
  store i32 1, i32* %24, align 4
  store i32 0, i32* %31, align 4
  br label %210

; <label>:209:                                    ; preds = %205, %202
  store i32 -1, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  store i32 6, i32* %31, align 4
  br label %210

; <label>:210:                                    ; preds = %209, %208, %201, %194, %187, %180, %173, %166, %159
  %211 = load i32, i32* %31, align 4
  store i32 %211, i32* %32, align 4
  %212 = load i32, i32* %31, align 4
  %213 = add nsw i32 %212, 1
  %214 = and i32 %213, 7
  store i32 %214, i32* %33, align 4
  store i32 0, i32* %35, align 4
  br label %215

; <label>:215:                                    ; preds = %336, %210
  %216 = load i32, i32* %35, align 4
  %217 = icmp slt i32 %216, 4
  br i1 %217, label %218, label %339

; <label>:218:                                    ; preds = %215
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %32, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [8 x %struct.point16t], [8 x %struct.point16t]* %10, i64 0, i64 %221
  %223 = getelementptr inbounds %struct.point16t, %struct.point16t* %222, i32 0, i32 0
  %224 = load i16, i16* %223, align 4
  %225 = sext i16 %224 to i32
  %226 = add nsw i32 %219, %225
  store i32 %226, i32* %21, align 4
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %32, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [8 x %struct.point16t], [8 x %struct.point16t]* %10, i64 0, i64 %229
  %231 = getelementptr inbounds %struct.point16t, %struct.point16t* %230, i32 0, i32 1
  %232 = load i16, i16* %231, align 2
  %233 = sext i16 %232 to i32
  %234 = add nsw i32 %227, %233
  store i32 %234, i32* %22, align 4
  %235 = load i32, i32* %21, align 4
  %236 = load i32, i32* %22, align 4
  %237 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %42, i32 %235, i32 %236)
  store i32 %237, i32* %16, align 4
  %238 = load %struct.waymapcellt*, %struct.waymapcellt** %14, align 8
  %239 = load i32, i32* %16, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %238, i64 %240
  %242 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %241, i32 0, i32 0
  %243 = load i16, i16* %242, align 2
  %244 = zext i16 %243 to i32
  %245 = getelementptr inbounds %class.wayobj, %class.wayobj* %42, i32 0, i32 27
  %246 = load i16, i16* %245, align 2
  %247 = zext i16 %246 to i32
  %248 = icmp eq i32 %244, %247
  br i1 %248, label %249, label %272

; <label>:249:                                    ; preds = %218
  %250 = load %struct.waymapcellt*, %struct.waymapcellt** %14, align 8
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %250, i64 %252
  %254 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %253, i32 0, i32 1
  %255 = load i16, i16* %254, align 2
  %256 = zext i16 %255 to i32
  %257 = load i32, i32* %34, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %271

; <label>:259:                                    ; preds = %249
  %260 = load i32, i32* %16, align 4
  %261 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %42, i32 %260)
  store { <2 x float>, float } %261, { <2 x float>, float }* %39, align 8
  %262 = bitcast { <2 x float>, float }* %39 to i8*
  %263 = bitcast %class.rvectort* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %263, i8* %262, i64 12, i32 4, i1 false)
  %264 = load %class.rvectort*, %class.rvectort** %11, align 8
  %265 = load i32, i32* %34, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %class.rvectort, %class.rvectort* %264, i64 %266
  %268 = bitcast %class.rvectort* %267 to i8*
  %269 = bitcast %class.rvectort* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %268, i8* %269, i64 12, i32 4, i1 false)
  %270 = load i32, i32* %16, align 4
  store i32 %270, i32* %15, align 4
  br label %345

; <label>:271:                                    ; preds = %249
  br label %272

; <label>:272:                                    ; preds = %271, %218
  %273 = load i32, i32* %19, align 4
  %274 = load i32, i32* %33, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [8 x %struct.point16t], [8 x %struct.point16t]* %10, i64 0, i64 %275
  %277 = getelementptr inbounds %struct.point16t, %struct.point16t* %276, i32 0, i32 0
  %278 = load i16, i16* %277, align 4
  %279 = sext i16 %278 to i32
  %280 = add nsw i32 %273, %279
  store i32 %280, i32* %21, align 4
  %281 = load i32, i32* %20, align 4
  %282 = load i32, i32* %33, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [8 x %struct.point16t], [8 x %struct.point16t]* %10, i64 0, i64 %283
  %285 = getelementptr inbounds %struct.point16t, %struct.point16t* %284, i32 0, i32 1
  %286 = load i16, i16* %285, align 2
  %287 = sext i16 %286 to i32
  %288 = add nsw i32 %281, %287
  store i32 %288, i32* %22, align 4
  %289 = load i32, i32* %21, align 4
  %290 = load i32, i32* %22, align 4
  %291 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %42, i32 %289, i32 %290)
  store i32 %291, i32* %16, align 4
  %292 = load %struct.waymapcellt*, %struct.waymapcellt** %14, align 8
  %293 = load i32, i32* %16, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %292, i64 %294
  %296 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %295, i32 0, i32 0
  %297 = load i16, i16* %296, align 2
  %298 = zext i16 %297 to i32
  %299 = getelementptr inbounds %class.wayobj, %class.wayobj* %42, i32 0, i32 27
  %300 = load i16, i16* %299, align 2
  %301 = zext i16 %300 to i32
  %302 = icmp eq i32 %298, %301
  br i1 %302, label %303, label %326

; <label>:303:                                    ; preds = %272
  %304 = load %struct.waymapcellt*, %struct.waymapcellt** %14, align 8
  %305 = load i32, i32* %16, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %304, i64 %306
  %308 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %307, i32 0, i32 1
  %309 = load i16, i16* %308, align 2
  %310 = zext i16 %309 to i32
  %311 = load i32, i32* %34, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %325

; <label>:313:                                    ; preds = %303
  %314 = load i32, i32* %16, align 4
  %315 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %42, i32 %314)
  store { <2 x float>, float } %315, { <2 x float>, float }* %41, align 8
  %316 = bitcast { <2 x float>, float }* %41 to i8*
  %317 = bitcast %class.rvectort* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %317, i8* %316, i64 12, i32 4, i1 false)
  %318 = load %class.rvectort*, %class.rvectort** %11, align 8
  %319 = load i32, i32* %34, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %class.rvectort, %class.rvectort* %318, i64 %320
  %322 = bitcast %class.rvectort* %321 to i8*
  %323 = bitcast %class.rvectort* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %322, i8* %323, i64 12, i32 4, i1 false)
  %324 = load i32, i32* %16, align 4
  store i32 %324, i32* %15, align 4
  br label %345

; <label>:325:                                    ; preds = %303
  br label %326

; <label>:326:                                    ; preds = %325, %272
  %327 = load i32, i32* %32, align 4
  %328 = add nsw i32 %327, -1
  store i32 %328, i32* %32, align 4
  %329 = load i32, i32* %32, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %332

; <label>:331:                                    ; preds = %326
  store i32 7, i32* %32, align 4
  br label %332

; <label>:332:                                    ; preds = %331, %326
  %333 = load i32, i32* %33, align 4
  %334 = add nsw i32 %333, 1
  %335 = and i32 %334, 7
  store i32 %335, i32* %33, align 4
  br label %336

; <label>:336:                                    ; preds = %332
  %337 = load i32, i32* %35, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %35, align 4
  br label %215

; <label>:339:                                    ; preds = %215
  %340 = load %class.rvectort*, %class.rvectort** %11, align 8
  %341 = icmp eq %class.rvectort* %340, null
  br i1 %341, label %344, label %342

; <label>:342:                                    ; preds = %339
  %343 = bitcast %class.rvectort* %340 to i8*
  call void @_ZdaPv(i8* %343) #10
  br label %344

; <label>:344:                                    ; preds = %342, %339
  store i1 false, i1* %5, align 1
  br label %375

; <label>:345:                                    ; preds = %313, %259
  br label %346

; <label>:346:                                    ; preds = %345
  %347 = load i32, i32* %34, align 4
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* %34, align 4
  br label %82

; <label>:349:                                    ; preds = %82
  %350 = getelementptr inbounds %class.wayobj, %class.wayobj* %42, i32 0, i32 15
  %351 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %350, i32 0, i32 0
  %352 = load %class.rvectort*, %class.rvectort** %11, align 8
  %353 = getelementptr inbounds %class.rvectort, %class.rvectort* %352, i64 0
  %354 = bitcast %class.rvectort* %353 to i8*
  %355 = bitcast %class.rvectort* %351 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %354, i8* %355, i64 12, i32 4, i1 false)
  %356 = getelementptr inbounds %class.wayobj, %class.wayobj* %42, i32 0, i32 15
  %357 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %356, i32 0, i32 1
  %358 = load %class.rvectort*, %class.rvectort** %11, align 8
  %359 = load i32, i32* %12, align 4
  %360 = sub nsw i32 %359, 1
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %class.rvectort, %class.rvectort* %358, i64 %361
  %363 = bitcast %class.rvectort* %362 to i8*
  %364 = bitcast %class.rvectort* %357 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %363, i8* %364, i64 12, i32 4, i1 false)
  %365 = load %struct.wayinfot*, %struct.wayinfot** %9, align 8
  %366 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %365, i32 0, i32 0
  store i8 1, i8* %366, align 8
  %367 = load %class.rvectort*, %class.rvectort** %11, align 8
  %368 = load %struct.wayinfot*, %struct.wayinfot** %9, align 8
  %369 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %368, i32 0, i32 1
  store %class.rvectort* %367, %class.rvectort** %369, align 8
  %370 = load i32, i32* %12, align 4
  %371 = load %struct.wayinfot*, %struct.wayinfot** %9, align 8
  %372 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %371, i32 0, i32 2
  store i32 %370, i32* %372, align 8
  %373 = load %struct.wayinfot*, %struct.wayinfot** %9, align 8
  %374 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %373, i32 0, i32 3
  store i8 0, i8* %374, align 4
  store i1 true, i1* %5, align 1
  br label %375

; <label>:375:                                    ; preds = %349, %344
  %376 = load i1, i1* %5, align 1
  ret i1 %376

; <label>:377:                                    ; preds = %99
  %378 = load i8*, i8** %36, align 8
  %379 = load i32, i32* %37, align 4
  %380 = insertvalue { i8*, i32 } undef, i8* %378, 0
  %381 = insertvalue { i8*, i32 } %380, i32 %379, 1
  resume { i8*, i32 } %381
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8point16tC2Ess(%struct.point16t*, i16 signext, i16 signext) unnamed_addr #2 comdat align 2 {
  %4 = alloca %struct.point16t*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store %struct.point16t* %0, %struct.point16t** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load %struct.point16t*, %struct.point16t** %4, align 8
  %8 = load i16, i16* %5, align 2
  %9 = getelementptr inbounds %struct.point16t, %struct.point16t* %7, i32 0, i32 0
  store i16 %8, i16* %9, align 2
  %10 = load i16, i16* %6, align 2
  %11 = getelementptr inbounds %struct.point16t, %struct.point16t* %7, i32 0, i32 1
  store i16 %10, i16* %11, align 2
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8rvectortC2Ev(%class.rvectort*) unnamed_addr #2 comdat align 2 {
  %2 = alloca %class.rvectort*, align 8
  store %class.rvectort* %0, %class.rvectort** %2, align 8
  %3 = load %class.rvectort*, %class.rvectort** %2, align 8
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN6wayobj6indexxEi(%class.wayobj*, i32) #2 comdat align 2 {
  %3 = alloca %class.wayobj*, align 8
  %4 = alloca i32, align 4
  store %class.wayobj* %0, %class.wayobj** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.wayobj*, %class.wayobj** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %class.wayobj, %class.wayobj* %5, i32 0, i32 22
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %6, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN6wayobj6indexyEi(%class.wayobj*, i32) #2 comdat align 2 {
  %3 = alloca %class.wayobj*, align 8
  %4 = alloca i32, align 4
  store %class.wayobj* %0, %class.wayobj** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.wayobj*, %class.wayobj** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %class.wayobj, %class.wayobj* %5, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = ashr i32 %6, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN6wayobj5indexEii(%class.wayobj*, i32, i32) #2 comdat align 2 {
  %4 = alloca %class.wayobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.wayobj* %0, %class.wayobj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %class.wayobj*, %class.wayobj** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = getelementptr inbounds %class.wayobj, %class.wayobj* %7, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 %8, %10
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %11, %12
  ret i32 %13
}

declare { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj*, i32) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj11createwayarEiiRP8point16tRi(%class.wayobj*, i32, i32, %struct.point16t** dereferenceable(8), i32* dereferenceable(4)) #0 align 2 {
  %6 = alloca i1, align 1
  %7 = alloca %class.wayobj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.point16t**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [8 x %struct.point16t], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.waymapcellt*, align 8
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.point16t, align 2
  %38 = alloca %struct.point16t, align 2
  store %class.wayobj* %0, %class.wayobj** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.point16t** %3, %struct.point16t*** %10, align 8
  store i32* %4, i32** %11, align 8
  %39 = load %class.wayobj*, %class.wayobj** %7, align 8
  %40 = getelementptr inbounds [8 x %struct.point16t], [8 x %struct.point16t]* %12, i64 0, i64 0
  call void @_ZN8point16tC2Ess(%struct.point16t* %40, i16 signext -1, i16 signext 1)
  %41 = getelementptr inbounds %struct.point16t, %struct.point16t* %40, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %41, i16 signext 0, i16 signext 1)
  %42 = getelementptr inbounds %struct.point16t, %struct.point16t* %41, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %42, i16 signext 1, i16 signext 1)
  %43 = getelementptr inbounds %struct.point16t, %struct.point16t* %42, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %43, i16 signext 1, i16 signext 0)
  %44 = getelementptr inbounds %struct.point16t, %struct.point16t* %43, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %44, i16 signext 1, i16 signext -1)
  %45 = getelementptr inbounds %struct.point16t, %struct.point16t* %44, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %45, i16 signext 0, i16 signext -1)
  %46 = getelementptr inbounds %struct.point16t, %struct.point16t* %45, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %46, i16 signext -1, i16 signext -1)
  %47 = getelementptr inbounds %struct.point16t, %struct.point16t* %46, i64 1
  call void @_ZN8point16tC2Ess(%struct.point16t* %47, i16 signext -1, i16 signext 0)
  %48 = getelementptr inbounds %class.wayobj, %class.wayobj* %39, i32 0, i32 26
  %49 = load i16, i16* %48, align 8
  %50 = sext i16 %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = call noalias i8* @malloc(i64 %53) #8
  %55 = bitcast i8* %54 to %struct.point16t*
  %56 = load %struct.point16t**, %struct.point16t*** %10, align 8
  store %struct.point16t* %55, %struct.point16t** %56, align 8
  %57 = getelementptr inbounds %class.wayobj, %class.wayobj* %39, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %14, align 4
  %59 = getelementptr inbounds %class.wayobj, %class.wayobj* %39, i32 0, i32 18
  %60 = load %struct.waymapcellt*, %struct.waymapcellt** %59, align 8
  store %struct.waymapcellt* %60, %struct.waymapcellt** %15, align 8
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %39, i32 %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %39, i32 %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %66, 2
  store i32 %67, i32* %35, align 4
  br label %68

; <label>:68:                                     ; preds = %338, %5
  %69 = load i32, i32* %35, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %341

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %39, i32 %72)
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %39, i32 %74)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %20, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %26, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %21, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %27, align 4
  %82 = load i32, i32* %26, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %71
  store i32 1, i32* %26, align 4
  br label %90

; <label>:85:                                     ; preds = %71
  %86 = load i32, i32* %26, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %85
  store i32 -1, i32* %26, align 4
  br label %89

; <label>:89:                                     ; preds = %88, %85
  br label %90

; <label>:90:                                     ; preds = %89, %84
  %91 = load i32, i32* %27, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %90
  store i32 1, i32* %27, align 4
  br label %99

; <label>:94:                                     ; preds = %90
  %95 = load i32, i32* %27, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  store i32 -1, i32* %27, align 4
  br label %98

; <label>:98:                                     ; preds = %97, %94
  br label %99

; <label>:99:                                     ; preds = %98, %93
  %100 = load i32, i32* %27, align 4
  %101 = mul nsw i32 100, %100
  %102 = load i32, i32* @_ZL5alfa1, align 4
  %103 = load i32, i32* %26, align 4
  %104 = mul nsw i32 %102, %103
  %105 = icmp sge i32 %101, %104
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %99
  store i32 1, i32* %28, align 4
  br label %108

; <label>:107:                                    ; preds = %99
  store i32 -1, i32* %28, align 4
  br label %108

; <label>:108:                                    ; preds = %107, %106
  %109 = load i32, i32* %27, align 4
  %110 = mul nsw i32 100, %109
  %111 = load i32, i32* @_ZL5alfa2, align 4
  %112 = load i32, i32* %26, align 4
  %113 = mul nsw i32 %111, %112
  %114 = icmp sge i32 %110, %113
  br i1 %114, label %115, label %116

; <label>:115:                                    ; preds = %108
  store i32 1, i32* %29, align 4
  br label %117

; <label>:116:                                    ; preds = %108
  store i32 -1, i32* %29, align 4
  br label %117

; <label>:117:                                    ; preds = %116, %115
  %118 = load i32, i32* %27, align 4
  %119 = mul nsw i32 100, %118
  %120 = load i32, i32* @_ZL5alfa3, align 4
  %121 = load i32, i32* %26, align 4
  %122 = mul nsw i32 %120, %121
  %123 = icmp sge i32 %119, %122
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %117
  store i32 1, i32* %30, align 4
  br label %126

; <label>:125:                                    ; preds = %117
  store i32 -1, i32* %30, align 4
  br label %126

; <label>:126:                                    ; preds = %125, %124
  %127 = load i32, i32* %27, align 4
  %128 = mul nsw i32 100, %127
  %129 = load i32, i32* @_ZL5alfa4, align 4
  %130 = load i32, i32* %26, align 4
  %131 = mul nsw i32 %129, %130
  %132 = icmp sge i32 %128, %131
  br i1 %132, label %133, label %134

; <label>:133:                                    ; preds = %126
  store i32 1, i32* %31, align 4
  br label %135

; <label>:134:                                    ; preds = %126
  store i32 -1, i32* %31, align 4
  br label %135

; <label>:135:                                    ; preds = %134, %133
  %136 = load i32, i32* %28, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %142

; <label>:138:                                    ; preds = %135
  %139 = load i32, i32* %31, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %138
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 1, i32* %32, align 4
  br label %192

; <label>:142:                                    ; preds = %138, %135
  %143 = load i32, i32* %29, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %149

; <label>:145:                                    ; preds = %142
  %146 = load i32, i32* %28, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %149

; <label>:148:                                    ; preds = %145
  store i32 1, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 2, i32* %32, align 4
  br label %192

; <label>:149:                                    ; preds = %145, %142
  %150 = load i32, i32* %30, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %156

; <label>:152:                                    ; preds = %149
  %153 = load i32, i32* %29, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %156

; <label>:155:                                    ; preds = %152
  store i32 1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 3, i32* %32, align 4
  br label %192

; <label>:156:                                    ; preds = %152, %149
  %157 = load i32, i32* %31, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %163

; <label>:159:                                    ; preds = %156
  %160 = load i32, i32* %30, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %163

; <label>:162:                                    ; preds = %159
  store i32 1, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  store i32 4, i32* %32, align 4
  br label %192

; <label>:163:                                    ; preds = %159, %156
  %164 = load i32, i32* %28, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %170

; <label>:166:                                    ; preds = %163
  %167 = load i32, i32* %31, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %170

; <label>:169:                                    ; preds = %166
  store i32 0, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  store i32 5, i32* %32, align 4
  br label %192

; <label>:170:                                    ; preds = %166, %163
  %171 = load i32, i32* %28, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %177

; <label>:173:                                    ; preds = %170
  %174 = load i32, i32* %29, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %177

; <label>:176:                                    ; preds = %173
  store i32 -1, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  store i32 6, i32* %32, align 4
  br label %192

; <label>:177:                                    ; preds = %173, %170
  %178 = load i32, i32* %29, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %184

; <label>:180:                                    ; preds = %177
  %181 = load i32, i32* %30, align 4
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %184

; <label>:183:                                    ; preds = %180
  store i32 -1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 7, i32* %32, align 4
  br label %192

; <label>:184:                                    ; preds = %180, %177
  %185 = load i32, i32* %30, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %191

; <label>:187:                                    ; preds = %184
  %188 = load i32, i32* %31, align 4
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %191

; <label>:190:                                    ; preds = %187
  store i32 -1, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 0, i32* %32, align 4
  br label %192

; <label>:191:                                    ; preds = %187, %184
  store i32 -1, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  store i32 6, i32* %32, align 4
  br label %192

; <label>:192:                                    ; preds = %191, %190, %183, %176, %169, %162, %155, %148, %141
  %193 = load i32, i32* %32, align 4
  store i32 %193, i32* %33, align 4
  %194 = load i32, i32* %32, align 4
  %195 = add nsw i32 %194, 1
  %196 = and i32 %195, 7
  store i32 %196, i32* %34, align 4
  store i32 0, i32* %36, align 4
  br label %197

; <label>:197:                                    ; preds = %330, %192
  %198 = load i32, i32* %36, align 4
  %199 = icmp slt i32 %198, 4
  br i1 %199, label %200, label %333

; <label>:200:                                    ; preds = %197
  %201 = load i32, i32* %20, align 4
  %202 = load i32, i32* %33, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [8 x %struct.point16t], [8 x %struct.point16t]* %12, i64 0, i64 %203
  %205 = getelementptr inbounds %struct.point16t, %struct.point16t* %204, i32 0, i32 0
  %206 = load i16, i16* %205, align 4
  %207 = sext i16 %206 to i32
  %208 = add nsw i32 %201, %207
  store i32 %208, i32* %22, align 4
  %209 = load i32, i32* %21, align 4
  %210 = load i32, i32* %33, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [8 x %struct.point16t], [8 x %struct.point16t]* %12, i64 0, i64 %211
  %213 = getelementptr inbounds %struct.point16t, %struct.point16t* %212, i32 0, i32 1
  %214 = load i16, i16* %213, align 2
  %215 = sext i16 %214 to i32
  %216 = add nsw i32 %209, %215
  store i32 %216, i32* %23, align 4
  %217 = load i32, i32* %22, align 4
  %218 = load i32, i32* %23, align 4
  %219 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %39, i32 %217, i32 %218)
  store i32 %219, i32* %17, align 4
  %220 = load %struct.waymapcellt*, %struct.waymapcellt** %15, align 8
  %221 = load i32, i32* %17, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %220, i64 %222
  %224 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %223, i32 0, i32 0
  %225 = load i16, i16* %224, align 2
  %226 = zext i16 %225 to i32
  %227 = getelementptr inbounds %class.wayobj, %class.wayobj* %39, i32 0, i32 27
  %228 = load i16, i16* %227, align 2
  %229 = zext i16 %228 to i32
  %230 = icmp eq i32 %226, %229
  br i1 %230, label %231, label %260

; <label>:231:                                    ; preds = %200
  %232 = load %struct.waymapcellt*, %struct.waymapcellt** %15, align 8
  %233 = load i32, i32* %17, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %232, i64 %234
  %236 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %235, i32 0, i32 1
  %237 = load i16, i16* %236, align 2
  %238 = zext i16 %237 to i32
  %239 = load i32, i32* %35, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %259

; <label>:241:                                    ; preds = %231
  %242 = load i32, i32* %22, align 4
  %243 = trunc i32 %242 to i16
  %244 = load %struct.point16t**, %struct.point16t*** %10, align 8
  %245 = load %struct.point16t*, %struct.point16t** %244, align 8
  %246 = load i32, i32* %35, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.point16t, %struct.point16t* %245, i64 %247
  %249 = getelementptr inbounds %struct.point16t, %struct.point16t* %248, i32 0, i32 0
  store i16 %243, i16* %249, align 2
  %250 = load i32, i32* %23, align 4
  %251 = trunc i32 %250 to i16
  %252 = load %struct.point16t**, %struct.point16t*** %10, align 8
  %253 = load %struct.point16t*, %struct.point16t** %252, align 8
  %254 = load i32, i32* %35, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.point16t, %struct.point16t* %253, i64 %255
  %257 = getelementptr inbounds %struct.point16t, %struct.point16t* %256, i32 0, i32 1
  store i16 %251, i16* %257, align 2
  %258 = load i32, i32* %17, align 4
  store i32 %258, i32* %16, align 4
  br label %337

; <label>:259:                                    ; preds = %231
  br label %260

; <label>:260:                                    ; preds = %259, %200
  %261 = load i32, i32* %20, align 4
  %262 = load i32, i32* %34, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [8 x %struct.point16t], [8 x %struct.point16t]* %12, i64 0, i64 %263
  %265 = getelementptr inbounds %struct.point16t, %struct.point16t* %264, i32 0, i32 0
  %266 = load i16, i16* %265, align 4
  %267 = sext i16 %266 to i32
  %268 = add nsw i32 %261, %267
  store i32 %268, i32* %22, align 4
  %269 = load i32, i32* %21, align 4
  %270 = load i32, i32* %34, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [8 x %struct.point16t], [8 x %struct.point16t]* %12, i64 0, i64 %271
  %273 = getelementptr inbounds %struct.point16t, %struct.point16t* %272, i32 0, i32 1
  %274 = load i16, i16* %273, align 2
  %275 = sext i16 %274 to i32
  %276 = add nsw i32 %269, %275
  store i32 %276, i32* %23, align 4
  %277 = load i32, i32* %22, align 4
  %278 = load i32, i32* %23, align 4
  %279 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %39, i32 %277, i32 %278)
  store i32 %279, i32* %17, align 4
  %280 = load %struct.waymapcellt*, %struct.waymapcellt** %15, align 8
  %281 = load i32, i32* %17, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %280, i64 %282
  %284 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %283, i32 0, i32 0
  %285 = load i16, i16* %284, align 2
  %286 = zext i16 %285 to i32
  %287 = getelementptr inbounds %class.wayobj, %class.wayobj* %39, i32 0, i32 27
  %288 = load i16, i16* %287, align 2
  %289 = zext i16 %288 to i32
  %290 = icmp eq i32 %286, %289
  br i1 %290, label %291, label %320

; <label>:291:                                    ; preds = %260
  %292 = load %struct.waymapcellt*, %struct.waymapcellt** %15, align 8
  %293 = load i32, i32* %17, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %292, i64 %294
  %296 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %295, i32 0, i32 1
  %297 = load i16, i16* %296, align 2
  %298 = zext i16 %297 to i32
  %299 = load i32, i32* %35, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %319

; <label>:301:                                    ; preds = %291
  %302 = load i32, i32* %22, align 4
  %303 = trunc i32 %302 to i16
  %304 = load %struct.point16t**, %struct.point16t*** %10, align 8
  %305 = load %struct.point16t*, %struct.point16t** %304, align 8
  %306 = load i32, i32* %35, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.point16t, %struct.point16t* %305, i64 %307
  %309 = getelementptr inbounds %struct.point16t, %struct.point16t* %308, i32 0, i32 0
  store i16 %303, i16* %309, align 2
  %310 = load i32, i32* %23, align 4
  %311 = trunc i32 %310 to i16
  %312 = load %struct.point16t**, %struct.point16t*** %10, align 8
  %313 = load %struct.point16t*, %struct.point16t** %312, align 8
  %314 = load i32, i32* %35, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.point16t, %struct.point16t* %313, i64 %315
  %317 = getelementptr inbounds %struct.point16t, %struct.point16t* %316, i32 0, i32 1
  store i16 %311, i16* %317, align 2
  %318 = load i32, i32* %17, align 4
  store i32 %318, i32* %16, align 4
  br label %337

; <label>:319:                                    ; preds = %291
  br label %320

; <label>:320:                                    ; preds = %319, %260
  %321 = load i32, i32* %33, align 4
  %322 = add nsw i32 %321, -1
  store i32 %322, i32* %33, align 4
  %323 = load i32, i32* %33, align 4
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %326

; <label>:325:                                    ; preds = %320
  store i32 7, i32* %33, align 4
  br label %326

; <label>:326:                                    ; preds = %325, %320
  %327 = load i32, i32* %34, align 4
  %328 = add nsw i32 %327, 1
  %329 = and i32 %328, 7
  store i32 %329, i32* %34, align 4
  br label %330

; <label>:330:                                    ; preds = %326
  %331 = load i32, i32* %36, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %36, align 4
  br label %197

; <label>:333:                                    ; preds = %197
  %334 = load %struct.point16t**, %struct.point16t*** %10, align 8
  %335 = load %struct.point16t*, %struct.point16t** %334, align 8
  %336 = bitcast %struct.point16t* %335 to i8*
  call void @free(i8* %336) #8
  store i1 false, i1* %6, align 1
  br label %369

; <label>:337:                                    ; preds = %301, %241
  br label %338

; <label>:338:                                    ; preds = %337
  %339 = load i32, i32* %35, align 4
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %35, align 4
  br label %68

; <label>:341:                                    ; preds = %68
  %342 = load i32, i32* %8, align 4
  %343 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %39, i32 %342)
  %344 = trunc i32 %343 to i16
  %345 = load i32, i32* %8, align 4
  %346 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %39, i32 %345)
  %347 = trunc i32 %346 to i16
  call void @_ZN8point16tC2Ess(%struct.point16t* %37, i16 signext %344, i16 signext %347)
  %348 = load %struct.point16t**, %struct.point16t*** %10, align 8
  %349 = load %struct.point16t*, %struct.point16t** %348, align 8
  %350 = getelementptr inbounds %struct.point16t, %struct.point16t* %349, i64 0
  %351 = bitcast %struct.point16t* %350 to i8*
  %352 = bitcast %struct.point16t* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %351, i8* %352, i64 4, i32 2, i1 false)
  %353 = load i32, i32* %9, align 4
  %354 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %39, i32 %353)
  %355 = trunc i32 %354 to i16
  %356 = load i32, i32* %9, align 4
  %357 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %39, i32 %356)
  %358 = trunc i32 %357 to i16
  call void @_ZN8point16tC2Ess(%struct.point16t* %38, i16 signext %355, i16 signext %358)
  %359 = load %struct.point16t**, %struct.point16t*** %10, align 8
  %360 = load %struct.point16t*, %struct.point16t** %359, align 8
  %361 = load i32, i32* %13, align 4
  %362 = sub nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.point16t, %struct.point16t* %360, i64 %363
  %365 = bitcast %struct.point16t* %364 to i8*
  %366 = bitcast %struct.point16t* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %365, i8* %366, i64 4, i32 2, i1 false)
  %367 = load i32, i32* %13, align 4
  %368 = load i32*, i32** %11, align 8
  store i32 %367, i32* %368, align 4
  store i1 true, i1* %6, align 1
  br label %369

; <label>:369:                                    ; preds = %341, %333
  %370 = load i1, i1* %6, align 1
  ret i1 %370
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj12createwayar2EiiR8wayinfot(%class.wayobj*, i32, i32, %struct.wayinfot* dereferenceable(24)) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca i1, align 1
  %6 = alloca %class.wayobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wayinfot*, align 8
  %10 = alloca %class.rvectort*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.waymapcellt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*
  %30 = alloca i32
  %31 = alloca %class.rvectort, align 4
  %32 = alloca { <2 x float>, float }, align 8
  %33 = alloca %class.rvectort, align 4
  %34 = alloca { <2 x float>, float }, align 8
  %35 = alloca %class.rvectort, align 4
  %36 = alloca { <2 x float>, float }, align 8
  %37 = alloca %class.rvectort, align 4
  %38 = alloca { <2 x float>, float }, align 8
  %39 = alloca %class.rvectort, align 4
  %40 = alloca { <2 x float>, float }, align 8
  %41 = alloca %class.rvectort, align 4
  %42 = alloca { <2 x float>, float }, align 8
  %43 = alloca %class.rvectort, align 4
  %44 = alloca { <2 x float>, float }, align 8
  %45 = alloca %class.rvectort, align 4
  %46 = alloca { <2 x float>, float }, align 8
  %47 = alloca %class.rvectort, align 4
  %48 = alloca { <2 x float>, float }, align 8
  store %class.wayobj* %0, %class.wayobj** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.wayinfot* %3, %struct.wayinfot** %9, align 8
  %49 = load %class.wayobj*, %class.wayobj** %6, align 8
  %50 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 26
  %51 = load i16, i16* %50, align 8
  %52 = sext i16 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %54, i64 12)
  %56 = extractvalue { i64, i1 } %55, 1
  %57 = extractvalue { i64, i1 } %55, 0
  %58 = select i1 %56, i64 -1, i64 %57
  %59 = call i8* @_Znam(i64 %58) #9
  %60 = bitcast i8* %59 to %class.rvectort*
  %61 = icmp eq i64 %54, 0
  br i1 %61, label %69, label %62

; <label>:62:                                     ; preds = %4
  %63 = getelementptr inbounds %class.rvectort, %class.rvectort* %60, i64 %54
  br label %64

; <label>:64:                                     ; preds = %66, %62
  %65 = phi %class.rvectort* [ %60, %62 ], [ %67, %66 ]
  invoke void @_ZN8rvectortC2Ev(%class.rvectort* %65)
          to label %66 unwind label %98

; <label>:66:                                     ; preds = %64
  %67 = getelementptr inbounds %class.rvectort, %class.rvectort* %65, i64 1
  %68 = icmp eq %class.rvectort* %67, %63
  br i1 %68, label %69, label %64

; <label>:69:                                     ; preds = %66, %4
  store %class.rvectort* %60, %class.rvectort** %10, align 8
  %70 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %12, align 4
  %72 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 18
  %73 = load %struct.waymapcellt*, %struct.waymapcellt** %72, align 8
  store %struct.waymapcellt* %73, %struct.waymapcellt** %13, align 8
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %49, i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %49, i32 %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %79, 2
  store i32 %80, i32* %28, align 4
  br label %81

; <label>:81:                                     ; preds = %559, %69
  %82 = load i32, i32* %28, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %562

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %49, i32 %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %49, i32 %87)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %18, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %19, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %23, align 4
  %95 = load i32, i32* %22, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %102

; <label>:97:                                     ; preds = %84
  store i32 1, i32* %22, align 4
  br label %107

; <label>:98:                                     ; preds = %64
  %99 = landingpad { i8*, i32 }
          cleanup
  %100 = extractvalue { i8*, i32 } %99, 0
  store i8* %100, i8** %29, align 8
  %101 = extractvalue { i8*, i32 } %99, 1
  store i32 %101, i32* %30, align 4
  call void @_ZdaPv(i8* %59) #10
  br label %590

; <label>:102:                                    ; preds = %84
  %103 = load i32, i32* %22, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %102
  store i32 -1, i32* %22, align 4
  br label %106

; <label>:106:                                    ; preds = %105, %102
  br label %107

; <label>:107:                                    ; preds = %106, %97
  %108 = load i32, i32* %23, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %111

; <label>:110:                                    ; preds = %107
  store i32 1, i32* %23, align 4
  br label %116

; <label>:111:                                    ; preds = %107
  %112 = load i32, i32* %23, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

; <label>:114:                                    ; preds = %111
  store i32 -1, i32* %23, align 4
  br label %115

; <label>:115:                                    ; preds = %114, %111
  br label %116

; <label>:116:                                    ; preds = %115, %110
  %117 = load i32, i32* %23, align 4
  %118 = mul nsw i32 100, %117
  %119 = load i32, i32* @_ZL5alfa1, align 4
  %120 = load i32, i32* %22, align 4
  %121 = mul nsw i32 %119, %120
  %122 = icmp sge i32 %118, %121
  br i1 %122, label %123, label %124

; <label>:123:                                    ; preds = %116
  store i32 1, i32* %24, align 4
  br label %125

; <label>:124:                                    ; preds = %116
  store i32 -1, i32* %24, align 4
  br label %125

; <label>:125:                                    ; preds = %124, %123
  %126 = load i32, i32* %23, align 4
  %127 = mul nsw i32 100, %126
  %128 = load i32, i32* @_ZL5alfa2, align 4
  %129 = load i32, i32* %22, align 4
  %130 = mul nsw i32 %128, %129
  %131 = icmp sge i32 %127, %130
  br i1 %131, label %132, label %133

; <label>:132:                                    ; preds = %125
  store i32 1, i32* %25, align 4
  br label %134

; <label>:133:                                    ; preds = %125
  store i32 -1, i32* %25, align 4
  br label %134

; <label>:134:                                    ; preds = %133, %132
  %135 = load i32, i32* %23, align 4
  %136 = mul nsw i32 100, %135
  %137 = load i32, i32* @_ZL5alfa3, align 4
  %138 = load i32, i32* %22, align 4
  %139 = mul nsw i32 %137, %138
  %140 = icmp sge i32 %136, %139
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %134
  store i32 1, i32* %26, align 4
  br label %143

; <label>:142:                                    ; preds = %134
  store i32 -1, i32* %26, align 4
  br label %143

; <label>:143:                                    ; preds = %142, %141
  %144 = load i32, i32* %23, align 4
  %145 = mul nsw i32 100, %144
  %146 = load i32, i32* @_ZL5alfa4, align 4
  %147 = load i32, i32* %22, align 4
  %148 = mul nsw i32 %146, %147
  %149 = icmp sge i32 %145, %148
  br i1 %149, label %150, label %151

; <label>:150:                                    ; preds = %143
  store i32 1, i32* %27, align 4
  br label %152

; <label>:151:                                    ; preds = %143
  store i32 -1, i32* %27, align 4
  br label %152

; <label>:152:                                    ; preds = %151, %150
  %153 = load i32, i32* %24, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %159

; <label>:155:                                    ; preds = %152
  %156 = load i32, i32* %27, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %159

; <label>:158:                                    ; preds = %155
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %209

; <label>:159:                                    ; preds = %155, %152
  %160 = load i32, i32* %25, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %166

; <label>:162:                                    ; preds = %159
  %163 = load i32, i32* %24, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %166

; <label>:165:                                    ; preds = %162
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %209

; <label>:166:                                    ; preds = %162, %159
  %167 = load i32, i32* %26, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %173

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %25, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %173

; <label>:172:                                    ; preds = %169
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %209

; <label>:173:                                    ; preds = %169, %166
  %174 = load i32, i32* %27, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %180

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* %26, align 4
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %180

; <label>:179:                                    ; preds = %176
  store i32 1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  br label %209

; <label>:180:                                    ; preds = %176, %173
  %181 = load i32, i32* %24, align 4
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %187

; <label>:183:                                    ; preds = %180
  %184 = load i32, i32* %27, align 4
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %187

; <label>:186:                                    ; preds = %183
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  br label %209

; <label>:187:                                    ; preds = %183, %180
  %188 = load i32, i32* %24, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %194

; <label>:190:                                    ; preds = %187
  %191 = load i32, i32* %25, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %194

; <label>:193:                                    ; preds = %190
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  br label %209

; <label>:194:                                    ; preds = %190, %187
  %195 = load i32, i32* %25, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %201

; <label>:197:                                    ; preds = %194
  %198 = load i32, i32* %26, align 4
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %201

; <label>:200:                                    ; preds = %197
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %209

; <label>:201:                                    ; preds = %197, %194
  %202 = load i32, i32* %26, align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %208

; <label>:204:                                    ; preds = %201
  %205 = load i32, i32* %27, align 4
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %208

; <label>:207:                                    ; preds = %204
  store i32 -1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %209

; <label>:208:                                    ; preds = %204, %201
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  br label %209

; <label>:209:                                    ; preds = %208, %207, %200, %193, %186, %179, %172, %165, %158
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* %20, align 4
  %212 = add nsw i32 %210, %211
  store i32 %212, i32* %18, align 4
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %21, align 4
  %215 = add nsw i32 %213, %214
  store i32 %215, i32* %19, align 4
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %19, align 4
  %218 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %49, i32 %216, i32 %217)
  store i32 %218, i32* %15, align 4
  %219 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %220 = load i32, i32* %15, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %219, i64 %221
  %223 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %222, i32 0, i32 0
  %224 = load i16, i16* %223, align 2
  %225 = zext i16 %224 to i32
  %226 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 27
  %227 = load i16, i16* %226, align 2
  %228 = zext i16 %227 to i32
  %229 = icmp eq i32 %225, %228
  br i1 %229, label %230, label %253

; <label>:230:                                    ; preds = %209
  %231 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %232 = load i32, i32* %15, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %231, i64 %233
  %235 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %234, i32 0, i32 1
  %236 = load i16, i16* %235, align 2
  %237 = zext i16 %236 to i32
  %238 = load i32, i32* %28, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %252

; <label>:240:                                    ; preds = %230
  %241 = load i32, i32* %15, align 4
  %242 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %49, i32 %241)
  store { <2 x float>, float } %242, { <2 x float>, float }* %32, align 8
  %243 = bitcast { <2 x float>, float }* %32 to i8*
  %244 = bitcast %class.rvectort* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %244, i8* %243, i64 12, i32 4, i1 false)
  %245 = load %class.rvectort*, %class.rvectort** %10, align 8
  %246 = load i32, i32* %28, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %class.rvectort, %class.rvectort* %245, i64 %247
  %249 = bitcast %class.rvectort* %248 to i8*
  %250 = bitcast %class.rvectort* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %249, i8* %250, i64 12, i32 4, i1 false)
  %251 = load i32, i32* %15, align 4
  store i32 %251, i32* %14, align 4
  br label %559

; <label>:252:                                    ; preds = %230
  br label %253

; <label>:253:                                    ; preds = %252, %209
  %254 = load i32, i32* %14, align 4
  %255 = load i32, i32* %12, align 4
  %256 = sub nsw i32 %254, %255
  %257 = sub nsw i32 %256, 1
  store i32 %257, i32* %15, align 4
  %258 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %259 = load i32, i32* %15, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %258, i64 %260
  %262 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %261, i32 0, i32 0
  %263 = load i16, i16* %262, align 2
  %264 = zext i16 %263 to i32
  %265 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 27
  %266 = load i16, i16* %265, align 2
  %267 = zext i16 %266 to i32
  %268 = icmp eq i32 %264, %267
  br i1 %268, label %269, label %292

; <label>:269:                                    ; preds = %253
  %270 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %271 = load i32, i32* %15, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %270, i64 %272
  %274 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %273, i32 0, i32 1
  %275 = load i16, i16* %274, align 2
  %276 = zext i16 %275 to i32
  %277 = load i32, i32* %28, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %291

; <label>:279:                                    ; preds = %269
  %280 = load i32, i32* %15, align 4
  %281 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %49, i32 %280)
  store { <2 x float>, float } %281, { <2 x float>, float }* %34, align 8
  %282 = bitcast { <2 x float>, float }* %34 to i8*
  %283 = bitcast %class.rvectort* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %283, i8* %282, i64 12, i32 4, i1 false)
  %284 = load %class.rvectort*, %class.rvectort** %10, align 8
  %285 = load i32, i32* %28, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %class.rvectort, %class.rvectort* %284, i64 %286
  %288 = bitcast %class.rvectort* %287 to i8*
  %289 = bitcast %class.rvectort* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %288, i8* %289, i64 12, i32 4, i1 false)
  %290 = load i32, i32* %15, align 4
  store i32 %290, i32* %14, align 4
  br label %559

; <label>:291:                                    ; preds = %269
  br label %292

; <label>:292:                                    ; preds = %291, %253
  %293 = load i32, i32* %15, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %15, align 4
  %295 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %296 = load i32, i32* %15, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %295, i64 %297
  %299 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %298, i32 0, i32 0
  %300 = load i16, i16* %299, align 2
  %301 = zext i16 %300 to i32
  %302 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 27
  %303 = load i16, i16* %302, align 2
  %304 = zext i16 %303 to i32
  %305 = icmp eq i32 %301, %304
  br i1 %305, label %306, label %329

; <label>:306:                                    ; preds = %292
  %307 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %308 = load i32, i32* %15, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %307, i64 %309
  %311 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %310, i32 0, i32 1
  %312 = load i16, i16* %311, align 2
  %313 = zext i16 %312 to i32
  %314 = load i32, i32* %28, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %328

; <label>:316:                                    ; preds = %306
  %317 = load i32, i32* %15, align 4
  %318 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %49, i32 %317)
  store { <2 x float>, float } %318, { <2 x float>, float }* %36, align 8
  %319 = bitcast { <2 x float>, float }* %36 to i8*
  %320 = bitcast %class.rvectort* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %320, i8* %319, i64 12, i32 4, i1 false)
  %321 = load %class.rvectort*, %class.rvectort** %10, align 8
  %322 = load i32, i32* %28, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %class.rvectort, %class.rvectort* %321, i64 %323
  %325 = bitcast %class.rvectort* %324 to i8*
  %326 = bitcast %class.rvectort* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %325, i8* %326, i64 12, i32 4, i1 false)
  %327 = load i32, i32* %15, align 4
  store i32 %327, i32* %14, align 4
  br label %559

; <label>:328:                                    ; preds = %306
  br label %329

; <label>:329:                                    ; preds = %328, %292
  %330 = load i32, i32* %15, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %15, align 4
  %332 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %333 = load i32, i32* %15, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %332, i64 %334
  %336 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %335, i32 0, i32 0
  %337 = load i16, i16* %336, align 2
  %338 = zext i16 %337 to i32
  %339 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 27
  %340 = load i16, i16* %339, align 2
  %341 = zext i16 %340 to i32
  %342 = icmp eq i32 %338, %341
  br i1 %342, label %343, label %366

; <label>:343:                                    ; preds = %329
  %344 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %345 = load i32, i32* %15, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %344, i64 %346
  %348 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %347, i32 0, i32 1
  %349 = load i16, i16* %348, align 2
  %350 = zext i16 %349 to i32
  %351 = load i32, i32* %28, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %365

; <label>:353:                                    ; preds = %343
  %354 = load i32, i32* %15, align 4
  %355 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %49, i32 %354)
  store { <2 x float>, float } %355, { <2 x float>, float }* %38, align 8
  %356 = bitcast { <2 x float>, float }* %38 to i8*
  %357 = bitcast %class.rvectort* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %357, i8* %356, i64 12, i32 4, i1 false)
  %358 = load %class.rvectort*, %class.rvectort** %10, align 8
  %359 = load i32, i32* %28, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %class.rvectort, %class.rvectort* %358, i64 %360
  %362 = bitcast %class.rvectort* %361 to i8*
  %363 = bitcast %class.rvectort* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %362, i8* %363, i64 12, i32 4, i1 false)
  %364 = load i32, i32* %15, align 4
  store i32 %364, i32* %14, align 4
  br label %559

; <label>:365:                                    ; preds = %343
  br label %366

; <label>:366:                                    ; preds = %365, %329
  %367 = load i32, i32* %14, align 4
  %368 = sub nsw i32 %367, 1
  store i32 %368, i32* %15, align 4
  %369 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %370 = load i32, i32* %15, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %369, i64 %371
  %373 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %372, i32 0, i32 0
  %374 = load i16, i16* %373, align 2
  %375 = zext i16 %374 to i32
  %376 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 27
  %377 = load i16, i16* %376, align 2
  %378 = zext i16 %377 to i32
  %379 = icmp eq i32 %375, %378
  br i1 %379, label %380, label %403

; <label>:380:                                    ; preds = %366
  %381 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %382 = load i32, i32* %15, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %381, i64 %383
  %385 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %384, i32 0, i32 1
  %386 = load i16, i16* %385, align 2
  %387 = zext i16 %386 to i32
  %388 = load i32, i32* %28, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %390, label %402

; <label>:390:                                    ; preds = %380
  %391 = load i32, i32* %15, align 4
  %392 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %49, i32 %391)
  store { <2 x float>, float } %392, { <2 x float>, float }* %40, align 8
  %393 = bitcast { <2 x float>, float }* %40 to i8*
  %394 = bitcast %class.rvectort* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %394, i8* %393, i64 12, i32 4, i1 false)
  %395 = load %class.rvectort*, %class.rvectort** %10, align 8
  %396 = load i32, i32* %28, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %class.rvectort, %class.rvectort* %395, i64 %397
  %399 = bitcast %class.rvectort* %398 to i8*
  %400 = bitcast %class.rvectort* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %399, i8* %400, i64 12, i32 4, i1 false)
  %401 = load i32, i32* %15, align 4
  store i32 %401, i32* %14, align 4
  br label %559

; <label>:402:                                    ; preds = %380
  br label %403

; <label>:403:                                    ; preds = %402, %366
  %404 = load i32, i32* %14, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %15, align 4
  %406 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %407 = load i32, i32* %15, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %406, i64 %408
  %410 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %409, i32 0, i32 0
  %411 = load i16, i16* %410, align 2
  %412 = zext i16 %411 to i32
  %413 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 27
  %414 = load i16, i16* %413, align 2
  %415 = zext i16 %414 to i32
  %416 = icmp eq i32 %412, %415
  br i1 %416, label %417, label %440

; <label>:417:                                    ; preds = %403
  %418 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %419 = load i32, i32* %15, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %418, i64 %420
  %422 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %421, i32 0, i32 1
  %423 = load i16, i16* %422, align 2
  %424 = zext i16 %423 to i32
  %425 = load i32, i32* %28, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %427, label %439

; <label>:427:                                    ; preds = %417
  %428 = load i32, i32* %15, align 4
  %429 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %49, i32 %428)
  store { <2 x float>, float } %429, { <2 x float>, float }* %42, align 8
  %430 = bitcast { <2 x float>, float }* %42 to i8*
  %431 = bitcast %class.rvectort* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %431, i8* %430, i64 12, i32 4, i1 false)
  %432 = load %class.rvectort*, %class.rvectort** %10, align 8
  %433 = load i32, i32* %28, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %class.rvectort, %class.rvectort* %432, i64 %434
  %436 = bitcast %class.rvectort* %435 to i8*
  %437 = bitcast %class.rvectort* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %436, i8* %437, i64 12, i32 4, i1 false)
  %438 = load i32, i32* %15, align 4
  store i32 %438, i32* %14, align 4
  br label %559

; <label>:439:                                    ; preds = %417
  br label %440

; <label>:440:                                    ; preds = %439, %403
  %441 = load i32, i32* %14, align 4
  %442 = load i32, i32* %12, align 4
  %443 = add nsw i32 %441, %442
  %444 = sub nsw i32 %443, 1
  store i32 %444, i32* %15, align 4
  %445 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %446 = load i32, i32* %15, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %445, i64 %447
  %449 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %448, i32 0, i32 0
  %450 = load i16, i16* %449, align 2
  %451 = zext i16 %450 to i32
  %452 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 27
  %453 = load i16, i16* %452, align 2
  %454 = zext i16 %453 to i32
  %455 = icmp eq i32 %451, %454
  br i1 %455, label %456, label %479

; <label>:456:                                    ; preds = %440
  %457 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %458 = load i32, i32* %15, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %457, i64 %459
  %461 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %460, i32 0, i32 1
  %462 = load i16, i16* %461, align 2
  %463 = zext i16 %462 to i32
  %464 = load i32, i32* %28, align 4
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %466, label %478

; <label>:466:                                    ; preds = %456
  %467 = load i32, i32* %15, align 4
  %468 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %49, i32 %467)
  store { <2 x float>, float } %468, { <2 x float>, float }* %44, align 8
  %469 = bitcast { <2 x float>, float }* %44 to i8*
  %470 = bitcast %class.rvectort* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %470, i8* %469, i64 12, i32 4, i1 false)
  %471 = load %class.rvectort*, %class.rvectort** %10, align 8
  %472 = load i32, i32* %28, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %class.rvectort, %class.rvectort* %471, i64 %473
  %475 = bitcast %class.rvectort* %474 to i8*
  %476 = bitcast %class.rvectort* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %475, i8* %476, i64 12, i32 4, i1 false)
  %477 = load i32, i32* %15, align 4
  store i32 %477, i32* %14, align 4
  br label %559

; <label>:478:                                    ; preds = %456
  br label %479

; <label>:479:                                    ; preds = %478, %440
  %480 = load i32, i32* %15, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %15, align 4
  %482 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %483 = load i32, i32* %15, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %482, i64 %484
  %486 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %485, i32 0, i32 0
  %487 = load i16, i16* %486, align 2
  %488 = zext i16 %487 to i32
  %489 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 27
  %490 = load i16, i16* %489, align 2
  %491 = zext i16 %490 to i32
  %492 = icmp eq i32 %488, %491
  br i1 %492, label %493, label %516

; <label>:493:                                    ; preds = %479
  %494 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %495 = load i32, i32* %15, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %494, i64 %496
  %498 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %497, i32 0, i32 1
  %499 = load i16, i16* %498, align 2
  %500 = zext i16 %499 to i32
  %501 = load i32, i32* %28, align 4
  %502 = icmp eq i32 %500, %501
  br i1 %502, label %503, label %515

; <label>:503:                                    ; preds = %493
  %504 = load i32, i32* %15, align 4
  %505 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %49, i32 %504)
  store { <2 x float>, float } %505, { <2 x float>, float }* %46, align 8
  %506 = bitcast { <2 x float>, float }* %46 to i8*
  %507 = bitcast %class.rvectort* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %507, i8* %506, i64 12, i32 4, i1 false)
  %508 = load %class.rvectort*, %class.rvectort** %10, align 8
  %509 = load i32, i32* %28, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %class.rvectort, %class.rvectort* %508, i64 %510
  %512 = bitcast %class.rvectort* %511 to i8*
  %513 = bitcast %class.rvectort* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %512, i8* %513, i64 12, i32 4, i1 false)
  %514 = load i32, i32* %15, align 4
  store i32 %514, i32* %14, align 4
  br label %559

; <label>:515:                                    ; preds = %493
  br label %516

; <label>:516:                                    ; preds = %515, %479
  %517 = load i32, i32* %15, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %15, align 4
  %519 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %520 = load i32, i32* %15, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %519, i64 %521
  %523 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %522, i32 0, i32 0
  %524 = load i16, i16* %523, align 2
  %525 = zext i16 %524 to i32
  %526 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 27
  %527 = load i16, i16* %526, align 2
  %528 = zext i16 %527 to i32
  %529 = icmp eq i32 %525, %528
  br i1 %529, label %530, label %553

; <label>:530:                                    ; preds = %516
  %531 = load %struct.waymapcellt*, %struct.waymapcellt** %13, align 8
  %532 = load i32, i32* %15, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %531, i64 %533
  %535 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %534, i32 0, i32 1
  %536 = load i16, i16* %535, align 2
  %537 = zext i16 %536 to i32
  %538 = load i32, i32* %28, align 4
  %539 = icmp eq i32 %537, %538
  br i1 %539, label %540, label %552

; <label>:540:                                    ; preds = %530
  %541 = load i32, i32* %15, align 4
  %542 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %49, i32 %541)
  store { <2 x float>, float } %542, { <2 x float>, float }* %48, align 8
  %543 = bitcast { <2 x float>, float }* %48 to i8*
  %544 = bitcast %class.rvectort* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %544, i8* %543, i64 12, i32 4, i1 false)
  %545 = load %class.rvectort*, %class.rvectort** %10, align 8
  %546 = load i32, i32* %28, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %class.rvectort, %class.rvectort* %545, i64 %547
  %549 = bitcast %class.rvectort* %548 to i8*
  %550 = bitcast %class.rvectort* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %549, i8* %550, i64 12, i32 4, i1 false)
  %551 = load i32, i32* %15, align 4
  store i32 %551, i32* %14, align 4
  br label %559

; <label>:552:                                    ; preds = %530
  br label %553

; <label>:553:                                    ; preds = %552, %516
  %554 = load %class.rvectort*, %class.rvectort** %10, align 8
  %555 = icmp eq %class.rvectort* %554, null
  br i1 %555, label %558, label %556

; <label>:556:                                    ; preds = %553
  %557 = bitcast %class.rvectort* %554 to i8*
  call void @_ZdaPv(i8* %557) #10
  br label %558

; <label>:558:                                    ; preds = %556, %553
  store i1 false, i1* %5, align 1
  br label %588

; <label>:559:                                    ; preds = %540, %503, %466, %427, %390, %353, %316, %279, %240
  %560 = load i32, i32* %28, align 4
  %561 = add nsw i32 %560, -1
  store i32 %561, i32* %28, align 4
  br label %81

; <label>:562:                                    ; preds = %81
  %563 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 15
  %564 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %563, i32 0, i32 0
  %565 = load %class.rvectort*, %class.rvectort** %10, align 8
  %566 = getelementptr inbounds %class.rvectort, %class.rvectort* %565, i64 0
  %567 = bitcast %class.rvectort* %566 to i8*
  %568 = bitcast %class.rvectort* %564 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %567, i8* %568, i64 12, i32 4, i1 false)
  %569 = getelementptr inbounds %class.wayobj, %class.wayobj* %49, i32 0, i32 15
  %570 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %569, i32 0, i32 1
  %571 = load %class.rvectort*, %class.rvectort** %10, align 8
  %572 = load i32, i32* %11, align 4
  %573 = sub nsw i32 %572, 1
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds %class.rvectort, %class.rvectort* %571, i64 %574
  %576 = bitcast %class.rvectort* %575 to i8*
  %577 = bitcast %class.rvectort* %570 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %576, i8* %577, i64 12, i32 4, i1 false)
  %578 = load %struct.wayinfot*, %struct.wayinfot** %9, align 8
  %579 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %578, i32 0, i32 0
  store i8 1, i8* %579, align 8
  %580 = load %class.rvectort*, %class.rvectort** %10, align 8
  %581 = load %struct.wayinfot*, %struct.wayinfot** %9, align 8
  %582 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %581, i32 0, i32 1
  store %class.rvectort* %580, %class.rvectort** %582, align 8
  %583 = load i32, i32* %11, align 4
  %584 = load %struct.wayinfot*, %struct.wayinfot** %9, align 8
  %585 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %584, i32 0, i32 2
  store i32 %583, i32* %585, align 8
  %586 = load %struct.wayinfot*, %struct.wayinfot** %9, align 8
  %587 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %586, i32 0, i32 3
  store i8 0, i8* %587, align 4
  store i1 true, i1* %5, align 1
  br label %588

; <label>:588:                                    ; preds = %562, %558
  %589 = load i1, i1* %5, align 1
  ret i1 %589

; <label>:590:                                    ; preds = %98
  %591 = load i8*, i8** %29, align 8
  %592 = load i32, i32* %30, align 4
  %593 = insertvalue { i8*, i32 } undef, i8* %591, 0
  %594 = insertvalue { i8*, i32 } %593, i32 %592, 1
  resume { i8*, i32 } %594
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj8wayexistEiiii(%class.wayobj*, i32, i32, i32, i32) #0 align 2 {
  %6 = alloca i1, align 1
  %7 = alloca %class.wayobj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %class.wayobj* %0, %class.wayobj** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %class.wayobj*, %class.wayobj** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %12, i32 %13, i32 %14)
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %12, i32 %17, i32 %18)
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %16, %5
  store i1 false, i1* %6, align 1
  br label %44

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %12, i32 %22, i32 %23)
  %25 = load i16, i16* %24, align 2
  %26 = sext i16 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %21
  store i1 false, i1* %6, align 1
  br label %44

; <label>:29:                                     ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %33
  store i1 true, i1* %6, align 1
  br label %44

; <label>:38:                                     ; preds = %33, %29
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call zeroext i1 @_ZN6wayobj4fillEiiii(%class.wayobj* %12, i32 %39, i32 %40, i32 %41, i32 %42)
  store i1 %43, i1* %6, align 1
  br label %44

; <label>:44:                                     ; preds = %38, %37, %28, %20
  %45 = load i1, i1* %6, align 1
  ret i1 %45
}

declare zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj*, i32, i32) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj*, i32, i32) #2 comdat align 2 {
  %4 = alloca %class.wayobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.wayobj* %0, %class.wayobj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %class.wayobj*, %class.wayobj** %4, align 8
  %8 = getelementptr inbounds %class.wayobj, %class.wayobj* %7, i32 0, i32 17
  %9 = load i16*, i16** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %class.wayobj, %class.wayobj* %7, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %10, %12
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %9, i64 %16
  ret i16* %17
}

declare zeroext i1 @_ZN6wayobj4fillEiiii(%class.wayobj*, i32, i32, i32, i32) #6

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj9createwayERK8rvectortS2_bR8wayinfot(%class.wayobj*, %class.rvectort* dereferenceable(12), %class.rvectort* dereferenceable(12), i1 zeroext, %struct.wayinfot* dereferenceable(24)) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %6 = alloca i1, align 1
  %7 = alloca %class.wayobj*, align 8
  %8 = alloca %class.rvectort*, align 8
  %9 = alloca %class.rvectort*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.wayinfot*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca %class.rvectort, align 4
  %18 = alloca { <2 x float>, float }, align 8
  %19 = alloca i8*
  %20 = alloca i32
  store %class.wayobj* %0, %class.wayobj** %7, align 8
  store %class.rvectort* %1, %class.rvectort** %8, align 8
  store %class.rvectort* %2, %class.rvectort** %9, align 8
  %21 = zext i1 %3 to i8
  store i8 %21, i8* %10, align 1
  store %struct.wayinfot* %4, %struct.wayinfot** %11, align 8
  %22 = load %class.wayobj*, %class.wayobj** %7, align 8
  %23 = load %class.rvectort*, %class.rvectort** %8, align 8
  %24 = getelementptr inbounds %class.wayobj, %class.wayobj* %22, i32 0, i32 15
  %25 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %24, i32 0, i32 0
  %26 = bitcast %class.rvectort* %25 to i8*
  %27 = bitcast %class.rvectort* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 12, i32 4, i1 false)
  %28 = load %class.rvectort*, %class.rvectort** %9, align 8
  %29 = getelementptr inbounds %class.wayobj, %class.wayobj* %22, i32 0, i32 15
  %30 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %29, i32 0, i32 1
  %31 = bitcast %class.rvectort* %30 to i8*
  %32 = bitcast %class.rvectort* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 12, i32 4, i1 false)
  %33 = load i8, i8* %10, align 1
  %34 = trunc i8 %33 to i1
  %35 = getelementptr inbounds %class.wayobj, %class.wayobj* %22, i32 0, i32 15
  %36 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %35, i32 0, i32 2
  %37 = zext i1 %34 to i8
  store i8 %37, i8* %36, align 8
  %38 = load %class.rvectort*, %class.rvectort** %8, align 8
  %39 = getelementptr inbounds %class.rvectort, %class.rvectort* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = call i32 @_ZN6wayobj4getxEf(%class.wayobj* %22, float %40)
  store i32 %41, i32* %12, align 4
  %42 = load %class.rvectort*, %class.rvectort** %8, align 8
  %43 = getelementptr inbounds %class.rvectort, %class.rvectort* %42, i32 0, i32 2
  %44 = load float, float* %43, align 4
  %45 = call i32 @_ZN6wayobj4getyEf(%class.wayobj* %22, float %44)
  store i32 %45, i32* %13, align 4
  %46 = load %class.rvectort*, %class.rvectort** %9, align 8
  %47 = getelementptr inbounds %class.rvectort, %class.rvectort* %46, i32 0, i32 0
  %48 = load float, float* %47, align 4
  %49 = call i32 @_ZN6wayobj4getxEf(%class.wayobj* %22, float %48)
  store i32 %49, i32* %14, align 4
  %50 = load %class.rvectort*, %class.rvectort** %9, align 8
  %51 = getelementptr inbounds %class.rvectort, %class.rvectort* %50, i32 0, i32 2
  %52 = load float, float* %51, align 4
  %53 = call i32 @_ZN6wayobj4getyEf(%class.wayobj* %22, float %52)
  store i32 %53, i32* %15, align 4
  store i8 0, i8* %16, align 1
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %22, i32 %54, i32 %55)
  br i1 %56, label %57, label %61

; <label>:57:                                     ; preds = %5
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %22, i32 %58, i32 %59)
  br i1 %60, label %73, label %61

; <label>:61:                                     ; preds = %57, %5
  %62 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %63 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %62, i32 0, i32 0
  store i8 0, i8* %63, align 8
  %64 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %65 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %64, i32 0, i32 1
  store %class.rvectort* null, %class.rvectort** %65, align 8
  %66 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %67 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = load i8, i8* %16, align 1
  %69 = trunc i8 %68 to i1
  %70 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %71 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %70, i32 0, i32 3
  %72 = zext i1 %69 to i8
  store i8 %72, i8* %71, align 4
  store i1 false, i1* %6, align 1
  br label %220

; <label>:73:                                     ; preds = %57
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %22, i32 %74, i32 %75)
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %128

; <label>:80:                                     ; preds = %73
  %81 = load i8, i8* %10, align 1
  %82 = trunc i8 %81 to i1
  %83 = zext i1 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %97

; <label>:85:                                     ; preds = %80
  %86 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %87 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %86, i32 0, i32 0
  store i8 0, i8* %87, align 8
  %88 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %89 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %88, i32 0, i32 1
  store %class.rvectort* null, %class.rvectort** %89, align 8
  %90 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %91 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %90, i32 0, i32 2
  store i32 0, i32* %91, align 8
  %92 = load i8, i8* %16, align 1
  %93 = trunc i8 %92 to i1
  %94 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %95 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %94, i32 0, i32 3
  %96 = zext i1 %93 to i8
  store i8 %96, i8* %95, align 4
  store i1 false, i1* %6, align 1
  br label %220

; <label>:97:                                     ; preds = %80
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call zeroext i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* %22, i32 %98, i32 %99, i32* dereferenceable(4) %14, i32* dereferenceable(4) %15)
  %101 = zext i1 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %115

; <label>:103:                                    ; preds = %97
  %104 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %105 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %104, i32 0, i32 0
  store i8 0, i8* %105, align 8
  %106 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %107 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %106, i32 0, i32 1
  store %class.rvectort* null, %class.rvectort** %107, align 8
  %108 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %109 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %108, i32 0, i32 2
  store i32 0, i32* %109, align 8
  %110 = load i8, i8* %16, align 1
  %111 = trunc i8 %110 to i1
  %112 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %113 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %112, i32 0, i32 3
  %114 = zext i1 %111 to i8
  store i8 %114, i8* %113, align 4
  store i1 false, i1* %6, align 1
  br label %220

; <label>:115:                                    ; preds = %97
  store i8 1, i8* %16, align 1
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %22, i32 %116, i32 %117)
  %119 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %22, i32 %118)
  store { <2 x float>, float } %119, { <2 x float>, float }* %18, align 8
  %120 = bitcast { <2 x float>, float }* %18 to i8*
  %121 = bitcast %class.rvectort* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %120, i64 12, i32 4, i1 false)
  %122 = getelementptr inbounds %class.wayobj, %class.wayobj* %22, i32 0, i32 15
  %123 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %122, i32 0, i32 1
  %124 = bitcast %class.rvectort* %123 to i8*
  %125 = bitcast %class.rvectort* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %125, i64 12, i32 4, i1 false)
  br label %126

; <label>:126:                                    ; preds = %115
  br label %127

; <label>:127:                                    ; preds = %126
  br label %128

; <label>:128:                                    ; preds = %127, %73
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %176

; <label>:132:                                    ; preds = %128
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %176

; <label>:136:                                    ; preds = %132
  %137 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %138 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %137, i32 0, i32 0
  store i8 1, i8* %138, align 8
  %139 = call i8* @_Znam(i64 24) #9
  %140 = bitcast i8* %139 to %class.rvectort*
  %141 = getelementptr inbounds %class.rvectort, %class.rvectort* %140, i64 2
  br label %142

; <label>:142:                                    ; preds = %144, %136
  %143 = phi %class.rvectort* [ %140, %136 ], [ %145, %144 ]
  invoke void @_ZN8rvectortC2Ev(%class.rvectort* %143)
          to label %144 unwind label %172

; <label>:144:                                    ; preds = %142
  %145 = getelementptr inbounds %class.rvectort, %class.rvectort* %143, i64 1
  %146 = icmp eq %class.rvectort* %145, %141
  br i1 %146, label %147, label %142

; <label>:147:                                    ; preds = %144
  %148 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %149 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %148, i32 0, i32 1
  store %class.rvectort* %140, %class.rvectort** %149, align 8
  %150 = load %class.rvectort*, %class.rvectort** %8, align 8
  %151 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %152 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %151, i32 0, i32 1
  %153 = load %class.rvectort*, %class.rvectort** %152, align 8
  %154 = getelementptr inbounds %class.rvectort, %class.rvectort* %153, i64 0
  %155 = bitcast %class.rvectort* %154 to i8*
  %156 = bitcast %class.rvectort* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* %156, i64 12, i32 4, i1 false)
  %157 = getelementptr inbounds %class.wayobj, %class.wayobj* %22, i32 0, i32 15
  %158 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %157, i32 0, i32 1
  %159 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %160 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %159, i32 0, i32 1
  %161 = load %class.rvectort*, %class.rvectort** %160, align 8
  %162 = getelementptr inbounds %class.rvectort, %class.rvectort* %161, i64 1
  %163 = bitcast %class.rvectort* %162 to i8*
  %164 = bitcast %class.rvectort* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %163, i8* %164, i64 12, i32 4, i1 false)
  %165 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %166 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %165, i32 0, i32 2
  store i32 2, i32* %166, align 8
  %167 = load i8, i8* %16, align 1
  %168 = trunc i8 %167 to i1
  %169 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %170 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %169, i32 0, i32 3
  %171 = zext i1 %168 to i8
  store i8 %171, i8* %170, align 4
  store i1 true, i1* %6, align 1
  br label %220

; <label>:172:                                    ; preds = %142
  %173 = landingpad { i8*, i32 }
          cleanup
  %174 = extractvalue { i8*, i32 } %173, 0
  store i8* %174, i8** %19, align 8
  %175 = extractvalue { i8*, i32 } %173, 1
  store i32 %175, i32* %20, align 4
  call void @_ZdaPv(i8* %139) #10
  br label %222

; <label>:176:                                    ; preds = %132, %128
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %15, align 4
  %181 = call zeroext i1 @_ZN6wayobj4fillEiiii(%class.wayobj* %22, i32 %177, i32 %178, i32 %179, i32 %180)
  br i1 %181, label %194, label %182

; <label>:182:                                    ; preds = %176
  %183 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %184 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %183, i32 0, i32 0
  store i8 0, i8* %184, align 8
  %185 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %186 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %185, i32 0, i32 1
  store %class.rvectort* null, %class.rvectort** %186, align 8
  %187 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %188 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %187, i32 0, i32 2
  store i32 0, i32* %188, align 8
  %189 = load i8, i8* %16, align 1
  %190 = trunc i8 %189 to i1
  %191 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %192 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %191, i32 0, i32 3
  %193 = zext i1 %190 to i8
  store i8 %193, i8* %192, align 4
  store i1 false, i1* %6, align 1
  br label %220

; <label>:194:                                    ; preds = %176
  %195 = load i8, i8* %16, align 1
  %196 = trunc i8 %195 to i1
  %197 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %198 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %197, i32 0, i32 3
  %199 = zext i1 %196 to i8
  store i8 %199, i8* %198, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %22, i32 %200, i32 %201)
  %203 = getelementptr inbounds %class.wayobj, %class.wayobj* %22, i32 0, i32 25
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %206 = call zeroext i1 @_ZN6wayobj11createwayarEiiR8wayinfot(%class.wayobj* %22, i32 %202, i32 %204, %struct.wayinfot* dereferenceable(24) %205)
  br i1 %206, label %219, label %207

; <label>:207:                                    ; preds = %194
  %208 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %209 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %208, i32 0, i32 0
  store i8 0, i8* %209, align 8
  %210 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %211 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %210, i32 0, i32 1
  store %class.rvectort* null, %class.rvectort** %211, align 8
  %212 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %213 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %212, i32 0, i32 2
  store i32 0, i32* %213, align 8
  %214 = load i8, i8* %16, align 1
  %215 = trunc i8 %214 to i1
  %216 = load %struct.wayinfot*, %struct.wayinfot** %11, align 8
  %217 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %216, i32 0, i32 3
  %218 = zext i1 %215 to i8
  store i8 %218, i8* %217, align 4
  store i1 false, i1* %6, align 1
  br label %220

; <label>:219:                                    ; preds = %194
  store i1 true, i1* %6, align 1
  br label %220

; <label>:220:                                    ; preds = %219, %207, %182, %147, %103, %85, %61
  %221 = load i1, i1* %6, align 1
  ret i1 %221

; <label>:222:                                    ; preds = %172
  %223 = load i8*, i8** %19, align 8
  %224 = load i32, i32* %20, align 4
  %225 = insertvalue { i8*, i32 } undef, i8* %223, 0
  %226 = insertvalue { i8*, i32 } %225, i32 %224, 1
  resume { i8*, i32 } %226
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN6wayobj4getxEf(%class.wayobj*, float) #2 comdat align 2 {
  %3 = alloca %class.wayobj*, align 8
  %4 = alloca float, align 4
  store %class.wayobj* %0, %class.wayobj** %3, align 8
  store float %1, float* %4, align 4
  %5 = load %class.wayobj*, %class.wayobj** %3, align 8
  %6 = load float, float* %4, align 4
  %7 = getelementptr inbounds %class.wayobj, %class.wayobj* %5, i32 0, i32 9
  %8 = load float, float* %7, align 4
  %9 = fmul float %6, %8
  %10 = getelementptr inbounds %class.wayobj, %class.wayobj* %5, i32 0, i32 10
  %11 = load float, float* %10, align 8
  %12 = fadd float %9, %11
  %13 = fptosi float %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN6wayobj4getyEf(%class.wayobj*, float) #2 comdat align 2 {
  %3 = alloca %class.wayobj*, align 8
  %4 = alloca float, align 4
  store %class.wayobj* %0, %class.wayobj** %3, align 8
  store float %1, float* %4, align 4
  %5 = load %class.wayobj*, %class.wayobj** %3, align 8
  %6 = load float, float* %4, align 4
  %7 = getelementptr inbounds %class.wayobj, %class.wayobj* %5, i32 0, i32 11
  %8 = load float, float* %7, align 4
  %9 = fmul float %6, %8
  %10 = getelementptr inbounds %class.wayobj, %class.wayobj* %5, i32 0, i32 12
  %11 = load float, float* %10, align 8
  %12 = fadd float %9, %11
  %13 = fptosi float %12 to i32
  ret i32 %13
}

declare zeroext i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj*, i32, i32, i32* dereferenceable(4), i32* dereferenceable(4)) #6

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj9createwayERK14createwayinfotR8wayinfot(%class.wayobj*, %struct.createwayinfot* dereferenceable(28), %struct.wayinfot* dereferenceable(24)) #0 align 2 {
  %4 = alloca %class.wayobj*, align 8
  %5 = alloca %struct.createwayinfot*, align 8
  %6 = alloca %struct.wayinfot*, align 8
  store %class.wayobj* %0, %class.wayobj** %4, align 8
  store %struct.createwayinfot* %1, %struct.createwayinfot** %5, align 8
  store %struct.wayinfot* %2, %struct.wayinfot** %6, align 8
  %7 = load %class.wayobj*, %class.wayobj** %4, align 8
  %8 = load %struct.createwayinfot*, %struct.createwayinfot** %5, align 8
  %9 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %8, i32 0, i32 0
  %10 = load %struct.createwayinfot*, %struct.createwayinfot** %5, align 8
  %11 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %10, i32 0, i32 1
  %12 = load %struct.createwayinfot*, %struct.createwayinfot** %5, align 8
  %13 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %12, i32 0, i32 2
  %14 = load i8, i8* %13, align 4
  %15 = trunc i8 %14 to i1
  %16 = load %struct.wayinfot*, %struct.wayinfot** %6, align 8
  %17 = call zeroext i1 @_ZN6wayobj9createwayERK8rvectortS2_bR8wayinfot(%class.wayobj* %7, %class.rvectort* dereferenceable(12) %9, %class.rvectort* dereferenceable(12) %11, i1 zeroext %15, %struct.wayinfot* dereferenceable(24) %16)
  ret i1 %17
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj9createwayEiiiiRP8point16tRi(%class.wayobj*, i32, i32, i32, i32, %struct.point16t** dereferenceable(8), i32* dereferenceable(4)) #0 align 2 {
  %8 = alloca i1, align 1
  %9 = alloca %class.wayobj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.point16t**, align 8
  %15 = alloca i32*, align 8
  store %class.wayobj* %0, %class.wayobj** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.point16t** %5, %struct.point16t*** %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load %class.wayobj*, %class.wayobj** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %16, i32 %17, i32 %18)
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %7
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %16, i32 %21, i32 %22)
  br i1 %23, label %27, label %24

; <label>:24:                                     ; preds = %20, %7
  %25 = load %struct.point16t**, %struct.point16t*** %14, align 8
  store %struct.point16t* null, %struct.point16t** %25, align 8
  %26 = load i32*, i32** %15, align 8
  store i32 0, i32* %26, align 4
  store i1 false, i1* %8, align 1
  br label %72

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %16, i32 %28, i32 %29)
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %27
  %35 = load %struct.point16t**, %struct.point16t*** %14, align 8
  store %struct.point16t* null, %struct.point16t** %35, align 8
  %36 = load i32*, i32** %15, align 8
  store i32 0, i32* %36, align 4
  store i1 false, i1* %8, align 1
  br label %72

; <label>:37:                                     ; preds = %27
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

; <label>:41:                                     ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %41
  %46 = call noalias i8* @malloc(i64 4) #8
  %47 = bitcast i8* %46 to %struct.point16t*
  %48 = load %struct.point16t**, %struct.point16t*** %14, align 8
  store %struct.point16t* %47, %struct.point16t** %48, align 8
  %49 = load i32*, i32** %15, align 8
  store i32 1, i32* %49, align 4
  store i1 true, i1* %8, align 1
  br label %72

; <label>:50:                                     ; preds = %41, %37
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call zeroext i1 @_ZN6wayobj4fillEiiii(%class.wayobj* %16, i32 %51, i32 %52, i32 %53, i32 %54)
  br i1 %55, label %59, label %56

; <label>:56:                                     ; preds = %50
  %57 = load %struct.point16t**, %struct.point16t*** %14, align 8
  store %struct.point16t* null, %struct.point16t** %57, align 8
  %58 = load i32*, i32** %15, align 8
  store i32 0, i32* %58, align 4
  store i1 false, i1* %8, align 1
  br label %72

; <label>:59:                                     ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %16, i32 %60, i32 %61)
  %63 = getelementptr inbounds %class.wayobj, %class.wayobj* %16, i32 0, i32 25
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.point16t**, %struct.point16t*** %14, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = call zeroext i1 @_ZN6wayobj11createwayarEiiRP8point16tRi(%class.wayobj* %16, i32 %62, i32 %64, %struct.point16t** dereferenceable(8) %65, i32* dereferenceable(4) %66)
  br i1 %67, label %71, label %68

; <label>:68:                                     ; preds = %59
  %69 = load %struct.point16t**, %struct.point16t*** %14, align 8
  store %struct.point16t* null, %struct.point16t** %69, align 8
  %70 = load i32*, i32** %15, align 8
  store i32 0, i32* %70, align 4
  store i1 false, i1* %8, align 1
  br label %72

; <label>:71:                                     ; preds = %59
  store i1 true, i1* %8, align 1
  br label %72

; <label>:72:                                     ; preds = %71, %68, %56, %45, %34, %24
  %73 = load i1, i1* %8, align 1
  ret i1 %73
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_CreateWay_.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__cxx_global_var_init.2()
  call void @__cxx_global_var_init.3()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { builtin }
attributes #10 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
